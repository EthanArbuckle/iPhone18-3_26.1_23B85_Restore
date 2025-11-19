uint64_t sub_1000013C0()
{
  sub_10000142C();
  result = sub_1000019CC();
  qword_100008160 = result;
  return result;
}

unint64_t sub_10000142C()
{
  result = qword_100008120;
  if (!qword_100008120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008120);
  }

  return result;
}

uint64_t sub_100001470@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000019AC();
  if (qword_100008118 != -1)
  {
    swift_once();
  }

  sub_10000198C();
  sub_10000197C();
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    sub_10000196C();
    v5 = v16;
    v6 = sub_10000187C(v15, v16);
    a2[3] = v5;
    v7 = sub_1000018C0(a2);
    (*(*(v5 - 8) + 16))(v7, v6, v5);

    return sub_100001920(v15);
  }

  else
  {
    sub_1000019BC();
    sub_1000017E0(&qword_100008150, qword_100001BF8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100001BC0;
    v10 = a1;
    v11 = [v10 description];
    v12 = sub_10000199C();
    v14 = v13;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100001828();
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    sub_10000198C();

    result = sub_1000019DC();
    __break(1u);
  }

  return result;
}

id sub_100001730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000017E0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001828()
{
  result = qword_100008158;
  if (!qword_100008158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008158);
  }

  return result;
}

void *sub_10000187C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1000018C0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100001920(void *a1)
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