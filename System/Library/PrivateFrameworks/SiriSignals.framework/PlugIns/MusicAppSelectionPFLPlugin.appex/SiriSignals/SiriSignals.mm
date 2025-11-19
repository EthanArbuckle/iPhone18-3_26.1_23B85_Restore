void sub_100001170(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  v7 = sub_100011D24();
  v8 = [v7 error];
  if (v8)
  {

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v9 = sub_100011B84();
    sub_1000019F0(v9, qword_10001EA60);

    v10 = v7;
    v11 = sub_100011B64();
    v12 = sub_100011D54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100003904(a1, a2, &v21);
      *(v13 + 12) = 2112;
      v16 = [v10 error];
      if (v16)
      {
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error executing %s in Biome: %@", v13, 0x16u);
      sub_100001B7C(v14, &qword_10001CA70, &unk_1000126A0);

      sub_100001BEC(v15);
    }

    v19 = *(v3 + 16);
    *(v3 + 16) = 0;

    sub_100001A28();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    v18 = *(v3 + 16);
    *(v3 + 16) = v7;
  }
}

NSObject *sub_1000013C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 error];
    if (v2)
    {
      v3 = v2;
      if (qword_10001C920 != -1)
      {
        swift_once();
      }

      v4 = sub_100011B84();
      sub_1000019F0(v4, qword_10001EA60);
      v5 = v3;
      v6 = sub_100011B64();
      v7 = sub_100011D54();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "Error in fetching row: %@", v8, 0xCu);
        sub_100001B7C(v9, &qword_10001CA70, &unk_1000126A0);
      }

      sub_100001A28();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();

      return v5;
    }

    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = [v13 row];
      if (v14)
      {
        v15 = v14;
        v16 = sub_100011BC4();

        v5 = sub_1000016B0(v16);

        if (v5)
        {
          return v5;
        }
      }
    }
  }

  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v17 = sub_100011B84();
  sub_1000019F0(v17, qword_10001EA60);
  v5 = sub_100011B64();
  v18 = sub_100011D44();
  if (os_log_type_enabled(v5, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v5, v18, "Row cannot be converted into SiriPrivateLearningPFLBiomeSQLRow", v19, 2u);
  }

  sub_100001A28();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v5;
}

unint64_t sub_1000016B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v2 = sub_100011E34();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100001AC4(*(a1 + 48) + 40 * v14, v29);
        sub_100001B20(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100001AC4(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100001B20(v27 + 8, v22);
        sub_100001B7C(v26, &qword_10001CA80, &qword_1000126B0);
        v23 = v20;
        sub_100001BDC(v22, v24);
        v15 = v23;
        sub_100001BDC(v24, v25);
        sub_100001BDC(v25, &v23);
        result = sub_100003EAC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100001BEC(v12);
          result = sub_100001BDC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100001BDC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100001B7C(v26, &qword_10001CA80, &qword_1000126B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000198C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000019F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100001A28()
{
  result = qword_10001CA68;
  if (!qword_10001CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA68);
  }

  return result;
}

uint64_t sub_100001A7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001B7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_100001BDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100001BEC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001C38(uint64_t a1)
{
  if (*(a1 + 16) && (v3 = v1, v5 = sub_100003EAC(v3[7], v3[8]), (v6 & 1) != 0) && (sub_100001B20(*(a1 + 56) + 32 * v5, v41), swift_dynamicCast()))
  {
    result = sub_1000020EC(a1);
    if (!v2)
    {
      v9 = result;
      v10 = v8;
      swift_beginAccess();
      v11 = v3[2];
      if (*(v11 + 16) && (v12 = sub_100003F24(v40), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        v15 = *(v14 + 16);

        sub_100003330(v9);

        v30 = *(v14 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v14 + 24) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1000035F4(0, *(v30 + 2) + 1, 1, v30);
          *(v14 + 24) = v30;
        }

        v32 = v10;
        v34 = *(v30 + 2);
        v33 = *(v30 + 3);
        if (v34 >= v33 >> 1)
        {
          v37 = sub_1000035F4((v33 > 1), v34 + 1, 1, v30);
          v32 = v10;
          v30 = v37;
        }

        *(v30 + 2) = v34 + 1;
        *&v30[4 * v34 + 32] = v32;
        *(v14 + 24) = v30;
        swift_beginAccess();

        v35 = v3[2];
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v39 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_1000045A0(v14, v40, v36);
        v3[2] = v39;
        swift_endAccess();
      }

      else
      {
        if (qword_10001C920 != -1)
        {
          swift_once();
        }

        v21 = sub_100011B84();
        sub_1000019F0(v21, qword_10001EA60);
        v22 = sub_100011B64();
        v23 = sub_100011D44();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;
          *(v24 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v22, v23, "Initializing training data for aggregating value %ld", v24, 0xCu);
        }

        sub_100001A7C(&qword_10001CD00, &qword_1000128B0);
        v25 = swift_allocObject();
        sub_100001A7C(&qword_10001CD08, &qword_1000128B8);
        v26 = swift_allocObject();
        v26[3] = 1;
        v26[4] = *(v9 + 16);
        v26[2] = v9;
        *(v25 + 16) = v26;
        sub_100001A7C(&qword_10001CCB8, &qword_100012878);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1000126D0;
        *(v27 + 32) = v10;
        *(v25 + 24) = v27;
        swift_beginAccess();
        v28 = v3[2];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v38 = v3[2];
        v3[2] = 0x8000000000000000;
        sub_1000045A0(v25, v40, v29);
        v3[2] = v38;
        return swift_endAccess();
      }
    }
  }

  else
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v16 = sub_100011B84();
    sub_1000019F0(v16, qword_10001EA60);
    v17 = sub_100011B64();
    v18 = sub_100011D54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "aggregatingValue not found.", v19, 2u);
    }

    sub_100005588();
    swift_allocError();
    *v20 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000020EC(uint64_t a1)
{
  v4 = a1;
  v5 = v1[9];
  v43 = *(v5 + 16);
  if (v43)
  {
    v6 = 0;
    v7 = v1[10];
    v8 = v1[11];
    v9 = (v5 + 40);
    v44 = &_swiftEmptyArrayStorage;
    v10 = *(v5 + 16);
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v3 = *(v9 - 1);
      v2 = *v9;
      if (v3 != v7 || v2 != v8)
      {
        v12 = *(v9 - 1);
        v13 = *v9;
        if ((sub_100011F34() & 1) == 0)
        {
          v14 = *(v4 + 16);

          if (!v14 || (v15 = sub_100003EAC(v3, v2), (v16 & 1) == 0))
          {

            if (qword_10001C920 != -1)
            {
              swift_once();
            }

            v29 = sub_100011B84();
            sub_1000019F0(v29, qword_10001EA60);

            v26 = sub_100011B64();
            v27 = sub_100011D54();

            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              v46[0] = swift_slowAlloc();
              *v28 = 136315394;
              v30 = sub_100003904(v3, v2, v46);

              *(v28 + 4) = v30;
              goto LABEL_30;
            }

            goto LABEL_31;
          }

          sub_100001B20(*(a1 + 56) + 32 * v15, v46);
          v17 = sub_100005A1C(v46);
          v18 = v44;
          if ((v17 & 0x100000000) != 0)
          {

            if (qword_10001C920 != -1)
            {
              swift_once();
            }

            v35 = sub_100011B84();
            sub_1000019F0(v35, qword_10001EA60);

            v36 = sub_100011B64();
            v37 = sub_100011D54();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v47 = v39;
              *v38 = 136315138;
              v40 = sub_100003904(v3, v2, &v47);

              *(v38 + 4) = v40;
              _os_log_impl(&_mh_execute_header, v36, v37, "Unable to convert value for %s to float", v38, 0xCu);
              sub_100001BEC(v39);
            }

            else
            {
            }

            sub_100005588();
            swift_allocError();
            *v41 = 4;
            swift_willThrow();
            return sub_100001BEC(v46);
          }

          v19 = v17;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1000035F4(0, *(v44 + 2) + 1, 1, v44);
          }

          v3 = *(v18 + 2);
          v20 = *(v18 + 3);
          v2 = v3 + 1;
          if (v3 >= v20 >> 1)
          {
            v18 = sub_1000035F4((v20 > 1), v3 + 1, 1, v18);
          }

          sub_100001BEC(v46);
          *(v18 + 2) = v2;
          v44 = v18;
          *&v18[4 * v3 + 32] = v19;
          v4 = a1;
          v10 = v43;
        }
      }

      ++v6;
      v9 += 2;
      if (v10 == v6)
      {
        goto LABEL_19;
      }
    }
  }

  v44 = &_swiftEmptyArrayStorage;
LABEL_19:
  v2 = *(v42 + 80);
  v3 = *(v42 + 88);
  if (*(v4 + 16))
  {
    v21 = sub_100003EAC(*(v42 + 80), *(v42 + 88));
    if (v22)
    {
      sub_100001B20(*(v4 + 56) + 32 * v21, v46);
      v23 = sub_100005A1C(v46);
      sub_100001BEC(v46);
      if ((v23 & 0x100000000) == 0)
      {
        return v44;
      }
    }
  }

  if (qword_10001C920 != -1)
  {
LABEL_40:
    swift_once();
  }

  v25 = sub_100011B84();
  sub_1000019F0(v25, qword_10001EA60);

  v26 = sub_100011B64();
  v27 = sub_100011D54();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_100003904(v2, v3, v46);
LABEL_30:
    *(v28 + 12) = 2080;
    v31 = sub_100011BD4();
    v33 = sub_100003904(v31, v32, v46);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Couldn't find %s value in %s", v28, 0x16u);
    swift_arrayDestroy();
  }

LABEL_31:

  sub_100005588();
  swift_allocError();
  *v34 = 4;
  return swift_willThrow();
}

uint64_t sub_1000026F8()
{
  v2 = v1;
  v3 = *(v0[9] + 16);
  v4 = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  v63 = v0;
  v5 = v0[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v3;
    v4 = sub_100003880(v6, 0);
    v8 = sub_100005428(v66, v4 + 4, v6, v5);
    v3 = v66[4];

    sub_100005580();
    if (v8 != v6)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_27;
    }

    v3 = v7;
    v2 = v1;
  }

  v66[0] = v4;

  sub_100004B0C(v66);
  if (!v2)
  {

    v9 = v66[0];
    v62 = v66[0][2];
    if (!v62)
    {
LABEL_18:

      v44 = objc_allocWithZone(MLArrayBatchProvider);
      sub_100001A7C(&qword_10001CCB0, &qword_100012868);
      isa = sub_100011C74().super.isa;

      v3 = [v44 initWithFeatureProviderArray:isa];

      return v3;
    }

    v10 = 0;
    v11 = 40;
    v61 = v66[0];
    v60 = v3;
    while (1)
    {
      if (v10 >= v9[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v12 = *(v9 + v11);
      v13 = *(v12 + 16);
      v14 = v13[4];
      if (v14 != v3)
      {
        v46 = *(v9 + v11);

        if (qword_10001C920 != -1)
        {
          swift_once();
        }

        v47 = sub_100011B84();
        sub_1000019F0(v47, qword_10001EA60);
        v48 = sub_100011B64();
        v49 = sub_100011D54();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = v3;
          v3 = v50;
          *v50 = 134218240;
          *(v50 + 4) = v14;
          *(v50 + 12) = 2048;
          *(v50 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v48, v49, "Mismatch in number of columns in trainingData %ld and number of features in arg %ld", v50, 0x16u);
        }

        sub_100005588();
        swift_allocError();
        *v52 = 5;
        swift_willThrow();
        goto LABEL_30;
      }

      v65 = v10;
      v16 = v13[2];
      v15 = v13[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13[2] = v16;
      v64 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100005400(v16);
      }

      v13[2] = v16;

      v18 = *(v12 + 24);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 24) = v18;
      if ((v19 & 1) == 0)
      {
        v18 = sub_100005400(v18);
      }

      *(v12 + 24) = v18;
      sub_100001A7C(&qword_10001CC88, &unk_100012840);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000126E0;
      *(v20 + 32) = sub_100011D14();
      *(v20 + 40) = sub_100011D14();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000126E0;
      *(v21 + 32) = sub_100011D14();
      *(v21 + 40) = sub_100011D14();
      v22 = objc_allocWithZone(MLMultiArray);
      sub_100005644(0, &qword_10001CC90, NSNumber_ptr);
      v23 = sub_100011C74().super.isa;

      v24 = sub_100011C74().super.isa;

      v66[0] = 0;
      v25 = [v22 initWithDataPointer:v16 + 32 shape:v23 dataType:65568 strides:v24 deallocator:0 error:v66];

      v26 = v66[0];
      if (!v25)
      {
        v3 = v66[0];

        sub_100011AB4();

        swift_willThrow();

        goto LABEL_26;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000126F0;
      v28 = v26;
      *(v27 + 32) = sub_100011D14();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000126F0;
      *(v29 + 32) = sub_100011D64(1);
      v30 = objc_allocWithZone(MLMultiArray);
      v31 = sub_100011C74().super.isa;

      v32 = sub_100011C74().super.isa;

      v66[0] = 0;
      v33 = [v30 initWithDataPointer:v18 + 32 shape:v31 dataType:65568 strides:v32 deallocator:0 error:v66];

      v34 = v66[0];
      if (!v33)
      {
        break;
      }

      sub_100001A7C(&qword_10001CC98, qword_100012850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100012700;
      v36 = v63[4];
      *(inited + 32) = v63[3];
      *(inited + 40) = v36;
      v37 = sub_100005644(0, &qword_10001CCA0, MLMultiArray_ptr);
      *(inited + 72) = v37;
      *(inited + 48) = v25;
      v38 = v63[6];
      *(inited + 80) = v63[5];
      *(inited + 88) = v38;
      *(inited + 120) = v37;
      *(inited + 96) = v33;
      v39 = v34;

      v40 = v25;

      v41 = v33;
      sub_100005794(inited);
      swift_setDeallocating();
      sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
      swift_arrayDestroy();
      v42 = objc_allocWithZone(MLDictionaryFeatureProvider);
      sub_10000350C();
      sub_100011C64();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100011C94();
      }

      v10 = v65 + 1;
      sub_100011CB4();

      v11 = v64 + 16;
      v9 = v61;
      v3 = v60;
      if (v62 == v65 + 1)
      {
        goto LABEL_18;
      }
    }

    v3 = v66[0];

    sub_100011AB4();

    swift_willThrow();

LABEL_26:
    if (qword_10001C920 != -1)
    {
      goto LABEL_34;
    }

LABEL_27:
    v53 = sub_100011B84();
    sub_1000019F0(v53, qword_10001EA60);
    swift_errorRetain();
    v54 = sub_100011B64();
    v55 = sub_100011D54();

    if (os_log_type_enabled(v54, v55))
    {
      v3 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v54, v55, "Error forming MLBatchProvider: %@", v3, 0xCu);
      sub_1000055DC(v56);
    }

    sub_100005588();
    swift_allocError();
    *v58 = 6;
    swift_willThrow();

LABEL_30:

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003018()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_1000030F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for InputMatrix();
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);

  v9 = sub_1000031CC(v7, v8);

  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 24);

  v12 = sub_100011CC4();

  return v12 & 1;
}

BOOL sub_1000031CC(void *a1, void *a2)
{
  v5 = a1[2];
  v6 = a2[2];
  v8 = *(v2 + 80);
  v7 = *(v2 + 88);

  LOBYTE(v7) = sub_100011CC4();

  return (v7 & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4];
}

uint64_t sub_100003270()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100003330(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 32))
  {

    result = sub_1000033C4(v2);
    v4 = *(v1 + 24);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v6;
    }
  }

  else
  {
    sub_100005588();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000033C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000035F4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000034B0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_10000350C()
{
  isa = sub_100011BB4().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100011AB4();

    swift_willThrow();
  }

  return v2;
}

char *sub_1000035F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCB8, &qword_100012878);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000036F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCC8, &qword_100012888);
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

void *sub_1000037FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001A7C(&qword_10001CCB8, &qword_100012878);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100003880(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001A7C(&qword_10001CCD0, &qword_100012890);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_100003904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100001B20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001BEC(v11);
  return v7;
}

unint64_t sub_1000039D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003ADC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100011E04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003ADC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003B28(a1, a2);
  sub_100003C58(&off_100018858);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003B28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003D44(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100011E04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100011C34();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003D44(v10, 0);
        result = sub_100011DF4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003C58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100003DB8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003D44(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001A7C(&qword_10001CCF8, &qword_1000128A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CCF8, &qword_1000128A8);
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

unint64_t sub_100003EAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100011FB4();
  sub_100011C24();
  v6 = sub_100011FD4();

  return sub_100003F68(a1, a2, v6);
}

unint64_t sub_100003F24(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100011FA4();

  return sub_100004020(a1, v4);
}

unint64_t sub_100003F68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100011F34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004020(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000408C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  result = sub_100011E24();
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
      }

      v25 = *(v8 + 40);
      result = sub_100011FA4();
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

uint64_t sub_1000042FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001A7C(&qword_10001CD18, qword_1000128C8);
  v37 = a2;
  result = sub_100011E24();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100011FB4();
      sub_100011C24();
      result = sub_100011FD4();
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
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
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

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_1000045A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100003F24(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10000408C(v14, a3 & 1);
      v18 = *v4;
      result = sub_100003F24(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_100011F54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100004848();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_1000046EC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100003EAC(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1000042FC(v16, a3 & 1);
      v20 = *v5;
      result = sub_100003EAC(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_100011F54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000049A4();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_100004848()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  v2 = *v0;
  v3 = sub_100011E14();
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

void *sub_1000049A4()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CD18, qword_1000128C8);
  v2 = *v0;
  v3 = sub_100011E14();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

Swift::Int sub_100004B0C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100005414(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_100011F14(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100001A7C(&qword_10001CCC0, &qword_100012880);
      v7 = sub_100011CA4();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100004C60(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100004C60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000053EC(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1000051E8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000036F8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1000036F8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_1000051E8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000051E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *sub_100005428(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100005588()
{
  result = qword_10001CC80;
  if (!qword_10001CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC80);
  }

  return result;
}

uint64_t sub_1000055DC(uint64_t a1)
{
  v2 = sub_100001A7C(&qword_10001CA70, &unk_1000126A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005644(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10000568C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001A7C(&qword_10001CD10, &qword_1000128C0);
  v3 = sub_100011E34();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100003F24(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100003F24(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100005794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v3 = sub_100011E34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000058A4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100003EAC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100001BDC(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000058A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001A7C(&qword_10001CD18, qword_1000128C8);
    v3 = sub_100011E34();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003EAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005A1C(uint64_t a1)
{
  sub_100001B20(a1, v25);
  sub_100001A7C(&qword_10001CCD8, &qword_100012898);
  if (swift_dynamicCast())
  {
    sub_100005DA0(v24, v22);
    v1 = v23;
    v2 = sub_100005DB8(v22, v23);
    v3 = *(v1 - 8);
    v4 = *(v3 + 64);
    __chkstk_darwin(v2);
    v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v3 + 16))(v6);
    if (sub_100011D94() < 65)
    {
      v14 = sub_100011DA4();
      v15 = sub_100011D84();
      (*(v3 + 8))(v6, v1);
      if (v14)
      {
        v7 = v15;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
      sub_100005DFC();
      sub_100005E50();
      sub_100011BA4();
      (*(v3 + 8))(v6, v1);
      v7 = v21;
    }

    v13 = v7;
    goto LABEL_12;
  }

  sub_100001A7C(&qword_10001CCE0, &qword_1000128A0);
  if (swift_dynamicCast())
  {
    sub_100005DA0(v24, v22);
    v8 = v23;
    v9 = sub_100005DB8(v22, v23);
    v10 = *(*(v8 - 8) + 64);
    __chkstk_darwin(v9);
    (*(v12 + 16))(&v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_100005DFC();
    sub_100011B94();
    v13 = v21;
LABEL_12:
    sub_100001BEC(v22);
    v18 = 0;
    goto LABEL_13;
  }

  sub_100005644(0, &qword_10001CC90, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    sub_100011CD4();
    v17 = v16;

    v18 = 0;
    v13 = v17;
  }

  else
  {
    v13 = 0.0;
    v18 = 1;
  }

LABEL_13:
  sub_100001BEC(v25);
  LOBYTE(v24[0]) = v18;
  return LODWORD(v13) | (v18 << 32);
}

uint64_t sub_100005DA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100005DB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005DFC()
{
  result = qword_10001CCE8;
  if (!qword_10001CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCE8);
  }

  return result;
}

unint64_t sub_100005E50()
{
  result = qword_10001CCF0;
  if (!qword_10001CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCF0);
  }

  return result;
}

MusicAppSelectionPFLPlugin::BiomeSQLClientError_optional __swiftcall BiomeSQLClientError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10002)
  {
    v1.value = MusicAppSelectionPFLPlugin_BiomeSQLClientError_rowConversionFailed;
  }

  else
  {
    v1.value = MusicAppSelectionPFLPlugin_BiomeSQLClientError_unknownDefault;
  }

  if (rawValue == 10001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_100005F08()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10002;
  }

  else
  {
    v2 = 10001;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void sub_100005F58()
{
  if (*v0)
  {
    v1 = 10002;
  }

  else
  {
    v1 = 10001;
  }

  sub_100011FC4(v1);
}

Swift::Int sub_100005F90()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10002;
  }

  else
  {
    v2 = 10001;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void *sub_100005FDC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10002)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10001)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100006004(uint64_t *a1@<X8>)
{
  v2 = 10001;
  if (*v1)
  {
    v2 = 10002;
  }

  *a1 = v2;
}

Swift::Int sub_100006050()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10101);
  return sub_100011FD4();
}

Swift::Int sub_1000060D0()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10101);
  return sub_100011FD4();
}

uint64_t sub_100006118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s26MusicAppSelectionPFLPlugin26BiomeSQLRowAggregatorErrorO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100006194()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10201);
  return sub_100011FD4();
}

Swift::Int sub_100006214()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10201);
  return sub_100011FD4();
}

uint64_t sub_10000625C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s26MusicAppSelectionPFLPlugin17ModelTrainerErrorO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000062CC()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10302;
  }

  else
  {
    v2 = 10301;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void sub_10000631C()
{
  if (*v0)
  {
    v1 = 10302;
  }

  else
  {
    v1 = 10301;
  }

  sub_100011FC4(v1);
}

Swift::Int sub_100006354()
{
  v1 = *v0;
  sub_100011FB4();
  if (v1)
  {
    v2 = 10302;
  }

  else
  {
    v2 = 10301;
  }

  sub_100011FC4(v2);
  return sub_100011FD4();
}

void *sub_1000063A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10302)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 10301)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1000063C8(uint64_t *a1@<X8>)
{
  v2 = 10301;
  if (*v1)
  {
    v2 = 10302;
  }

  *a1 = v2;
}

Swift::Int sub_1000063F8()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10401);
  return sub_100011FD4();
}

Swift::Int sub_100006478()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011FC4(v1 + 10401);
  return sub_100011FD4();
}

uint64_t sub_1000064C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006EDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100006518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_1000069D4();

  return Error<>._code.getter(a1, a2, v5, v6);
}

uint64_t _s26MusicAppSelectionPFLPlugin26BiomeSQLRowAggregatorErrorO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 10101) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 10101;
  }
}

uint64_t _s26MusicAppSelectionPFLPlugin17ModelTrainerErrorO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 10201) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 10201;
  }
}

unint64_t sub_1000065A8()
{
  result = qword_10001CD20;
  if (!qword_10001CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD20);
  }

  return result;
}

unint64_t sub_100006600()
{
  result = qword_10001CD28;
  if (!qword_10001CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD28);
  }

  return result;
}

unint64_t sub_100006658()
{
  result = qword_10001CD30;
  if (!qword_10001CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeSQLRowAggregatorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeSQLRowAggregatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ModelTrainerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelTrainerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006980()
{
  result = qword_10001CD38;
  if (!qword_10001CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD38);
  }

  return result;
}

unint64_t sub_1000069D4()
{
  result = qword_10001CD40;
  if (!qword_10001CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD40);
  }

  return result;
}

unint64_t sub_100006A28()
{
  result = qword_10001CD48;
  if (!qword_10001CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD48);
  }

  return result;
}

unint64_t sub_100006A7C()
{
  result = qword_10001CD50;
  if (!qword_10001CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicAppSelectionPFLPluginRunnerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicAppSelectionPFLPluginRunnerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006D88()
{
  result = qword_10001CD58;
  if (!qword_10001CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD58);
  }

  return result;
}

unint64_t sub_100006DE0()
{
  result = qword_10001CD60;
  if (!qword_10001CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD60);
  }

  return result;
}

unint64_t sub_100006E34()
{
  result = qword_10001CD68;
  if (!qword_10001CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD68);
  }

  return result;
}

unint64_t sub_100006E88()
{
  result = qword_10001CD70;
  if (!qword_10001CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CD70);
  }

  return result;
}

uint64_t sub_100006EDC(uint64_t a1)
{
  if ((a1 - 10401) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 10401;
  }
}

uint64_t sub_100006F1C()
{
  v0 = sub_100011B84();
  sub_100006F98(v0, qword_10001EA60);
  sub_1000019F0(v0, qword_10001EA60);
  return sub_100011B74();
}

uint64_t *sub_100006F98(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x8000000100013650;
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x6E4563697274654DLL;
      v4 = 0xEE00676E69646F63;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xEF656D614E636972;
    }

    else
    {
      v4 = 0x8000000100013620;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000100013650;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE00676E69646F63;
      if (v3 != 0x6E4563697274654DLL)
      {
LABEL_26:
        v7 = sub_100011F34();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x74654D6C65646F4DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = 0xEF656D614E636972;
    }

    else
    {
      v6 = 0x8000000100013620;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_100007180(char *a1, void *a2, double a3)
{
  v7 = sub_100011B34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  v16 = __chkstk_darwin(v13);
  v74 = &v71 - v17;
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  sub_10000BFA4();
  v78 = v8;
  v79 = a1;
  v20 = *(v8 + 16);
  v80 = v7;
  v21 = v7;
  v22 = v20;
  v20(v19, a1, v21);
  v76 = a2;
  v75 = sub_10000B190(v19, a2);
  if (v3)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v23 = sub_100011B84();
    sub_1000019F0(v23, qword_10001EA60);
    v24 = v74;
    v25 = v80;
    v22(v74, v79, v80);
    swift_errorRetain();
    v26 = sub_100011B64();
    v27 = sub_100011D54();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v28 = 136315394;
      sub_10000BFF0();
      v30 = sub_100011F24();
      v32 = v31;
      v33 = *(v78 + 8);
      v33(v24, v80);
      v34 = sub_100003904(v30, v32, &v81);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      *v29 = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Model init failed for %s with error: %@", v28, 0x16u);
      sub_1000055DC(v29);
      v25 = v80;

      sub_100001BEC(v75);
    }

    else
    {

      v33 = *(v78 + 8);
      v33(v24, v25);
    }

    v43 = v77;
    sub_10000BEFC();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();

LABEL_18:
    v33(v79, v25);
    type metadata accessor for ModelTrainer();
    swift_deallocPartialClassInstance();
    return v43;
  }

  if (!v75 || (v36 = v12, (v37 = [v75 program]) == 0))
  {
    v25 = v80;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v45 = sub_100011B84();
    sub_1000019F0(v45, qword_10001EA60);
    v46 = v15;
    v22(v15, v79, v25);
    v47 = sub_100011B64();
    v48 = sub_100011D54();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v81 = v50;
      *v49 = 136315138;
      sub_10000BFF0();
      v51 = sub_100011F24();
      v53 = v52;
      v33 = *(v78 + 8);
      v33(v46, v80);
      v54 = sub_100003904(v51, v53, &v81);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "No ML program found for %s", v49, 0xCu);
      sub_100001BEC(v50);

      v25 = v80;
    }

    else
    {

      v33 = *(v78 + 8);
      v33(v46, v25);
    }

    v43 = v77;
    sub_10000BEFC();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v38 = v37;
  v39 = objc_allocWithZone(MLProgramTrainer);
  v81 = 0;
  swift_unknownObjectRetain();
  v40 = [v39 initWithProgram:v38 learningRate:&v81 error:a3];
  v25 = v80;
  if (!v40)
  {
    v57 = v81;
    v58 = sub_100011AB4();

    swift_willThrow();
    swift_unknownObjectRelease();
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v59 = sub_100011B84();
    sub_1000019F0(v59, qword_10001EA60);
    v22(v36, v79, v25);
    swift_errorRetain();
    v60 = sub_100011B64();
    v61 = sub_100011D54();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v74 = v58;
      v63 = v62;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81 = v73;
      *v63 = 136315394;
      sub_10000BFF0();
      v64 = sub_100011F24();
      v66 = v65;
      v33 = *(v78 + 8);
      v33(v36, v80);
      v67 = sub_100003904(v64, v66, &v81);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2112;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v68;
      v69 = v72;
      *v72 = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "ML program trainer init failed for %s: %@", v63, 0x16u);
      sub_1000055DC(v69);
      v25 = v80;

      sub_100001BEC(v73);
    }

    else
    {

      v33 = *(v78 + 8);
      v33(v36, v25);
    }

    v43 = v77;
    sub_10000BEFC();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v41 = v40;
  v42 = v81;
  swift_unknownObjectRelease();
  (*(v78 + 8))(v79, v25);

  swift_unknownObjectRelease();
  v43 = v77;
  *(v77 + 16) = v41;
  return v43;
}

void sub_100007AB4(int a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100007E1C(a3);
  v9 = v4;
  sub_10000B2F0(v8);

  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v10 = sub_100011B84();
  sub_1000019F0(v10, qword_10001EA60);
  swift_unknownObjectRetain();
  v11 = sub_100011B64();
  v12 = sub_100011D34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = [a2 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Training %ld for %u epochs.", v13, 0x12u);
    v9 = v4;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = *(v5 + 16);
  isa = sub_100011CE4().super.isa;
  v27 = 0;
  v16 = [v14 evaluateUsingTestData:a2 evaluationMetricNames:isa error:&v27];

  if (!v16)
  {
    v24 = v27;

    sub_100011AB4();

    swift_willThrow();
    return;
  }

  v17 = v27;
  v18 = [a2 count];
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (HIDWORD(v18))
  {
    goto LABEL_19;
  }

  v26 = v9;
  if (a1)
  {
    while (1)
    {
      v27 = 0;
      v19 = [v14 trainUsingTrainingData:a2 error:{&v27, v26}];
      v20 = v27;
      if (!v19)
      {
        break;
      }

      if (!--a1)
      {
        goto LABEL_12;
      }
    }

    v25 = v20;
  }

  else
  {
LABEL_12:
    v21 = sub_100011CE4().super.isa;

    v27 = 0;
    v22 = [v14 evaluateUsingTestData:a2 evaluationMetricNames:v21 error:&v27];

    if (v22)
    {
      v23 = v27;

      return;
    }

    v25 = v27;
  }

  sub_100011AB4();

  swift_willThrow();
}

void *sub_100007E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000AE20(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_100011DC4();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = *(a1 + 48) + 40 * v6;
    v11 = *(v10 + 24);
    v24 = *(v10 + 16);
    v12 = *(&_swiftEmptyArrayStorage + 2);
    v13 = *(&_swiftEmptyArrayStorage + 3);

    if (v12 >= v13 >> 1)
    {
      result = sub_10000AE20((v13 > 1), v12 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
    v14 = &_swiftEmptyArrayStorage + 2 * v12;
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10000B388(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10000B388(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100008048()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000080B0()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008198()
{
  *v0;
  *v0;
  sub_100011C24();
}

Swift::Int sub_10000826C()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008350@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B43C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100008380(unint64_t *a1@<X8>)
{
  v2 = 0xEF656D614E636972;
  v3 = 0x74654D6C65646F4DLL;
  v4 = 0x8000000100013650;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6E4563697274654DLL;
    v4 = 0xEE00676E69646F63;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100013620;
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

unint64_t sub_100008424()
{
  v1 = 0x74654D6C65646F4DLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6E4563697274654DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000084C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000B43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100008504(uint64_t a1)
{
  v2 = sub_10000C150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100008540(uint64_t a1)
{
  v2 = sub_10000C150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000857C(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001CE88, &qword_100012F60);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100005DB8(a1, a1[3]);
  sub_10000C150();
  sub_100011FF4();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_100011EC4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v16[14] = 1;
    sub_100011EC4();
    v16[13] = *(v3 + 32);
    v16[12] = 2;
    sub_10000C24C();
    sub_100011EF4();
    v16[11] = 3;
    sub_10000C2A0();
    sub_100011EF4();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000087FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_100011FB4();
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  sub_100011C24();
  return sub_100011FD4();
}

uint64_t sub_1000088D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  return sub_100011C24();
}

Swift::Int sub_100008984()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_100011FB4();
  sub_100011C24();
  sub_100011C24();
  sub_100011C24();

  sub_100011C24();
  return sub_100011FD4();
}

double sub_100008A54@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000B488(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100008AB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64656E69617254;
  }

  else
  {
    v4 = 0x656E696C65736142;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64656E69617254;
  }

  else
  {
    v6 = 0x656E696C65736142;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100011F34();
  }

  return v9 & 1;
}

Swift::Int sub_100008B5C()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008BE0()
{
  *v0;
  sub_100011C24();
}

Swift::Int sub_100008C50()
{
  v1 = *v0;
  sub_100011FB4();
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_100008CD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018900;
  v8._object = v3;
  v5 = sub_100011E44(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100008D30(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C65736142;
  if (*v1)
  {
    v2 = 0x64656E69617254;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100008E28()
{
  sub_100011FB4();
  sub_100011C24();
  return sub_100011FD4();
}

Swift::Int sub_100008E8C()
{
  sub_100011FB4();
  sub_100011C24();
  return sub_100011FD4();
}

uint64_t sub_100008ED8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100018950;
  v7._object = v3;
  v5 = sub_100011E44(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100008FF4(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v9 = sub_100005918(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v9;
  sub_1000046EC(0x756F436863746142, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native, a4);
  v11 = v9;
  v12 = [a2 evaluationMetrics];
  if (!v12)
  {
LABEL_6:
    if (qword_10001C920 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_7;
  }

  v13 = v12;
  v14 = [a3 evaluationMetrics];
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v15 = v14;
  v16 = sub_10000BA20(v13);
  if (v4)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    return v11;
  }

  v21 = v16;
  v75 = sub_10000BA20(v15);
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v72 = v27;
  v73 = a1 + 56;
  v74 = a1;
  v77 = v21;
  while (v26)
  {
    v29 = v28;
LABEL_24:
    v30 = *(a1 + 48) + 40 * (__clz(__rbit64(v26)) | (v29 << 6));
    v31 = *(v30 + 8);
    v79 = *v30;
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v34 = *(v30 + 32);
    v35 = *(v21 + 16);
    swift_bridgeObjectRetain_n();
    v78 = v31;

    if (!v35)
    {

      goto LABEL_54;
    }

    v36 = sub_100003EAC(v32, v33);
    v38 = v37;

    if ((v38 & 1) == 0)
    {

LABEL_54:

LABEL_56:

LABEL_58:
      if (qword_10001C920 == -1)
      {
LABEL_59:
        v66 = sub_100011B84();
        sub_1000019F0(v66, qword_10001EA60);

        v67 = sub_100011B64();
        v68 = sub_100011D54();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v80 = v70;
          *v69 = 136315138;

          v11 = sub_100003904(v32, v33, &v80);

          *(v69 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v67, v68, "Baseline/Trained metric value not found for %s", v69, 0xCu);
          sub_100001BEC(v70);
        }

        else
        {
        }

        sub_10000BEFC();
        swift_allocError();
        *v71 = 4;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_69:
      swift_once();
      goto LABEL_59;
    }

    if (!*(v75 + 16))
    {

      goto LABEL_56;
    }

    v39 = *(*(v77 + 56) + 4 * v36);

    v40 = sub_100003EAC(v32, v33);
    v41 = v33;
    v33 = v42;
    v43 = v41;

    if ((v33 & 1) == 0)
    {

      v33 = v43;
      goto LABEL_58;
    }

    v26 &= v26 - 1;
    v44 = *(*(v75 + 56) + 4 * v40);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    if (v34)
    {
      v80 = v11;
      v32 = v78;
      v45 = sub_100003EAC(v79, v78);
      v47 = v11[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_66;
      }

      v51 = v46;
      if (v11[3] >= v50)
      {
        v21 = v77;
        if (v76)
        {
          v11 = v80;
          if (v46)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v65 = v45;
          sub_1000049A4();
          v45 = v65;
          v21 = v77;
          v32 = v78;
          v11 = v80;
          if (v51)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_1000042FC(v50, v76);
        v45 = sub_100003EAC(v79, v78);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_70;
        }

        v21 = v77;
        v11 = v80;
        if (v51)
        {
LABEL_43:
          *(v11[7] + 4 * v45) = v44;

          goto LABEL_17;
        }
      }

      v11[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v11[6] + 16 * v45);
      *v53 = v79;
      v53[1] = v32;
      *(v11[7] + 4 * v45) = v44;

      v54 = v11[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_67;
      }

      goto LABEL_47;
    }

    v80 = v11;
    v32 = sub_100003EAC(v79, v78);
    v57 = v11[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v60 = v56;
    if (v11[3] >= v59)
    {
      v21 = v77;
      if (v76)
      {
        goto LABEL_45;
      }

      sub_1000049A4();
    }

    else
    {
      sub_1000042FC(v59, v76);
      v61 = sub_100003EAC(v79, v78);
      if ((v60 & 1) != (v62 & 1))
      {
LABEL_70:
        result = sub_100011F54();
        __break(1u);
        return result;
      }

      v32 = v61;
    }

    v21 = v77;
LABEL_45:
    v11 = v80;
    if (v60)
    {
      *(v80[7] + 4 * v32) = v39;

LABEL_17:

      goto LABEL_18;
    }

    v80[(v32 >> 6) + 8] |= 1 << v32;
    v63 = (v11[6] + 16 * v32);
    *v63 = v79;
    v63[1] = v78;
    *(v11[7] + 4 * v32) = v39;

    v64 = v11[2];
    v49 = __OFADD__(v64, 1);
    v55 = v64 + 1;
    if (v49)
    {
      goto LABEL_68;
    }

LABEL_47:
    v11[2] = v55;
LABEL_18:
    v28 = v29;
    v23 = v73;
    a1 = v74;
    v27 = v72;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v11;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_64:
  swift_once();
LABEL_7:
  v17 = sub_100011B84();
  sub_1000019F0(v17, qword_10001EA60);
  v18 = sub_100011B64();
  v19 = sub_100011D44();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Evaluation metrics are nil.", v20, 2u);
  }

  return v11;
}

uint64_t sub_1000097A8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100011FB4();
  sub_100011C24();
  v9 = sub_100011FD4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100011F34() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000A18C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000098F8(uint64_t a1, Swift::Int a2)
{
  v3 = 0x656E696C65736142;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_100011FB4();
  sub_100011C24();
  v42 = v9;
  sub_100011C24();
  if (v10)
  {
    v3 = 0x64656E69617254;
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  sub_100011C24();

  sub_100011C24();
  v12 = sub_100011FD4();
  v40 = v4 + 56;
  v41 = v4;
  v13 = -1 << *(v4 + 32);
  v14 = v12 & ~v13;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_29:
    v27 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v36;

    sub_10000A30C(a2, v14, isUniquelyReferenced_nonNull_native);
    *v36 = v43;
    v29 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v29;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v39 = v3;
  v15 = ~v13;
  while (1)
  {
    v16 = *(v41 + 48) + 40 * v14;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *(v16 + 32);
    if (*v16 != v7 || *(v16 + 8) != v6)
    {
      v21 = *(v16 + 8);
      if ((sub_100011F34() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v22 = v17 == v42 && v18 == v8;
    if (!v22 && (sub_100011F34() & 1) == 0)
    {
      goto LABEL_6;
    }

    v23 = v19 ? 0x64656E69617254 : 0x656E696C65736142;
    v24 = v19 ? 0xE700000000000000 : 0xE800000000000000;
    if (v23 == v39 && v24 == v11)
    {
      break;
    }

    v26 = sub_100011F34();

    if (v26)
    {
      goto LABEL_31;
    }

LABEL_6:
    v14 = (v14 + 1) & v15;
    if (((*(v40 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_31:

  v31 = *(v41 + 48) + 40 * v14;
  v32 = *(v31 + 32);
  v33 = *(v31 + 16);
  v34 = *(v31 + 24);
  v35 = *(v31 + 8);
  *a1 = *v31;
  *(a1 + 8) = v35;
  *(a1 + 16) = v33;
  *(a1 + 24) = v34;
  *(a1 + 32) = v32;

  return 0;
}

uint64_t sub_100009C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  result = sub_100011DE4();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100011FB4();
      sub_100011C24();
      result = sub_100011FD4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100009E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  result = sub_100011DE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_100011FB4();
      sub_100011C24();
      sub_100011C24();
      sub_100011C24();

      sub_100011C24();
      result = sub_100011FD4();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10000A18C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100009C20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000A628();
      goto LABEL_16;
    }

    sub_10000A8FC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100011FB4();
  sub_100011C24();
  result = sub_100011FD4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100011F34();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100011F44();
  __break(1u);
  return result;
}

Swift::Int sub_10000A30C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v39 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100009E80(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10000A784();
        goto LABEL_39;
      }

      sub_10000AB34(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *v5;
    v11 = *(v5 + 8);
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    v14 = *(v5 + 32);
    sub_100011FB4();
    sub_100011C24();
    v42 = v13;
    sub_100011C24();
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 0x64656E69617254;
    }

    else
    {
      v16 = 0x656E696C65736142;
    }

    if (v15)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    sub_100011C24();

    sub_100011C24();
    result = sub_100011FD4();
    v18 = v8 + 56;
    v41 = v8;
    v19 = -1 << *(v8 + 32);
    a2 = result & ~v19;
    if ((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v40 = v16;
      v20 = ~v19;
      do
      {
        v21 = *(v41 + 48) + 40 * a2;
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = *(v21 + 32);
        v25 = *v21 == v10 && *(v21 + 8) == v11;
        if (v25 || (v26 = *(v21 + 8), result = sub_100011F34(), (result & 1) != 0))
        {
          v27 = v22 == v12 && v23 == v42;
          if (v27 || (result = sub_100011F34(), (result & 1) != 0))
          {
            if (v24)
            {
              v28 = 0x64656E69617254;
            }

            else
            {
              v28 = 0x656E696C65736142;
            }

            if (v24)
            {
              v29 = 0xE700000000000000;
            }

            else
            {
              v29 = 0xE800000000000000;
            }

            if (v28 == v40 && v29 == v17)
            {
              goto LABEL_42;
            }

            v31 = sub_100011F34();

            if (v31)
            {
              goto LABEL_43;
            }
          }
        }

        a2 = (a2 + 1) & v20;
      }

      while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v32 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v33 = *(v32 + 48) + 40 * a2;
  v34 = *(v39 + 16);
  *v33 = *v39;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(v39 + 32);
  v35 = *(v32 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_42:

LABEL_43:

    result = sub_100011F44();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v37;
  }

  return result;
}

void *sub_10000A628()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  v2 = *v0;
  v3 = sub_100011DD4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

void *sub_10000A784()
{
  v1 = v0;
  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  v2 = *v0;
  v3 = sub_100011DD4();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_10000A8FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10001CE28, &qword_100012E38);
  result = sub_100011DE4();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100011FB4();

      sub_100011C24();
      result = sub_100011FD4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000AB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10001CE48, &qword_100012E50);
  result = sub_100011DE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_100011FB4();

      sub_100011C24();
      sub_100011C24();
      sub_100011C24();

      sub_100011C24();
      result = sub_100011FD4();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      v11 = v35;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_10000AE20(char *a1, int64_t a2, char a3)
{
  result = sub_10000AF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000AE40(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001A7C(&qword_10001CCD0, &qword_100012890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001A7C(&qword_10001CCC0, &qword_100012880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000AF74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A7C(&qword_10001CE30, &unk_100012E40);
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

uint64_t sub_10000B080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1 == a6 && a2 == a7 || (sub_100011F34()) && (a3 == a8 && a4 == a9 || (sub_100011F34()))
  {
    if (a5)
    {
      v14 = 0x64656E69617254;
    }

    else
    {
      v14 = 0x656E696C65736142;
    }

    if (a5)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    if (a10)
    {
      v16 = 0x64656E69617254;
    }

    else
    {
      v16 = 0x656E696C65736142;
    }

    if (a10)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    if (v14 == v16 && v15 == v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_100011F34();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

id sub_10000B190(uint64_t a1, uint64_t a2)
{
  sub_100011AE4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100011B34();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100011AB4();

    swift_willThrow();
    v12 = sub_100011B34();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10000B2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100011D04();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000097A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000B388(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000B394(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000BF50();
  result = sub_100011D04();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v4 += 40;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v7;
      v12[3] = v8;
      v13 = v9;

      sub_1000098F8(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10000B43C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018880;
  v6._object = a2;
  v4 = sub_100011E44(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000B488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001A7C(&qword_10001CE68, &qword_100012F58);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_100005DB8(a1, a1[3]);
  sub_10000C150();
  sub_100011FE4();
  if (v2)
  {
    return sub_100001BEC(a1);
  }

  v25 = 0;
  v11 = sub_100011E64();
  v13 = v12;
  v20 = v11;
  v24 = 1;
  v18 = sub_100011E64();
  v19 = v14;
  v22 = 2;
  sub_10000C1A4();
  sub_100011E94();
  HIDWORD(v17) = v23;
  v21 = 3;
  sub_10000C1F8();
  sub_100011E94();
  (*(v6 + 8))(v9, v5);
  result = sub_100001BEC(a1);
  *a2 = v20;
  *(a2 + 8) = v13;
  v16 = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = BYTE4(v17);
  return result;
}

void sub_10000B728(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    [a1 int64Value];
    return;
  }

  if (v2 == 5)
  {
    v3 = [a1 multiArrayValue];
    if (v3)
    {
      v4 = v3;
      if ([v3 count] == 1)
      {
        v5 = [v4 objectAtIndexedSubscript:0];
        [v5 floatValue];

        return;
      }
    }

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v14 = sub_100011B84();
    sub_1000019F0(v14, qword_10001EA60);
    v15 = a1;
    v8 = sub_100011B64();
    v9 = sub_100011D54();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v15;
    *v11 = v15;
    v16 = v15;
    v13 = "Feature value not scalar: %@";
  }

  else
  {
    if (v2 == 2)
    {
      [a1 doubleValue];
      return;
    }

    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v6 = sub_100011B84();
    sub_1000019F0(v6, qword_10001EA60);
    v7 = a1;
    v8 = sub_100011B64();
    v9 = sub_100011D54();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    v13 = "Invalid feature value %@";
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v13, v10, 0xCu);
  sub_1000055DC(v11);

LABEL_19:

  sub_10000BEFC();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();
}

uint64_t sub_10000BA20(void *a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = sub_100005918(_swiftEmptyArrayStorage);
  v50 = a1;
  v6 = [a1 count];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_31:
    v40 = sub_100011B84();
    sub_1000019F0(v40, qword_10001EA60);

    v41 = sub_100011B64();
    v42 = sub_100011D54();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = isUniquelyReferenced_nonNull_native;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136315138;
      v46 = sub_100003904(v55, v2, &v56);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "Couldn't find feature value for %s", v44, 0xCu);
      sub_100001BEC(v45);

      isUniquelyReferenced_nonNull_native = v43;
    }

    else
    {
    }

    sub_10000BEFC();
    swift_allocError();
    *v47 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_36:

    return isUniquelyReferenced_nonNull_native;
  }

  if (v6)
  {
    v7 = 0;
    v49 = v6;
LABEL_5:
    v51 = v7 + 1;
    v54 = [v50 featuresAtIndex:v49];
    v8 = [v54 featureNames];
    v9 = sub_100011CF4();

    v10 = 0;
    v11 = v9 + 56;
    v12 = 1 << *(v9 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v9 + 56);
    v15 = (v12 + 63) >> 6;
    v52 = v15;
    v53 = v9;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v16 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v16 >= v15)
          {
            break;
          }

          v14 = *(v11 + 8 * v16);
          ++v10;
          if (v14)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        v7 = v51;
        if (v51 == v49)
        {
          return isUniquelyReferenced_nonNull_native;
        }

        goto LABEL_5;
      }

      v16 = v10;
LABEL_16:
      v17 = (*(v53 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v17;
      v2 = v17[1];

      v55 = v18;
      v19 = sub_100011BE4();
      v20 = [v54 featureValueForName:v19];

      if (!v20)
      {
        break;
      }

      v21 = 0.0;
      if (*(isUniquelyReferenced_nonNull_native + 16))
      {
        v22 = sub_100003EAC(v18, v2);
        if (v23)
        {
          v21 = *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v22);
        }
      }

      sub_10000B728(v20);
      if (v3)
      {

        swift_unknownObjectRelease();

        goto LABEL_36;
      }

      v25 = v24;
      v26 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v26;
      v28 = sub_100003EAC(v18, v2);
      v29 = *(v26 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v32 = v27;
      if (*(v26 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000049A4();
        }
      }

      else
      {
        sub_1000042FC(v31, isUniquelyReferenced_nonNull_native);
        v33 = sub_100003EAC(v18, v2);
        if ((v32 & 1) != (v34 & 1))
        {
          result = sub_100011F54();
          __break(1u);
          return result;
        }

        v28 = v33;
      }

      v14 &= v14 - 1;
      v35 = v21 + v25;
      if (v32)
      {

        isUniquelyReferenced_nonNull_native = v56;
        *(*(v56 + 56) + 4 * v28) = v35;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v56;
        *(v56 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v28);
        *v36 = v18;
        v36[1] = v2;
        *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v28) = v35;

        v37 = *(isUniquelyReferenced_nonNull_native + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_40;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v39;
      }

      v10 = v16;
      v3 = 0;
      v15 = v52;
    }

    if (qword_10001C920 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  return isUniquelyReferenced_nonNull_native;
}

unint64_t sub_10000BEFC()
{
  result = qword_10001CE38;
  if (!qword_10001CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE38);
  }

  return result;
}

unint64_t sub_10000BF50()
{
  result = qword_10001CE40;
  if (!qword_10001CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE40);
  }

  return result;
}

unint64_t sub_10000BFA4()
{
  result = qword_10001CE50;
  if (!qword_10001CE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001CE50);
  }

  return result;
}

unint64_t sub_10000BFF0()
{
  result = qword_10001CE58;
  if (!qword_10001CE58)
  {
    sub_100011B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE58);
  }

  return result;
}

__n128 sub_10000C048(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10000C0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000C0FC()
{
  result = qword_10001CE60;
  if (!qword_10001CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE60);
  }

  return result;
}

unint64_t sub_10000C150()
{
  result = qword_10001CE70;
  if (!qword_10001CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE70);
  }

  return result;
}

unint64_t sub_10000C1A4()
{
  result = qword_10001CE78;
  if (!qword_10001CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE78);
  }

  return result;
}

unint64_t sub_10000C1F8()
{
  result = qword_10001CE80;
  if (!qword_10001CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE80);
  }

  return result;
}

unint64_t sub_10000C24C()
{
  result = qword_10001CE90;
  if (!qword_10001CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE90);
  }

  return result;
}

unint64_t sub_10000C2A0()
{
  result = qword_10001CE98;
  if (!qword_10001CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CE98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelEvaluationMetricSpecs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricEncoding(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricEncoding(_WORD *result, int a2, int a3)
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

unint64_t sub_10000C540()
{
  result = qword_10001CEA0;
  if (!qword_10001CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEA0);
  }

  return result;
}

unint64_t sub_10000C598()
{
  result = qword_10001CEA8;
  if (!qword_10001CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEA8);
  }

  return result;
}

unint64_t sub_10000C5F0()
{
  result = qword_10001CEB0;
  if (!qword_10001CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEB0);
  }

  return result;
}

unint64_t sub_10000C648()
{
  result = qword_10001CEB8;
  if (!qword_10001CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEB8);
  }

  return result;
}

unint64_t sub_10000C6A0()
{
  result = qword_10001CEC0;
  if (!qword_10001CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEC0);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_10001CEC8;
  if (!qword_10001CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CEC8);
  }

  return result;
}

unint64_t sub_10000C748()
{
  result = qword_10001CED0;
  if (!qword_10001CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CED0);
  }

  return result;
}

uint64_t MusicAppSelectionPFLPlugin.perform(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for MusicAppSelectionPFLPluginRunner();
  swift_allocObject();
  sub_10000E94C(a1);
  if (!v1)
  {
    v2 = sub_10000F310();
  }

  return v2;
}

id MusicAppSelectionPFLPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicAppSelectionPFLPlugin.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAppSelectionPFLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id MusicAppSelectionPFLPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAppSelectionPFLPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s26MusicAppSelectionPFLPluginAAC4stopyyF_0()
{
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v0 = sub_100011B84();
  sub_1000019F0(v0, qword_10001EA60);
  oslog = sub_100011B64();
  v1 = sub_100011D44();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "MusicAppSelectionPFLPlugin requested to stop.", v2, 2u);
  }
}

__n128 sub_10000CAF0(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10000CB24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10000CB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CBE8(char a1)
{
  result = 0x676E696E7261654CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x706E496C65646F4DLL;
      break;
    case 3:
      result = 0x62614C6C65646F4DLL;
      break;
    case 4:
      result = 0x4E65727574616546;
      break;
    case 5:
      result = 0x4365727574616546;
      break;
    case 6:
      result = 0x6546746567726154;
      break;
    case 7:
    case 12:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D614E6C65646F4DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 14:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000CE00(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000CBE8(*a1);
  v5 = v4;
  if (v3 == sub_10000CBE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100011F34();
  }

  return v8 & 1;
}

Swift::Int sub_10000CE88()
{
  v1 = *v0;
  sub_100011FB4();
  sub_10000CBE8(v1);
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_10000CEEC()
{
  sub_10000CBE8(*v0);
  sub_100011C24();
}

Swift::Int sub_10000CF40()
{
  v1 = *v0;
  sub_100011FB4();
  sub_10000CBE8(v1);
  sub_100011C24();

  return sub_100011FD4();
}

uint64_t sub_10000CFA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DAE4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10000CFD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000CBE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000D018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000DAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000D04C(uint64_t a1)
{
  v2 = sub_10000E368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D088(uint64_t a1)
{
  v2 = sub_10000E368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D0C4(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001D008, &unk_1000133E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_100005DB8(a1, a1[3]);
  sub_10000E368();
  sub_100011FF4();
  v11 = *v3;
  LOBYTE(v34) = 0;
  sub_100011ED4();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v34) = 1;
    sub_100011F04();
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    LOBYTE(v34) = 2;
    sub_100011EC4();
    v15 = *(v3 + 3);
    v16 = *(v3 + 4);
    LOBYTE(v34) = 3;
    sub_100011EC4();
    v34 = *(v3 + 5);
    HIBYTE(v33) = 4;
    sub_100001A7C(&qword_10001CFE0, &qword_1000133D8);
    sub_10000E4C0(&qword_10001D010);
    sub_100011EF4();
    v17 = v3[12];
    LOBYTE(v34) = 5;
    sub_100011F04();
    v18 = *(v3 + 7);
    v19 = *(v3 + 8);
    LOBYTE(v34) = 6;
    sub_100011EC4();
    v20 = *(v3 + 9);
    v21 = *(v3 + 10);
    LOBYTE(v34) = 7;
    sub_100011EC4();
    v22 = *(v3 + 11);
    LOBYTE(v34) = 8;
    sub_100011EE4();
    v23 = *(v3 + 12);
    LOBYTE(v34) = 9;
    sub_100011EE4();
    v24 = *(v3 + 13);
    v25 = *(v3 + 14);
    LOBYTE(v34) = 10;
    sub_100011EC4();
    v34 = *(v3 + 15);
    HIBYTE(v33) = 11;
    sub_100001A7C(&qword_10001CFF0, &qword_1000133E0);
    sub_10000E52C(&qword_10001D018, sub_10000E5A4);
    sub_100011EF4();
    v26 = *(v3 + 16);
    v27 = *(v3 + 17);
    LOBYTE(v34) = 12;
    sub_100011EC4();
    v28 = *(v3 + 18);
    v29 = *(v3 + 19);
    LOBYTE(v34) = 13;
    sub_100011EB4();
    v30 = *(v3 + 20);
    v31 = *(v3 + 21);
    LOBYTE(v34) = 14;
    sub_100011EB4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_10000D4C0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000DB30(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_10000D53C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_opt_self();
  v6 = [a1 parameters];
  v7 = [v6 dictionaryRepresentation];

  sub_100011BC4();
  isa = sub_100011BB4().super.isa;

  *&v54 = 0;
  v9 = [v5 dataWithJSONObject:isa options:0 error:&v54];

  v10 = v54;
  if (!v9)
  {
    v17 = v10;
    sub_100011AB4();

    swift_willThrow();
    goto LABEL_5;
  }

  v11 = sub_100011B54();
  v13 = v12;

  v14 = sub_100011A04();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1000119F4();
  sub_10000E64C();
  sub_1000119E4();
  if (v2)
  {
    sub_10000E6A0(v11, v13);

LABEL_5:
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v18 = sub_100011B84();
    sub_1000019F0(v18, qword_10001EA60);
    swift_errorRetain();
    v19 = sub_100011B64();
    v20 = sub_100011D54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't form MusicAppSelectionPFLPluginArgs: %@", v21, 0xCu);
      sub_1000055DC(v22);
    }

    sub_10000E5F8();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    return;
  }

  sub_10000E6A0(v11, v13);

  v53 = v54;
  v25 = v59;
  v51 = v60;
  v52 = v61;
  v50 = v66;
  v49 = v65;
  v26 = *(v58 + 16);
  v47 = v70;
  v48 = v67;
  if (v26 == v59)
  {
    v45 = v73;
    v46 = v74;
    v43 = v71;
    v44 = v72;
    v40 = v68;
    v41 = v69;
    v27 = v55;
    v28 = v57;
    v29 = v58;
    v30 = a1;
    v39 = v64;
    v31 = v62;
    v32 = v56;
    v33 = v63;

    *a2 = v53;
    *(a2 + 16) = v27;
    *(a2 + 24) = v32;
    *(a2 + 32) = v28;
    *(a2 + 40) = v29;
    *(a2 + 48) = v25;
    *(a2 + 52) = v51;
    *(a2 + 60) = v52;
    *(a2 + 64) = v31;
    *(a2 + 72) = v33;
    *(a2 + 80) = v39;
    *(a2 + 88) = v49;
    *(a2 + 104) = v50;
    *(a2 + 112) = v48;
    *(a2 + 120) = v40;
    *(a2 + 128) = v41;
    *(a2 + 136) = v47;
    *(a2 + 144) = v43;
    *(a2 + 152) = v44;
    *(a2 + 160) = v45;
    *(a2 + 168) = v46;
  }

  else
  {
    v42 = v59;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v34 = sub_100011B84();
    sub_1000019F0(v34, qword_10001EA60);
    v35 = sub_100011B64();
    v36 = sub_100011D54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218240;
      *(v37 + 4) = v26;
      *(v37 + 12) = 1024;
      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Size of featureNames (%ld is not equal to featureCount (%u", v37, 0x12u);
    }

    sub_10000E5F8();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
  }
}

uint64_t sub_10000DAE4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018988;
  v6._object = a2;
  v4 = sub_100011E44(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000DB30@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100001A7C(&qword_10001CFD0, &qword_1000133D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v58 = a1;
  sub_100005DB8(a1, v10);
  sub_10000E368();
  sub_100011FE4();
  if (v2)
  {
    return sub_100001BEC(v58);
  }

  LOBYTE(v70[0]) = 0;
  sub_100011E74();
  v13 = v12;
  LOBYTE(v70[0]) = 1;
  v14 = sub_100011EA4();
  LOBYTE(v70[0]) = 2;
  v16 = sub_100011E64();
  v56 = v17;
  LOBYTE(v70[0]) = 3;
  v18 = sub_100011E64();
  v55 = v19;
  v49 = v18;
  sub_100001A7C(&qword_10001CFE0, &qword_1000133D8);
  LOBYTE(v59) = 4;
  sub_10000E4C0(&qword_10001CFE8);
  sub_100011E94();
  v54 = v70[0];
  LOBYTE(v70[0]) = 5;
  v48 = sub_100011EA4();
  LOBYTE(v70[0]) = 6;
  v47 = sub_100011E64();
  v53 = v20;
  LOBYTE(v70[0]) = 7;
  v46 = sub_100011E64();
  v52 = v21;
  LOBYTE(v70[0]) = 8;
  v45 = sub_100011E84();
  v57 = 0;
  LOBYTE(v70[0]) = 9;
  v44 = sub_100011E84();
  v57 = 0;
  LOBYTE(v70[0]) = 10;
  v42 = sub_100011E64();
  v43 = v22;
  v57 = 0;
  sub_100001A7C(&qword_10001CFF0, &qword_1000133E0);
  LOBYTE(v59) = 11;
  sub_10000E52C(&qword_10001CFF8, sub_10000E404);
  v23 = v57;
  sub_100011E94();
  v57 = v23;
  if (v23)
  {
    (*(v6 + 8))(v9, v5);
    sub_100001BEC(v58);
  }

  else
  {
    v51 = v70[0];
    LOBYTE(v70[0]) = 12;
    v41 = sub_100011E64();
    v50 = v24;
    v57 = 0;
    LOBYTE(v70[0]) = 13;
    *&v40 = sub_100011E54();
    *(&v40 + 1) = v25;
    v57 = 0;
    v86 = 14;
    v26 = sub_100011E54();
    v38 = v27;
    v39 = v26;
    v57 = 0;
    (*(v6 + 8))(v9, v5);
    *&v59 = __PAIR64__(v14, v13);
    v29 = v55;
    v28 = v56;
    *(&v59 + 1) = v16;
    *&v60 = v56;
    *(&v60 + 1) = v49;
    *&v61 = v55;
    v30 = v53;
    *(&v61 + 1) = v54;
    LODWORD(v62) = v48;
    *(&v62 + 1) = v47;
    *&v63 = v53;
    v31 = v52;
    *(&v63 + 1) = v46;
    *&v64 = v52;
    *(&v64 + 1) = v45;
    *&v65 = v44;
    v32 = v43;
    *(&v65 + 1) = v42;
    *&v66 = v43;
    *(&v66 + 1) = v51;
    *&v67 = v41;
    *(&v67 + 1) = v50;
    v68 = v40;
    *&v69 = v39;
    *(&v69 + 1) = v38;
    sub_10000E458(&v59, v70);
    sub_100001BEC(v58);
    v70[0] = __PAIR64__(v14, v13);
    v70[1] = v16;
    v70[2] = v28;
    v70[3] = v49;
    v70[4] = v29;
    v70[5] = v54;
    v71 = v48;
    v72 = v47;
    v73 = v30;
    v74 = v46;
    v75 = v31;
    v76 = v45;
    v77 = v44;
    v78 = v42;
    v79 = v32;
    v80 = v51;
    v81 = v41;
    v82 = v50;
    v83 = v40;
    v84 = v39;
    v85 = v38;
    result = sub_10000E490(v70);
    v33 = v68;
    a2[8] = v67;
    a2[9] = v33;
    a2[10] = v69;
    v34 = v64;
    a2[4] = v63;
    a2[5] = v34;
    v35 = v66;
    a2[6] = v65;
    a2[7] = v35;
    v36 = v60;
    *a2 = v59;
    a2[1] = v36;
    v37 = v62;
    a2[2] = v61;
    a2[3] = v37;
  }

  return result;
}

unint64_t sub_10000E368()
{
  result = qword_10001CFD8;
  if (!qword_10001CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD8);
  }

  return result;
}

uint64_t sub_10000E3BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000E404()
{
  result = qword_10001D000;
  if (!qword_10001D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D000);
  }

  return result;
}

uint64_t sub_10000E4C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000E3BC(&qword_10001CFE0, &qword_1000133D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E52C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E3BC(&qword_10001CFF0, &qword_1000133E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E5A4()
{
  result = qword_10001D020;
  if (!qword_10001D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D020);
  }

  return result;
}

unint64_t sub_10000E5F8()
{
  result = qword_10001D028;
  if (!qword_10001D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D028);
  }

  return result;
}

unint64_t sub_10000E64C()
{
  result = qword_10001D030;
  if (!qword_10001D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D030);
  }

  return result;
}

uint64_t sub_10000E6A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for MusicAppSelectionPFLPluginArgs.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicAppSelectionPFLPluginArgs.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000E848()
{
  result = qword_10001D038;
  if (!qword_10001D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D038);
  }

  return result;
}

unint64_t sub_10000E8A0()
{
  result = qword_10001D040;
  if (!qword_10001D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D040);
  }

  return result;
}

unint64_t sub_10000E8F8()
{
  result = qword_10001D048;
  if (!qword_10001D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D048);
  }

  return result;
}

uint64_t sub_10000E94C(void *a1)
{
  v3 = v1;
  v5 = sub_100001A7C(&qword_10001D120, &unk_1000135A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v76 = &v65 - v7;
  v8 = sub_100011B34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v65 - v13;
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v14 = sub_100011B84();
  v75 = sub_1000019F0(v14, qword_10001EA60);
  v15 = sub_100011B64();
  v16 = sub_100011D34();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initialising MusicAppSelectionPFLPluginRunner.", v17, 2u);
  }

  v18 = a1;
  sub_10000D53C(v18, v78);
  if (v2)
  {

LABEL_14:
    type metadata accessor for MusicAppSelectionPFLPluginRunner();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v65 = 0;
  v71 = (v3 + 16);
  v19 = v78[9];
  *(v3 + 144) = v78[8];
  *(v3 + 160) = v19;
  *(v3 + 176) = v78[10];
  v20 = v78[5];
  *(v3 + 80) = v78[4];
  *(v3 + 96) = v20;
  v21 = v78[7];
  *(v3 + 112) = v78[6];
  *(v3 + 128) = v21;
  v22 = v78[1];
  *(v3 + 16) = v78[0];
  *(v3 + 32) = v22;
  v23 = v78[3];
  *(v3 + 48) = v78[2];
  *(v3 + 64) = v23;
  type metadata accessor for BiomeSQLClient();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = [objc_allocWithZone(BMSQLDatabase) init];
  *(v3 + 192) = v24;
  v69 = v9;
  v70 = v8;
  v26 = *(v3 + 24);
  v25 = *(v3 + 32);
  v27 = *(v3 + 40);
  v28 = *(v3 + 48);
  v29 = *(v3 + 96);
  v67 = *(v3 + 88);
  v68 = v27;
  v30 = *(v3 + 56);
  v66 = *(v3 + 72);
  v72 = v18;
  v31 = *(v3 + 80);
  type metadata accessor for BiomeSQLRowAggregator();
  v32 = swift_allocObject();
  v32[2] = sub_10000568C(&_swiftEmptyArrayStorage);
  v32[3] = v26;
  v33 = v70;
  v34 = v67;
  v35 = v68;
  v32[4] = v25;
  v32[5] = v35;
  v32[6] = v28;
  v32[7] = v34;
  v32[8] = v29;
  v32[9] = v30;
  v32[10] = v66;
  v32[11] = v31;
  *(v3 + 200) = v32;
  v36 = *(v3 + 120);
  v37 = *(v3 + 128);

  v38 = v69;

  v39 = v72;

  v40 = v76;
  sub_10000EFC8(v39, v76);

  if ((*(v38 + 48))(v40, 1, v33) == 1)
  {
    v41 = v71;
    sub_100001B7C(v40, &qword_10001D120, &unk_1000135A8);
    v42 = sub_100011B64();
    v43 = sub_100011D54();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Model attachment not found", v44, 2u);
    }

    sub_10001183C();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  v46 = v74;
  (*(v38 + 32))(v74, v40, v33);
  v47 = [objc_allocWithZone(MLModelConfiguration) init];
  [v47 setComputeUnits:0];
  v48 = v73;
  sub_100011AF4();
  v49 = *v71;
  type metadata accessor for ModelTrainer();
  swift_allocObject();
  v50 = v47;
  v51 = v65;
  v52 = sub_100007180(v48, v50, v49);
  if (v51)
  {

    (*(v38 + 8))(v46, v33);
    v41 = v71;
LABEL_13:
    v53 = *(v41 + 9);
    v77[8] = *(v41 + 8);
    v77[9] = v53;
    v77[10] = *(v41 + 10);
    v54 = *(v41 + 5);
    v77[4] = *(v41 + 4);
    v77[5] = v54;
    v55 = *(v41 + 7);
    v77[6] = *(v41 + 6);
    v77[7] = v55;
    v56 = *(v41 + 1);
    v77[0] = *v41;
    v77[1] = v56;
    v57 = *(v41 + 3);
    v77[2] = *(v41 + 2);
    v77[3] = v57;
    sub_10000E490(v77);
    v58 = *(v3 + 192);

    v59 = *(v3 + 200);

    goto LABEL_14;
  }

  *(v3 + 208) = v52;
  v61 = sub_100011B64();
  v62 = sub_100011D34();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Finished initialising MusicAppSelectionPFLPluginRunner.", v63, 2u);
    v46 = v74;

    v64 = v72;
  }

  else
  {
    v64 = v61;
    v61 = v50;
    v50 = v72;
  }

  (*(v38 + 8))(v46, v33);
  return v3;
}

uint64_t sub_10000EFC8@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_100011B34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 attachments];
  v10 = sub_100011BE4();
  v11 = [v9 attachmentURLsForBasename:v10];

  v12 = sub_100011C84();
  v13 = *(v12 + 16);
  if (v13 >= 2)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v14 = sub_100011B84();
    sub_1000019F0(v14, qword_10001EA60);

    v15 = sub_100011B64();
    v16 = sub_100011D54();

    if (os_log_type_enabled(v15, v16))
    {
      v25 = a2;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      if (*(v12 + 16))
      {
        (*(v5 + 16))(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
        v19 = sub_100011AD4();
        v21 = v20;
        (*(v5 + 8))(v8, v4);
      }

      else
      {
        v21 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
      }

      v22 = sub_100003904(v19, v21, &v26);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Multiple 'model.mil' attachments found. Using the first: %s", v17, 0xCu);
      sub_100001BEC(v18);

      a2 = v25;
    }

    else
    {
    }

    v13 = *(v12 + 16);
  }

  if (v13)
  {
    (*(v5 + 16))(a2, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v5 + 56))(a2, v23, 1, v4);
}

uint64_t sub_10000F310()
{
  v2 = v0;
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v3 = sub_100011B84();
  sub_1000019F0(v3, qword_10001EA60);
  v4 = sub_100011B64();
  v5 = sub_100011D34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Executing SQL query.", v6, 2u);
  }

  v7 = *(v2 + 24);
  sub_100001170(*(v2 + 18), *(v2 + 19));
  if (!v1)
  {
    v9 = sub_100011B64();
    v10 = sub_100011D34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Aggregating SQL rows.", v11, 2u);
    }

    for (i = *(v7 + 16); i; i = *(v7 + 16))
    {
      if (![i next])
      {
        break;
      }

      v13 = sub_1000013C8();
      v14 = *(v2 + 25);
      sub_100001C38(v13);
    }

    v15 = *(v2 + 25);
    swift_beginAccess();
    v16 = *(*(v15 + 16) + 16);
    v17 = sub_100011B64();
    if (v16)
    {
      v18 = sub_100011D34();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Producing MLBatchProvider for training.", v19, 2u);
      }

      v70 = sub_1000026F8();

      v20 = sub_100011B64();
      v21 = sub_100011D34();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v71 = v23;
        *v22 = 136315650;
        *(v22 + 4) = sub_100003904(*(v2 + 15), *(v2 + 16), &v71);
        *(v22 + 12) = 2048;
        *(v22 + 14) = v16;
        *(v22 + 22) = 1024;
        *(v22 + 24) = *(v2 + 5);

        _os_log_impl(&_mh_execute_header, v20, v21, "Training model %s with %ld datapoints for %u epochs.", v22, 0x1Cu);
        sub_100001BEC(v23);
      }

      else
      {
      }

      v26 = *(v2 + 26);
      v27 = *(v2 + 5);
      v28 = *(v2 + 17);

      v30 = sub_10000B394(v29);

      sub_100007AB4(v27, v70, v30);
      v32 = v31;
      v34 = v33;
      v68 = v35;
      v67 = v36;

      v37 = v32;
      v38 = v34;
      v39 = sub_100008FF4(v37, v34, v68, v67);

      v40 = 0;
      v41 = *(v15 + 16);
      v42 = 1 << *(v41 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v41 + 64);
      v45 = (v42 + 63) >> 6;
      v46 = 0.0;
      if (v44)
      {
        while (1)
        {
          v47 = v40;
LABEL_29:
          v48 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          v46 = v46 + *(*(*(*(v41 + 56) + ((v47 << 9) | (8 * v48))) + 16) + 24);
          if (!v44)
          {
            goto LABEL_25;
          }
        }
      }

      while (1)
      {
LABEL_25:
        v47 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          return result;
        }

        if (v47 >= v45)
        {
          break;
        }

        v44 = *(v41 + 64 + 8 * v47);
        ++v40;
        if (v44)
        {
          v40 = v47;
          goto LABEL_29;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v39;
      sub_1000046EC(0x43656C706D617845, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native, v46);
      v50 = v71;
      v51 = [*(v26 + 16) copyCurrentTrainingDelta];
      v52 = [v51 flattenedModelUpdate];

      if (v52)
      {
        v53 = sub_100011B54();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0xF000000000000000;
      }

      v56 = *(v2 + 23);
      if (v56)
      {
        v57 = *(v2 + 22);

        v58 = sub_100011B64();
        v59 = sub_100011D34();

        if (os_log_type_enabled(v58, v59))
        {
          v69 = v53;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v71 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_100003904(v57, v56, &v71);
          _os_log_impl(&_mh_execute_header, v58, v59, "Writing deltas and metrics to %s", v60, 0xCu);
          sub_100001BEC(v61);

          v53 = v69;
        }

        sub_10000FE98(v57, v56, v50, v53, v55);
      }

      v62 = sub_100011B64();
      v63 = sub_100011D34();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        *(v64 + 4) = *(v50 + 16);
        _os_log_impl(&_mh_execute_header, v62, v63, "Finishing plugin by returning %ld metrics and weight delta.", v64, 0xCu);
      }

      sub_10000FB9C(v50);

      v65.super.isa = sub_100011BB4().super.isa;

      if (v55 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = sub_100011B44().super.isa;
        sub_10000FE84(v53, v55);
      }

      v2 = [objc_allocWithZone(MLRTaskResult) initWithJSONResult:v65.super.isa unprivatizedVector:isa];
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = sub_100011D54();
      if (os_log_type_enabled(v17, v24))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v17, v24, "No Biome datapoints found, returning empty MLRTaskResult", v2, 2u);
      }

      sub_10001183C();
      swift_allocError();
      *v25 = 5;
      swift_willThrow();
    }
  }

  return v2;
}

unint64_t sub_10000FB9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001A7C(&qword_10001CA78, &qword_100012870);
    v2 = sub_100011E34();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 4 * v15);

        swift_dynamicCast();
        sub_100001BDC(&v25, v27);
        sub_100001BDC(v27, v28);
        sub_100001BDC(v28, &v26);
        result = sub_100003EAC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100001BEC(v12);
          result = sub_100001BDC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100001BDC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000FDE4()
{
  v1 = *(v0 + 160);
  v10[8] = *(v0 + 144);
  v10[9] = v1;
  v10[10] = *(v0 + 176);
  v2 = *(v0 + 96);
  v10[4] = *(v0 + 80);
  v10[5] = v2;
  v3 = *(v0 + 128);
  v10[6] = *(v0 + 112);
  v10[7] = v3;
  v4 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v4;
  v5 = *(v0 + 64);
  v10[2] = *(v0 + 48);
  v10[3] = v5;
  sub_10000E490(v10);
  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  return swift_deallocClassInstance();
}

uint64_t sub_10000FE84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E6A0(a1, a2);
  }

  return a1;
}

uint64_t sub_10000FE98(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v225 = a4;
  v215 = a3;
  v222 = a2;
  v221 = a1;
  v213 = sub_100011C14();
  v212 = *(v213 - 8);
  v6 = *(v212 + 64);
  v7 = __chkstk_darwin(v213);
  v216 = v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v214 = v203 - v9;
  v220 = sub_100011A34();
  *&v218 = *(v220 - 1);
  v10 = *(v218 + 64);
  __chkstk_darwin(v220);
  v219 = v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100011AC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001A7C(&qword_10001D120, &unk_1000135A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v203 - v19;
  v21 = sub_100011B34();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v27 = v203 - v26;
  v28 = __chkstk_darwin(v25);
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v31 = __chkstk_darwin(v203 - v30);
  v33 = v203 - v32;
  v34 = __chkstk_darwin(v31);
  v39 = v203 - v38;
  if (a5 >> 60 == 15)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v40 = sub_100011B84();
    sub_1000019F0(v40, qword_10001EA60);
    v41 = sub_100011B64();
    v42 = sub_100011D54();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Weight deltas is nil", v43, 2u);
    }

    sub_10001183C();
    swift_allocError();
    *v44 = 1;
    return swift_willThrow();
  }

  v207 = v34;
  v205 = v27;
  v204 = v37;
  v208 = v36;
  v206 = v35;
  v46 = objc_opt_self();
  v47 = a5;
  v48 = v46;
  v217 = v47;
  sub_100011890(v225, v47);
  v49 = [v48 defaultManager];
  v224 = v22;
  (*(v22 + 56))(v20, 1, 1, v21);
  (*(v13 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v12);

  sub_100011B24();
  sub_100011AF4();
  sub_100011B14();
  v50 = sub_100011BE4();

  v51 = [v49 fileExistsAtPath:v50];

  v52 = v21;
  v223 = v21;
  v210 = v33;
  v209 = v49;
  if ((v51 & 1) == 0)
  {
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v53 = sub_100011B84();
    v54 = sub_1000019F0(v53, qword_10001EA60);
    v55 = v224;
    isa = v224[2].isa;
    v57 = v207;
    v203[1] = v224 + 2;
    v203[0] = isa;
    (isa)(v207, v33, v52);
    v221 = v54;
    v58 = sub_100011B64();
    v59 = sub_100011D44();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v226[0] = v61;
      *v60 = 136315138;
      v62 = sub_100011B14();
      v63 = v39;
      v65 = v64;
      v66 = v55[1].isa;
      v66(v57, v223);
      v67 = sub_100003904(v62, v65, v226);
      v39 = v63;

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "Creating directories at %s", v60, 0xCu);
      sub_100001BEC(v61);
      v49 = v209;
      v33 = v210;

      v52 = v223;
    }

    else
    {

      v66 = v55[1].isa;
      v66(v57, v52);
    }

    sub_100011AE4(v68);
    v70 = v69;
    v226[0] = 0;
    v71 = [v49 createDirectoryAtURL:v69 withIntermediateDirectories:1 attributes:0 error:v226];

    if (!v71)
    {
      v220 = v66;
      v222 = v39;
      v102 = v226[0];
      sub_100011AB4();

      swift_willThrow();
      v103 = v205;
      (v203[0])(v205, v33, v52);
      swift_errorRetain();
      v104 = sub_100011B64();
      v105 = sub_100011D54();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = v52;
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v226[0] = v221;
        *v107 = 136315394;
        v109 = sub_100011B14();
        v111 = v110;
        v224 = v104;
        v112 = v103;
        v113 = v220;
        v220(v112, v106);
        v114 = sub_100003904(v109, v111, v226);

        *(v107 + 4) = v114;
        *(v107 + 12) = 2112;
        swift_errorRetain();
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v107 + 14) = v115;
        *v108 = v115;
        v116 = v105;
        v117 = v113;
        v118 = v224;
        _os_log_impl(&_mh_execute_header, v224, v116, "Couldn't create directory at %s: %@", v107, 0x16u);
        sub_100001B7C(v108, &qword_10001CA70, &unk_1000126A0);
        v49 = v209;
        v119 = v210;

        sub_100001BEC(v221);

        v120 = v217;
      }

      else
      {
        v119 = v33;

        v117 = v220;
        v220(v103, v52);
        v120 = v217;
        v106 = v52;
      }

      v123 = v225;
      sub_10001183C();
      swift_allocError();
      *v124 = 2;
      swift_willThrow();

      sub_10000FE84(v123, v120);

      v117(v119, v106);
      return (v117)(v222, v106);
    }

    v72 = v226[0];
  }

  sub_100011B14();
  v73 = sub_100011BE4();

  v74 = [v49 fileExistsAtPath:v73];

  if (v74)
  {
    v75 = v52;
    sub_100011B14();
    v76 = sub_100011BE4();

    v226[0] = 0;
    v77 = [v49 removeItemAtPath:v76 error:v226];

    v78 = v224;
    if (!v77)
    {
      v121 = v226[0];
      sub_100011AB4();

      swift_willThrow();
      sub_10000FE84(v225, v217);
      v122 = v78[1].isa;
      v122(v33, v75);
      return (v122)(v39, v75);
    }

    v79 = qword_10001C920;
    v80 = v226[0];
    if (v79 != -1)
    {
      swift_once();
    }

    v81 = sub_100011B84();
    sub_1000019F0(v81, qword_10001EA60);
    v82 = v204;
    v52 = v75;
    (v78[2].isa)(v204, v39, v75);
    v83 = sub_100011B64();
    v84 = sub_100011D44();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v39;
      v87 = swift_slowAlloc();
      v226[0] = v87;
      *v85 = 136315138;
      v88 = sub_100011B14();
      v90 = v89;
      (v78[1].isa)(v82, v223);
      v91 = sub_100003904(v88, v90, v226);
      v92 = v223;

      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "Attempted removing existing file %s", v85, 0xCu);
      sub_100001BEC(v87);
      v39 = v86;

      v52 = v92;
    }

    else
    {

      (v78[1].isa)(v82, v52);
    }

    v95 = v78;
    v100 = v217;
  }

  else
  {
    sub_100011B04(1);
    v93 = sub_100011BE4();

    v94 = [v49 createFileAtPath:v93 contents:0 attributes:0];

    v95 = v224;
    if (qword_10001C920 != -1)
    {
      swift_once();
    }

    v96 = sub_100011B84();
    sub_1000019F0(v96, qword_10001EA60);
    v97 = sub_100011B64();
    v98 = sub_100011D44();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v217;
    if (v99)
    {
      v101 = swift_slowAlloc();
      *v101 = 67109120;
      *(v101 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v97, v98, "Attempted creating file with success: %{BOOL}d", v101, 8u);
    }
  }

  v125 = sub_100011A64();
  v126 = *(v125 + 48);
  v127 = *(v125 + 52);
  swift_allocObject();
  v128 = sub_100011A54();
  sub_100001A7C(&qword_10001D128, &qword_1000135B8);
  v129 = *(v218 + 72);
  v130 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v131 = swift_allocObject();
  v218 = xmmword_100012700;
  v131[1] = xmmword_100012700;
  sub_100011A24();
  sub_100011A14();
  v226[0] = v131;
  sub_100011948(&qword_10001D130, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100001A7C(&qword_10001D138, &unk_1000135C0);
  sub_1000118E4();
  sub_100011DB4();
  v221 = v128;
  sub_100011A44();
  v132 = v100 >> 62;
  if ((v100 >> 62) > 1)
  {
    if (v132 != 2)
    {
LABEL_54:
      v219 = _swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v135 = v52;
    v136 = *(v225 + 16);
    v52 = *(v225 + 24);
    v134 = sub_100011A74();
    if (v134)
    {
      v137 = sub_100011A94();
      if (__OFSUB__(v136, v137))
      {
        goto LABEL_75;
      }

      v134 = (v134 + v136 - v137);
    }

    v138 = __OFSUB__(v52, v136);
    v139 = v52 - v136;
    if (!v138)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_44:
    v135 = v52;
    v140 = v225;
    v139 = (v225 >> 32) - v225;
    if (v225 >> 32 >= v225)
    {
      v141 = sub_100011A74();
      if (!v141)
      {
        sub_100011A84();
        v219 = _swiftEmptyArrayStorage;
        v52 = v135;
        goto LABEL_55;
      }

      v142 = v141;
      v143 = sub_100011A94();
      if (!__OFSUB__(v140, v143))
      {
        v134 = (v140 - v143 + v142);
LABEL_48:
        v144 = sub_100011A84();
        v52 = v135;
        if (!v134)
        {
          goto LABEL_54;
        }

        v145 = v144 >= v139 ? v139 : v144;
        v133 = v145 / 4;
        if (!(v145 / 4))
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

LABEL_76:
      __break(1u);
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v132)
  {
    goto LABEL_44;
  }

  v133 = (v100 >> 50) & 0x3F;
  v134 = v226;
  if (!v133)
  {
    goto LABEL_54;
  }

LABEL_53:
  v219 = sub_1000037FC(v133, 0);
  memcpy(v219 + 32, v134, 4 * v133);
LABEL_55:
  if (qword_10001C920 != -1)
  {
    swift_once();
  }

  v146 = sub_100011B84();
  v147 = sub_1000019F0(v146, qword_10001EA60);
  v148 = v95[2].isa;
  v149 = v208;
  v222 = v39;
  v207 = v148;
  v148(v208, v39, v52);
  v205 = v147;
  v150 = v52;
  v151 = sub_100011B64();
  v152 = sub_100011D44();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = v95;
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v226[0] = v155;
    *v154 = 136315138;
    sub_100011948(&qword_10001CE58, &type metadata accessor for URL);
    v156 = sub_100011F24();
    v158 = v157;
    v220 = v153[1].isa;
    v220(v149, v223);
    v159 = sub_100003904(v156, v158, v226);

    *(v154 + 4) = v159;
    _os_log_impl(&_mh_execute_header, v151, v152, "Writing deltas and metrics to %s", v154, 0xCu);
    sub_100001BEC(v155);
    v160 = v223;
  }

  else
  {

    v160 = v150;
    v220 = v95[1].isa;
    v220(v149, v150);
  }

  v161 = v216;
  sub_100001A7C(&qword_10001CC98, qword_100012850);
  inited = swift_initStackObject();
  *(inited + 16) = v218;
  *(inited + 32) = 0x7363697274656DLL;
  *(inited + 40) = 0xE700000000000000;
  v163 = sub_100001A7C(&qword_10001D148, &qword_1000135D0);
  *(inited + 48) = v215;
  *(inited + 72) = v163;
  *(inited + 80) = 0x73746867696577;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = sub_100001A7C(&qword_10001D150, &qword_1000135D8);
  *(inited + 96) = v219;

  sub_100005794(inited);
  swift_setDeallocating();
  sub_100001A7C(&qword_10001CCA8, qword_1000135E0);
  swift_arrayDestroy();
  v164 = objc_opt_self();
  v165 = sub_100011BB4().super.isa;
  v226[0] = 0;
  v166 = [v164 dataWithJSONObject:v165 options:3 error:v226];

  v167 = v226[0];
  if (v166)
  {
    v168 = sub_100011B54();
    v170 = v169;

    sub_100011C04();
    v171 = sub_100011BF4();
    if (v172)
    {
      v226[0] = v171;
      v226[1] = v172;
      sub_100011C04();
      sub_100011990();
      v173 = v222;
      v174 = v211;
      sub_100011D74();
      if (!v174)
      {
        sub_10000E6A0(v168, v170);

        sub_10000FE84(v225, v217);

        (*(v212 + 8))(v161, v213);
        v202 = v220;
        v220(v210, v160);
        v202(v173, v160);
      }

      (*(v212 + 8))(v161, v213);
      sub_10000E6A0(v168, v170);
    }

    else
    {
      v176 = sub_100011B64();
      v177 = sub_100011D54();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&_mh_execute_header, v176, v177, "Couldn't convert JSON data to String with UTF-8", v178, 2u);
      }

      sub_10001183C();
      swift_allocError();
      *v179 = 3;
      swift_willThrow();
      sub_10000E6A0(v168, v170);
    }
  }

  else
  {
    v175 = v167;
    sub_100011AB4();

    swift_willThrow();
  }

  v180 = v206;
  v181 = v223;
  v207(v206, v222, v223);

  swift_errorRetain();
  v182 = sub_100011B64();
  v183 = sub_100011D54();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *&v218 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v226[0] = v219;
    *v184 = 136315650;
    v185 = sub_100011BD4();
    v187 = v186;

    v188 = sub_100003904(v185, v187, v226);

    *(v184 + 4) = v188;
    *(v184 + 12) = 2080;
    sub_100011948(&qword_10001CE58, &type metadata accessor for URL);
    v189 = sub_100011F24();
    v191 = v190;
    v192 = v180;
    v193 = v220;
    v220(v192, v181);
    v194 = sub_100003904(v189, v191, v226);

    *(v184 + 14) = v194;
    *(v184 + 22) = 2112;
    swift_errorRetain();
    v195 = _swift_stdlib_bridgeErrorToNSError();
    *(v184 + 24) = v195;
    v196 = v218;
    *v218 = v195;
    _os_log_impl(&_mh_execute_header, v182, v183, "Couldn't write %s to file %s: %@", v184, 0x20u);
    sub_100001B7C(v196, &qword_10001CA70, &unk_1000126A0);
    v197 = v217;

    swift_arrayDestroy();

    v198 = v210;
    v199 = v209;
  }

  else
  {

    v200 = v180;
    v193 = v220;
    v220(v200, v181);
    v198 = v210;
    v199 = v209;
    v197 = v217;
  }

  sub_10001183C();
  swift_allocError();
  *v201 = 4;
  swift_willThrow();

  sub_10000FE84(v225, v197);

  v193(v198, v181);
  return (v193)(v222, v181);
}

unint64_t sub_10001183C()
{
  result = qword_10001D118;
  if (!qword_10001D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D118);
  }

  return result;
}

uint64_t sub_100011890(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000118E4()
{
  result = qword_10001D140;
  if (!qword_10001D140)
  {
    sub_10000E3BC(&qword_10001D138, &unk_1000135C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D140);
  }

  return result;
}

uint64_t sub_100011948(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100011990()
{
  result = qword_10001D158;
  if (!qword_10001D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D158);
  }

  return result;
}