uint64_t sub_100002010(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = *v2;
  v4 = sub_1001CFDA0();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = *(*(sub_100011AC0(&qword_100227A20, &qword_1001D35D8) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = sub_1001CF840();
  v3[24] = v8;
  v9 = *(v8 - 8);
  v3[25] = v9;
  v10 = *(v9 + 64) + 15;
  v3[26] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100227A28, &unk_1001D35E0);
  v3[27] = v11;
  v12 = *(v11 - 8);
  v3[28] = v12;
  v13 = *(v12 + 64) + 15;
  v3[29] = swift_task_alloc();
  v14 = sub_100011AC0(&qword_100227A30, &qword_1001D4990);
  v3[30] = v14;
  v15 = *(v14 - 8);
  v3[31] = v15;
  v16 = *(v15 + 64) + 15;
  v3[32] = swift_task_alloc();
  v17 = sub_1001CFE30();
  v3[33] = v17;
  v18 = *(v17 - 8);
  v3[34] = v18;
  v19 = *(v18 + 64) + 15;
  v3[35] = swift_task_alloc();
  v20 = *(*(sub_100011AC0(&qword_100227A38, &unk_1001D35F0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v21 = sub_1001CFD60();
  v3[37] = v21;
  v22 = *(v21 - 8);
  v3[38] = v22;
  v23 = *(v22 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000023B4, v2, 0);
}

uint64_t sub_1000023B4()
{
  v58 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v53 = *(v0 + 296);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 120);
  v8 = *(**(v0 + 136) + 152);
  sub_1001CFE00();
  (*(v6 + 104))(v4, enum case for Calendar.Component.day(_:), v5);
  sub_1001CFE10();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v53) == 1)
  {
    v9 = *(v0 + 352);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    v13 = *(v0 + 136);
    sub_100011F00(*(v0 + 288), &qword_100227A38, &unk_1001D35F0);
    v14 = *(*v13 + 160);
    (*(v11 + 16))(v10, v9, v12);
    v15 = sub_1001D0E50();
    v16 = sub_1001D1DE0();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 296);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v21 = 136315138;
      sub_100011F60(&qword_100227A40, &type metadata accessor for Date);
      v22 = sub_1001D23A0();
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = sub_1000954E0(v22, v24, &v57);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to calculate start of yesterday startOfTodayInUTC=%s", v21, 0xCu);
      sub_100011CF0(v54);
    }

    else
    {

      v25 = *(v19 + 8);
      v25(v18, v20);
    }

    v25(*(v0 + 352), *(v0 + 296));
    v41 = *(v0 + 344);
    v40 = *(v0 + 352);
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    v48 = *(v0 + 256);
    v49 = *(v0 + 232);
    v51 = *(v0 + 208);
    v52 = *(v0 + 184);
    v56 = *(v0 + 176);

    v50 = *(v0 + 8);

    return v50(&_swiftEmptyArrayStorage);
  }

  else
  {
    v27 = *(v0 + 344);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    v30 = *(v0 + 288);
    v31 = *(v0 + 152);
    v32 = *(v0 + 136);
    v33 = *(v29 + 32);
    *(v0 + 360) = v33;
    *(v0 + 368) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v33(v27, v30, v28);
    *(v0 + 376) = *(*v32 + 120);
    v34 = *(v31 + 96);
    *(v0 + 384) = v34;
    v35 = *(v34 + 16);
    v36 = *(v31 + 80);
    *(v0 + 392) = v36;
    v55 = (v35 + *v35);
    v37 = v35[1];
    v38 = swift_task_alloc();
    *(v0 + 400) = v38;
    *v38 = v0;
    v38[1] = sub_10000288C;

    return v55(v36, v34);
  }
}

uint64_t sub_10000288C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 400);
  v7 = *v3;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = v2;

  v8 = v4[17];
  if (v2)
  {
    v9 = sub_100003980;
  }

  else
  {
    v9 = sub_1000029C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000029C4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[17];
  v17 = v0[18];
  v8 = sub_1000D4CDC(&_swiftEmptyArrayStorage);
  v0[2] = v2;
  v0[3] = v1;
  sub_100011D3C();
  sub_1001D1C80();
  sub_1001CF8F0();
  (*(v5 + 8))(v4, v6);
  v0[54] = swift_getWitnessTable();
  v9 = *v7;
  v0[55] = *(*v7 + 144);
  v10 = *(v9 + 160);
  v0[60] = v8;
  v0[58] = 0;
  v0[59] = &_swiftEmptyArrayStorage;
  v0[56] = v10;
  v0[57] = v8;
  v11 = sub_100011D90();
  v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v13 = swift_task_alloc();
  v0[61] = v13;
  *v13 = v0;
  v13[1] = sub_100002B68;
  v14 = v0[32];
  v15 = v0[30];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 4, v15, v11);
}

uint64_t sub_100002B68()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v2;

  v6 = *(v3 + 432);
  v7 = *(v3 + 136);
  swift_getObjectType();
  v9 = sub_1001D1A70();
  if (v2)
  {
    v10 = sub_1000035CC;
  }

  else
  {
    v10 = sub_100002CC4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100002CC4()
{
  v1 = *(v0 + 136);
  *(v0 + 504) = *(v0 + 32);
  return _swift_task_switch(sub_100002CEC, v1, 0);
}

uint64_t sub_100002CEC()
{
  v103 = v0;
  v1 = *(v0 + 512);
  if (v1)
  {
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 192);
    v5 = (*(v0 + 136) + *(v0 + 440));
    *(v0 + 48) = *(v0 + 504);
    v100 = v1;
    *(v0 + 56) = v1;
    sub_1001CF830();
    sub_100011EAC();
    v6 = sub_1001D1F20();
    v8 = v7;
    (*(v3 + 8))(v2, v4);
    v9 = *v5;
    v10 = v5[1];
    *(v0 + 64) = v6;
    *(v0 + 72) = v8;
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v11 = sub_1001D1F10();

    if (v11[2] == 2)
    {
      v12 = *(v0 + 496);
      v13 = v11[4];
      v14 = v11[5];
      v16 = v11[6];
      v15 = v11[7];

      *(v0 + 112) = 0;
      LOBYTE(v12) = sub_100011744(v13, v14);

      if ((v12 & 1) == 0)
      {
        v60 = *(v0 + 184);

        v61 = sub_100011AC0(&qword_100227A68, &qword_1001D3608);
        (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
        v36 = *(v0 + 184);
        goto LABEL_17;
      }

      v18 = *(v0 + 360);
      v17 = *(v0 + 368);
      v19 = *(v0 + 328);
      v20 = *(v0 + 296);
      v21 = *(v0 + 184);
      v22 = *(v0 + 112);
      sub_1001CFD10();
      v23 = sub_100011AC0(&qword_100227A68, &qword_1001D3608);
      v24 = (v21 + *(v23 + 48));
      v18(v21, v19, v20);
      *v24 = v16;
      v24[1] = v15;
      (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    }

    else
    {
      v34 = *(v0 + 184);
      v35 = sub_100011AC0(&qword_100227A68, &qword_1001D3608);
      (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    }

    v36 = *(v0 + 184);
    v37 = sub_100011AC0(&qword_100227A68, &qword_1001D3608);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
    {
      v38 = *(v0 + 368);
      v39 = *(v0 + 352);
      v40 = *(v0 + 336);
      v41 = *(v0 + 320);
      v43 = *(v0 + 296);
      v42 = *(v0 + 304);
      v44 = (v36 + *(v37 + 48));
      v46 = *v44;
      v45 = v44[1];
      (*(v0 + 360))(v40, v36, v43);
      (*(v42 + 16))(v41, v40, v43);
      sub_100011F60(&qword_100227A70, &type metadata accessor for Date);
      v47 = sub_1001D1790();
      v48 = *(v0 + 320);
      v49 = *(v0 + 296);
      v50 = *(v0 + 304);
      if (v47)
      {
        v51 = *(v0 + 472);
        v52 = *(v50 + 8);
        v52(*(v0 + 320), *(v0 + 296));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v0 + 472);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = sub_100008F3C(0, *(v54 + 2) + 1, 1, *(v0 + 472));
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = sub_100008F3C((v55 > 1), v56 + 1, 1, v54);
        }

        v57 = *(v0 + 504);
        v52(*(v0 + 336), *(v0 + 296));
        *(v54 + 2) = v56 + 1;
        v58 = &v54[16 * v56];
        *(v58 + 4) = v57;
        *(v58 + 5) = v100;
        v59 = *(v0 + 480);
        goto LABEL_28;
      }

      v70 = *(v0 + 344);

      v71 = sub_1001D1790();
      v72 = *(v50 + 8);
      v72(v48, v49);
      if ((v71 & 1) == 0)
      {
        v72(*(v0 + 336), *(v0 + 296));

        v54 = *(v0 + 472);
        v59 = *(v0 + 480);
LABEL_28:
        v84 = *(v0 + 456);
        v83 = *(v0 + 464);
LABEL_29:
        *(v0 + 472) = v54;
        *(v0 + 480) = v59;
        *(v0 + 456) = v84;
        *(v0 + 464) = v83;
LABEL_30:
        v85 = sub_100011D90();
        v86 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v87 = swift_task_alloc();
        *(v0 + 488) = v87;
        *v87 = v0;
        v87[1] = sub_100002B68;
        v88 = *(v0 + 256);
        v76 = *(v0 + 240);
        v75 = v0 + 32;
        v77 = v85;

        return dispatch thunk of AsyncIteratorProtocol.next()(v75, v76, v77);
      }

      v73 = *(v0 + 456);
      sub_100011E9C(*(v0 + 464));
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v73;
      v75 = sub_100006028(v46, v45);
      v78 = *(v73 + 16);
      v79 = (v76 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        __break(1u);
      }

      else
      {
        v71 = v76;
        if (*(*(v0 + 456) + 24) < v81)
        {
          sub_100009BB8(v81, v74);
          v82 = *(v0 + 104);
          v75 = sub_100006028(v46, v45);
          if ((v71 & 1) != (v76 & 1))
          {

            return sub_1001D24F0();
          }

LABEL_34:
          v84 = *(v0 + 104);
          if (v71)
          {
LABEL_35:
            v89 = v75;

            v75 = v89;
            goto LABEL_40;
          }

LABEL_38:
          v84[(v75 >> 6) + 8] |= 1 << v75;
          v91 = (v84[6] + 16 * v75);
          *v91 = v46;
          v91[1] = v45;
          *(v84[7] + 8 * v75) = 0;
          v92 = v84[2];
          v80 = __OFADD__(v92, 1);
          v93 = v92 + 1;
          if (v80)
          {
            goto LABEL_43;
          }

          v84[2] = v93;
LABEL_40:
          v94 = v84[7];
          v95 = *(v94 + 8 * v75);
          v96 = v95 + 1;
          if (!__OFADD__(v95, 1))
          {
            v97 = *(v0 + 336);
            v98 = *(v0 + 296);
            *(v94 + 8 * v75) = v96;
            v72(v97, v98);
            v54 = *(v0 + 472);
            v83 = sub_100003EC0;
            v59 = v84;
            goto LABEL_29;
          }

          __break(1u);
LABEL_43:
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v75, v76, v77);
        }

        if (v74)
        {
          goto LABEL_34;
        }
      }

      v90 = v75;
      sub_10000F4B0();
      v75 = v90;
      v84 = *(v0 + 104);
      if (v71)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

LABEL_17:
    v62 = *(v0 + 448);
    v63 = *(v0 + 136);
    sub_100011F00(v36, &qword_100227A20, &qword_1001D35D8);

    v64 = sub_1001D0E50();
    v65 = sub_1001D1DE0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 504);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102 = v68;
      *v67 = 136315138;
      v69 = sub_1000954E0(v66, v100, &v102);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to parse line: %s", v67, 0xCu);
      sub_100011CF0(v68);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v25 = *(v0 + 376);
  v101 = *(v0 + 384);
  v26 = *(v0 + 136);
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  v27 = *(v101 + 8);
  v99 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 520) = v29;
  *v29 = v0;
  v29[1] = sub_100003658;
  v30 = *(v0 + 472);
  v32 = *(v0 + 384);
  v31 = *(v0 + 392);

  return v99(v30, v31, v32);
}

uint64_t sub_1000035CC()
{
  *(v0 + 96) = *(v0 + 496);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100003658()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_100003BC4;
  }

  else
  {
    v6 = sub_100003784;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100003784()
{
  v1 = v0[33].i64[0];
  v2 = v0[30].i64[0];
  v27 = v0[29].i64[1];
  v29 = v0[29].i64[0];
  v3 = v0[25].i64[1];
  v4 = v0[21].i64[1];
  v23 = v0[26].u64[0];
  v24 = v0[22].i64[0];
  v6 = v0[18].i64[1];
  v5 = v0[19].i64[0];
  v8 = v0[10].i64[1];
  v7 = v0[11].i64[0];
  v25 = v0[10].i64[0];
  v31 = v0[8];
  sub_1001CFD90();
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  *(v9 + 24) = vextq_s8(v31, v31, 8uLL);
  *(v9 + 40) = v7;
  v32 = sub_10001183C(v2, sub_100011E3C);
  sub_100011E48(v3, v23);

  v10 = *(v5 + 8);
  v10(v24, v6);

  (*(v8 + 8))(v7, v25);
  v10(v4, v6);
  sub_100011E9C(v29);
  v12 = v0[21].i64[1];
  v11 = v0[22].i64[0];
  v14 = v0[20].i64[1];
  v13 = v0[21].i64[0];
  v16 = v0[19].i64[1];
  v15 = v0[20].i64[0];
  v18 = v0[17].i64[1];
  v17 = v0[18].i64[0];
  v19 = v0[16].i64[0];
  v20 = v0[14].i64[1];
  v26 = v0[13].i64[0];
  v28 = v0[11].i64[1];
  v30 = v0[11].i64[0];

  v21 = v0->i64[1];

  return v21(v32);
}

uint64_t sub_100003980()
{
  v1 = *(v0 + 424);
  v2 = *(**(v0 + 136) + 160);
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read from temp file: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  v9 = *(v0 + 424);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);

  v14 = *(v13 + 8);
  v14(v10, v12);
  v14(v11, v12);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);
  v18 = *(v0 + 328);
  v17 = *(v0 + 336);
  v20 = *(v0 + 312);
  v19 = *(v0 + 320);
  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  v23 = *(v0 + 256);
  v24 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 184);
  v29 = *(v0 + 176);

  v25 = *(v0 + 8);

  return v25(&_swiftEmptyArrayStorage);
}

uint64_t sub_100003BC4()
{
  v1 = v0[33].i64[0];
  v2 = v0[28].i64[0];
  v3 = v0[8].i64[1];
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[33].i64[0];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to write back: %@", v8, 0xCu);
    sub_100011F00(v9, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v11 = v0[30].i64[0];
  v36 = v0[29].i64[1];
  v38 = v0[29].i64[0];
  v12 = v0[25].i64[1];
  v13 = v0[21].i64[1];
  v32 = v0[26].u64[0];
  v33 = v0[22].i64[0];
  v15 = v0[18].i64[1];
  v14 = v0[19].i64[0];
  v17 = v0[10].i64[1];
  v16 = v0[11].i64[0];
  v34 = v0[10].i64[0];
  v40 = v0[8];
  sub_1001CFD90();
  v18 = swift_task_alloc();
  *(v18 + 16) = v13;
  *(v18 + 24) = vextq_s8(v40, v40, 8uLL);
  *(v18 + 40) = v16;
  v41 = sub_10001183C(v11, sub_100011E3C);
  sub_100011E48(v12, v32);

  v19 = *(v14 + 8);
  v19(v33, v15);

  (*(v17 + 8))(v16, v34);
  v19(v13, v15);
  sub_100011E9C(v38);
  v21 = v0[21].i64[1];
  v20 = v0[22].i64[0];
  v23 = v0[20].i64[1];
  v22 = v0[21].i64[0];
  v25 = v0[19].i64[1];
  v24 = v0[20].i64[0];
  v27 = v0[17].i64[1];
  v26 = v0[18].i64[0];
  v28 = v0[16].i64[0];
  v29 = v0[14].i64[1];
  v35 = v0[13].i64[0];
  v37 = v0[11].i64[1];
  v39 = v0[11].i64[0];

  v30 = v0->i64[1];

  return v30(v41);
}

double sub_100003EC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v41 = a6;
  v42 = a7;
  v44 = a3;
  v45 = a1;
  v46 = a2;
  v47 = a8;
  v43 = *a5;
  v40 = sub_1001CFDA0();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v40, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001CFDD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001CFD60();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v22 + 16))(v26, a4, v21);
  v27 = *a5;
  v28 = (a5 + *(*a5 + 136));
  v29 = v28[1];
  v39 = *v28;
  v30 = *(v27 + 128);
  (*(v16 + 16))(v20, v41, v15);
  (*(v10 + 16))(v14, v42, v40);
  v31 = sub_100096168(2, v44);
  v32 = *(v43 + 88);
  v33 = *(v43 + 104);
  v34 = v14;
  v35 = v46;

  sub_10001D688(v45, v35, v26, v39, v29, v20, v34, v48, v31, v32, v33);
  result = *v48;
  v37 = v48[1];
  v38 = v47;
  *v47 = v48[0];
  v38[1] = v37;
  *(v38 + 4) = v49;
  return result;
}

uint64_t *sub_1000041F0()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  v2 = *(v0 + *(*v0 + 136) + 8);

  v3 = *(v0 + *(*v0 + 144) + 8);

  v4 = *(*v0 + 152);
  v5 = sub_1001CFE40();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 160);
  v7 = sub_1001D0E60();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10000439C()
{
  sub_1000041F0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000043FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002DLL;
  v3 = "";
  v4 = a1;
  v5 = 0xD000000000000036;
  if (a1 == 4)
  {
    v6 = "ecloudcompute.knownRateLimits";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "ndleIdentifierOverride";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "ecloudcompute.prefetchRequest";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000026;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (v4 == 1)
  {
    v10 = "ecloudcompute.admin";
  }

  else
  {
    v10 = "ecloudcompute.requests";
  }

  if (!v4)
  {
    v9 = 0xD000000000000023;
    v10 = "";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "ecloudcompute.prefetchRequest";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000036;
      v3 = "ecloudcompute.knownRateLimits";
    }

    else
    {
      v2 = 0xD00000000000002FLL;
      v3 = "ndleIdentifierOverride";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000026;
      v3 = "ecloudcompute.admin";
    }

    else
    {
      v3 = "ecloudcompute.requests";
    }
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1001D2470();
  }

  return v12 & 1;
}

uint64_t sub_100004568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D6954746E657665;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE300000000000000;
    v8 = 7761509;
    if (a1 != 1)
    {
      v8 = 0x6552746E65696C63;
      v7 = 0xEF64497473657571;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x6D6954746E657665;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (v4 == 5)
    {
      v6 = 0x80000001001E24F0;
    }

    else
    {
      v6 = 0x80000001001E2510;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x696C43656C707061;
    }

    else
    {
      v5 = 0x636F4C656C707061;
    }

    if (v4 == 3)
    {
      v6 = 0xEF6F666E49746E65;
    }

    else
    {
      v6 = 0xEB00000000656C61;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v5 != 7761509)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0x6552746E65696C63;
      v2 = 0xEF64497473657571;
    }

    if (v5 != v3)
    {
LABEL_45:
      v10 = sub_1001D2470();
      goto LABEL_46;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000017;
    }

    else
    {
      v9 = 0xD00000000000001FLL;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001001E24F0;
    }

    else
    {
      v2 = 0x80000001001E2510;
    }

    if (v5 != v9)
    {
      goto LABEL_45;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEF6F666E49746E65;
    if (v5 != 0x696C43656C707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v2 = 0xEB00000000656C61;
    if (v5 != 0x636F4C656C707061)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_1000047B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D6954746E657665;
  v4 = a1;
  if (a1 <= 2u)
  {
    v10 = 0xE300000000000000;
    v11 = 7761509;
    if (a1 != 1)
    {
      v11 = 0x696C43656C707061;
      v10 = 0xEF6F666E49746E65;
    }

    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6D6954746E657665;
    }

    if (v4)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v5 = 0xD000000000000011;
      v6 = 0x80000001001E2350;
      v7 = 0x80000001001E2370;
      v8 = 0xD000000000000019;
      v9 = a1 == 5;
    }

    else
    {
      v5 = 0x636F4C656C707061;
      v6 = 0xEB00000000656C61;
      v7 = 0x80000001001E2330;
      v8 = 0xD000000000000017;
      v9 = a1 == 3;
    }

    if (v9)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    if (v9)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v12 != 7761509)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x696C43656C707061;
      v2 = 0xEF6F666E49746E65;
    }

    if (v12 != v3)
    {
LABEL_41:
      v15 = sub_1001D2470();
      goto LABEL_42;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v14 = 0xD000000000000019;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001001E2350;
    }

    else
    {
      v2 = 0x80000001001E2370;
    }

    if (v12 != v14)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEB00000000656C61;
    if (v12 != 0x636F4C656C707061)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v2 = 0x80000001001E2330;
    if (v12 != 0xD000000000000017)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1000049F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D6974746E657665;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 7761509;
    }

    else
    {
      v5 = 0x6D6974746E657665;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6572746E65696C63;
    v6 = 0xEF64697473657571;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x696C63656C707061;
    }

    else
    {
      v5 = 0x636F6C656C707061;
    }

    if (v4 == 3)
    {
      v6 = 0xEF6F666E69746E65;
    }

    else
    {
      v6 = 0xEB00000000656C61;
    }
  }

  v7 = 0x6572746E65696C63;
  v8 = 0xEF64697473657571;
  v9 = 0x696C63656C707061;
  v10 = 0xEF6F666E69746E65;
  if (a2 != 3)
  {
    v9 = 0x636F6C656C707061;
    v10 = 0xEB00000000656C61;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 7761509;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1001D2470();
  }

  return v13 & 1;
}

uint64_t sub_100004BAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747261;
  v3 = 0x7453646F69726570;
  v4 = a1;
  v5 = 0x676E696C706D6173;
  v6 = 0xEC00000044495555;
  if (a1 != 5)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001001E24C0;
  }

  v7 = 0x636F4C656C707061;
  v8 = 0xEB00000000656C61;
  if (a1 != 3)
  {
    v7 = 0x616546656C707061;
    v8 = 0xEE00444965727574;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE300000000000000;
  v10 = 7761509;
  if (a1 != 1)
  {
    v10 = 0x696C43656C707061;
    v9 = 0xEF6F666E49746E65;
  }

  if (!a1)
  {
    v10 = 0x7453646F69726570;
    v9 = 0xEB00000000747261;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v11 != 7761509)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6F666E49746E65;
        if (v11 != 0x696C43656C707061)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEC00000044495555;
        if (v11 != 0x676E696C706D6173)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x80000001001E24C0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEB00000000656C61;
      if (v11 != 0x636F4C656C707061)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x616546656C707061;
    v2 = 0xEE00444965727574;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_1001D2470();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_100004E0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D6954746E657665;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x696C43656C707061;
    v14 = 0xEF6F666E49746E65;
    if (a1 != 2)
    {
      v13 = 0x616546656C707061;
      v14 = 0xEE00646965727574;
    }

    v15 = 0xE300000000000000;
    v16 = 7761509;
    if (!a1)
    {
      v16 = 0x6D6954746E657665;
      v15 = 0xE900000000000065;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x6552746E65696C63;
    v6 = 0xEF64497473657571;
    v7 = 0x80000001001E2550;
    v8 = 0xD000000000000015;
    if (a1 != 7)
    {
      v8 = 0xD000000000000013;
      v7 = 0x80000001001E2570;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x6E7542656C707061;
    v10 = 0xED00006469656C64;
    if (a1 != 4)
    {
      v9 = 0x636F4C656C707061;
      v10 = 0xEB00000000656C61;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEF6F666E49746E65;
        if (v11 != 0x696C43656C707061)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEE00646965727574;
        if (v11 != 0x616546656C707061)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7761509)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xED00006469656C64;
        if (v11 != 0x6E7542656C707061)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEB00000000656C61;
        if (v11 != 0x636F4C656C707061)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xEF64497473657571;
      if (v11 != 0x6552746E65696C63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0x80000001001E2550;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0xD000000000000013;
    v2 = 0x80000001001E2570;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_1001D2470();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_100005134()
{
  sub_1001D1880();
}

Swift::Int sub_1000052C4()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

Swift::Int sub_100005414()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

Swift::Int sub_10000554C()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

Swift::Int sub_100005690()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_1000059AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of NWAsyncConnection.Inbound.hasCreatedIterator()
{
  sub_100011AC0(qword_100227990, &unk_1001D34D0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = a5(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return a6();
}

uint64_t variable initialization expression of LRUCache.logger()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, enum case for TC2LogCategory.daemon(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100005C28()
{
  v1 = *v0;
  sub_1001D17D0();
  v2 = sub_1001D18F0();

  return v2;
}

uint64_t sub_100005C64()
{
  v1 = *v0;
  sub_1001D17D0();
  sub_1001D1880();
}

Swift::Int sub_100005CB8()
{
  v1 = *v0;
  sub_1001D17D0();
  sub_1001D2580();
  sub_1001D1880();
  v2 = sub_1001D25C0();

  return v2;
}

uint64_t sub_100005D34(uint64_t a1, id *a2)
{
  result = sub_1001D17B0();
  *a2 = 0;
  return result;
}

uint64_t sub_100005DAC(uint64_t a1, id *a2)
{
  v3 = sub_1001D17C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005E2C@<X0>(void *a1@<X8>)
{
  sub_1001D17D0();
  v2 = sub_1001D17A0();

  *a1 = v2;
  return result;
}

uint64_t sub_100005E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1001D17D0();
  v6 = v5;
  if (v4 == sub_1001D17D0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1001D2470();
  }

  return v9 & 1;
}

uint64_t sub_100005EF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1001D17A0();

  *a2 = v5;
  return result;
}

uint64_t sub_100005F40@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1001D17D0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100005F6C(uint64_t a1)
{
  v2 = sub_100011F60(&qword_100227BE0, type metadata accessor for FileAttributeKey);
  v3 = sub_100011F60(&qword_100227BE8, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100006028(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1001D2580();
  sub_1001D1880();
  v6 = sub_1001D25C0();

  return sub_10000679C(a1, a2, v6);
}

unint64_t sub_1000060A0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1000052C4();

  return sub_100006854(a1, v4);
}

unint64_t sub_1000060E4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100005414();

  return sub_100006B30(a1, v4);
}

unint64_t sub_100006180(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1001D2580();
  sub_1001D1880();

  v4 = sub_1001D25C0();

  return sub_100007700(a1, v4);
}

unint64_t sub_1000062A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10000554C();

  return sub_10000791C(a1, v4);
}

unint64_t sub_1000062EC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1001D2580();
  sub_100005134();
  v4 = sub_1001D25C0();

  return sub_100007BE8(a1, v4);
}

uint64_t sub_1000063DC(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_1001D2580();
  a2(a1);
  sub_1001D1880();

  v7 = sub_1001D25C0();

  return a3(a1, v7);
}

unint64_t sub_100006478(void *a1)
{
  v3 = *(v1 + 40);
  sub_1001D2580();
  sub_1000E75F0();
  v4 = sub_1001D25C0();

  return sub_100008754(a1, v4);
}

unint64_t sub_1000064E4(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1001D2580();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v13, v10);
  v11 = sub_1001D25C0();

  return sub_100008974(a1, v11);
}

unint64_t sub_100006598(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1001CFDA0();
  sub_100011F60(&qword_100227AD8, &type metadata accessor for UUID);
  v5 = sub_1001D1730();

  return sub_100008B28(a1, v5);
}

unint64_t sub_100006630(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1001D17D0();
  sub_1001D2580();
  sub_1001D1880();
  v4 = sub_1001D25C0();

  return sub_100008CE8(a1, v4);
}

unint64_t sub_1000066C4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1001D2570();

  return sub_100008DEC(a1, v4);
}

unint64_t sub_100006708(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 40);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D25A0(a3 & 1);
  v8 = sub_1001D25C0();

  return sub_100008E58(a1, a2, a3, v8);
}

unint64_t sub_10000679C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1001D2470())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100006854(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 7761509;
          }

          else
          {
            v8 = 0x696C43656C707061;
          }

          if (v7 == 1)
          {
            v9 = 0xE300000000000000;
          }

          else
          {
            v9 = 0xEF6F666E49746E65;
          }
        }

        else
        {
          v8 = 0x7453646F69726570;
          v9 = 0xEB00000000747261;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x676E696C706D6173;
          v9 = 0xEC00000044495555;
        }

        else
        {
          v8 = 0xD00000000000001ALL;
          v9 = 0x80000001001E24C0;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x636F4C656C707061;
        }

        else
        {
          v8 = 0x616546656C707061;
        }

        if (v7 == 3)
        {
          v9 = 0xEB00000000656C61;
        }

        else
        {
          v9 = 0xEE00444965727574;
        }
      }

      v10 = 0xD00000000000001ALL;
      if (v6 == 5)
      {
        v10 = 0x676E696C706D6173;
      }

      v11 = 0xEC00000044495555;
      if (v6 != 5)
      {
        v11 = 0x80000001001E24C0;
      }

      v12 = 0x636F4C656C707061;
      if (v6 != 3)
      {
        v12 = 0x616546656C707061;
      }

      v13 = 0xEE00444965727574;
      if (v6 == 3)
      {
        v13 = 0xEB00000000656C61;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x696C43656C707061;
      if (v6 == 1)
      {
        v14 = 7761509;
      }

      v15 = 0xEF6F666E49746E65;
      if (v6 == 1)
      {
        v15 = 0xE300000000000000;
      }

      if (!v6)
      {
        v14 = 0x7453646F69726570;
        v15 = 0xEB00000000747261;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_1001D2470();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100006B30(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 7761509;
          }

          else
          {
            v7 = 0x696C43656C707061;
          }

          if (v6 == 1)
          {
            v8 = 0xE300000000000000;
          }

          else
          {
            v8 = 0xEF6F666E49746E65;
          }
        }

        else
        {
          v7 = 0x6D6954746E657665;
          v8 = 0xE900000000000065;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001001E2350;
        }

        else
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001001E2370;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x636F4C656C707061;
        }

        else
        {
          v7 = 0xD000000000000017;
        }

        if (v6 == 3)
        {
          v8 = 0xEB00000000656C61;
        }

        else
        {
          v8 = 0x80000001001E2330;
        }
      }

      v9 = 0xD000000000000019;
      if (v5 == 5)
      {
        v9 = 0xD000000000000011;
        v10 = 0x80000001001E2350;
      }

      else
      {
        v10 = 0x80000001001E2370;
      }

      v11 = 0xD000000000000017;
      if (v5 == 3)
      {
        v11 = 0x636F4C656C707061;
      }

      v12 = 0xEB00000000656C61;
      if (v5 != 3)
      {
        v12 = 0x80000001001E2330;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x696C43656C707061;
      if (v5 == 1)
      {
        v13 = 7761509;
      }

      v14 = 0xEF6F666E49746E65;
      if (v5 == 1)
      {
        v14 = 0xE300000000000000;
      }

      if (!v5)
      {
        v13 = 0x6D6954746E657665;
        v14 = 0xE900000000000065;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_1001D2470();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100006DD8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v23 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0xD00000000000001DLL;
            v8 = 0x80000001001E2420;
          }

          else if (v6 == 10)
          {
            v7 = 0xD00000000000001DLL;
            v8 = 0x80000001001E2440;
          }

          else
          {
            v7 = 0x5064657473757274;
            v8 = 0xEC00000079786F72;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0x6572746E65696C63;
          v8 = 0xEF64697473657571;
        }

        else if (v6 == 7)
        {
          v7 = 0xD000000000000017;
          v8 = 0x80000001001E23E0;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
          v8 = 0x80000001001E2400;
        }
      }

      else if (*(*(v23 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0x616566656C707061;
          v8 = 0xEE00646965727574;
        }

        else if (v6 == 4)
        {
          v7 = 0x6E7562656C707061;
          v8 = 0xED00006469656C64;
        }

        else
        {
          v7 = 0x636F6C656C707061;
          v8 = 0xEB00000000656C61;
        }
      }

      else if (*(*(v23 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 7761509;
        }

        else
        {
          v7 = 0x696C63656C707061;
        }

        if (v6 == 1)
        {
          v8 = 0xE300000000000000;
        }

        else
        {
          v8 = 0xEF6F666E69746E65;
        }
      }

      else
      {
        v7 = 0x6D6974746E657665;
        v8 = 0xE900000000000065;
      }

      v9 = 0x5064657473757274;
      if (v5 == 10)
      {
        v9 = 0xD00000000000001DLL;
      }

      v10 = 0xEC00000079786F72;
      if (v5 == 10)
      {
        v10 = 0x80000001001E2440;
      }

      if (v5 == 9)
      {
        v9 = 0xD00000000000001DLL;
        v10 = 0x80000001001E2420;
      }

      v11 = 0xD000000000000017;
      if (v5 == 7)
      {
        v12 = 0x80000001001E23E0;
      }

      else
      {
        v11 = 0xD00000000000001CLL;
        v12 = 0x80000001001E2400;
      }

      if (v5 == 6)
      {
        v11 = 0x6572746E65696C63;
        v12 = 0xEF64697473657571;
      }

      if (v5 <= 8)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x6E7562656C707061;
      if (v5 != 4)
      {
        v13 = 0x636F6C656C707061;
      }

      v14 = 0xED00006469656C64;
      if (v5 != 4)
      {
        v14 = 0xEB00000000656C61;
      }

      if (v5 == 3)
      {
        v13 = 0x616566656C707061;
        v14 = 0xEE00646965727574;
      }

      v15 = 0x696C63656C707061;
      if (v5 == 1)
      {
        v15 = 7761509;
      }

      v16 = 0xEF6F666E69746E65;
      if (v5 == 1)
      {
        v16 = 0xE300000000000000;
      }

      if (!v5)
      {
        v15 = 0x6D6974746E657665;
        v16 = 0xE900000000000065;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_1001D2470();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100007214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x6D6974746E657665;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7761509;
          break;
        case 2:
          v8 = 0x696C63656C707061;
          v7 = 0xEF6F666E69746E65;
          break;
        case 3:
          v8 = 0x616566656C707061;
          v7 = 0xEE00646965727574;
          break;
        case 4:
          v8 = 0x6E7562656C707061;
          v7 = 0xED00006469656C64;
          break;
        case 5:
          v8 = 0x636F6C656C707061;
          v7 = 0xEB00000000656C61;
          break;
        case 6:
          v8 = 0x6572746E65696C63;
          v7 = 0xEF64697473657571;
          break;
        case 7:
          v8 = 0xD000000000000017;
          v7 = 0x80000001001E23E0;
          break;
        case 8:
          v8 = 0xD00000000000001ELL;
          v7 = 0x80000001001E2470;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001001E2400;
          break;
        case 0xA:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001001E2420;
          break;
        case 0xB:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001001E2440;
          break;
        case 0xC:
          v8 = 0x5064657473757274;
          v7 = 0xEC00000079786F72;
          break;
        default:
          break;
      }

      v9 = 0x6D6974746E657665;
      v10 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v10 = 0xE300000000000000;
          if (v8 == 7761509)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v10 = 0xEF6F666E69746E65;
          if (v8 != 0x696C63656C707061)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v10 = 0xEE00646965727574;
          if (v8 != 0x616566656C707061)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          v10 = 0xED00006469656C64;
          if (v8 != 0x6E7562656C707061)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v10 = 0xEB00000000656C61;
          if (v8 != 0x636F6C656C707061)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v10 = 0xEF64697473657571;
          if (v8 != 0x6572746E65696C63)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v10 = 0x80000001001E23E0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v10 = 0x80000001001E2470;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v10 = 0x80000001001E2400;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xD00000000000001DLL;
          v10 = 0x80000001001E2420;
          goto LABEL_38;
        case 11:
          v10 = 0x80000001001E2440;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v10 = 0xEC00000079786F72;
          if (v8 != 0x5064657473757274)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v9)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_1001D2470();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100007700(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000065;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 7761509;
        }

        else
        {
          v8 = 0x6D6974746E657665;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE900000000000065;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x6572746E65696C63;
        v9 = 0xEF64697473657571;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x696C63656C707061;
        }

        else
        {
          v8 = 0x636F6C656C707061;
        }

        if (v7 == 3)
        {
          v9 = 0xEF6F666E69746E65;
        }

        else
        {
          v9 = 0xEB00000000656C61;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x696C63656C707061;
      }

      else
      {
        v10 = 0x636F6C656C707061;
      }

      if (v6 == 3)
      {
        v11 = 0xEF6F666E69746E65;
      }

      else
      {
        v11 = 0xEB00000000656C61;
      }

      if (v6 == 2)
      {
        v10 = 0x6572746E65696C63;
        v11 = 0xEF64697473657571;
      }

      if (v6)
      {
        v12 = 7761509;
      }

      else
      {
        v12 = 0x6D6974746E657665;
      }

      if (v6)
      {
        v5 = 0xE300000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_1001D2470();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000065;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000791C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 7761509;
          }

          else
          {
            v7 = 0x6552746E65696C63;
          }

          if (v6 == 1)
          {
            v8 = 0xE300000000000000;
          }

          else
          {
            v8 = 0xEF64497473657571;
          }
        }

        else
        {
          v7 = 0x6D6954746E657665;
          v8 = 0xE900000000000065;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000017;
          v8 = 0x80000001001E24F0;
        }

        else
        {
          v7 = 0xD00000000000001FLL;
          v8 = 0x80000001001E2510;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x696C43656C707061;
        }

        else
        {
          v7 = 0x636F4C656C707061;
        }

        if (v6 == 3)
        {
          v8 = 0xEF6F666E49746E65;
        }

        else
        {
          v8 = 0xEB00000000656C61;
        }
      }

      v9 = 0xD00000000000001FLL;
      if (v5 == 5)
      {
        v9 = 0xD000000000000017;
        v10 = 0x80000001001E24F0;
      }

      else
      {
        v10 = 0x80000001001E2510;
      }

      v11 = 0x696C43656C707061;
      if (v5 != 3)
      {
        v11 = 0x636F4C656C707061;
      }

      v12 = 0xEF6F666E49746E65;
      if (v5 != 3)
      {
        v12 = 0xEB00000000656C61;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x6552746E65696C63;
      if (v5 == 1)
      {
        v13 = 7761509;
      }

      v14 = 0xEF64497473657571;
      if (v5 == 1)
      {
        v14 = 0xE300000000000000;
      }

      if (!v5)
      {
        v13 = 0x6D6954746E657665;
        v14 = 0xE900000000000065;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_1001D2470();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100007BE8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE900000000000065;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x696C43656C707061;
        }

        else
        {
          v10 = 0x616546656C707061;
        }

        if (v7 == 2)
        {
          v11 = 0xEF6F666E49746E65;
        }

        else
        {
          v11 = 0xEE00646965727574;
        }

        if (*(*(v27 + 48) + v4))
        {
          v12 = 7761509;
        }

        else
        {
          v12 = 0x6D6954746E657665;
        }

        if (*(*(v27 + 48) + v4))
        {
          v13 = 0xE300000000000000;
        }

        else
        {
          v13 = 0xE900000000000065;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v9 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v8 = 0x6E7542656C707061;
        }

        else
        {
          v8 = 0x636F4C656C707061;
        }

        if (v7 == 4)
        {
          v9 = 0xED00006469656C64;
        }

        else
        {
          v9 = 0xEB00000000656C61;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0x6552746E65696C63;
        v9 = 0xEF64497473657571;
      }

      else if (v7 == 7)
      {
        v8 = 0xD000000000000015;
        v9 = 0x80000001001E2550;
      }

      else
      {
        v8 = 0xD000000000000013;
        v9 = 0x80000001001E2570;
      }

      v14 = 0xD000000000000015;
      if (v6 != 7)
      {
        v14 = 0xD000000000000013;
      }

      v15 = 0x80000001001E2570;
      if (v6 == 7)
      {
        v15 = 0x80000001001E2550;
      }

      if (v6 == 6)
      {
        v14 = 0x6552746E65696C63;
        v15 = 0xEF64497473657571;
      }

      v16 = 0x6E7542656C707061;
      if (v6 != 4)
      {
        v16 = 0x636F4C656C707061;
      }

      v17 = 0xED00006469656C64;
      if (v6 != 4)
      {
        v17 = 0xEB00000000656C61;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x696C43656C707061;
      }

      else
      {
        v18 = 0x616546656C707061;
      }

      if (v6 == 2)
      {
        v19 = 0xEF6F666E49746E65;
      }

      else
      {
        v19 = 0xEE00646965727574;
      }

      if (v6)
      {
        v20 = 7761509;
      }

      else
      {
        v20 = 0x6D6954746E657665;
      }

      if (v6)
      {
        v5 = 0xE300000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v8 == v21 && v9 == v22)
      {
        break;
      }

      v23 = sub_1001D2470();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE900000000000065;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100007F30(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0xE900000000000065;
    v6 = 0x616546656C707061;
    v27 = a1;
    while (1)
    {
      v7 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v7 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          v12 = v7 == 5 ? 0x636F4C656C707061 : 0x6552746E65696C63;
          v13 = v7 == 5 ? 0xEB00000000656C61 : 0xEF64497473657571;
        }

        else if (v7 == 7)
        {
          v12 = 0xD000000000000010;
          v13 = 0x80000001001E2590;
        }

        else
        {
          v12 = 0x6E6553617461646BLL;
          v13 = v7 == 8 ? 0xEE00726F72724564 : 0xEF644965646F4E64;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0x6E7542656C707061;
        }

        if (v7 == 3)
        {
          v9 = 0xEE00646965727574;
        }

        else
        {
          v9 = 0xED00006469656C64;
        }

        if (v7 == 2)
        {
          v8 = 0x696C43656C707061;
          v9 = 0xEF6F666E49746E65;
        }

        v10 = *(*(v28 + 48) + v4) ? 7761509 : 0x6D6954746E657665;
        v11 = v7 ? 0xE300000000000000 : 0xE900000000000065;
        v12 = v7 <= 1 ? v10 : v8;
        v13 = v7 <= 1 ? v11 : v9;
      }

      v14 = 0xEF644965646F4E64;
      if (v27 == 8)
      {
        v14 = 0xEE00726F72724564;
      }

      v15 = 0xD000000000000010;
      if (v27 == 7)
      {
        v14 = 0x80000001001E2590;
      }

      else
      {
        v15 = 0x6E6553617461646BLL;
      }

      v16 = 0x6552746E65696C63;
      if (v27 == 5)
      {
        v16 = 0x636F4C656C707061;
      }

      v17 = 0xEF64497473657571;
      if (v27 == 5)
      {
        v17 = 0xEB00000000656C61;
      }

      if (v27 <= 6)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v27 == 3)
      {
        v18 = v6;
      }

      else
      {
        v18 = 0x6E7542656C707061;
      }

      if (v27 == 3)
      {
        v19 = 0xEE00646965727574;
      }

      else
      {
        v19 = 0xED00006469656C64;
      }

      if (v27 == 2)
      {
        v18 = 0x696C43656C707061;
        v19 = 0xEF6F666E49746E65;
      }

      if (v27)
      {
        v20 = 7761509;
      }

      else
      {
        v20 = 0x6D6954746E657665;
      }

      if (v27)
      {
        v5 = 0xE300000000000000;
      }

      if (v27 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v27 <= 4 ? v18 : v15;
      v22 = v27 <= 4 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = v6;
      v24 = sub_1001D2470();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = 0xE900000000000065;
      v6 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_1000082C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v28 = ~v3;
    v5 = 0xE900000000000065;
    v6 = 0x616546656C707061;
    v29 = a1;
    while (1)
    {
      v7 = *(*(v30 + 48) + v4);
      v31 = v4;
      if (v7 > 4)
      {
        if (*(*(v30 + 48) + v4) <= 6u)
        {
          if (v7 == 5)
          {
            v12 = 0x636F4C656C707061;
            v13 = 0xEB00000000656C61;
          }

          else
          {
            v12 = 0x6552746E65696C63;
            v13 = 0xEF64497473657571;
          }
        }

        else if (v7 == 7)
        {
          v12 = 0xD00000000000001ELL;
          v13 = 0x80000001001E25C0;
        }

        else if (v7 == 8)
        {
          v12 = 0xD00000000000001CLL;
          v13 = 0x80000001001E25E0;
        }

        else
        {
          v12 = 0xD00000000000001DLL;
          v13 = 0x80000001001E2600;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0x6E7542656C707061;
        }

        if (v7 == 3)
        {
          v9 = 0xEE00646965727574;
        }

        else
        {
          v9 = 0xED00006469656C64;
        }

        if (v7 == 2)
        {
          v8 = 0x696C43656C707061;
          v9 = 0xEF6F666E49746E65;
        }

        v10 = *(*(v30 + 48) + v4) ? 7761509 : 0x6D6954746E657665;
        v11 = v7 ? 0xE300000000000000 : 0xE900000000000065;
        v12 = v7 <= 1 ? v10 : v8;
        v13 = v7 <= 1 ? v11 : v9;
      }

      v14 = 0xD00000000000001CLL;
      v15 = 0xD00000000000001ELL;
      if (v29 != 8)
      {
        v14 = 0xD00000000000001DLL;
      }

      v16 = 0x80000001001E2600;
      if (v29 == 8)
      {
        v16 = 0x80000001001E25E0;
      }

      if (v29 != 7)
      {
        v15 = v14;
      }

      v17 = 0x80000001001E25C0;
      if (v29 != 7)
      {
        v17 = v16;
      }

      v18 = 0x6552746E65696C63;
      if (v29 == 5)
      {
        v18 = 0x636F4C656C707061;
      }

      v19 = 0xEF64497473657571;
      if (v29 == 5)
      {
        v19 = 0xEB00000000656C61;
      }

      if (v29 <= 6)
      {
        v15 = v18;
        v17 = v19;
      }

      if (v29 == 3)
      {
        v20 = v6;
      }

      else
      {
        v20 = 0x6E7542656C707061;
      }

      if (v29 == 3)
      {
        v21 = 0xEE00646965727574;
      }

      else
      {
        v21 = 0xED00006469656C64;
      }

      if (v29 == 2)
      {
        v20 = 0x696C43656C707061;
        v21 = 0xEF6F666E49746E65;
      }

      if (v29)
      {
        v22 = 7761509;
      }

      else
      {
        v22 = 0x6D6954746E657665;
      }

      if (v29)
      {
        v5 = 0xE300000000000000;
      }

      if (v29 <= 1)
      {
        v20 = v22;
        v21 = v5;
      }

      v23 = v29 <= 4 ? v20 : v15;
      v24 = v29 <= 4 ? v21 : v17;
      if (v12 == v23 && v13 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = sub_1001D2470();

      if (v26)
      {
        return v31;
      }

      v4 = (v31 + 1) & v28;
      v5 = 0xE900000000000065;
      v6 = v25;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v31;
  }

  return v4;
}

unint64_t sub_100008650(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_10001F72C(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_10001F72C(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_1001D2470();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100008754(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v39 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v38 = ~v3;
    v6 = a1[1];
    v36 = *a1;
    v7 = *(v2 + 48);
    do
    {
      v8 = (v7 + 56 * v4);
      v9 = v8[1];
      v10 = v8[2];
      v12 = v8[3];
      v11 = v8[4];
      v14 = v8[5];
      v13 = v8[6];
      if (v9)
      {
        if (!v6)
        {
          goto LABEL_4;
        }

        if (*v8 != v36 || v9 != v6)
        {
          v16 = sub_1001D2470();
          v5 = a1;
          if ((v16 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v6)
      {
        goto LABEL_4;
      }

      v17 = v5[3];
      if (v12)
      {
        if (!v17)
        {
          goto LABEL_4;
        }

        if (v10 != v5[2] || v12 != v17)
        {
          v19 = sub_1001D2470();
          v5 = a1;
          if ((v19 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_4;
      }

      v20 = v5[5];
      if (v14)
      {
        if (!v20)
        {
          goto LABEL_4;
        }

        if (v11 != v5[4] || v14 != v20)
        {
          v22 = sub_1001D2470();
          v5 = a1;
          if ((v22 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v20)
      {
        goto LABEL_4;
      }

      v23 = v5[6];
      v24 = *(v13 + 16);
      if (v24 == *(v23 + 16))
      {
        if (!v24 || v13 == v23)
        {
          return v4;
        }

        v25 = (v13 + 56);
        for (i = (v23 + 56); ; i += 4)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = *(i - 1);
          v30 = *i;
          if (*(v25 - 3) != *(i - 3) || *(v25 - 2) != *(i - 2))
          {
            v32 = sub_1001D2470();
            v5 = a1;
            if ((v32 & 1) == 0)
            {
              break;
            }
          }

          if (v27 != v29 || v28 != v30)
          {
            v34 = sub_1001D2470();
            v5 = a1;
            if ((v34 & 1) == 0)
            {
              break;
            }
          }

          v25 += 4;
          if (!--v24)
          {
            return v4;
          }
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v38;
    }

    while (((*(v39 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100008974(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[3];
    v27 = a1[2];
    v22 = a1[5];
    v23 = a1[4];
    v21 = a1[6];
    do
    {
      v10 = (*(v26 + 48) + 56 * v4);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = v10[6];
      v16 = *v10 == v5 && v10[1] == v6;
      if (v16 || (v17 = v10[1], (sub_1001D2470() & 1) != 0))
      {
        v18 = v11 == v27 && v12 == v7;
        if (v18 || (sub_1001D2470() & 1) != 0)
        {
          v19 = v13 == v23 && v14 == v22;
          if (v19 || (sub_1001D2470() & 1) != 0)
          {

            v9 = sub_1000CF830(v8, v21);

            if (v9)
            {
              break;
            }
          }
        }
      }

      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100008B28(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1001CFDA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_100011F60(&qword_100227AE0, &type metadata accessor for UUID);
      v17 = sub_1001D1790();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100008CE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1001D17D0();
      v9 = v8;
      if (v7 == sub_1001D17D0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1001D2470();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100008DEC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100008E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1001D2470()) && ((v14 ^ a3) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

char *sub_100008F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&unk_100230270, &unk_1001D3610);
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

char *sub_100009048(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227BB8, &qword_1001D3760);
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

char *sub_10000914C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227A80, &unk_1001D3620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009294(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227B80, &qword_1001D3728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100009388(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227BB0, &qword_1001D3758);
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

char *sub_1000094BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227AA8, &qword_1001D3648);
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

size_t sub_1000095F0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(&qword_100227AB8, &qword_1001D3658);
  v10 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100009858(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000099DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100009BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227A78, &unk_1001DB760);
  v38 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100009E58(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1001CFEE0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45, v8);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227A88, &unk_1001DB770);
  v42 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v43 = (v6 + 32);
    v38[1] = 0x80000001001E2350;
    v38[2] = 0x80000001001E2370;
    v38[0] = 0x80000001001E2330;
    v20 = result + 64;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v6 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v42)
      {
        (*v43)(v44, v31, v45);
      }

      else
      {
        (*v40)(v44, v31, v45);
      }

      v32 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = (*v43)(*(v13 + 56) + v30 * v24, v44, v45);
      ++*(v13 + 16);
      v6 = v41;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000A2D4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1001CFEE0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45, v8);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227AA0, &qword_1001D3640);
  v42 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v43 = (v6 + 32);
    v38[3] = 0x80000001001E2420;
    v38[4] = 0x80000001001E2440;
    v38[1] = 0x80000001001E23E0;
    v38[2] = 0x80000001001E2400;
    v20 = result + 64;
    v41 = v6;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v6 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v42)
      {
        (*v43)(v44, v31, v45);
      }

      else
      {
        (*v40)(v44, v31, v45);
      }

      v32 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = (*v43)(*(v13 + 56) + v30 * v24, v44, v45);
      ++*(v13 + 16);
      v6 = v41;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000A820(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = sub_1001CFEE0();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47, v8);
  v46 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B60, &qword_1001DB800);
  v44 = a2;
  v12 = sub_1001D21B0();
  v13 = v12;
  if (!*(v10 + 16))
  {
    goto LABEL_36;
  }

  v41 = v3;
  v14 = 0;
  v15 = (v10 + 64);
  v16 = 1 << *(v10 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v10 + 64);
  v19 = (v16 + 63) >> 6;
  v42 = (v6 + 16);
  v43 = v6;
  v45 = (v6 + 32);
  v40[3] = 0x80000001001E2420;
  v40[4] = 0x80000001001E2440;
  v40[1] = 0x80000001001E2470;
  v40[2] = 0x80000001001E2400;
  v40[0] = 0x80000001001E23E0;
  v20 = v12 + 64;
  while (v18)
  {
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_18:
    v29 = v26 | (v14 << 6);
    v30 = *(*(v10 + 48) + v29);
    v31 = *(v43 + 72);
    v32 = *(v10 + 56) + v31 * v29;
    if (v44)
    {
      (*v45)(v46, v32, v47);
    }

    else
    {
      (*v42)(v46, v32, v47);
    }

    v33 = *(v13 + 40);
    sub_1001D2580();
    sub_1001D1880();

    v21 = sub_1001D25C0();
    v22 = -1 << *(v13 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v20 + 8 * (v23 >> 6))) != 0)
    {
      v25 = __clz(__rbit64((-1 << v23) & ~*(v20 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = 0;
      v35 = (63 - v22) >> 6;
      do
      {
        if (++v24 == v35 && (v34 & 1) != 0)
        {
          goto LABEL_39;
        }

        v36 = v24 == v35;
        if (v24 == v35)
        {
          v24 = 0;
        }

        v34 |= v36;
        v37 = *(v20 + 8 * v24);
      }

      while (v37 == -1);
      v25 = __clz(__rbit64(~v37)) + (v24 << 6);
    }

    *(v20 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v13 + 48) + v25) = v30;
    (*v45)((*(v13 + 56) + v31 * v25), v46, v47);
    ++*(v13 + 16);
  }

  v27 = v14;
  while (1)
  {
    v14 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      JUMPOUT(0x10000AD64);
    }

    if (v14 >= v19)
    {
      break;
    }

    v28 = v15[v14];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v18 = (v28 - 1) & v28;
      goto LABEL_18;
    }
  }

  if (v44)
  {
    v38 = 1 << *(v10 + 32);
    v3 = v41;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
LABEL_36:

    goto LABEL_37;
  }

  v3 = v41;
LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000AD98(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1001CFEE0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45, v8);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B88, &unk_1001D3730);
  v42 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v43 = (v6 + 32);
    v38[0] = 0x80000001001E2550;
    v38[1] = 0x80000001001E2570;
    v20 = result + 64;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v6 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v42)
      {
        (*v43)(v44, v31, v45);
      }

      else
      {
        (*v40)(v44, v31, v45);
      }

      v32 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = (*v43)(*(v13 + 56) + v30 * v24, v44, v45);
      ++*(v13 + 16);
      v6 = v41;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000B268(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1001CFEE0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45, v8);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B68, &qword_1001D3710);
  v42 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v43 = (v6 + 32);
    v38[1] = 0x80000001001E2590;
    v20 = result + 64;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v6 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v42)
      {
        (*v43)(v44, v31, v45);
      }

      else
      {
        (*v40)(v44, v31, v45);
      }

      v32 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = (*v43)(*(v13 + 56) + v30 * v24, v44, v45);
      ++*(v13 + 16);
      v6 = v41;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000B754(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1001CFEE0();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45, v8);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B48, &qword_1001D36E0);
  v42 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v43 = (v6 + 32);
    v38[1] = 0x80000001001E25E0;
    v38[2] = 0x80000001001E2600;
    v38[0] = 0x80000001001E25C0;
    v20 = result + 64;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_18:
      v28 = v25 | (v14 << 6);
      v29 = *(*(v10 + 48) + v28);
      v30 = *(v6 + 72);
      v31 = *(v10 + 56) + v30 * v28;
      if (v42)
      {
        (*v43)(v44, v31, v45);
      }

      else
      {
        (*v40)(v44, v31, v45);
      }

      v32 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v21 = -1 << *(v13 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v20 + 8 * (v22 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v21) >> 6;
        while (++v23 != v34 || (v33 & 1) == 0)
        {
          v35 = v23 == v34;
          if (v23 == v34)
          {
            v23 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v23);
          if (v36 != -1)
          {
            v24 = __clz(__rbit64(~v36)) + (v23 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v20 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v13 + 48) + v24) = v29;
      result = (*v43)(*(v13 + 56) + v30 * v24, v44, v45);
      ++*(v13 + 16);
      v6 = v41;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v18 = (v27 - 1) & v27;
        goto LABEL_18;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_37;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_10000BC54(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_1001CFEE0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44, v8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B30, &qword_1001DB7E0);
  v41 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v42 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        (*v42)(v43, v28, v44);
      }

      else
      {
        (*v39)(v43, v28, v44);
      }

      v29 = *(v13 + 40);
      sub_1001D2580();
      sub_10001F72C(v26);
      sub_1001D1880();

      result = sub_1001D25C0();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + v21) = v26;
      result = (*v42)(*(v13 + 56) + v27 * v21, v43, v44);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10000C004(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ValidatedAttestation();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227AF0, &qword_1001D3688);
  v45 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_10001215C(v32, v46, type metadata accessor for ValidatedAttestation);
      }

      else
      {
        sub_1000120F4(v32, v46, type metadata accessor for ValidatedAttestation);
      }

      v33 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_10001215C(v46, *(v13 + 56) + v31 * v21, type metadata accessor for ValidatedAttestation);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10000C37C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B20, &qword_1001DB7D0);
  v36 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_100012038(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000C638(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RateLimitTimingDetails(0);
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v12 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227AC8, &qword_1001D3670);
  v64 = a2;
  v13 = sub_1001D21B0();
  v14 = v13;
  if (*(v11 + 16))
  {
    v58 = v3;
    v15 = 0;
    v16 = *(v11 + 64);
    v59 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 64;
    v60 = v10;
    v61 = v13;
    v62 = v11;
    while (1)
    {
      if (!v19)
      {
        v30 = v15;
        result = v59;
        while (1)
        {
          v15 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v15 >= v20)
          {
            break;
          }

          v32 = v59[v15];
          ++v30;
          if (v32)
          {
            v28 = v10;
            v29 = __clz(__rbit64(v32));
            v67 = (v32 - 1) & v32;
            goto LABEL_17;
          }
        }

        if ((v64 & 1) == 0)
        {

          v3 = v58;
          goto LABEL_47;
        }

        v56 = 1 << *(v11 + 32);
        v3 = v58;
        if (v56 >= 64)
        {
          bzero(v59, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v59 = -1 << v56;
        }

        *(v11 + 16) = 0;
        break;
      }

      v28 = v10;
      v29 = __clz(__rbit64(v19));
      v67 = (v19 - 1) & v19;
LABEL_17:
      v33 = v29 | (v15 << 6);
      v34 = *(v11 + 56);
      v35 = (*(v11 + 48) + 56 * v33);
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[3];
      v71 = v35[2];
      v39 = v35[5];
      v70 = v35[4];
      v40 = v35[6];
      v66 = *(v63 + 72);
      v41 = v34 + v66 * v33;
      v73 = v39;
      if (v64)
      {
        sub_10001215C(v41, v28, type metadata accessor for RateLimitTimingDetails);
      }

      else
      {
        sub_1000120F4(v41, v28, type metadata accessor for RateLimitTimingDetails);
      }

      v42 = v14[5];
      sub_1001D2580();
      if (v37)
      {
        sub_1001D25A0(1u);
        sub_1001D1880();
        if (v38)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1001D25A0(0);
        if (v38)
        {
LABEL_22:
          sub_1001D25A0(1u);
          sub_1001D1880();
          goto LABEL_25;
        }
      }

      sub_1001D25A0(0);
LABEL_25:
      v68 = v37;
      v69 = v36;
      v65 = v38;
      if (v73)
      {
        sub_1001D25A0(1u);
        sub_1001D1880();
      }

      else
      {
        sub_1001D25A0(0);
      }

      v72 = v40;
      v43 = *(v40 + 16);
      sub_1001D2590(v43);
      if (v43)
      {
        v44 = (v72 + 56);
        do
        {
          v45 = *(v44 - 3);
          v46 = *(v44 - 2);
          v47 = *(v44 - 1);
          v48 = *v44;

          sub_1001D1880();

          sub_1001D1880();
          swift_bridgeObjectRelease_n();

          v44 += 4;
          --v43;
        }

        while (v43);
      }

      result = sub_1001D25C0();
      v14 = v61;
      v49 = -1 << *(v61 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*(v21 + 8 * (v50 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        v11 = v62;
        v10 = v60;
        v24 = v68;
        v23 = v69;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *(v21 + 8 * v51);
          if (v55 != -1)
          {
            v22 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_9;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v50) & ~*(v21 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
      v11 = v62;
      v10 = v60;
      v24 = v68;
      v23 = v69;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v25 = (v14[6] + 56 * v22);
      *v25 = v23;
      v25[1] = v24;
      v26 = v65;
      v25[2] = v71;
      v25[3] = v26;
      v27 = v73;
      v25[4] = v70;
      v25[5] = v27;
      v25[6] = v72;
      sub_10001215C(v10, v14[7] + v66 * v22, type metadata accessor for RateLimitTimingDetails);
      ++v14[2];
      v19 = v67;
    }
  }

LABEL_47:
  *v3 = v14;
  return result;
}

uint64_t sub_10000CB50(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1001D0260();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227AC0, &qword_1001D3668);
  v78 = a2;
  v14 = sub_1001D21B0();
  v15 = v14;
  if (*(v12 + 16))
  {
    v68 = v2;
    v16 = 0;
    v17 = *(v12 + 64);
    v69 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v70 = (v7 + 16);
    v79 = (v7 + 32);
    v76 = v14 + 64;
    v75 = v12;
    v74 = v6;
    v73 = v7;
    v72 = v11;
    v71 = v21;
    v77 = v14;
    while (v20)
    {
      v32 = v7;
      v33 = __clz(__rbit64(v20));
      v34 = (v20 - 1) & v20;
LABEL_18:
      v37 = v33 | (v16 << 6);
      v85 = v34;
      v38 = *(v12 + 56);
      v39 = (*(v12 + 48) + 56 * v37);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[3];
      v87 = v39[2];
      v43 = v39[5];
      v86 = v39[4];
      v44 = v39[6];
      v84 = *(v32 + 72);
      v45 = v38 + v84 * v37;
      if (v78)
      {
        (*v79)(v11, v45, v6);
      }

      else
      {
        (*v70)(v11, v45, v6);
      }

      v46 = v15[5];
      sub_1001D2580();
      v83 = v40;
      v82 = v41;
      sub_1001D1880();
      v81 = v42;
      sub_1001D1880();
      v80 = v43;
      sub_1001D1880();
      v47 = v44 + 64;
      v48 = 1 << *(v44 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & *(v44 + 64);
      v51 = (v48 + 63) >> 6;
      v88 = v44;

      v52 = 0;
      v53 = 0;
      if (v50)
      {
        while (1)
        {
          v54 = v53;
LABEL_30:
          v55 = (v54 << 10) | (16 * __clz(__rbit64(v50)));
          v56 = (*(v88 + 48) + v55);
          v57 = *v56;
          v58 = v56[1];
          v50 &= v50 - 1;
          v59 = (*(v88 + 56) + v55);
          v61 = *v59;
          v60 = v59[1];
          v91 = v96;
          v92 = v97;
          v93 = v98;
          v89 = v94;
          v90 = v95;

          sub_1001D1880();

          sub_1001D1880();

          result = sub_1001D25C0();
          v52 ^= result;
          if (!v50)
          {
            goto LABEL_26;
          }
        }
      }

      while (1)
      {
LABEL_26:
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v54 >= v51)
        {
          break;
        }

        v50 = *(v47 + 8 * v54);
        ++v53;
        if (v50)
        {
          v53 = v54;
          goto LABEL_30;
        }
      }

      v22 = v88;

      sub_1001D2590(v52);
      result = sub_1001D25C0();
      v15 = v77;
      v24 = -1 << *(v77 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v76 + 8 * (v25 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v24) >> 6;
        v12 = v75;
        v6 = v74;
        v7 = v73;
        v11 = v72;
        while (++v26 != v63 || (v62 & 1) == 0)
        {
          v64 = v26 == v63;
          if (v26 == v63)
          {
            v26 = 0;
          }

          v62 |= v64;
          v65 = *(v76 + 8 * v26);
          if (v65 != -1)
          {
            v27 = __clz(__rbit64(~v65)) + (v26 << 6);
            goto LABEL_10;
          }
        }

LABEL_50:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v76 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v12 = v75;
      v6 = v74;
      v7 = v73;
      v11 = v72;
LABEL_10:
      *(v76 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v28 = (v15[6] + 56 * v27);
      v29 = v82;
      *v28 = v83;
      v28[1] = v29;
      v30 = v81;
      v28[2] = v87;
      v28[3] = v30;
      v31 = v80;
      v28[4] = v86;
      v28[5] = v31;
      v28[6] = v22;
      (*v79)((v15[7] + v84 * v27), v11, v6);
      ++v15[2];
      v21 = v71;
      v20 = v85;
    }

    v35 = v16;
    result = v69;
    while (1)
    {
      v16 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v16 >= v21)
      {
        break;
      }

      v36 = v69[v16];
      ++v35;
      if (v36)
      {
        v32 = v7;
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        goto LABEL_18;
      }
    }

    if ((v78 & 1) == 0)
    {

      v3 = v68;
      goto LABEL_47;
    }

    v66 = 1 << *(v12 + 32);
    v3 = v68;
    if (v66 >= 64)
    {
      bzero(v69, ((v66 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v69 = -1 << v66;
    }

    *(v12 + 16) = 0;
  }

LABEL_47:
  *v3 = v15;
  return result;
}

uint64_t sub_10000D19C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SessionLog.Element();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001CFDA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B90, &qword_1001DD050);
  v50 = a2;
  result = sub_1001D21B0();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_10001215C(v33 + v34 * v30, v54, type metadata accessor for SessionLog.Element);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1000120F4(v35 + v34 * v30, v54, type metadata accessor for SessionLog.Element);
      }

      v36 = *(v18 + 40);
      sub_100011F60(&qword_100227AD8, &type metadata accessor for UUID);
      result = sub_1001D1730();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_10001215C(v54, *(v18 + 56) + v34 * v26, type metadata accessor for SessionLog.Element);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_10000D63C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227AD0, &qword_1001D3678);
  v62 = a2;
  v7 = sub_1001D21B0();
  v8 = v7;
  if (*(v5 + 16))
  {
    v56 = v2;
    v9 = 0;
    v57 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v58 = v13;
    v59 = v5;
    v60 = v7 + 64;
    v61 = v7;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v69 = (v12 - 1) & v12;
LABEL_18:
      v26 = v23 | (v9 << 6);
      v27 = *(v5 + 56);
      v28 = (*(v5 + 48) + 56 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[5];
      v70 = v28[4];
      v34 = v28[6];
      v65 = *(v27 + 8 * v26);
      if ((v62 & 1) == 0)
      {
      }

      v35 = *(v8 + 40);
      sub_1001D2580();
      v63 = v30;
      v64 = v29;
      sub_1001D1880();
      v67 = v32;
      v68 = v31;
      sub_1001D1880();
      v66 = v33;
      sub_1001D1880();
      v36 = v34 + 64;
      v37 = 1 << *(v34 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v34 + 64);
      v40 = (v37 + 63) >> 6;
      v71 = v34;

      v41 = 0;
      v42 = 0;
      if (v39)
      {
        while (1)
        {
          v43 = v42;
LABEL_29:
          v44 = (v43 << 10) | (16 * __clz(__rbit64(v39)));
          v45 = (*(v71 + 48) + v44);
          v46 = *v45;
          v47 = v45[1];
          v39 &= v39 - 1;
          v48 = (*(v71 + 56) + v44);
          v50 = *v48;
          v49 = v48[1];

          sub_1001D1880();

          sub_1001D1880();

          result = sub_1001D25C0();
          v41 ^= result;
          if (!v39)
          {
            goto LABEL_25;
          }
        }
      }

      while (1)
      {
LABEL_25:
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v43 >= v40)
        {
          break;
        }

        v39 = *(v36 + 8 * v43);
        ++v42;
        if (v39)
        {
          v42 = v43;
          goto LABEL_29;
        }
      }

      sub_1001D2590(v41);
      result = sub_1001D25C0();
      v8 = v61;
      v15 = -1 << *(v61 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v60 + 8 * (v16 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v15) >> 6;
        v5 = v59;
        v19 = v68;
        v12 = v69;
        v21 = v66;
        v20 = v67;
        while (++v17 != v52 || (v51 & 1) == 0)
        {
          v53 = v17 == v52;
          if (v17 == v52)
          {
            v17 = 0;
          }

          v51 |= v53;
          v54 = *(v60 + 8 * v17);
          if (v54 != -1)
          {
            v18 = __clz(__rbit64(~v54)) + (v17 << 6);
            goto LABEL_10;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v60 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      v5 = v59;
      v19 = v68;
      v12 = v69;
      v21 = v66;
      v20 = v67;
LABEL_10:
      *(v60 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v22 = (*(v61 + 48) + 56 * v18);
      *v22 = v64;
      v22[1] = v63;
      v22[2] = v19;
      v22[3] = v20;
      v22[4] = v70;
      v22[5] = v21;
      v22[6] = v71;
      *(*(v61 + 56) + 8 * v18) = v65;
      ++*(v61 + 16);
      v13 = v58;
    }

    v24 = v9;
    result = v57;
    while (1)
    {
      v9 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v9 >= v13)
      {
        break;
      }

      v25 = v57[v9];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v69 = (v25 - 1) & v25;
        goto LABEL_18;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_46;
    }

    v55 = 1 << *(v5 + 32);
    v3 = v56;
    if (v55 >= 64)
    {
      bzero(v57, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v57 = -1 << v55;
    }

    *(v5 + 16) = 0;
  }

LABEL_46:
  *v3 = v8;
  return result;
}

uint64_t sub_10000DACC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v55 = a3(0);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v55, v13);
  v54 = &v47 - v14;
  v15 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v16 = *(*v8 + 24);
  }

  sub_100011AC0(a4, a5);
  v52 = a2;
  result = sub_1001D21B0();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v8;
    v49 = (v11 + 16);
    v50 = v15;
    v51 = v11;
    v53 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v8 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v8 = v18;
  return result;
}

uint64_t sub_10000DE50(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50, v8);
  v49 = &v42 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B40, &qword_1001D36D8);
  v47 = a2;
  result = sub_1001D21B0();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10000E1D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B00, &qword_1001DB950);
  v40 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E498(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B78, &qword_1001D3720);
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        swift_errorRetain();
      }

      v25 = *(v8 + 40);
      result = sub_1001D2570();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E708(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B98, &unk_1001D3740);
  v37 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *(v22 + 8);
      v38 = *v22;
      v24 = *(v22 + 16);
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      sub_1001D25A0(v24);
      result = sub_1001D25C0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v38;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000E9D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1001CFDA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_100011AC0(&qword_100227B18, &unk_1001D36B0);
  v44 = a2;
  result = sub_1001D21B0();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_100011F60(&qword_100227AD8, &type metadata accessor for UUID);
      result = sub_1001D1730();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_10000EDB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B58, &qword_1001D36F8);
  v43 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 7);
      if (v43)
      {
        v44 = *(v26 + 8);
        v49 = *(v26 + 16);
        v45 = *(v26 + 24);
        v46 = *v26;
        v47 = *(v26 + 32);
        v48 = *(v26 + 48);
        v50 = *(v26 + 64);
        v51 = *(v26 + 80);
        v54 = *(v26 + 104);
        v52 = *(v26 + 96);
        v53 = *(v26 + 112);
        v55 = *(v26 + 120);
      }

      else
      {
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *v26;
        v58 = *(v26 + 16);
        v59 = v28;
        v57 = v29;
        v31 = *(v26 + 80);
        v30 = *(v26 + 96);
        v32 = *(v26 + 64);
        *&v63[9] = *(v26 + 105);
        v62 = v31;
        *v63 = v30;
        v60 = v27;
        v61 = v32;
        v55 = v63[24];
        v53 = *&v63[16];
        v54 = *(&v30 + 1);
        v52 = v30;
        v50 = v32;
        v51 = v31;
        v47 = v59;
        v48 = v27;
        v45 = *(&v58 + 1);
        v49 = v58;
        v44 = *(&v57 + 1);
        v46 = v57;

        sub_10001208C(&v57, v56, &qword_100230150, &unk_1001D3700);
      }

      v33 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 7);
      *v18 = v46;
      *(v18 + 8) = v44;
      *(v18 + 16) = v49;
      *(v18 + 24) = v45;
      *(v18 + 32) = v47;
      *(v18 + 48) = v48;
      *(v18 + 64) = v50;
      *(v18 + 80) = v51;
      *(v18 + 96) = v52;
      *(v18 + 104) = v54;
      *(v18 + 112) = v53;
      *(v18 + 120) = v55;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10000F15C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100011AC0(&qword_100227B50, &qword_1001D36E8);
  v41 = a2;
  result = sub_1001D21B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 72 * v22;
      if (v41)
      {
        v42 = *(v26 + 8);
        v43 = *(v26 + 16);
        v44 = *(v26 + 32);
        v45 = *v26;
        v46 = *(v26 + 48);
        v27 = *(v26 + 64);
      }

      else
      {
        v27 = *(v26 + 64);
        v28 = *(v26 + 16);
        v29 = *(v26 + 48);
        v49 = *(v26 + 32);
        v50 = v29;
        v48[1] = v28;
        v48[0] = *v26;
        v51 = v27;
        v46 = v29;
        v43 = v28;
        v44 = v49;
        v42 = *(&v48[0] + 1);
        v45 = *&v48[0];

        sub_10001208C(v48, v47, &qword_100230140, &qword_1001D36F0);
      }

      v30 = *(v8 + 40);
      sub_1001D2580();
      sub_1001D1880();
      result = sub_1001D25C0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *v18 = v45;
      *(v18 + 8) = v42;
      *(v18 + 16) = v43;
      *(v18 + 32) = v44;
      *(v18 + 48) = v46;
      *(v18 + 64) = v27;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_10000F4B0()
{
  v1 = v0;
  sub_100011AC0(&qword_100227A78, &unk_1001DB760);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10000F6A4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v33 = sub_1001CFEE0();
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33, v7);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(a1, a2);
  v9 = *v2;
  v10 = sub_1001D21A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v31[0] = v5;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v34 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v9 + 48) + v24);
        v26 = v35;
        v27 = *(v35 + 72) * v24;
        v29 = v32;
        v28 = v33;
        (*(v35 + 16))(v32, *(v9 + 56) + v27, v33);
        v30 = v34;
        *(*(v34 + 48) + v24) = v25;
        result = (*(v26 + 32))(*(v30 + 56) + v27, v29, v28);
        v19 = v36;
      }

      while (v36);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v31[0];
        v11 = v34;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v36 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v11;
  }

  return result;
}

void *sub_10000F934()
{
  v1 = v0;
  v2 = type metadata accessor for ValidatedAttestation();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227AF0, &qword_1001D3688);
  v6 = *v0;
  v7 = sub_1001D21A0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v36 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = *(v6 + 56);
        v24 = (*(v6 + 48) + 16 * v21);
        v25 = v6;
        v26 = *v24;
        v27 = v24[1];
        v28 = v34;
        v29 = *(v35 + 72) * v21;
        sub_1000120F4(v23 + v29, v34, type metadata accessor for ValidatedAttestation);
        v30 = v36;
        v31 = (*(v36 + 48) + v22);
        *v31 = v26;
        v31[1] = v27;
        v6 = v25;
        sub_10001215C(v28, *(v30 + 56) + v29, type metadata accessor for ValidatedAttestation);

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        v8 = v36;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10000FB94()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B20, &qword_1001DB7D0);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100012038(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10000FD18()
{
  v1 = v0;
  v2 = type metadata accessor for RateLimitTimingDetails(0);
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227AC8, &qword_1001D3670);
  v6 = *v0;
  v7 = sub_1001D21A0();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v40 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v44 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 56 * v21;
        v23 = *(v6 + 56);
        v24 = (*(v6 + 48) + 56 * v21);
        v25 = v24[1];
        v43 = *v24;
        v26 = v24[3];
        v42 = v24[2];
        v27 = v24[5];
        v41 = v24[4];
        v28 = v24[6];
        v29 = v38;
        v30 = *(v39 + 72) * v21;
        sub_1000120F4(v23 + v30, v38, type metadata accessor for RateLimitTimingDetails);
        v31 = v40;
        v32 = (*(v40 + 48) + v22);
        v33 = v42;
        *v32 = v43;
        v32[1] = v25;
        v32[2] = v33;
        v32[3] = v26;
        v32[4] = v41;
        v32[5] = v27;
        v32[6] = v28;
        v34 = v29;
        v6 = v37;
        sub_10001215C(v34, *(v31 + 56) + v30, type metadata accessor for RateLimitTimingDetails);

        v16 = v44;
      }

      while (v44);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v35;
        v8 = v40;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_10000FFC0()
{
  v1 = v0;
  v43 = sub_1001D0260();
  v45 = *(v43 - 8);
  v2 = *(v45 + 64);
  __chkstk_darwin(v43, v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227AC0, &qword_1001D3668);
  v5 = *v0;
  v6 = sub_1001D21A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v38 = v16;
    v41 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v49 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 56 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 56 * v20);
        v24 = v23[1];
        v48 = *v23;
        v25 = v23[3];
        v47 = v23[2];
        v26 = v23[5];
        v46 = v23[4];
        v27 = v23[6];
        v28 = v45;
        v29 = *(v45 + 72) * v20;
        v30 = v42;
        v31 = v43;
        (*(v45 + 16))(v42, v22 + v29, v43);
        v32 = v44;
        v33 = (*(v44 + 48) + v21);
        v34 = v47;
        *v33 = v48;
        v33[1] = v24;
        v33[2] = v34;
        v33[3] = v25;
        v33[4] = v46;
        v33[5] = v26;
        v33[6] = v27;
        v35 = *(v32 + 56) + v29;
        v5 = v41;
        (*(v28 + 32))(v35, v30, v31);

        v15 = v49;
        v16 = v38;
      }

      while (v49);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v36;
        v7 = v44;
        goto LABEL_18;
      }

      v19 = *(v37 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v49 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_100010298()
{
  v1 = v0;
  v2 = type metadata accessor for SessionLog.Element();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1001CFDA0();
  v44 = *(v40 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v40, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227B90, &qword_1001DD050);
  v9 = *v0;
  v10 = sub_1001D21A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v43 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v44 + 32;
    v37 = v44 + 16;
    v38 = v9;
    v21 = v44;
    v22 = v11;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = *(v21 + 72) * v26;
        v29 = v39;
        v28 = v40;
        (*(v21 + 16))(v39, *(v9 + 48) + v27, v40);
        v30 = *(v9 + 56);
        v31 = v41;
        v32 = *(v42 + 72) * v26;
        sub_1000120F4(v30 + v32, v41, type metadata accessor for SessionLog.Element);
        (*(v21 + 32))(*(v22 + 48) + v27, v29, v28);
        v33 = v31;
        v9 = v38;
        result = sub_10001215C(v33, *(v22 + 56) + v32, type metadata accessor for SessionLog.Element);
        v19 = v45;
      }

      while (v45);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v34;
        v11 = v43;
        goto LABEL_18;
      }

      v25 = *(v35 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v45 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_1000105BC()
{
  v1 = v0;
  sub_100011AC0(&qword_100227AD0, &qword_1001D3678);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = (*(v2 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = v20[6];
        v28 = *(*(v2 + 56) + v17);
        v29 = (*(v4 + 48) + v19);
        *v29 = v22;
        v29[1] = v21;
        v29[2] = v23;
        v29[3] = v24;
        v29[4] = v25;
        v29[5] = v26;
        v29[6] = v27;
        *(*(v4 + 56) + v17) = v28;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10001078C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v45 = a1(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v45, v8);
  v44 = &v39 - v9;
  sub_100011AC0(a2, a3);
  v10 = *v3;
  v11 = sub_1001D21A0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v6;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

char *sub_100010A14()
{
  v1 = v0;
  v37 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v37, v3);
  v36 = &v31 - v4;
  sub_100011AC0(&qword_100227B40, &qword_1001D36D8);
  v5 = *v0;
  v6 = sub_1001D21A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100010C9C()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B00, &qword_1001DB950);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100010E14()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B78, &qword_1001D3720);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_errorRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100010F70()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B98, &unk_1001D3740);
  v2 = *v0;
  v3 = sub_1001D21A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}