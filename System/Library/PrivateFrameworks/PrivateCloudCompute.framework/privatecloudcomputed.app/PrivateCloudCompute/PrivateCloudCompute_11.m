Swift::Int sub_100102F3C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001028D4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100102FA0()
{
  sub_1001028D4(*v0);
  sub_1001D1880();
}

Swift::Int sub_100102FF4()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001028D4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100103054@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001073D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100103084@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001028D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001030CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001073D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100103100(uint64_t a1)
{
  v2 = sub_10010815C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010313C(uint64_t a1)
{
  v2 = sub_10010815C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100103178@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100107424(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    a2[10] = v11[10];
    a2[11] = v5;
    a2[12] = v12[0];
    *(a2 + 201) = *(v12 + 9);
    v6 = v11[7];
    a2[6] = v11[6];
    a2[7] = v6;
    v7 = v11[9];
    a2[8] = v11[8];
    a2[9] = v7;
    v8 = v11[3];
    a2[2] = v11[2];
    a2[3] = v8;
    v9 = v11[5];
    a2[4] = v11[4];
    a2[5] = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_100103204()
{
  v0 = sub_1001D1810();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D1800();
  v6 = sub_1001D17E0();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10022CC78 = v6;
    unk_10022CC80 = v8;
  }

  return result;
}

uint64_t sub_100103314(_BYTE *a1)
{
  v79 = a1;
  v71 = sub_1001D0E60();
  v74 = *(v71 - 8);
  v2 = *(v74 + 64);
  v4 = __chkstk_darwin(v71, v3);
  v78 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4, v6);
  v75 = &v70[-v7];
  v81 = sub_1001CFA40();
  v8 = *(v81 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v81, v10);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1001CFB10();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = v82[8];
  v16 = __chkstk_darwin(v13, v15);
  v77 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16, v18);
  v76 = &v70[-v20];
  __chkstk_darwin(v19, v21);
  v23 = &v70[-v22];
  v24 = sub_1001D02F0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  v29 = &v70[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1001CF7B0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1001CF7A0();
  v33 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_logger;
  (*(v25 + 104))(v29, enum case for TC2LogCategory.serverDrivenConfiguration(_:), v24);
  sub_1001D08B0();
  v34 = v29;
  v35 = v23;
  (*(v25 + 8))(v34, v24);
  *&v84[0] = 0xD00000000000001ELL;
  *(&v84[0] + 1) = 0x80000001001E5280;
  v36 = v81;
  (*(v8 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v81);
  sub_100011EAC();
  sub_1001CFB00();
  (*(v8 + 8))(v12, v36);
  v37 = v82 + 2;
  v38 = v82[2];
  v80 = v1;
  v38(v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_file, v35, v83);
  v81 = v35;
  v39 = sub_1001CFB30();
  v72 = v38;
  v73 = v37;
  v41 = v40;
  v42 = v74;
  v43 = v39;
  v44 = v71;
  v45 = v80;
  v46 = *(v80 + 16);
  v47 = v75;
  (*(v74 + 16))(v75, v80 + v33, v71);

  sub_100108230(v85);

  (*(v42 + 8))(v47, v44);
  *(&v84[10] + 4) = v85[10];
  *(&v84[11] + 4) = v85[11];
  *(&v84[12] + 4) = v86[0];
  *(&v84[12] + 13) = *(v86 + 9);
  *(&v84[6] + 4) = v85[6];
  *(&v84[7] + 4) = v85[7];
  *(&v84[8] + 4) = v85[8];
  *(&v84[9] + 4) = v85[9];
  *(&v84[2] + 4) = v85[2];
  *(&v84[3] + 4) = v85[3];
  *(&v84[4] + 4) = v85[4];
  *(&v84[5] + 4) = v85[5];
  *(v84 + 4) = v85[0];
  *(&v84[1] + 4) = v85[1];
  v48 = v45 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  v49 = v84[11];
  *(v48 + 164) = v84[10];
  *(v48 + 180) = v49;
  *(v48 + 196) = v84[12];
  *(v48 + 209) = *(&v84[12] + 13);
  v50 = v84[7];
  *(v48 + 100) = v84[6];
  *(v48 + 116) = v50;
  v51 = v84[9];
  *(v48 + 132) = v84[8];
  *(v48 + 148) = v51;
  v52 = v84[3];
  *(v48 + 36) = v84[2];
  *(v48 + 52) = v52;
  v53 = v84[5];
  *(v48 + 68) = v84[4];
  *(v48 + 84) = v53;
  v54 = v84[1];
  *(v48 + 4) = v84[0];
  *v48 = 0;
  *(v48 + 20) = v54;
  v55 = v76;
  v72(v76, v81, v83);
  v56 = sub_1001D0E50();
  v57 = sub_1001D1DD0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = v83;
    v78 = v41;
    v60 = v58;
    v61 = v55;
    v77 = swift_slowAlloc();
    *&v84[0] = v77;
    *v60 = 136315138;
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
    v62 = sub_1001D23A0();
    v64 = v63;
    v75 = v43;
    v65 = v82[1];
    v65(v61, v59);
    v66 = sub_1000954E0(v62, v64, v84);

    *(v60 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v56, v57, "initialized server driven configuration, file=%s", v60, 0xCu);
    sub_100011CF0(v77);

    sub_100011E48(v75, v78);

    v65(v79, v59);
    v65(v81, v59);
  }

  else
  {
    sub_100011E48(v43, v41);

    v67 = v83;
    v68 = v82[1];
    v68(v79, v83);
    v68(v55, v67);
    v68(v81, v67);
  }

  return v80;
}

uint64_t sub_100103CF0(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  return _swift_task_switch(sub_100103D14, 0, 0);
}

uint64_t sub_100103D14()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v5 = *(v1 + 16);
  sub_100106D70();
  sub_1001CF790();
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 464);
  v9 = *(v4 + 24);
  *(v0 + 240) = *(v4 + 8);
  *(v0 + 256) = v9;
  v10 = *(v4 + 56);
  v11 = *(v4 + 88);
  v12 = *(v4 + 40);
  *(v0 + 304) = *(v4 + 72);
  *(v0 + 320) = v11;
  *(v0 + 272) = v12;
  *(v0 + 288) = v10;
  v13 = *(v4 + 120);
  v14 = *(v4 + 152);
  v15 = *(v4 + 104);
  *(v0 + 368) = *(v4 + 136);
  *(v0 + 384) = v14;
  *(v0 + 336) = v15;
  *(v0 + 352) = v13;
  v16 = *(v4 + 184);
  v17 = *(v4 + 200);
  v18 = *(v4 + 168);
  *(v0 + 441) = *(v4 + 209);
  *(v0 + 416) = v16;
  *(v0 + 432) = v17;
  *(v0 + 400) = v18;
  sub_100106DC4(v0 + 240);
  v19 = *(v0 + 32);
  *(v4 + 8) = *(v0 + 16);
  *(v4 + 24) = v19;
  v20 = *(v0 + 80);
  v21 = *(v0 + 96);
  v22 = *(v0 + 64);
  *(v4 + 40) = *(v0 + 48);
  *(v4 + 88) = v21;
  *(v4 + 72) = v20;
  *(v4 + 56) = v22;
  v23 = *(v0 + 144);
  v24 = *(v0 + 160);
  v25 = *(v0 + 128);
  *(v4 + 104) = *(v0 + 112);
  *(v4 + 152) = v24;
  *(v4 + 136) = v23;
  *(v4 + 120) = v25;
  v27 = *(v0 + 192);
  v26 = *(v0 + 208);
  v28 = *(v0 + 217);
  *(v4 + 168) = *(v0 + 176);
  *(v4 + 209) = v28;
  *(v4 + 200) = v26;
  *(v4 + 184) = v27;
  os_unfair_lock_unlock(v4);
  v29 = swift_allocObject();
  *(v0 + 488) = v29;
  v29[2] = v8;
  v29[3] = v7;
  v29[4] = v6;
  sub_100012038(v8, v7);
  v30 = qword_100227960;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = blockingIOQueue;
  v32 = swift_task_alloc();
  *(v0 + 496) = v32;
  v32[2] = v31;
  v32[3] = sub_100106E34;
  v32[4] = v29;
  v33 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v34 = swift_task_alloc();
  *(v0 + 504) = v34;
  *v34 = v0;
  v34[1] = sub_1001040E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v34, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v32, &type metadata for () + 8);
}

uint64_t sub_1001040E4()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1001043B0;
  }

  else
  {
    v5 = *(v2 + 488);
    v6 = *(v2 + 496);

    v4 = sub_100104208;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100104208()
{
  v13 = v0;
  v1 = *(v0 + 480);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 480);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
    v7 = sub_1001D23A0();
    v9 = sub_1000954E0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "wrote persisted server driven configuration, file=%s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001043B0()
{
  v33 = v0;
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];

  v5 = &off_10022C000;

  swift_errorRetain();
  v6 = sub_1001D0E50();
  v7 = sub_1001D1DE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[64];
  v10 = &off_10022C000;
  if (v8)
  {
    v11 = v0[60];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v12 = 136315394;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
    v15 = sub_1001D23A0();
    v17 = sub_1000954E0(v15, v16, &v32);

    *(v12 + 4) = v17;
    v10 = &off_10022C000;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "unable to write persisted server driven configuration, file=%s, error=%@", v12, 0x16u);
    sub_100011F00(v13, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v14);
    v5 = &off_10022C000;
  }

  else
  {
  }

  v19 = v0[60];
  v20 = v5[401];

  v21 = sub_1001D0E50();
  v22 = sub_1001D1DD0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    v26 = v10[402];
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
    v27 = sub_1001D23A0();
    v29 = sub_1000954E0(v27, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "wrote persisted server driven configuration, file=%s", v24, 0xCu);
    sub_100011CF0(v25);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_100104730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v39 - v5;
  v7 = [objc_opt_self() defaultManager];
  sub_1001CFAC0(1);
  v8 = sub_1001D17A0();

  v41[0] = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:v41];

  v10 = v41[0];
  if (v9)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1001081E8(&qword_100227BE0, type metadata accessor for FileAttributeKey);
    v11 = sub_1001D1700();
    v12 = v10;

    if (*(v11 + 16) && (v13 = sub_100006630(NSFileModificationDate), (v14 & 1) != 0))
    {
      sub_100089F9C(*(v11 + 56) + 32 * v13, v41);

      v15 = sub_1001CFD60();
      v16 = swift_dynamicCast();
      v17 = *(v15 - 8);
      v18 = *(v17 + 56);
      v18(v6, v16 ^ 1u, 1, v15);
      if ((*(v17 + 48))(v6, 1, v15) != 1)
      {
        (*(v17 + 32))(a1, v6, v15);
        return (v18)(a1, 0, 1, v15);
      }
    }

    else
    {

      v20 = sub_1001CFD60();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    sub_100011F00(v6, &qword_100227A38, &unk_1001D35F0);

    v21 = sub_1001D0E50();
    v22 = sub_1001D1E00();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136315138;
      sub_1001CFB10();
      sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
      v25 = sub_1001D23A0();
      v27 = sub_1000954E0(v25, v26, v41);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "can not read modificationDate of persisted server driven configuration, file=%s", v23, 0xCu);
      sub_100011CF0(v24);
    }
  }

  else
  {
    v28 = v41[0];
    sub_1001CFA20();

    swift_willThrow();

    swift_errorRetain();
    v21 = sub_1001D0E50();
    v29 = sub_1001D1E00();

    if (!os_log_type_enabled(v21, v29))
    {

      goto LABEL_13;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v41[0] = v33;
    *v30 = 136315394;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL);
    v34 = sub_1001D23A0();
    v36 = sub_1000954E0(v34, v35, v41);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v37;
    *v32 = v37;
    _os_log_impl(&_mh_execute_header, v21, v29, "can not read attributes of persisted server driven configuration, file=%s, error=%@", v30, 0x16u);
    sub_100011F00(v32, &unk_1002301D0, &qword_1001D4F50);
    a1 = v40;

    sub_100011CF0(v33);
  }

LABEL_13:
  v38 = sub_1001CFD60();
  return (*(*(v38 - 8) + 56))(a1, 1, 1, v38);
}

uint64_t sub_100104D84(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v5 = v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
    v6 = *(v5 + 56);

    os_unfair_lock_unlock(v5);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = sub_100006028(a1, a2);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 8 * v7);

          v10 = sub_1001D0E50();
          v11 = sub_1001D1DC0();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v25 = v13;
            *v12 = 136315394;
            *(v12 + 4) = sub_1000954E0(a1, a2, &v25);
            *(v12 + 12) = 2048;
            *(v12 + 14) = v9;
            _os_log_impl(&_mh_execute_header, v10, v11, "totalAttestations for region=%s: %ld (regional)", v12, 0x16u);
            sub_100011CF0(v13);
          }

          return v9;
        }
      }
    }

    v14 = a2;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v9 = *(v15 + 8);
  v16 = *(v15 + 16);
  os_unfair_lock_unlock(v15);

  v17 = sub_1001D0E50();
  v18 = sub_1001D1DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v19 = 136315394;
    if (!a2)
    {
      a1 = 0x29656E6F6E28;
    }

    v20 = sub_1000954E0(a1, v14, &v27);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v25 = v9;
    v26 = v16;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v21 = sub_1001D1820();
    v23 = sub_1000954E0(v21, v22, &v27);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "totalAttestations for region=%s: %s (default)", v19, 0x16u);
    swift_arrayDestroy();
  }

  return v9;
}

uint64_t sub_1001050A8()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "maxCachedAttestations: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105200()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "maxPrefetchedAttestations: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105358()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "liveOnProdSpillover: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_1001054B0()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "prewarmAttestationsValidityInSeconds: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105608()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "maxPrefetchBatches: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

void *sub_100105760()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 112);

  os_unfair_lock_unlock(v1);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;

    sub_100011AC0(&qword_10022CD98, &qword_1001DDE18);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "blockedBundleIds: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001058D4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "maxPrefetchWorkloadCount: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105A2C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "maxPrefetchWorkloadAgeSeconds: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105B84()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "trustedProxyDefaultTotalAttestations: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105CDC()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "trustedProxyMaxPrefetchBatches: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105E34()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "trustedProxyMaxCachedAttestations: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_100105F8C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "trustedProxyMaxPrefetchedAttestations: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_1001060E4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  os_unfair_lock_unlock(v1);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v8 = sub_1001D1820();
    v10 = sub_1000954E0(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "trustedProxyRollout: %s", v6, 0xCu);
    sub_100011CF0(v7);
  }

  return v2;
}

uint64_t sub_10010623C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_logger;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_file;
  v5 = sub_1001CFB10();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_100106DC4(&v0[OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel + 8]);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerDrivenConfiguration()
{
  result = qword_10022CCC8;
  if (!qword_10022CCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100106388()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1001CFB10();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_10010646C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022CD68, &qword_1001DDD38);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

__n128 sub_10010649C(uint64_t a1, uint64_t a2)
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
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1001064E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 217))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10010653C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1001065D8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000130E0;

  return sub_100103CF0(a1, a2);
}

BOOL sub_100106770(uint64_t a1, void *a2, void *a3)
{
  v5 = *v3;
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_100024DC8(a3, v6);

  return sub_1001067D0(a2, v8, v5, v6, v7);
}

BOOL sub_1001067D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51 = a3;
  v7 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v55 = *(v7 - 8);
  v56 = v7;
  isa = v55[8].isa;
  __chkstk_darwin(v7, v9);
  v11 = &v48 - v10;
  v12 = sub_1001D0180();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v16, v20);
  v57 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v22;
  (*(v22 + 16))();
  v23 = v13[13];
  v23(v18, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v12);
  v62 = v12;
  v53 = sub_1001081E8(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v63 = v53;
  v24 = sub_10003B47C(&v60);
  v54 = v13[2];
  v54(v24, v18, v12);
  v25 = sub_1001CFEC0();
  v52 = v13[1];
  v52(v18, v12);
  sub_100011CF0(&v60);
  if ((v25 & 1) == 0)
  {
    v30 = 0;
LABEL_18:
    v41 = v57;
    goto LABEL_19;
  }

  v48 = a4;
  v26 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v49 = v23;
  sub_1001D0350();
  sub_10005956C();
  v27 = v49;
  sub_1001D0210();
  (v55[1].isa)(v11, v56);
  v28 = v61;
  if (v61)
  {
    v29 = v60;
    if (v60 == 0x79786F7270 && v61 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
    {

LABEL_16:
      v30 = 1;
      goto LABEL_17;
    }

    if (v29 == 0x746365726964 && v28 == 0xE600000000000000 || (sub_1001D2470() & 1) != 0)
    {

      v30 = 0;
LABEL_17:
      a4 = v48;
      goto LABEL_18;
    }

    v31 = sub_1001D0E50();
    v32 = sub_1001D1E00();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      LODWORD(v56) = v32;
      v34 = v33;
      v35 = swift_slowAlloc();
      v55 = v31;
      v36 = v35;
      v59 = v35;
      *v34 = 136446210;
      v37 = sub_1000954E0(v29, v28, &v59);

      *(v34 + 4) = v37;
      v27 = v49;
      v38 = v55;
      _os_log_impl(&_mh_execute_header, v55, v56, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v34, 0xCu);
      sub_100011CF0(v36);
    }

    else
    {
    }
  }

  v27(v18, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v12);
  v62 = v12;
  v63 = v53;
  v39 = sub_10003B47C(&v60);
  v54(v39, v18, v12);
  v40 = sub_1001CFEC0();
  v52(v18, v12);
  sub_100011CF0(&v60);
  if (v40)
  {
    goto LABEL_16;
  }

  v43 = sub_1001060E4();
  a4 = v48;
  if (v44)
  {
    v30 = 0;
    v41 = v57;
  }

  else
  {
    v45 = *&v43;
    v46 = v57;
    SystemInfoProtocol.uniqueDeviceIDPercentile.getter(v48, v50);
    v41 = v46;
    v30 = v47 < v45;
  }

LABEL_19:
  (*(v58 + 8))(v41, a4);
  return v30;
}

unint64_t sub_100106D70()
{
  result = qword_10022CD78;
  if (!qword_10022CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CD78);
  }

  return result;
}

uint64_t sub_100106DF4()
{
  sub_100011E48(v0[2], v0[3]);
  v1 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100106E34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1001CFC20();
}

BOOL sub_100106E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v49 = a5;
  v42 = a2;
  v43 = a3;
  v48 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v48, v9);
  v11 = &v40 - v10;
  v12 = sub_1001D0180();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v16, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v23;
  (*(v23 + 16))(v22, a1, a4);
  v47 = v13[13];
  v47(v18, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v12);
  v54 = v12;
  v45 = sub_1001081E8(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v55 = v45;
  v24 = sub_10003B47C(&v52);
  v46 = v13[2];
  v46(v24, v18, v12);
  LOBYTE(a1) = sub_1001CFEC0();
  v44 = v13[1];
  v44(v18, v12);
  sub_100011CF0(&v52);
  if ((a1 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0350();
  sub_10005956C();
  v40 = v22;
  v41 = a4;
  sub_1001D0210();
  (*(v7 + 8))(v11, v48);
  v25 = v53;
  if (!v53)
  {
LABEL_14:
    v47(v18, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v12);
    v54 = v12;
    v55 = v45;
    v33 = sub_10003B47C(&v52);
    v46(v33, v18, v12);
    v34 = sub_1001CFEC0();
    v44(v18, v12);
    sub_100011CF0(&v52);
    if (v34)
    {
      goto LABEL_15;
    }

    v35 = sub_1001060E4();
    v22 = v40;
    a4 = v41;
    if ((v36 & 1) == 0)
    {
      v38 = *&v35;
      sub_100108A1C();
      v27 = v39 < v38;
      goto LABEL_19;
    }

LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  v26 = v52;
  if (v52 == 0x79786F7270 && v53 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
  {

LABEL_15:
    v27 = 1;
    goto LABEL_16;
  }

  if ((v26 != 0x746365726964 || v25 != 0xE600000000000000) && (sub_1001D2470() & 1) == 0)
  {

    v28 = sub_1001D0E50();
    v29 = sub_1001D1E00();

    v30 = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v31 = 136446210;
      v32 = sub_1000954E0(v26, v25, &v51);

      *(v31 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v30, v29, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v31, 0xCu);
      sub_100011CF0(v49);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v27 = 0;
LABEL_16:
  v22 = v40;
  a4 = v41;
LABEL_19:
  (*(v50 + 8))(v22, a4);
  return v27;
}

uint64_t sub_1001073D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CD38;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100107424@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100011AC0(&qword_10022CD80, &qword_1001DDE00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v51 - v9;
  v156 = 1;
  v154 = 1;
  v152 = 1;
  v150 = 1;
  v148 = 1;
  v146 = 1;
  v144 = 1;
  v142 = 1;
  v140 = 1;
  v138 = 1;
  v136 = 1;
  v134 = 1;
  v132 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v71 = a1;
  sub_100024DC8(a1, v11);
  sub_10010815C();
  sub_1001D25E0();
  if (v2)
  {
    v157 = v2;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_4:
    sub_100011CF0(v71);
    v92 = v19;
    v93 = v156;
    *v94 = *v155;
    *&v94[3] = *&v155[3];
    v95 = v18;
    v96 = v154;
    *v97 = *v153;
    *&v97[3] = *&v153[3];
    v98 = v17;
    v99 = v152;
    *&v100[3] = *&v151[3];
    *v100 = *v151;
    v101 = v16;
    v102 = v15;
    v103 = v150;
    *v104 = *v149;
    *&v104[3] = *&v149[3];
    v105 = v14;
    v106 = v148;
    *v107 = *v147;
    *&v107[3] = *&v147[3];
    v108 = v13;
    v109 = v146;
    *&v110[3] = *&v145[3];
    *v110 = *v145;
    v111 = 0;
    v112 = v72;
    v113 = v144;
    *&v114[3] = *&v143[3];
    *v114 = *v143;
    v115 = v77;
    v116 = v142;
    *&v117[3] = *&v141[3];
    *v117 = *v141;
    v118 = v76;
    v119 = v140;
    *&v120[3] = *&v139[3];
    *v120 = *v139;
    v121 = v75;
    v122 = v138;
    *&v123[3] = *&v137[3];
    *v123 = *v137;
    v124 = v74;
    v125 = v136;
    *&v126[3] = *&v135[3];
    *v126 = *v135;
    v127 = v73;
    v128 = v134;
    *&v129[3] = *&v133[3];
    *v129 = *v133;
    v130 = 0;
    v131 = v132;
    return sub_100106DC4(&v92);
  }

  LOBYTE(v92) = 0;
  v70 = sub_1001D2230();
  v156 = v21 & 1;
  LOBYTE(v92) = 1;
  v69 = sub_1001D2230();
  v154 = v22 & 1;
  LOBYTE(v92) = 2;
  v23 = sub_1001D2230();
  v157 = 0;
  v68 = v23;
  v152 = v24 & 1;
  sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
  LOBYTE(v78) = 3;
  sub_100024E0C(&qword_1002283C0);
  v25 = v157;
  sub_1001D2240();
  if (v25)
  {
    v157 = v25;
    (*(v6 + 8))(v10, v5);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = v69;
    v19 = v70;
    v17 = v68;
    goto LABEL_4;
  }

  v16 = v92;
  LOBYTE(v92) = 4;
  v67 = sub_1001D2220();
  v150 = v26 & 1;
  LOBYTE(v92) = 5;
  v66 = sub_1001D2220();
  v148 = v27 & 1;
  LOBYTE(v92) = 6;
  v28 = sub_1001D2230();
  v157 = 0;
  v65 = v28;
  v146 = v29 & 1;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  LOBYTE(v78) = 7;
  sub_1000439E8(&qword_1002287F0);
  v30 = v157;
  sub_1001D2240();
  if (v30)
  {
    v157 = v30;
    (*(v6 + 8))(v10, v5);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v18 = v69;
    v19 = v70;
    v15 = v67;
    v17 = v68;
    v13 = v65;
    v14 = v66;
    goto LABEL_4;
  }

  v63 = v92;
  v64 = v16;
  LOBYTE(v92) = 8;
  v31 = sub_1001D2230();
  v157 = 0;
  v72 = v31;
  v144 = v32 & 1;
  LOBYTE(v92) = 9;
  v77 = sub_1001D2230();
  v157 = 0;
  v142 = v33 & 1;
  LOBYTE(v92) = 10;
  v76 = sub_1001D2230();
  v157 = 0;
  v140 = v34 & 1;
  LOBYTE(v92) = 11;
  v75 = sub_1001D2230();
  v157 = 0;
  v138 = v35 & 1;
  LOBYTE(v92) = 12;
  v74 = sub_1001D2230();
  v157 = 0;
  v136 = v36 & 1;
  LOBYTE(v92) = 13;
  v73 = sub_1001D2230();
  v157 = 0;
  v134 = v37 & 1;
  v91 = 14;
  v38 = sub_1001D2220();
  v157 = 0;
  v39 = v38;
  v41 = v40;
  (*(v6 + 8))(v10, v5);
  v132 = v41 & 1;
  *&v78 = v70;
  v62 = v156;
  BYTE8(v78) = v156;
  *(&v78 + 9) = *v155;
  HIDWORD(v78) = *&v155[3];
  *&v79 = v69;
  v61 = v154;
  BYTE8(v79) = v154;
  *(&v79 + 9) = *v153;
  HIDWORD(v79) = *&v153[3];
  *&v80 = v68;
  v60 = v152;
  BYTE8(v80) = v152;
  HIDWORD(v80) = *&v151[3];
  *(&v80 + 9) = *v151;
  *&v81 = v64;
  *(&v81 + 1) = v67;
  v59 = v150;
  LOBYTE(v82) = v150;
  *(&v82 + 1) = *v149;
  DWORD1(v82) = *&v149[3];
  *(&v82 + 1) = v66;
  v58 = v148;
  LOBYTE(v83) = v148;
  *(&v83 + 1) = *v147;
  DWORD1(v83) = *&v147[3];
  *(&v83 + 1) = v65;
  v57 = v146;
  LOBYTE(v84) = v146;
  DWORD1(v84) = *&v145[3];
  *(&v84 + 1) = *v145;
  *(&v84 + 1) = v63;
  *&v85 = v72;
  v56 = v144;
  BYTE8(v85) = v144;
  HIDWORD(v85) = *&v143[3];
  *(&v85 + 9) = *v143;
  *&v86 = v77;
  v55 = v142;
  BYTE8(v86) = v142;
  HIDWORD(v86) = *&v141[3];
  *(&v86 + 9) = *v141;
  *&v87 = v76;
  v54 = v140;
  BYTE8(v87) = v140;
  HIDWORD(v87) = *&v139[3];
  *(&v87 + 9) = *v139;
  v42 = v74;
  *&v88 = v75;
  v53 = v138;
  BYTE8(v88) = v138;
  HIDWORD(v88) = *&v137[3];
  *(&v88 + 9) = *v137;
  *&v89 = v74;
  v52 = v136;
  BYTE8(v89) = v136;
  HIDWORD(v89) = *&v135[3];
  *(&v89 + 9) = *v135;
  v43 = v73;
  *v90 = v73;
  v44 = v134;
  v90[8] = v134;
  *&v90[12] = *&v133[3];
  *&v90[9] = *v133;
  *&v90[16] = v39;
  v41 &= 1u;
  v90[24] = v41;
  sub_1001081B0(&v78, &v92);
  sub_100011CF0(v71);
  v92 = v70;
  v93 = v62;
  *v94 = *v155;
  *&v94[3] = *&v155[3];
  v95 = v69;
  v96 = v61;
  *v97 = *v153;
  *&v97[3] = *&v153[3];
  v98 = v68;
  v99 = v60;
  *v100 = *v151;
  *&v100[3] = *&v151[3];
  v101 = v64;
  v102 = v67;
  v103 = v59;
  *v104 = *v149;
  *&v104[3] = *&v149[3];
  v105 = v66;
  v106 = v58;
  *v107 = *v147;
  *&v107[3] = *&v147[3];
  v108 = v65;
  v109 = v57;
  *v110 = *v145;
  *&v110[3] = *&v145[3];
  v111 = v63;
  v112 = v72;
  v113 = v56;
  *&v114[3] = *&v143[3];
  *v114 = *v143;
  v115 = v77;
  v116 = v55;
  *&v117[3] = *&v141[3];
  *v117 = *v141;
  v118 = v76;
  v119 = v54;
  *&v120[3] = *&v139[3];
  *v120 = *v139;
  v121 = v75;
  v122 = v53;
  *&v123[3] = *&v137[3];
  *v123 = *v137;
  v124 = v42;
  v125 = v52;
  *&v126[3] = *&v135[3];
  *v126 = *v135;
  v127 = v43;
  v128 = v44;
  *&v129[3] = *&v133[3];
  *v129 = *v133;
  v130 = v39;
  v131 = v41;
  result = sub_100106DC4(&v92);
  v45 = v89;
  a2[10] = v88;
  a2[11] = v45;
  a2[12] = *v90;
  *(a2 + 201) = *&v90[9];
  v46 = v85;
  a2[6] = v84;
  a2[7] = v46;
  v47 = v87;
  a2[8] = v86;
  a2[9] = v47;
  v48 = v81;
  a2[2] = v80;
  a2[3] = v48;
  v49 = v83;
  a2[4] = v82;
  a2[5] = v49;
  v50 = v79;
  *a2 = v78;
  a2[1] = v50;
  return result;
}

unint64_t sub_10010815C()
{
  result = qword_10022CD88;
  if (!qword_10022CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CD88);
  }

  return result;
}

uint64_t sub_1001081E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100108230@<X0>(uint64_t a1@<X8>)
{
  sub_100106D70();
  sub_1001CF790();
  result = v25;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v18;
  *(a1 + 144) = v19;
  *(a1 + 152) = v20;
  *(a1 + 160) = v21;
  *(a1 + 168) = v22;
  *(a1 + 176) = v23;
  *(a1 + 184) = v24;
  *(a1 + 192) = v25;
  *(a1 + 200) = v26;
  *(a1 + 208) = v27;
  *(a1 + 216) = v28;
  return result;
}

uint64_t sub_100108538(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_1001CFA40();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v26 - v14;
  v32 = 0xD00000000000001ELL;
  v33 = 0x80000001001E5280;
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = v3[13];
  v17(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v18 = v3[1];
  v19 = v27;
  v18(v7, v27);
  v32 = 0xD00000000000001ELL;
  v33 = 0x80000001001E5280;
  v17(v7, v16, v19);
  v20 = v28;
  sub_1001CFB00();
  v18(v7, v19);
  v21 = v20;
  sub_10014D240(v15, v20);
  v22 = *(v29 + 8);
  v23 = v21;
  v24 = v30;
  v22(v23, v30);
  return (v22)(v15, v24);
}

uint64_t getEnumTagSinglePayload for ServerDrivenConfiguration.JsonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerDrivenConfiguration.JsonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100108918()
{
  result = qword_10022CDA0;
  if (!qword_10022CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDA0);
  }

  return result;
}

unint64_t sub_100108970()
{
  result = qword_10022CDA8;
  if (!qword_10022CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDA8);
  }

  return result;
}

unint64_t sub_1001089C8()
{
  result = qword_10022CDB0;
  if (!qword_10022CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDB0);
  }

  return result;
}

uint64_t sub_100108A1C()
{
  v1 = sub_1001D1470();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D1460();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D1810();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  sub_1001D1800();
  v20 = sub_1001D17E0();
  v22 = v21;
  (*(v13 + 8))(v17, v12);
  if (v22 >> 60 == 15)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {
    sub_10010D1A8(&qword_100229378, &type metadata accessor for SHA256);
    sub_1001D1440();
    sub_100012038(v20, v22);
    sub_100158DE0(v20, v22);
    sub_10002683C(v20, v22);
    sub_1001D1430();
    (*(v2 + 8))(v6, v1);
    sub_1001D1450();
    sub_10002683C(v20, v22);
    return (*(v24 + 8))(v11, v25);
  }

  return result;
}

uint64_t sub_100108D90()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_fetchServerDrivenConfigurationValve);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100108DC0, v1, 0);
}

uint64_t sub_100108DC0()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_10019B804() & 1;

  return _swift_task_switch(sub_100108E30, 0, 0);
}

uint64_t sub_100108E30()
{
  if (*(v0 + 40) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_100108F88;
    v2 = *(v0 + 16);

    return sub_100109090();
  }

  else
  {
    v4 = *(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
    v5 = sub_1001D0E50();
    v6 = sub_1001D1DD0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "received a request to fetch server driven configuration but it is too soon", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100108F88(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 32);
  v8 = *v2;

  sub_100011E48(a1, a2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100109090()
{
  v1[130] = v0;
  v2 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v1[131] = swift_task_alloc();
  v3 = sub_1001D05B0();
  v1[132] = v3;
  v4 = *(v3 - 8);
  v1[133] = v4;
  v5 = *(v4 + 64) + 15;
  v1[134] = swift_task_alloc();
  v6 = *(*(sub_1001CFDA0() - 8) + 64) + 15;
  v1[135] = swift_task_alloc();

  return _swift_task_switch(sub_1001091A8, 0, 0);
}

uint64_t sub_1001091A8()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1040);
  v6 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  *(v0 + 1088) = v6;
  v7 = (v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v8 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  v9 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 704) = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  *(v0 + 720) = v8;
  *(v0 + 688) = v9;
  v10 = v7[6];
  v12 = v7[3];
  v11 = v7[4];
  *(v0 + 768) = v7[5];
  *(v0 + 784) = v10;
  *(v0 + 736) = v12;
  *(v0 + 752) = v11;
  v13 = v7[10];
  v15 = v7[7];
  v14 = v7[8];
  *(v0 + 832) = v7[9];
  *(v0 + 848) = v13;
  *(v0 + 800) = v15;
  *(v0 + 816) = v14;

  sub_1000884D8(v0 + 688, v0 + 864);
  sub_1001CFD90();
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v4);
  *(v0 + 1096) = sub_10010CE40(v6, (v0 + 688), v1, v2);
  v16 = swift_task_alloc();
  *(v0 + 1104) = v16;
  *v16 = v0;
  v16[1] = sub_100109324;

  return sub_100109BB0();
}

uint64_t sub_100109324()
{
  v2 = *(*v1 + 1104);
  v5 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = sub_1001097B8;
  }

  else
  {
    v3 = sub_100109438;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100109438()
{
  v1 = *(v0 + 1040) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "UpdateServerDrivenConfigurationRequest send succeeded", v4, 2u);
  }

  v5 = *(v0 + 1112);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 1048);
  v8 = sub_1001CF820();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v11 = v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v12 = *(v11 + 24);
  *(v0 + 16) = *(v11 + 8);
  *(v0 + 32) = v12;
  v13 = *(v11 + 40);
  v14 = *(v11 + 56);
  v15 = *(v11 + 88);
  *(v0 + 80) = *(v11 + 72);
  *(v0 + 96) = v15;
  *(v0 + 48) = v13;
  *(v0 + 64) = v14;
  v16 = *(v11 + 104);
  v17 = *(v11 + 120);
  v18 = *(v11 + 152);
  *(v0 + 144) = *(v11 + 136);
  *(v0 + 160) = v18;
  *(v0 + 112) = v16;
  *(v0 + 128) = v17;
  v19 = *(v11 + 168);
  v20 = *(v11 + 184);
  v21 = *(v11 + 200);
  *(v0 + 217) = *(v11 + 209);
  *(v0 + 192) = v20;
  *(v0 + 208) = v21;
  *(v0 + 176) = v19;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v11);
  v22 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v22;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v23 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v23;
  v24 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v24;
  v25 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v25;
  v26 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v26;
  v27 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v27;
  sub_10010CDEC();
  v28 = sub_1001CF800();
  if (v5)
  {
    v30 = *(v0 + 1040);
    sub_100106DC4(v0 + 16);
    swift_errorRetain();
    v31 = sub_1001D0E50();
    v32 = sub_1001D1DE0();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1096);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "failure to encode server driven config for display, error=%@", v35, 0xCu);
      sub_100024B10(v36);
    }

    else
    {
      v41 = *(v0 + 1096);
    }

    v38 = 0;
    v39 = 0xC000000000000000;
  }

  else
  {
    v38 = v28;
    v39 = v29;
    v40 = *(v0 + 1096);

    sub_100106DC4(v0 + 16);
  }

  v42 = *(v0 + 1080);
  v43 = *(v0 + 1072);
  v44 = *(v0 + 1048);

  v45 = *(v0 + 8);

  return v45(v38, v39);
}

uint64_t sub_1001097B8()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1040);
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "failure to process UpdateServerDrivenConfigurationRequest send, error=%@", v7, 0xCu);
    sub_100024B10(v8);
  }

  else
  {
  }

  v10 = *(v0 + 1088);
  v11 = *(v0 + 1048);
  v12 = sub_1001CF820();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v15 = v10 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v10 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v16 = *(v15 + 24);
  *(v0 + 16) = *(v15 + 8);
  *(v0 + 32) = v16;
  v17 = *(v15 + 40);
  v18 = *(v15 + 56);
  v19 = *(v15 + 88);
  *(v0 + 80) = *(v15 + 72);
  *(v0 + 96) = v19;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  v20 = *(v15 + 104);
  v21 = *(v15 + 120);
  v22 = *(v15 + 152);
  *(v0 + 144) = *(v15 + 136);
  *(v0 + 160) = v22;
  *(v0 + 112) = v20;
  *(v0 + 128) = v21;
  v23 = *(v15 + 168);
  v24 = *(v15 + 184);
  v25 = *(v15 + 200);
  *(v0 + 217) = *(v15 + 209);
  *(v0 + 192) = v24;
  *(v0 + 208) = v25;
  *(v0 + 176) = v23;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v15);
  v26 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v26;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v27 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v27;
  v28 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v28;
  v29 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v29;
  v30 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v30;
  v31 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v31;
  sub_10010CDEC();
  v32 = sub_1001CF800();
  v34 = v33;
  v35 = *(v0 + 1096);

  sub_100106DC4(v0 + 16);
  v36 = *(v0 + 1080);
  v37 = *(v0 + 1072);
  v38 = *(v0 + 1048);

  v39 = *(v0 + 8);

  return v39(v32, v34);
}

uint64_t sub_100109BB0()
{
  v1[83] = v0;
  v2 = sub_1001D1380();
  v1[84] = v2;
  v3 = *(v2 - 8);
  v1[85] = v3;
  v4 = *(v3 + 64) + 15;
  v1[86] = swift_task_alloc();
  v5 = *(*(sub_1001CFB10() - 8) + 64) + 15;
  v1[87] = swift_task_alloc();
  v6 = sub_1001D02E0();
  v1[88] = v6;
  v7 = *(v6 - 8);
  v1[89] = v7;
  v8 = *(v7 + 64) + 15;
  v1[90] = swift_task_alloc();
  v9 = sub_1001CF780();
  v1[91] = v9;
  v10 = *(v9 - 8);
  v1[92] = v10;
  v11 = *(v10 + 64) + 15;
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();

  return _swift_task_switch(sub_100109D60, 0, 0);
}

uint64_t sub_100109D60()
{
  v102 = v0;
  v1 = *(v0 + 664);
  *(v0 + 760) = qword_10022CE78;

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 664);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v101 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + qword_10022CE80), *(v4 + qword_10022CE80 + 8), &v101);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s executing configbag request", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v98 = *(v0 + 752);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 664);
  v12 = *(v11 + qword_10022CE90 + 24);
  v13 = *(v11 + qword_10022CE90 + 32);
  sub_100024DC8((v11 + qword_10022CE90), v12);
  v14 = *(*v11 + 152);
  *(v0 + 768) = v14;
  v15 = (v11 + v14);
  *(v0 + 568) = &type metadata for SystemInfo;
  *(v0 + 576) = &protocol witness table for SystemInfo;
  v16 = swift_allocObject();
  *(v0 + 544) = v16;
  v18 = v15[1];
  v17 = v15[2];
  *(v0 + 192) = *v15;
  *(v0 + 208) = v18;
  *(v0 + 224) = v17;
  v19 = v15[6];
  v21 = v15[3];
  v20 = v15[4];
  *(v0 + 272) = v15[5];
  *(v0 + 288) = v19;
  *(v0 + 240) = v21;
  *(v0 + 256) = v20;
  v22 = v15[10];
  v24 = v15[7];
  v23 = v15[8];
  *(v0 + 336) = v15[9];
  *(v0 + 352) = v22;
  *(v0 + 304) = v24;
  *(v0 + 320) = v23;
  v99 = *(v0 + 344);
  v100 = *(v0 + 336);
  v26 = v15[1];
  v25 = v15[2];
  v16[1] = *v15;
  v16[2] = v26;
  v16[3] = v25;
  v27 = v15[6];
  v29 = v15[3];
  v28 = v15[4];
  v16[6] = v15[5];
  v16[7] = v27;
  v16[4] = v29;
  v16[5] = v28;
  v30 = v15[10];
  v32 = v15[7];
  v31 = v15[8];
  v16[10] = v15[9];
  v16[11] = v30;
  v16[8] = v32;
  v16[9] = v31;
  sub_1000884D8(v0 + 192, v0 + 368);
  Configuration.environment(systemInfo:)((v0 + 544), v12, v13, v7);
  sub_100011CF0((v0 + 544));
  sub_1001D02D0();
  (*(v8 + 8))(v7, v9);
  sub_1001CF760();
  v33 = sub_1001CFD70();
  v35 = v34;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 752);
  sub_10003A37C(*(v0 + 672), qword_100242D78);
  v109._countAndFlagsBits = sub_1001D1320();
  v38 = v37;
  v104._countAndFlagsBits = v33;
  v104._object = v35;
  v109._object = v38;
  sub_1001CF770(v104, v109);

  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 752);
  v40 = *(v0 + 688);
  v41 = *(v0 + 680);
  v42 = *(v0 + 672);
  sub_10003A37C(v42, qword_100242D90);
  v110._countAndFlagsBits = sub_1001D1320();
  v44 = v43;
  v105._object = v99;
  v105._countAndFlagsBits = v100;
  v110._object = v44;
  sub_1001CF770(v105, v110);

  sub_1001D1330();
  v45 = sub_1001D1320();
  v47 = v46;
  v48 = *(v41 + 8);
  v48(v40, v42);
  v106._countAndFlagsBits = 0xD000000000000014;
  v106._object = 0x80000001001E3CA0;
  v111._countAndFlagsBits = v45;
  v111._object = v47;
  sub_1001CF770(v106, v111);

  v49 = [objc_opt_self() automatedDeviceGroup];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1001D17D0();
    v53 = v52;

    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 752);
    sub_10003A37C(*(v0 + 672), qword_100242E38);
    v112._countAndFlagsBits = sub_1001D1320();
    v56 = v55;
    v107._countAndFlagsBits = v51;
    v107._object = v53;
    v112._object = v56;
    sub_1001CF770(v107, v112);
  }

  v57 = *(v0 + 752);
  v58 = *(v0 + 688);
  v59 = *(v0 + 672);
  v60 = *(v0 + 664);
  sub_1001D1360();
  v61 = sub_1001D1320();
  v63 = v62;
  v48(v58, v59);
  v108._object = 0x80000001001E5520;
  v108._countAndFlagsBits = 0xD000000000000010;
  v113._countAndFlagsBits = v61;
  v113._object = v63;
  sub_1001CF770(v108, v113);

  v64 = sub_1001D0E50();
  v65 = sub_1001D1DD0();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 752);
    v67 = *(v0 + 728);
    v68 = *(v0 + 664);
    v69 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v69 = 136315394;
    *(v69 + 4) = sub_1000954E0(*(v68 + qword_10022CE80), *(v68 + qword_10022CE80 + 8), &v101);
    *(v69 + 12) = 2080;
    swift_beginAccess();
    sub_10010D1A8(&qword_10022CDE0, &type metadata accessor for URLRequest);
    v70 = sub_1001D23A0();
    v72 = sub_1000954E0(v70, v71, &v101);

    *(v69 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "%s request ready, request=%s", v69, 0x16u);
    swift_arrayDestroy();
  }

  v73 = *(v0 + 664);
  v74 = [objc_opt_self() ephemeralSessionConfiguration];
  *(v0 + 776) = v74;
  [v74 setUsesClassicLoadingMode:0];
  v75 = [objc_opt_self() sessionWithConfiguration:v74];
  *(v0 + 784) = v75;

  v76 = v75;
  v77 = sub_1001D0E50();
  v78 = sub_1001D1DD0();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 664);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v101 = v82;
    *v80 = 136315394;
    *(v80 + 4) = sub_1000954E0(*(v79 + qword_10022CE80), *(v79 + qword_10022CE80 + 8), &v101);
    *(v80 + 12) = 2112;
    *(v80 + 14) = v76;
    *v81 = v76;
    v83 = v76;
    _os_log_impl(&_mh_execute_header, v77, v78, "%s session ready, session=%@", v80, 0x16u);
    sub_100024B10(v81);

    sub_100011CF0(v82);
  }

  v84 = *(v0 + 664);

  v85 = sub_1001D0E50();
  v86 = sub_1001D1DD0();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = *(v0 + 664);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v101 = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_1000954E0(*(v87 + qword_10022CE80), *(v87 + qword_10022CE80 + 8), &v101);
    _os_log_impl(&_mh_execute_header, v85, v86, "%s running session async", v88, 0xCu);
    sub_100011CF0(v89);
  }

  v90 = *(v0 + 752);
  v91 = *(v0 + 744);
  v92 = *(v0 + 736);
  v93 = *(v0 + 728);
  swift_beginAccess();
  (*(v92 + 16))(v91, v90, v93);
  v94 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v95 = swift_task_alloc();
  *(v0 + 792) = v95;
  *v95 = v0;
  v95[1] = sub_10010A6F0;
  v96 = *(v0 + 744);

  return NSURLSession.data(for:delegate:)(v96, 0);
}

uint64_t sub_10010A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 792);
  v8 = *v4;
  v6[100] = a1;
  v6[101] = a2;
  v6[102] = a3;
  v6[103] = v3;

  v9 = v5[93];
  v10 = v5[92];
  v11 = v5[91];
  v12 = *(v10 + 8);
  v13 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v3)
  {
    v6[106] = v12;
    v6[107] = v13;
    v12(v9, v11);
    v14 = sub_10010B388;
  }

  else
  {
    v6[104] = v12;
    v6[105] = v13;
    v12(v9, v11);
    v14 = sub_10010A890;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10010A890()
{
  v102 = v0;
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[95];
  v5 = v0[83];

  v6 = v1;
  sub_100012038(v3, v2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();

  sub_100011E48(v3, v2);
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[102];
  v11 = &off_10022C000;
  if (v9)
  {
    v12 = v0[101];
    v13 = v0[100];
    v14 = v0[83];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_1000954E0(*(v14 + qword_10022CE80), *(v14 + qword_10022CE80 + 8), v101);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v10;
    *v16 = v10;
    *(v15 + 22) = 2080;
    sub_100012038(v13, v12);
    v17 = sub_1001CFB50();
    v19 = v18;
    sub_100011E48(v13, v12);
    v20 = sub_1000954E0(v17, v19, v101);
    v11 = &off_10022C000;

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s response returning, response=%@ data=%s", v15, 0x20u);
    sub_100024B10(v16);

    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = v0[103];
  v22 = v0[101];
  v23 = v0[100];
  v24 = *(v0[83] + qword_10022CE98);
  sub_100011AC0(&qword_10022CDD0, &qword_1001DDFA0);
  sub_100024B78(&qword_10022CDD8, &qword_10022CDD0, &qword_1001DDFA0);
  sub_1001CF790();
  v25 = v0[95];
  v26 = v0[83];
  if (v21)
  {
    v27 = v0[83];

    swift_errorRetain();
    v28 = sub_1001D0E50();
    v29 = sub_1001D1DE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[83];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v101[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_1000954E0(*(v11[464] + v30), *(v11[464] + v30 + 8), v101);
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s unable to decode json response data, error=%@", v31, 0x16u);
      sub_100024B10(v32);

      sub_100011CF0(v33);
    }

    v35 = v0[102];
    v93 = v0[101];
    v95 = v0[104];
    v36 = v0[100];
    v37 = v0[98];
    v38 = v0[97];
    v97 = v0[95];
    v99 = v0[105];
    v90 = v0[91];
    v91 = v0[94];
    v39 = v0[83];
    sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
    sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98);
    swift_allocError();
    *v40 = 1;
    swift_willThrow();

    sub_100011E48(v36, v93);
    v95(v91, v90);

    v41 = sub_1001D0E50();
    v42 = sub_1001D1E00();
LABEL_15:

    if (os_log_type_enabled(v41, v42))
    {
      v71 = v0[83];
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v101[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1000954E0(*(v71 + qword_10022CE80), *(v71 + qword_10022CE80 + 8), v101);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s finished configbag request", v72, 0xCu);
      sub_100011CF0(v73);
    }

    v74 = v0[94];
    v75 = v0[93];
    v76 = v0[90];
    v77 = v0[87];
    v78 = v0[86];

    v79 = v0[1];

    return v79();
  }

  v43 = v0[79];
  v44 = v0[80];
  v45 = v0[83];

  v46 = sub_1001D0E50();
  v47 = sub_1001D1DD0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v0[83];
    v49 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = sub_1000954E0(*(v11[464] + v48), *(v11[464] + v48 + 8), v101);
    *(v49 + 12) = 2080;
    v0[81] = v43;
    v0[82] = v44;
    v50 = sub_1001D1820();
    v52 = sub_1000954E0(v50, v51, v101);

    *(v49 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "%s model decoded, model=%s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v53 = v0[83];
  v54 = sub_1001CFB70();
  v56 = v55;

  v0[108] = v54;
  v0[109] = v56;

  v57 = v0[95];
  v58 = v0[83];
  if (v56 >> 60 == 15)
  {
    v59 = sub_1001D0E50();
    v60 = sub_1001D1DE0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[83];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v101[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_1000954E0(*(v11[464] + v61), *(v11[464] + v61 + 8), v101);
      _os_log_impl(&_mh_execute_header, v59, v60, "%s unable to decode base64 bag", v62, 0xCu);
      sub_100011CF0(v63);
    }

    v64 = v0[102];
    v94 = v0[101];
    v96 = v0[104];
    v65 = v0[100];
    v66 = v0[98];
    v67 = v0[97];
    v98 = v0[95];
    v100 = v0[105];
    v92 = v0[94];
    v68 = v0[91];
    v69 = v0[83];
    sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
    sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98);
    swift_allocError();
    *v70 = 2;
    swift_willThrow();

    sub_100011E48(v65, v94);
    v96(v92, v68);

    v41 = sub_1001D0E50();
    v42 = sub_1001D1E00();
    goto LABEL_15;
  }

  sub_100089C38(v54, v56);
  v81 = sub_1001D0E50();
  v82 = sub_1001D1DD0();

  sub_10002683C(v54, v56);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v0[83];
    v84 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v84 = 136315394;
    *(v84 + 4) = sub_1000954E0(*(v11[464] + v83), *(v11[464] + v83 + 8), v101);
    *(v84 + 12) = 2080;
    sub_100012038(v54, v56);
    v85 = sub_1001CFB50();
    v87 = v86;
    sub_10002683C(v54, v56);
    v88 = sub_1000954E0(v85, v87, v101);

    *(v84 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v81, v82, "%s base64 bag decoded, pushing update of utf8jsonBag=%s", v84, 0x16u);
    swift_arrayDestroy();
  }

  v0[110] = *(v0[83] + *(*v0[83] + 160));
  v89 = swift_task_alloc();
  v0[111] = v89;
  *v89 = v0;
  v89[1] = sub_10010B708;

  return sub_100103CF0(v54, v56);
}

uint64_t sub_10010B388()
{
  v35 = v0;
  v1 = v0[103];
  v2 = v0[95];
  v3 = v0[83];

  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[103];
    v7 = v0[83];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(*(v7 + qword_10022CE80), *(v7 + qword_10022CE80 + 8), v34);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s response throwing, error=%@", v8, 0x16u);
    sub_100024B10(v9);

    sub_100011CF0(v10);
  }

  v31 = v0[106];
  v32 = v0[107];
  v12 = v0[103];
  v13 = v0[98];
  v14 = v0[97];
  v33 = v0[95];
  v15 = v0[94];
  v16 = v0[91];
  v17 = v0[83];
  sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
  sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98);
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v31(v15, v16);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[83];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1000954E0(*(v21 + qword_10022CE80), *(v21 + qword_10022CE80 + 8), v34);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s finished configbag request", v22, 0xCu);
    sub_100011CF0(v23);
  }

  v24 = v0[94];
  v25 = v0[93];
  v26 = v0[90];
  v27 = v0[87];
  v28 = v0[86];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10010B708()
{
  v1 = *(*v0 + 888);
  v3 = *v0;

  return _swift_task_switch(sub_10010B804, 0, 0);
}

uint64_t sub_10010B804()
{
  v36 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v33 = *(v0 + 832);
  v34 = *(v0 + 840);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v31 = *(v0 + 872);
  v32 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = (*(v0 + 664) + *(v0 + 768));
  v11 = v10[6];
  v13 = v10[3];
  v12 = v10[4];
  *(v0 + 96) = v10[5];
  *(v0 + 112) = v11;
  *(v0 + 64) = v13;
  *(v0 + 80) = v12;
  v14 = v10[10];
  v16 = v10[7];
  v15 = v10[8];
  *(v0 + 160) = v10[9];
  *(v0 + 176) = v14;
  *(v0 + 128) = v16;
  *(v0 + 144) = v15;
  v17 = *v10;
  v18 = v10[2];
  *(v0 + 32) = v10[1];
  *(v0 + 48) = v18;
  *(v0 + 16) = v17;
  sub_10010C318(v1, v0 + 16);

  sub_10002683C(v2, v31);
  sub_100011E48(v5, v4);
  v33(v8, v9);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 664);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1000954E0(*(v21 + qword_10022CE80), *(v21 + qword_10022CE80 + 8), &v35);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s finished configbag request", v22, 0xCu);
    sub_100011CF0(v23);
  }

  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(v0 + 720);
  v27 = *(v0 + 696);
  v28 = *(v0 + 688);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10010BA44()
{
  *(v1 + 688) = v0;
  v2 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  *(v1 + 696) = swift_task_alloc();

  return _swift_task_switch(sub_10010BAD4, 0, 0);
}

uint64_t sub_10010BAD4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = sub_1001CF820();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v6 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig) + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock(v6);
  v7 = *(v6 + 24);
  *(v0 + 16) = *(v6 + 8);
  *(v0 + 32) = v7;
  v8 = *(v6 + 40);
  v9 = *(v6 + 56);
  v10 = *(v6 + 88);
  *(v0 + 80) = *(v6 + 72);
  *(v0 + 96) = v10;
  *(v0 + 48) = v8;
  *(v0 + 64) = v9;
  v11 = *(v6 + 104);
  v12 = *(v6 + 120);
  v13 = *(v6 + 152);
  *(v0 + 144) = *(v6 + 136);
  *(v0 + 160) = v13;
  *(v0 + 112) = v11;
  *(v0 + 128) = v12;
  v14 = *(v6 + 168);
  v15 = *(v6 + 184);
  v16 = *(v6 + 200);
  *(v0 + 217) = *(v6 + 209);
  *(v0 + 192) = v15;
  *(v0 + 208) = v16;
  *(v0 + 176) = v14;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v6);
  v17 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v17;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v18 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v18;
  v19 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v19;
  v20 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v20;
  v21 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v21;
  v22 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v22;
  sub_10010CDEC();
  v23 = sub_1001CF800();
  v25 = v24;

  sub_100106DC4(v0 + 16);
  v26 = *(v0 + 696);

  v27 = *(v0 + 8);

  return v27(v23, v25);
}

uint64_t sub_10010BDB4(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  v4 = *(*(sub_1001CF7E0() - 8) + 64) + 15;
  v3[111] = swift_task_alloc();

  return _swift_task_switch(sub_10010BE4C, 0, 0);
}

uint64_t sub_10010BE4C()
{
  v0[112] = *(v0[110] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v1 = swift_task_alloc();
  v0[113] = v1;
  *v1 = v0;
  v1[1] = sub_10010BEFC;
  v2 = v0[109];
  v3 = v0[108];

  return sub_100103CF0(v3, v2);
}

uint64_t sub_10010BEFC()
{
  v1 = *(*v0 + 904);
  v3 = *v0;

  return _swift_task_switch(sub_10010BFF8, 0, 0);
}

uint64_t sub_10010BFF8()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = (*(v0 + 880) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v5 = v3[1];
  v4 = v3[2];
  *(v0 + 688) = *v3;
  *(v0 + 704) = v5;
  *(v0 + 720) = v4;
  v6 = v3[6];
  v8 = v3[3];
  v7 = v3[4];
  *(v0 + 768) = v3[5];
  *(v0 + 784) = v6;
  *(v0 + 736) = v8;
  *(v0 + 752) = v7;
  v9 = v3[10];
  v11 = v3[7];
  v10 = v3[8];
  *(v0 + 832) = v3[9];
  *(v0 + 848) = v9;
  *(v0 + 800) = v11;
  *(v0 + 816) = v10;
  sub_10010C318(v1, v0 + 688);
  v12 = sub_1001CF820();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v15 = v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v16 = *(v15 + 24);
  *(v0 + 16) = *(v15 + 8);
  *(v0 + 32) = v16;
  v17 = *(v15 + 40);
  v18 = *(v15 + 56);
  v19 = *(v15 + 88);
  *(v0 + 80) = *(v15 + 72);
  *(v0 + 96) = v19;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  v20 = *(v15 + 104);
  v21 = *(v15 + 120);
  v22 = *(v15 + 152);
  *(v0 + 144) = *(v15 + 136);
  *(v0 + 160) = v22;
  *(v0 + 112) = v20;
  *(v0 + 128) = v21;
  v23 = *(v15 + 168);
  v24 = *(v15 + 184);
  v25 = *(v15 + 200);
  *(v0 + 217) = *(v15 + 209);
  *(v0 + 192) = v24;
  *(v0 + 208) = v25;
  *(v0 + 176) = v23;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v15);
  v26 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v26;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v27 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v27;
  v28 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v28;
  v29 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v29;
  v30 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v30;
  v31 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v31;
  sub_10010CDEC();
  v32 = sub_1001CF800();
  v34 = v33;

  sub_100106DC4(v0 + 16);
  v35 = *(v0 + 888);

  v36 = *(v0 + 8);

  return v36(v32, v34);
}

uint64_t sub_10010C318(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v117 = a1;
  v2 = sub_1001D02E0();
  v113 = *(v2 - 8);
  v3 = *(v113 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v118 = *(v120 - 8);
  v7 = *(v118 + 64);
  v9 = __chkstk_darwin(v120, v8);
  v121 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v110 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v115 = (&v110 - v17);
  v19 = __chkstk_darwin(v16, v18);
  v114 = &v110 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v116 = &v110 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v110 - v25;
  v27 = sub_1001D02F0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001D0E60();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33, v36);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v32, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v27);
  sub_1001D08B0();
  (*(v28 + 8))(v32, v27);
  sub_1001D0170();
  sub_1001D1840();

  LODWORD(v32) = os_variant_has_internal_content();

  if (!v32)
  {
    return (*(v34 + 8))(v38, v33);
  }

  v119 = v38;
  v110 = v34;
  v111 = v33;
  v39 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0420();
  v40 = COERCE_DOUBLE(sub_100105358());
  v41 = v26;
  if ((v42 & 1) != 0 || (v65 = v40, v66 = v40, v40 < 0.0) || v40 > 1.0)
  {
    v117 = v39;
    v43 = sub_1001D0E50();
    v44 = sub_1001D1E00();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v120;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "With no spillover, deleted environment proposal", v47, 2u);
    }

    v48 = v118;
    v49 = *(v118 + 16);
    v49(v14, v26, v46);
    v50 = v121;
    v116 = v26;
    v49(v121, v26, v46);
    v51 = sub_1001D0E50();
    v52 = sub_1001D1E00();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v122[0] = v115;
      *v53 = 136315394;
      v54 = sub_1001D0570();
      v56 = v55;
      v57 = *(v48 + 8);
      v57(v14, v46);
      v58 = sub_1000954E0(v54, v56, v122);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = v121;
      v60 = sub_1001D0560();
      v62 = v61;
      v57(v59, v46);
      v63 = sub_1000954E0(v60, v62, v122);

      *(v53 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v51, v52, "DefaultConfiguration deleted %s %s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v57 = *(v48 + 8);
      v57(v50, v46);
      v57(v14, v46);
    }

    v122[0] = 0;
    v122[1] = 0;
    v101 = v116;
    sub_1001D0570();
    sub_1001D0560();
    sub_1001D1EF0();

    v57(v101, v46);
    return (*(v110 + 8))(v119, v111);
  }

  else
  {
    sub_100108A1C();
    v68 = v67;
    v69 = v113;
    v70 = &enum case for TC2Environment.production(_:);
    if (v67 >= v66)
    {
      v70 = &enum case for TC2Environment.carry(_:);
    }

    (*(v113 + 104))(v6, *v70, v2);
    v71 = sub_1001D02B0();
    v73 = v72;
    (*(v69 + 8))(v6, v2);
    swift_bridgeObjectRetain_n();
    v74 = sub_1001D0E50();
    v75 = sub_1001D1E00();

    v76 = os_log_type_enabled(v74, v75);
    v77 = v120;
    v121 = v71;
    if (v76)
    {
      v78 = swift_slowAlloc();
      v117 = v39;
      v79 = v78;
      v80 = swift_slowAlloc();
      v122[0] = v80;
      *v79 = 134218498;
      *(v79 + 4) = v68;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v65;
      *(v79 + 22) = 2080;
      *(v79 + 24) = sub_1000954E0(v71, v73, v122);
      _os_log_impl(&_mh_execute_header, v74, v75, "With device_p=%f, spillover=%f, proposed environment=%s", v79, 0x20u);
      sub_100011CF0(v80);
    }

    v82 = v114;
    v81 = v115;
    v83 = v116;
    sub_1001D0420();
    v84 = v118;
    v85 = *(v118 + 16);
    v85(v82, v83, v77);
    v85(v81, v83, v77);

    v86 = sub_1001D0E50();
    v87 = sub_1001D1E00();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v122[0] = v117;
      *v88 = 136315650;
      v115 = v86;
      v89 = sub_1001D0570();
      LODWORD(v114) = v87;
      v91 = v90;
      v92 = v82;
      v93 = *(v84 + 8);
      v93(v92, v77);
      v94 = sub_1000954E0(v89, v91, v122);

      *(v88 + 4) = v94;
      *(v88 + 12) = 2080;
      v95 = sub_1001D0560();
      v97 = v96;
      v93(v81, v77);
      v98 = sub_1000954E0(v95, v97, v122);

      *(v88 + 14) = v98;
      *(v88 + 22) = 2080;
      v99 = sub_1000954E0(v121, v73, v122);

      *(v88 + 24) = v99;
      v100 = v115;
      _os_log_impl(&_mh_execute_header, v115, v114, "DefaultConfiguration wrote %s %s = %s", v88, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v102 = v82;
      v93 = *(v84 + 8);
      v93(v81, v77);
      v93(v102, v77);
    }

    v103 = v111;
    v104 = v116;
    v105 = sub_1001D0570();
    v107 = v106;
    v124._countAndFlagsBits = sub_1001D0560();
    v109 = v108;
    v123._countAndFlagsBits = v105;
    v123._object = v107;
    v124._object = v109;
    sub_1001D1870(v123, v124);

    v93(v104, v77);
    v93(v41, v77);
    return (*(v110 + 8))(v119, v103);
  }
}

unint64_t sub_10010CDEC()
{
  result = qword_10022CDB8;
  if (!qword_10022CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDB8);
  }

  return result;
}

uint64_t sub_10010CE40(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001D02F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001D05B0();
  v39 = v14;
  v40 = &protocol witness table for DefaultConfiguration;
  v15 = sub_10003B47C(&v38);
  (*(*(v14 - 8) + 32))(v15, a4, v14);
  v16 = sub_100011AC0(&qword_10022CDE8, &qword_1001DDFA8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  (*(v9 + 104))(v13, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v8);
  sub_1001D08B0();
  (*(v9 + 8))(v13, v8);
  v20 = qword_10022CE98;
  v21 = sub_1001CF7B0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v19 + v20) = sub_1001CF7A0();
  v24 = sub_1001CFDA0();
  sub_10010D1A8(&qword_100228AF8, &type metadata accessor for UUID);
  v36 = sub_1001D23A0();
  v37 = v25;
  v41._countAndFlagsBits = 58;
  v41._object = 0xE100000000000000;
  sub_1001D18B0(v41);
  v26 = v37;
  v27 = (v19 + qword_10022CE80);
  *v27 = v36;
  v27[1] = v26;
  *(v19 + *(*v19 + 160)) = a1;
  v28 = (v19 + *(*v19 + 152));
  v29 = a2[9];
  v28[8] = a2[8];
  v28[9] = v29;
  v28[10] = a2[10];
  v30 = a2[5];
  v28[4] = a2[4];
  v28[5] = v30;
  v31 = a2[7];
  v28[6] = a2[6];
  v28[7] = v31;
  v32 = a2[1];
  *v28 = *a2;
  v28[1] = v32;
  v33 = a2[3];
  v28[2] = a2[2];
  v28[3] = v33;
  (*(*(v24 - 8) + 32))(v19 + qword_10022CE88, a3, v24);
  sub_1000446FC(&v38, v19 + qword_10022CE90);
  return v19;
}

uint64_t sub_10010D120()
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

uint64_t sub_10010D1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010D1F0(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      v6 = *(a1 + 88);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10010D304()
{
  v1[11] = v0;
  v2 = *v0;
  v1[12] = *v0;
  v3 = *(*(sub_1001CFDA0() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v4 = *(v2 + 88);
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = *(v2 + 80);
  v1[17] = v7;
  v8 = *(v7 - 8);
  v1[18] = v8;
  v9 = *(v8 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10010D490, 0, 0);
}

uint64_t sub_10010D490()
{
  v1 = *(v0 + 88);
  *(v0 + 160) = qword_10022CDF0;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running fetchServerDrivenConfig activity", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v16 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);

  v13 = *(v11 + 96);
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  *(v0 + 72) = v13;
  type metadata accessor for UpdateServerDrivenConfigurationRequest();
  (*(v6 + 16))(v5, v12 + *(*v12 + 120), v7);
  (*(v9 + 16))(v16, v12 + *(*v12 + 128), v8);
  sub_1001CFD90();
  sub_100044698(v12 + *(*v12 + 136), v0 + 16);
  *(v0 + 168) = sub_10010DE40(v5, v16, v10, (v0 + 16));
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_10010D6A4;

  return sub_10010DEA8();
}

uint64_t sub_10010D6A4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10010D84C;
  }

  else
  {
    v3 = sub_10010D7B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010D7B8()
{
  v1 = v0[21];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[11];
  sub_10010D9E4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10010D84C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[11];
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  v8 = v0[21];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchServerDrivenConfig activity could not update, error=%@", v9, 0xCu);
    sub_100024B10(v10);
  }

  else
  {
    v12 = v0[21];
  }

  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[11];
  sub_10010D9E4();

  v17 = v0[1];

  return v17();
}

void sub_10010D9E4()
{
  oslog = sub_1001D0E50();
  v0 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Finished fetchServerDrivenConfig activity", v1, 2u);
  }
}

uint64_t *sub_10010DA90()
{
  v1 = *v0;
  v2 = qword_10022CDF0;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  sub_100011CF0((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_10010DBC0()
{
  sub_10010DA90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10010DC48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_10010D304();
}

uint64_t sub_10010DCD8(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    result = sub_1001CFDA0();
    if (v4 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v5 = *(a1 + 88);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        v7 = *(a1 + 80);
        result = swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          v12 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10010DE40(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_100110CF4(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_10010DEA8()
{
  v1[38] = v0;
  v1[39] = *v0;
  v2 = sub_1001D1380();
  v1[40] = v2;
  v3 = *(v2 - 8);
  v1[41] = v3;
  v4 = *(v3 + 64) + 15;
  v1[42] = swift_task_alloc();
  v5 = *(*(sub_1001CFB10() - 8) + 64) + 15;
  v1[43] = swift_task_alloc();
  v6 = sub_1001D02E0();
  v1[44] = v6;
  v7 = *(v6 - 8);
  v1[45] = v7;
  v8 = *(v7 + 64) + 15;
  v1[46] = swift_task_alloc();
  v9 = sub_1001CF780();
  v1[47] = v9;
  v10 = *(v9 - 8);
  v1[48] = v10;
  v11 = *(v10 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_10010E080, 0, 0);
}

uint64_t sub_10010E080()
{
  v92 = v0;
  v1 = v0[38];
  v0[51] = qword_10022CE78;

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v91 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + qword_10022CE80), *(v4 + qword_10022CE80 + 8), &v91);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s executing configbag request", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[45];
  v8 = v0[46];
  v9 = v0[43];
  v88 = v0[44];
  v90 = v0[50];
  v10 = v0[38];
  v11 = v0[39];
  v12 = *(v10 + qword_10022CE90 + 24);
  v86 = *(v10 + qword_10022CE90 + 32);
  sub_100024DC8((v10 + qword_10022CE90), v12);
  v13 = *(*v10 + 152);
  v0[52] = v13;
  v14 = *(v11 + 88);
  v0[53] = v14;
  v0[5] = v14;
  v15 = *(v11 + 104);
  v0[54] = v15;
  v0[6] = v15;
  v16 = sub_10003B47C(v0 + 2);
  v17 = *(v14 - 8);
  v18 = *(v17 + 16);
  v0[55] = v18;
  v0[56] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v16, v10 + v13, v14);
  Configuration.environment(systemInfo:)(v0 + 2, v12, v86, v8);
  sub_100011CF0(v0 + 2);
  sub_1001D02D0();
  (*(v7 + 8))(v8, v88);
  sub_1001CF760();
  v19 = sub_1001CFD70();
  v21 = v20;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  v22 = v0[50];
  sub_10003A37C(v0[40], qword_100242D78);
  v99._countAndFlagsBits = sub_1001D1320();
  v24 = v23;
  v94._countAndFlagsBits = v19;
  v94._object = v21;
  v99._object = v24;
  sub_1001CF770(v94, v99);

  v25 = (*(v15 + 88))(v14, v15);
  v27 = v26;
  v87 = v14;
  v89 = v15;
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v28 = v0[50];
  v30 = v0[41];
  v29 = v0[42];
  v31 = v0[40];
  sub_10003A37C(v31, qword_100242D90);
  v100._countAndFlagsBits = sub_1001D1320();
  v33 = v32;
  v95._countAndFlagsBits = v25;
  v95._object = v27;
  v100._object = v33;
  sub_1001CF770(v95, v100);

  sub_1001D1330();
  v34 = sub_1001D1320();
  v36 = v35;
  v37 = *(v30 + 8);
  v37(v29, v31);
  v96._countAndFlagsBits = 0xD000000000000014;
  v96._object = 0x80000001001DE030;
  v101._countAndFlagsBits = v34;
  v101._object = v36;
  sub_1001CF770(v96, v101);

  v38 = (*(v89 + 80))(v87);
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    v42 = v0[50];
    sub_10003A37C(v0[40], qword_100242E38);
    v102._countAndFlagsBits = sub_1001D1320();
    v44 = v43;
    v97._countAndFlagsBits = v40;
    v97._object = v41;
    v102._object = v44;
    sub_1001CF770(v97, v102);
  }

  v45 = v0[50];
  v46 = v0[42];
  v47 = v0[40];
  v48 = v0[38];
  sub_1001D1360();
  v49 = sub_1001D1320();
  v51 = v50;
  v37(v46, v47);
  v98._object = 0x80000001001E5520;
  v98._countAndFlagsBits = 0xD000000000000010;
  v103._countAndFlagsBits = v49;
  v103._object = v51;
  sub_1001CF770(v98, v103);

  v52 = sub_1001D0E50();
  v53 = sub_1001D1DD0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v0[50];
    v55 = v0[47];
    v56 = v0[38];
    v57 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v57 = 136315394;
    *(v57 + 4) = sub_1000954E0(*(v56 + qword_10022CE80), *(v56 + qword_10022CE80 + 8), &v91);
    *(v57 + 12) = 2080;
    swift_beginAccess();
    sub_1001112FC(&qword_10022CDE0, &type metadata accessor for URLRequest);
    v58 = sub_1001D23A0();
    v60 = sub_1000954E0(v58, v59, &v91);

    *(v57 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s request ready, request=%s", v57, 0x16u);
    swift_arrayDestroy();
  }

  v61 = v0[38];
  v62 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[57] = v62;
  [v62 setUsesClassicLoadingMode:0];
  v63 = [objc_opt_self() sessionWithConfiguration:v62];
  v0[58] = v63;

  v64 = v63;
  v65 = sub_1001D0E50();
  v66 = sub_1001D1DD0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = v0[38];
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v91 = v70;
    *v68 = 136315394;
    *(v68 + 4) = sub_1000954E0(*(v67 + qword_10022CE80), *(v67 + qword_10022CE80 + 8), &v91);
    *(v68 + 12) = 2112;
    *(v68 + 14) = v64;
    *v69 = v64;
    v71 = v64;
    _os_log_impl(&_mh_execute_header, v65, v66, "%s session ready, session=%@", v68, 0x16u);
    sub_100024B10(v69);

    sub_100011CF0(v70);
  }

  v72 = v0[38];

  v73 = sub_1001D0E50();
  v74 = sub_1001D1DD0();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v0[38];
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_1000954E0(*(v75 + qword_10022CE80), *(v75 + qword_10022CE80 + 8), &v91);
    _os_log_impl(&_mh_execute_header, v73, v74, "%s running session async", v76, 0xCu);
    sub_100011CF0(v77);
  }

  v78 = v0[49];
  v79 = v0[50];
  v80 = v0[47];
  v81 = v0[48];
  swift_beginAccess();
  (*(v81 + 16))(v78, v79, v80);
  v82 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v83 = swift_task_alloc();
  v0[59] = v83;
  *v83 = v0;
  v83[1] = sub_10010E9E4;
  v84 = v0[49];

  return NSURLSession.data(for:delegate:)(v84, 0);
}

uint64_t sub_10010E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 472);
  v8 = *v4;
  v6[60] = a1;
  v6[61] = a2;
  v6[62] = a3;
  v6[63] = v3;

  v9 = v5[49];
  v10 = v5[48];
  v11 = v5[47];
  v12 = *(v10 + 8);
  v13 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v3)
  {
    v6[72] = v12;
    v6[73] = v13;
    v12(v9, v11);
    v14 = sub_10010F7F8;
  }

  else
  {
    v6[64] = v12;
    v6[65] = v13;
    v12(v9, v11);
    v14 = sub_10010EB7C;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10010EB7C()
{
  v101 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = *(v0 + 408);
  v5 = *(v0 + 304);

  v6 = v2;
  sub_100012038(v3, v1);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();

  sub_100011E48(v3, v1);
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 496);
  if (v9)
  {
    v12 = *(v0 + 480);
    v11 = *(v0 + 488);
    v13 = *(v0 + 304);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1000954E0(*(v13 + qword_10022CE80), *(v13 + qword_10022CE80 + 8), v100);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    *(v14 + 22) = 2080;
    sub_100012038(v12, v11);
    v16 = sub_1001CFB50();
    v18 = v17;
    sub_100011E48(v12, v11);
    v19 = sub_1000954E0(v16, v18, v100);

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s response returning, response=%@ data=%s", v14, 0x20u);
    sub_100024B10(v15);

    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = *(v0 + 504);
  v21 = *(v0 + 480);
  v22 = *(v0 + 488);
  v24 = *(v0 + 424);
  v23 = *(v0 + 432);
  v25 = *(v0 + 312);
  v26 = *(*(v0 + 304) + qword_10022CE98);
  v27 = *(v25 + 80);
  *(v0 + 528) = v27;
  v28 = *(v25 + 96);
  *(v0 + 536) = v28;
  *(v0 + 128) = v27;
  *(v0 + 136) = v24;
  *(v0 + 144) = v28;
  *(v0 + 152) = v23;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel();
  swift_getWitnessTable();
  sub_1001CF790();
  v29 = *(v0 + 408);
  v30 = *(v0 + 304);
  if (v20)
  {
    v97 = v28;

    swift_errorRetain();
    v31 = sub_1001D0E50();
    v32 = sub_1001D1DE0();

    v33 = v27;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v0 + 304);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v100[0] = v37;
      *v35 = 136315394;
      *(v35 + 4) = sub_1000954E0(*(v34 + qword_10022CE80), *(v34 + qword_10022CE80 + 8), v100);
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      *v36 = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s unable to decode json response data, error=%@", v35, 0x16u);
      sub_100024B10(v36);

      sub_100011CF0(v37);
    }

    v39 = *(v0 + 488);
    v40 = *(v0 + 496);
    v41 = *(v0 + 480);
    v42 = *(v0 + 456);
    v43 = *(v0 + 464);
    v45 = *(v0 + 424);
    v44 = *(v0 + 432);
    *(v0 + 160) = v33;
    *(v0 + 168) = v45;
    *(v0 + 176) = v97;
    *(v0 + 184) = v44;
    type metadata accessor for UpdateServerDrivenConfigurationRequest.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();

    v47 = v41;
    v48 = v39;
LABEL_15:
    sub_100011E48(v47, v48);
    v78 = *(v0 + 520);
    v79 = *(v0 + 392);
    v80 = *(v0 + 368);
    v82 = *(v0 + 336);
    v81 = *(v0 + 344);
    v83 = *(v0 + 304);
    (*(v0 + 512))(*(v0 + 400), *(v0 + 376));
    sub_100110FC0(v83);

    v84 = *(v0 + 8);

    return v84();
  }

  v49 = *(v0 + 272);
  v50 = *(v0 + 280);
  v51 = *(v0 + 304);

  v52 = sub_1001D0E50();
  v53 = sub_1001D1DD0();

  if (os_log_type_enabled(v52, v53))
  {
    v98 = v49;
    v54 = *(v0 + 304);
    v55 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v55 = 136315394;
    *(v55 + 4) = sub_1000954E0(*(v54 + qword_10022CE80), *(v54 + qword_10022CE80 + 8), v100);
    *(v55 + 12) = 2080;
    *(v0 + 288) = v98;
    *(v0 + 296) = v50;
    v56 = sub_1001D1820();
    v58 = sub_1000954E0(v56, v57, v100);

    *(v55 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s model decoded, model=%s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v59 = *(v0 + 304);
  v60 = sub_1001CFB70();
  v62 = v61;

  *(v0 + 544) = v60;
  *(v0 + 552) = v62;

  v63 = *(v0 + 408);
  v64 = *(v0 + 304);
  if (v62 >> 60 == 15)
  {
    v65 = sub_1001D0E50();
    v66 = sub_1001D1DE0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 304);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v100[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_1000954E0(*(v67 + qword_10022CE80), *(v67 + qword_10022CE80 + 8), v100);
      _os_log_impl(&_mh_execute_header, v65, v66, "%s unable to decode base64 bag", v68, 0xCu);
      sub_100011CF0(v69);
    }

    v70 = *(v0 + 488);
    v71 = *(v0 + 496);
    v72 = *(v0 + 480);
    v74 = *(v0 + 456);
    v73 = *(v0 + 464);
    v76 = *(v0 + 424);
    v75 = *(v0 + 432);
    *(v0 + 192) = v27;
    *(v0 + 200) = v76;
    *(v0 + 208) = v28;
    *(v0 + 216) = v75;
    type metadata accessor for UpdateServerDrivenConfigurationRequest.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v77 = 2;
    swift_willThrow();

    v47 = v72;
    v48 = v70;
    goto LABEL_15;
  }

  sub_100089C38(v60, v62);
  v86 = sub_1001D0E50();
  v87 = sub_1001D1DD0();

  sub_10002683C(v60, v62);
  if (os_log_type_enabled(v86, v87))
  {
    v88 = *(v0 + 304);
    v89 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v89 = 136315394;
    *(v89 + 4) = sub_1000954E0(*(v88 + qword_10022CE80), *(v88 + qword_10022CE80 + 8), v100);
    *(v89 + 12) = 2080;
    sub_100012038(v60, v62);
    v90 = sub_1001CFB50();
    v92 = v91;
    sub_10002683C(v60, v62);
    v93 = sub_1000954E0(v90, v92, v100);

    *(v89 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v86, v87, "%s base64 bag decoded, pushing update of utf8jsonBag=%s", v89, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 560) = *(**(v0 + 304) + 160);
  v94 = *(v28 + 8);
  v99 = (v94 + *v94);
  v95 = v94[1];
  v96 = swift_task_alloc();
  *(v0 + 568) = v96;
  *v96 = v0;
  v96[1] = sub_10010F574;

  return v99(v60, v62, v27, v28);
}

uint64_t sub_10010F574()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return _swift_task_switch(sub_10010F670, 0, 0);
}

uint64_t sub_10010F670()
{
  v1 = *(v0 + 560);
  v19 = *(v0 + 544);
  v20 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v22 = *(v0 + 512);
  v23 = *(v0 + 520);
  v16 = *(v0 + 480);
  v4 = *(v0 + 456);
  v14 = *(v0 + 496);
  v15 = *(v0 + 464);
  v6 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 416);
  v8 = *(v0 + 400);
  v21 = *(v0 + 392);
  v17 = *(v0 + 376);
  v18 = *(v0 + 488);
  v24 = *(v0 + 368);
  v25 = *(v0 + 344);
  v26 = *(v0 + 336);
  v9 = *(v0 + 304);
  v13 = *(v0 + 424);
  *(v0 + 80) = v13;
  v10 = sub_10003B47C((v0 + 56));
  v6(v10, v9 + v7, v13);
  sub_10010FA78(v9 + v1, (v0 + 56), v3, v2);

  sub_10002683C(v19, v20);
  sub_100011E48(v16, v18);
  sub_100011CF0((v0 + 56));
  v22(v8, v17);
  sub_100110FC0(v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10010F7F8()
{
  v30 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 408);
  v3 = *(v0 + 304);

  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 504);
    v7 = *(v0 + 304);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(*(v7 + qword_10022CE80), *(v7 + qword_10022CE80 + 8), &v29);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s response throwing, error=%@", v8, 0x16u);
    sub_100024B10(v9);

    sub_100011CF0(v10);
  }

  v12 = *(v0 + 504);
  v14 = *(v0 + 456);
  v13 = *(v0 + 464);
  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v17 = *(v0 + 312);
  v18 = *(v17 + 80);
  v19 = *(v17 + 96);
  *(v0 + 96) = v18;
  *(v0 + 104) = v16;
  *(v0 + 112) = v19;
  *(v0 + 120) = v15;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.Error();
  swift_getWitnessTable();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = *(v0 + 584);
  v22 = *(v0 + 392);
  v23 = *(v0 + 368);
  v25 = *(v0 + 336);
  v24 = *(v0 + 344);
  v26 = *(v0 + 304);
  (*(v0 + 576))(*(v0 + 400), *(v0 + 376));
  sub_100110FC0(v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10010FA78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v127 = a1;
  v128 = a3;
  v120 = a2;
  v5 = sub_1001D02E0();
  v121 = *(v5 - 8);
  v122 = v5;
  v6 = *(v121 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v129 = *(v131 - 8);
  v10 = *(v129 + 8);
  v12 = __chkstk_darwin(v131, v11);
  v126 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v117 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v124 = &v117 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v123 = &v117 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v125 = &v117 - v26;
  __chkstk_darwin(v25, v27);
  v29 = &v117 - v28;
  v30 = sub_1001D02F0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30, v33);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1001D0E60();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v41 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 104))(v35, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v30);
  sub_1001D08B0();
  (*(v31 + 8))(v35, v30);
  sub_1001D0170();
  sub_1001D1840();

  LODWORD(v35) = os_variant_has_internal_content();

  if (!v35)
  {
    return (*(v37 + 8))(v41, v36);
  }

  v130 = v41;
  v118 = v37;
  v119 = v36;
  v42 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0420();
  v43 = COERCE_DOUBLE((*(a4 + 40))(v128, a4));
  v44 = v29;
  if ((v45 & 1) != 0 || (v66 = v43, v43 < 0.0) || v43 > 1.0)
  {
    v46 = sub_1001D0E50();
    v47 = sub_1001D1E00();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "With no spillover, deleted environment proposal", v48, 2u);
    }

    v128 = v42;

    v49 = v129;
    v50 = *(v129 + 2);
    v51 = v131;
    v50(v17, v44, v131);
    v52 = v126;
    v50(v126, v44, v51);
    v53 = sub_1001D0E50();
    v54 = sub_1001D1E00();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v132[0] = v127;
      *v55 = 136315394;
      LODWORD(v125) = v54;
      v56 = sub_1001D0570();
      v117 = v44;
      v58 = v57;
      v59 = *(v49 + 1);
      v59(v17, v51);
      v60 = sub_1000954E0(v56, v58, v132);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = sub_1001D0560();
      v63 = v62;
      v59(v52, v51);
      v64 = sub_1000954E0(v61, v63, v132);
      v44 = v117;

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v53, v125, "DefaultConfiguration deleted %s %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v59 = *(v49 + 1);
      v59(v52, v51);
      v59(v17, v51);
    }

    v132[0] = 0;
    v132[1] = 0;
    sub_1001D0570();
    sub_1001D0560();
    sub_1001D1EF0();

    v59(v44, v51);
    return (*(v118 + 8))(v130, v119);
  }

  else
  {
    v67 = v43;
    v68 = v120[3];
    v69 = v120[4];
    sub_100024DC8(v120, v68);
    SystemInfoProtocol.uniqueDeviceIDPercentile.getter(v68, v69);
    v71 = v70;
    v73 = v121;
    v72 = v122;
    v74 = &enum case for TC2Environment.production(_:);
    if (v70 >= v66)
    {
      v74 = &enum case for TC2Environment.carry(_:);
    }

    (*(v121 + 104))(v9, *v74, v122);
    v75 = sub_1001D02B0();
    v77 = v76;
    (*(v73 + 8))(v9, v72);
    swift_bridgeObjectRetain_n();
    v78 = sub_1001D0E50();
    v79 = sub_1001D1E00();

    v80 = os_log_type_enabled(v78, v79);
    v117 = v44;
    v128 = v75;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v132[0] = v82;
      *v81 = 134218498;
      *(v81 + 4) = v71;
      *(v81 + 12) = 2048;
      *(v81 + 14) = v67;
      *(v81 + 22) = 2080;
      *(v81 + 24) = sub_1000954E0(v75, v77, v132);
      _os_log_impl(&_mh_execute_header, v78, v79, "With device_p=%f, spillover=%f, proposed environment=%s", v81, 0x20u);
      sub_100011CF0(v82);
    }

    v83 = v123;
    v84 = v125;
    sub_1001D0420();
    v85 = v129;
    v86 = *(v129 + 2);
    v87 = v131;
    v86(v83, v84, v131);
    v88 = v124;
    v86(v124, v84, v87);

    v89 = sub_1001D0E50();
    v90 = sub_1001D1E00();

    v91 = os_log_type_enabled(v89, v90);
    v127 = v77;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      LODWORD(v123) = v90;
      v94 = v83;
      v126 = v93;
      v132[0] = v93;
      *v92 = 136315650;
      v95 = sub_1001D0570();
      v97 = v96;
      v98 = *(v85 + 1);
      v98(v94, v131);
      v99 = sub_1000954E0(v95, v97, v132);

      *(v92 + 4) = v99;
      *(v92 + 12) = 2080;
      v100 = sub_1001D0560();
      v102 = v101;
      v129 = v98;
      v98(v88, v131);
      v103 = sub_1000954E0(v100, v102, v132);

      *(v92 + 14) = v103;
      *(v92 + 22) = 2080;
      v104 = sub_1000954E0(v128, v77, v132);

      *(v92 + 24) = v104;
      _os_log_impl(&_mh_execute_header, v89, v123, "DefaultConfiguration wrote %s %s = %s", v92, 0x20u);
      swift_arrayDestroy();
      v87 = v131;
    }

    else
    {

      v108 = *(v85 + 1);
      v108(v88, v87);
      v129 = v108;
      v108(v83, v87);
    }

    v105 = v117;
    v106 = v118;
    v107 = v119;
    v109 = v125;
    v110 = sub_1001D0570();
    v112 = v111;
    v134._countAndFlagsBits = sub_1001D0560();
    v114 = v113;
    v133._countAndFlagsBits = v110;
    v133._object = v112;
    v134._object = v114;
    sub_1001D1870(v133, v134);

    v115 = v109;
    v116 = v129;
    v129(v115, v87);
    v116(v105, v87);
    return (*(v106 + 8))(v130, v107);
  }
}

Swift::Int sub_1001105C8()
{
  sub_1001D2580();
  sub_100022968(v2, *v0);
  return sub_1001D25C0();
}

BOOL sub_100110608(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CEC0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  return v4 != 0;
}

uint64_t sub_100110650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1001D2350();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  sub_1001D2300();
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_1001107C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1001D22A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  v14 = sub_100024DC8(a1, a1[3]);
  sub_1001D25E0();
  if (!v5)
  {
    v14 = sub_1001D2250();
    (*(v8 + 8))(v12, v7);
  }

  sub_100011CF0(a1);
  return v14;
}

uint64_t sub_100110970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001109E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100110A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100110AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL sub_100110B30@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100110608(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

BOOL sub_100110B88@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100110608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110BB4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = default argument 2 of NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100110BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100110C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100110C94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001107C0(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

char *sub_100110CF4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001D02F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v11);
  sub_1001D08B0();
  (*(v12 + 8))(v16, v11);
  v17 = qword_10022CE98;
  v18 = sub_1001CF7B0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v5[v17] = sub_1001CF7A0();
  v21 = sub_1001CFDA0();
  sub_1001112FC(&qword_100228AF8, &type metadata accessor for UUID);
  v26 = sub_1001D23A0();
  v27 = v22;
  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  sub_1001D18B0(v28);
  v23 = v27;
  v24 = &v5[qword_10022CE80];
  *v24 = v26;
  v24[1] = v23;
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(*v5 + 160)], a1);
  (*(*(*(v10 + 88) - 8) + 32))(&v5[*(*v5 + 152)], a2);
  (*(*(v21 - 8) + 32))(&v5[qword_10022CE88], a3, v21);
  sub_1000446FC(a4, &v5[qword_10022CE90]);
  return v5;
}

void sub_100110FC0(uint64_t a1)
{

  oslog = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000954E0(*(a1 + qword_10022CE80), *(a1 + qword_10022CE80 + 8), &v6);
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s finished configbag request", v3, 0xCu);
    sub_100011CF0(v4);
  }
}

uint64_t *sub_1001110D4()
{
  v1 = *v0;
  v2 = qword_10022CE78;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_10022CE80 + 8);

  v5 = qword_10022CE88;
  v6 = sub_1001CFDA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_100011CF0((v0 + qword_10022CE90));
  v7 = *(v0 + qword_10022CE98);

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 160));
  return v0;
}

uint64_t sub_10011125C()
{
  sub_1001110D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001112FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100111344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100111428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0E60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001114A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0E60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for BiomeReporter()
{
  result = qword_10022D0F8;
  if (!qword_10022D0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100111564()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001115D0()
{
  sub_1001D0C90();
  sub_100111668();
  result = sub_1001D0CA0();
  if (!v0)
  {
    sub_100024DC8(v2, v2[3]);
    sub_1001D0D80();
    return sub_100011CF0(v2);
  }

  return result;
}

unint64_t sub_100111668()
{
  result = qword_10022D130;
  if (!qword_10022D130)
  {
    sub_1001D0C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022D130);
  }

  return result;
}

uint64_t sub_1001116C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10011170C, 0, 0);
}

uint64_t sub_10011170C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10011181C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x4464726177726F66, 0xEF293A5F28617461, sub_100113D50, v3, &type metadata for () + 8);
}

uint64_t sub_10011181C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100111938;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100013F2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100111938()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_10011199C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v88 = a1;
  v5 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5, v8);
  v83 = &v81 - v9;
  v10 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v81 - v13;
  v15 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  __chkstk_darwin(v15, v17);
  v19 = (&v81 - v18);
  v20 = type metadata accessor for IncomingUserDataReader.State(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100011AC0(&qword_10022D2E8, &qword_1001DE490);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v31);
  v33 = &v81 - v32;
  v34 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v34);
  v35 = *(sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0) + 28);
  v89 = v34;
  v36 = v34 + v35;
  sub_100113C90(v34 + v35, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_26:
      result = sub_1001D2180();
      __break(1u);
      return result;
    }

    v53 = *v24;
    v54 = *(sub_100011AC0(&qword_10022D2F0, &qword_1001DE498) + 48);
    v6[2](v33, v88, v5);
    *&v33[v54] = v53;
    v52 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
    goto LABEL_16;
  }

  v82 = v5;
  if (EnumCaseMultiPayload)
  {
    v81 = v6;
    if (v24[8])
    {
      goto LABEL_26;
    }

    v55 = *v24;
    v56 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
    v57 = *(v56 + 64);
    v90 = v55;
    sub_100113D7C(&v24[v57], v14);
    if (v81[6](v14, 1, v5) != 1)
    {
      goto LABEL_26;
    }

    sub_100113CF4(v36);
    v58 = *(v55 + 24);
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v55 + 16) < v59 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F79D8(isUniquelyReferenced_nonNull_native, v59, 0);
      v55 = v90;
    }

    sub_1000F815C((v55 + 16), v55 + 40, v86, v87);
    v61 = *(v55 + 24);
    v62 = *(v56 + 64);
    *v36 = v55;
    sub_100011F00(v14, &qword_10022D298, &qword_1001DE530);
    *(v36 + 8) = 0;
    if (v61 == 4)
    {
      v6 = v81;
      v5 = v82;
      v81[2]((v36 + v62), v88, v82);
      (v6[7])(v36 + v62, 0, 1, v5);
      swift_storeEnumTagMultiPayload();
      v52 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
      (*(*(v52 - 8) + 56))(v33, 1, 1, v52);
      goto LABEL_17;
    }

    v6 = v81;
    v5 = v82;
    (v81[7])(v36 + v62, 1, 1, v82);
    swift_storeEnumTagMultiPayload();
    v6[2](v33, v88, v5);
    v52 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
    goto LABEL_17;
  }

  v38 = v6;
  sub_100113CF4(v36);
  v39 = *v24;
  v40 = sub_100011AC0(&qword_10022D2E0, &qword_1001DE480);
  v41 = *(v84 + 32);
  v42 = &v24[*(v40 + 48)];
  v81 = v19;
  v43 = v85;
  v41(v19, v42, v85);
  if (*(v39 + 24))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v44 = *(sub_100011AC0(&qword_10022D2D8, &unk_1001DE470) + 64);
  *v36 = v39;
  *(v36 + 8) = 0;
  v6 = v38;
  v45 = v38[7];
  v5 = v82;
  (v45)(v36 + v44, 1, 1, v82);
  swift_storeEnumTagMultiPayload();
  v46 = sub_100011AC0(&qword_10022D2F8, &qword_1001DE4A0);
  v47 = v43;
  v48 = &v33[*(v46 + 48)];
  v49 = *(v46 + 64);
  v19 = v81;
  v41(v33, v81, v47);
  v51 = v86;
  v50 = v87;
  *v48 = v86;
  *(v48 + 1) = v50;
  v6[2](&v33[v49], v88, v5);
  v52 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v52 - 8) + 56))(v33, 0, 1, v52);
  sub_100012038(v51, v50);
LABEL_17:
  os_unfair_lock_unlock(v89);
  sub_10001208C(v33, v30, &qword_10022D2E8, &qword_1001DE490);
  type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
  if ((*(*(v52 - 8) + 48))(v30, 1, v52) != 1)
  {
    v63 = swift_getEnumCaseMultiPayload();
    if (v63)
    {
      if (v63 == 1)
      {
        v64 = v5;
        v65 = *&v30[*(sub_100011AC0(&qword_10022D2F0, &qword_1001DE498) + 48)];
        v66 = v83;
        v6[4](v83, v30, v64);
        v90 = v65;
        sub_1001D1A90();
        (v6[1])(v66, v64);
      }

      else
      {
        v79 = v83;
        v6[4](v83, v30, v5);
        sub_1001D1AA0();
        (v6[1])(v79, v5);
      }
    }

    else
    {
      v67 = sub_100011AC0(&qword_10022D2F8, &qword_1001DE4A0);
      v68 = &v30[*(v67 + 48)];
      v69 = *v68;
      v70 = v68[1];
      v71 = v5;
      v72 = *(v67 + 64);
      v73 = v19;
      v75 = v84;
      v74 = v85;
      v76 = v73;
      (*(v84 + 32))();
      v77 = &v30[v72];
      v78 = v83;
      v6[4](v83, v77, v71);
      v90 = v69;
      v91 = v70;
      sub_100089C38(v69, v70);
      sub_1001D1AA0();
      sub_1001D1AA0();
      sub_10002683C(v69, v70);
      (v6[1])(v78, v71);
      (*(v75 + 8))(v76, v74);
    }
  }

  return sub_100011F00(v33, &qword_10022D2E8, &qword_1001DE490);
}

uint64_t sub_100112354(uint64_t a1)
{
  v3 = sub_100011AC0(&qword_10022D2D0, &qword_1001E1670);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v24 - v11;
  __chkstk_darwin(v10, v13);
  v15 = v24 - v14;
  v16 = (v1 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v16);
  v17 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v16 + *(v17 + 28), a1, v15);
  os_unfair_lock_unlock(v16);
  if (a1)
  {
    sub_10001208C(v15, v12, &qword_10022D2D0, &qword_1001E1670);
    v18 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v12, 1, v18) == 1)
    {
      sub_100011F00(v15, &qword_10022D2D0, &qword_1001E1670);
      v20 = v12;
      return sub_100011F00(v20, &qword_10022D2D0, &qword_1001E1670);
    }

    *&v24[0] = a1;
    swift_errorRetain();
    sub_1001D1A90();
    sub_100011F00(v15, &qword_10022D2D0, &qword_1001E1670);
    return (*(v19 + 8))(v12, v18);
  }

  else
  {
    sub_10001208C(v15, v8, &qword_10022D2D0, &qword_1001E1670);
    v21 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v8, 1, v21) == 1)
    {
      sub_100011F00(v15, &qword_10022D2D0, &qword_1001E1670);
      v20 = v8;
      return sub_100011F00(v20, &qword_10022D2D0, &qword_1001E1670);
    }

    v24[0] = xmmword_1001D6800;
    sub_1001D1AA0();
    sub_100011F00(v15, &qword_10022D2D0, &qword_1001E1670);
    return (*(v22 + 8))(v8, v21);
  }
}

uint64_t sub_100112654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a2;
  v6 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for IncomingUserDataReader.State(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C90(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100113CF4(v16);
      return (*(v7 + 56))(a3, 1, 1, v6);
    }

    goto LABEL_17;
  }

  v32 = a3;
  v33 = v3;
  if (!EnumCaseMultiPayload)
  {
    sub_100113CF4(a1);
    v18 = *v16;
    v19 = sub_100011AC0(&qword_10022D2E0, &qword_1001DE480);
    v20 = *(v7 + 32);
    v20(v11, v16 + *(v19 + 48), v6);
    v16 = *(v18 + 24);

    if (!v16)
    {
      if (v34)
      {
        *a1 = v34;
      }

      swift_storeEnumTagMultiPayload();
      v29 = v32;
      v20(v32, v11, v6);
      (*(v7 + 56))(v29, 0, 1, v6);
      return swift_errorRetain();
    }

    __break(1u);
    goto LABEL_16;
  }

  v31 = *v16;
  v22 = *(v16 + 8);
  v23 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
  v20 = *(v23 + 64);
  if (v22)
  {
LABEL_16:
    sub_100011F00(v20 + v16, &qword_10022D298, &qword_1001DE530);

    goto LABEL_17;
  }

  v24 = v23;
  v25 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v20 + v16, 1, v25) != 1)
  {
LABEL_17:
    result = sub_1001D2180();
    __break(1u);
    return result;
  }

  sub_100113CF4(a1);
  v27 = v34;
  if (v34)
  {
    swift_errorRetain();

    *a1 = v27;
  }

  else
  {
    v28 = *(v24 + 64);
    *a1 = v31;
    *(a1 + 8) = 1;
    (*(v26 + 56))(a1 + v28, 1, 1, v25);
  }

  swift_storeEnumTagMultiPayload();
  return (*(v7 + 56))(v32, 1, 1, v6);
}

uint64_t sub_100112A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v48 - v10;
  v12 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v48 - v19;
  v21 = sub_100011AC0(&qword_10022D300, &qword_1001DE4A8);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v48 - v28;
  v30 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v30);
  v31 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112F78(v30 + *(v31 + 28), a1, v29);
  os_unfair_lock_unlock(v30);
  sub_10001208C(v29, v26, &qword_10022D300, &qword_1001DE4A8);
  Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
  if ((*(*(Action - 8) + 48))(v26, 1, Action) == 1)
  {
    goto LABEL_4;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *&v26[*(sub_100011AC0(&qword_10022D308, &qword_1001DE4B0) + 48)];
    v34 = v50;
    (*(v50 + 32))(v17, v26, v12);
    v51 = v33;
    sub_1001D1A90();
    (*(v34 + 8))(v17, v12);
LABEL_4:
    v35 = &qword_10022D300;
    v36 = &qword_1001DE4A8;
    v37 = v29;
    return sub_100011F00(v37, v35, v36);
  }

  v39 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
  v40 = &v26[*(v39 + 48)];
  v41 = *v40;
  v42 = v40[1];
  v43 = *(v39 + 64);
  v44 = v50;
  (*(v50 + 32))(v20, v26, v12);
  sub_100113D7C(&v26[v43], v11);
  v51 = v41;
  v52 = v42;
  sub_100089C38(v41, v42);
  sub_1001D1AA0();
  v45 = v49;
  sub_10001208C(v11, v49, &qword_10022D298, &qword_1001DE530);
  v46 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    sub_1001D1AA0();
    sub_10002683C(v41, v42);
    sub_100011F00(v11, &qword_10022D298, &qword_1001DE530);
    (*(v44 + 8))(v20, v12);
    sub_100011F00(v29, &qword_10022D300, &qword_1001DE4A8);
    return (*(v47 + 8))(v45, v46);
  }

  sub_10002683C(v41, v42);
  sub_100011F00(v11, &qword_10022D298, &qword_1001DE530);
  (*(v44 + 8))(v20, v12);
  sub_100011F00(v29, &qword_10022D300, &qword_1001DE4A8);
  v37 = v45;
  v35 = &qword_10022D298;
  v36 = &qword_1001DE530;
  return sub_100011F00(v37, v35, v36);
}

uint64_t sub_100112F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v67 - v10;
  v12 = type metadata accessor for IncomingUserDataReader.State(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C90(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v37 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
    v38 = *(v37 + 48);
    v39 = *(v37 + 64);
    v40 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    (*(*(v40 - 8) + 16))(a3, a2, v40);
    *(a3 + v38) = xmmword_1001D6800;
    v41 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    (*(*(v41 - 8) + 56))(a3 + v39, 1, 1, v41);
    Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_32;
    }

    v43 = *v16;
    v44 = *(sub_100011AC0(&qword_10022D308, &qword_1001DE4B0) + 48);
    v45 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    (*(*(v45 - 8) + 16))(a3, a2, v45);
    *(a3 + v44) = v43;
    Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return (*(*(Action - 8) + 56))(a3, 0, 1, Action);
  }

  v69 = a2;
  v70 = v3;
  v18 = *v16;
  v19 = v16[8];
  v20 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
  v21 = *(v20 + 64);
  if ((v19 & 1) == 0)
  {
    sub_100113CF4(a1);
    v71 = v18;
    sub_100113D7C(&v16[v21], v11);
    if (v18[3] < 1)
    {
      sub_100011F00(v11, &qword_10022D298, &qword_1001DE530);
      v59 = *(sub_100011AC0(&qword_10022D2E0, &qword_1001DE480) + 48);
      *a1 = v18;
      v60 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
      (*(*(v60 - 8) + 16))(a1 + v59, v69, v60);
      swift_storeEnumTagMultiPayload();
      v61 = type metadata accessor for IncomingUserDataReader.NextAction(0);
      return (*(*(v61 - 8) + 56))(a3, 1, 1, v61);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100118F58();
      v18 = v71;
    }

    v47 = v18[4];
    v48 = v47 + 1;
    if (!__OFADD__(v47, 1))
    {
      v49 = &v18[2 * v47];
      v50 = v49[5];
      v51 = v49[6];
      v52 = v18[3];
      if (v48 >= v18[2])
      {
        v48 = 0;
      }

      v18[4] = v48;
      if (!__OFSUB__(v52, 1))
      {
        v18[3] = v52 - 1;
        v53 = *(v20 + 64);
        *a1 = v18;
        *(a1 + 8) = 0;
        v54 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
        (*(*(v54 - 8) + 56))(a1 + v53, 1, 1, v54);
        swift_storeEnumTagMultiPayload();
        v55 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
        v56 = (a3 + *(v55 + 48));
        v57 = *(v55 + 64);
        v58 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
        (*(*(v58 - 8) + 16))(a3, v69, v58);
        *v56 = v50;
        v56[1] = v51;
        sub_100113D7C(v11, a3 + v57);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(&v16[v21], 1, v22) == 1)
  {
    sub_100113CF4(a1);
    v71 = v18;
    if (v18[3] < 1)
    {

      swift_storeEnumTagMultiPayload();
      v62 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
      v63 = *(v62 + 48);
      v64 = *(v62 + 64);
      v65 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
      (*(*(v65 - 8) + 16))(a3, v69, v65);
      *(a3 + v63) = xmmword_1001D6800;
      (*(v23 + 56))(a3 + v64, 1, 1, v22);
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100118F58();
      v18 = v71;
    }

    v24 = v18[4];
    v25 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v26 = &v18[2 * v24];
      v27 = v26[5];
      v68 = v26[6];
      v28 = v18[3];
      if (v25 >= v18[2])
      {
        v25 = 0;
      }

      v18[4] = v25;
      if (!__OFSUB__(v28, 1))
      {
        v18[3] = v28 - 1;
        v29 = *(v20 + 64);
        *a1 = v18;
        *(a1 + 8) = 1;
        v30 = *(v23 + 56);
        v30(a1 + v29, 1, 1, v22);
        swift_storeEnumTagMultiPayload();
        v31 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
        v32 = (a3 + *(v31 + 48));
        v33 = v22;
        v34 = *(v31 + 64);
        v35 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
        (*(*(v35 - 8) + 16))(a3, v69, v35);
        v36 = v68;
        *v32 = v27;
        v32[1] = v36;
        v30(a3 + v34, 1, 1, v33);
LABEL_27:
        v66 = type metadata accessor for IncomingUserDataReader.NextAction(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v66 - 8) + 56))(a3, 0, 1, v66);
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_32:
  result = sub_1001D2180();
  __break(1u);
  return result;
}

uint64_t sub_1001137D4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock;
  v2 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100113CF4(v1 + *(v2 + 28));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100113884()
{
  sub_100113914();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100113914()
{
  if (!qword_10022D170)
  {
    type metadata accessor for IncomingUserDataReader.State(255);
    v0 = sub_1001CFF60();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D170);
    }
  }
}

char *sub_10011398C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_1001139BC()
{
  sub_100113A44();
  if (v0 <= 0x3F)
  {
    sub_100113ACC();
    if (v1 <= 0x3F)
    {
      sub_100113B60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100113A44()
{
  if (!qword_10022D278)
  {
    sub_100011DF4(&qword_10022D280, &qword_1001DE438);
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D278);
    }
  }
}

void sub_100113ACC()
{
  if (!qword_10022D290)
  {
    sub_100011DF4(&qword_10022D280, &qword_1001DE438);
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D290);
    }
  }
}

unint64_t sub_100113B60()
{
  result = qword_10022D2A0;
  if (!qword_10022D2A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10022D2A0);
  }

  return result;
}

uint64_t sub_100113BC4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000130E0;

  return sub_1001116C0(a1, a2);
}

uint64_t sub_100113C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingUserDataReader.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113CF4(uint64_t a1)
{
  v2 = type metadata accessor for IncomingUserDataReader.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100113D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100113E0C()
{
  sub_100113E98();
  if (v0 <= 0x3F)
  {
    sub_100113F48(319, &unk_10022D3A0, &qword_10022D288, &unk_1001DE440);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100113E98()
{
  if (!qword_10022D398)
  {
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    sub_100011DF4(qword_100229648, &unk_1001D6B30);
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D398);
    }
  }
}

void sub_100113F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011DF4(a3, a4);
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100113FC8()
{
  sub_100114068();
  if (v0 <= 0x3F)
  {
    sub_100113F48(319, &qword_10022D458, &qword_100227B38, &qword_1001D36D0);
    if (v1 <= 0x3F)
    {
      sub_100114114();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100114068()
{
  if (!qword_10022D450)
  {
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    sub_100011DF4(qword_100229648, &unk_1001D6B30);
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D450);
    }
  }
}

void sub_100114114()
{
  if (!qword_10022D460)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v0 = sub_1001D1AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D460);
    }
  }
}

uint64_t sub_10011418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v52 = a2;
  v9 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v49 - v16;
  v18 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = (&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1001D1C30() & 1) == 0)
  {
    v50 = a4;
    v51 = a3;
    sub_100115794(v5, v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v47 = v50;
        (*(v53 + 16))(v50, v51, v18);
        return (*(v53 + 56))(v47, 0, 1, v18);
      }

      v32 = *v27;
      v31 = v27[1];
      v33 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
      sub_100113D7C(v27 + *(v33 + 48), v14);
      v34 = v32 == a1 && v31 == v52;
      if (!v34 && (sub_1001D2470() & 1) == 0)
      {

        v48 = v50;
        (*(v53 + 16))(v50, v51, v18);
        (*(v53 + 56))(v48, 0, 1, v18);
        return sub_10011572C(v14);
      }

      v35 = v33;
      result = (*(v53 + 48))(v14, 1, v18);
      v37 = v50;
      v36 = v51;
      if (result == 1)
      {
        sub_100115BF0(v5, type metadata accessor for NodeStreamController.StateMachine.State);
        v38 = *(v35 + 48);
        *v5 = v32;
        *(v5 + 1) = v31;
        (*(v53 + 16))(&v5[v38], v36, v18);
        v39 = *(v53 + 56);
        v53 += 56;
        v39(&v5[v38], 0, 1, v18);
        swift_storeEnumTagMultiPayload();
        v39(v37, 1, 1, v18);
        return sub_10011572C(v14);
      }
    }

    else
    {
      v40 = *v27;
      v41 = v52;
      if (!*(*v27 + 16) || (v42 = sub_100006028(a1, v52), (v43 & 1) == 0))
      {
        v44 = *(v53 + 56);
        v44(v17, 1, 1, v18);
        sub_10011572C(v17);
        (*(v53 + 16))(v22, v51, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v40;
        sub_10001AE84(v22, a1, v41, isUniquelyReferenced_nonNull_native);
        v46 = v54;

        sub_100115BF0(v5, type metadata accessor for NodeStreamController.StateMachine.State);
        *v5 = v46;
        swift_storeEnumTagMultiPayload();
        v44(v50, 1, 1, v18);
      }

      (*(v53 + 16))(v17, *(v40 + 56) + *(v53 + 72) * v42, v18);
      (*(v53 + 56))(v17, 0, 1, v18);
      result = sub_10011572C(v17);
      __break(1u);
    }

    __break(1u);
    return result;
  }

  (*(v53 + 16))(a4, a3, v18);
  v28 = *(v53 + 56);

  return v28(a4, 0, 1, v18);
}

uint64_t sub_1001146D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = (&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100115794(v4, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_9:
      v28 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }

    v24 = *v21;
    v23 = v21[1];
    v25 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    sub_100113D7C(v21 + *(v25 + 48), v16);
    if (v24 == a1 && v23 == a2)
    {
    }

    else
    {
      v27 = sub_1001D2470();

      if ((v27 & 1) == 0)
      {
        sub_10011572C(v16);
        goto LABEL_9;
      }
    }

    sub_100115BF0(v4, type metadata accessor for NodeStreamController.StateMachine.State);
    swift_storeEnumTagMultiPayload();
    return sub_100113D7C(v16, a3);
  }

  else
  {
    v33 = *v21;
    sub_1000E4ED4(a1, a2, v13);
    v30 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v13, 1, v30) == 1)
    {

      sub_10011572C(v13);
      return (*(v31 + 56))(a3, 1, 1, v30);
    }

    else
    {
      (*(v31 + 32))(a3, v13, v30);
      sub_100115BF0(v4, type metadata accessor for NodeStreamController.StateMachine.State);
      *v4 = v33;
      swift_storeEnumTagMultiPayload();
      return (*(v31 + 56))(a3, 0, 1, v30);
    }
  }
}

uint64_t sub_100114A1C()
{
  v1 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (v0 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v12 = *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
  sub_100115794(v11 + v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_7:
      os_unfair_lock_unlock(v11);
      goto LABEL_8;
    }

    v14 = v10[1];

    v15 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    sub_100113D7C(v10 + *(v15 + 48), v5);
    v16 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
    sub_10011572C(v5);
    os_unfair_lock_unlock(v11);
    if (v17 != 1)
    {
LABEL_6:
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *(*v10 + 16);

    os_unfair_lock_unlock(v11);
    if (v18)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  sub_100115BF0(v11 + v12, type metadata accessor for NodeStreamController.StateMachine);
  return v0;
}

uint64_t sub_100114C0C()
{
  sub_100114A1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100114C8C()
{
  sub_100114D1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100114D1C()
{
  if (!qword_10022D4D0)
  {
    type metadata accessor for NodeStreamController.StateMachine(255);
    v0 = sub_1001CFF60();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D4D0);
    }
  }
}

char *sub_100114D94()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D550, &qword_1001DE508);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100114DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100114E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100114EE8()
{
  result = type metadata accessor for NodeStreamController.StateMachine.State(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100114F54()
{
  sub_100114FC8();
  if (v0 <= 0x3F)
  {
    sub_10011503C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100114FC8()
{
  if (!qword_10022D668)
  {
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    v0 = sub_1001D1720();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D668);
    }
  }
}

void sub_10011503C()
{
  if (!qword_10022D670)
  {
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D670);
    }
  }
}

uint64_t sub_1001150B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001150D8, 0, 0);
}

uint64_t sub_1001150D8()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1001151E4;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001001E5820, sub_100115B8C, v2, &type metadata for () + 8);
}

uint64_t sub_1001151E4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111938, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100115320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v23 - v15;
  v17 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v18 = v17 + *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
  sub_10011418C(a3, a4, a1, v16);
  os_unfair_lock_unlock(v17);
  sub_1001156BC(v16, v13);
  v19 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_10011572C(v16);
    return sub_10011572C(v13);
  }

  else
  {
    sub_1001D1AC0();
    sub_100115B98();
    v22 = swift_allocError();
    sub_1001D16E0();
    v23[1] = v22;
    sub_1001D1A90();
    sub_10011572C(v16);
    return (*(v20 + 8))(v13, v19);
  }
}

uint64_t sub_100115514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20 - v13;
  v15 = (a1 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v16 = v15 + *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
  sub_1001146D8(a2, a3, v14);
  os_unfair_lock_unlock(v15);
  sub_1001156BC(v14, v11);
  v17 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_10011572C(v14);
    return sub_10011572C(v11);
  }

  else
  {
    sub_1001D1AA0();
    sub_10011572C(v14);
    return (*(v18 + 8))(v11, v17);
  }
}

uint64_t sub_1001156BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011572C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100115794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001157F8(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v35 - v8;
  v10 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v21 = (v20 + *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28));
  sub_100115794(v21, v19);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v36 = *v19;
    v23 = v35;
    sub_1000E4ED4(v35, a2, v14);
    sub_100115BF0(v21, type metadata accessor for NodeStreamController.StateMachine.State);
    v24 = *(sub_100011AC0(&qword_10022D6A0, &qword_1001DE538) + 48);
    *v21 = v23;
    v21[1] = a2;
    sub_100113D7C(v14, v21 + v24);
    swift_storeEnumTagMultiPayload();
    v25 = v36;

    os_unfair_lock_unlock(v20);
    v26 = 1 << *(v25 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v19 = v27 & *(v25 + 64);
    v28 = (v26 + 63) >> 6;
    v35 = v5 + 16;

    for (i = 0; v19; result = (*(v5 + 8))(v9, v4))
    {
      v30 = i;
LABEL_10:
      v31 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v5 + 16))(v9, *(v25 + 56) + *(v5 + 72) * (v31 | (v30 << 6)), v4);
      sub_1001D1AC0();
      sub_100115B98();
      v32 = swift_allocError();
      sub_1001D16E0();
      v36 = v32;
      sub_1001D1A90();
    }

    while (1)
    {
      v30 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
      }

      v19 = *(v25 + 64 + 8 * v30);
      ++i;
      if (v19)
      {
        i = v30;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  if (result == 1)
  {
    v33 = *(v19 + 8);

    v34 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    result = sub_10011572C(v19 + *(v34 + 48));
  }

  __break(1u);
  return result;
}

unint64_t sub_100115B98()
{
  result = qword_1002295E0;
  if (!qword_1002295E0)
  {
    sub_1001D1AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295E0);
  }

  return result;
}

uint64_t sub_100115BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100115C50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100115C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100115CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100115D0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v40 = a4;
  v41 = a3;
  v42 = a2;
  v43 = a5;
  v8 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v38 - v11;
  v13 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19, v21);
  v24 = (&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = &v38 - v26;
  sub_100119C74(v6, &v38 - v26, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = *(v14 + 32);
    v37(v18, v27, v13);
    *v24 = *sub_1001D0110();
    swift_storeEnumTagMultiPayload();

    sub_100119D3C(v24, v6);
    v37(v43, v18, v13);
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 1)
  {
    *v43 = *v27;
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v44 = *v27;
  v29 = v44;
  v30 = &v12[*(v8 + 48)];
  v31 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  result = (*(*(v31 - 8) + 16))(v12, v40, v31);
  v33 = v42;
  *v30 = a1;
  *(v30 + 1) = v33;
  v30[16] = v41 & 1;
  v34 = *(v29 + 24);
  v35 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    sub_100012038(a1, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v29 + 16) < v35 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F7B84(isUniquelyReferenced_nonNull_native, v35, 0);
      v29 = v44;
    }

    sub_1000F81E4((v29 + 16), v29 + ((*(v39 + 80) + 40) & ~*(v39 + 80)), v12);
    sub_100011F00(v12, &qword_10022C908, &qword_1001DD4C0);
    sub_100119CDC(v6, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    *v6 = v29;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001160E0@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v89 = a1;
  v90 = a2;
  v6 = sub_100011AC0(&qword_10022D8D8, &unk_1001DE688);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v85 - v9;
  v95 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v98 = *(v95 - 8);
  v11 = *(v98 + 64);
  v13 = __chkstk_darwin(v95, v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v92 = &v85 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v94 = &v85 - v21;
  __chkstk_darwin(v20, v22);
  v93 = &v85 - v23;
  v24 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v85 - v27;
  v29 = sub_1001D1AC0();
  v97 = *(v29 - 8);
  v30 = *(v97 + 64);
  __chkstk_darwin(v29, v31);
  v91 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v34 = *(*(v33 - 8) + 64);
  v36 = __chkstk_darwin(v33, v35);
  v38 = (&v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36, v39);
  v41 = (&v85 - v40);
  sub_100119C74(v4, &v85 - v40, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v43 = *v41;
    v100 = v43;
    if (sub_1001D1C30())
    {
      v89 = v28;
      v90 = a3;
      v88 = v24;
      v44 = v91;
      sub_1001D16E0();
      sub_100115B98();
      v45 = swift_allocError();
      v46 = *(v97 + 16);
      v46(v47, v44, v29);
      *v38 = v45;
      swift_storeEnumTagMultiPayload();
      v48 = v38;
      v49 = v44;
      sub_100119D3C(v48, v4);
      v50 = swift_allocError();
      v46(v51, v49, v29);
      v52 = v43[3];
      if (v52)
      {
        v86 = v50;
        v87 = v29;
        v99 = &_swiftEmptyArrayStorage;
        sub_1001516F0(0, v52 & ~(v52 >> 63), 0);
        v54 = v88;
        v53 = v89;
        if ((v52 & 0x8000000000000000) == 0)
        {
          v55 = 0;
          v56 = v99;
          v92 = v43 + ((*(v98 + 80) + 40) & ~*(v98 + 80));
          v57 = (v96 + 32);
          while (v55 < v43[3])
          {
            v58 = v52;
            v59 = v43[4];
            if (v55 + v59 >= v43[2])
            {
              v60 = v43[2];
            }

            else
            {
              v60 = 0;
            }

            v61 = v93;
            sub_10001208C(v92 + (v55 + v59 - v60) * *(v98 + 72), v93, &qword_10022C908, &qword_1001DD4C0);
            v62 = v61;
            v63 = v94;
            sub_1000DBEF4(v62, v94, &qword_10022C908, &qword_1001DD4C0);
            sub_100011E48(*(v63 + *(v95 + 48)), *(v63 + *(v95 + 48) + 8));
            v64 = *v57;
            (*v57)(v53, v63, v54);
            v99 = v56;
            v65 = v53;
            v67 = v56[2];
            v66 = v56[3];
            if (v67 >= v66 >> 1)
            {
              sub_1001516F0(v66 > 1, v67 + 1, 1);
              v56 = v99;
            }

            ++v55;
            v56[2] = v67 + 1;
            v64(v56 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v67, v65, v54);
            v52 = v58;
            v53 = v65;
            if (v58 == v55)
            {
              (*(v97 + 8))(v91, v87);

              v81 = v90;
              v50 = v86;
              goto LABEL_25;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }

      (*(v97 + 8))(v49, v29);

      v56 = &_swiftEmptyArrayStorage;
      v81 = v90;
LABEL_25:
      *v81 = v50;
      v81[1] = v56;
      type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    }

    else
    {
      if (v43[3] >= 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100118FF8();
          v43 = v100;
        }

        sub_1000DBEF4(v43 + ((*(v98 + 80) + 40) & ~*(v98 + 80)) + *(v98 + 72) * v43[4], v10, &qword_10022C908, &qword_1001DD4C0);
        v68 = v43[4];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (!v69)
        {
          v71 = v43[3];
          if (v70 >= v43[2])
          {
            v70 = 0;
          }

          v43[4] = v70;
          if (!__OFSUB__(v71, 1))
          {
            v72 = v4;
            v43[3] = v71 - 1;
            v73 = v95;
            (*(v98 + 56))(v10, 0, 1, v95);
            v74 = v92;
            sub_1000DBEF4(v10, v92, &qword_10022C908, &qword_1001DD4C0);
            sub_100119CDC(v72, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
            *v72 = v43;
            swift_storeEnumTagMultiPayload();
            v75 = a3 + *(v73 + 48);
            v76 = v94;
            sub_10001208C(v74, v94, &qword_10022C908, &qword_1001DD4C0);
            sub_100011E48(*(v76 + *(v73 + 48)), *(v76 + *(v73 + 48) + 8));
            v77 = v96;
            (*(v96 + 32))(a3, v76, v24);
            sub_1000DBEF4(v74, v15, &qword_10022C908, &qword_1001DD4C0);
            v78 = &v15[*(v73 + 48)];
            v79 = v78[16];
            *v75 = *v78;
            v75[16] = v79;
            type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
            swift_storeEnumTagMultiPayload();
            return (*(v77 + 8))(v15, v24);
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      (*(v98 + 56))(v10, 1, 1, v95);

      sub_100011F00(v10, &qword_10022D8D8, &unk_1001DE688);
      sub_100119CDC(v4, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      v82 = v4;
      v83 = *(sub_100011AC0(&qword_10022D8F0, &unk_1001DE6C0) + 48);
      v84 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
      (*(*(v84 - 8) + 16))(v82, v89, v84);
      *(v82 + v83) = v90;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a3 = *v41;
    a3[1] = &_swiftEmptyArrayStorage;
    type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_32:
  result = sub_1001D2180();
  __break(1u);
  return result;
}

uint64_t sub_100116A0C@<X0>(uint64_t a1@<X0>, unint64_t **a2@<X8>)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100119C74(v3, v16, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      sub_100119CDC(v3, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      *v3 = a1;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();

      v20 = sub_100119248(v19, sub_100116D3C, 0);

      *a2 = v20;
      v21 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    }

    else
    {
      sub_100119CDC(v16, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      v25 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
      return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }
  }

  else
  {
    v23 = *(v7 + 32);
    v23(v11, v16, v6);
    sub_100119CDC(v3, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v23(a2, v11, v6);
    v24 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
    return swift_errorRetain();
  }
}

uint64_t sub_100116D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12 - v8;
  sub_10001208C(a1, &v12 - v8, &qword_10022C908, &qword_1001DD4C0);
  sub_100011E48(*&v9[*(v5 + 56)], *&v9[*(v5 + 56) + 8]);
  v10 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  return (*(*(v10 - 8) + 32))(a2, v9, v10);
}

uint64_t sub_100116E38()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock;
  v2 = sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  sub_100119CDC(v1 + *(v2 + 28), type metadata accessor for OutgoingUserDataWriter.StateMachine);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100116EFC()
{
  sub_100116F94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100116F94()
{
  if (!qword_10022D6F0)
  {
    type metadata accessor for OutgoingUserDataWriter.StateMachine(255);
    v0 = sub_1001CFF60();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D6F0);
    }
  }
}

char *sub_10011700C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10011703C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100222048;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100117078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100117118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100117188()
{
  result = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001171F4()
{
  sub_1001172A8();
  if (v0 <= 0x3F)
  {
    sub_10011A2B0(319, &unk_10022D8A0, &qword_10022C908, &qword_1001DD4C0, &type metadata accessor for Deque);
    if (v1 <= 0x3F)
    {
      sub_100113B60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001172A8()
{
  if (!qword_10022D890)
  {
    sub_100011DF4(&qword_10022D898, &unk_1001DE650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D890);
    }
  }
}

uint64_t sub_100117320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100117348, 0, 0);
}

uint64_t sub_100117348(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v9 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator);
  v11 = (v9 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator);
  do
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v12 = v10;
    atomic_compare_exchange_strong_explicit(v11, &v12, v10 + 1, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v10;
    v10 = v12;
  }

  while (!v13);
  v14 = *(v8 + 40);
  v15 = *(v8 + 48);
  v16 = swift_task_alloc();
  *(v8 + 56) = v16;
  v17 = *(v8 + 24);
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(v16 + 32) = v10;
  *(v16 + 40) = v17;
  v18 = swift_task_alloc();
  *(v8 + 64) = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v10;
  v19 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v20 = swift_task_alloc();
  *(v8 + 72) = v20;
  *v20 = v8;
  v20[1] = sub_100117490;
  a8 = *(v8 + 40);
  a1 = *(v8 + 16);
  a2 = &unk_1001DE6B0;
  a4 = sub_100119C4C;
  a3 = v16;
  a5 = v18;
  a6 = 0;
  a7 = 0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100117490()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001175D8, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1001175D8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100117644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100117754, 0, 0);
}

uint64_t sub_100117754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100117844;
  v7 = v0[8];
  v6 = v0[9];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000001BLL, 0x80000001001E58A0, sub_100119DA0, v3, v7);
}

uint64_t sub_100117844()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100117C6C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100117960;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100117960()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  v5 = (v0[9] + *(v0[8] + 48));
  v6 = *v5;
  v0[16] = *v5;
  v7 = v5[1];
  v0[17] = v7;
  v8 = *(v5 + 16);
  (*(v2 + 32))(v1);
  v14 = (v4 + *v4);
  v9 = v4[1];
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_100117AA4;
  v11 = v0[7];
  v12 = v0[3];

  return v14(v12, v6, v7, v8);
}

uint64_t sub_100117AA4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100117CE4;
  }

  else
  {
    v3 = sub_100117BB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100117BB8()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  sub_1001D1AA0();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100117C6C()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100117CE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v0[2] = v0[19];
  swift_errorRetain();
  sub_1001D1A90();
  swift_willThrow();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);
  v6 = v0[19];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100117DC0(char *a1, uint64_t a2, uint64_t *a3)
{
  v50 = a3;
  v47 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47, v6);
  v48 = &v46 - v7;
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v46 - v16;
  OutgoingAction = type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
  v19 = *(*(OutgoingAction - 8) + 64);
  v21 = __chkstk_darwin(OutgoingAction, v20);
  v23 = (&v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21, v24);
  v26 = (&v46 - v25);
  v27 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  v28 = v27 + *(sub_100011AC0(&qword_10022D778, &qword_1001DE630) + 28);
  v49 = a1;
  sub_1001160E0(a1, v50, v26);
  os_unfair_lock_unlock(v27);
  sub_100119C74(v26, v23, type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v23;
      v30 = v23[1];
      v51 = *v23;
      swift_errorRetain();
      sub_100011AC0(&qword_10022D898, &unk_1001DE650);
      sub_1001D1A90();
      v32 = *(v30 + 16);
      if (v32)
      {
        v49 = v30;
        v50 = v26;
        v35 = *(v9 + 16);
        v33 = v9 + 16;
        v34 = v35;
        v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
        v37 = *(v33 + 56);
        do
        {
          v34(v14, v36, v8);
          v51 = v31;
          swift_errorRetain();
          sub_1001D1A90();
          (*(v33 - 8))(v14, v8);
          v36 += v37;
          --v32;
        }

        while (v32);

        v26 = v50;
      }

      else
      {
      }
    }
  }

  else
  {
    v38 = v47;
    v39 = v23 + *(v47 + 48);
    v40 = v26;
    v41 = *v39;
    v42 = *(v39 + 1);
    v43 = v39[16];
    (*(v9 + 32))(v17, v23, v8);
    v44 = &v48[*(v38 + 48)];
    (*(v9 + 16))(v48, v17, v8);
    *v44 = v41;
    *(v44 + 1) = v42;
    v26 = v40;
    v44[16] = v43;
    sub_100011AC0(&qword_10022D898, &unk_1001DE650);
    sub_1001D1AA0();
    (*(v9 + 8))(v17, v8);
  }

  return sub_100119CDC(v26, type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction);
}

uint64_t sub_10011819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = (v24 - v17);
  v19 = (a1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock(v19);
  v20 = sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  sub_1001183EC(v19 + *(v20 + 28), a2, v18);
  os_unfair_lock_unlock(v19);
  sub_100119C74(v18, v15, type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction);
  v21 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  if ((*(*(v21 - 8) + 48))(v15, 1, v21) != 1)
  {
    v22 = *v15;
    (*(v5 + 32))(v9, &v15[*(v21 + 48)], v4);
    v24[0] = v22;
    sub_1001D1A90();
    (*(v5 + 8))(v9, v4);
  }

  return sub_100119CDC(v18, type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction);
}

uint64_t sub_1001183EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v6 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v18);
  v20 = &v30 - v19;
  sub_100119C74(a1, &v30 - v19, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100119CDC(v20, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    v21 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
    return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
  }

  else
  {
    v32 = a3;
    v33 = v3;
    v23 = *&v20[*(sub_100011AC0(&qword_10022D8F0, &unk_1001DE6C0) + 48)];
    v31 = *(v7 + 32);
    v31(v11, v20, v6);
    if (v23 == v34)
    {
      sub_1001D1AC0();
      sub_100115B98();
      v24 = swift_allocError();
      sub_1001D16E0();
      *v17 = v24;
      swift_storeEnumTagMultiPayload();
      sub_100119D3C(v17, a1);
      v25 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
      v26 = *(v25 + 48);
      v27 = swift_allocError();
      v28 = v32;
      *v32 = v27;
      sub_1001D16E0();
      v31(v28 + v26, v11, v6);
      return (*(*(v25 - 8) + 56))(v28, 0, 1, v25);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
      v29 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
      return (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
    }
  }
}

uint64_t sub_100118764(uint64_t a1)
{
  v3 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v36 - v7;
  v9 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v36 - v12;
  v14 = sub_100011AC0(&qword_10022D8D0, &qword_1001DE680);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = (&v36 - v21);
  v23 = (v1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  v24 = v23 + *(sub_100011AC0(&qword_10022D778, &qword_1001DE630) + 28);
  sub_100116A0C(a1, v22);
  os_unfair_lock_unlock(v23);
  sub_10001208C(v22, v19, &qword_10022D8D0, &qword_1001DE680);
  v25 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
  if ((*(*(v25 - 8) + 48))(v19, 1, v25) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v19;
      v27 = *(*v19 + 16);
      if (v27)
      {
        v37 = v26;
        v38 = v22;
        v30 = *(v4 + 16);
        v28 = v4 + 16;
        v29 = v30;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v32 = *(v28 + 56);
        do
        {
          v29(v8, v31, v3);
          v39 = a1;
          swift_errorRetain();
          sub_1001D1A90();
          (*(v28 - 8))(v8, v3);
          v31 += v32;
          --v27;
        }

        while (v27);

        v22 = v38;
      }

      else
      {
      }
    }

    else
    {
      v34 = v37;
      v33 = v38;
      (*(v37 + 32))(v13, v19, v38);
      v39 = a1;
      swift_errorRetain();
      sub_1001D1A90();
      (*(v34 + 8))(v13, v33);
    }
  }

  return sub_100011F00(v22, &qword_10022D8D0, &qword_1001DE680);
}

uint64_t sub_100118AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v44 = a5;
  v39 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39, v10);
  v41 = &v38 - v11;
  v12 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17, v19);
  v22 = (&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20, v23);
  v25 = &v38 - v24;
  v26 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  v27 = v26 + *(sub_100011AC0(&qword_10022D778, &qword_1001DE630) + 28);
  v42 = a3;
  v43 = a4;
  v28 = a3;
  v29 = v44;
  sub_100115D0C(v28, a4, v44, a1, v25);
  os_unfair_lock_unlock(v26);
  sub_100119C74(v25, v22, type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v22;
      sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      sub_1001D1A90();
    }
  }

  else
  {
    v31 = v40;
    (*(v40 + 32))(v16, v22, v12);
    v32 = v41;
    v33 = &v41[*(v39 + 48)];
    v34 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    (*(*(v34 - 8) + 16))(v32, a1, v34);
    v35 = v42;
    v36 = v43;
    *v33 = v42;
    *(v33 + 1) = v36;
    v33[16] = v29 & 1;
    sub_100012038(v35, v36);
    sub_1001D1AA0();
    (*(v31 + 8))(v16, v12);
  }

  return sub_100119CDC(v25, type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction);
}

uint64_t sub_100118E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000130E0;

  return sub_100117320(a1, a2, a3, a4);
}

uint64_t sub_100118F58()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1000F8CB8(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100118FF8()
{
  v1 = *v0;
  v2 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_1000F8D8C(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_100119138(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v4;
  v9 = a1(0);
  v10 = *(v8 + 16);
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  sub_100011AC0(a2, a3);
  v13 = *(v11 + 72);
  v14 = swift_allocObject();
  v15 = *(v8 + 24);
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  if (v15 >= 1)
  {
    a4(v14 + 16, v14 + ((v12 + 40) & ~v12), v8 + 16, v8 + ((v12 + 40) & ~v12));
  }

  *v4 = v14;
  return result;
}

unint64_t *sub_100119248(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v93 = a2;
  v94 = a3;
  v104 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v101 = *(v104 - 8);
  v4 = *(v101 + 64);
  __chkstk_darwin(v104, v5);
  v92 = &v87 - v6;
  v7 = sub_100011AC0(&qword_10022D8D8, &unk_1001DE688);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v98 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v87 - v14;
  v17 = __chkstk_darwin(v13, v16);
  v103 = &v87 - v18;
  __chkstk_darwin(v17, v19);
  v99 = &v87 - v20;
  v21 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v97 = (&v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24, v26);
  v102 = &v87 - v27;
  v108 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v106 = *(v108 - 8);
  v28 = *(v106 + 64);
  __chkstk_darwin(v108, v29);
  v105 = &v87 - v30;
  v31 = a1[3];
  if (v31)
  {
    if (v31 <= 0)
    {
      v107 = &_swiftEmptyArrayStorage;
    }

    else
    {
      sub_100011AC0(&qword_10022D8E0, &qword_1001DE698);
      v32 = *(v106 + 72);
      v33 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v107 = swift_allocObject();
      result = j__malloc_size(v107);
      if (!v32)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      if ((result - v33) == 0x8000000000000000 && v32 == -1)
      {
        goto LABEL_70;
      }

      v36 = v107;
      v107[2] = v31;
      v36[3] = 2 * ((result - v33) / v32);
    }
  }

  else
  {
    v107 = &_swiftEmptyArrayStorage;
  }

  v37 = v107[3];

  v38 = *(v101 + 80);
  v39 = a1[4];
  v40 = a1[3] + v39;
  if (a1[2] < v40)
  {
    v40 = a1[2];
  }

  v41 = *(v106 + 80);
  v109 = a1;
  v110 = v39;
  v111 = v40;
  if (v31 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v87 = v41;
  v88 = (v41 + 32) & ~v41;
  v42 = v107 + v88;
  v43 = v37 >> 1;
  v100 = (v38 + 40) & ~v38;
  if (v31)
  {
    v91 = (v101 + 56);
    v95 = (v106 + 56);
    v96 = (v101 + 48);
    v44 = (v106 + 48);
    v90 = v106 + 32;
    v43 -= v31;

    v89 = v15;
    while (1)
    {
      v46 = v110;
      if (v110 != v111)
      {
        goto LABEL_20;
      }

      if (sub_1000FA2C0(v45))
      {
        break;
      }

      v47 = 1;
LABEL_22:
      v48 = 1;
      v49 = v104;
      (*v91)(v15, v47, 1, v104);
      v50 = v15;
      v51 = v98;
      sub_1000DBEF4(v50, v98, &qword_10022D8D8, &unk_1001DE688);
      v52 = (*v96)(v51, 1, v49);
      v53 = v97;
      if (v52 != 1)
      {
        v54 = v92;
        sub_1000DBEF4(v98, v92, &qword_10022C908, &qword_1001DD4C0);
        v93(v54);
        sub_100011F00(v54, &qword_10022C908, &qword_1001DD4C0);
        v48 = 0;
      }

      v55 = v48;
      v56 = v108;
      (*v95)(v53, v55, 1, v108);
      result = (*v44)(v53, 1, v56);
      if (result == 1)
      {
        goto LABEL_71;
      }

      v57 = v106;
      v45 = (*(v106 + 32))(v42, v53, v108);
      v42 += *(v57 + 72);
      --v31;
      v58 = v99;
      v15 = v89;
      if (!v31)
      {
        goto LABEL_28;
      }
    }

    v46 = v110;
LABEL_20:
    v110 = v46 + 1;
    sub_10001208C(v109 + v100 + *(v101 + 72) * v46, v15, &qword_10022C908, &qword_1001DD4C0);
    v47 = 0;
    goto LABEL_22;
  }

  v58 = v99;
LABEL_28:
  v97 = (v101 + 48);
  v98 = (v101 + 56);
  v95 = (v106 + 48);
  v96 = (v106 + 56);
  v59 = (v106 + 32);
  while (1)
  {
    v60 = v110;
    if (v110 != v111)
    {
      goto LABEL_32;
    }

    if (sub_1000FA2C0(v45))
    {
      v60 = v110;
LABEL_32:
      v110 = v60 + 1;
      sub_10001208C(v109 + v100 + *(v101 + 72) * v60, v58, &qword_10022C908, &qword_1001DD4C0);
      v61 = 0;
      goto LABEL_34;
    }

    v61 = 1;
LABEL_34:
    v62 = v104;
    (*v98)(v58, v61, 1, v104);
    v63 = v103;
    sub_1000DBEF4(v58, v103, &qword_10022D8D8, &unk_1001DE688);
    if ((*v97)(v63, 1, v62) != 1)
    {
      v64 = v92;
      sub_1000DBEF4(v103, v92, &qword_10022C908, &qword_1001DD4C0);
      v93(v64);
      sub_100011F00(v64, &qword_10022C908, &qword_1001DD4C0);
    }

    v65 = v102;
    v66 = v108;
    (*v96)(v102);
    if ((*v95)(v65, 1, v66) == 1)
    {
      break;
    }

    v67 = *v59;
    result = (*v59)(v105, v65, v108);
    if (v43)
    {
      v68 = v107;
      v69 = __OFSUB__(v43--, 1);
      if (v69)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v70 = v107[3];
      if (((v70 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_64;
      }

      v71 = v70 & 0xFFFFFFFFFFFFFFFELL;
      if (v71 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v71;
      }

      sub_100011AC0(&qword_10022D8E0, &qword_1001DE698);
      v73 = *(v106 + 72);
      v74 = v88;
      v68 = swift_allocObject();
      result = j__malloc_size(v68);
      if (!v73)
      {
        goto LABEL_65;
      }

      v75 = result - v74;
      if ((result - v74) == 0x8000000000000000 && v73 == -1)
      {
        goto LABEL_66;
      }

      v77 = v75 / v73;
      v68[2] = v72;
      v68[3] = 2 * (v75 / v73);
      v78 = v68 + v74;
      v79 = v107[3] >> 1;
      v80 = v79 * v73;
      if (v107[2])
      {
        if (v68 < v107 || v78 >= v107 + v88 + v80)
        {
          v82 = v107[3] >> 1;
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v68 != v107)
        {
          v81 = v107[3] >> 1;
          swift_arrayInitWithTakeBackToFront();
        }

        v107[2] = 0;
      }

      v42 = &v78[v80];
      v83 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - v79;

      v58 = v99;
      v69 = __OFSUB__(v83, 1);
      v43 = v83 - 1;
      if (v69)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v45 = v67(v42, v105, v108);
    v42 += *(v106 + 72);
    v107 = v68;
  }

  result = sub_100011F00(v65, &qword_10022D298, &qword_1001DE530);
  v84 = v107[3];
  if (v84 >= 2)
  {
    v85 = v84 >> 1;
    v69 = __OFSUB__(v85, v43);
    v86 = v85 - v43;
    if (v69)
    {
      goto LABEL_68;
    }

    v107[2] = v86;
  }

  return v107;
}

uint64_t sub_100119B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000130E0;

  return sub_100117644(a1, v5, v6, v7, v8);
}

uint64_t sub_100119C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100119CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100119D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100119DE8()
{
  sub_100119E5C();
  if (v0 <= 0x3F)
  {
    sub_100113B60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100119E5C()
{
  if (!qword_10022D978)
  {
    sub_100011DF4(&qword_10022C908, &qword_1001DD4C0);
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v0 = sub_1001D1AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_10022D978);
    }
  }
}

void sub_100119EE4()
{
  sub_100119F70();
  if (v0 <= 0x3F)
  {
    sub_10011A180(319, &qword_10022DA30, &unk_10022DA38, &qword_1001DE708);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100119F70()
{
  if (!qword_10022DA28)
  {
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022DA28);
    }
  }
}

uint64_t sub_100119FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011A084(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10011A110()
{
  sub_10011A180(319, &unk_10022DAE8, &qword_10022D898, &unk_1001DE650);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10011A180(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    sub_100011DF4(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10011A210()
{
  sub_100119E5C();
  if (v0 <= 0x3F)
  {
    sub_10011A2B0(319, &unk_10022DB90, &qword_100227B38, &qword_1001D36D0, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10011A2B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100011DF4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10011A314(uint64_t a1)
{
  v33 = *(a1 + 80);
  v35 = *(a1 + 88);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);
  v32 = *(a1 + 112);
  v41 = *(a1 + 128);
  type metadata accessor for RequestMetrics.State();
  v1 = sub_1001CFF60();
  if (v2 <= 0x3F)
  {
    v34 = *(v1 - 8) + 64;
    v3 = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v36 = *(v3 - 8) + 64;
      v5 = sub_1001CFDA0();
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        v8 = sub_1001CFD60();
        if (v9 <= 0x3F)
        {
          v39 = *(v8 - 8) + 64;
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          if (v11 <= 0x3F)
          {
            v40 = *(AssociatedTypeWitness - 8) + 64;
            sub_1001234B0(319, qword_10022DC40, &type metadata accessor for UUID, &type metadata accessor for Optional);
            if (v13 <= 0x3F)
            {
              v42 = *(v12 - 8) + 64;
              v14 = sub_1001D08A0();
              if (v15 <= 0x3F)
              {
                v43 = *(v14 - 8) + 64;
                v16 = swift_checkMetadataState();
                if (v17 <= 0x3F)
                {
                  v44 = *(v16 - 8) + 64;
                  v18 = sub_1001CFDD0();
                  if (v19 <= 0x3F)
                  {
                    v45 = *(v18 - 8) + 64;
                    v20 = sub_1001D0E60();
                    if (v21 <= 0x3F)
                    {
                      v46 = *(v20 - 8) + 64;
                      sub_1001234B0(319, &qword_100227C88, type metadata accessor for ThimbledEvent, &type metadata accessor for AsyncStream.Continuation);
                      if (v23 <= 0x3F)
                      {
                        v47 = *(v22 - 8) + 64;
                        v24 = sub_1001D0DF0();
                        if (v25 <= 0x3F)
                        {
                          v48 = *(v24 - 8) + 64;
                          v26 = sub_1001D0DC0();
                          if (v27 <= 0x3F)
                          {
                            v49 = *(v26 - 8) + 64;
                            v28 = sub_1001D1F00();
                            if (v29 <= 0x3F)
                            {
                              v50 = *(v28 - 8) + 64;
                              v30 = swift_checkMetadataState();
                              if (v31 <= 0x3F)
                              {
                                v51 = *(v30 - 8) + 64;
                                swift_initClassMetadata2();
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
      }
    }
  }
}

uint64_t sub_10011A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[99] = v5;
  v6[98] = a5;
  v6[97] = a4;
  v6[96] = a3;
  v6[95] = a2;
  v6[89] = a1;
  v7 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v6[100] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v9 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v6[103] = swift_task_alloc();
  v10 = sub_1001D20D0();
  v6[104] = v10;
  v11 = *(v10 - 8);
  v6[105] = v11;
  v6[106] = *(v11 + 64);
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v12 = sub_1001D20F0();
  v6[109] = v12;
  v13 = *(v12 - 8);
  v6[110] = v13;
  v6[111] = *(v13 + 64);
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  v14 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v6[114] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[115] = swift_task_alloc();
  v16 = sub_1001D00F0();
  v6[116] = v16;
  v17 = *(v16 - 8);
  v6[117] = v17;
  v18 = *(v17 + 64) + 15;
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v19 = sub_1001CFD60();
  v6[120] = v19;
  v20 = *(v19 - 8);
  v6[121] = v20;
  v21 = *(v20 + 64) + 15;
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v22 = sub_1001D0040();
  v6[125] = v22;
  v23 = *(v22 - 8);
  v6[126] = v23;
  v24 = *(v23 + 64) + 15;
  v6[127] = swift_task_alloc();
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v25 = sub_1001CFFB0();
  v6[130] = v25;
  v26 = *(v25 - 8);
  v6[131] = v26;
  v27 = *(v26 + 64) + 15;
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();

  return _swift_task_switch(sub_10011ABC4, 0, 0);
}

uint64_t sub_10011ABC4()
{
  v1 = v0[132];
  sub_100012038(v0[97], v0[98]);
  sub_1001CFFA0();
  v2 = v0[113];
  v3 = v0[99];
  (*(v0[131] + 32))(v0[133], v0[132], v0[130]);
  v4 = swift_task_alloc();
  v0[134] = v4;
  *(v4 + 16) = v3;
  sub_1001D20E0();

  return _swift_task_switch(sub_10011AE24, 0, 0);
}

uint64_t sub_10011AE24()
{
  v34 = *(v0 + 920);
  v1 = *(v0 + 904);
  v27 = *(v0 + 896);
  v28 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v29 = *(v0 + 848);
  v30 = *(v0 + 1072);
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v31 = *(v0 + 800);
  v32 = *(v0 + 912);
  v33 = *(v0 + 792);
  sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  *(v0 + 696) = 0x158E460913D00000;
  *(v0 + 704) = 1;
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  *(v0 + 1080) = v9;
  *(v0 + 1088) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v27, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v28 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v27, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  *(v0 + 1096) = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1001282CC;
  v15[4] = v30;
  v16 = swift_allocObject();
  *(v0 + 1104) = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = *(v32 + 48);
  *(v0 + 1128) = v17;
  v18 = *(v32 + 64);
  *(v0 + 1132) = v18;
  v19 = *(v31 + 44);
  v20 = async function pointer to Validator.validate(bundle:)[1];
  v21 = swift_task_alloc();
  *(v0 + 1112) = v21;
  v22 = sub_1001D0020();
  v23 = sub_100128614(&qword_1002295A8, &type metadata accessor for NodeValidator);
  *v21 = v0;
  v21[1] = sub_10011B24C;
  v24 = *(v0 + 1064);
  v25 = *(v0 + 920);

  return Validator.validate(bundle:)(v25, v34 + v17, v34 + v18, v24, v22, v23);
}

uint64_t sub_10011B24C()
{
  v2 = *(*v1 + 1112);
  v5 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v3 = sub_10011BCA0;
  }

  else
  {
    v3 = sub_10011B360;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10011B360()
{
  v1 = *(v0 + 1096);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10011B414()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v6 = v0[113];
  v7 = v0[110];
  v8 = v0[109];
  v9 = v0[108];
  v10 = v0[104];

  v4(v9, v10);
  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_10011B4F4, 0, 0);
}

uint64_t sub_10011B4F4()
{
  v117 = v0;
  v97 = *(v0 + 1128);
  v105 = *(v0 + 1032);
  v106 = *(v0 + 1132);
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v112 = *(v0 + 1024);
  v114 = *(v0 + 984);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v109 = *(v0 + 944);
  v7 = *(v0 + 936);
  v8 = *(v0 + 928);
  v9 = *(v0 + 920);
  v100 = *(v0 + 792);
  v102 = *(v0 + 816);
  (*(v1 + 32))();
  (*(v4 + 32))(v3, v9 + v97, v5);
  (*(v7 + 32))(v6, v9 + v106, v8);
  sub_10001208C(v100, v102, &qword_100229520, &unk_1001DEF70);
  v103 = *(v1 + 16);
  v103(v112, v105, v2);
  (*(v7 + 16))(v109, v6, v8);
  v113 = *(v4 + 16);
  v113(v114, v3, v5);
  v10 = sub_1001D0E50();
  v11 = sub_1001D1E00();
  v107 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1024);
  if (v12)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1008);
    v16 = *(v0 + 1000);
    v93 = *(v0 + 984);
    v87 = *(v0 + 976);
    v101 = *(v0 + 968);
    v89 = *(v0 + 960);
    v85 = *(v0 + 944);
    v96 = *(v0 + 936);
    v98 = *(v0 + 928);
    v17 = *(v0 + 816);
    v18 = *(v0 + 800);
    v19 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v19 = 136446978;
    v20 = v17 + *(v18 + 36);
    v21 = sub_1001D02B0();
    v91 = v11;
    v23 = v22;
    sub_100011F00(v17, &qword_100229520, &unk_1001DEF70);
    v24 = sub_1000954E0(v21, v23, v116);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v103(v14, v13, v16);
    v25 = sub_1001D1820();
    v27 = v26;
    v110 = *(v15 + 8);
    v110(v13, v16);
    v28 = sub_1000954E0(v25, v27, v116);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    sub_1001D00D0();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date);
    v29 = sub_1001D23A0();
    v31 = v30;
    v32 = *(v101 + 8);
    v32(v87, v89);
    v33 = v98;
    v99 = *(v96 + 8);
    v99(v85, v33);
    v34 = sub_1000954E0(v29, v31, v116);

    *(v19 + 24) = v34;
    *(v19 + 32) = 2080;
    v35 = sub_1001D23A0();
    v37 = v36;
    v104 = v32;
    v32(v93, v89);
    v38 = sub_1000954E0(v35, v37, v116);

    *(v19 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v107, v91, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v19, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v39 = *(v0 + 1008);
    v111 = *(v0 + 1000);
    v40 = *(v0 + 984);
    v41 = *(v0 + 968);
    v42 = *(v0 + 960);
    v43 = *(v0 + 944);
    v44 = *(v0 + 936);
    v45 = *(v0 + 928);
    v46 = *(v0 + 816);

    v104 = *(v41 + 8);
    v104(v40, v42);
    v99 = *(v44 + 8);
    v99(v43, v45);
    v47 = v111;
    v110 = *(v39 + 8);
    v110(v13, v47);
    sub_100011F00(v46, &qword_100229520, &unk_1001DEF70);
  }

  v77 = *(v0 + 1064);
  v78 = *(v0 + 1056);
  v75 = *(v0 + 1048);
  v76 = *(v0 + 1040);
  v48 = *(v0 + 1032);
  v79 = *(v0 + 1024);
  v80 = *(v0 + 1016);
  v74 = *(v0 + 1000);
  v49 = *(v0 + 992);
  v81 = *(v0 + 984);
  v82 = *(v0 + 976);
  v50 = *(v0 + 960);
  v51 = *(v0 + 952);
  v70 = *(v0 + 928);
  v83 = *(v0 + 944);
  v84 = *(v0 + 920);
  v86 = *(v0 + 904);
  v88 = *(v0 + 896);
  v90 = *(v0 + 864);
  v92 = *(v0 + 856);
  v94 = *(v0 + 824);
  v95 = *(v0 + 816);
  v108 = *(v0 + 808);
  v52 = *(v0 + 792);
  v72 = *(v0 + 776);
  v73 = *(v0 + 784);
  v71 = *(v0 + 768);
  v69 = *(v0 + 760);
  v53 = *(v0 + 712);
  v54 = sub_100079920();
  v67 = v55;
  v68 = v54;
  v56 = type metadata accessor for ValidatedProxiedAttestation();
  v113(v53 + v56[6], v49, v50);
  v57 = v51;
  v115 = sub_1001D00E0();
  v59 = v58;
  v60 = sub_1001D00C0();
  v62 = v61;
  v99(v57, v70);
  v104(v49, v50);
  v110(v48, v74);
  *v53 = v69;
  v53[1] = v71;
  v53[2] = v72;
  v53[3] = v73;
  v53[4] = v68;
  v53[5] = v67;
  v63 = (v53 + v56[7]);
  *v63 = v115;
  v63[1] = v59;
  v64 = (v53 + v56[8]);
  *v64 = v60;
  v64[1] = v62;

  sub_100012038(v72, v73);
  (*(v75 + 8))(v77, v76);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10011BCA0()
{
  v1 = *(v0 + 1096);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10011BD54()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[113];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[104];

  v4(v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10011BE20, 0, 0);
}

uint64_t sub_10011BE20()
{
  v46 = v0;
  v1 = v0[140];
  v2 = v0[134];
  v3 = v0[101];
  v4 = v0[99];

  sub_10001208C(v4, v3, &qword_100229520, &unk_1001DEF70);
  swift_errorRetain();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[140];
    v8 = v0[101];
    v9 = v0[100];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v10 = 136446466;
    v13 = v8 + *(v9 + 36);
    v14 = sub_1001D02B0();
    v16 = v15;
    sub_100011F00(v8, &qword_100229520, &unk_1001DEF70);
    v17 = sub_1000954E0(v14, v16, &v45);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "unable to verify attestation, environment=%{public}s error=%@", v10, 0x16u);
    sub_100011F00(v11, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v12);
  }

  else
  {
    v19 = v0[101];

    sub_100011F00(v19, &qword_100229520, &unk_1001DEF70);
  }

  v20 = v0[140];
  v21 = v0[133];
  v22 = v0[131];
  v23 = v0[130];
  swift_willThrow();
  (*(v22 + 8))(v21, v23);
  v44 = v0[140];
  v24 = v0[133];
  v25 = v0[132];
  v26 = v0[129];
  v27 = v0[128];
  v28 = v0[127];
  v29 = v0[124];
  v30 = v0[123];
  v31 = v0[122];
  v32 = v0[119];
  v33 = v0[118];
  v36 = v0[115];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[108];
  v40 = v0[107];
  v41 = v0[103];
  v42 = v0[102];
  v43 = v0[101];

  v34 = v0[1];

  return v34();
}

void sub_10011C16C()
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

uint64_t sub_10011C284(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001D0200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v11 + 8))(v15, a1);
        return 0x2074736575716552;
      }

      else
      {
        (*(v11 + 8))(v15, a1);
        return 0xD000000000000016;
      }
    }

    else
    {
      (*(v11 + 8))(v15, a1);
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
    (*(v5 + 32))(v10, v15, v4);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1001D2030(18);

    v19 = 0x282064656C696146;
    v20 = 0xEF203A726F727265;
    sub_100128614(&qword_10022E2F8, &type metadata accessor for PrivateCloudComputeError);
    v21._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    sub_1001D18B0(v22);
    v18 = v19;
    (*(v5 + 8))(v10, v4);
    return v18;
  }
}

uint64_t sub_10011C5EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      return 0x6C65732065646F4ELL;
    }

    else
    {
      sub_1001D2030(32);

      v4 = 0xD00000000000001DLL;
      if (!__OFSUB__(0x10000, a1))
      {
        v6._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v6);

        goto LABEL_8;
      }

      __break(1u);
    }
  }

  else if (a2 == 2)
  {
    return 0x64656873696E6946;
  }

  else
  {
    if (a2 == 3)
    {
      v4 = 0;
      sub_1001D2030(18);
      v5._countAndFlagsBits = 0x282064656C696146;
      v5._object = 0xEF203A726F727265;
      sub_1001D18B0(v5);
      swift_getErrorValue();
      sub_1001D2440();
LABEL_8:
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      sub_1001D18B0(v7);
      return v4;
    }

    if (a1)
    {
      return 0x656B6F5468747541;
    }

    else
    {
      return 0x696C616974696E49;
    }
  }

  return result;
}

uint64_t sub_10011C7CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) <= 2)
  {
    if (!v4)
    {
      return 0xD000000000000019;
    }

    if (v4 == 1)
    {
      return 0xD000000000000010;
    }

    sub_1001D2030(17);

    v9 = 0x6E69766965636552;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    goto LABEL_11;
  }

  if (v4 == 3)
  {
    return 0x64656873696E6946;
  }

  if (v4 == 4)
  {
    v9 = 0;
    sub_1001D2030(18);
    v10._countAndFlagsBits = 0x282064656C696146;
    v10._object = 0xEF203A726F727265;
    sub_1001D18B0(v10);
    swift_getErrorValue();
    sub_1001D2440();
    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
LABEL_11:
    sub_1001D18B0(v6);
    return v9;
  }

  return 0x696C616974696E49;
}

uint64_t sub_10011C968(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    return a4 >> 60 == 15;
  }

  if (a4 >> 60 == 15)
  {
    return 0;
  }

  return sub_1000A1A5C(a1, a2, a3, a4);
}

uint64_t sub_10011C9FC(unint64_t a1, uint64_t a2)
{
  v2 = 0x6465696669726576;
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      return 0x64656873696E6966;
    }

    else
    {
      v5 = 0x6966697265766E75;
      if (a1 ^ 0xC000000000000008 | a2)
      {
        v2 = 0x79654B746E6573;
      }

      if (a1 ^ 0xC000000000000000 | a2)
      {
        v5 = 0x6E69796669726576;
      }

      if (a1 <= 0xC000000000000007)
      {
        return v5;
      }

      else
      {
        return v2;
      }
    }
  }

  else if (v3)
  {
    return 0x6E69766965636572;
  }

  else
  {
    return 0x6465696669726576;
  }
}

uint64_t sub_10011CB2C(uint64_t a1)
{
  v1 = 0x6465696669726576;
  v2 = 0x6465696669726576;
  if (a1 == 1)
  {
    v2 = 0x6E69796669726576;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6966697265766E75;
  }
}

uint64_t sub_10011CBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_1001D20D0();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10011CCB0, 0, 0);
}

uint64_t sub_10011CCB0()
{
  v1 = v0[21];
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 304);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10011CDAC;
  v5 = v0[22];

  return sub_10011D52C((v0 + 9), "FetchOTT", 8, 2, v1 + v3, v1 + v2, v5);
}

uint64_t sub_10011CDAC()
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10011CED4, 0, 0);
  }
}

void sub_10011CED4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(*v5 + 184);
  v7 = *(*v5 + 152);
  sub_1001D20F0();
  sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v10);
  v11 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v12 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v12;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  sub_10011DA10(v10 + v11, v0 + 16, v9, v8);
  os_unfair_lock_unlock(v10);
  if (!v1)
  {
    v13 = *(v0 + 72);
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);
    if (*(v0 + 120))
    {
      *(v0 + 152) = v13;
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      swift_willThrowTypedImpl();
      sub_1001286C4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
    }

    else
    {
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      v21 = *(v0 + 112);
      v22 = *(v0 + 160);
      *v22 = v13;
      v22[1] = v17;
      v22[2] = v18;
      v22[3] = v19;
      v22[4] = v20;
      v22[5] = v21;
      sub_100012038(v13, v17);
      sub_100012038(v18, v19);
      sub_100012038(v20, v21);
      sub_1001286C4(v13, v17, v18, v19, v20, v21, 0);
    }

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t sub_10011D1CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10011D1EC, 0, 0);
}

uint64_t sub_10011D1EC()
{
  v1 = *(v0[9] + *(*v0[9] + 328));
  v2 = sub_10007A850();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10011D2AC;

  return sub_10007AB70((v0 + 2), v2);
}

uint64_t sub_10011D2AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  v4 = *(*v1 + 32);
  *(v2 + 104) = *(v2 + 16);
  *(v2 + 96) = v0;
  *(v2 + 120) = v4;
  *(v2 + 136) = *(v2 + 48);

  if (v0)
  {
    v5 = sub_10011D468;
  }

  else
  {
    v5 = sub_10011D3D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10011D3D4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 64);
  v3 = *(v0 + 96) != 0;
  v4 = *(v0 + 120);
  v5 = *(v0 + 136);
  *v2 = *(v0 + 104);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10011D468()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = sub_100089D84(v1);
  swift_willThrow();

  v4 = *(v0 + 64);
  v5 = *(v0 + 96) != 0;
  *v4 = v3;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  *(v4 + 48) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10011D52C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 120) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_1001D0DC0();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10011D608, 0, 0);
}

uint64_t sub_10011D608()
{
  v1 = *(v0 + 56);
  v2 = sub_1001D0DE0();
  v3 = sub_1001D1E90();
  result = sub_1001D1ED0();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 120) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v8, v5, "", v7, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 64);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 48), *(v0 + 72));
  v10 = sub_1001D0E30();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_1001D0E20();

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_10011D7CC;
  v14 = *(v0 + 64);
  v15 = *(v0 + 24);

  return sub_10011D1CC(v15, v14);
}

uint64_t sub_10011D7CC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10011D978;
  }

  else
  {
    v3 = sub_10011D8E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10011D8E0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  sub_100124054(*(v0 + 56), *(v0 + 32), *(v0 + 40), *(v0 + 120));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011D978()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  sub_100124054(*(v0 + 56), *(v0 + 32), *(v0 + 40), *(v0 + 120));

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4();
}

uint64_t sub_10011DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 48))
  {
    v8 = *a2;
    v18 = *a2;
    sub_10001208C(a2, v16, qword_10022E338, &qword_1001DEFF8);
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    if (swift_dynamicCast())
    {
      v9 = v17;
      if (*(v17 + 16))
      {
        v8 = *(v17 + 32);
        swift_errorRetain();
        sub_100011F00(a2, qword_10022E338, &qword_1001DEFF8);
      }

      else
      {
        v12 = v16[56];
        v13 = v16[57];
        sub_100089BE4();
        v8 = swift_allocError();
        *v14 = v12;
        *(v14 + 1) = v13;
        *(v14 + 8) = v9;
        sub_100011F00(a2, qword_10022E338, &qword_1001DEFF8);
      }
    }

    v15 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 104);
    result = sub_100128734(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24));
    *v15 = v8;
    *(v15 + 8) = a3;
    *(v15 + 16) = a4;
    *(v15 + 24) = 1;
  }

  else
  {
    v10 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 104);
    result = sub_100128734(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24));
    *v10 = a3;
    *(v10 + 8) = a4;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
  }

  return result;
}

uint64_t sub_10011DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[214] = a6;
  v6[213] = a5;
  v6[212] = a4;
  v6[211] = a3;
  v6[210] = a2;
  v6[209] = a1;
  v9 = *(*(sub_100011AC0(&qword_100227DE0, &qword_1001D3B00) - 8) + 64) + 15;
  v6[215] = swift_task_alloc();
  v10 = type metadata accessor for ThimbledEvent();
  v6[216] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[217] = swift_task_alloc();
  v12 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v6[218] = v12;
  v13 = *(v12 - 8);
  v6[219] = v13;
  v14 = *(v13 + 64) + 15;
  v6[220] = swift_task_alloc();
  v15 = sub_1001CFDD0();
  v6[221] = v15;
  v16 = *(v15 - 8);
  v6[222] = v16;
  v17 = *(v16 + 64) + 15;
  v6[223] = swift_task_alloc();
  v6[224] = swift_task_alloc();
  v18 = sub_1001CFDA0();
  v6[225] = v18;
  v19 = *(v18 - 8);
  v6[226] = v19;
  v20 = *(v19 + 64) + 15;
  v6[227] = swift_task_alloc();
  v6[228] = swift_task_alloc();
  v21 = sub_1001CFD60();
  v6[229] = v21;
  v22 = *(v21 - 8);
  v6[230] = v22;
  v23 = *(v22 + 64) + 15;
  v6[231] = swift_task_alloc();
  v6[232] = swift_task_alloc();
  v24 = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  v6[233] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v6[234] = swift_task_alloc();
  v6[235] = swift_task_alloc();
  v6[236] = swift_task_alloc();
  v6[237] = swift_task_alloc();
  v6[238] = swift_task_alloc();
  v26 = sub_1001D20D0();
  v6[239] = v26;
  v27 = *(v26 - 8);
  v6[240] = v27;
  v28 = *(v27 + 64) + 15;
  v6[241] = swift_task_alloc();
  v6[242] = swift_task_alloc();
  v29 = sub_1001D0DC0();
  v6[243] = v29;
  v30 = *(v29 - 8);
  v6[244] = v30;
  v31 = *(v30 + 64) + 15;
  v6[245] = swift_task_alloc();
  v6[246] = swift_task_alloc();
  v32 = swift_task_alloc();
  v6[247] = v32;
  *(v32 + 16) = a5;
  *(v32 + 24) = a6;

  sub_100089C90(a6, (v6 + 148));

  return _swift_task_switch(sub_10011DFC4, 0, 0);
}