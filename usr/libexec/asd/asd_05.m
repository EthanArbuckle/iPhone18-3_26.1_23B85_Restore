uint64_t sub_100091C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v15 = *(v12 + 16);
  sub_100091410();
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_1000518E0();
  *(v12 + 80) = v17;

  v18 = *(v17 + 32);
  *(v12 + 112) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -(-1 << v18));
  }

  v21 = v19 & *(v17 + 64);
  if (v21)
  {
    v22 = 0;
    v23 = *(v12 + 80);
LABEL_8:
    v26 = sub_100097C04(v21);
    v27(v26);
    sub_1000982EC();
    v28 = sub_1000443DC(&qword_1006CB748);
    v29 = *(v28 + 48);
    v30 = *(v14 + 32);
    v31 = sub_100087908();
    v32(v31);
    sub_10006B82C(v13, v16 + v29);
    sub_10009820C();
    sub_1000485F8(v33, v34, v35, v28);
    v36 = a9;
    v25 = v22;
  }

  else
  {
    v24 = 0;
    v25 = ((63 - v20) >> 6) - 1;
    while (v25 != v24)
    {
      v22 = v24 + 1;
      v21 = *(*(v12 + 80) + 8 * v24++ + 72);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    v61 = *(v12 + 64);
    sub_1000443DC(&qword_1006CB748);
    sub_100097CFC();
    sub_1000485F8(v62, v63, v64, v65);
    v36 = 0;
  }

  *(v12 + 88) = v36;
  *(v12 + 96) = v25;
  v37 = *(v12 + 72);
  sub_100097044(*(v12 + 64), v37);
  v38 = sub_1000443DC(&qword_1006CB748);
  sub_100097DF8(v37);
  if (v39)
  {
    v41 = *(v12 + 72);
    v40 = *(v12 + 80);
    v43 = *(v12 + 56);
    v42 = *(v12 + 64);
    v44 = *(v12 + 32);

    sub_10006574C();
    sub_100097DB0();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }

  else
  {
    v54 = *(v12 + 72);
    v55 = *(v12 + 32);
    v56 = *(v38 + 48);
    (*(*(v12 + 48) + 32))(*(v12 + 56), v54, *(v12 + 40));
    sub_10006B82C(v54 + v56, v55);
    v57 = swift_task_alloc();
    *(v12 + 104) = v57;
    *v57 = v12;
    sub_100097BD0(v57);
    sub_100097DB0();

    return sub_1000921AC(v58, v59);
  }
}

uint64_t sub_100091E78()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 104);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  return _swift_task_switch(sub_100091F78, v3, 0);
}

uint64_t sub_100091F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v16 = *(v12 + 48);
  v15 = *(v12 + 56);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  sub_100097D38();
  sub_1000970AC(v19, v20);
  v21 = *(v16 + 8);
  v22 = sub_100087908();
  result = v23(v22);
  v25 = *(v12 + 88);
  v26 = *(v12 + 96);
  if (v25)
  {
    v27 = *(v12 + 80);
LABEL_7:
    v29 = sub_100097C04(v25);
    v30(v29);
    sub_1000982EC();
    v31 = sub_1000443DC(&qword_1006CB748);
    v32 = *(v31 + 48);
    v33 = *(v14 + 32);
    v34 = sub_100087908();
    v35(v34);
    sub_10006B82C(v13, v15 + v32);
    sub_10009820C();
    sub_1000485F8(v36, v37, v38, v31);
    v39 = a9;
LABEL_8:
    *(v12 + 88) = v39;
    *(v12 + 96) = v26;
    v40 = *(v12 + 72);
    sub_100097044(*(v12 + 64), v40);
    v41 = sub_1000443DC(&qword_1006CB748);
    v42 = sub_100046EA4(v40, 1, v41);
    v43 = *(v12 + 32);
    if (v42 == 1)
    {
      v45 = *(v12 + 72);
      v44 = *(v12 + 80);
      v47 = *(v12 + 56);
      v46 = *(v12 + 64);

      sub_10006574C();
      sub_100097DB0();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    else
    {
      v56 = *(v12 + 72);
      v57 = *(v41 + 48);
      (*(*(v12 + 48) + 32))(*(v12 + 56), v56, *(v12 + 40));
      sub_10006B82C(v56 + v57, v43);
      v58 = swift_task_alloc();
      *(v12 + 104) = v58;
      *v58 = v12;
      sub_100097BD0();
      sub_100097DB0();

      return sub_1000921AC(v59, v60);
    }
  }

  else
  {
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= (((1 << *(v12 + 112)) + 63) >> 6))
      {
        v62 = *(v12 + 64);
        sub_1000443DC(&qword_1006CB748);
        sub_100097CFC();
        sub_1000485F8(v63, v64, v65, v66);
        v39 = 0;
        goto LABEL_8;
      }

      v25 = *(*(v12 + 80) + 8 * v28 + 64);
      ++v26;
      if (v25)
      {
        v26 = v28;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000921AC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for ServerJSONFetchRetryState();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v3[25] = *(v5 + 64);
  v3[26] = swift_task_alloc();
  v6 = *(*(sub_1000443DC(&qword_1006C9E20) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v3[30] = *(v8 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[33] = v9;
  v10 = *(v9 - 8);
  v3[34] = v10;
  v11 = *(v10 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100092380, v2, 0);
}

uint64_t sub_100092380()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  sub_100097F28();
  v1 = static ASDConfigurationManager.shared;
  sub_10009851C();

  sub_1000981C8();
  if (v2 || (v3 = *(v0 + 16), v4 = *(v0 + 32), v5 = *(v0 + 40), v6 = *(v0 + 24), sub_100076FB8(v0 + 16, &qword_1006CAC08), (v6 & 1) != 0) || (v5 & 1) != 0)
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100097D98(v7, qword_1006CB600);
    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v9 = sub_100097B0C();
    if (os_log_type_enabled(v9, v10))
    {
      sub_100097B40();
      v11 = swift_slowAlloc();
      sub_100077908(v11);
      sub_100077394();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_100097AB8();
    }

    goto LABEL_11;
  }

  v25 = *(v0 + 168);
  v26 = *v25;
  (*(*(v0 + 272) + 16))(*(v0 + 288), &v25[*(*(v0 + 184) + 20)], *(v0 + 264));
  if (v26 >= v3)
  {
    if (qword_1006C97E0 == -1)
    {
LABEL_21:
      v60 = *(v0 + 256);
      v61 = *(v0 + 224);
      v62 = *(v0 + 232);
      v63 = *(v0 + 160);
      v64 = type metadata accessor for Logger();
      sub_100046E6C(v64, qword_1006CB600);
      (*(v62 + 16))(v60, v63, v61);
      v65 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100097DCC();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 256);
      v69 = *(v0 + 224);
      v70 = *(v0 + 232);
      if (v67)
      {
        sub_100097B58();
        v71 = swift_slowAlloc();
        sub_100097B4C();
        swift_slowAlloc();
        *v71 = 136315138;
        sub_1000978CC();
        sub_100097640(v72, v73);
        sub_100098180();
        v74 = sub_10009798C();
        v75(v74);
        sub_100052F7C();
        sub_1000981B0();
        *(v71 + 4) = v68;
        sub_100097C54(&_mh_execute_header, v76, v77, "Ravioli retry limit reached for %s");
        sub_1000979D4();
        sub_1000979A4();
      }

      else
      {

        v78 = sub_1000979C4();
        v79(v78);
      }

      v80 = *(v0 + 288);
      v81 = *(v0 + 264);
      v82 = *(v0 + 272);
      v83 = *(v0 + 176);
      sub_100092F30(*(v0 + 160));
      v84 = *(v82 + 8);
      v85 = sub_100065A4C();
      v86(v85);
      goto LABEL_11;
    }

LABEL_26:
    sub_1000978B8();
    swift_once();
    goto LABEL_21;
  }

  v27 = *(v0 + 280);
  v28 = *(v0 + 288);
  v29 = *(v0 + 264);
  v30 = *(v0 + 272);
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v32 = v31;
  v33 = v31;
  v34 = *(v30 + 8);
  v35 = sub_100065A4C();
  result = v34(v35);
  v36 = 0.0;
  if (v32 > 0.0)
  {
    v36 = v32;
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  if (v36 <= -1.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v93 = v34;
  if (v36 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v91 = *(v0 + 264);
  v92 = *(v0 + 288);
  v37 = *(v0 + 248);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v42 = *(v0 + 192);
  v87 = *(v0 + 240);
  v88 = *(v0 + 200);
  v44 = *(v0 + 168);
  v43 = *(v0 + 176);
  v45 = *(v0 + 160);
  v90 = v40;
  v89 = v36;
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v46, v47, v48, v49);
  (*(v38 + 16))(v37, v45, v39);
  sub_10005909C(v44, v41);
  v50 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700);
  v51 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v52 = (v87 + *(v42 + 80) + v51) & ~*(v42 + 80);
  v53 = swift_allocObject();
  *(v53 + 2) = v43;
  *(v53 + 3) = v50;
  *(v53 + 4) = v89;
  *(v53 + 5) = v43;
  (*(v38 + 32))(&v53[v51], v37, v39);
  sub_10006B82C(v41, &v53[v52]);
  swift_retain_n();
  v54 = sub_100097A18();
  sub_10006F27C(v54, v55, v90, v56, v53);
  sub_100098294();
  v58 = *(v57 + 136);
  sub_10006BED4();
  v59 = *(v43 + v58);
  swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v43 + v58);
  sub_10006B2D4();
  *(v43 + v58) = v94;
  swift_endAccess();
  v93(v92, v91);
LABEL_11:
  v18 = *(v0 + 280);
  v17 = *(v0 + 288);
  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);

  sub_10006574C();

  return v23();
}

uint64_t sub_100092908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10009292C, a5, 0);
}

uint64_t sub_10009292C(uint64_t a1)
{
  if (is_mul_ok(*(v1 + 16), 0x3B9ACA00uLL))
  {
    sub_1000657D4();
    v3 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v4 = swift_task_alloc();
    *(v1 + 48) = v4;
    *v4 = v1;
    a1 = sub_100097CA4(v4);
  }

  else
  {
    __break(1u);
  }

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1000929D4()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v4 = v3;
  v5 = *(v1 + 48);
  *v4 = *v2;
  *(v3 + 56) = v0;

  sub_1000980B0();
  v7 = *(v6 + 24);
  sub_1000980A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100092AE8()
{
  sub_1000657EC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for ServerJSONFetchRetryState();
  sub_10008F55C(v1, *(v2 + *(v4 + 24)), *(v2 + *(v4 + 24) + 8), 0);
  sub_10006574C();

  return v5();
}

uint64_t sub_100092B68()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    sub_100097B40();
    v7 = swift_slowAlloc();
    sub_100077640(v7);
    sub_100097C74();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    sub_1000979A4();
  }

  sub_10006574C();

  return v14();
}

void sub_100092C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ServerJSONFetchRetryState();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v19 - v11);
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_1000518E0();

  v16 = v12 + *(v6 + 28);
  static Date.now.getter();
  *v12 = 0;
  v17 = (v12 + *(v6 + 32));
  *v17 = a2;
  v17[1] = a3;
  sub_10006B82C(v12, v10);

  swift_isUniquelyReferenced_nonNull_native();
  v19[1] = v15;
  sub_10006B17C();
  v18 = [v13 standardUserDefaults];
  sub_100050F48();
}

void sub_100092DC4()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v16[1] = v4;
  v5 = type metadata accessor for ServerJSONFetchRetryState();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v16 - v11);
  sub_100053A30();
  sub_10005394C();
  sub_100098224();
  static CodableUserDefaultsKey<>.value.getter();
  v13 = v12 + *(v6 + 28);
  static Date.now.getter();
  *v12 = 0;
  v14 = (v12 + *(v6 + 32));
  *v14 = v3;
  v14[1] = v1;
  sub_10006B82C(v12, v10);

  swift_isUniquelyReferenced_nonNull_native();
  v17[0] = v17[1];
  sub_10006B17C();
  sub_100098224();
  v15 = sub_100052144();
  static CodableUserDefaultsKey<>.set(value:to:)(v17, v15, &unk_100691750, &off_100691898);

  sub_100054088();
}

void sub_100092F30(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CB710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100046E6C(v11, qword_1006CB600);
  (*(v7 + 16))(v10, a1, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37 = v5;
    v38 = v16;
    v17 = v16;
    *v15 = 136315138;
    sub_100097640(&qword_1006CB708, &type metadata accessor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    v18 = *(v7 + 8);
    v18(v10, v6);
    v19 = sub_100052F7C();

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Clearing Ravioli Retry for %s", v15, 0xCu);
    sub_100044850(v17);
    v5 = v37;

    a1 = v36;
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v10, v6);
  }

  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  v22 = sub_1000518E0();

  v23 = sub_1000BFCF8(a1);
  if (v24)
  {
    v25 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v22;
    v27 = *(v22 + 24);
    sub_1000443DC(&qword_1006CA8D8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27);
    v28 = v38;
    v18((*(v38 + 48) + *(v7 + 72) * v25), v6);
    v29 = *(v28 + 56);
    v30 = type metadata accessor for ServerJSONFetchRetryState();
    sub_10006B82C(v29 + *(*(v30 - 8) + 72) * v25, v5);
    sub_100097640(&qword_1006C9878, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    v31 = v5;
    v32 = 0;
    v33 = v30;
  }

  else
  {
    v33 = type metadata accessor for ServerJSONFetchRetryState();
    v31 = v5;
    v32 = 1;
  }

  sub_1000485F8(v31, v32, 1, v33);
  sub_100076FB8(v5, &qword_1006CB710);
  v34 = [v20 standardUserDefaults];
  sub_100050F48();
}

void sub_100093384()
{
  sub_1000541C0();
  v2 = v1;
  v3 = sub_1000443DC(&qword_1006CB710);
  v4 = sub_100077674(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = type metadata accessor for UUID();
  v11 = sub_10004EAE0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10004EAF4();
  sub_10004ED04();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100097D98(v16, qword_1006CB600);
  (*(v13 + 16))(v0, v2, v10);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    sub_100097B58();
    v19 = swift_slowAlloc();
    sub_100097B4C();
    v42 = swift_slowAlloc();
    *v19 = 136315138;
    sub_1000978CC();
    sub_100097640(v20, v21);
    dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_100098250();
    (v13)(v22);
    v23 = sub_100052F7C();

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Clearing Ravioli Retry for %s", v19, 0xCu);
    sub_100098088();
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {

    v24 = sub_100098250();
    (v13)(v24);
  }

  sub_100053A30();
  sub_10005394C();
  static CodableUserDefaultsKey<>.value.getter();
  v25 = v42;
  v26 = sub_1000BFCF8(v2);
  if (v27)
  {
    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v42;
    v30 = v42[3];
    sub_1000443DC(&qword_1006CA8D8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
    v25 = v42;
    (v13)(v42[6] + *(v13 + 72) * v28, v10);
    v31 = v42[7];
    v32 = type metadata accessor for ServerJSONFetchRetryState();
    sub_1000774D8(v32);
    sub_10006B82C(v31 + *(v33 + 72) * v28, v9);
    sub_1000978CC();
    sub_100097640(v34, v35);
    _NativeDictionary._delete(at:)();
    sub_10009820C();
    v39 = v32;
  }

  else
  {
    type metadata accessor for ServerJSONFetchRetryState();
    sub_100097CFC();
  }

  sub_1000485F8(v36, v37, v38, v39);
  sub_100076FB8(v9, &qword_1006CB710);
  v41 = v25;
  sub_100087908();
  v40 = sub_100052144();
  static CodableUserDefaultsKey<>.set(value:to:)(&v41, v40, &unk_100691750, &off_100691898);

  sub_100054088();
}

void sub_100093760(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerJSONFetchRetryState();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v83 = (&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for Date();
  v81 = *(v82 - 1);
  v8 = *(v81 + 64);
  __chkstk_darwin(v82);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ASAnalyticsEvent();
  v10 = *(*(v80 - 1) + 64);
  __chkstk_darwin(v80);
  v79 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for UUID();
  v12 = *(v87 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v87);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v76 - v18;
  __chkstk_darwin(v17);
  v21 = &v76 - v20;
  v22 = sub_1000443DC(&qword_1006CB710);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = objc_opt_self();
  v26 = [v77 standardUserDefaults];
  v27 = sub_1000518E0();

  v28 = swift_allocBox();
  v30 = v29;
  v86 = v27;
  sub_10005552C(a1, v27, v25);
  if (sub_100046EA4(v25, 1, v5) != 1)
  {
    sub_10006B82C(v25, v30);
    if (qword_1006C9818 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = static ASDConfigurationManager.shared;
    sub_1000B05E4(&v91);

    if (v94 == 1 || (v76 = v30, v32 = v28, v33 = v91, v34 = v92, v35 = v93, v36 = BYTE8(v91), sub_100076FB8(&v91, &qword_1006CAC08), (v36 & 1) != 0) || (v35 & 1) != 0)
    {

      goto LABEL_9;
    }

    v44 = *v76 + 1;
    if (__OFADD__(*v76, 1))
    {
      __break(1u);
    }

    else
    {
      v36 = a1;
      *v76 = v44;
      if (v44 >= v33)
      {
        v84 = v33;
        if (qword_1006C97E0 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_100046E6C(v54, qword_1006CB600);
        v55 = *(v12 + 16);
        v56 = v87;
        v55(v21, a1, v87);
        swift_retain_n();
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v83 = v55;
          v60 = v59;
          v82 = swift_slowAlloc();
          v90 = v82;
          *v60 = 136315650;
          sub_100097640(&qword_1006CB708, &type metadata accessor for UUID);
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v12 + 8))(v21, v87);
          v61 = sub_100052F7C();
          v56 = v87;

          *(v60 + 4) = v61;
          *(v60 + 12) = 2048;
          v62 = v76;
          swift_beginAccess();
          v63 = *v62;

          *(v60 + 14) = v63;

          *(v60 + 22) = 2048;
          *(v60 + 24) = v84;
          _os_log_impl(&_mh_execute_header, v57, v58, "Reached ravioli retry limit for %s - Tried %ld times limit %ld", v60, 0x20u);
          sub_100044850(v82);

          v55 = v83;
        }

        else
        {

          (*(v12 + 8))(v21, v56);
          v62 = v76;
        }

        sub_100092F30(v36);
        v74 = *(sub_1000443DC(&qword_1006CB718) + 48);
        swift_beginAccess();
        v75 = v79;
        *v79 = *v62;
        v55((v75 + v74), v36, v56);
        swift_storeEnumTagMultiPayload();
        sub_1000C4148(v75);
        sub_1000970AC(v75, type metadata accessor for ASAnalyticsEvent);

        goto LABEL_27;
      }

      if (qword_1006C97E0 == -1)
      {
LABEL_17:
        v45 = type metadata accessor for Logger();
        sub_100046E6C(v45, qword_1006CB600);
        v46 = v36;
        v47 = v87;
        (*(v12 + 16))(v19, v46, v87);
        swift_retain_n();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v90 = v80;
          *v50 = 136315394;
          sub_100097640(&qword_1006CB708, &type metadata accessor for UUID);
          LODWORD(v79) = v49;
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v12 + 8))(v19, v47);
          v51 = sub_100052F7C();

          *(v50 + 4) = v51;
          *(v50 + 12) = 2048;
          v52 = v76;
          swift_beginAccess();
          v53 = *v52;

          *(v50 + 14) = v53;

          _os_log_impl(&_mh_execute_header, v48, v79, "Ravioli request failed for %s. Attempts made: %ld", v50, 0x16u);
          sub_100044850(v80);
        }

        else
        {

          (*(v12 + 8))(v19, v47);
          v52 = v76;
        }

        v64 = v78;
        static Date.now.getter();
        swift_beginAccess();
        (*(v81 + 40))(&v52[*(v5 + 20)], v64, v82);
        sub_10005909C(v52, v83);
        v65 = v86;
        swift_isUniquelyReferenced_nonNull_native();
        v89 = v65;
        sub_10006B17C();
        v66 = [v77 standardUserDefaults];
        sub_100050F48();

        v67 = type metadata accessor for TaskPriority();
        v68 = v84;
        sub_1000485F8(v84, 1, 1, v67);
        v69 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700);
        v70 = swift_allocObject();
        v71 = v85;
        v70[2] = v85;
        v70[3] = v69;
        v70[4] = v34;
        v70[5] = v71;
        v70[6] = v32;
        swift_retain_n();

        sub_10006F27C(0, 0, v68, &unk_1005CD4D8, v70);
        v72 = *(*v71 + 136);
        swift_beginAccess();
        v73 = *(v71 + v72);
        swift_isUniquelyReferenced_nonNull_native();
        v88 = *(v71 + v72);
        sub_10006B2D4();
        *(v71 + v72) = v88;
        swift_endAccess();

LABEL_27:

        return;
      }
    }

    swift_once();
    goto LABEL_17;
  }

  sub_100076FB8(v25, &qword_1006CB710);
  swift_deallocBox();
LABEL_9:
  v37 = v87;
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100046E6C(v38, qword_1006CB600);
  (*(v12 + 16))(v16, a1, v37);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v90 = v42;
    *v41 = 136315138;
    sub_100097640(&qword_1006CB708, &type metadata accessor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v12 + 8))(v16, v37);
    v43 = sub_100052F7C();

    *(v41 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "No retry state or no max retries for %s", v41, 0xCu);
    sub_100044850(v42);
  }

  else
  {

    (*(v12 + 8))(v16, v37);
  }
}

void sub_1000944A8(uint64_t a1)
{
  v115 = *v1;
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = sub_100077674(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  sub_100097EB4(v8 - v7);
  v9 = type metadata accessor for ServerJSONFetchRetryState();
  v10 = sub_1000774D8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10004EAF4();
  sub_100097EB4(v14 - v13);
  v113 = type metadata accessor for Date();
  v15 = sub_10004EAE0(v113);
  v112 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_10004EAF4();
  sub_100097EB4(v20 - v19);
  v110 = type metadata accessor for ASAnalyticsEvent();
  v21 = sub_1000774D8(v110);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10004EAF4();
  sub_100097EB4(v25 - v24);
  v26 = type metadata accessor for UUID();
  v27 = sub_10004EAE0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v27);
  v34 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = &v105 - v36;
  __chkstk_darwin(v35);
  v39 = &v105 - v38;
  v40 = sub_1000443DC(&qword_1006CB710);
  v41 = sub_100077674(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_10004EAF4();
  v46 = v45 - v44;
  v47 = sub_100053A30();
  v48 = sub_10005394C();
  v108 = v47;
  v107 = v48;
  static CodableUserDefaultsKey<>.value.getter();
  v49 = swift_allocBox();
  v51 = v50;
  v119 = a1;
  v118 = v123;
  sub_10005552C(a1, v123, v46);
  if (sub_100046EA4(v46, 1, v9) != 1)
  {
    v52 = v49;
    sub_10006B82C(v46, v51);
    if (qword_1006C9818 != -1)
    {
      sub_1000878A4();
    }

    sub_100097F28();
    v53 = static ASDConfigurationManager.shared;
    sub_1000B05E4(&v124);

    if (v127 == 1 || (v106 = v124, v54 = v125, v55 = v126, v56 = BYTE8(v124), sub_100076FB8(&v124, &qword_1006CAC08), (v56 & 1) != 0) || (v55 & 1) != 0)
    {

      goto LABEL_9;
    }

    v65 = *v51 + 1;
    if (__OFADD__(*v51, 1))
    {
      __break(1u);
    }

    else
    {
      v56 = v51;
      *v51 = v65;
      if (v65 >= v106)
      {
        if (qword_1006C97E0 != -1)
        {
          sub_1000978B8();
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_100097D98(v75, qword_1006CB600);
        v117 = *(v29 + 16);
        v117(v39, v119, v26);
        swift_retain_n();
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v76, v77))
        {
          sub_100097B4C();
          v78 = swift_slowAlloc();
          sub_100097B4C();
          v116 = swift_slowAlloc();
          v122 = v116;
          *v78 = 136315650;
          sub_1000978CC();
          sub_100097640(v79, v80);
          LODWORD(v115) = v77;
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v114 = v76;
          (*(v29 + 8))(v39, v26);
          sub_100052F7C();
          sub_1000980E0();

          *(v78 + 4) = v81;
          *(v78 + 12) = 2048;
          sub_1000879B4();
          v82 = *v51;

          *(v78 + 14) = v82;
          v56 = v51;

          *(v78 + 22) = 2048;
          *(v78 + 24) = v106;
          v83 = v114;
          _os_log_impl(&_mh_execute_header, v114, v115, "Reached ravioli retry limit for %s - Tried %ld times limit %ld", v78, 0x20u);
          sub_100044850(v116);
          sub_100097AB8();

          sub_100097AB8();
        }

        else
        {

          (*(v29 + 8))(v39, v26);
        }

        v102 = v119;
        sub_100093384();
        v103 = *(sub_1000443DC(&qword_1006CB718) + 48);
        sub_1000879B4();
        v104 = v109;
        *v109 = *v56;
        v117((v104 + v103), v102, v26);
        swift_storeEnumTagMultiPayload();
        sub_1000C4148(v104);
        sub_100097E64();

        goto LABEL_27;
      }

      if (qword_1006C97E0 == -1)
      {
LABEL_17:
        v66 = type metadata accessor for Logger();
        sub_100097D98(v66, qword_1006CB600);
        (*(v29 + 16))(v37, v119, v26);
        v118 = v52;
        swift_retain_n();
        v67 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_100097DCC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          sub_100097B4C();
          v110 = swift_slowAlloc();
          v122 = v110;
          *v69 = 136315394;
          sub_1000978CC();
          sub_100097640(v70, v71);
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v29 + 8))(v37, v26);
          v72 = sub_100052F7C();
          v56 = v51;

          *(v69 + 4) = v72;
          *(v69 + 12) = 2048;
          sub_1000879B4();
          v73 = *v51;
          v74 = v118;

          *(v69 + 14) = v73;

          _os_log_impl(&_mh_execute_header, v67, v52, "Ravioli request failed for %s. Attempts made: %ld", v69, 0x16u);
          sub_100044850(v110);
          sub_100097AB8();

          sub_100097AB8();
        }

        else
        {

          v74 = v118;

          (*(v29 + 8))(v37, v26);
        }

        v84 = v111;
        static Date.now.getter();
        swift_beginAccess();
        (*(v112 + 40))(v56 + *(v9 + 20), v84, v113);
        sub_10005909C(v56, v114);
        swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v123;
        sub_10006B17C();

        v85 = sub_100052144();
        static CodableUserDefaultsKey<>.set(value:to:)(v121, v85, &unk_100691750, &off_100691898);

        type metadata accessor for TaskPriority();
        v86 = v116;
        sub_100097CFC();
        sub_1000485F8(v87, v88, v89, v90);
        v91 = *(v115 + 80);
        v92 = *(v115 + 88);
        type metadata accessor for RavioliManager();
        v93 = sub_100097E8C();
        v94 = swift_allocObject();
        v95 = v117;
        v94[2] = v117;
        v94[3] = v93;
        v94[4] = v54;
        v94[5] = v95;
        v94[6] = v74;
        swift_retain_n();

        v96 = sub_100097A18();
        sub_10006F27C(v96, v97, v86, v98, v94);
        sub_100098294();
        v100 = *(v99 + 136);
        sub_10006BED4();
        v101 = *(v95 + v100);
        swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v95 + v100);
        sub_10006B2D4();
        *(v95 + v100) = v120;
        swift_endAccess();

LABEL_27:

        return;
      }
    }

    sub_1000978B8();
    swift_once();
    goto LABEL_17;
  }

  sub_100076FB8(v46, &qword_1006CB710);
  swift_deallocBox();
LABEL_9:
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100097D98(v57, qword_1006CB600);
  (*(v29 + 16))(v34, v119, v26);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    sub_100097B58();
    v60 = swift_slowAlloc();
    sub_100097B4C();
    v61 = swift_slowAlloc();
    v122 = v61;
    *v60 = 136315138;
    sub_1000978CC();
    sub_100097640(v62, v63);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v29 + 8))(v34, v26);
    v64 = sub_100052F7C();

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "No retry state or no max retries for %s", v60, 0xCu);
    sub_100044850(v61);
    sub_100097AB8();

    sub_1000979A4();
  }

  else
  {

    (*(v29 + 8))(v34, v26);
  }
}

uint64_t sub_1000950D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  *(v5 + 56) = type metadata accessor for ServerJSONFetchRetryState();
  *(v5 + 64) = swift_projectBox();

  return _swift_task_switch(sub_100095158, a5, 0);
}

uint64_t sub_100095158(uint64_t a1)
{
  v3 = *(v1 + 40);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v4 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  a1 = sub_100097CA4(v5);

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100095240()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_1000980B0();
  v7 = *(v6 + 48);
  sub_1000980A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100095354()
{
  sub_1000657EC();
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for UUID();
  sub_100046E6C(v4, static RavioliConstants.ravioliUUID);
  sub_1000879B4();
  sub_10009834C();
  v5 = sub_1000488FC();
  sub_10008F55C(v5, v6, v2, 0);

  sub_10006574C();

  return v7();
}

uint64_t sub_100095414(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  *(v5 + 56) = type metadata accessor for ServerJSONFetchRetryState();
  *(v5 + 64) = swift_projectBox();

  return _swift_task_switch(sub_10009549C, a5, 0);
}

uint64_t sub_10009549C(uint64_t a1)
{
  v3 = *(v1 + 40);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v4 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  a1 = sub_100097CA4(v5);

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100095584()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_1000980B0();
  v7 = *(v6 + 48);
  sub_1000980A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100095698()
{
  sub_1000657EC();
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for UUID();
  sub_100046E6C(v4, static RavioliConstants.ravioliUUID);
  sub_1000879B4();
  sub_10009834C();
  sub_1000488FC();
  sub_10008FA20();

  sub_10006574C();

  return v5();
}

uint64_t sub_100095758()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    sub_100097B40();
    v7 = swift_slowAlloc();
    sub_100077640(v7);
    sub_100097C74();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    sub_1000979A4();
  }

  sub_10006574C();

  return v14();
}

uint64_t RavioliManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  sub_100097C48();
  v2 = *(v0 + *(v1 + 112));

  sub_100097C48();
  v4 = *(v0 + *(v3 + 128));

  sub_100097C48();
  v6 = *(v0 + *(v5 + 136));

  sub_100097C48();
  sub_100044850((v0 + *(v7 + 152)));
  sub_100097C48();
  sub_100044850((v0 + *(v8 + 160)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t RavioliManager.__deallocating_deinit()
{
  RavioliManager.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100095960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x757165527473616CLL && a2 == 0xEB00000000747365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0064496E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100095A84(char a1)
{
  if (!a1)
  {
    return 0x756F437972746572;
  }

  if (a1 == 1)
  {
    return 0x757165527473616CLL;
  }

  return 0x6163696669746F6ELL;
}

uint64_t sub_100095AF4(void *a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CB7F8);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000975EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for ServerJSONFetchRetryState();
    v17 = *(v16 + 20);
    type metadata accessor for Date();
    sub_100097D50();
    sub_100097640(v18, v19);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_100095CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = sub_10004EAE0(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v12 = v11 - v10;
  v34 = sub_1000443DC(&qword_1006CB808);
  v13 = sub_10004EAE0(v34);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004EAF4();
  v16 = type metadata accessor for ServerJSONFetchRetryState();
  v17 = sub_1000774D8(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10004EAF4();
  sub_10004ED04();
  v20 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000975EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  *v3 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100097D50();
  sub_100097640(v21, v22);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 32))(v3 + *(v16 + 20), v12, v33);
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v24;
  v26 = sub_100097FC0();
  v27(v26);
  v28 = (v3 + *(v16 + 24));
  *v28 = v23;
  v28[1] = v25;
  sub_10005909C(v3, a2);
  sub_100044850(a1);
  sub_100097D38();
  return sub_1000970AC(v3, v29);
}

uint64_t sub_100095FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100095960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100095FFC(uint64_t a1)
{
  v2 = sub_1000975EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096038(uint64_t a1)
{
  v2 = sub_1000975EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000960F0(uint64_t a1)
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

uint64_t sub_1000961E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::UInt a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_1000BFC64(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    *v31 = *v5;
    v12 = *(*v5 + 24);
    v13 = sub_1000443DC(&unk_1006CABC0);
    sub_10009836C(v13, v14, v15, v16, v17, v18, v19, v20, v30, v31[0]);
    v21 = *(*(*v32 + 48) + 24 * v10 + 8);

    v22 = *(*v32 + 56);
    v23 = type metadata accessor for Date();
    sub_1000774D8(v23);
    (*(v24 + 32))(a4, v22 + *(v24 + 72) * v10, v23);
    sub_1000471EC();
    _NativeDictionary._delete(at:)();
    *v5 = *v32;
    sub_10009820C();
    v28 = v23;
  }

  else
  {
    type metadata accessor for Date();
    sub_100097CFC();
  }

  return sub_1000485F8(v25, v26, v27, v28);
}

uint64_t sub_100096374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000BFCF8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  sub_1000443DC(&qword_1006CA8E0);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v14 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v14 + 56) + 8 * v6);
  sub_1000443DC(&qword_1006C9870);
  sub_100097640(&qword_1006C9878, &type metadata accessor for UUID);
  _NativeDictionary._delete(at:)();
  *v2 = v14;
  return v12;
}

uint64_t sub_1000964C8(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  sub_10004EAE0(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  v11 = *(v1 + 32);

  (*(v5 + 8))(v1 + v7, v3);
  a1(*(v1 + v9 + 8));

  return _swift_deallocObject(v1, v9 + 16, v6 | 7);
}

uint64_t sub_1000965B0()
{
  sub_100098070();
  sub_10006ECA0();
  v0 = sub_100097F44();
  sub_1000474C0(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  sub_100097CB4();
  sub_100097AA4(v5);
  v6 = swift_task_alloc();
  v7 = sub_100097AC4(v6);
  *v7 = v8;
  v7[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_10008FE98(v9, v10, v11, v12, v13, v14, v15);
}

double sub_100096694@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000BFB1C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    *v21 = *v3;
    v10 = *(*v3 + 24);
    v11 = sub_1000443DC(&qword_1006CA8F0);
    sub_10009836C(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21[0]);
    sub_100076E50(*(*v22 + 48) + 40 * v8);
    sub_1000534C8((*(*v22 + 56) + 32 * v8), a2);
    sub_1000981E8();
    _NativeDictionary._delete(at:)();
    *v3 = *v22;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t type metadata accessor for ServerJSONFetchRetryState()
{
  result = qword_1006CB7B8;
  if (!qword_1006CB7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000967C0()
{
  sub_100068324();
  sub_1000982AC();
  v2 = swift_task_alloc();
  v3 = sub_10006EB38(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000979B4();

  return sub_1000950D0(v1, v5, v6, v7, v0);
}

uint64_t sub_100096868()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000968B0()
{
  sub_100068324();
  sub_1000982AC();
  v2 = swift_task_alloc();
  v3 = sub_10006EB38(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000979B4();

  return sub_100095414(v1, v5, v6, v7, v0);
}

uint64_t sub_100096958()
{
  v2 = type metadata accessor for UUID();
  sub_10004EAE0(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097C94();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 48);

  v9 = sub_100097C84();
  v10(v9);
  v11 = *(v0 + v1 + 8);

  v12 = sub_1000980BC();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_100096A1C()
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_100097CB4();
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[6];
  v10 = (v0 + v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v14 = sub_100097AC4(v13);
  *v14 = v15;
  v14[1] = sub_1000640AC;
  sub_1000978E4();
  sub_1000980C8();

  return sub_100090954(v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_100096B0C()
{
  _Block_release(*(v0 + 16));
  sub_100098238();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100096B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for RavioliFetcherImpl;
  v15[4] = &off_100693A98;
  swift_defaultActor_initialize();
  v6 = *(*a3 + 112);
  type metadata accessor for UUID();
  sub_1000443DC(&qword_1006C9870);
  sub_100097640(&qword_1006C9878, &type metadata accessor for UUID);
  *(a3 + v6) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + *(*a3 + 128)) = 0;
  v7 = *(*a3 + 136);
  *(a3 + v7) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + *(*a3 + 144)) = a2;
  v8 = *(*a3 + 104);
  v9 = sub_1000443DC(&qword_1006CB720);
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3 + v8, a1, v9);
  sub_1000446C4(v15, a3 + *(*a3 + 152));
  v13 = type metadata accessor for ASAnalyticsManager();
  v14 = &off_1006935C8;
  *&v12 = swift_allocObject();
  (*(v10 + 8))(a1, v9);
  sub_100044850(v15);
  sub_100046D90(&v12, a3 + *(*a3 + 160));
  return a3;
}

uint64_t sub_100096DA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096DE0()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_100065570;
  sub_1000979B4();

  return sub_100087FE0(v7, v8, v9, v3);
}

uint64_t sub_100096E80()
{
  v2 = sub_1000443DC(&qword_1006CB720);
  sub_10004EAE0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_100097C94();
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_100097C84();
  v9(v8);
  v10 = *(v0 + v1);

  v11 = sub_1000980BC();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_100096F3C()
{
  sub_100068324();
  v1 = sub_1000443DC(&qword_1006CB720);
  sub_1000474C0(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = sub_10006EB38(v7);
  *v8 = v9;
  v8[1] = sub_100065570;
  sub_1000979B4();

  return sub_10008AD18(v10, v11, v12, v13, v6);
}

uint64_t sub_100097044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000970AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000774D8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100097104()
{
  v1 = type metadata accessor for UUID();
  sub_10004EAE0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for ServerJSONFetchRetryState() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);
  v15 = v8[7];
  v16 = type metadata accessor for Date();
  sub_1000774D8(v16);
  (*(v17 + 8))(v0 + v10 + v15);
  v18 = *(v0 + v10 + v8[8] + 8);

  return _swift_deallocObject(v0, v10 + v11, v12 | 7);
}

uint64_t sub_100097274()
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ServerJSONFetchRetryState();
  sub_100077674(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v13 = swift_task_alloc();
  v14 = sub_100097AC4(v13);
  *v14 = v15;
  v14[1] = sub_100065570;
  sub_1000979B4();
  sub_1000980C8();

  return sub_100092908(v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1000973F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100046EA4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000974B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1000485F8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100097568()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000975EC()
{
  result = qword_1006CB800;
  if (!qword_1006CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB800);
  }

  return result;
}

uint64_t sub_100097640(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ServerJSONFetchRetryState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100097754);
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

unint64_t sub_100097790()
{
  result = qword_1006CB810;
  if (!qword_1006CB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB810);
  }

  return result;
}

unint64_t sub_1000977E8()
{
  result = qword_1006CB818;
  if (!qword_1006CB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB818);
  }

  return result;
}

unint64_t sub_100097840()
{
  result = qword_1006CB820;
  if (!qword_1006CB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB820);
  }

  return result;
}

void *sub_100097910(uint64_t a1)
{
  *(a1 + 8) = sub_10008BED8;
  v2 = v1[42];
  v3 = v1[40];
  v4 = v1[37];
  return v1 + 50;
}

uint64_t sub_100097950(uint64_t a1)
{
  *(a1 + 8) = sub_10008AFC8;
  v2 = *(v1 + 296);
  v3 = *(v1 + 280);
  return v1 + 352;
}

uint64_t sub_1000979D4()
{
  sub_100044850(v0);
}

uint64_t sub_100097A28(unint64_t *a1, uint64_t *a2)
{

  return sub_1000472E0(a1, a2);
}

uint64_t sub_100097A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;

  return sub_100052F7C();
}

uint64_t sub_100097A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;

  return sub_100052F7C();
}

void sub_100097AA4(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
}

uint64_t sub_100097AD4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

void sub_100097B64(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, v12, a12, a4, v13, 0x16u);
}

uint64_t sub_100097B88()
{

  return swift_dynamicCast();
}

uint64_t sub_100097BAC()
{
  v1[5] = v0;
  v3 = v1[17];
  v4 = v1[15];

  return swift_errorRetain();
}

uint64_t sub_100097BD0(uint64_t a1)
{
  *(a1 + 8) = sub_100091E78;
  v2 = v1[4];
  v3 = v1[2];
  return v1[7];
}

uint64_t sub_100097C04@<X0>(unint64_t a1@<X8>)
{
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];
  v9 = *(v2 + 48) + *(v6 + 72) * (__clz(__rbit64(a1)) | (v3 << 6));
  v10 = *(v6 + 16);
  return v1[7];
}

void sub_100097C54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100097D08(uint64_t result)
{
  v3 = __clz(__rbit64(v1)) | (v2 << 6);
  v4 = (*(result + 48) + 16 * v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(*(result + 56) + 32 * v3 + 27);
  return result;
}

void sub_100097D68(uint64_t a1@<X8>)
{
  v3 = __clz(__rbit64(v1)) | (v2 << 6);
  v4 = (*(a1 + 48) + 16 * v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(*(a1 + 56) + 32 * v3 + 27);
}

uint64_t sub_100097DD8()
{

  return swift_arrayDestroy();
}

uint64_t sub_100097E18()
{

  return swift_slowAlloc();
}

uint64_t sub_100097E38()
{

  return swift_slowAlloc();
}

uint64_t sub_100097E64()
{

  return sub_1000970AC(v0, type metadata accessor for ASAnalyticsEvent);
}

uint64_t sub_100097E8C()
{

  return swift_getWitnessTable();
}

uint64_t sub_100097EC4()
{
  result = v0[17];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  return result;
}

void sub_100097ED4()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
}

uint64_t sub_100097EE4()
{

  return swift_once();
}

uint64_t sub_100097F28()
{

  return swift_beginAccess();
}

uint64_t sub_100097F44()
{

  return type metadata accessor for UUID();
}

uint64_t sub_100097F60()
{

  return sub_100052F7C();
}

uint64_t sub_100097F7C()
{

  return sub_100052F7C();
}

uint64_t sub_100097FA4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100097FC0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_100098040()
{
}

uint64_t sub_100098104()
{
  v2 = v0[42];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[33];
  v7 = v0[30];
}

uint64_t sub_100098128()
{
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
}

uint64_t sub_100098140()
{
  sub_10004489C(*(v5 - 224), v2);
  sub_10004489C(v4, v3);

  return sub_10004489C(v0, v1);
}

uint64_t sub_100098180()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100098198()
{
}

uint64_t sub_1000981B0()
{
}

void *sub_100098218(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

void sub_100098264()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
}

void sub_100098270()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
}

void sub_1000982AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
}

uint64_t sub_1000982CC()
{
  *(v0 + 184) = *(v0 + 96);

  return sub_1000961E8(v0 + 184, v0 + 200);
}

uint64_t sub_1000982EC()
{
  v5 = *(v1 + 56) + *(v3 + 72) * v2;

  return sub_10005909C(v5, v0);
}

uint64_t sub_10009830C()
{
  v2 = v0[46];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
}

uint64_t sub_10009832C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009834C()
{
  v3 = (v0 + *(v1 + 24));
  v4 = *v3;
  v5 = v3[1];
}

BOOL sub_10009836C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

void sub_10009838C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000983AC(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000983CC()
{
  v2 = v0[40];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
}

uint64_t sub_1000983EC()
{
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[28];
}

void sub_10009840C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_10009842C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100098444()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];

  return Error.localizedDescription.getter();
}

void sub_10009845C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100098474()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

BOOL sub_10009848C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000984A4()
{
}

uint64_t sub_1000984BC()
{
}

uint64_t sub_1000984D4()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
}

uint64_t sub_1000984EC()
{
  v2 = *(v0 + 112);
}

uint64_t sub_100098504()
{

  return sub_100052F7C();
}

uint64_t sub_10009851C()
{

  return sub_1000B05E4((v0 + 16));
}

BOOL sub_100098534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009D83C(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

BOOL sub_1000985D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009D83C(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 + 32);
    v10 = *(v6 + 8);
    v11 = *v6;
    v15[0] = *(v6 - 1);
    v15[1] = v11;
    v16 = v10;
    v17 = *(v6 + 1);
    v18 = v9;

    v12 = v4(v15);
    if (v3)
    {

      return v8 != 0;
    }

    v13 = v12;
    v6 += 6;
  }

  while ((v13 & 1) == 0);
  return v8 != 0;
}

uint64_t sub_1000986B0()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_100098738();
}

uint64_t sub_100098738()
{
  sub_1000657D4();
  v1[2] = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  sub_100077674(v2);
  v4 = *(v3 + 64);
  v1[3] = sub_100065948();
  v5 = type metadata accessor for Date();
  v1[4] = v5;
  sub_1000474C0(v5);
  v1[5] = v6;
  v8 = *(v7 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v9 = type metadata accessor for PushPayload();
  v1[8] = v9;
  sub_1000474C0(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = sub_100065948();
  v13 = sub_1000773A4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100098860()
{
  sub_100068324();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1000513BC();
  *(v0 + 88) = v2;

  v3 = *(v2 + 16);
  *(v0 + 96) = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = 0;
  v5 = *(v0 + 72);
  *(v0 + 144) = *(v5 + 80);
  *(v0 + 104) = *(v5 + 72);
  while (1)
  {
    *(v0 + 112) = v4;
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 64);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    sub_10009D7E8(v4);
    sub_10009D870();
    if (sub_10009D80C() == 1)
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = *(v0 + 56);
      static Date.distantPast.getter();
      if (sub_100046EA4(v12, 1, v11) != 1)
      {
        sub_100076FB8(*(v0 + 24), &qword_1006CA2B0);
      }
    }

    else
    {
      (*(*(v0 + 40) + 32))(*(v0 + 56), *(v0 + 24), *(v0 + 32));
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    static Date.now.getter();
    static Date.< infix(_:_:)();
    v18 = sub_10009D75C();
    v19(v18);
    if (v14)
    {
      break;
    }

    v20 = *(v0 + 80);
    v21 = *(v0 + 56);
    v22 = *(v0 + 16);
    Date.timeIntervalSinceNow.getter();
    sub_100099210(v20, v23);
    v24 = sub_10009D73C();
    v25(v24);
    sub_10009D660();
    sub_10009D3B4(v22, v26);
    if (v22 == v20)
    {
      v32 = *(v0 + 88);
LABEL_15:

      v33 = *(v0 + 80);
      v34 = *(v0 + 48);
      v35 = *(v0 + 56);
      v36 = *(v0 + 24);

      sub_10006574C();
      sub_10006ED0C();

      __asm { BRAA            X1, X16 }
    }

    v27 = *(v0 + 104);
    v4 = *(v0 + 112) + 1;
    v28 = *(v0 + 144);
  }

  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *v29 = v0;
  sub_10009D684(v29);
  sub_10006ED0C();

  return sub_100099768();
}

uint64_t sub_100098A94()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 136);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_1000773A4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100098B8C()
{
  sub_100068324();
  while (1)
  {
    v4 = sub_10009D73C();
    v5(v4);
    sub_10009D660();
    sub_10009D3B4(v0, v6);
    if (v3 == v1)
    {
      v26 = *(v2 + 88);

      v27 = *(v2 + 80);
      v28 = *(v2 + 48);
      v29 = *(v2 + 56);
      v30 = *(v2 + 24);

      sub_10006574C();
      sub_10006ED0C();

      __asm { BRAA            X1, X16 }
    }

    v7 = *(v2 + 104);
    v8 = *(v2 + 112) + 1;
    *(v2 + 112) = v8;
    v9 = *(v2 + 144);
    v11 = *(v2 + 80);
    v10 = *(v2 + 88);
    v12 = *(v2 + 64);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);
    sub_10009D7E8(v8);
    sub_10009D870();
    if (sub_10009D80C() == 1)
    {
      v16 = *(v2 + 24);
      v15 = *(v2 + 32);
      v17 = *(v2 + 56);
      static Date.distantPast.getter();
      if (sub_100046EA4(v16, 1, v15) != 1)
      {
        sub_100076FB8(*(v2 + 24), &qword_1006CA2B0);
      }
    }

    else
    {
      (*(*(v2 + 40) + 32))(*(v2 + 56), *(v2 + 24), *(v2 + 32));
    }

    v19 = *(v2 + 48);
    v18 = *(v2 + 56);
    v20 = *(v2 + 32);
    v21 = *(v2 + 40);
    static Date.now.getter();
    static Date.< infix(_:_:)();
    v22 = sub_10009D75C();
    v23(v22);
    if (v18)
    {
      break;
    }

    v1 = *(v2 + 80);
    v24 = *(v2 + 56);
    v3 = *(v2 + 16);
    Date.timeIntervalSinceNow.getter();
    v0 = v3;
    sub_100099210(v1, v25);
  }

  v33 = swift_task_alloc();
  *(v2 + 136) = v33;
  *v33 = v2;
  sub_10009D684();
  sub_10006ED0C();

  return sub_100099768();
}

void sub_100098D5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v2 == 1)
  {
    if (*(a1 + 56) & 1) != 0 || (*(a1 + 72))
    {
      return;
    }

LABEL_8:
    if ((*(a1 + 72) & 1) == 0)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      sub_10009D02C(0.0, 1.0);
      v4 = v6;
      if (v7 < v5)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(a1 + 72) == 1)
  {
LABEL_9:
    v4 = 0.0;
    goto LABEL_11;
  }

  v4 = *(a1 + 64);
LABEL_11:
  v8 = v1;
  if (v2)
  {
    v8 = 0.0;
  }

  if (v4 > v8 + v4)
  {
    __break(1u);
  }
}

void sub_100098E3C(uint64_t a1)
{
  sub_100098D5C(a1);
  if ((v3 & 1) == 0 && *&v1 != v2)
  {

    sub_10009CDE8(v1, *&v1, v2);
  }
}

uint64_t sub_100098E84(uint64_t a1, double a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for PushPayload();
  v6 = sub_1000774D8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v35[-v19];
  __chkstk_darwin(v18);
  v22 = &v35[-v21];
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  v41 = v13[1];
  v41(v20, v12);
  LODWORD(v20) = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  v40 = v13[2];
  v40(v17, v22, v12);
  v23 = v2 + v20;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (sub_100053DE8(v25))
  {
    v26 = swift_slowAlloc();
    v38 = v5;
    v27 = v26;
    v37 = sub_100053F60();
    v43 = v37;
    *v27 = 134218242;
    *(v27 + 4) = a2;
    *(v27 + 12) = 2080;
    sub_10009D618(&qword_1006CABD0, &type metadata accessor for Date);
    v36 = v23;
    dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v3;
    v28 = v17;
    v29 = v41;
    v41(v28, v12);
    v30 = sub_100052F7C();

    *(v27 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v24, v36, "Scheduling operation from push in %f at %s", v27, 0x16u);
    sub_100044850(v37);
    sub_1000488AC();
    v5 = v38;
    sub_1000488AC();
  }

  else
  {

    v31 = v17;
    v29 = v41;
    v41(v31, v12);
  }

  sub_100046ECC(v42, v11);
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v32 = *(v5 + 52);
  sub_100076FB8(v11 + v32, &qword_1006CA2B0);
  v40((v11 + v32), v22, v12);
  sub_1000485F8(v11 + v32, 0, 1, v12);
  sub_100045690(v11);
  sub_100099210(v11, a2);
  v29(v22, v12);
  sub_10009D660();
  return sub_10009D3B4(v11, v33);
}

uint64_t sub_100099210(uint64_t a1, double a2)
{
  v5 = type metadata accessor for PushPayload();
  v6 = sub_1000474C0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v11 = sub_1000443DC(&qword_1006C9E20);
  v12 = sub_100077674(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10004EAF4();
  v17 = v16 - v15;
  v18 = type metadata accessor for TaskPriority();
  sub_1000485F8(v17, 1, 1, v18);
  sub_100046ECC(a1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10009D618(&qword_1006CB9C0, type metadata accessor for PushDispatchManager);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = v19;
  *(v21 + 32) = a2;
  *(v21 + 40) = v2;
  sub_100047140(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  swift_retain_n();
  v22 = sub_1000B078C();
  v23 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  sub_10006A88C();
  v24 = *(*(v2 + v23) + 16);
  sub_10006A918(v24);
  v25 = *(v2 + v23);
  *(v25 + 16) = v24 + 1;
  *(v25 + 8 * v24 + 32) = v22;
  *(v2 + v23) = v25;
  return swift_endAccess();
}

uint64_t sub_100099428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10009944C, a5, 0);
}

uint64_t sub_10009944C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v5 = v4;
  v6 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v7 = swift_task_alloc();
  *(v1 + 40) = v7;
  *v7 = v1;
  sub_100077560(v7);
  a1 = v5;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100099528()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v7;
    v11[1] = sub_100099684;
    v12 = v3[3];
    sub_100097E58(v3[4]);

    return sub_100099768();
  }
}

uint64_t sub_100099684()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

uint64_t sub_100099768()
{
  sub_1000657D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PushPayload();
  sub_100077674(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_100065948();
  v6 = sub_1000773A4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000997E0()
{
  sub_10006ECA0();
  v1 = v0[3];
  sub_100046ECC(v0[2], v0[4]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = sub_100053F78();
    v13 = sub_100053F60();
    *v6 = 136315138;
    sub_1000A1C3C(v13);
    sub_10009D660();
    sub_10009D3B4(v5, v7);
    v8 = sub_100052F7C();

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Peforming delayed operation with command: %s", v6, 0xCu);
    sub_100044850(v13);
    sub_1000488AC();
    sub_10007756C();
  }

  else
  {

    sub_10009D660();
    sub_10009D3B4(v5, v9);
  }

  sub_100045EA8(*v0[2]);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_100099974;
  v11 = v0[3];
  sub_100097E58(v0[2]);

  return sub_10009B0AC();
}

uint64_t sub_100099974()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_10006574C();

  return v6();
}

uint64_t sub_100099A70()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v2];

  v3 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + v3);

    v7 = 32;
    do
    {
      v8 = *(v4 + v7);

      sub_1000443DC(&unk_1006CB550);
      Task.cancel()();

      v7 += 8;
      --v5;
    }

    while (v5);

    v9 = *(v0 + v3);
  }

  *(v0 + v3) = _swiftEmptyArrayStorage;
}

uint64_t sub_100099BBC(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = type metadata accessor for ASAnalyticsEvent();
  v9 = sub_1000774D8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10004EAF4();
  v14 = v13 - v12;
  *v14 = v2 & 1;
  *(v14 + 1) = v3 & 1;
  *(v14 + 8) = v4;
  *(v14 + 16) = v5 & 1;
  *(v14 + 24) = v6;
  *(v14 + 32) = v7;
  swift_storeEnumTagMultiPayload();
  v17 = *(a1 + 24);
  sub_100087764(&v17, v16, &qword_1006CAD48);
  sub_1000C4148(v14);
  return sub_10009D3B4(v14, type metadata accessor for ASAnalyticsEvent);
}

uint64_t sub_100099CB8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_100099CD0()
{
  sub_1000657D4();
  v1 = v0[12];
  v0[14] = sub_1000A1D70(*v1);
  v0[15] = v2;
  sub_100098E3C(v1);
  v0[16] = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100099D78;
  v5 = v0[13];
  v6 = sub_100097E58(v0[12]);

  return sub_10009A508(v6);
}

uint64_t sub_100099D78()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 104);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 152) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100099E74()
{
  sub_1000657D4();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (*(v0 + 152))
  {
    *(v0 + 56) = 256;
    *(v0 + 64) = v1;
    *(v0 + 72) = 0;
    *(v0 + 80) = v2;
    *(v0 + 88) = v3;
    sub_100099BBC((v0 + 56));

LABEL_5:
    sub_10006574C();

    return v5();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  sub_100099BBC((v0 + 16));

  if (v1 > 0.0)
  {
    v4 = *(v0 + 104);
    sub_100098E84(*(v0 + 96), *(v0 + 128));
    goto LABEL_5;
  }

  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100099F98;
  v8 = *(v0 + 104);
  sub_100097E58(*(v0 + 96));

  return sub_10009B0AC();
}

uint64_t sub_100099F98()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

uint64_t sub_10009A078()
{
  v1 = sub_1000443DC(&qword_1006C9E20);
  v2 = sub_100077674(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v7 = v6 - v5;
  v8 = type metadata accessor for PushPayload();
  v9 = sub_1000474C0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;

  sub_1000A1E84(v18, v17);
  v19 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v19);
  sub_100046ECC(v17, v15);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v0;
  sub_100047140(v15, v21 + v20);

  sub_10006F27C(0, 0, v7, &unk_1005CD820, v21);

  sub_10009D660();
  return sub_10009D3B4(v17, v22);
}

uint64_t sub_10009A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100065570;

  return sub_100099CB8(a5);
}

uint64_t sub_10009A508(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_10009A520()
{
  sub_1000657D4();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for PushPayload() + 56));
  v3 = *v2;
  v0[4] = *v2;
  if (v3 == 1)
  {
    sub_10006EBEC();

    return v4(0);
  }

  else
  {
    v0[5] = v2[1];
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_10009A60C;
    v7 = v0[3];

    return sub_10009AA58(v3);
  }
}

uint64_t sub_10009A60C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 56) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009A708()
{
  sub_1000657D4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  sub_10009A774(v3, *(v0 + 40));
  sub_10006EBEC();

  return v4((v5 & 1) == 0);
}

uint64_t sub_10009A774(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  v4 = *(v2 + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider);
  v5 = sub_10007BFD4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v33[0] = v5;
    v33[1] = v6;
    __chkstk_darwin(v5);
    v32[2] = v33;
    if (sub_100098534(sub_1000591F4, v32, a2))
    {

LABEL_5:
      v9 = 1;
      return v9 & 1;
    }

    v32[5] = v7;
    v15 = sub_10007C150();
    v16 = v15[2];
    if (v16)
    {
      v32[6] = v8;
      v33[0] = _swiftEmptyArrayStorage;
      sub_1000BDEA4(0, v16, 0);
      v17 = v33[0];
      v32[4] = v15;
      v18 = v15 + 5;
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        v33[0] = v17;
        v22 = v17[2];
        v21 = v17[3];

        if (v22 >= v21 >> 1)
        {
          sub_1000BDEA4((v21 > 1), v22 + 1, 1);
          v17 = v33[0];
        }

        v17[2] = (v22 + 1);
        v23 = &v17[2 * v22];
        v23[4] = v19;
        v23[5] = v20;
        v18 += 6;
        --v16;
      }

      while (v16);
    }

    else
    {

      v17 = _swiftEmptyArrayStorage;
    }

    v24 = sub_10009D890(v17);
    v25 = sub_10009CE8C(a2, v24);

    if (v25)
    {

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = sub_100053F78();
        v29 = sub_100053F60();
        v33[0] = v29;
        *v28 = 136315138;
        v30 = sub_100052F7C();

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Push filtered - Current region (%s) not in areas.", v28, 0xCu);
        sub_100044850(v29);
        sub_1000488AC();
        sub_1000488AC();
      }

      else
      {
      }
    }

    else
    {
    }

    v9 = v25 ^ 1;
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_100053DE8(v11))
    {
      v12 = sub_1000541D8();
      sub_100077908(v12);
      sub_10009D77C(&_mh_execute_header, v13, v14, "Push filtered - No current region found.");
      sub_100053E64();
    }

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10009AA58(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_10009AA70()
{
  sub_10006ECA0();
  v1 = v0[6];
  if (v1)
  {
    v0[2] = 0x64756F6C4369;
    v0[3] = 0xE600000000000000;
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_100098534(sub_100058E30, v2, v1);
    v0[8] = 0;

    if (v3)
    {
      v4 = *(v0[7] + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider);
      v5 = swift_task_alloc();
      v0[9] = v5;
      *v5 = v0;
      sub_100077560(v5);

      return sub_10007BCA0();
    }

    v7 = v0[8];
    v8 = v0[6];
    v0[4] = 0x73656E755469;
    v0[5] = 0xE600000000000000;
    *(swift_task_alloc() + 16) = v0 + 4;
    LOBYTE(v8) = sub_10009D6F4();

    if (v8)
    {
      v9 = *(v0[7] + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider);
      v10 = swift_task_alloc();
      v0[10] = v10;
      *v10 = v0;
      sub_10009D6B4(v10);

      return sub_10007BE70();
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (sub_100077680(v12))
    {
      v13 = sub_1000541D8();
      sub_100077640(v13);
      sub_1000773B4(&_mh_execute_header, v14, v15, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }
  }

  sub_10006EBEC();

  return v16();
}

uint64_t sub_10009ACB0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 72);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009ADAC()
{
  sub_100068324();
  if (*(v0 + 88))
  {
    goto LABEL_9;
  }

  *(v0 + 32) = 0x73656E755469;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 40) = 0xE600000000000000;
  *(swift_task_alloc() + 16) = v0 + 32;
  LOBYTE(v2) = sub_10009D6F4();

  if ((v2 & 1) == 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (sub_100077680(v8))
    {
      v9 = sub_1000541D8();
      sub_100077640(v9);
      sub_1000773B4(&_mh_execute_header, v10, v11, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }

LABEL_9:
    sub_10006EBEC();
    sub_10006ED0C();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(*(v0 + 56) + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  sub_10009D6B4(v4);
  sub_10006ED0C();

  return sub_10007BE70();
}

uint64_t sub_10009AF00()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 89) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009AFFC()
{
  sub_1000657EC();
  v1 = *(v0 + 89);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 56) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (sub_100077680(v4))
    {
      v5 = sub_1000541D8();
      sub_100077640(v5);
      sub_1000773B4(&_mh_execute_header, v6, v7, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }
  }

  sub_10006EBEC();

  return v8(v1);
}

uint64_t sub_10009B0AC()
{
  sub_1000657D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PushPayload();
  sub_100077674(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_100065948();
  v6 = sub_1000773A4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10009B124()
{
  sub_10006ECA0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[5] = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  sub_100046ECC(v3, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = sub_10009D6D8(v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = sub_100053F78();
    v9 = sub_100053F60();
    *v8 = 136315138;
    v10 = v0[4];
    if (*(v7 + 24))
    {
      v11 = *(v10 + 16);
      v12 = *(v7 + 24);
    }

    sub_10009D660();
    sub_10009D3B4(v10, v14);
    v15 = sub_100052F7C();

    *(v8 + 4) = v15;
    sub_100077394();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_100044850(v9);
    sub_10007756C();
    sub_100053E64();
  }

  else
  {

    sub_10009D660();
    sub_10009D3B4(v7, v13);
  }

  v21 = swift_task_alloc();
  v0[6] = v21;
  *v21 = v0;
  v21[1] = sub_10009B2B4;
  v22 = v0[3];
  v23 = sub_100097E58(v0[2]);

  return sub_10009A508(v23);
}

uint64_t sub_10009B2B4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 64) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009B3B0()
{
  sub_1000657EC();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 24) + *(v0 + 40);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v3))
    {
      v4 = sub_1000541D8();
      sub_100077908(v4);
      sub_100077394();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_100053E64();
    }

    v10 = *(v0 + 32);

    sub_10006574C();

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 56) = v13;
    *v13 = v0;
    v13[1] = sub_10009B4D0;
    v14 = *(v0 + 24);
    sub_100097E58(*(v0 + 16));

    return sub_10009B5D4();
  }
}

uint64_t sub_10009B4D0()
{
  sub_1000657D4();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = *(v1 + 32);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_10009B5D4()
{
  sub_1000657D4();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_1000443DC(&qword_1006CA4A0);
  sub_100077674(v3);
  v5 = *(v4 + 64);
  v1[13] = sub_100065948();
  v6 = type metadata accessor for PushPayload();
  sub_100077674(v6);
  v8 = *(v7 + 64);
  v1[14] = sub_100065948();
  v9 = type metadata accessor for UUID();
  v1[15] = v9;
  sub_1000474C0(v9);
  v1[16] = v10;
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v13 = sub_1000773A4();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10009B6DC()
{
  v2 = *(v1 + 88);
  switch(*v2)
  {
    case 1:
      v39 = *(v1 + 96);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v41))
      {
        v42 = sub_1000541D8();
        sub_100077908(v42);
        sub_100077394();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        sub_100053E64();
      }

      v48 = *(v1 + 88);

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      *(v1 + 160) = v49;
      if (!v49)
      {
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();
        if (sub_100077680(v52))
        {
          v53 = sub_1000541D8();
          sub_100077640(v53);
          sub_1000773B4(&_mh_execute_header, v54, v55, "Missing notificationId is push payload for fetch");
          sub_10007756C();
        }
      }

      sub_1000446C4(*(v1 + 96) + 112, v1 + 16);
      v56 = sub_100044728((v1 + 16), *(v1 + 40));
      if (qword_1006C97A8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_68;
    case 2:
      v8 = *(v1 + 96) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v10))
      {
        v11 = sub_1000541D8();
        sub_100077908(v11);
        sub_100077394();
        _os_log_impl(v12, v13, v14, v15, v16, 2u);
        sub_100053E64();
      }

      v18 = *(v1 + 88);
      v17 = *(v1 + 96);

      if (*(v18 + 8))
      {
        v19 = *(v18 + 8);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      if (*(v18 + 80))
      {
        v20 = *(v18 + 80);
      }

      v21 = *(v17 + 152);
      v22 = v19[2];
      if (v22)
      {

        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = (v19 + 4);
        do
        {
          v24 = *v23++;
          Int._bridgeToObjectiveC()();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v25 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v22;
        }

        while (v22);
      }

      else
      {
      }

      sub_10007AF78();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v107 = Array._bridgeToObjectiveC()().super.isa;

      [v21 gCEWuNTdkAWg8Jj5WithStMYeuN4F4F4tdlz:isa workflows:v107];

      goto LABEL_64;
    case 3:
      v26 = *(v1 + 96);
      *(v1 + 176) = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v28))
      {
        v29 = sub_1000541D8();
        sub_100077908(v29);
        sub_100077394();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        sub_100053E64();
      }

      v35 = *(v1 + 96);

      v36 = *sub_100044728((v35 + 160), *(v35 + 184));
      v37 = swift_task_alloc();
      *(v1 + 184) = v37;
      *v37 = v1;
      sub_100077560(v37);
      sub_100097FD0();

      return sub_1000B6A50();
    case 4:
      v3 = *(v2 + 80);
      *(v1 + 200) = v3;
      if (!v3 || !*(v3 + 16))
      {
        v103 = *(v1 + 96) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.fault.getter();
        if (sub_10009D6D8(v105))
        {
LABEL_62:
          v110 = sub_1000541D8();
          sub_100077908(v110);
          sub_100077394();
          _os_log_impl(v111, v112, v113, v114, v115, 2u);
          sub_100053E64();
        }

LABEL_63:

LABEL_64:
        sub_10009D720();

        sub_10006574C();
        sub_100097FD0();

        __asm { BRAA            X1, X16 }
      }

      sub_100097FD0();

      return _swift_task_switch(v4, v5, v6);
    case 5:
      v63 = *(v2 + 88);
      if (!v63)
      {
        goto LABEL_61;
      }

      v64 = 0;
      v65 = *(v63 + 16);
      v119 = *(v1 + 128);
      v120 = (v119 + 32);
      v66 = v63 + 40;
      v56 = _swiftEmptyArrayStorage;
      while (2)
      {
        v67 = (v66 + 16 * v64);
LABEL_35:
        *(v1 + 224) = v56;
        if (v65 == v64)
        {
          v84 = v56[2];
          *(v1 + 232) = v84;
          if (!v84)
          {

LABEL_61:
            v108 = *(v1 + 96) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
            v104 = Logger.logObject.getter();
            v109 = static os_log_type_t.fault.getter();
            if (sub_10009D6D8(v109))
            {
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          v85 = *(v1 + 96) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.info.getter();
          if (sub_10009D6D8(v87))
          {
            v88 = sub_1000541D8();
            sub_100077908(v88);
            sub_100077394();
            _os_log_impl(v89, v90, v91, v92, v93, 2u);
            sub_100053E64();
          }

          if (qword_1006C97E8 != -1)
          {
            swift_once();
          }

          v94 = *(v1 + 88);
          *(v1 + 240) = static RavioliManagerObjC.shared;
          *(v1 + 248) = *(v94 + 16);
          *(v1 + 256) = *(v94 + 24);
          LODWORD(v94) = *(v119 + 80);
          *(v1 + 296) = v94;
          *(v1 + 264) = *(v119 + 72);
          v95 = *(v1 + 120);
          v96 = *(*(v1 + 128) + 16);
          *(v1 + 272) = v96;
          *(v1 + 280) = 0;
          v96(*(v1 + 136), *(v1 + 224) + ((v94 + 32) & ~v94), v95);

          v97 = swift_task_alloc();
          *(v1 + 288) = v97;
          *v97 = v1;
          v97[1] = sub_10009C7F8;
          v98 = *(v1 + 240);
          sub_100097E58(*(v1 + 136));
        }

        else
        {
          if (v64 < *(v63 + 16))
          {
            v68 = *(v1 + 120);
            v69 = *(v1 + 104);
            v71 = *(v67 - 1);
            v70 = *v67;

            UUID.init(uuidString:)();

            if (sub_10009D80C() != 1)
            {
              v72 = *v120;
              (*v120)(*(v1 + 144), *(v1 + 104), *(v1 + 120));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100062F78(0, v56[2] + 1, 1, v56);
                v56 = v77;
              }

              v74 = v56[2];
              v73 = v56[3];
              if (v74 >= v73 >> 1)
              {
                sub_100062F78(v73 > 1, v74 + 1, 1, v56);
                v56 = v78;
              }

              ++v64;
              v75 = *(v1 + 144);
              v76 = *(v1 + 120);
              v56[2] = (v74 + 1);
              v72(v56 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v74, v75, v76);
              v66 = v63 + 40;
              continue;
            }

            sub_100076FB8(*(v1 + 104), &qword_1006CA4A0);
            v67 += 2;
            ++v64;
            goto LABEL_35;
          }

          __break(1u);
LABEL_68:
          swift_once();
LABEL_31:
          v57 = *(v1 + 152);
          v58 = *(v1 + 120);
          v59 = *(v1 + 128);
          v60 = sub_100046E6C(v58, static RavioliConstants.ravioliUUID);
          (*(v59 + 16))(v57, v60, v58);
          v61 = *v56;

          v62 = swift_task_alloc();
          *(v1 + 168) = v62;
          *v62 = v1;
          v62[1] = sub_10009C000;
          sub_100097E58(*(v1 + 152));
        }

        break;
      }

      sub_100097FD0();

      return sub_100088638(v99, v100, v101);
    case 6:
      v79 = *(v1 + 96) + OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = sub_1000541D8();
        sub_100077908(v82);
        _os_log_impl(&_mh_execute_header, v80, v81, "Cancelling delayed push operations", v0, 2u);
        sub_100053E64();
      }

      v83 = *(v1 + 96);

      sub_100099A70();
      goto LABEL_64;
    default:
      [*(*(v1 + 96) + 152) n4tgyMTvvRxjoDTF];
      goto LABEL_64;
  }
}

uint64_t sub_10009C000()
{
  sub_100068324();
  sub_1000657F8();
  v2 = v1[21];
  v3 = v1[19];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[12];
  v1[20];
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;

  (*(v4 + 8))(v3, v5);
  sub_10006ED0C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10009C194()
{
  sub_1000657EC();
  sub_100044850((v0 + 16));
  sub_10009D720();

  sub_10006574C();

  return v1();
}

uint64_t sub_10009C218()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[12];

    return _swift_task_switch(sub_10009C370, v9, 0);
  }

  else
  {
    v11 = v3[18];
    v10 = v3[19];
    v12 = v3[17];
    v15 = v3 + 13;
    v13 = v3[13];
    v14 = v15[1];

    sub_10006574C();

    return v16();
  }
}

uint64_t sub_10009C370()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[12];
  sub_100046ECC(v0[11], v0[14]);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    Error.localizedDescription.getter();
    v12 = sub_100052F7C();

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = *(v7 + 24);
    v14 = v0[14];
    if (v13)
    {
      v15 = *(v14 + 16);
    }

    v19 = v0[24];

    sub_10009D660();
    sub_10009D3B4(v14, v20);
    v21 = sub_100052F7C();

    *(v8 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Config update failed with error (%s for notification %s", v8, 0x16u);
    swift_arrayDestroy();
    sub_1000488AC();
    sub_100053E64();
  }

  else
  {
    v16 = v0[24];
    v17 = v0[14];

    sub_10009D660();
    sub_10009D3B4(v17, v18);
  }

  sub_10009D720();

  sub_10006574C();

  return v22();
}

uint64_t sub_10009C594()
{
  sub_1000657D4();
  v1 = v0[25];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_10009C674;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10009C674()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  return _swift_task_switch(sub_10009C77C, 0, 0);
}

uint64_t sub_10009C77C()
{
  sub_1000657EC();
  sub_10009D720();

  sub_10006574C();

  return v0();
}

uint64_t sub_10009C7F8()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1[36];
  v3 = v1[12];
  v1[32];
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_1000773A4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10009C924()
{
  sub_1000657EC();
  v1 = *(v0 + 232);
  v2 = *(v0 + 280) + 1;
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v2 == v1)
  {
    v3 = *(v0 + 224);

    sub_10009D720();

    sub_10006574C();

    return v4();
  }

  else
  {
    v6 = *(v0 + 272);
    v7 = *(v0 + 280) + 1;
    *(v0 + 280) = v7;
    v8 = *(v0 + 256);
    v9 = *(v0 + 248);
    v10 = *(v0 + 128) + 16;
    v6(*(v0 + 136), *(v0 + 224) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * v7, *(v0 + 120));

    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_10009C7F8;
    v12 = *(v0 + 240);
    v13 = sub_100097E58(*(v0 + 136));

    return sub_100088638(v13, v14, v15);
  }
}

uint64_t sub_10009CAB8()
{
  sub_100044850((v0 + 112));

  sub_100044850((v0 + 160));
  v1 = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  v2 = type metadata accessor for Logger();
  sub_1000774D8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider);

  sub_100044850((v0 + OBJC_IVAR____TtC3asd19PushDispatchManager_analyticsManager));
  v5 = *(v0 + OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009CB60()
{
  sub_10009CAB8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PushDispatchManager()
{
  result = qword_1006CB870;
  if (!qword_1006CB870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009CBE0()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10009CCB0()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_10006EB38(v2);
  *v3 = v4;
  v3[1] = sub_1000640AC;

  return sub_1000DD214();
}

void sub_10009CD54(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  sub_10009D7B8();
  if (!(v7 ^ v8 | v6))
  {
    goto LABEL_8;
  }

  v9 = v5;
  swift_stdlib_random();
  if (((v2 * vcvts_n_f32_u64(0, 0x18uLL)) + a1) == a2)
  {
    sub_10009CD54(v9, a1, a2);
  }
}

uint64_t sub_10009CDE8(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_10009CDE8(v6, a2, a3);
  }

  return result;
}

uint64_t sub_10009CE8C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

void sub_10009CFC4()
{
  sub_10009D7B8();
  if (v1 ^ v2 | v0)
  {
    sub_10009D0A4(16777217);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009D02C(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_10009D12C(0x20000000000001uLL);
  }
}

uint64_t sub_10009D0A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    v2 = -v1 % v1;
    while (v2)
    {
      swift_stdlib_random();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10009D12C(unint64_t result)
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

uint64_t sub_10009D1B8()
{
  v3 = type metadata accessor for PushPayload();
  sub_10009D7D0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 32);

  v11 = *(v1 + v6 + 8);

  v12 = *(v1 + v6 + 24);

  v13 = *(v1 + v6 + 80);

  v14 = *(v1 + v6 + 88);

  v15 = *(v0 + 52);
  v16 = type metadata accessor for Date();
  if (!sub_10009D850(v16))
  {
    (*(*(v2 - 8) + 8))(v1 + v6 + v15, v2);
  }

  sub_10009D828();
  if (!v17)
  {

    v18 = *(v0 + 8);
  }

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_10009D2E0()
{
  sub_100068324();
  v1 = type metadata accessor for PushPayload();
  sub_100077674(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_10006EB38(v7);
  *v8 = v9;
  v10 = sub_10009D79C(v8);

  return sub_10009A46C(v10, v11, v12, v6, v13);
}

uint64_t sub_10009D3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000774D8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10009D40C()
{
  v3 = type metadata accessor for PushPayload();
  sub_10009D7D0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 40);

  v11 = *(v1 + v6 + 8);

  v12 = *(v1 + v6 + 24);

  v13 = *(v1 + v6 + 80);

  v14 = *(v1 + v6 + 88);

  v15 = *(v0 + 52);
  v16 = type metadata accessor for Date();
  if (!sub_10009D850(v16))
  {
    (*(*(v2 - 8) + 8))(v1 + v6 + v15, v2);
  }

  sub_10009D828();
  if (!v17)
  {

    v18 = *(v0 + 8);
  }

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_10009D534()
{
  sub_10006ECA0();
  v1 = type metadata accessor for PushPayload();
  sub_100077674(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = *(v0 + 5);
  v8 = swift_task_alloc();
  v9 = sub_10006EB38(v8);
  *v9 = v10;
  v11 = sub_10009D79C(v9);

  return sub_100099428(v6, v11, v12, v13, v7, v14);
}

uint64_t sub_10009D618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009D684(uint64_t a1)
{
  *(a1 + 8) = sub_100098A94;
  v2 = *(v1 + 16);
  return *(v1 + 80);
}

BOOL sub_10009D6D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10009D6F4()
{

  return sub_100098534(sub_1000591F4, v1, v0);
}

uint64_t sub_10009D720()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
}

uint64_t sub_10009D73C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[10];
  result = v0[7];
  v6 = v0[4];
  v7 = v0[14] + 1;
  return result;
}

uint64_t sub_10009D75C()
{
  *(v1 + 120) = *(v2 + 8);
  *(v1 + 128) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void sub_10009D77C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10009D7E8@<X0>(uint64_t a1@<X8>)
{

  return sub_100046ECC(v3 + ((v2 + 32) & ~v2) + v1 * a1, v4);
}

uint64_t sub_10009D80C()
{

  return sub_100046EA4(v1, 1, v0);
}

uint64_t sub_10009D850(uint64_t a1)
{

  return sub_100046EA4(v1 + v2, 1, a1);
}

uint64_t sub_10009D870()
{
  v5 = v1 + *(v3 + 52);

  return sub_100087764(v5, v2, v0);
}

uint64_t sub_10009D890(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_10009F28C(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009D950()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB9C8);
  sub_100046E6C(v0, qword_1006CB9C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10009D9F8()
{
  sub_1000657D4();
  v1 = *(v0 + 16);
  sub_10009DA50();
  sub_10006574C();

  return v2();
}

uint64_t sub_10009DA50()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;
  v3 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1000A1950;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000C1C04;
  v8[3] = &unk_100693C10;
  v4 = _Block_copy(v8);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  v6 = *(v0 + 200);
  *(v0 + 200) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_10009DBAC()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    sub_1000485F8(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_10006F27C(0, 0, v3, &unk_1005CD8F8, v7);
  }

  return result;
}

uint64_t sub_10009DCA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009DD34;

  return sub_10009DE20();
}

uint64_t sub_10009DD34()
{
  sub_1000657D4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_10006574C();

  return v2();
}

uint64_t sub_10009DE20()
{
  sub_1000657D4();
  v1[3] = v0;
  v2 = type metadata accessor for ASAnalyticsEvent();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10009DEB0, v0, 0);
}

uint64_t sub_10009DEB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_1000A1A4C(&qword_1006CBAF0, a2, type metadata accessor for PushCloudChannelsManager);
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  v7 = sub_1000443DC(&qword_1006CBAF8);
  *v6 = v2;
  v6[1] = sub_10009DFD4;
  v8 = *(v2 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 16, v3, v4, 0xD000000000000010, 0x80000001005A4F90, sub_1000A1654, v8, v7);
}

uint64_t sub_10009DFD4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10009E784;
  }

  else
  {
    v6 = sub_10009E100;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10009E100()
{
  v2 = *(v0 + 16);
  v3 = sub_1000591F0(v2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v72 = v2;
  v70 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v8 = *(v72 + 8 * v4 + 32);
    }

    v1 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      sub_1000A1C10();
      goto LABEL_45;
    }

    v10 = sub_1000A16E0(v8);
    v12 = v11;

    ++v4;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = v7[2];
        sub_100087968();
        sub_100062EB0();
        v7 = v16;
      }

      v1 = v7[2];
      v13 = v7[3];
      if (v1 >= v13 >> 1)
      {
        sub_1000A1C30(v13);
        sub_100062EB0();
        v7 = v17;
      }

      v7[2] = (v1 + 1);
      v14 = &v7[2 * v1];
      v14[4] = v10;
      v14[5] = v12;
      v4 = v9;
    }
  }

  v71 = v5;
  v67 = v0;
  v18 = *(v0 + 24);
  v19 = sub_10009D890(v7);
  v20 = sub_10009EC84();
  v21 = sub_10009D890(v20);

  v22 = sub_10009EC30(v19, v21);
  v23 = v22 + 7;
  v24 = -1;
  v25 = -1 << *(v22 + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & v22[7];
  v27 = (63 - v25) >> 6;
  v69 = v22;

  v1 = 0;
  v68 = _swiftEmptyArrayStorage;
  while (v26)
  {
LABEL_22:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = (v69[6] + ((v1 << 10) | (16 * v29)));
    v31 = *v30;
    v32 = v30[1];
    objc_allocWithZone(PKPublicChannel);

    if (sub_10009F1C4(v31, v32))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
      {
        sub_1000A1C30(v33);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = _swiftEmptyArrayStorage;
    }
  }

  while (1)
  {
    v28 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = v23[v28];
    ++v1;
    if (v26)
    {
      v1 = v28;
      goto LABEL_22;
    }
  }

  v1 = 0;
LABEL_27:
  while (v1 != v3)
  {
    if (v71)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v6 + 16))
      {
        goto LABEL_61;
      }

      v34 = *(v70 + 8 * v1);
    }

    v35 = v34;
    if (__OFADD__(v1++, 1))
    {
      goto LABEL_60;
    }

    result = sub_1000A16E0(v34);
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v39 = v38;
    if (*(v21 + 16))
    {
      v40 = result;
      v41 = *(v21 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v42 = Hasher._finalize()();
      v43 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v44 = v42 & v43;
        if (((*(v21 + 56 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {
          break;
        }

        v45 = (*(v21 + 48) + 16 * v44);
        if (*v45 != v40 || v39 != v45[1])
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v42 = v44 + 1;
          if ((v47 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v48 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v1 = _swiftEmptyArrayStorage;
  if (qword_1006C97F0 != -1)
  {
    goto LABEL_62;
  }

LABEL_45:
  v49 = type metadata accessor for Logger();
  sub_100046E6C(v49, qword_1006CB9C8);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v73 = v1;
    v52 = swift_slowAlloc();
    swift_slowAlloc();
    *v52 = 136315394;
    Set.description.getter();

    v53 = sub_100052F7C();

    *(v52 + 4) = v53;
    *(v52 + 12) = 2080;
    Set.description.getter();

    v54 = sub_100052F7C();

    *(v52 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v50, v51, "Initial channels: %s, required channels: %s", v52, 0x16u);
    swift_arrayDestroy();
    sub_1000488AC();
    v1 = v73;
    sub_1000488AC();
  }

  else
  {
  }

  if (sub_1000591F0(v68))
  {
    v55 = *(v67 + 24);
    v57 = v55[14];
    v56 = v55[15];
    v58 = v55[16];
    v59 = String._bridgeToObjectiveC()();
    sub_1000A165C(v68, v59, v57, &selRef_subscribeToChannels_forTopic_);
  }

  else
  {
  }

  if (sub_1000591F0(v1))
  {
    v60 = *(v67 + 24);
    v62 = v60[14];
    v61 = v60[15];
    v63 = v60[16];
    v64 = String._bridgeToObjectiveC()();
    sub_1000A165C(v1, v64, v62, &selRef_unsubscribeFromChannels_forTopic_);
  }

  else
  {
  }

  v65 = *(v67 + 40);

  sub_10006574C();

  return v66();
}

uint64_t sub_10009E784()
{
  if (qword_1006C97F0 != -1)
  {
    sub_1000A1C10();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006CB9C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error getting channels: %@", v6, 0xCu);
    sub_1000A1744(v7);
    sub_1000488AC();
    sub_1000488AC();
  }

  v9 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  v13 = 1685025392;
  if (*(v12 + 136))
  {
    v13 = 0x786F62646E6173;
  }

  v14 = 0xE400000000000000;
  if (*(v12 + 136))
  {
    v14 = 0xE700000000000000;
  }

  *v10 = 0;
  *(v10 + 8) = 11;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v10);

  sub_10007700C(v10);
  v15 = v0[5];

  sub_10006574C();

  return v16();
}

void sub_10009E958(uint64_t a1, void *a2)
{
  v4 = sub_1000443DC(&qword_1006CBB18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = a2[14];
  v7 = a2[15];
  v9 = a2[16];
  v10 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000A187C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB9C;
  aBlock[3] = &unk_100693BC0;
  v13 = _Block_copy(aBlock);

  [v8 getRegisteredChannelsForTopic:v10 withCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_10009EB18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000443DC(&qword_1006CBB18);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1000443DC(&qword_1006CBB18);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10009EB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000A17A4();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void *sub_10009EC30(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1000A08E8(a1);
    return a2;
  }

  else
  {

    return sub_1000A0A14(a1, a2);
  }
}

id *sub_10009EC84()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CA628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  *(inited + 32) = 0;
  v3 = *(v0 + 144);
  if (sub_10007C674())
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  sub_1000630A4();
  v6 = v5;
  *(v5 + 16) = 2;
  *(v5 + 33) = v4;
  if (os_variant_allows_internal_security_policies())
  {
    inited = *(v6 + 16);
    v7 = *(v6 + 24);
    v8 = (inited + 1);
    if (inited >= v7 >> 1)
    {
LABEL_48:
      sub_1000A1C30(v7);
      sub_1000630A4();
      v6 = v45;
    }

    *(v6 + 16) = v8;
    *(v6 + inited + 32) = 2;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  sub_10004F3EC(v9, v10, v11, v12, v13, v14, v15, v16, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v18 = v17;

  if (v18)
  {
    inited = *(v6 + 16);
    v19 = *(v6 + 24);
    if (inited >= v19 >> 1)
    {
      sub_1000A1C30(v19);
      sub_1000630A4();
      v6 = v46;
    }

    *(v6 + 16) = inited + 1;
    *(v6 + inited + 32) = 1;
  }

  v8 = sub_10007C150();
  v20 = 0;
  v21 = v8[2];
  v56 = v6;
  v57 = _swiftEmptyArrayStorage;
LABEL_12:
  v7 = &v8[6 * v20 + 7];
  while (v21 != v20)
  {
    if (v20 >= v8[2])
    {
      __break(1u);
      goto LABEL_48;
    }

    ++v20;
    v22 = v7 + 48;
    if (!*(v1 + 136))
    {
      v7 += 16;
    }

    v23 = *v7;
    v7 = v22;
    if (v23)
    {
      if (*(v1 + 136))
      {
        v24 = -56;
      }

      else
      {
        v24 = -40;
      }

      v25 = *(v22 + v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = v57[2];
        sub_100087968();
        sub_100062EB0();
        v57 = v29;
      }

      inited = v57[2];
      v26 = v57[3];
      if (inited >= v26 >> 1)
      {
        sub_1000A1C30(v26);
        sub_100062EB0();
        v57 = v30;
      }

      v57[2] = (inited + 1);
      v27 = &v57[2 * inited];
      v27[4] = v25;
      v27[5] = v23;
      v6 = v56;
      goto LABEL_12;
    }
  }

  v31 = *(v6 + 16);
  if (v31)
  {
    v32 = (v6 + 32);
    v33 = _swiftEmptyArrayStorage;
    v34 = *(v1 + 136);
    do
    {
      v36 = *v32++;
      v35 = v36;
      if (v34)
      {
        v37 = "Tk9WMTRAZGJHci1Ia1hsQw==";
        switch(v35)
        {
          case 1:
            v37 = "Tk9WMTRAaWNaUS1ScGRYag==";
            break;
          case 2:
            v37 = "Tk9WMDZAZVJFVi1XWG5NTA==";
            break;
          case 3:
            v37 = "Tk9WMTRAeGtQQi1nbFNaSA==";
            break;
          case 4:
            v37 = "updateObservationToken";
            break;
          default:
            break;
        }
      }

      else
      {
        v37 = "TUFSMDZAcEZyQi1DaGVrZQ==";
        switch(v35)
        {
          case 1:
            v37 = "TUFSMDZfTkJjWS1TRndDcw==";
            break;
          case 2:
            v37 = "TUFSMDZfbGV2Yy14Vm5FUg==";
            break;
          case 3:
            v37 = "TUFSMDYtVkxSby10YmRwRA==";
            break;
          case 4:
            v37 = "Tk9WMDZAVEhIUy1rU2hCaA==";
            break;
          default:
            break;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = v33[2];
        sub_100087968();
        sub_100062EB0();
        v33 = v42;
      }

      v39 = v33[2];
      v38 = v33[3];
      if (v39 >= v38 >> 1)
      {
        sub_1000A1C30(v38);
        sub_100062EB0();
        v33 = v43;
      }

      v33[2] = (v39 + 1);
      v40 = &v33[2 * v39];
      v40[4] = 0xD000000000000018;
      v40[5] = (v37 | 0x8000000000000000);
      --v31;
    }

    while (v31);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  sub_1000CEEFC(v57);
  return v33;
}

uint64_t sub_10009F10C()
{
  if (*(v0 + 200))
  {
    [*(v0 + 192) removeObserver:?];
  }

  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  sub_100044850((v0 + 152));

  v3 = *(v0 + 200);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009F174()
{
  sub_10009F10C();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10009F1C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

uint64_t sub_10009F228(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1005CD840;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_10009F28C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_10009FC30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_10009F3D8(char *a1, char *a2)
{
  v28 = a1;
  v4 = type metadata accessor for ProfileContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1000A1BF8();
  sub_1000A1A4C(v11, 255, v12);
  v33 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v30 = v9;
  v31 = v9 + 56;
  v14 = ~(-1 << *(v9 + 32));
  v32 = v5 + 16;
  v29 = v5 + 8;
  while (1)
  {
    v15 = v13 & v14;
    v16 = (1 << (v13 & v14)) & *(v31 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      v22 = v27;
      v23 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v33;
      (*(v5 + 16))(v8, v33, v4);
      v34 = *v22;
      sub_10009FD98(v8, v15, isUniquelyReferenced_nonNull_native);
      *v22 = v34;
      (*(v5 + 32))(v28, v25, v4);
      return v16 == 0;
    }

    v17 = *(v5 + 72) * v15;
    v18 = *(v5 + 16);
    v18(v8, *(v30 + 48) + v17, v4);
    sub_1000A1BF8();
    sub_1000A1A4C(&qword_1006CA900, 255, v19);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v5 + 8);
    v21(v8, v4);
    if (v20)
    {
      break;
    }

    v13 = v15 + 1;
  }

  v21(v33, v4);
  v18(v28, *(v30 + 48) + v17, v4);
  return v16 == 0;
}

uint64_t sub_10009F688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_10009F228(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10009F8DC(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ProfileContext();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000443DC(&qword_1006CBB20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_10009F228(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_10009FC30(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10009F688(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000A03A8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000A002C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10009FD98(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for ProfileContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10009F8DC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1000A05D4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1000A1A4C(&qword_1006CA900, 255, &type metadata accessor for ProfileContext);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000A017C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_1000A002C()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CBB10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000A017C()
{
  v1 = v0;
  v2 = type metadata accessor for ProfileContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000443DC(&qword_1006CBB20);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1000A03A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000A05D4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ProfileContext();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000443DC(&qword_1006CBB20);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1000A08E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000A0EEC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000A0A14(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1000A1288(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_1000A1200(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1000A17E8();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_1000A0EEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000A002C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1000A149C(v9);
  *v2 = v19;
  return v16;
}

unint64_t *sub_1000A1014(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1000A1288(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1000A1200(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1000A1014(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1000A1288(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1000A149C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1000A165C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  sub_1000A17A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 *a4];
}

uint64_t sub_1000A16E0(void *a1)
{
  v1 = [a1 channelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A1744(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CBB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A17A4()
{
  result = qword_1006CBB08;
  if (!qword_1006CBB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CBB08);
  }

  return result;
}

uint64_t sub_1000A17F0()
{
  v1 = sub_1000443DC(&qword_1006CBB18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A187C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000443DC(&qword_1006CBB18) - 8) + 80);

  return sub_10009EB18(a1, a2);
}

uint64_t sub_1000A1900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A1918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1958()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A1998()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009DD34;

  return sub_10009DCA4();
}

uint64_t sub_1000A1A4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Channel(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000A1B60);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A1B9C()
{
  result = qword_1006CBB28;
  if (!qword_1006CBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBB28);
  }

  return result;
}

uint64_t sub_1000A1C10()
{

  return swift_once();
}

unint64_t sub_1000A1D70(char a1)
{
  result = 25202;
  switch(a1)
  {
    case 1:
      result = 0x6464416863746566;
      break;
    case 2:
      result = 0x6361437261656C63;
      break;
    case 3:
      result = 0x6E6F436863746566;
      break;
    case 4:
      result = 0x6F72506863746566;
      break;
    case 5:
      result = 0x7265536863746566;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PushPayload();
  v5 = *(v4 + 52);
  v6 = type metadata accessor for Date();
  sub_1000485F8(a2 + v5, 1, 1, v6);
  if (!*(a1 + 16))
  {

    sub_1000A26CC();
    sub_10005BCDC();
    v19 = 3;
LABEL_31:
    *v18 = v19;
    swift_willThrow();
    return sub_10004D2E8(a2 + v5, &qword_1006CA2B0);
  }

  strcpy(&v176, "command");
  *(&v176 + 1) = 0xE700000000000000;
  v7 = sub_1000A5AE0();
  sub_1000A59A4(v7, v8, v9, v10, v11, v12, v13, v14, v125, v135, v4, v154, v164, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    v15 = sub_1000A5B28();
    v16 = v155;
    if (!v15)
    {
      v16 = 0;
    }

    v178 = v16;
    if (v15)
    {
      v17 = v165;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v178 = 0;
    v17 = 0;
  }

  *&v176 = 0x6163696669746F6ELL;
  *(&v176 + 1) = 0xEF64695F6E6F6974;
  v20 = sub_1000A5AE0();
  sub_1000A59A4(v20, v21, v22, v23, v24, v25, v26, v27, v126, v136, v145, v155, v165, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    v28 = sub_1000A5B28();
    v29 = v156;
    if (!v28)
    {
      v29 = 0;
    }

    v137 = v29;
    if (v28)
    {
      v30 = v166;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v137 = 0;
    v30 = 0;
  }

  *&v176 = 0xD000000000000014;
  *(&v176 + 1) = 0x80000001005A4FF0;
  v31 = sub_1000A5AE0();
  sub_1000A59A4(v31, v32, v33, v34, v35, v36, v37, v38, v127, v137, v146, v156, v166, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    v39 = swift_dynamicCast();
    if (v39)
    {
      v40 = v157;
    }

    else
    {
      v40 = 0;
    }

    v41 = v39 ^ 1;
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v40 = 0;
    v41 = 1;
  }

  v42 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v42, v43, v44, v45, v46, v47, v48, v49, v128, v138, v147, 0x6E6F6973726576, 0xE700000000000000, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (!v177)
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    if (v17)
    {
      goto LABEL_29;
    }

LABEL_30:

    sub_1000A26CC();
    sub_10005BCDC();
    v19 = 2;
    goto LABEL_31;
  }

  v50 = sub_1000A5984();
  if (!v17)
  {
    goto LABEL_30;
  }

  if ((v50 & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v179._countAndFlagsBits = v178;
  v179._object = v17;
  v51 = sub_1000A2E24(v179);
  if (v51 == 7)
  {

    sub_1000A26CC();
    sub_10005BCDC();
    v19 = 0;
    goto LABEL_31;
  }

  if (v158 != 1)
  {

    sub_1000A26CC();
    sub_10005BCDC();
    v19 = 1;
    goto LABEL_31;
  }

  *a2 = v51;
  *(a2 + 16) = v139;
  *(a2 + 24) = v30;
  if (v40 < 0)
  {
    v53 = 1;
  }

  else
  {
    v53 = v41;
  }

  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v40;
  }

  *(a2 + 32) = v54;
  *(a2 + 40) = v53;
  v55 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v55, v56, v57, v58, v59, v60, v61, v62, a2, v139, v148, 0xD000000000000013, 0x80000001005A5010, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    if (sub_1000A5984())
    {
      v63 = v159;
      if (v159 > 0)
      {
        v64 = 0;
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
  }

  v63 = 0;
  v64 = 1;
LABEL_46:
  *(a2 + 64) = v63;
  *(a2 + 72) = v64;
  *&v176 = 0x7364697575;
  *(&v176 + 1) = 0xE500000000000000;
  v65 = sub_1000A5AE0();
  sub_1000A59A4(v65, v66, v67, v68, v69, v70, v71, v72, v129, v140, v149, v159, v167, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    sub_1000443DC(&qword_1006CA018);
    sub_1000A5984();
    sub_1000A5A94();
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v73 = 0;
  }

  *(a2 + 88) = v73;
  *&v176 = 0xD000000000000016;
  *(&v176 + 1) = 0x80000001005A5030;
  v74 = sub_1000A5AE0();
  sub_1000A59A4(v74, v75, v76, v77, v78, v79, v80, v81, v130, v141, v150, v160, v168, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    sub_1000A5984();
    sub_1000A5A94();
    v84 = v83 ^ 1;
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v82 = 0;
    v84 = 1;
  }

  *(a2 + 48) = v82;
  *(a2 + 56) = v84;
  *(a2 + 96) = 1;
  strcpy(&v176, "workflow_ids");
  BYTE13(v176) = 0;
  HIWORD(v176) = -5120;
  v85 = sub_1000A5AE0();
  sub_1000A59A4(v85, v86, v87, v88, v89, v90, v91, v92, v131, v142, v151, v161, v169, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    sub_1000443DC(&qword_1006CA018);
    sub_1000A5984();
    sub_1000A5A94();
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    v93 = 0;
  }

  *(a2 + 80) = v93;
  v94 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v94, v95, v96, v97, v98, v99, v100, v101, v132, v143, v152, 0x737265746C6966, 0xE700000000000000, v171, v172, v173, v174, v175, v176);
  sub_100076E50(&v171);
  if (v177)
  {
    sub_1000443DC(&qword_1006CBB38);
    if (sub_1000A5984())
    {

      v103 = sub_1000A31C0(v102);
      v104 = sub_1000A2720(v103);
      v106 = v105;
      swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }
  }

  else
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
  }

  v106 = 0;
  v104 = 1;
LABEL_60:
  v107 = (v133 + *(v153 + 56));
  *v107 = v104;
  v107[1] = v106;
  strcpy(&v176, "options");
  *(&v176 + 1) = 0xE700000000000000;
  v108 = sub_1000A5AE0();
  sub_1000A59A4(v108, v109, v110, v111, v112, v113, v114, v115, v133, v144, v153, v162, v170, v171, v172, v173, v174, v175, v176);

  sub_100076E50(&v171);
  if (!v177)
  {
    sub_10004D2E8(&v176, &qword_1006CA130);
    goto LABEL_64;
  }

  sub_1000443DC(&qword_1006CA018);
  if ((sub_1000A5984() & 1) == 0)
  {
LABEL_64:
    v116 = &_swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v116 = v163;
LABEL_65:
  v117 = v134;
  v118 = v116[2];
  if (v118)
  {
    v171 = &_swiftEmptyArrayStorage;
    sub_1000BDE2C(0, v118, 0);
    v119 = v171;
    v178 = v116;
    v120 = v116 + 5;
    do
    {
      if (*(v120 - 1) == 6383472 && *v120 == 0xE300000000000000)
      {
        v122 = 1;
      }

      else
      {
        v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v171 = v119;
      v124 = v119[2];
      v123 = v119[3];
      if (v124 >= v123 >> 1)
      {
        sub_1000BDE2C(v123 > 1, v124 + 1, 1);
        v119 = v171;
      }

      v119[2] = v124 + 1;
      *(v119 + v124 + 32) = v122 & 1;
      v120 += 2;
      --v118;
    }

    while (v118);

    v117 = v134;
  }

  else
  {

    v119 = &_swiftEmptyArrayStorage;
  }

  *(v117 + 8) = v119;
  return result;
}

uint64_t type metadata accessor for PushPayload()
{
  result = qword_1006CBBA0;
  if (!qword_1006CBBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A26CC()
{
  result = qword_1006CBB30;
  if (!qword_1006CBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBB30);
  }

  return result;
}

uint64_t sub_1000A2720(uint64_t a1)
{
  sub_1000A5AA4();
  *&v9 = v3;
  *(&v9 + 1) = v2 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(v8, a1, &v9);
  sub_100076E50(v8);
  if (v10)
  {
    sub_1000443DC(&qword_1006CA018);
    if (sub_1000A5AF8())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v9, &qword_1006CA130);
    v4 = 0;
  }

  AnyHashable.init<A>(_:)();
  sub_10005527C(v8, a1, &v9);

  sub_100076E50(v8);
  if (v10)
  {
    sub_1000443DC(&qword_1006CA018);
    if (sub_1000A5AF8())
    {
      v5 = 0x7361657261;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      if (v5)
      {
        return v4;
      }

      return 1;
    }
  }

  else
  {
    sub_10004D2E8(&v9, &qword_1006CA130);
    if (!v4)
    {
      return 1;
    }
  }

  return v4;
}

uint64_t sub_1000A29F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546E69676F6CLL && a2 == 0xEA00000000007365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361657261 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000A2ABC(char a1)
{
  if (a1)
  {
    return 0x7361657261;
  }

  else
  {
    return 0x7079546E69676F6CLL;
  }
}

uint64_t sub_1000A2AF4(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CBCC0);
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000A53FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000443DC(&qword_1006CA018);
  sub_1000A5A20(&qword_1006CA030);
  sub_10004EB7C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    sub_10004EB7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v11, v3);
}

uint64_t sub_1000A2C84(uint64_t *a1)
{
  v3 = sub_1000443DC(&qword_1006CBCB0);
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = a1[3];
  sub_100044728(a1, v12);
  sub_1000A53FC();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000443DC(&qword_1006CA018);
    sub_1000A59E8(&qword_1006CA020);
    sub_1000A5A44();
    v12 = v14;
    sub_1000A5A44();
    (*(v6 + 8))(v11, v3);
  }

  sub_100044850(a1);
  return v12;
}

unint64_t sub_1000A2E24(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100691178, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A2E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A29F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A2EA0(uint64_t a1)
{
  v2 = sub_1000A53FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2EDC(uint64_t a1)
{
  v2 = sub_1000A53FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A2F18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A2C84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000A2F44(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1000A2AF4(a1);
}

unint64_t sub_1000A2F8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A2E24(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000A2FBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000A1D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000A3098(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A30B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3098(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A30E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2678(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000A31C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CBB40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10006B994(*(a1 + 56) + 40 * v11, v41);
    v39 = v14;
    v40 = v13;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v14;
    v27 = v13;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1000534C8(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1000534C8(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v28;
    *(v23 + 16) = v29;
    *(v23 + 32) = v30;
    result = sub_1000534C8(v24, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000A34A0(void *a1)
{
  if (a1[2])
  {
    sub_1000443DC(&qword_1006CBB40);
    sub_1000A5B1C();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  sub_1000A5ABC();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = (v3 + 8);

  v11 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (a1[6] + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000446C4(a1[7] + 40 * v13, v40);
    *&v39 = v16;
    *(&v39 + 1) = v15;
    *&v36[5] = v39;
    v37[0] = v40[0];
    v37[1] = v40[1];
    v38 = v41;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    sub_10007B298(v37, v26);
    sub_1000443DC(&qword_1006CAD30);
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1000534C8(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1000534C8(v36, v26);
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v9[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v9[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v9[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v7 &= v7 - 1;
    *&v9[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v3[6] + 40 * v20;
    *v25 = v29;
    *(v25 + 16) = v30;
    *(v25 + 32) = v31;
    result = sub_1000534C8(v26, (v3[7] + 32 * v20));
    ++v3[2];
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1000A3784(void *a1)
{
  if (a1[2])
  {
    sub_1000443DC(&qword_1006CADA8);
    sub_1000A5B1C();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  sub_1000A5ABC();
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (a1[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a1[7] + v13);
    v27 = *v17;
    v28 = v17[1];

    sub_1000443DC(&qword_1006CAD30);
    swift_dynamicCast();
    sub_10007B298(&v29, v31);
    sub_10007B298(v31, v32);
    sub_10007B298(v32, &v30);
    result = sub_1000BFB60(v16, v15);
    v18 = result;
    if (v19)
    {
      v20 = (v3[6] + 16 * result);
      v21 = v20[1];
      *v20 = v16;
      v20[1] = v15;

      v22 = (v3[7] + 40 * v18);
      sub_100044850(v22);
      result = sub_10007B298(&v30, v22);
      v10 = v11;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_19;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v3[6] + 16 * result);
      *v23 = v16;
      v23[1] = v15;
      result = sub_10007B298(&v30, v3[7] + 40 * result);
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v3[2] = v26;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000A39C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0064496E6F6974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001005A5050 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001005A5070 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001005A5090 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x776F6C666B726F77 && a2 == 0xEB00000000736449;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7364697575 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xED0000656D695464;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_1000A3D30(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x736E6F6974706FLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x776F6C666B726F77;
      break;
    case 7:
      result = 0x7364697575;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x737265746C6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A3EAC(void *a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CBC50);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000A5044();
  sub_10004EB7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = *v3;
  sub_1000A5098();
  sub_1000A59C0();
  sub_1000A59D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v28 = *(v3 + 1);
    sub_1000443DC(&qword_1006CBBB8);
    sub_1000A51E8(&qword_1006CBC68, sub_1000A50EC);
    sub_1000A59C0();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 2);
    v16 = *(v3 + 3);
    sub_1000A596C(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 4);
    v18 = v3[40];
    sub_1000A596C(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 6);
    v20 = v3[56];
    sub_1000A596C(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 8);
    v22 = v3[72];
    sub_1000A596C(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + 10);
    sub_1000443DC(&qword_1006CA018);
    sub_1000A5A20(&qword_1006CA030);
    sub_1000A59C0();
    sub_10004EB7C();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = *(v3 + 11);
    sub_1000A59C0();
    sub_10004EB7C();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v3 + 12);
    sub_1000A59D0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = type metadata accessor for PushPayload();
    v25 = *(v24 + 52);
    type metadata accessor for Date();
    sub_1000A52AC(&unk_1006CABF0);
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = *&v3[*(v24 + 56)];
    sub_1000A5140();
    sub_1000A59C0();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_1000A41F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&qword_1006CBC80);
  v32 = sub_10004EAE0(v9);
  v33 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  sub_10004EAF4();
  v15 = v14 - v13;
  v16 = type metadata accessor for PushPayload();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  sub_10004EAF4();
  v20 = v19 - v18;
  v22 = *(v21 + 52);
  v23 = type metadata accessor for Date();
  sub_1000485F8(v20 + v22, 1, 1, v23);
  v24 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000A5044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000A5A74();
    sub_100044850(a1);

    return sub_10004D2E8(v20 + v22, &qword_1006CA2B0);
  }

  else
  {
    sub_1000A5194();
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v20 = v34;
    sub_1000443DC(&qword_1006CBBB8);
    sub_1000A51E8(&qword_1006CBC90, sub_1000A5258);
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v20 + 8) = v34;
    sub_1000A5954(2);
    *(v20 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v20 + 24) = v25;
    sub_1000A5954(3);
    *(v20 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v20 + 40) = v26 & 1;
    sub_1000A5954(4);
    *(v20 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v20 + 56) = v27 & 1;
    sub_1000A5954(5);
    *(v20 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v20 + 72) = v28 & 1;
    sub_1000443DC(&qword_1006CA018);
    sub_1000A59E8(&qword_1006CA020);
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v20 + 80) = v34;
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v20 + 88) = v34;
    sub_1000A5954(8);
    *(v20 + 96) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v34) = 9;
    sub_1000A52AC(&unk_1006CAC30);
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A52EC(v8, v20 + v22);
    sub_1000A5354();
    sub_1000A5AD4();
    sub_1000A59D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = *(v16 + 56);
    (*(v33 + 8))(v15, v32);
    *(v20 + v29) = v34;
    sub_100046ECC(v20, a2);
    sub_100044850(a1);
    return sub_100046F30(v20);
  }
}

uint64_t sub_1000A4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A39C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A478C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A3D28();
  *a1 = result;
  return result;
}

uint64_t sub_1000A47B4(uint64_t a1)
{
  v2 = sub_1000A5044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A47F0(uint64_t a1)
{
  v2 = sub_1000A5044();

  return CodingKey.debugDescription.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.PushPayloadErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000A4938);
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

uint64_t sub_1000A4984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000443DC(&qword_1006CA2B0);
    v10 = a1 + *(a3 + 52);

    return sub_100046EA4(v10, a2, v9);
  }
}

uint64_t sub_1000A4A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000443DC(&qword_1006CA2B0);
    v8 = v5 + *(a4 + 52);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4AB4()
{
  sub_1000A4C58(319, &qword_1006CBBB0, &qword_1006CBBB8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100063C2C(319, &qword_1006CACB0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100063C2C(319, &qword_1006CBBC0);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100063C2C(319, &qword_1006CBBC8);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1000A4C58(319, &qword_1006CBBD0, &qword_1006CA018);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_1000A4CA4();
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_100063C2C(319, &unk_1006CBBE0);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1000A4C58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000471A4(a3);
    sub_1000A5B1C();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000A4CA4()
{
  if (!qword_1006CBBD8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CBBD8);
    }
  }
}

uint64_t sub_1000A4CFC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000A4D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushPayload.Command(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.Command(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000A4F04);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}