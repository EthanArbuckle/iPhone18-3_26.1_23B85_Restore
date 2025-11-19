uint64_t sub_1000012D0()
{
  sub_100001934();
  result = sub_100001924();
  qword_100008150 = result;
  return result;
}

id sub_100001304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v3 = sub_100001964();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  if (qword_100008120 != -1)
  {
    swift_once();
  }

  v11 = sub_100001808(v3, qword_100008158);
  v12 = v4[2];
  v12(v10, v11, v3);
  v13 = sub_100001944();
  v14 = sub_100001974();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a2;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Returning handler for intent", v15, 2u);
    a2 = v22;
  }

  v16 = v4[1];
  v16(v10, v3);
  sub_100001914();
  if (swift_dynamicCastClass())
  {
    v12(v8, v11, v3);
    v17 = sub_100001944();
    v18 = sub_100001974();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Intent is SwitchProfileIntent. Returning switchProfileHandler", v19, 2u);
    }

    v16(v8, v3);
    if (qword_100008118 != -1)
    {
      swift_once();
    }

    v23 = qword_100008150;
    a2[3] = sub_100001934();
    v20 = v23;
    *a2 = v23;

    return v20;
  }

  else
  {
    result = sub_100001984();
    __break(1u);
  }

  return result;
}

id sub_1000016C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000171C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100001778(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000017BC(void *a1)
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

uint64_t sub_100001808(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001840()
{
  v0 = sub_100001964();
  sub_1000018B0(v0, qword_100008158);
  sub_100001808(v0, qword_100008158);
  return sub_100001954();
}

uint64_t *sub_1000018B0(uint64_t a1, uint64_t *a2)
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