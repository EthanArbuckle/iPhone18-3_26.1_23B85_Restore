uint64_t sub_100001308()
{
  v0 = sub_100001C24();
  sub_100001394(v0, qword_100008170);
  sub_1000013F8(v0, qword_100008170);
  if (qword_100008138 != -1)
  {
    swift_once();
  }

  v1 = qword_1000081A0;
  return sub_100001C34();
}

uint64_t *sub_100001394(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000013F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001430()
{
  sub_100001B64();
  result = sub_100001B54();
  qword_100008188 = result;
  return result;
}

uint64_t sub_100001464()
{
  sub_100001BB4();
  result = sub_100001BA4();
  qword_100008190 = result;
  return result;
}

uint64_t sub_100001498()
{
  sub_100001BD4();
  result = sub_100001BC4();
  qword_100008198 = result;
  return result;
}

uint64_t sub_1000014CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100001C24();
  v3 = sub_100001A98(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001C04();
  v11 = sub_100001A98(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C54();
  if (qword_100008138 != -1)
  {
    swift_once();
  }

  sub_100001BF4();
  sub_100001BE4();
  (*(v13 + 8))(v17, v10);
  if (qword_100008118 != -1)
  {
    swift_once();
  }

  v18 = sub_1000013F8(v2, qword_100008170);
  (*(v5 + 16))(v9, v18, v2);
  v19 = sub_100001C14();
  v20 = sub_100001C44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Returning handler for intent", v21, 2u);
  }

  (*(v5 + 8))(v9, v2);
  sub_100001B74();
  if (swift_dynamicCastClass())
  {
    if (qword_100008120 != -1)
    {
      swift_once();
    }

    v22 = sub_100001B64();
    v23 = &qword_100008188;
  }

  else
  {
    sub_100001B84();
    if (swift_dynamicCastClass())
    {
      if (qword_100008128 != -1)
      {
        swift_once();
      }

      v22 = sub_100001BB4();
      v23 = &qword_100008190;
    }

    else
    {
      sub_100001B94();
      if (!swift_dynamicCastClass())
      {
        sub_100001C74();
        __break(1u);
        return _objc_retain_x1();
      }

      if (qword_100008130 != -1)
      {
        swift_once();
      }

      v22 = sub_100001BD4();
      v23 = &qword_100008198;
    }
  }

  v24 = *v23;
  a1[3] = v22;
  *a1 = v24;

  return _objc_retain_x1();
}

id sub_100001954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000019AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100001A08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001A4C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100001AAC()
{
  sub_100001B10();
  result = sub_100001C64();
  qword_1000081A0 = result;
  return result;
}

unint64_t sub_100001B10()
{
  result = qword_100008168;
  if (!qword_100008168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008168);
  }

  return result;
}