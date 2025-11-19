uint64_t sub_1000ED574()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v1;
  v3[3] = sub_1000F2340;
  v3[4] = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1000ED67C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v3, &type metadata for () + 8);
}

uint64_t sub_1000ED67C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1000ED970;
    v5 = 0;
  }

  else
  {
    v6 = v2[14];
    v7 = v2[12];
    v8 = v2[9];

    v4 = sub_1000ED7B0;
    v5 = v8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000ED7B0()
{
  v16 = v0;
  v1 = v0[9];

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[10];
  v5 = v0[11];
  if (v4)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL);
    v10 = sub_1001D23A0();
    v12 = sub_1000954E0(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "wrote persisted ratelimiter, file=%s", v8, 0xCu);
    sub_100011CF0(v9);
  }

  sub_100011E48(v6, v5);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000ED970()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  return _swift_task_switch(sub_1000ED9E8, v3, 0);
}

uint64_t sub_1000ED9E8()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v3 = &off_10022C000;

  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  v8 = &off_10022C000;
  if (v6)
  {
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 136315394;
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL);
    v13 = sub_1001D23A0();
    v15 = sub_1000954E0(v13, v14, &v33);

    *(v10 + 4) = v15;
    v8 = &off_10022C000;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "unable to write persisted ratelimiter, file=%s, error=%@", v10, 0x16u);
    sub_100011F00(v11, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v12);
    v3 = &off_10022C000;
  }

  else
  {
  }

  v17 = v0[9];
  v18 = v3[202];

  v19 = sub_1001D0E50();
  v20 = sub_1001D1DD0();

  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[10];
  v22 = v0[11];
  if (v21)
  {
    v24 = v0[9];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v27 = v8[203];
    sub_1001CFB10();
    sub_1000F4520(&qword_1002302F0, &type metadata accessor for URL);
    v28 = sub_1001D23A0();
    v30 = sub_1000954E0(v28, v29, &v33);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "wrote persisted ratelimiter, file=%s", v25, 0xCu);
    sub_100011CF0(v26);
  }

  sub_100011E48(v23, v22);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1000EDD68()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v4 = sub_1001D0E60();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_file;
  v6 = sub_1001CFB10();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  v8 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model + 8);
  v10 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model + 16);
  v9 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model + 24);

  sub_100011CF0((v0 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RateLimiter()
{
  result = qword_10022C6A0;
  if (!qword_10022C6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EDECC()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1001CFB10();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000EDFD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000EE018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000EE068(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000EE088, v3, 0);
}

uint64_t sub_1000EE088()
{
  v1 = v0[3];
  sub_1000EE0E8(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000EE0E8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for RateLimitConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v25 - v14;
  sub_1000F43C0(a1, &v25 - v14, type metadata accessor for RateLimitConfiguration);
  sub_1000F43C0(a1, v12, type metadata accessor for RateLimitConfiguration);
  v16 = sub_1001D0E50();
  v17 = sub_1001D1DC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    v19 = *(v7 + 20);
    v26 = v7;
    v20 = *&v15[v19];
    sub_1000F4490(v15, type metadata accessor for RateLimitConfiguration);
    *(v18 + 4) = v20;
    v7 = v26;
    *(v18 + 12) = 2048;
    v21 = *&v12[*(v7 + 20) + 8];
    sub_1000F4490(v12, type metadata accessor for RateLimitConfiguration);
    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "rate limit discovered for rate with count=%lu, duration=%f", v18, 0x16u);
  }

  else
  {
    sub_1000F4490(v15, type metadata accessor for RateLimitConfiguration);

    sub_1000F4490(v12, type metadata accessor for RateLimitConfiguration);
  }

  swift_beginAccess();
  v22 = *(a1 + 32);
  v28[1] = *(a1 + 16);
  v28[2] = v22;
  v29 = *(a1 + 48);
  v28[0] = *a1;
  sub_1000F43C0(a1 + *(v7 + 20), v6, type metadata accessor for RateLimitTimingDetails);
  v23 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  sub_10001B9AC(v28, v27);
  sub_100017758(v6, v28);
  sub_1000E3E7C(a1);
  return swift_endAccess();
}

uint64_t sub_1000EE40C(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v3 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v91 - v6;
  v106 = type metadata accessor for RequestLog.Element();
  v104 = *(v106 - 8);
  v8 = *(v104 + 64);
  v10 = __chkstk_darwin(v106, v9);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v91 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v91 - v18;
  v20 = sub_1001CFD60();
  v98 = *(v20 - 8);
  v99 = v20;
  v21 = *(v98 + 64);
  v23 = __chkstk_darwin(v20, v22);
  v95 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v105 = &v91 - v26;
  v27 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v28 = *(v27 - 8);
  v101 = v27;
  v102 = v28;
  v29 = *(v28 + 64);
  v31 = __chkstk_darwin(v27, v30);
  v94 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v100 = (&v91 - v34);
  v35 = sub_1001D0E50();
  v36 = sub_1001D1DD0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "ratelimiter undergoing trim", v37, 2u);
  }

  v38 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  v39 = swift_beginAccess();
  v40 = *v38;
  __chkstk_darwin(v39, v41);
  *(&v91 - 2) = v103;
  v43 = sub_1000EC8BC(sub_1000EB4B4, (&v91 - 4), v42);
  v96 = 0;
  v44 = *v38;
  *v38 = v43;

  v97 = v2;
  v45 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24);
  v46 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 32);
  v93 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  sub_100024DC8((v2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config), v45);
  v47 = v100;
  sub_1001D04A0();
  sub_1001D0210();
  v48 = *(v102 + 8);
  v102 += 8;
  v92 = v48;
  v48(v47, v101);
  result = sub_1001CFCF0();
  v100 = v38;
  v51 = v38 + 1;
  v50 = v38[1];
  v53 = v50 + 3;
  v52 = v50[3];
  if (v52)
  {
    v54 = (v104 + 56);
    while (v52 >= 1)
    {
      v56 = v50[4];
      v57 = v50[2];
      if (v56 < v57)
      {
        v57 = 0;
      }

      v58 = (*(v104 + 80) + 40) & ~*(v104 + 80);
      v59 = *(v104 + 72);
      sub_1000F43C0(v50 + v58 + (v56 - v57) * v59, v12, type metadata accessor for RequestLog.Element);
      sub_1000F4428(v12, v16, type metadata accessor for RequestLog.Element);
      sub_1000F4428(v16, v19, type metadata accessor for RequestLog.Element);
      v60 = *(v106 + 20);
      if ((sub_1001CFCD0() & 1) == 0)
      {
        sub_1000F4490(v19, type metadata accessor for RequestLog.Element);
        goto LABEL_20;
      }

      if (*v53 <= 0)
      {
        v55 = 1;
      }

      else
      {
        v61 = *v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100118F1C();
        }

        v62 = *v51;
        result = sub_1000F4428(*v51 + v58 + *(*v51 + 32) * v59, v7, type metadata accessor for RequestLog.Element);
        v63 = v62[4];
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_26;
        }

        v66 = v62[3];
        if (v65 >= v62[2])
        {
          v65 = 0;
        }

        v62[4] = v65;
        if (__OFSUB__(v66, 1))
        {
          goto LABEL_27;
        }

        v55 = 0;
        v62[3] = v66 - 1;
      }

      sub_1000F4490(v19, type metadata accessor for RequestLog.Element);
      (*v54)(v7, v55, 1, v106);
      result = sub_100011F00(v7, &qword_10022C7C0, &qword_1001DD040);
      v50 = *v51;
      v53 = (*v51 + 24);
      v52 = *v53;
      if (!*v53)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_20:
  v67 = v99;
  v68 = *(v98 + 8);
  v68(v105, v99);
  swift_endAccess();
  v69 = v100;
  v70 = *v100;
  v71 = *(v97 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_rateLimitUnmatchedRequestStorageTimeout);
  v72 = swift_beginAccess();
  __chkstk_darwin(v72, v73);
  *(&v91 - 4) = v103;
  *(&v91 - 3) = v71;
  *(&v91 - 2) = v70;

  v74 = sub_10005EAC4(sub_1000F435C, (&v91 - 6));
  result = v69[1];
  v75 = *(result + 24);
  if (v75 < v74)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v74 < 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100118F1C();
  }

  v76 = v100;
  sub_1000F3280(v74, v75, (v100[1] + 16), v100[1] + ((*(v104 + 80) + 40) & ~*(v104 + 80)));
  swift_endAccess();

  swift_beginAccess();
  v77 = v93[4];
  sub_100024DC8(v93, v93[3]);
  v78 = v94;
  sub_1001D0430();
  sub_1001D0210();
  v92(v78, v101);
  v79 = v95;
  v80 = v103;
  v81 = sub_1001CFCF0();
  v82 = v76[3];
  __chkstk_darwin(v81, v83);
  *(&v91 - 2) = v79;
  v84 = sub_1000F2568(sub_1000F4384, (&v91 - 4), v82);

  v76[3] = v84;
  v85 = (v68)(v79, v67);
  v86 = v76[2];
  __chkstk_darwin(v85, v87);
  *(&v91 - 2) = v80;
  v89 = sub_1000EC344(sub_1000F43A4, (&v91 - 4), v88);
  v90 = v76[2];
  v76[2] = v89;
  swift_endAccess();
}

uint64_t sub_1000EEC78()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_1000ED278();
}

unint64_t sub_1000EED08()
{
  result = qword_10022C760;
  if (!qword_10022C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C760);
  }

  return result;
}

uint64_t sub_1000EED5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v285 = a3;
  v266 = a2;
  v264 = a4;
  v6 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v255 = &v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v258 = &v245 - v12;
  v13 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v253 = &v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v306 = (&v245 - v19);
  v272 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v307 = *(v272 - 8);
  v20 = *(v307 + 8);
  __chkstk_darwin(v272, v21);
  v271 = &v245 - v22;
  v293 = type metadata accessor for RequestLog.Element();
  v300 = *(v293 - 8);
  v23 = *(v300 + 64);
  __chkstk_darwin(v293, v24);
  v304 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_1001CFD60();
  v305 = *(v291 - 8);
  isa = v305[8].isa;
  v28 = __chkstk_darwin(v291, v27);
  v254 = &v245 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28, v30);
  v257 = &v245 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v252 = &v245 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v277 = &v245 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v303 = &v245 - v41;
  v43 = __chkstk_darwin(v40, v42);
  v256 = &v245 - v44;
  __chkstk_darwin(v43, v45);
  v262 = &v245 - v46;
  v283 = type metadata accessor for RateLimitConfiguration(0);
  v280 = *(v283 - 8);
  v47 = *(v280 + 64);
  v49 = __chkstk_darwin(v283, v48);
  v249 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49, v51);
  v270 = &v245 - v53;
  v55 = __chkstk_darwin(v52, v54);
  v274 = &v245 - v56;
  v58 = __chkstk_darwin(v55, v57);
  v269 = &v245 - v59;
  v61 = __chkstk_darwin(v58, v60);
  v251 = &v245 - v62;
  v64 = __chkstk_darwin(v61, v63);
  v250 = &v245 - v65;
  v67 = __chkstk_darwin(v64, v66);
  v259 = (&v245 - v68);
  __chkstk_darwin(v67, v69);
  v71 = (&v245 - v70);
  v72 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  v73 = *(*(v72 - 8) + 64);
  v75 = __chkstk_darwin(v72 - 8, v74);
  v260 = &v245 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75, v77);
  v79 = &v245 - v78;
  v80 = sub_1001D0260();
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  v84 = __chkstk_darwin(v80, v83);
  v261 = &v245 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84, v86);
  v88 = &v245 - v87;
  v89 = (v4 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  swift_beginAccess();
  v90 = a1;
  v91 = a1;
  v92 = v266;
  sub_1000E3ADC(v91, v266, v79);
  swift_endAccess();
  if ((*(v81 + 48))(v79, 1, v80) != 1)
  {
    v104 = *(v81 + 32);
    v104(v88, v79, v80);
    v105 = sub_1001D0E50();
    v106 = sub_1001D1DE0();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "rate limit applied from cached denials", v107, 2u);
    }

    v108 = v264;
    v104(v264, v88, v80);
    return (*(v81 + 56))(v108, 0, 1, v80);
  }

  v287 = v4;
  v248 = v80;
  sub_100011F00(v79, &qword_100227E08, &unk_1001D3B30);
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  v284 = v93;
  *(v93 + 24) = 1;
  v94 = swift_beginAccess();
  v308[0] = 0;
  v95 = *v89;
  __chkstk_darwin(v94, v96);
  *(&v245 - 4) = v90;
  *(&v245 - 3) = v308;
  *(&v245 - 2) = v92;
  v98 = sub_1000E95B0(sub_1000F4500, (&v245 - 6), v97);
  v279 = v98;
  v286 = v90;
  v278 = v89;
  if (v308[0] == 1)
  {
    v100 = *v89;
    __chkstk_darwin(v98, v99);
    *(&v245 - 2) = v90;
    v102 = sub_1000EC8BC(sub_1000F492C, (&v245 - 4), v101);
    v245 = 0;
    v103 = *v89;
    *v89 = v102;
  }

  else
  {
    v245 = 0;
  }

  v110 = v291;
  v111 = v293;
  v112 = v300;
  v113 = v306;
  v114 = v274;
  result = swift_endAccess();
  v116 = v279;
  v117 = v279[2];
  v265 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v276 = v117;
  if (!v117)
  {
LABEL_77:
    v183 = v116;

    v184 = sub_1001D0E50();
    v185 = sub_1001D1DC0();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 134217984;
      v187 = v183[2];

      *(v186 + 4) = v187;

      _os_log_impl(&_mh_execute_header, v184, v185, "no rate limit applied from among matching configurations with count=%ld", v186, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v81 + 56))(v264, 1, 1, v248);
  }

  v118 = 0;
  v268 = (v287 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  v246 = v114 + 8;
  v282 = v305 + 1;
  v267 = (v307 + 8);
  v263 = v305 + 2;
  *&v115 = 134218496;
  v247 = v115;
  v281 = v81;
  v275 = v71;
LABEL_12:
  if (v118 >= v116[2])
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  sub_1000F43C0(v116 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v118, v71, type metadata accessor for RateLimitConfiguration);
  v119 = (v71 + *(v283 + 20));
  if (!*v119)
  {

    v188 = sub_1001D0E50();
    v189 = sub_1001D1DE0();
    v190 = os_log_type_enabled(v188, v189);
    v191 = v262;
    if (v190)
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "rate limit applied for rate with count=0", v192, 2u);
    }

    v193 = v119[1];
    v194 = v256;
    sub_1001CFCE0();
    v195 = type metadata accessor for RateLimitTimingDetails(0);
    v196 = *(v119 + *(v195 + 28));
    sub_1000F24C4(v195, 0.0, 1.0);
    sub_1001CFCE0();
    v307 = v282->isa;
    (v307)(v194, v110);
    v197 = v259;
    sub_1000F43C0(v71, v259, type metadata accessor for RateLimitConfiguration);
    (v263->isa)(v194, v191, v110);
    v198 = v261;
    sub_1000F18AC(v197, v194, v261);
    swift_beginAccess();
    v199 = v260;
    v200 = v248;
    (*(v81 + 16))(v260, v198, v248);
    v306 = *(v81 + 56);
    (v306)(v199, 0, 1, v200);
    v201 = v266;
    sub_10001BB84(v266, &v309);
    sub_100017918(v199, v201);
    swift_endAccess();
    (v307)(v262, v110);
    sub_1000F4490(v71, type metadata accessor for RateLimitConfiguration);
    v202 = v264;
    (*(v81 + 32))(v264, v198, v200);
    (v306)(v202, 0, 1, v200);
  }

  v290 = *v119;
  v288 = v118 + 1;
  v120 = v278[1];
  v273 = v119;
  v121 = v119[1];
  v122 = v71[1];
  v299 = *v71;
  v302 = v122;
  v123 = v71[3];
  v298 = v71[2];
  v297 = v123;
  v124 = v71[5];
  v295 = v71[4];
  v305 = v124;
  v125 = v71[6];

  v126 = v303;
  sub_1001CFCF0();
  v71 = v120[4];
  if (v120[2] >= v71 + v120[3])
  {
    v127 = (v71 + v120[3]);
  }

  else
  {
    v127 = v120[2];
  }

  v128 = (*(v112 + 80) + 40) & ~*(v112 + 80);
  *&v309 = v120;
  *(&v309 + 1) = v71;
  *&v310 = v127;
  v289 = v120;

  v296 = 0;
  v294 = v125;
  v292 = (v125 + 56);
  v130 = v304;
  v301 = v128;
  while (1)
  {
    if (v71 == v127)
    {
      v131 = sub_1000FA2C0(v129);
      v132 = v309;
      if ((v131 & 1) == 0)
      {

        v307 = v282->isa;
        (v307)(v126, v110);
        v161 = v286;
        if (sub_1000F15B8(v284, v285))
        {
          v162 = v268[4];
          sub_100024DC8(v268, v268[3]);
          v163 = v271;
          sub_1001D0530();
          v164 = v270;
          v111 = v293;
          sub_1001D0210();
          v165 = v163;
          v166 = v277;
          result = (*v267)(v165, v272);
          v81 = v281;
          v71 = v275;
          if (v296 >= v290)
          {
            v167 = v309;
            if (v309 <= 1)
            {
              v167 = 1;
            }

            v168 = v167 - 1;
            v169 = __CFADD__(v290, v168);
            v170 = v290 + v168;
            if (v169)
            {
              goto LABEL_97;
            }

            if (v296 >= v170)
            {
              v211 = v161;
              sub_1000F43C0(v275, v164, type metadata accessor for RateLimitConfiguration);
              v113 = v249;
              sub_1000F43C0(v71, v249, type metadata accessor for RateLimitConfiguration);
              v112 = v253;
              sub_10001208C(v285, v253, &qword_1002288B0, &qword_1001D5FC0);
              v145 = v252;
              (v263->isa)(v252, v211, v110);

              v212 = sub_1001D0E50();
              LODWORD(v305) = sub_1001D1DE0();
              v306 = v212;
              v138 = v164;
              if (!os_log_type_enabled(v212, v305))
              {
                goto LABEL_91;
              }

              v213 = swift_slowAlloc();
              *v213 = v247;
              v214 = v113;
              v215 = v283;
              v216 = *(v138 + *(v283 + 20));
              v217 = v284;

              sub_1000F4490(v138, type metadata accessor for RateLimitConfiguration);
              *(v213 + 4) = v216;
              *(v213 + 12) = 2048;
              v218 = *(v214 + *(v215 + 20) + 8);
              sub_1000F4490(v214, type metadata accessor for RateLimitConfiguration);
              *(v213 + 14) = v218;
              *(v213 + 22) = 2048;
              v219 = v253;
              v220 = v252;
              v221 = sub_1000F15B8(v217, v253);
              sub_100011F00(v219, &qword_1002288B0, &qword_1001D5FC0);
              v222 = v220;
              v223 = v307;
              (v307)(v222, v110);
              *(v213 + 24) = v221;
              v81 = v281;

              v224 = v306;
              _os_log_impl(&_mh_execute_header, v306, v305, "rate limit applied for rate with count=%lu, duration=%f, sessionProgress=%lu", v213, 0x20u);

              goto LABEL_92;
            }

            sub_1000F43C0(v275, v269, type metadata accessor for RateLimitConfiguration);
            sub_1000F43C0(v71, v274, type metadata accessor for RateLimitConfiguration);
            sub_10001208C(v285, v113, &qword_1002288B0, &qword_1001D5FC0);
            (v263->isa)(v166, v161, v110);

            v171 = sub_1001D0E50();
            v172 = sub_1001D1DC0();
            v305 = v171;
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              *v173 = v247;
              v174 = v283;
              v175 = *(v283 + 20);
              LODWORD(v302) = v172;
              v176 = v269;
              v177 = *(v269 + v175);
              v178 = v284;

              sub_1000F4490(v176, type metadata accessor for RateLimitConfiguration);
              *(v173 + 4) = v177;
              *(v173 + 12) = 2048;
              v179 = *(v174 + 20);
              v113 = v306;
              v180 = *(v246 + v179);
              sub_1000F4490(v274, type metadata accessor for RateLimitConfiguration);
              *(v173 + 14) = v180;
              *(v173 + 22) = 2048;
              v181 = sub_1000F15B8(v178, v113);
              sub_100011F00(v113, &qword_1002288B0, &qword_1001D5FC0);
              (v307)(v277, v110);
              *(v173 + 24) = v181;

              v112 = v300;

              v182 = v305;
              _os_log_impl(&_mh_execute_header, v305, v302, "rate limit softened for rate with count=%lu, duration=%f, sessionProgress=%lu", v173, 0x20u);
              v111 = v293;
            }

            else
            {

              sub_100011F00(v113, &qword_1002288B0, &qword_1001D5FC0);
              (v307)(v166, v110);
              sub_1000F4490(v269, type metadata accessor for RateLimitConfiguration);

              sub_1000F4490(v274, type metadata accessor for RateLimitConfiguration);
            }

            v81 = v281;
          }
        }

        else
        {
          v81 = v281;
          v71 = v275;
          if (v296 >= v290)
          {
            v203 = v250;
            sub_1000F43C0(v275, v250, type metadata accessor for RateLimitConfiguration);
            v204 = v251;
            sub_1000F43C0(v71, v251, type metadata accessor for RateLimitConfiguration);
            v205 = sub_1001D0E50();
            v206 = sub_1001D1DE0();
            if (os_log_type_enabled(v205, v206))
            {
              v207 = swift_slowAlloc();
              *v207 = 134218240;
              v208 = v283;
              v209 = *(v203 + *(v283 + 20));
              sub_1000F4490(v203, type metadata accessor for RateLimitConfiguration);
              *(v207 + 4) = v209;
              *(v207 + 12) = 2048;
              v210 = *(v204 + *(v208 + 20) + 8);
              sub_1000F4490(v204, type metadata accessor for RateLimitConfiguration);
              *(v207 + 14) = v210;
              _os_log_impl(&_mh_execute_header, v205, v206, "rate limit applied for rate with count=%lu, duration=%f", v207, 0x16u);
            }

            else
            {
              sub_1000F4490(v203, type metadata accessor for RateLimitConfiguration);

              sub_1000F4490(v204, type metadata accessor for RateLimitConfiguration);
            }

            v225 = v258;
            v226 = v255;
            v223 = v307;
            goto LABEL_93;
          }
        }

        result = sub_1000F4490(v71, type metadata accessor for RateLimitConfiguration);
        v118 = v288;
        v116 = v279;
        if (v288 == v276)
        {
          goto LABEL_77;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v132 = v309;
    }

    v133 = *(&v309 + 1);
    v71 = ++*(&v309 + 1);
    sub_1000F43C0(v132 + v128 + *(v112 + 72) * v133, v130, type metadata accessor for RequestLog.Element);
    v134 = *(v111 + 20);
    sub_1000F4520(&qword_100230230, &type metadata accessor for Date);
    if (sub_1001D1770())
    {
      break;
    }

LABEL_21:
    v129 = sub_1000F4490(v130, type metadata accessor for RequestLog.Element);
    v127 = v310;
  }

  v135 = *v130;
  v81 = *(*v130 + 24);
  v136 = *(*v130 + 32);
  v137 = *(*v130 + 40);
  v138 = v135[6];
  v139 = v135[7];
  v140 = v135[8];
  if (v302)
  {
    v141 = v299 == v135[2] && v302 == v81;
    if (!v141 && (sub_1001D2470() & 1) == 0)
    {
      v112 = v300;
      v113 = v306;
      goto LABEL_20;
    }
  }

  v307 = v139;
  v142 = v297;
  if (!v297 || (v298 == v136 ? (v143 = v297 == v137) : (v143 = 0), v143 || (sub_1001D2470() & 1) != 0))
  {

    v144 = v307;

    v113 = v306;
  }

  else
  {

    sub_1000E47D4(46, 0xE100000000000000, v136, v137);
    if (v155)
    {

LABEL_60:
      v113 = v306;
      goto LABEL_19;
    }

    v156 = sub_1001D1920();
    v160 = sub_1000E505C(v298, v142, v156, v157, v158, v159);
    v111 = v293;

    v113 = v306;
    v144 = v307;
    if ((v160 & 1) == 0)
    {
LABEL_18:

LABEL_19:

      v112 = v300;
LABEL_20:
      v130 = v304;
      v126 = v303;
      v128 = v301;
      goto LABEL_21;
    }
  }

  if (v305 && (v295 != v138 || v305 != v144) && (sub_1001D2470() & 1) == 0)
  {
    goto LABEL_18;
  }

  v145 = *(v294 + 16);
  if (v145)
  {
    v146 = v292;
    do
    {
      if (!*(v140 + 16))
      {
LABEL_55:

        v110 = v291;
        v111 = v293;
        goto LABEL_60;
      }

      v147 = *(v146 - 1);
      v138 = *v146;
      v148 = *(v146 - 3);
      v149 = *(v146 - 2);

      v150 = sub_100006028(v148, v149);
      if ((v151 & 1) == 0)
      {

        v110 = v291;
        v111 = v293;
        v113 = v306;
        goto LABEL_19;
      }

      v152 = (*(v140 + 56) + 16 * v150);
      if (*v152 == v147 && v152[1] == v138)
      {
      }

      else
      {
        v154 = sub_1001D2470();

        if ((v154 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v146 += 4;
      --v145;
    }

    while (v145);

    v110 = v291;
    v111 = v293;
    v113 = v306;
  }

  else
  {
  }

  v112 = v300;
  if (v296 != -1)
  {
    ++v296;
    goto LABEL_20;
  }

  __break(1u);
LABEL_91:

  sub_100011F00(v112, &qword_1002288B0, &qword_1001D5FC0);
  v227 = v145;
  v228 = v307;
  (v307)(v227, v110);
  sub_1000F4490(v138, type metadata accessor for RateLimitConfiguration);

  v223 = v228;
  sub_1000F4490(v113, type metadata accessor for RateLimitConfiguration);
LABEL_92:
  v225 = v258;
  v226 = v255;
LABEL_93:
  v229 = v278[1];
  v230 = *(v71 + 1);
  v309 = *v71;
  v310 = v230;
  v311 = *(v71 + 2);
  v312 = v71[6];

  v231 = v262;
  sub_1001CFCF0();
  sub_1000F6E7C(v231, &v309, v229, v225);

  v223(v231, v110);
  sub_10001208C(v225, v226, &qword_10022C7C0, &qword_1001DD040);
  v232 = v293;
  result = (*(v300 + 48))(v226, 1, v293);
  if (result == 1)
  {
    goto LABEL_98;
  }

  v233 = *(v232 + 20);
  v234 = v263->isa;
  (v263->isa)(v231, v226 + v233, v110);
  sub_1000F4490(v226, type metadata accessor for RequestLog.Element);
  v235 = v254;
  sub_1001CFCE0();
  v223(v231, v110);
  v236 = type metadata accessor for RateLimitTimingDetails(0);
  v237 = *(v273 + *(v236 + 28));
  sub_1000F24C4(v236, 0.0, 1.0);
  v238 = v257;
  sub_1001CFCE0();
  v223(v235, v110);
  v239 = v259;
  sub_1000F43C0(v71, v259, type metadata accessor for RateLimitConfiguration);
  v234(v231, v238, v110);
  v240 = v261;
  sub_1000F18AC(v239, v231, v261);
  swift_beginAccess();
  v241 = v260;
  v242 = v248;
  (*(v81 + 16))(v260, v240, v248);
  v306 = *(v81 + 56);
  (v306)(v241, 0, 1, v242);
  v243 = v266;
  sub_10001BB84(v266, v308);
  sub_100017918(v241, v243);
  swift_endAccess();
  (v307)(v257, v110);
  sub_100011F00(v258, &qword_10022C7C0, &qword_1001DD040);
  sub_1000F4490(v71, type metadata accessor for RateLimitConfiguration);
  v244 = v264;
  (*(v81 + 32))(v264, v240, v242);
  (v306)(v244, 0, 1, v242);
}

uint64_t sub_1000F0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *(*(sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v6 = sub_1001CFDA0();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();
  v9 = type metadata accessor for RequestLog.Element();
  v4[23] = v9;
  v10 = *(v9 - 8);
  v4[24] = v10;
  v11 = *(v10 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000F0E5C, v3, 0);
}

uint64_t sub_1000F0E5C()
{
  v1 = v0[18] + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ratelimiter remembering completed request", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[18];
  v7 = v0[15];

  v8 = v6 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v66 = v5;
  v67 = v9;
  v10 = *(v5 + 80);
  v11 = v9[4];
  if (v9[2] >= v9[3] + v11)
  {
    v12 = v9[3] + v11;
  }

  else
  {
    v12 = v9[2];
  }

  v65 = (v10 + 40) & ~v10;
  v68 = *(v8 + 8);
  v69 = v9[4];
  v70 = v12;

  while (1)
  {
    if (v11 == v12)
    {
      if ((sub_1000FA2C0(v13) & 1) == 0)
      {
        v31 = v0 + 26;
        v32 = v0[26];
        v33 = v0[23];
        v34 = v0[17];
        v35 = v0[15];

        v36 = *(v33 + 20);
        v37 = sub_1001CFD60();
        (*(*(v37 - 8) + 16))(v32 + v36, v34, v37);
        type metadata accessor for RequestLog.Element.Storage();
        v38 = swift_allocObject();
        v40 = *(v35 + 16);
        v39 = *(v35 + 32);
        v41 = *v35;
        *(v38 + 64) = *(v35 + 48);
        *(v38 + 32) = v40;
        *(v38 + 48) = v39;
        *(v38 + 16) = v41;
        *v32 = v38;
        sub_10001BB84(v35, (v0 + 2));
        sub_1000F6648(v32);
        goto LABEL_30;
      }

      v11 = v69;
      v67 = v68;
    }

    v16 = v0[27];
    v17 = v0[25];
    v18 = v0[15];
    v19 = v67 + v65 + *(v66 + 72) * v11++;
    v69 = v11;
    sub_1000F43C0(v19, v16, type metadata accessor for RequestLog.Element);
    sub_1000F4428(v16, v17, type metadata accessor for RequestLog.Element);
    v20 = *v17;
    v21 = *(*v17 + 16);
    v22 = *(*v17 + 24);
    v24 = *(*v17 + 32);
    v23 = *(*v17 + 40);
    v26 = *(*v17 + 48);
    v25 = *(*v17 + 56);
    v27 = *(v20 + 64);
    v28 = v21 == *v18 && v22 == v7[1];
    if (v28 || (sub_1001D2470() & 1) != 0)
    {
      v29 = v24 == v7[2] && v23 == v7[3];
      if (v29 || (sub_1001D2470() & 1) != 0)
      {
        v30 = v26 == v7[4] && v25 == v7[5];
        if (v30 || (sub_1001D2470() & 1) != 0)
        {
          v14 = v7[6];

          LOBYTE(v14) = sub_1000CF830(v15, v14);

          if (v14)
          {
            break;
          }
        }
      }
    }

    v13 = sub_1000F4490(v0[25], type metadata accessor for RequestLog.Element);
    v12 = v70;
  }

  v31 = v0 + 29;
  v42 = v0[29];
  v43 = v0[28];
  v45 = v0[25];
  v44 = v0[26];
  v46 = v0[23];
  v47 = v0[17];

  sub_1000F4428(v45, v43, type metadata accessor for RequestLog.Element);
  sub_1000F4428(v43, v42, type metadata accessor for RequestLog.Element);
  v48 = *v42;
  v49 = *(v46 + 20);
  v50 = sub_1001CFD60();
  (*(*(v50 - 8) + 16))(&v44[v49], v47, v50);
  *v44 = v48;

  sub_1000F6648(v44);
  sub_1000F4490(v44, type metadata accessor for RequestLog.Element);
LABEL_30:
  v51 = *v31;
  v53 = v0[20];
  v52 = v0[21];
  v54 = v0[19];
  v55 = v0[16];
  sub_1000F4490(v51, type metadata accessor for RequestLog.Element);
  swift_endAccess();
  sub_10001208C(v55, v54, &qword_1002288B0, &qword_1001D5FC0);
  if ((*(v52 + 48))(v54, 1, v53) == 1)
  {
    sub_100011F00(v0[19], &qword_1002288B0, &qword_1001D5FC0);
  }

  else
  {
    v56 = v0[21];
    v57 = v0[22];
    v58 = v0[20];
    v60 = v0[17];
    v59 = v0[18];
    (*(v56 + 32))(v57, v0[19], v58);
    v61 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config;
    swift_beginAccess();
    sub_1000FA2C8(v57, v60, (v59 + v61));
    swift_endAccess();
    (*(v56 + 8))(v57, v58);
  }

  v62 = swift_task_alloc();
  v0[30] = v62;
  *v62 = v0;
  v62[1] = sub_1000F13E8;
  v63 = v0[18];

  return sub_1000ED278();
}

uint64_t sub_1000F13E8()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v5 = *(*v0 + 208);
  v6 = *(*v0 + 200);
  v7 = *(*v0 + 176);
  v8 = *(*v0 + 152);
  v11 = *v0;

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1000F15B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 16;
  result = *(a1 + 16);
  if (*(v4 + 8) == 1)
  {
    __chkstk_darwin(result, a2);
    v5 = sub_1000EC158(sub_1000F4568);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    swift_beginAccess();
    result = v7;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000F1678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a4;
  v21[1] = a3;
  v23 = a1;
  v24 = sub_1001CFD60();
  v22 = *(v24 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v24, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = v21 - v13;
  v15 = a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 32);
  sub_100024DC8((a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config), *(a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24));

  sub_1001D0430();
  sub_1001D0210();
  (*(v10 + 8))(v14, v9);
  sub_1001CFCF0();
  v18 = sub_1000FB3F4(v8, v23, v16);

  result = (*(v22 + 8))(v8, v24);
  v20 = v25;
  *v25 = v18;
  *(v20 + 8) = 0;
  return result;
}

uint64_t sub_1000F18AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v44 = sub_1001D0230();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001CFD60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v42 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[3];
  v40 = a1[2];
  v41 = v15;
  v18 = a1[5];
  v39 = a1[4];
  v19 = a1[6];
  v20 = *(v19 + 16);
  if (v20)
  {
    v35 = v11;
    v36 = v10;
    v37 = a2;
    v38 = a1;
    v45 = &_swiftEmptyArrayStorage;
    v34[2] = v16;
    v21 = v18;

    v34[1] = v17;

    v34[0] = v21;

    sub_100151624(0, v20, 0);
    v22 = v45;
    v23 = (v19 + 56);
    do
    {
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;

      sub_1001D0220();
      v45 = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_100151624(v28 > 1, v29 + 1, 1);
        v22 = v45;
      }

      v22[2] = v29 + 1;
      (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v9, v44);
      v23 += 4;
      --v20;
    }

    while (v20);
    a2 = v37;
    a1 = v38;
    v11 = v35;
    v10 = v36;
  }

  else
  {
  }

  v30 = (a1 + *(type metadata accessor for RateLimitConfiguration(0) + 20));
  v31 = *v30;
  v32 = v30[1];
  (*(v11 + 16))(v42, a2, v10);
  sub_1001D0250();
  (*(v11 + 8))(a2, v10);
  return sub_1000F4490(a1, type metadata accessor for RateLimitConfiguration);
}

uint64_t sub_1000F1BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v55 = sub_1001D0150();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v55, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RateLimitTimingDetails(0);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50, v13);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001CFD60();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  __chkstk_darwin(v15, v17);
  v48 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a1 + 48);
  v20 = *(v19 + 16);
  if (v20)
  {
    v43 = a2;
    v44 = a1;
    v45 = a3;
    *&v52[0] = &_swiftEmptyArrayStorage;
    sub_1001516AC(0, v20, 0);
    v21 = *&v52[0];
    v22 = (v19 + 56);
    do
    {
      v24 = *(v22 - 3);
      v23 = *(v22 - 2);
      v26 = *(v22 - 1);
      v25 = *v22;

      sub_1001D0140();
      *&v52[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1001516AC(v27 > 1, v28 + 1, 1);
        v21 = *&v52[0];
      }

      *(v21 + 16) = v28 + 1;
      (*(v7 + 32))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, v11, v55);
      v22 += 4;
      --v20;
    }

    while (v20);
    a1 = v44;
    a2 = v43;
  }

  v29 = a2 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v30 = *(v29 + 8);
  v31 = (a1 + *(type metadata accessor for RateLimitConfiguration(0) + 20));
  v32 = v31[1];
  v33 = *(a1 + 16);
  v52[0] = *a1;
  v52[1] = v33;
  v53 = *(a1 + 32);
  v54 = *(a1 + 48);
  v55 = *&v52[0];
  v44 = v53;
  v45 = v33;

  v34 = v48;
  sub_1001CFCF0();
  v43 = sub_1000F69E4(v34, v52, v30);

  v36 = v46;
  v35 = v47;
  (*(v46 + 8))(v34, v47);
  v42 = *v31;
  v37 = v50;
  v38 = *(v31 + *(v50 + 28));
  v39 = v31;
  v40 = v49;
  sub_1000F43C0(v39, v49, type metadata accessor for RateLimitTimingDetails);
  (*(v36 + 32))(v34, v40 + *(v37 + 24), v35);

  return sub_1001D0130();
}

uint64_t sub_1000F205C()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ratelimiter is being reset", v4, 2u);
  }

  v5 = *(v0 + 40);

  v6 = (v5 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  swift_beginAccess();
  v7 = sub_1000DADF8(&_swiftEmptyArrayStorage);
  v8 = *v6;

  *v6 = v7;
  v9 = *sub_1001D0110();
  v10 = v6[1];

  v6[1] = v9;
  v11 = sub_1000DABDC(&_swiftEmptyArrayStorage);
  v12 = v6[2];

  v6[2] = v11;
  v13 = sub_1000DB010(&_swiftEmptyArrayStorage);
  v14 = v6[3];
  v6[3] = v13;
  swift_endAccess();

  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_1000F220C;
  v16 = *(v0 + 40);

  return sub_1000ED278();
}

uint64_t sub_1000F220C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000F2300()
{
  sub_100011E48(v0[2], v0[3]);
  v1 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F2340()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1001CFC20();
}

uint64_t sub_1000F2370(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_1001D2580();
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v21, v13);
  sub_1001D25C0();
  v14 = -1 << *(a3 + 32);
  v15 = sub_1001D1FD0();
  *(a3 + 64 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
  v16 = *(a3 + 48) + 56 * v15;
  v17 = *(a1 + 1);
  *v16 = *a1;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a1 + 2);
  *(v16 + 48) = a1[6];
  v18 = *(a3 + 56);
  v19 = sub_1001D0260();
  result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, a2, v19);
  ++*(a3 + 16);
  return result;
}

uint64_t sub_1000F24C4(uint64_t result, double a2, double a3)
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
    return sub_1000F24C4(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1000F2568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    __chkstk_darwin(a1, v11);
    v13 = &v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_1000F26E8(v13, v10, a3, v6);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_1000F2A28(v16, v10, a3, v6);

  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1000F26E8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v5 = type metadata accessor for SessionLog.Element();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001CFDA0();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9, v11);
  v45 = a3;
  v46 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v40 = v13 + 16;
  v41 = v13;
  v38 = 0;
  v39 = (v13 + 8);
  while (v21)
  {
    v47 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v46;
LABEL_11:
    v27 = v45;
    (*(v41 + 16))(v24, v45[6] + *(v41 + 72) * v23, v9);
    v28 = v23;
    v29 = v27[7] + *(v43 + 72) * v23;
    v30 = v9;
    v31 = v42;
    sub_1000F43C0(v29, v42, type metadata accessor for SessionLog.Element);
    v32 = v48;
    v33 = v44(v24, v31);
    v48 = v32;
    if (v32)
    {
      sub_1000F4490(v31, type metadata accessor for SessionLog.Element);
      return (*v39)(v24, v30);
    }

    v34 = v33;
    sub_1000F4490(v31, type metadata accessor for SessionLog.Element);
    result = (*v39)(v24, v30);
    v9 = v30;
    v21 = v47;
    if (v34)
    {
      *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1000F2AB8(v37, v36, v38, v45);
      }
    }
  }

  v25 = v15;
  v24 = v46;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1000F2AB8(v37, v36, v38, v45);
    }

    v26 = v17[v15];
    ++v25;
    if (v26)
    {
      v47 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) | (v15 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000F2A28(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000F26E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000F2AB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SessionLog.Element();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v62 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v54 = v50 - v14;
  v61 = sub_1001CFDA0();
  v59 = *(v61 - 8);
  v15 = *(v59 + 64);
  v17 = __chkstk_darwin(v61, v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v53 = v50 - v21;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100011AC0(&qword_100227B90, &qword_1001DD050);
  result = sub_1001D21C0();
  v23 = result;
  if (a2 < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *a1;
  }

  v25 = 0;
  v50[1] = v59 + 16;
  v51 = a2;
  v60 = v59 + 32;
  v26 = result + 64;
  v52 = a1;
  v50[0] = a4;
  v27 = v61;
  while (v24)
  {
    v28 = v19;
    v29 = __clz(__rbit64(v24));
    v56 = (v24 - 1) & v24;
LABEL_16:
    v32 = v29 | (v25 << 6);
    v33 = a4[6];
    v34 = v59;
    v58 = *(v59 + 72);
    v35 = v53;
    (*(v59 + 16))(v53, v33 + v58 * v32, v27);
    v36 = a4[7];
    v57 = *(v55 + 72);
    v37 = v36 + v57 * v32;
    v38 = v54;
    sub_1000F43C0(v37, v54, type metadata accessor for SessionLog.Element);
    v39 = *(v34 + 32);
    v19 = v28;
    v39(v28, v35, v27);
    sub_1000F4428(v38, v62, type metadata accessor for SessionLog.Element);
    v40 = *(v23 + 40);
    sub_1000F4520(&qword_100227AD8, &type metadata accessor for UUID);
    result = sub_1001D1730();
    v41 = -1 << *(v23 + 32);
    v42 = result & ~v41;
    v43 = v42 >> 6;
    if (((-1 << v42) & ~*(v26 + 8 * (v42 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v41) >> 6;
      a2 = v51;
      a1 = v52;
      while (++v43 != v46 || (v45 & 1) == 0)
      {
        v47 = v43 == v46;
        if (v43 == v46)
        {
          v43 = 0;
        }

        v45 |= v47;
        v48 = *(v26 + 8 * v43);
        if (v48 != -1)
        {
          v44 = __clz(__rbit64(~v48)) + (v43 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v44 = __clz(__rbit64((-1 << v42) & ~*(v26 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
    a2 = v51;
    a1 = v52;
LABEL_26:
    *(v26 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v39((*(v23 + 48) + v44 * v58), v19, v61);
    result = sub_1000F4428(v62, *(v23 + 56) + v44 * v57, type metadata accessor for SessionLog.Element);
    ++*(v23 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v50[0];
    v24 = v56;
    if (!a3)
    {
      return v23;
    }
  }

  v30 = v25;
  while (1)
  {
    v25 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v25 >= a2)
    {
      return v23;
    }

    v31 = a1[v25];
    ++v30;
    if (v31)
    {
      v28 = v19;
      v29 = __clz(__rbit64(v31));
      v56 = (v31 - 1) & v31;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000F2F48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100011AC0(&qword_100227B00, &qword_1001DB950);
  result = sub_1001D21C0();
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
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_1001D2580();

    sub_1001D1880();
    result = sub_1001D25C0();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
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
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000F31A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = type metadata accessor for RequestLog.Element();
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F3280(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_1000F31A0(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    type metadata accessor for RequestLog.Element();
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    type metadata accessor for RequestLog.Element();
    swift_arrayDestroy();
  }

  return sub_1000F3364(a1, a2, a3, a4);
}

unint64_t sub_1000F3364(unint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = a3[1];
  v7 = a3[2];
  v8 = v7 + result;
  v9 = *a3;
  if ((v7 + result) >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if (v7 + a2 >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 - a2;
  if (__OFSUB__(v6, a2))
  {
    goto LABEL_169;
  }

  v15 = a2 - result;
  v16 = v8 - v10;
  v17 = v11 - v12;
  if (v13 > result)
  {
    v13 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      v18 = __OFSUB__(v13, v9);
      if (v13 >= v9)
      {
        v13 -= v9;
        if (v18)
        {
          goto LABEL_174;
        }
      }

      if (!result)
      {
        goto LABEL_126;
      }

      if (v17 <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = v11 - v12;
      }

      if (v16 <= 0)
      {
        v20 = *a3;
      }

      else
      {
        v20 = v8 - v10;
      }

      if (v7 < v20)
      {
        if (v19 >= v13)
        {
          if (result <= 0)
          {
            goto LABEL_126;
          }

          v17 = result;
          v40 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
          v41 = v40 * v13;
          result = a4 + v40 * v13;
          v42 = v40 * v7;
          v43 = a4 + v40 * v7 + v40 * v17;
          if (v41 >= v42 && result < v43)
          {
            if (v41 != v42)
            {
              goto LABEL_124;
            }

            goto LABEL_126;
          }

LABEL_125:
          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_126;
        }

        if (v17 <= 0)
        {
          goto LABEL_113;
        }

        v21 = result;
        v15 = v9 - v4;
        v22 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
        v23 = v22 * v15;
        v24 = a4 + v22 * v15 + v22 * v17;
        if (v23 <= 0 && v24 > a4)
        {
          result = v21;
          if (!v23)
          {
LABEL_113:
            v18 = __OFSUB__(result, v17);
            v17 = result - v17;
            if (!v18)
            {
              goto LABEL_120;
            }

            __break(1u);
LABEL_164:
            result = swift_arrayInitWithTakeFrontToBack();
            goto LABEL_165;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        result = v21;
        goto LABEL_113;
      }

      if (v19 < v13)
      {
        v35 = result;
        if (v16 > 0)
        {
          v36 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
          if (v36 * v4 < 0 || v36 * v4 >= v36 * v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = *a3 - v4;
        result = type metadata accessor for RequestLog.Element();
        v50 = *(*(result - 8) + 72);
        if (v50 * v49 <= 0 && a4 + v50 * v49 + v50 * v4 > a4)
        {
          if (v50 * v49)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        v52 = v35 - v17;
        if (__OFSUB__(v35, v17))
        {
          goto LABEL_176;
        }

        if (v52 < 1)
        {
          goto LABEL_126;
        }

        result = a4 + v50 * v13;
        v53 = a3[2] * v50;
        if (v50 * v13 >= v53 && result < a4 + v53 + v50 * v52)
        {
          if (v50 * v13 != v53)
          {
            goto LABEL_124;
          }

          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (__OFSUB__(0, v16))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      if (v16 > 0)
      {
        v15 = result;
        v45 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
        v46 = v45 * (v17 - v16);
        if (v46 < 0 || v46 >= v45 * v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          result = v15;
          if (!v46)
          {
            goto LABEL_119;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        result = v15;
      }

LABEL_119:
      v17 = result - v16;
      if (__OFSUB__(result, v16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

LABEL_120:
      if (v17 < 1)
      {
        goto LABEL_126;
      }

      v54 = a3[2];
      v55 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
      result = a4 + v55 * v13;
      if (v55 * v13 >= v55 * v54 && result < a4 + v55 * v54 + v55 * v17)
      {
        if (v55 * v13 != v55 * v54)
        {
LABEL_124:
          result = swift_arrayInitWithTakeBackToFront();
        }

LABEL_126:
        a3[2] = v13;
        v56 = a3[1];
        v18 = __OFSUB__(v56, v4);
        v57 = v56 - v4;
        if (!v18)
        {
          goto LABEL_166;
        }

        __break(1u);
        goto LABEL_129;
      }

      goto LABEL_125;
    }

    goto LABEL_170;
  }

  v26 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v27 = __OFSUB__(v26, v9);
    if (v26 < v9)
    {
      goto LABEL_37;
    }

    v26 -= v9;
    if (!v27)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  if (v26 < 0)
  {
    v18 = __OFADD__(v26, v9);
    v26 += v9;
    if (v18)
    {
      goto LABEL_182;
    }
  }

LABEL_37:
  v18 = __OFSUB__(v6, v4);
  v28 = v6 - v4;
  if (v18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v29 = v28 + v7;
  if (v29 >= v9)
  {
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  if (!v13)
  {
    goto LABEL_165;
  }

  v31 = v29 - v30;
  if (v29 - v30 <= 0)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29 - v30;
  }

  if (v26 <= 0)
  {
    v33 = v9;
  }

  else
  {
    v33 = v26;
  }

  if (v17 >= v33)
  {
    v37 = v9 - v17;
    v38 = __OFSUB__(v9, v17);
    if (v32 >= v16)
    {
      if (v38)
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (v37 > 0)
      {
        v48 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
        result = a4 + v48 * v16;
        if (v48 * v16 < v48 * v17 || result >= a4 + v48 * v17 + v48 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v48 * v16 != v48 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_185;
        }

        v64 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v64)
          {
            goto LABEL_189;
          }
        }
      }

      if (v26 < 1)
      {
        goto LABEL_165;
      }

      result = type metadata accessor for RequestLog.Element();
      v65 = *(*(result - 8) + 72);
      v66 = v65 * v16;
      if (((v65 * v16) & 0x8000000000000000) == 0 && v66 < v65 * v26)
      {
        if (!v66)
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    else
    {
      if (v38)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v37 > 0)
      {
        v39 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
        result = a4 + v39 * v16;
        if (v39 * v16 < v39 * v17 || result >= a4 + v39 * v17 + v39 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 * v16 != v39 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_184;
        }

        v61 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v61)
          {
            goto LABEL_188;
          }
        }
      }

      result = type metadata accessor for RequestLog.Element();
      v62 = *(*(result - 8) + 72);
      v63 = v62 * v16;
      if (v62 * v16 < 0 || v63 >= v62 * v4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v63)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      if (v4 >= *a3)
      {
        v15 = v4 - *a3;
        if (__OFSUB__(v4, *a3))
        {
          goto LABEL_186;
        }
      }

      if (v31 <= 0)
      {
        goto LABEL_165;
      }

      if (v15 * v62 <= 0 && a4 + v15 * v62 + v62 * v31 > a4)
      {
        if (!(v15 * v62))
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    goto LABEL_164;
  }

  if (v32 >= v16)
  {
    if (v13 <= 0)
    {
      goto LABEL_165;
    }

    v47 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
    result = a4 + v47 * v16;
    if (v47 * v16 >= v47 * v17 && result < a4 + v47 * v17 + v47 * v13)
    {
      if (v47 * v16 == v47 * v17)
      {
        goto LABEL_165;
      }

LABEL_163:
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v15 = v9 - v16;
  if (__OFSUB__(v9, v16))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v15 > 0)
  {
    v34 = *(*(type metadata accessor for RequestLog.Element() - 8) + 72);
    result = a4 + v34 * v16;
    if (v34 * v16 >= v34 * v17 && result < a4 + v34 * v17 + v34 * v15)
    {
      if (v34 * v16 != v34 * v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_130;
    }

LABEL_129:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_130:
    v18 = __OFADD__(v17, v15);
    v17 += v15;
    if (v18)
    {
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      return result;
    }

    v58 = __OFSUB__(v17, *a3);
    if (v17 >= *a3)
    {
      v17 -= *a3;
      if (v58)
      {
        goto LABEL_187;
      }
    }
  }

  v59 = v13 - v15;
  if (__OFSUB__(v13, v15))
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v59 >= 1)
  {
    result = type metadata accessor for RequestLog.Element();
    v60 = *(*(result - 8) + 72);
    if (v60 * v17 <= 0 && a4 + v60 * v17 + v60 * v59 > a4)
    {
      if (!(v60 * v17))
      {
        goto LABEL_165;
      }

      goto LABEL_163;
    }

    goto LABEL_164;
  }

LABEL_165:
  v67 = a3[1];
  v18 = __OFSUB__(v67, v4);
  v57 = v67 - v4;
  if (v18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_166:
  a3[1] = v57;
  return result;
}

uint64_t sub_1000F3BE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001001E5150 == a2 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEA0000000000676FLL || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C6465696E6564 && a2 == 0xE900000000000067 || (sub_1001D2470() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6E6F6973736573 && a2 == 0xEA0000000000676FLL)
  {

    return 3;
  }

  else
  {
    v5 = sub_1001D2470();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000F3D70(uint64_t *a1)
{
  v3 = sub_100011AC0(&qword_10022C768, &qword_1001DD028);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_100024DC8(a1, v9);
  sub_1000F4068();
  sub_1001D25E0();
  if (!v1)
  {
    v12 = 0;
    sub_1000F40BC();
    sub_1001D2290();
    v9 = v13;
    v12 = 1;
    sub_1000F4110();
    sub_1001D2290();
    v12 = 2;
    sub_1000F4164();
    v11 = 0;
    sub_1001D2290();
    v12 = 3;
    sub_1000F41B8();
    sub_1001D2290();
    (*(v4 + 8))(v8, v3);
  }

  sub_100011CF0(a1);
  return v9;
}

unint64_t sub_1000F4068()
{
  result = qword_10022C770;
  if (!qword_10022C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C770);
  }

  return result;
}

unint64_t sub_1000F40BC()
{
  result = qword_10022C778;
  if (!qword_10022C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C778);
  }

  return result;
}

unint64_t sub_1000F4110()
{
  result = qword_10022C780;
  if (!qword_10022C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C780);
  }

  return result;
}

unint64_t sub_1000F4164()
{
  result = qword_10022C788;
  if (!qword_10022C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C788);
  }

  return result;
}

unint64_t sub_1000F41B8()
{
  result = qword_10022C790;
  if (!qword_10022C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C790);
  }

  return result;
}

unint64_t sub_1000F420C()
{
  result = qword_10022C7A0;
  if (!qword_10022C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7A0);
  }

  return result;
}

unint64_t sub_1000F4260()
{
  result = qword_10022C7A8;
  if (!qword_10022C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7A8);
  }

  return result;
}

unint64_t sub_1000F42B4()
{
  result = qword_10022C7B0;
  if (!qword_10022C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7B0);
  }

  return result;
}

unint64_t sub_1000F4308()
{
  result = qword_10022C7B8;
  if (!qword_10022C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7B8);
  }

  return result;
}

uint64_t sub_1000F43C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F4428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F4490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F4520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F4588(uint64_t a1, uint64_t a2)
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
  v32 = 0xD000000000000017;
  v33 = 0x80000001001E5130;
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = v3[13];
  v17(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v18 = v3[1];
  v19 = v27;
  v18(v7, v27);
  v32 = 0xD000000000000017;
  v33 = 0x80000001001E5130;
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

unint64_t sub_1000F4828()
{
  result = qword_10022C7D0;
  if (!qword_10022C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7D0);
  }

  return result;
}

unint64_t sub_1000F4880()
{
  result = qword_10022C7D8;
  if (!qword_10022C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7D8);
  }

  return result;
}

unint64_t sub_1000F48D8()
{
  result = qword_10022C7E0;
  if (!qword_10022C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7E0);
  }

  return result;
}

uint64_t sub_1000F4944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000F498C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F49E8(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022C808, &qword_1001DD2C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000F5358();
  sub_1001D25F0();
  v12 = *v3;
  v13 = v3[1];
  v23 = 0;
  sub_1001D2300();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v22 = 1;
    sub_1001D2300();
    v16 = v3[4];
    v17 = v3[5];
    v21 = 2;
    sub_1001D2300();
    v20 = v3[6];
    v19[15] = 3;
    sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
    sub_1000F53AC(&qword_1002292C0);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1000F4C20(uint64_t a1)
{
  v2 = sub_1000F5358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4C5C(uint64_t a1)
{
  v2 = sub_1000F5358();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F4C98(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1001D2470() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1001D2470() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  return sub_1000CF830(v5, v11);
}

Swift::Int sub_1000F4DA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v9, v7);
  return sub_1001D25C0();
}

void sub_1000F4E44(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();

  sub_10001B6B8(a1, v9);
}

Swift::Int sub_1000F4EC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v9, v7);
  return sub_1001D25C0();
}

double sub_1000F4F58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F5018(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1000F4FC4()
{
  result = qword_10022C7E8;
  if (!qword_10022C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7E8);
  }

  return result;
}

uint64_t sub_1000F5018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100011AC0(&qword_10022C7F0, &qword_1001DD2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000F5358();
  sub_1001D25E0();
  if (v2)
  {
    return sub_100011CF0(a1);
  }

  v32 = 0;
  v12 = sub_1001D2250();
  v14 = v13;
  v26 = v12;
  v31 = 1;
  v15 = sub_1001D2250();
  v27 = v16;
  v24 = v15;
  v30 = 2;
  v23 = sub_1001D2250();
  v25 = v17;
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  v29 = 3;
  sub_1000F53AC(&qword_10022C800);
  sub_1001D2290();
  (*(v6 + 8))(v10, v5);
  v18 = v28;

  v19 = v27;

  v20 = v25;

  sub_100011CF0(a1);

  *a2 = v26;
  a2[1] = v14;
  v22 = v23;
  a2[2] = v24;
  a2[3] = v19;
  a2[4] = v22;
  a2[5] = v20;
  a2[6] = v18;
  return result;
}

unint64_t sub_1000F5358()
{
  result = qword_10022C7F8;
  if (!qword_10022C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C7F8);
  }

  return result;
}

uint64_t sub_1000F53AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002292B8, &qword_1001DD2C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F542C()
{
  result = qword_10022C810;
  if (!qword_10022C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C810);
  }

  return result;
}

unint64_t sub_1000F5484()
{
  result = qword_10022C818;
  if (!qword_10022C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C818);
  }

  return result;
}

unint64_t sub_1000F54DC()
{
  result = qword_10022C820;
  if (!qword_10022C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C820);
  }

  return result;
}

uint64_t sub_1000F5530()
{
  v1 = v0[3];
  v2 = v0[5];
  v4 = v0[7];
  v3 = v0[8];

  return swift_deallocClassInstance();
}

Swift::Int sub_1000F55C0(uint64_t a1)
{
  sub_1001D2580();
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v12, v9);

  v10 = *(a1 + 20);
  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000F5704(__int128 *a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 48);
  v10 = *(*v2 + 56);
  v11 = *(*v2 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(a1, v11);

  v12 = *(a2 + 20);
  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date);
  return sub_1001D1740();
}

Swift::Int sub_1000F5830(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 56);
  v10 = *(*v2 + 64);

  sub_1001D1880();
  sub_1001D1880();
  sub_1001D1880();
  sub_10001B6B8(v13, v10);

  v11 = *(a2 + 20);
  sub_1001CFD60();
  sub_1000FA208(&qword_100229788, &type metadata accessor for Date);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000F59F0(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = v3[3];
  if (v5 != v4[3])
  {
    return 0;
  }

  if (v3 == v4 || v5 == 0)
  {
    return 1;
  }

  else
  {
    return sub_1000F73E4(v4, v3);
  }
}

uint64_t sub_1000F5A2C()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 6778732;
  }

  *v0;
  return result;
}

uint64_t sub_1000F5A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6778732 && a2 == 0xE300000000000000;
  if (v5 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000F5B3C(uint64_t a1)
{
  v2 = sub_1000F65F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5B78(uint64_t a1)
{
  v2 = sub_1000F65F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5BB4()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000F5C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xED00007865646E49;
  if (v6 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000F5CEC(uint64_t a1)
{
  v2 = sub_1000F9258();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F5D28(uint64_t a1)
{
  v2 = sub_1000F9258();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F5D64(void *a1, void *a2)
{
  v3 = v2;
  v74 = sub_100011AC0(&qword_10022C8C8, &qword_1001DD490);
  v96 = *(v74 - 8);
  v6 = v96[8];
  __chkstk_darwin(v74, v7);
  v77 = &v70 - v8;
  v75 = type metadata accessor for RequestLog.Element();
  v81 = *(v75 - 8);
  v9 = *(v81 + 64);
  v11 = __chkstk_darwin(v75, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v80 = &v70 - v15;
  v16 = sub_100011AC0(&qword_10022C8D0, &qword_1001DD498);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v70 - v19;
  v21 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000F65F4();
  v22 = v13;
  sub_1001D25F0();
  LOBYTE(v84[0]) = 0;
  sub_1001D22B0();
  LOBYTE(v84[0]) = 1;
  v72 = v16;
  v70 = v20;
  sub_1001D22B0();
  v23 = sub_1000DB22C(&_swiftEmptyArrayStorage);
  v24 = a2[4];
  if (a2[2] >= a2[3] + v24)
  {
    v25 = a2[3] + v24;
  }

  else
  {
    v25 = a2[2];
  }

  v79 = (*(v81 + 80) + 40) & ~*(v81 + 80);
  v85 = a2;
  v86 = v24;
  v87 = v25;
  v76 = (v96 + 1);
  v26 = v74;

  v73 = v22;
  if (v24 == v25)
  {
LABEL_5:
    if (sub_1000F7970())
    {
      goto LABEL_6;
    }

    (*(v71 + 8))(v70, v72);

LABEL_29:

    sub_100011CF0(v88);
    return sub_100011CF0(v89);
  }

  while (1)
  {
LABEL_6:
    v27 = v86;
    v83 = ++v86;
    v78 = v85;
    v28 = v80;
    sub_10005EF28(v85 + v79 + *(v81 + 72) * v27, v80);
    sub_10005EFE8(v28, v22);
    v29 = *v22;
    v30 = *(*v22 + 16);
    v31 = *(*v22 + 32);
    v32 = *(*v22 + 48);
    v95 = *(*v22 + 64);
    v94[1] = v31;
    v94[2] = v32;
    v94[0] = v30;
    v33 = *(v23 + 16);
    v96 = v23;
    if (v33)
    {
      sub_10001BB84(v94, v84);
      v34 = sub_1000064E4(v94);
      v36 = v35;
      sub_10001BB30(v94);
      if (v36)
      {
        v37 = *(*(v23 + 56) + 8 * v34);
        v38 = v77;
        goto LABEL_22;
      }
    }

    v39 = v29[3];
    v40 = v29[4];
    v41 = v29[5];
    v42 = v29[6];
    v43 = v29[7];
    v44 = v29[8];
    v84[0] = v29[2];
    v84[1] = v39;
    v84[2] = v40;
    v84[3] = v41;
    v84[4] = v42;
    v84[5] = v43;
    v84[6] = v44;
    v82 = v88[4];
    sub_1000F9208(v88, v88[3]);
    sub_1000E555C();

    sub_1001D2420();
    if (v3)
    {

      (*(v71 + 8))(v70, v72);
      v68 = v73;
      goto LABEL_28;
    }

    v45 = v96;
    v46 = v96[2];
    v48 = *(v29 + 1);
    v47 = *(v29 + 2);
    v49 = *(v29 + 3);
    v93 = v29[8];
    v91 = v47;
    v92 = v49;
    v90 = v48;
    sub_10001BB84(&v90, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v45;
    v52 = sub_1000064E4(&v90);
    v53 = v45[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      break;
    }

    v56 = v51;
    if (v45[3] >= v55)
    {
      v38 = v77;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000105BC();
        if ((v56 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_10000D63C(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_1000064E4(&v90);
      v38 = v77;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_33;
      }

      v52 = v57;
      if ((v56 & 1) == 0)
      {
LABEL_19:
        v59 = v84[0];
        *(v84[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v60 = v59[6] + 56 * v52;
        v61 = v93;
        v63 = v91;
        v62 = v92;
        *v60 = v90;
        *(v60 + 16) = v63;
        *(v60 + 32) = v62;
        *(v60 + 48) = v61;
        *(v59[7] + 8 * v52) = v46;
        v64 = v59[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_32;
        }

        v59[2] = v66;
        goto LABEL_21;
      }
    }

    sub_10001BB30(&v90);
    v59 = v84[0];
    *(*(v84[0] + 56) + 8 * v52) = v46;
LABEL_21:
    v96 = v59;
    v22 = v73;
    v26 = v74;
LABEL_22:
    sub_1000F9208(v89, v89[3]);
    sub_1000F9258();
    sub_1001D2410();
    LOBYTE(v84[0]) = 0;
    sub_1001D2320();
    if (v3)
    {
      (*v76)(v38, v26);
      (*(v71 + 8))(v70, v72);
      v68 = v22;
LABEL_28:
      sub_10005EF8C(v68);

      goto LABEL_29;
    }

    v67 = *(v75 + 20);
    LOBYTE(v84[0]) = 1;
    sub_1001CFD60();
    sub_1000FA208(&qword_100228918, &type metadata accessor for Date);
    sub_1001D2340();
    (*v76)(v38, v26);
    sub_10005EF8C(v22);
    v23 = v96;
    if (v83 == v87)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1000F64E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_1001D2050();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_1001D2190();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_1000F657C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F92AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for RequestLog.Element()
{
  result = qword_10022C978;
  if (!qword_10022C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000F65F4()
{
  result = qword_10022C8D8;
  if (!qword_10022C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C8D8);
  }

  return result;
}

void *sub_1000F6648(uint64_t a1)
{
  v3 = type metadata accessor for RequestLog.Element();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9 - 8, v11);
  v14 = &v25[-v13];
  v15 = *v1;
  v16 = *(*v1 + 24);
  if (v16)
  {
    v17 = v16 - 1;
    if (__OFSUB__(v16, 1))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v17 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v17 >= v16)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v18 = v15[4] + v17;
    v19 = v15[2];
    if (v18 < v19)
    {
      v19 = 0;
    }

    sub_10005EF28(v15 + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + (v18 - v19) * *(v4 + 72), v8);
    sub_10005EFE8(v8, v14);
    (*(v4 + 56))(v14, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v14, 1, 1, v3);
  }

  result = sub_1000F9CAC(v14);
  v20 = v15[3];
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v1;
  if (*(*v1 + 16) < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000F7E2C(isUniquelyReferenced_nonNull_native, v21, 0, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
    v24 = *v1;
  }

  return sub_1000F80A0((v24 + 16), v24 + ((*(v4 + 80) + 40) & ~*(v4 + 80)), a1);
}

uint64_t sub_1000F6880(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001CFD60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(type metadata accessor for RequestLog.Element() + 20);
  sub_1001CFCF0();
  v13 = sub_1001CFCD0();
  (*(v7 + 8))(v11, v6);
  v14 = *a1;
  v15 = *(*a1 + 16);
  v16 = *(*a1 + 48);
  v20[1] = *(*a1 + 32);
  v20[2] = v16;
  v21 = *(v14 + 64);
  v20[0] = v15;
  sub_10001BB84(v20, v19);
  LODWORD(a3) = sub_1000E9A28(a2, v20, a3);
  sub_10001BB30(v20);
  return v13 & ~a3 & 1;
}

uint64_t sub_1000F69E4(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for RequestLog.Element();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[4];
  if (a3[2] >= a3[3] + v12)
  {
    v13 = a3[3] + v12;
  }

  else
  {
    v13 = a3[2];
  }

  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v62 = a3;
  v63 = v12;
  v64 = v13;

  v55 = 0;
  v56 = v6;
  v53 = a2;
  v57 = a1;
  v58 = v14;
  v59 = v7;
  while (1)
  {
    if (v12 == v13)
    {
      v15 = sub_1000F7970();
      v16 = v62;
      if ((v15 & 1) == 0)
      {

        return v55;
      }
    }

    else
    {
      v16 = v62;
    }

    v17 = v63;
    v12 = ++v63;
    sub_10005EF28(v16 + v14 + *(v7 + 72) * v17, v11);
    sub_1001CFD60();
    v18 = *(v6 + 20);
    sub_1000FA208(&qword_100230230, &type metadata accessor for Date);
    if (sub_1001D1770())
    {
      break;
    }

LABEL_8:
    sub_10005EF8C(v11);
    v13 = v64;
  }

  v19 = *v11;
  v20 = *(*v11 + 24);
  v21 = *(*v11 + 32);
  v23 = *(*v11 + 40);
  v22 = *(*v11 + 48);
  v24 = *(*v11 + 64);
  v61 = *(*v11 + 56);
  v25 = a2[1];
  if (v25)
  {
    if (*a2 != *(v19 + 16) || v25 != v20)
    {
      v27 = v20;
      v28 = sub_1001D2470();
      v20 = v27;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v14 = v58;
        v7 = v59;
        goto LABEL_8;
      }
    }
  }

  v29 = a2[3];
  v60 = v20;
  if (!v29 || ((v30 = a2[2], v30 == v21) ? (v31 = v29 == v23) : (v31 = 0), v31))
  {
  }

  else
  {
    v32 = a2[2];
    v54 = sub_1001D2470();

    if ((v54 & 1) == 0)
    {
      sub_1000E47D4(46, 0xE100000000000000, v21, v23);
      if (v33)
      {
        goto LABEL_5;
      }

      v34 = sub_1001D1920();
      v38 = sub_1000E505C(v30, v29, v34, v35, v36, v37);

      if ((v38 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  v39 = a2[5];
  if (v39 && (a2[4] != v22 || v39 != v61) && (sub_1001D2470() & 1) == 0)
  {
LABEL_5:

LABEL_6:

    v6 = v56;
    goto LABEL_7;
  }

  v40 = a2[6];
  v41 = *(v40 + 16);
  if (!v41)
  {

    goto LABEL_50;
  }

  v42 = (v40 + 56);
  while (2)
  {
    if (!*(v24 + 16))
    {
LABEL_45:

LABEL_48:
      a2 = v53;
      goto LABEL_6;
    }

    v44 = *(v42 - 1);
    v43 = *v42;
    v45 = *(v42 - 3);
    v46 = *(v42 - 2);

    v47 = sub_100006028(v45, v46);
    if ((v48 & 1) == 0)
    {

      v61 = v23;
      v60 = v46;
      goto LABEL_48;
    }

    v49 = (*(v24 + 56) + 16 * v47);
    if (*v49 == v44 && v49[1] == v43)
    {
    }

    else
    {
      v51 = sub_1001D2470();

      if ((v51 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v42 += 4;
    if (--v41)
    {
      continue;
    }

    break;
  }

  a2 = v53;
LABEL_50:
  v6 = v56;

  if (v55 != -1)
  {
    ++v55;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F6E7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a2;
  v70 = a1;
  v61 = a4;
  v5 = type metadata accessor for RequestLog.Element();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v73 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v11);
  v13 = &v61 - v12;
  v14 = a3[4];
  if (a3[2] >= a3[3] + v14)
  {
    v15 = a3[3] + v14;
  }

  else
  {
    v15 = a3[2];
  }

  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v74 = a3;
  v75 = v14;
  v76 = v15;

  v62 = v5;
  v63 = v6;
  v64 = v16;
  v65 = v13;
  while (1)
  {
    if (v14 == v15)
    {
      v17 = sub_1000F7970();
      v18 = v74;
      if ((v17 & 1) == 0)
      {

        return (*(v6 + 56))(v61, 1, 1, v5);
      }
    }

    else
    {
      v18 = v74;
    }

    v19 = v75;
    v14 = ++v75;
    sub_10005EF28(v18 + v16 + *(v6 + 72) * v19, v13);
    sub_10005EFE8(v13, v73);
    sub_1001CFD60();
    v20 = *(v5 + 20);
    sub_1000FA208(&qword_100230230, &type metadata accessor for Date);
    if (sub_1001D1770())
    {
      v21 = *v73;
      v22 = *(*v73 + 24);
      v23 = *(*v73 + 32);
      v24 = *(*v73 + 40);
      v25 = *(*v73 + 56);
      v26 = *(*v73 + 64);
      v67 = *(*v73 + 48);
      v68 = v25;
      v27 = v72[1];
      v71 = v24;
      if (!v27)
      {
        break;
      }

      if (*v72 == *(v21 + 16) && v27 == v22)
      {
        break;
      }

      v29 = v23;
      v30 = v14;
      v31 = v6;
      v32 = v5;
      v33 = v22;
      v34 = sub_1001D2470();
      v24 = v71;
      v22 = v33;
      v5 = v32;
      v6 = v31;
      v14 = v30;
      v23 = v29;
      if (v34)
      {
        break;
      }
    }

LABEL_7:
    sub_10005EF8C(v73);
    v15 = v76;
  }

  v66 = v14;
  v35 = v72[3];
  v69 = v22;
  if (!v35 || (v36 = v72[2], v36 == v23) && v35 == v24)
  {

    v37 = v68;
  }

  else
  {
    v51 = v72[2];
    v52 = sub_1001D2470();

    v37 = v68;

    if ((v52 & 1) == 0)
    {
      sub_1000E47D4(46, 0xE100000000000000, v23, v71);
      if (v53)
      {
        goto LABEL_5;
      }

      v54 = sub_1001D1920();
      v58 = sub_1000E505C(v36, v35, v54, v55, v56, v57);

      if ((v58 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  v38 = v72[5];
  if (v38 && (v72[4] != v67 || v38 != v37) && (sub_1001D2470() & 1) == 0)
  {
LABEL_5:

LABEL_6:
    v16 = v64;
    v13 = v65;
    v14 = v66;

    goto LABEL_7;
  }

  v39 = v72[6];
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = (v39 + 56);
    while (*(v26 + 16))
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v45 = *(v41 - 3);
      v44 = *(v41 - 2);

      v46 = sub_100006028(v45, v44);
      if ((v47 & 1) == 0)
      {

        v71 = v69;
        v69 = v44;
        goto LABEL_44;
      }

      v48 = (*(v26 + 56) + 16 * v46);
      if (*v48 == v43 && v48[1] == v42)
      {
      }

      else
      {
        v50 = sub_1001D2470();

        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      v41 += 4;
      if (!--v40)
      {

        v5 = v62;
        goto LABEL_46;
      }
    }

LABEL_44:
    v5 = v62;
    v6 = v63;
    goto LABEL_6;
  }

LABEL_46:

  v59 = v61;
  sub_10005EFE8(v73, v61);
  return (*(v63 + 56))(v59, 0, 1, v5);
}

uint64_t sub_1000F73E4(void *a1, void *a2)
{
  v4 = type metadata accessor for RequestLog.Element();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v65 - v12;
  v73 = sub_100011AC0(&qword_10022C9E8, &unk_1001DD7F0);
  v14 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73, v15);
  v17 = &v65 - v16;
  v18 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v65 - v25;
  v27 = *(v5 + 80);
  v28 = a2[4];
  v29 = a2[3] + v28;
  if (a2[2] < v29)
  {
    v29 = a2[2];
  }

  v81 = a2;
  v82 = v28;
  v83 = v29;
  v30 = a1[4];
  v31 = a1[3] + v30;
  if (a1[2] < v31)
  {
    v31 = a1[2];
  }

  v74 = (v27 + 40) & ~v27;
  v75 = v5;
  v78 = a1;
  v79 = v30;
  v80 = v31;
  v72 = (v5 + 56);
  v32 = (v5 + 48);

  v68 = v17;
  v69 = v4;
  v70 = v13;
  v71 = v10;
  v66 = v26;
  v67 = v23;
  v65 = (v5 + 48);
  while (1)
  {
    v33 = v82;
    v34 = v72;
    if (v82 != v83)
    {
      goto LABEL_9;
    }

    if (sub_1000F7970())
    {
      v33 = v82;
LABEL_9:
      v82 = v33 + 1;
      sub_10005EF28(v81 + v74 + *(v75 + 72) * v33, v26);
      v35 = 0;
      goto LABEL_11;
    }

    v35 = 1;
LABEL_11:
    v36 = *v34;
    (*v34)(v26, v35, 1, v4);
    v37 = v79;
    if (v79 != v80)
    {
      goto LABEL_14;
    }

    if (sub_1000F7970())
    {
      v37 = v79;
LABEL_14:
      v79 = v37 + 1;
      sub_10005EF28(v78 + v74 + *(v75 + 72) * v37, v23);
      v38 = 0;
      goto LABEL_16;
    }

    v38 = 1;
LABEL_16:
    v36(v23, v38, 1, v4);
    v39 = *(v73 + 48);
    sub_1000FA250(v26, v17);
    sub_1000FA250(v23, &v17[v39]);
    v40 = *v32;
    if ((*v32)(v17, 1, v4) == 1)
    {
      break;
    }

    if (v40(&v17[v39], 1, v4) == 1)
    {

      sub_10005EF8C(v17);
      return 0;
    }

    sub_10005EFE8(v17, v13);
    sub_10005EFE8(&v17[v39], v10);
    v41 = *(*v13 + 16);
    v42 = *(*v13 + 24);
    v43 = *(*v13 + 32);
    v44 = *(*v13 + 40);
    v45 = *(*v13 + 48);
    v46 = *(*v13 + 56);
    v47 = *(*v13 + 64);
    v48 = *v10;
    v49 = *(*v10 + 16);
    v50 = *(*v10 + 24);
    v52 = v48[4];
    v51 = v48[5];
    v54 = v48[6];
    v53 = v48[7];
    v76 = v48[8];
    v77 = v51;
    if (v41 != v49 || v42 != v50)
    {
      v55 = v45;
      v56 = sub_1001D2470();
      v45 = v55;
      if ((v56 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (v43 != v52 || v44 != v77)
    {
      v57 = v45;
      v58 = sub_1001D2470();
      v45 = v57;
      if ((v58 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if ((v45 != v54 || v46 != v53) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_30;
    }

    v59 = v76;

    v60 = sub_1000CF830(v47, v59);

    if ((v60 & 1) == 0)
    {
LABEL_30:
      sub_10005EF8C(v71);
      sub_10005EF8C(v70);
LABEL_31:

      return 0;
    }

    v4 = v69;
    v13 = v70;
    v61 = *(v69 + 20);
    v10 = v71;
    v62 = sub_1001CFD30();
    sub_10005EF8C(v10);
    sub_10005EF8C(v13);
    v23 = v67;
    v17 = v68;
    v32 = v65;
    v26 = v66;
    if ((v62 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v63 = v40(&v17[v39], 1, v4);
  result = 1;
  if (v63 == 1)
  {
    return result;
  }

  sub_1000F9CAC(&v17[v39]);
  return 0;
}

uint64_t sub_1000F7970()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_1000F79D8(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
    v12 = swift_allocObject();
    v15 = *(v4 + 24);
    *(v12 + 16) = v6;
    *(v12 + 24) = v15;
    if (v15 >= 1)
    {
      sub_1000F8CB8(v12 + 16, v12 + 40, v5, v4 + 40);
    }
  }

  else
  {
    v9 = a3 & 1;
    v10 = *v3;
    sub_1001D0120(a2, v9);
    if (a1)
    {
      v11 = *(v4 + 24);
      sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
      v12 = swift_allocObject();
      v13 = j__malloc_size(v12);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 25;
      }

      *(v12 + 16) = v14 >> 4;
      *(v12 + 24) = v11;
      *(v12 + 32) = 0;
      if (v11 >= 1)
      {
        sub_1000F8380(v12 + 16, (v12 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
      v12 = swift_allocObject();
      v16 = j__malloc_size(v12);
      v17 = v16 - 40;
      if (v16 < 40)
      {
        v17 = v16 - 25;
      }

      v18 = *(v4 + 24);
      *(v12 + 16) = v17 >> 4;
      *(v12 + 24) = v18;
      *(v12 + 32) = 0;
      if (v18 >= 1)
      {
        sub_1000F890C(v12 + 16, v12 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v12;
  return result;
}

size_t sub_1000F7B84(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(v10 - 8);
    v21 = *(v20 + 80);
    sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
    v22 = *(v20 + 72);
    v17 = swift_allocObject();
    v23 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v23;
    if (v23 >= 1)
    {
      sub_1000F8D8C(v17 + 16, v17 + ((v21 + 40) & ~v21), v8, v7 + ((v21 + 40) & ~v21));
    }

    goto LABEL_19;
  }

  sub_1001D0120(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_1000F84A8(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
  v24 = *(v12 + 72);
  v25 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v24)
  {
    goto LABEL_21;
  }

  if (result - v25 != 0x8000000000000000 || v24 != -1)
  {
    v27 = *(v7 + 24);
    *(v17 + 16) = (result - v25) / v24;
    *(v17 + 24) = v27;
    *(v17 + 32) = 0;
    if (v27 >= 1)
    {
      sub_1000F89F0(v17 + 16, v17 + v25, v8, v7 + v25);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

size_t sub_1000F7E2C(char a1, Swift::Int a2, char a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  v14 = (*v7 + 16);
  v15 = *v14;
  v16 = a4(0);
  v17 = v16;
  if (v15 >= a2)
  {
    v26 = *(v16 - 8);
    v27 = *(v26 + 80);
    sub_100011AC0(a5, a6);
    v28 = *(v26 + 72);
    v23 = swift_allocObject();
    v29 = *(v13 + 24);
    *(v23 + 16) = v15;
    *(v23 + 24) = v29;
    if (v29 >= 1)
    {
      sub_1000F8F20(v23 + 16, v23 + ((v27 + 40) & ~v27), v14, v13 + ((v27 + 40) & ~v27), a7);
    }

    goto LABEL_19;
  }

  sub_1001D0120(a2, a3 & 1);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (a1)
  {
    v20 = *(v13 + 24);
    sub_100011AC0(a5, a6);
    v21 = *(v18 + 72);
    v22 = (v19 + 40) & ~v19;
    v23 = swift_allocObject();
    result = j__malloc_size(v23);
    if (v21)
    {
      if (result - v22 != 0x8000000000000000 || v21 != -1)
      {
        *(v23 + 16) = (result - v22) / v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = 0;
        if (v20 >= 1)
        {
          sub_1000F86B4(v23 + 16, v23 + v22, v14, v13 + v22, a7);
          *(v13 + 24) = 0;
        }

LABEL_19:

        *v7 = v23;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011AC0(a5, a6);
  v30 = *(v18 + 72);
  v31 = (v19 + 40) & ~v19;
  v23 = swift_allocObject();
  result = j__malloc_size(v23);
  if (!v30)
  {
    goto LABEL_21;
  }

  if (result - v31 != 0x8000000000000000 || v30 != -1)
  {
    v33 = *(v13 + 24);
    *(v23 + 16) = (result - v31) / v30;
    *(v23 + 24) = v33;
    *(v23 + 32) = 0;
    if (v33 >= 1)
    {
      sub_1000F8B64(v23 + 16, v23 + v31, v14, v13 + v31, a7);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1000F80A0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for RequestLog.Element();
        result = sub_10005EF28(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F815C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = (a2 + 16 * v6);
        *v8 = a3;
        v8[1] = a4;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          result[1] = v9;
          return sub_100012038(a3, a4);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F81E4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
        result = sub_1000F9D14(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1000F82AC(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_1001D0720();
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1000F8380(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

void sub_1000F84A8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72) * v11 <= a2)
  {
    sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1000F86B4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      v12 = v6;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v6 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < 1)
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = a4 + v15 * v5;
  if (v17 <= a2 && v17 + v15 * v12 > a2)
  {
    if (v17 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v6 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v20 = a2 + v15 * v12;
      if (v20 < v16 || v20 >= v16 + v15 * v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void *sub_1000F884C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = sub_1001D0720();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F890C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1000F89F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_1000F8B64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 < v8)
  {
    v10 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v11 = v6;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  v13 = *(v9 + 72);
  if (v11 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v12)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1000F8CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1000F8D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(sub_100011AC0(&qword_10022C908, &qword_1001DD4C0) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void sub_1000F8F20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  v9 = *(a5(0) - 8);
  if (v6 >= v8)
  {
    v11 = 0;
    v10 = 0;
    if (v8 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v12 = *(v9 + 72) * v5;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v8 && v10 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1000F903C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  v8 = *(*a2 + 48);
  v9 = *(*a2 + 56);
  v16 = *(*a1 + 64);
  v17 = *(*a2 + 64);
  v10 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (!v10 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v11 = v3 == v7 && v2 == v6;
  if (!v11 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (!v12 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1000CF830(v16, v17);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for RequestLog.Element() + 20);

  return sub_1001CFD30();
}

uint64_t sub_1000F9208(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000F9258()
{
  result = qword_10022C8E0;
  if (!qword_10022C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C8E0);
  }

  return result;
}

uint64_t sub_1000F92AC(uint64_t *a1)
{
  v63 = type metadata accessor for RequestLog.Element();
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  __chkstk_darwin(v63, v3);
  v66 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_1001CFD60();
  v61 = *(v65 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v65, v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022C8E8, &qword_1001DD4A0);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v55 - v11;
  v13 = sub_100011AC0(&qword_10022C8F0, &qword_1001DD4A8);
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v55 - v16;
  v18 = sub_1001D0110();
  v19 = *v18;
  v20 = a1[3];
  v21 = a1[4];
  v68 = a1;
  v22 = sub_100024DC8(a1, v20);
  sub_1000F65F4();

  v23 = v71;
  sub_1001D25E0();
  if (v23)
  {

    sub_100011CF0(v68);
    return v22;
  }

  v56 = v18;
  v57 = v12;
  v59 = v19;
  v58 = v8;
  v24 = v65;
  v25 = v66;
  LOBYTE(v74) = 1;
  sub_1001D2200();
  v55 = v17;
  v80 = &_swiftEmptyArrayStorage;
  sub_100024DC8(v78, v79);
  v26 = sub_1001D23E0();
  if ((v27 & 1) == 0)
  {
    sub_1000F64E0(v26);
  }

  sub_100024DC8(v78, v79);
  while ((sub_1001D2400() & 1) == 0)
  {
    sub_1000F9208(v78, v79);
    sub_1000E544C();
    sub_1001D23F0();
    v70 = v75;
    v71 = v74;
    v28 = v76;
    type metadata accessor for RequestLog.Element.Storage();
    v69 = v77;
    v29 = swift_allocObject();
    v30 = v70;
    *(v29 + 16) = v71;
    *(v29 + 32) = v30;
    *(v29 + 48) = v28;
    *(v29 + 56) = v69;
    sub_1001D19B0();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001D19F0();
    }

    sub_1001D1A20();
    sub_100024DC8(v78, v79);
  }

  LOBYTE(v73) = 0;
  sub_1001D2200();
  v31 = *v56;
  v73 = *v56;
  sub_100024DC8(&v74, *(&v75 + 1));

  v32 = sub_1001D23E0();
  if ((v33 & 1) == 0)
  {
    v34 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v31[2] < v34 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F7E2C(isUniquelyReferenced_nonNull_native, v34, 1, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
    }
  }

  sub_100024DC8(&v74, *(&v75 + 1));
  if (sub_1001D2400())
  {
LABEL_16:
    (*(v67 + 8))(v55, v13);

    v22 = v73;
    sub_100011CF0(&v74);

    sub_100011CF0(v78);
    sub_100011CF0(v68);
    return v22;
  }

  *&v71 = v61 + 16;
  *&v70 = v61 + 8;
  v37 = (v60 + 8);
  while (1)
  {
    sub_1000F9208(&v74, *(&v75 + 1));
    sub_1000F9258();
    sub_1001D23D0();
    v72 = 0;
    v38 = sub_1001D2270();
    v72 = 1;
    sub_1000FA208(&qword_100228910, &type metadata accessor for Date);
    result = sub_1001D2290();
    if ((v80 & 0xC000000000000001) != 0)
    {
      v41 = sub_1001D2040();
      v40 = v24;
      v39 = v64;
      goto LABEL_23;
    }

    v39 = v64;
    if ((v38 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v38 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v40 = v24;
    v41 = *(v80 + 8 * v38 + 32);

LABEL_23:
    result = (*v71)(v25 + *(v63 + 20), v39, v40);
    *v25 = v41;
    v42 = v73;
    v43 = v73[3];
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v42[2] < v44 || (result & 1) == 0)
    {
      result = sub_1000F7E2C(result, v44, 0, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
      v42 = v73;
    }

    v46 = v42[3];
    v45 = v42[4];
    v50 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v50)
    {
      goto LABEL_42;
    }

    v48 = v58;
    if (v46 < 0)
    {
      if (v47 < 0)
      {
        v52 = v42[2];
        v50 = __OFADD__(v47, v52);
        v47 += v52;
        if (v50)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v49 = v42[2];
      v50 = __OFSUB__(v47, v49);
      v51 = v47 - v49;
      if (v51 < 0 == v50)
      {
        v47 = v51;
        if (v50)
        {
          goto LABEL_44;
        }
      }
    }

    result = sub_10005EF28(v25, v42 + ((*(v62 + 80) + 40) & ~*(v62 + 80)) + *(v62 + 72) * v47);
    v53 = v42[3];
    v50 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v50)
    {
      goto LABEL_43;
    }

    v42[3] = v54;
    (*v70)(v39, v40);
    (*v37)(v57, v48);
    sub_10005EF8C(v25);
    sub_100024DC8(&v74, *(&v75 + 1));
    if (sub_1001D2400())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
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
  return result;
}

uint64_t sub_1000F9CAC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F9D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000F9E78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000F9F1C()
{
  result = type metadata accessor for RequestLog.Element.Storage();
  if (v1 <= 0x3F)
  {
    result = sub_1001CFD60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000F9FFC()
{
  result = qword_10022C9B8;
  if (!qword_10022C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9B8);
  }

  return result;
}

unint64_t sub_1000FA054()
{
  result = qword_10022C9C0;
  if (!qword_10022C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9C0);
  }

  return result;
}

unint64_t sub_1000FA0AC()
{
  result = qword_10022C9C8;
  if (!qword_10022C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9C8);
  }

  return result;
}

unint64_t sub_1000FA104()
{
  result = qword_10022C9D0;
  if (!qword_10022C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9D0);
  }

  return result;
}

unint64_t sub_1000FA15C()
{
  result = qword_10022C9D8;
  if (!qword_10022C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9D8);
  }

  return result;
}

unint64_t sub_1000FA1B4()
{
  result = qword_10022C9E0;
  if (!qword_10022C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9E0);
  }

  return result;
}

uint64_t sub_1000FA208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FA250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FA2C8(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a1;
  v68 = a2;
  v4 = sub_100011AC0(&qword_10022C9F8, &unk_1001DD808);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v63 = &v55 - v7;
  v64 = type metadata accessor for SessionLog.Element();
  v57 = *(v64 - 8);
  v8 = *(v57 + 64);
  v10 = __chkstk_darwin(v64, v9);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v56 = &v55 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v58 = (&v55 - v17);
  __chkstk_darwin(v16, v18);
  v60 = (&v55 - v19);
  v20 = sub_1001CFD60();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = &v55 - v30;
  v32 = a3[3];
  v33 = a3[4];
  v59 = a3;
  sub_100024DC8(a3, v32);
  sub_1001D0430();
  sub_1001D0210();
  v34 = *(v27 + 8);
  v55 = v26;
  v34(v31, v26);
  sub_1001CFCF0();
  v35 = *v66;
  v70 = v25;
  v36 = v66;
  v37 = sub_1000F2568(sub_1000F4384, v69, v35);

  *v36 = v37;
  v61 = v21;
  v38 = *(v21 + 8);
  v65 = v20;
  v38(v25, v20);
  if (!*(v37 + 16))
  {
    goto LABEL_7;
  }

  v39 = sub_100006598(v67);
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

  v41 = *(v37 + 56);
  v42 = v56;
  sub_1000FB278(v41 + *(v57 + 72) * v39, v56);
  v43 = v58;
  sub_1000FB7B8(v42, v58);
  v44 = v34;
  v46 = *(v64 + 20);
  v45 = (v64 + 20);
  v47 = v59[3];
  v56 = v59[4];
  v57 = v46;
  sub_100024DC8(v59, v47);
  sub_1001D0430();
  sub_1001D0210();
  v44(v31, v55);
  sub_1001CFCE0();
  LOBYTE(v42) = sub_1001CFCC0();
  v38(v25, v65);
  if ((v42 & 1) == 0)
  {
    sub_1000FB398(v43);
LABEL_7:
    v45 = (v64 + 20);
    v51 = 1;
LABEL_8:
    v52 = v60;
    (*(v61 + 16))(v60 + *v45, v68, v65);
    *v52 = v51;
    v53 = v62;
    sub_1000FB278(v52, v62);
    v54 = v63;
    sub_1000FB538(v53, v67, v63);
    sub_100011F00(v54, &qword_10022C9F8, &unk_1001DD808);
    return sub_1000FB398(v52);
  }

  v48 = *v43;
  result = sub_1000FB398(v43);
  v50 = __CFADD__(v48, 1);
  v51 = v48 + 1;
  if (!v50)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA7B0(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022CAE0, &qword_1001DD910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000FBD84();
  sub_1001D25F0();
  v12 = *v3;
  v15[15] = 0;
  sub_1001D2330();
  if (!v2)
  {
    v13 = *(type metadata accessor for SessionLog.Element() + 20);
    v15[14] = 1;
    sub_1001CFD60();
    sub_1000FBDD8(&qword_100228918, &type metadata accessor for Date);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1000FA968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1001CFD60();
  v25 = *(v28 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v28, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100011AC0(&qword_10022CAD0, &qword_1001DD908);
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v29, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SessionLog.Element();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000FBD84();
  sub_1001D25E0();
  if (!v2)
  {
    v24 = v12;
    v18 = v27;
    v19 = v28;
    v31 = 0;
    v20 = v29;
    *v16 = sub_1001D2280();
    v30 = 1;
    sub_1000FBDD8(&qword_100228910, &type metadata accessor for Date);
    v23 = v7;
    sub_1001D2290();
    (*(v18 + 8))(v11, v20);
    (*(v25 + 32))(v16 + *(v24 + 20), v23, v19);
    sub_1000FB7B8(v16, v26);
  }

  return sub_100011CF0(a1);
}

uint64_t sub_1000FAC4C(void *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022CAB8, &qword_1001DD900);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1000FBB58();
  sub_1001D25F0();
  v12[1] = a2;
  sub_100011AC0(&qword_10022CAA0, &qword_1001DD8F8);
  sub_1000FBC98();
  sub_1001D2340();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1000FADA8()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_1000FADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000FAEC4(uint64_t a1)
{
  v2 = sub_1000FBD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FAF00(uint64_t a1)
{
  v2 = sub_1000FBD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FAF6C(uint64_t a1)
{
  v2 = sub_1000FBB58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FAFA8(uint64_t a1)
{
  v2 = sub_1000FBB58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000FAFE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000FB9C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1000FB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a2;
  v25[1] = a3;
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022C9F0, &qword_1001DD800);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = v25 - v18;
  v20 = sub_1001CFDA0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  sub_1000FB278(v25[0], &v19[*(v11 + 56)]);
  sub_1000FB328(v19, v16);
  v22 = &v16[*(v11 + 56)];
  v23 = type metadata accessor for SessionLog.Element();
  (*(v5 + 16))(v9, v22 + *(v23 + 20), v4);
  sub_1000FB398(v22);
  LOBYTE(v22) = sub_1001CFCD0();
  (*(v5 + 8))(v9, v4);
  sub_100011F00(v19, &qword_10022C9F0, &qword_1001DD800);
  (*(v21 + 8))(v16, v20);
  return (v22 & 1) == 0;
}

uint64_t sub_1000FB278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionLog.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SessionLog.Element()
{
  result = qword_10022CA58;
  if (!qword_10022CA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FB328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C9F0, &qword_1001DD800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB398(uint64_t a1)
{
  v2 = type metadata accessor for SessionLog.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FB3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SessionLog.Element();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = (&v20 - v13);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v15 = sub_100006598(a2);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1000FB278(*(a3 + 56) + *(v6 + 72) * v15, v11);
  sub_1000FB7B8(v11, v14);
  v17 = *(v5 + 20);
  if (sub_1001CFCD0())
  {
    v18 = *v14;
  }

  else
  {
    v18 = 0;
  }

  sub_1000FB398(v14);
  return v18;
}

uint64_t sub_1000FB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v32 = a3;
  v8 = sub_1001CFDA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v33 = v16;
  v18 = sub_100006598(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v17;
  if (v16[3] >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v32;
      v24 = v33;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v13, a2, v8);
      sub_100018008(v18, v13, a1, v24);
      v31 = type metadata accessor for SessionLog.Element();
      result = (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
      goto LABEL_12;
    }

LABEL_10:
    sub_100010298();
    v25 = v32;
    v24 = v33;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_10000D19C(v21, isUniquelyReferenced_nonNull_native);
  v22 = sub_100006598(a2);
  if ((v4 & 1) == (v23 & 1))
  {
    v18 = v22;
    v25 = v32;
    v24 = v33;
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v26 = v24[7];
    v27 = type metadata accessor for SessionLog.Element();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72) * v18;
    sub_1000FB7B8(v26 + v29, v25);
    sub_1000FB7B8(a1, v24[7] + v29);
    result = (*(v28 + 56))(v25, 0, 1, v27);
LABEL_12:
    *v5 = v24;
    return result;
  }

  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1000FB7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionLog.Element();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001CFD60();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000FB8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001CFD60();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000FB938()
{
  result = sub_1001CFD60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1000FB9C4(uint64_t *a1)
{
  v3 = sub_100011AC0(&qword_10022CA90, &qword_1001DD8F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v12 - v7;
  sub_1000DB010(&_swiftEmptyArrayStorage);

  v9 = a1[4];
  v10 = sub_100024DC8(a1, a1[3]);
  sub_1000FBB58();
  sub_1001D25E0();
  if (v1)
  {
    sub_100011CF0(a1);
  }

  else
  {
    sub_100011AC0(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBBAC();
    sub_1001D2290();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    sub_100011CF0(a1);
  }

  return v10;
}

unint64_t sub_1000FBB58()
{
  result = qword_10022CA98;
  if (!qword_10022CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CA98);
  }

  return result;
}

unint64_t sub_1000FBBAC()
{
  result = qword_10022CAA8;
  if (!qword_10022CAA8)
  {
    sub_100011DF4(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBDD8(&qword_100228950, &type metadata accessor for UUID);
    sub_1000FBDD8(&qword_10022CAB0, type metadata accessor for SessionLog.Element);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAA8);
  }

  return result;
}

unint64_t sub_1000FBC98()
{
  result = qword_10022CAC0;
  if (!qword_10022CAC0)
  {
    sub_100011DF4(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBDD8(&qword_100228B40, &type metadata accessor for UUID);
    sub_1000FBDD8(&qword_10022CAC8, type metadata accessor for SessionLog.Element);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAC0);
  }

  return result;
}

unint64_t sub_1000FBD84()
{
  result = qword_10022CAD8;
  if (!qword_10022CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAD8);
  }

  return result;
}

uint64_t sub_1000FBDD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000FBE44()
{
  result = qword_10022CAE8;
  if (!qword_10022CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAE8);
  }

  return result;
}

unint64_t sub_1000FBE9C()
{
  result = qword_10022CAF0;
  if (!qword_10022CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAF0);
  }

  return result;
}

unint64_t sub_1000FBEF4()
{
  result = qword_10022CAF8;
  if (!qword_10022CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAF8);
  }

  return result;
}

unint64_t sub_1000FBF4C()
{
  result = qword_10022CB00;
  if (!qword_10022CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB00);
  }

  return result;
}

unint64_t sub_1000FBFA4()
{
  result = qword_10022CB08;
  if (!qword_10022CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB08);
  }

  return result;
}

unint64_t sub_1000FBFFC()
{
  result = qword_10022CB10;
  if (!qword_10022CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB10);
  }

  return result;
}

uint64_t sub_1000FC050(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_1001D0160();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v21, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v24 = &_swiftEmptyArrayStorage;
  sub_100151668(0, v11, 0);
  v12 = v24;
  v13 = *(type metadata accessor for RateLimitConfiguration(0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20 = v6 + 32;
  v19 = *(v13 + 72);
  while (1)
  {
    v22(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_100151668(v15 > 1, v16 + 1, 1);
      v12 = v24;
    }

    v12[2] = v16 + 1;
    (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v10, v21);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FC254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 464) = a4;
  *(v6 + 472) = v5;
  *(v6 + 600) = a5;
  *(v6 + 448) = a2;
  *(v6 + 456) = a3;
  *(v6 + 440) = a1;
  v7 = sub_1001CFD60();
  *(v6 + 480) = v7;
  v8 = *(v7 - 8);
  *(v6 + 488) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 496) = swift_task_alloc();
  v10 = sub_1001D02F0();
  *(v6 + 504) = v10;
  v11 = *(v10 - 8);
  *(v6 + 512) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 520) = swift_task_alloc();
  v13 = sub_1001CFDA0();
  *(v6 + 528) = v13;
  v14 = *(v13 - 8);
  *(v6 + 536) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 544) = swift_task_alloc();

  return _swift_task_switch(sub_1000FC3D8, 0, 0);
}

uint64_t sub_1000FC3D8()
{
  if (*(v0 + 600) == 1)
  {
    v1 = *(v0 + 544);
    v2 = *(v0 + 536);
    v3 = *(v0 + 520);
    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 472);
    v41 = *(v0 + 456);
    v42 = *(v0 + 464);
    v40 = *(v0 + 448);
    v38 = *(v0 + 528);
    v39 = *(v0 + 440);
    v7 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);

    sub_1001CFD90();
    v8 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
    v9 = sub_1001D05B0();
    *(v0 + 392) = v9;
    *(v0 + 400) = &protocol witness table for DefaultConfiguration;
    v10 = sub_10003B47C((v0 + 368));
    (*(*(v9 - 8) + 16))(v10, v6 + v8, v9);
    v11 = (v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    v13 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
    v12 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
    *(v0 + 16) = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    *(v0 + 32) = v13;
    *(v0 + 48) = v12;
    v14 = v11[6];
    v16 = v11[3];
    v15 = v11[4];
    *(v0 + 96) = v11[5];
    *(v0 + 112) = v14;
    *(v0 + 64) = v16;
    *(v0 + 80) = v15;
    v17 = v11[10];
    v19 = v11[7];
    v18 = v11[8];
    *(v0 + 160) = v11[9];
    *(v0 + 176) = v17;
    *(v0 + 128) = v19;
    *(v0 + 144) = v18;
    v20 = sub_100011AC0(&qword_10022CB48, &qword_1001DDB40);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    *(v0 + 552) = v23;
    (*(v4 + 104))(v3, enum case for TC2LogCategory.rateLimitRequest(_:), v5);
    sub_1000884D8(v0 + 16, v0 + 192);
    sub_1001D08B0();
    (*(v4 + 8))(v3, v5);
    sub_100101EF8(&qword_100228AF8, &type metadata accessor for UUID);
    v43 = sub_1001D23A0();
    v44 = v24;
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    sub_1001D18B0(v46);
    v25 = (v23 + qword_10022CB58);
    *v25 = v43;
    v25[1] = v44;
    *(v23 + *(*v23 + 152)) = v7;
    (*(v2 + 32))(v23 + *(*v23 + 160), v1, v38);
    sub_1000446FC((v0 + 368), v23 + *(*v23 + 168));
    v26 = (v23 + *(*v23 + 176));
    v27 = *(v0 + 32);
    *v26 = *(v0 + 16);
    v26[1] = v27;
    v28 = *(v0 + 96);
    v26[4] = *(v0 + 80);
    v26[5] = v28;
    v29 = *(v0 + 64);
    v26[2] = *(v0 + 48);
    v26[3] = v29;
    v30 = *(v0 + 176);
    v26[9] = *(v0 + 160);
    v26[10] = v30;
    v31 = *(v0 + 144);
    v26[7] = *(v0 + 128);
    v26[8] = v31;
    v26[6] = *(v0 + 112);
    v32 = (v23 + *(*v23 + 184));
    *v32 = v39;
    v32[1] = v40;
    v33 = (v23 + *(*v23 + 192));
    *v33 = v41;
    v33[1] = v42;

    v34 = swift_task_alloc();
    *(v0 + 560) = v34;
    *v34 = v0;
    v34[1] = sub_1000FC7F4;

    return sub_1000FCF28();
  }

  else
  {
    *(v0 + 576) = 0;
    v36 = *(v0 + 496);
    v37 = *(*(v0 + 472) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v0 + 584) = v37;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

    return _swift_task_switch(sub_1000FC9D0, v37, 0);
  }
}

uint64_t sub_1000FC7F4()
{
  v2 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_1000FCC94;
  }

  else
  {
    v3 = sub_1000FC908;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FC908()
{
  v1 = v0[69];
  swift_setDeallocating();
  v2 = *sub_100101AB8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_deallocClassInstance();
  v0[72] = v0[71];
  v5 = v0[62];
  v6 = *(v0[59] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  v0[73] = v6;
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1000FC9D0, v6, 0);
}

uint64_t sub_1000FC9D0()
{
  v1 = v0[73];
  v2 = v0[72];
  v4 = v0[61];
  v3 = v0[62];
  v12 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  swift_beginAccess();
  v9 = sub_1000EA074(v3, v8, v7, v6, v5);
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v3;
  v0[74] = sub_1000FC050(sub_1000FCE6C, v10, v9);

  (*(v4 + 8))(v3, v12);

  return _swift_task_switch(sub_1000FCB0C, 0, 0);
}

uint64_t sub_1000FCB0C()
{
  v0[54] = v0[74];
  sub_100011AC0(&qword_10022CB18, &qword_1001E1530);
  sub_100024B78(&qword_10022CB20, &qword_10022CB18, &qword_1001E1530);
  sub_1000FCE8C(&qword_10022CB28, &qword_10022CB30);
  sub_1000FCE8C(&qword_10022CB38, &qword_10022CB40);
  v1 = sub_1001D07B0();
  v3 = v2;

  v4 = v0[68];
  v5 = v0[65];
  v6 = v0[62];

  v7 = v0[1];

  return v7(v1, v3);
}

uint64_t sub_1000FCC94()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[59];
  swift_setDeallocating();
  v4 = *sub_100101AB8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_deallocClassInstance();
  swift_errorRetain();
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DE0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[71];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "failure to process TC2RateLimitRequest send, error=%@", v11, 0xCu);
    sub_100011F00(v12, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v14 = v0[68];
  v15 = v0[65];
  v16 = v0[62];

  v17 = v0[1];

  return v17(0, 0xF000000000000000);
}

uint64_t sub_1000FCE8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_10022CB18, &qword_1001E1530);
    sub_100101EF8(a2, &type metadata accessor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FCF28()
{
  v1[57] = v0;
  v2 = sub_1001D0F00();
  v1[58] = v2;
  v3 = *(v2 - 8);
  v1[59] = v3;
  v4 = *(v3 + 64) + 15;
  v1[60] = swift_task_alloc();
  v5 = sub_1001D0F40();
  v1[61] = v5;
  v6 = *(v5 - 8);
  v1[62] = v6;
  v7 = *(v6 + 64) + 15;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v1[65] = v8;
  v9 = *(v8 - 8);
  v1[66] = v9;
  v10 = *(v9 + 64) + 15;
  v1[67] = swift_task_alloc();
  v11 = sub_1001D02E0();
  v1[68] = v11;
  v12 = *(v11 - 8);
  v1[69] = v12;
  v13 = *(v12 + 64) + 15;
  v1[70] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD114, 0, 0);
}

uint64_t sub_1000FD114()
{
  v63 = v0;
  v1 = *(v0 + 456);
  *(v0 + 568) = qword_10022CB50;

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 456);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v62 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + qword_10022CB58), *(v4 + qword_10022CB58 + 8), &v62);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s executing ratelimit request", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v61 = *(v0 + 520);
  v10 = *(v0 + 456);
  v11 = (v10 + *(*v10 + 168));
  v12 = v11[3];
  v13 = v11[4];
  sub_100024DC8(v11, v12);
  v14 = (v10 + *(*v10 + 176));
  *(v0 + 440) = &type metadata for SystemInfo;
  *(v0 + 448) = &protocol witness table for SystemInfo;
  v15 = swift_allocObject();
  *(v0 + 416) = v15;
  v17 = v14[1];
  v16 = v14[2];
  *(v0 + 16) = *v14;
  *(v0 + 32) = v17;
  *(v0 + 48) = v16;
  v18 = v14[6];
  v20 = v14[3];
  v19 = v14[4];
  *(v0 + 96) = v14[5];
  *(v0 + 112) = v18;
  *(v0 + 64) = v20;
  *(v0 + 80) = v19;
  v21 = v14[10];
  v23 = v14[7];
  v22 = v14[8];
  *(v0 + 160) = v14[9];
  *(v0 + 176) = v21;
  *(v0 + 128) = v23;
  *(v0 + 144) = v22;
  v24 = *v14;
  v25 = v14[2];
  v15[2] = v14[1];
  v15[3] = v25;
  v15[1] = v24;
  v26 = v14[3];
  v27 = v14[4];
  v28 = v14[6];
  v15[6] = v14[5];
  v15[7] = v28;
  v15[4] = v26;
  v15[5] = v27;
  v29 = v14[7];
  v30 = v14[8];
  v31 = v14[10];
  v15[10] = v14[9];
  v15[11] = v31;
  v15[8] = v29;
  v15[9] = v30;
  sub_1000884D8(v0 + 16, v0 + 192);
  Configuration.environment(systemInfo:)((v0 + 416), v12, v13, v7);
  sub_100011CF0((v0 + 416));
  v32 = v11[4];
  sub_100024DC8(v11, v11[3]);
  sub_1001D0400();
  sub_1001D0210();
  (*(v9 + 8))(v8, v61);
  v33 = *(v0 + 632);
  LOBYTE(v32) = sub_1001D0280();
  v34 = (v10 + *(*v10 + 184));
  v36 = *v34;
  v35 = v34[1];
  sub_1001D1210();
  *(v0 + 576) = sub_1001D1200();
  v37 = sub_1001D1240();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1001D1230();
  sub_1001D1270();
  v41 = sub_1001D1260();
  if (v32)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  if (v35)
  {

    sub_1001D11E0();
  }

  if (v33)
  {
    v42 = sub_1001D1220();
    *(v0 + 400) = sub_100096568;
    *(v0 + 408) = 0;
    *(v0 + 368) = _NSConcreteStackBlock;
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_100059234;
    *(v0 + 392) = &unk_10021FEF8;
    v43 = _Block_copy((v0 + 368));
    sub_10005A1A4();
    v44 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v42, v43, v44);

    _Block_release(v43);
    swift_unknownObjectRelease();
  }

  v45 = *(v0 + 560);
  v46 = *(v0 + 512);
  v48 = *(v0 + 488);
  v47 = *(v0 + 496);
  v59 = *(v0 + 456);
  v60 = *(v0 + 504);
  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1001D54B0;
  *(v49 + 32) = v41;
  *(v49 + 40) = v40;

  sub_1001D11C0();

  sub_1001D02C0();
  (*(v47 + 104))(v46, enum case for NWEndpoint.url(_:), v48);
  sub_1001D0F30();
  *(v0 + 584) = sub_1001D0F10();
  sub_10005A1A4();
  v58 = sub_1001D1E40();
  *(v0 + 592) = v58;
  v57 = *(*v59 + 160);
  v50 = swift_task_alloc();
  *(v0 + 600) = v50;
  *(v50 + 16) = v59;
  *(v50 + 24) = v45;
  (*(v47 + 16))(v60, v46, v48);
  v51 = sub_1001D11A0();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();

  v54 = sub_1001D1140();
  *(v0 + 608) = v54;

  sub_1001D1030();
  v55 = swift_task_alloc();
  *(v0 + 616) = v55;
  *v55 = v0;
  v55[1] = sub_1000FD760;

  return sub_100135C64(sub_100135C64, v54, v58, v59 + v57, 0x6D696C5F65746172, 0xEA00000000007469, &unk_1001DDB58, v50);
}

uint64_t sub_1000FD760()
{
  v2 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = sub_1000FDAD8;
  }

  else
  {
    v3 = sub_1000FD874;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FD874()
{
  v29 = v0;
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[73];
  v26 = v0[70];
  v27 = v0[71];
  v4 = v0[69];
  v24 = v0[75];
  v25 = v0[68];
  v23 = v0[64];
  v5 = v0[62];
  v21 = v0[72];
  v22 = v0[61];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];
  (*(v7 + 104))(v6, enum case for NWActivity.CompletionReason.success(_:), v8);
  sub_1001D0F20();
  (*(v7 + 8))(v6, v8);

  (*(v5 + 8))(v23, v22);
  (*(v4 + 8))(v26, v25);

  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[57];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000954E0(*(v11 + qword_10022CB58), *(v11 + qword_10022CB58 + 8), &v28);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s finished ratelimit request", v12, 0xCu);
    sub_100011CF0(v13);
  }

  v14 = v0[70];
  v15 = v0[67];
  v17 = v0[63];
  v16 = v0[64];
  v18 = v0[60];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000FDAD8()
{
  v31 = v0;
  v1 = v0[78];
  v2 = v0[76];
  v3 = v0[73];
  v22 = v0[74];
  v23 = v0[72];
  v28 = v0[70];
  v29 = v0[71];
  v4 = v0[69];
  v26 = v0[75];
  v27 = v0[68];
  v5 = v0[62];
  v24 = v0[61];
  v25 = v0[64];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];
  (*(v7 + 104))(v6, enum case for NWActivity.CompletionReason.failure(_:), v8);
  sub_1001D0F20();
  (*(v7 + 8))(v6, v8);
  swift_willThrow();

  (*(v5 + 8))(v25, v24);
  (*(v4 + 8))(v28, v27);

  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[57];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000954E0(*(v11 + qword_10022CB58), *(v11 + qword_10022CB58 + 8), &v30);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s finished ratelimit request", v12, 0xCu);
    sub_100011CF0(v13);
  }

  v14 = v0[70];
  v15 = v0[67];
  v17 = v0[63];
  v16 = v0[64];
  v18 = v0[60];

  v19 = v0[1];
  v20 = v0[78];

  return v19();
}

uint64_t sub_1000FDD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a2;
  v8 = *(*(sub_100011AC0(&qword_100227DF8, &qword_1001DD020) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v9 = *(*(sub_100011AC0(&qword_100229348, &unk_1001D64C0) - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v10 = type metadata accessor for RateLimitConfiguration(0);
  v6[42] = v10;
  v11 = *(v10 - 8);
  v6[43] = v11;
  v12 = *(v11 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v13 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v6[47] = v13;
  v14 = *(v13 - 8);
  v6[48] = v14;
  v15 = *(v14 + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v16 = *(*(sub_100011AC0(&qword_10022AAB0, &unk_1001D9650) - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v17 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6[54] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v19 = *(*(sub_1001D0980() - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v20 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse(0);
  v6[58] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v22 = sub_1001CFD60();
  v6[60] = v22;
  v23 = *(v22 - 8);
  v6[61] = v23;
  v24 = *(v23 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v25 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v6[64] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v6[65] = swift_task_alloc();
  v27 = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6[66] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v6[67] = swift_task_alloc();
  v29 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v6[68] = v29;
  v30 = *(v29 - 8);
  v6[69] = v30;
  v31 = *(v30 + 64) + 15;
  v6[70] = swift_task_alloc();
  v32 = *(*(sub_1001D0F60() - 8) + 64) + 15;
  v6[71] = swift_task_alloc();
  v33 = sub_1001D0F80();
  v6[72] = v33;
  v34 = *(v33 - 8);
  v6[73] = v34;
  v35 = *(v34 + 64) + 15;
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v36 = sub_1001D1380();
  v6[77] = v36;
  v37 = *(v36 - 8);
  v6[78] = v37;
  v38 = *(v37 + 64) + 15;
  v6[79] = swift_task_alloc();
  v39 = sub_1001D0ED0();
  v6[80] = v39;
  v40 = *(v39 - 8);
  v6[81] = v40;
  v41 = *(v40 + 64) + 15;
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v42 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest(0);
  v6[84] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v6[85] = swift_task_alloc();
  v6[33] = a3;

  return _swift_task_switch(sub_1000FE2B0, 0, 0);
}

uint64_t sub_1000FE2B0()
{
  v80 = v0;
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[38];
  sub_100101EF8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
  sub_1001D0B50();
  v4 = sub_1001D0B00();
  v0[86] = v4;
  v0[87] = v5;
  v75 = v4;
  v76 = v5;
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  v6 = *(sub_1001D13D0() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D7180;
  v77 = v9;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[38];
  v14 = sub_10003A37C(v12, qword_100242D78);
  v15 = *(v11 + 16);
  v15(v10, v14, v12);
  v16 = v13 + *(*v13 + 160);
  sub_1001CFD70();
  sub_1001D13A0();
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v72 = v0[83];
  v17 = v0[80];
  v18 = v0[79];
  v19 = v0[77];
  v20 = v0[38];
  v21 = sub_10003A37C(v19, qword_100242D90);
  v69 = v15;
  v15(v18, v21, v19);
  v22 = v20 + *(*v20 + 176);
  v23 = *(v22 + 144);
  v24 = *(v22 + 152);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  v0[34] = v77;
  sub_100101EF8(&qword_1002292D8, &type metadata accessor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448);
  sub_1001D1D50();
  v25 = [objc_opt_self() automatedDeviceGroup];
  if (v25)
  {
    v26 = v25;
    sub_1001D17D0();

    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    v27 = v0[83];
    v28 = v0[79];
    v29 = v0[77];
    v30 = sub_10003A37C(v29, qword_100242E38);
    v69(v28, v30, v29);
    sub_1001D0EF0();
  }

  v66 = v0[82];
  v31 = v0[81];
  v67 = v0[80];
  v68 = v0[83];
  v70 = v0[76];
  v73 = v0[75];
  v78 = v0[73];
  v71 = v0[72];
  v32 = v0[71];
  v33 = v0[70];
  v34 = v0[69];
  v65 = v0[68];
  v36 = v0[38];
  v35 = v0[39];
  sub_1001D0F50();
  sub_1001D0290();
  v37 = *(*v36 + 168);
  v0[88] = v37;
  v38 = *(v36 + v37 + 32);
  sub_100024DC8((v36 + v37), *(v36 + v37 + 24));
  sub_1001D03D0();
  sub_1001D0210();
  (*(v34 + 8))(v33, v65);
  v40 = v0[29];
  v39 = v0[30];
  (*(v31 + 16))(v66, v68, v67);
  sub_1001D0F70();
  v0[89] = qword_10022CB50;
  v41 = *(v78 + 16);
  v41(v73, v70, v71);

  v42 = sub_1001D0E50();
  v43 = sub_1001D1DC0();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[75];
  if (v44)
  {
    v74 = v41;
    v46 = v0[74];
    v47 = v0[73];
    v48 = v0[72];
    v49 = v0[38];
    v50 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_1000954E0(*(v49 + qword_10022CB58), *(v49 + qword_10022CB58 + 8), v79);
    *(v50 + 12) = 2080;
    v74(v46, v45, v48);
    v51 = sub_1001D1830();
    v53 = v52;
    v54 = *(v47 + 8);
    v54(v45, v48);
    v55 = v51;
    v41 = v74;
    v56 = sub_1000954E0(v55, v53, v79);

    *(v50 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s sending request %s", v50, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v57 = v0[73];
    v58 = v0[72];

    v54 = *(v57 + 8);
    v54(v45, v58);
  }

  v0[90] = v54;
  v59 = v0[76];
  v60 = v0[74];
  v61 = v0[72];
  sub_1001D1090();
  v41(v60, v59, v61);
  sub_100012038(v75, v76);
  v62 = sub_1001D1080();
  v0[91] = v62;
  v63 = swift_task_alloc();
  v0[92] = v63;
  *v63 = v0;
  v63[1] = sub_1000FED44;

  return (sub_100138CDC)(v75, v76, v62, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1000FED44()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = v0;

  v5 = v2[91];
  v6 = v2[87];
  v7 = v2[86];

  sub_100011E48(v7, v6);
  if (v0)
  {
    v8 = sub_1000FF1AC;
  }

  else
  {
    v8 = sub_1000FEEAC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000FEEAC()
{
  v24 = v0;
  v1 = v0[89];
  v2 = v0[38];

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000954E0(*(v5 + qword_10022CB58), *(v5 + qword_10022CB58 + 8), &v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s waiting for response", v6, 0xCu);
    sub_100011CF0(v7);
  }

  v8 = v0[65];
  v9 = v0[64];
  sub_100101FA0(v0[37], v8, type metadata accessor for NWAsyncConnection.Inbound);
  v10 = *(v8 + *(v9 + 24));
  os_unfair_lock_lock((v10 + 20));
  if (*(v10 + 16) == 1)
  {
    return sub_1001D2180();
  }

  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[38];
  *(v10 + 16) = 1;
  os_unfair_lock_unlock((v10 + 20));
  v17 = *v14;
  v18 = *(v15 + 20);
  v19 = v13[5];
  v20 = sub_1001D0E60();
  (*(*(v20 - 8) + 16))(&v12[v19], &v14[v18], v20);
  *&v12[v13[6]] = 0;
  v12[v13[7]] = 0;
  *v12 = v17;

  sub_100101F40(v14, type metadata accessor for NWAsyncConnection.Inbound);
  v0[94] = qword_10022CB58;
  v0[95] = *(*v16 + 152);
  v21 = swift_task_alloc();
  v0[96] = v21;
  *v21 = v0;
  v21[1] = sub_1000FF3F4;
  v22 = v0[67];

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1000FF1AC()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[76];
  v7 = v0[73];
  v8 = v0[72];
  sub_100011E48(v0[86], v0[87]);
  v1(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_100101F40(v2, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
  v38 = v0[93];
  v9 = v0[85];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[79];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[67];
  v21 = v0[65];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[59];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[55];
  v28 = v0[53];
  v29 = v0[52];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v33 = v0[46];
  v34 = v0[45];
  v35 = v0[44];
  v36 = v0[41];
  v37 = v0[40];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000FF3F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  v7 = *(*v5 + 768);
  v10 = *v5;
  *(v6 + 776) = a1;
  *(v6 + 784) = a2;
  *(v6 + 792) = a3;
  *(v6 + 868) = a4;
  *(v6 + 800) = v4;

  if (v4)
  {
    v8 = sub_1001005F8;
  }

  else
  {
    v8 = sub_1000FF518;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000FF518()
{
  v217 = v0;
  v1 = *(v0 + 792);
  if (v1 == 1)
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 680);
    v4 = *(v0 + 664);
    v5 = *(v0 + 648);
    v6 = *(v0 + 640);
    v7 = *(v0 + 608);
    v8 = *(v0 + 584);
    v9 = *(v0 + 576);
    v10 = *(v0 + 536);
    sub_100011E48(*(v0 + 688), *(v0 + 696));
    sub_100101F40(v10, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
    v2(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = v3;
LABEL_20:
    sub_100101F40(v11, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
    v82 = *(v0 + 680);
    v83 = *(v0 + 664);
    v84 = *(v0 + 656);
    v85 = *(v0 + 632);
    v86 = *(v0 + 608);
    v87 = *(v0 + 600);
    v88 = *(v0 + 592);
    v89 = *(v0 + 568);
    v90 = *(v0 + 560);
    v91 = *(v0 + 536);
    v158 = *(v0 + 520);
    v160 = *(v0 + 504);
    v162 = *(v0 + 496);
    v164 = *(v0 + 472);
    v166 = *(v0 + 456);
    v168 = *(v0 + 448);
    v171 = *(v0 + 440);
    v175 = *(v0 + 424);
    v179 = *(v0 + 416);
    v183 = *(v0 + 408);
    v188 = *(v0 + 400);
    v193 = *(v0 + 392);
    v198 = *(v0 + 368);
    v202 = *(v0 + 360);
    v206 = *(v0 + 352);
    v211 = *(v0 + 328);
    v214 = *(v0 + 320);

    v69 = *(v0 + 8);
    goto LABEL_21;
  }

  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 712);
  v15 = *(v0 + 304);
  v16 = *(v0 + 868);

  sub_100101EB4(v13, v12, v1);
  v17 = sub_1001D0E50();
  v18 = sub_1001D1DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 784);
    v20 = *(v0 + 304) + *(v0 + 752);
    v21 = -1;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *(v0 + 288) = v23;
    *v22 = 136315394;
    v24 = sub_1000954E0(*v20, *(v20 + 8), (v0 + 288));
    *(v22 + 4) = v24;
    *(v22 + 12) = 2048;
    v26 = *(v0 + 784);
    if (v19 >> 60 != 15)
    {
      v70 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v70 == 2)
        {
          v93 = *(*(v0 + 776) + 16);
          v94 = *(*(v0 + 776) + 24);
          v21 = v94 - v93;
          if (__OFSUB__(v94, v93))
          {
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else if (v70)
      {
        v116 = *(v0 + 776);
        v117 = *(v0 + 780);
        v118 = __OFSUB__(v117, v116);
        v119 = v117 - v116;
        if (v118)
        {
          __break(1u);
          return _swift_task_switch(v24, v26, v25);
        }

        v21 = v119;
      }

      else
      {
        v21 = BYTE6(v26);
      }
    }

    v27 = *(v0 + 792);
    v28 = *(v0 + 776);
    *(v22 + 14) = v21;
    v29 = *(v0 + 868);
    sub_100089D40(v28, v26, v27);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s received response %ld", v22, 0x16u);
    sub_100011CF0(v23);
  }

  else
  {
    v30 = *(v0 + 868);
    sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
  }

  v31 = *(v0 + 784);
  if (v31 >> 60 != 15)
  {
    v44 = *(v0 + 800);
    v45 = *(v0 + 776);
    v46 = *(v0 + 504);
    v48 = *(v0 + 464);
    v47 = *(v0 + 472);
    v49 = *(v0 + 456);
    sub_100012038(v45, *(v0 + 784));
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    *(v0 + 248) = v45;
    *(v0 + 256) = v31;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    sub_100012038(v45, v31);
    sub_1001D0970();
    sub_100101EF8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);
    sub_1001D0B10();
    if (v44)
    {
      v50 = *(v0 + 792);
      v51 = *(v0 + 784);
      v52 = *(v0 + 776);
      v200 = *(v0 + 720);
      v173 = *(v0 + 696);
      v53 = *(v0 + 688);
      v204 = *(v0 + 664);
      v209 = *(v0 + 680);
      v54 = *(v0 + 648);
      v190 = *(v0 + 608);
      v195 = *(v0 + 640);
      v181 = *(v0 + 584);
      v185 = *(v0 + 576);
      v177 = *(v0 + 536);
      v55 = *(v0 + 504);
      v57 = *(v0 + 480);
      v56 = *(v0 + 488);
      v58 = *(v0 + 868);
      sub_10002683C(v52, v51);
      sub_100089D40(v52, v51, v50);
      sub_100011E48(v53, v173);
      (*(v56 + 8))(v55, v57);
      sub_100101F40(v177, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v200(v190, v185);
      (*(v54 + 8))(v204, v195);
      sub_100101F40(v209, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
      v59 = *(v0 + 680);
      v60 = *(v0 + 664);
      v61 = *(v0 + 656);
      v62 = *(v0 + 632);
      v63 = *(v0 + 608);
      v64 = *(v0 + 600);
      v65 = *(v0 + 592);
      v66 = *(v0 + 568);
      v67 = *(v0 + 560);
      v68 = *(v0 + 536);
      v156 = *(v0 + 520);
      v157 = *(v0 + 504);
      v159 = *(v0 + 496);
      v161 = *(v0 + 472);
      v163 = *(v0 + 456);
      v165 = *(v0 + 448);
      v167 = *(v0 + 440);
      v170 = *(v0 + 424);
      v174 = *(v0 + 416);
      v178 = *(v0 + 408);
      v182 = *(v0 + 400);
      v186 = *(v0 + 392);
      v191 = *(v0 + 368);
      v196 = *(v0 + 360);
      v201 = *(v0 + 352);
      v205 = *(v0 + 328);
      v210 = *(v0 + 320);

      v69 = *(v0 + 8);
LABEL_21:

      return v69();
    }

    v71 = *(v0 + 424);
    sub_10001208C(*(v0 + 472), v71, &qword_10022AAB0, &unk_1001D9650);
    v18 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
    v19 = *(*(v18 - 8) + 48);
    v72 = (v19)(v71, 1, v18);
    v17 = *(v0 + 448);
    if (v72 == 1)
    {
      v73 = *(v0 + 432);
      sub_100011F00(*(v0 + 424), &qword_10022AAB0, &unk_1001D9650);
      v17->isa = &_swiftEmptyArrayStorage;
      v74 = v17 + *(v73 + 20);
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
LABEL_29:
      v95 = *(v0 + 712);
      v96 = *(v0 + 448);
      v97 = *(v0 + 304);
      v98 = *v96;

      sub_100101F40(v96, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v99 = *(v98 + 16);

      v100 = sub_1001D0E50();
      v101 = sub_1001D1DC0();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = *(v0 + 304) + *(v0 + 752);
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v216[0] = v104;
        *v103 = 136315394;
        *(v103 + 4) = sub_1000954E0(*v102, *(v102 + 8), v216);
        *(v103 + 12) = 2048;
        *(v103 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v100, v101, "%s decoded ratelimit response configuration count %ld", v103, 0x16u);
        sub_100011CF0(v104);
      }

      if (!v99)
      {
        v110 = *(v0 + 504);
        v111 = *(v0 + 480);
        v112 = *(v0 + 488);
        v113 = *(v0 + 472);
        sub_10002683C(*(v0 + 776), *(v0 + 784));
        sub_100101F40(v113, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);
        (*(v112 + 8))(v110, v111);
        if (*(v0 + 868))
        {
          goto LABEL_9;
        }

        goto LABEL_35;
      }

      v105 = *(v0 + 416);
      sub_10001208C(*(v0 + 472), v105, &qword_10022AAB0, &unk_1001D9650);
      v106 = (v19)(v105, 1, v18);
      v107 = *(v0 + 440);
      if (v106 == 1)
      {
        v108 = *(v0 + 432);
        sub_100011F00(*(v0 + 416), &qword_10022AAB0, &unk_1001D9650);
        *v107 = &_swiftEmptyArrayStorage;
        v109 = v107 + *(v108 + 20);
        _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      }

      else
      {
        sub_100102008(*(v0 + 416), *(v0 + 440), type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      }

      v120 = *(v0 + 440);
      v121 = *v120;
      *(v0 + 808) = *v120;

      sub_100101F40(v120, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v122 = *(v121 + 16);
      *(v0 + 816) = v122;
      if (v122)
      {
        v123 = 0;
        v124 = *(v0 + 384);
        *(v0 + 864) = *(v124 + 80);
        *(v0 + 824) = *(v124 + 72);
        do
        {
          *(v0 + 832) = v123;
          v137 = *(v0 + 496);
          v136 = *(v0 + 504);
          v139 = *(v0 + 480);
          v138 = *(v0 + 488);
          v141 = *(v0 + 400);
          v140 = *(v0 + 408);
          v142 = *(v0 + 344);
          v212 = *(v0 + 704);
          v215 = *(v0 + 336);
          v143 = *(v0 + 328);
          v207 = *(v0 + 304);
          sub_100101FA0(*(v0 + 808) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 824) * v123, v140, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          (*(v138 + 16))(v137, v136, v139);
          sub_100101FA0(v140, v141, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          sub_100044698(v207 + v212, v0 + 168);
          sub_1000E5BA4(v137, v141, (v0 + 168), v143);
          if ((*(v142 + 48))(v143, 1, v215) != 1)
          {
            v152 = *(v0 + 760);
            v153 = *(v0 + 304);
            sub_100102008(*(v0 + 328), *(v0 + 368), type metadata accessor for RateLimitConfiguration);
            v26 = *(v153 + v152);
            *(v0 + 856) = v26;
            v154 = sub_100100F8C;
            goto LABEL_53;
          }

          v144 = *(v0 + 712);
          v145 = *(v0 + 408);
          v146 = *(v0 + 392);
          v147 = *(v0 + 304);
          sub_100011F00(*(v0 + 328), &qword_100229348, &unk_1001D64C0);
          sub_100101FA0(v145, v146, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

          v148 = sub_1001D0E50();
          v149 = sub_1001D1DE0();

          if (os_log_type_enabled(v148, v149))
          {
            v125 = *(v0 + 400);
            v126 = *(v0 + 408);
            v127 = *(v0 + 392);
            v128 = *(v0 + 376);
            v129 = *(v0 + 304) + *(v0 + 752);
            v130 = swift_slowAlloc();
            v216[0] = swift_slowAlloc();
            *v130 = 136315394;
            *(v130 + 4) = sub_1000954E0(*v129, *(v129 + 8), v216);
            *(v130 + 12) = 2080;
            sub_100101FA0(v127, v125, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v131 = sub_1001D1820();
            v133 = v132;
            sub_100101F40(v127, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v134 = sub_1000954E0(v131, v133, v216);

            *(v130 + 14) = v134;
            _os_log_impl(&_mh_execute_header, v148, v149, "%s unable to process rate limit configuration %s", v130, 0x16u);
            swift_arrayDestroy();

            v135 = v126;
          }

          else
          {
            v150 = *(v0 + 408);
            v151 = *(v0 + 392);

            sub_100101F40(v151, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v135 = v150;
          }

          sub_100101F40(v135, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          v123 = *(v0 + 832) + 1;
        }

        while (v123 != *(v0 + 816));
        v155 = *(v0 + 808);
      }

      v26 = *(*(v0 + 304) + *(v0 + 760));
      *(v0 + 840) = v26;
      v154 = sub_1001008F0;
LABEL_53:
      v24 = v154;
      v25 = 0;

      return _swift_task_switch(v24, v26, v25);
    }

LABEL_28:
    sub_100102008(*(v0 + 424), v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    goto LABEL_29;
  }

  if (*(v0 + 868))
  {
LABEL_9:
    v32 = *(v0 + 712);
    v33 = *(v0 + 304);

    v34 = sub_1001D0E50();
    v35 = sub_1001D1DC0();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 868);
    v208 = *(v0 + 784);
    v213 = *(v0 + 792);
    v203 = *(v0 + 776);
    if (v36)
    {
      v169 = *(v0 + 688);
      v172 = *(v0 + 696);
      v199 = *(v0 + 680);
      v189 = *(v0 + 720);
      v194 = *(v0 + 664);
      v38 = *(v0 + 648);
      v180 = *(v0 + 608);
      v184 = *(v0 + 640);
      v39 = *(v0 + 584);
      v176 = *(v0 + 576);
      v40 = *(v0 + 304) + *(v0 + 752);
      v41 = *(v0 + 536);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v216[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1000954E0(*v40, *(v40 + 8), v216);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s response completed", v42, 0xCu);
      sub_100011CF0(v43);

      sub_100089D40(v203, v208, v213);
      sub_100011E48(v169, v172);
      sub_100101F40(v41, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v189(v180, v176);
      (*(v38 + 8))(v194, v184);
    }

    else
    {
      v75 = *(v0 + 696);
      v76 = *(v0 + 688);
      v199 = *(v0 + 680);
      v192 = *(v0 + 720);
      v197 = *(v0 + 664);
      v77 = *(v0 + 648);
      v187 = *(v0 + 640);
      v78 = *(v0 + 608);
      v79 = *(v0 + 584);
      v80 = *(v0 + 576);
      v81 = *(v0 + 536);

      sub_100089D40(v203, v208, v213);
      sub_100011E48(v76, v75);
      sub_100101F40(v81, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v192(v78, v80);
      (*(v77 + 8))(v197, v187);
    }

    v11 = v199;
    goto LABEL_20;
  }

LABEL_35:
  sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
  v114 = swift_task_alloc();
  *(v0 + 768) = v114;
  *v114 = v0;
  v114[1] = sub_1000FF3F4;
  v115 = *(v0 + 536);

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001005F8()
{
  *(v0 + 280) = *(v0 + 800);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100100688, 0, 0);
}

uint64_t sub_100100688()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[76];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[67];
  sub_100011E48(v0[86], v0[87]);
  sub_100101F40(v9, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
  v1(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_100101F40(v2, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
  v39 = v0[100];
  v10 = v0[85];
  v11 = v0[83];
  v12 = v0[82];
  v13 = v0[79];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[67];
  v22 = v0[65];
  v23 = v0[63];
  v24 = v0[62];
  v25 = v0[59];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[51];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[46];
  v35 = v0[45];
  v36 = v0[44];
  v37 = v0[41];
  v38 = v0[40];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001008F0()
{
  v1 = v0[105];
  sub_1000EE40C(v0[63]);
  v2 = swift_task_alloc();
  v0[106] = v2;
  *v2 = v0;
  v2[1] = sub_10010098C;
  v3 = v0[105];

  return sub_1000ED278();
}

uint64_t sub_10010098C()
{
  v1 = *(*v0 + 848);
  v3 = *v0;

  return _swift_task_switch(sub_100100A88, 0, 0);
}

uint64_t sub_100100A88()
{
  v70 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  sub_10002683C(*(v0 + 776), *(v0 + 784));
  sub_100101F40(v4, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);
  (*(v3 + 8))(v1, v2);
  if (*(v0 + 868))
  {
    v5 = *(v0 + 712);
    v6 = *(v0 + 304);

    v7 = sub_1001D0E50();
    v8 = sub_1001D1DC0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 868);
    v65 = *(v0 + 784);
    v67 = *(v0 + 792);
    v63 = *(v0 + 776);
    if (v9)
    {
      v44 = *(v0 + 688);
      v46 = *(v0 + 696);
      v61 = *(v0 + 680);
      v55 = *(v0 + 720);
      v58 = *(v0 + 664);
      v11 = *(v0 + 648);
      v50 = *(v0 + 608);
      v52 = *(v0 + 640);
      v12 = *(v0 + 584);
      v48 = *(v0 + 576);
      v13 = *(v0 + 304) + *(v0 + 752);
      v14 = *(v0 + 536);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v69 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000954E0(*v13, *(v13 + 8), &v69);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s response completed", v15, 0xCu);
      sub_100011CF0(v16);

      sub_100089D40(v63, v65, v67);
      sub_100011E48(v44, v46);
      sub_100101F40(v14, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v55(v50, v48);
      (*(v11 + 8))(v58, v52);
    }

    else
    {
      v20 = *(v0 + 696);
      v21 = *(v0 + 688);
      v61 = *(v0 + 680);
      v56 = *(v0 + 720);
      v59 = *(v0 + 664);
      v22 = *(v0 + 648);
      v53 = *(v0 + 640);
      v23 = *(v0 + 608);
      v24 = *(v0 + 584);
      v25 = *(v0 + 576);
      v26 = *(v0 + 536);

      sub_100089D40(v63, v65, v67);
      sub_100011E48(v21, v20);
      sub_100101F40(v26, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v56(v23, v25);
      (*(v22 + 8))(v59, v53);
    }

    sub_100101F40(v61, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);
    v27 = *(v0 + 680);
    v28 = *(v0 + 664);
    v29 = *(v0 + 656);
    v30 = *(v0 + 632);
    v31 = *(v0 + 608);
    v32 = *(v0 + 600);
    v33 = *(v0 + 592);
    v34 = *(v0 + 568);
    v35 = *(v0 + 560);
    v36 = *(v0 + 536);
    v38 = *(v0 + 520);
    v39 = *(v0 + 504);
    v40 = *(v0 + 496);
    v41 = *(v0 + 472);
    v42 = *(v0 + 456);
    v43 = *(v0 + 448);
    v45 = *(v0 + 440);
    v47 = *(v0 + 424);
    v49 = *(v0 + 416);
    v51 = *(v0 + 408);
    v54 = *(v0 + 400);
    v57 = *(v0 + 392);
    v60 = *(v0 + 368);
    v62 = *(v0 + 360);
    v64 = *(v0 + 352);
    v66 = *(v0 + 328);
    v68 = *(v0 + 320);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
    v17 = swift_task_alloc();
    *(v0 + 768) = v17;
    *v17 = v0;
    v17[1] = sub_1000FF3F4;
    v18 = *(v0 + 536);

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }
}

uint64_t sub_100100F8C()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_100101FA0(v2, *(v0 + 360), type metadata accessor for RateLimitConfiguration);
  sub_100101FA0(v2, v3, type metadata accessor for RateLimitConfiguration);
  v4 = sub_1001D0E50();
  v5 = sub_1001D1DC0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  if (v6)
  {
    v9 = *(v0 + 336);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    v11 = *(v8 + *(v9 + 20));
    sub_100101F40(v8, type metadata accessor for RateLimitConfiguration);
    *(v10 + 4) = v11;
    *(v10 + 12) = 2048;
    v12 = *(v7 + *(v9 + 20) + 8);
    sub_100101F40(v7, type metadata accessor for RateLimitConfiguration);
    *(v10 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "rate limit discovered for rate with count=%lu, duration=%f", v10, 0x16u);
  }

  else
  {
    sub_100101F40(*(v0 + 360), type metadata accessor for RateLimitConfiguration);

    sub_100101F40(v7, type metadata accessor for RateLimitConfiguration);
  }

  v13 = *(v0 + 368);
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 856) + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v17 = *v13;
  v18 = v13[1];
  v19 = v13[2];
  *(v0 + 64) = *(v13 + 6);
  *(v0 + 32) = v18;
  *(v0 + 48) = v19;
  *(v0 + 16) = v17;
  sub_100101FA0(v13 + *(v14 + 20), v15, type metadata accessor for RateLimitTimingDetails);
  v20 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v15, (v0 + 16));
  sub_1000E3E7C(v13);
  swift_endAccess();

  return _swift_task_switch(sub_10010122C, 0, 0);
}

uint64_t sub_10010122C()
{
  v41 = v0;
  v1 = *(v0 + 408);
  sub_100101F40(*(v0 + 368), type metadata accessor for RateLimitConfiguration);
  sub_100101F40(v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  v2 = *(v0 + 832) + 1;
  if (v2 == *(v0 + 816))
  {
LABEL_2:
    v3 = *(v0 + 808);

    v4 = *(*(v0 + 304) + *(v0 + 760));
    *(v0 + 840) = v4;
    v5 = sub_1001008F0;
  }

  else
  {
    while (1)
    {
      *(v0 + 832) = v2;
      v18 = *(v0 + 496);
      v17 = *(v0 + 504);
      v20 = *(v0 + 480);
      v19 = *(v0 + 488);
      v22 = *(v0 + 400);
      v21 = *(v0 + 408);
      v23 = *(v0 + 344);
      v38 = *(v0 + 704);
      v39 = *(v0 + 336);
      v24 = *(v0 + 328);
      v37 = *(v0 + 304);
      sub_100101FA0(*(v0 + 808) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 824) * v2, v21, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      (*(v19 + 16))(v18, v17, v20);
      sub_100101FA0(v21, v22, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v37 + v38, v0 + 168);
      sub_1000E5BA4(v18, v22, (v0 + 168), v24);
      v25 = (*(v23 + 48))(v24, 1, v39);
      v26 = *(v0 + 328);
      v27 = *(v0 + 304);
      if (v25 != 1)
      {
        break;
      }

      v28 = *(v0 + 712);
      v29 = *(v0 + 408);
      v30 = *(v0 + 392);
      sub_100011F00(v26, &qword_100229348, &unk_1001D64C0);
      sub_100101FA0(v29, v30, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v31 = sub_1001D0E50();
      v32 = sub_1001D1DE0();

      if (os_log_type_enabled(v31, v32))
      {
        v6 = *(v0 + 400);
        v7 = *(v0 + 408);
        v8 = *(v0 + 392);
        v9 = *(v0 + 376);
        v10 = *(v0 + 304) + *(v0 + 752);
        v11 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v11 = 136315394;
        *(v11 + 4) = sub_1000954E0(*v10, *(v10 + 8), &v40);
        *(v11 + 12) = 2080;
        sub_100101FA0(v8, v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v12 = sub_1001D1820();
        v14 = v13;
        sub_100101F40(v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v15 = sub_1000954E0(v12, v14, &v40);

        *(v11 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s unable to process rate limit configuration %s", v11, 0x16u);
        swift_arrayDestroy();

        v16 = v7;
      }

      else
      {
        v33 = *(v0 + 408);
        v34 = *(v0 + 392);

        sub_100101F40(v34, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v16 = v33;
      }

      sub_100101F40(v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v2 = *(v0 + 832) + 1;
      if (v2 == *(v0 + 816))
      {
        goto LABEL_2;
      }
    }

    v35 = *(v0 + 760);
    sub_100102008(v26, *(v0 + 368), type metadata accessor for RateLimitConfiguration);
    v4 = *(v27 + v35);
    *(v0 + 856) = v4;
    v5 = sub_100100F8C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100101638(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v13 = *(*(v12 - 1) + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15, v18);
  v21 = &v45 - v20;
  v22 = *a2;
  v23 = (a2 + *(*a2 + 184));
  v24 = v23[1];
  if (v24)
  {
    v45 = *v23;
    sub_10001208C(a1, v11, &qword_10022AAA0, &qword_1001D9640);
    v25 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v11, 1, v25) == 1)
    {

      sub_100011F00(v11, &qword_10022AAA0, &qword_1001D9640);
      *v21 = sub_1000D66E8(&_swiftEmptyArrayStorage);
      *(v21 + 1) = 0;
      v21[16] = 1;
      v27 = &v21[v12[6]];
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v28 = &v21[v12[7]];
      *v28 = 0;
      *(v28 + 1) = 0;
      v29 = &v21[v12[8]];
      *v29 = 0;
      *(v29 + 1) = 0;
      v30 = &v21[v12[9]];
      *v30 = 0;
      *(v30 + 1) = 0;
    }

    else
    {
      sub_100102008(v11, v21, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    }

    v31 = &v21[v12[7]];
    v32 = *(v31 + 1);

    *v31 = v45;
    *(v31 + 1) = v24;
    sub_100011F00(a1, &qword_10022AAA0, &qword_1001D9640);
    sub_100102008(v21, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    result = (*(v26 + 56))(a1, 0, 1, v25);
    v22 = *a2;
  }

  v33 = (a2 + *(v22 + 192));
  v34 = v33[1];
  v35 = v46;
  if (v34)
  {
    v36 = *v33;
    sub_10001208C(a1, v46, &qword_10022AAA0, &qword_1001D9640);
    v37 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v35, 1, v37) == 1)
    {

      sub_100011F00(v35, &qword_10022AAA0, &qword_1001D9640);
      *v17 = sub_1000D66E8(&_swiftEmptyArrayStorage);
      *(v17 + 1) = 0;
      v17[16] = 1;
      v39 = &v17[v12[6]];
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v40 = &v17[v12[7]];
      *v40 = 0;
      *(v40 + 1) = 0;
      v41 = &v17[v12[8]];
      *v41 = 0;
      *(v41 + 1) = 0;
      v42 = &v17[v12[9]];
      *v42 = 0;
      *(v42 + 1) = 0;
    }

    else
    {
      sub_100102008(v35, v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    }

    v43 = &v17[v12[8]];
    v44 = *(v43 + 1);

    *v43 = v36;
    *(v43 + 1) = v34;
    sub_100011F00(a1, &qword_10022AAA0, &qword_1001D9640);
    sub_100102008(v17, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    return (*(v38 + 56))(a1, 0, 1, v37);
  }

  return result;
}

uint64_t sub_100101AB8()
{
  v1 = qword_10022CB50;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10022CB58 + 8);

  v4 = *(v0 + *(*v0 + 152));

  v5 = *(*v0 + 160);
  v6 = sub_1001CFDA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_100011CF0((v0 + *(*v0 + 168)));
  v7 = (v0 + *(*v0 + 176));
  v8 = v7[9];
  v16[8] = v7[8];
  v16[9] = v8;
  v16[10] = v7[10];
  v9 = v7[5];
  v16[4] = v7[4];
  v16[5] = v9;
  v10 = v7[7];
  v16[6] = v7[6];
  v16[7] = v10;
  v11 = v7[1];
  v16[0] = *v7;
  v16[1] = v11;
  v12 = v7[3];
  v16[2] = v7[2];
  v16[3] = v12;
  sub_100088D84(v16);
  v13 = *(v0 + *(*v0 + 184) + 8);

  v14 = *(v0 + *(*v0 + 192) + 8);

  return v0;
}

uint64_t sub_100101C48()
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

uint64_t sub_100101CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000130E0;

  return sub_1000FDD48(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100101DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000130E0;

  return sub_100101CD0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_100101E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100101EB4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_100089C38(result, a2);
  }

  return result;
}

uint64_t sub_100101EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100101F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100102008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100102070(void *a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v4 = a1[10];
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v6 = a1[11];
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        result = sub_1001CFDA0();
        if (v8 <= 0x3F)
        {
          v14 = *(result - 8) + 64;
          v9 = a1[12];
          result = swift_checkMetadataState();
          if (v10 <= 0x3F)
          {
            v15 = *(result - 8) + 64;
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100102214()
{
  v1 = *v0;
  v2 = qword_10022CB50;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_10022CB58 + 8);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 152));
  v5 = *(*v0 + 160);
  v6 = sub_1001CFDA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_100011CF0((v0 + *(*v0 + 168)));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 176));
  v7 = *(v0 + *(*v0 + 184) + 8);

  v8 = *(v0 + *(*v0 + 192) + 8);

  return v0;
}

uint64_t sub_100102438()
{
  sub_100102214();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001024A8()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100102568()
{
  sub_100011CF0((v0 + 16));
  v1 = *(v0 + 64);

  v2 = qword_10022CBE0;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_10022CBE8 + 8);

  v5 = *(v0 + qword_10022CBF0);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1001025FC()
{
  sub_100102568();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10010266C(uint64_t a1, double a2)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_1001CFD60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v22 - v17;
  sub_100102864(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10009317C(v8);
    return *&a2;
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
    sub_1001CFCA0();
    v20 = sub_1001CFCC0();
    v21 = *(v10 + 8);
    v21(v15, v9);
    v21(v18, v9);
    if (v20)
    {
      return 0;
    }

    else
    {
      return *&a2;
    }
  }
}

uint64_t sub_100102864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001028D4(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 10:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100102A80(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022CD90, &unk_1001DDE08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v39 - v9;
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_10010815C();
  sub_1001D25F0();
  v12 = *v3;
  v13 = *(v3 + 8);
  LOBYTE(v40) = 0;
  sub_1001D22E0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    LOBYTE(v40) = 1;
    sub_1001D22E0();
    v16 = v3[4];
    v17 = *(v3 + 40);
    LOBYTE(v40) = 2;
    sub_1001D22E0();
    v40 = v3[6];
    HIBYTE(v39) = 3;
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    sub_100024E0C(qword_1002283C8);
    sub_1001D22F0();
    v18 = v3[7];
    v19 = *(v3 + 64);
    LOBYTE(v40) = 4;
    sub_1001D22D0();
    v20 = v3[9];
    v21 = *(v3 + 80);
    LOBYTE(v40) = 5;
    sub_1001D22D0();
    v22 = v3[11];
    v23 = *(v3 + 96);
    LOBYTE(v40) = 6;
    sub_1001D22E0();
    v40 = v3[13];
    HIBYTE(v39) = 7;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_1000439E8(&qword_100228960);
    sub_1001D22F0();
    v24 = v3[14];
    v25 = *(v3 + 120);
    LOBYTE(v40) = 8;
    sub_1001D22E0();
    v26 = v3[16];
    v27 = *(v3 + 136);
    LOBYTE(v40) = 9;
    sub_1001D22E0();
    v28 = v3[18];
    v29 = *(v3 + 152);
    LOBYTE(v40) = 10;
    sub_1001D22E0();
    v30 = v3[20];
    v31 = *(v3 + 168);
    LOBYTE(v40) = 11;
    sub_1001D22E0();
    v32 = v3[22];
    v33 = *(v3 + 184);
    LOBYTE(v40) = 12;
    sub_1001D22E0();
    v34 = v3[24];
    v35 = *(v3 + 200);
    LOBYTE(v40) = 13;
    sub_1001D22E0();
    v36 = v3[26];
    v37 = *(v3 + 216);
    LOBYTE(v40) = 14;
    sub_1001D22D0();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_100102EB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001028D4(*a1);
  v5 = v4;
  if (v3 == sub_1001028D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}