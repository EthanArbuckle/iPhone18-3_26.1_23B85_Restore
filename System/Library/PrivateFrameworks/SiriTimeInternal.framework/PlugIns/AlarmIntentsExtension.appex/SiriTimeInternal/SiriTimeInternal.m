uint64_t sub_100001330()
{
  v0 = sub_100001840();
  sub_1000017AC(v0, qword_100008150);
  sub_100001678(v0, qword_100008150);
  return sub_100001820();
}

unint64_t sub_10000137C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_100008148 != -1)
  {
    swift_once();
  }

  v4 = sub_100001840();
  sub_100001678(v4, qword_100008150);
  v5 = a1;
  v6 = sub_100001830();
  v7 = sub_100001850();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Alarm extension received intent: %@", v8, 0xCu);
    sub_1000016FC(v9);
  }

  v11 = sub_100001810();
  result = sub_1000016B0();
  a2[3] = result;
  *a2 = v11;
  return result;
}

id sub_100001590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000015E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000162C(void *a1)
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

uint64_t sub_100001678(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000016B0()
{
  result = qword_100008138;
  if (!qword_100008138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008138);
  }

  return result;
}

uint64_t sub_1000016FC(uint64_t a1)
{
  v2 = sub_100001764(&qword_100008140, qword_100001A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001764(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_1000017AC(uint64_t a1, uint64_t *a2)
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