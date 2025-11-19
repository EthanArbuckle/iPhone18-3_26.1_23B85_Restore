void *SiriUserSegmentsPlugin.perform(_:)()
{
  v1 = sub_100001628();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001618();
  sub_100001608();
  if (!v0)
  {
    (*(v2 + 8))(v5, v1);
    sub_1000013FC(&_swiftEmptyArrayStorage);
    v6 = objc_allocWithZone(MLRTaskResult);
    isa = sub_100001638().super.isa;

    v1 = [v6 initWithJSONResult:isa unprivatizedVector:0];
  }

  return v1;
}

id SiriUserSegmentsPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriUserSegmentsPlugin.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserSegmentsPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id SiriUserSegmentsPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserSegmentsPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000012CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100001678();
  sub_100001648();
  v6 = sub_100001688();

  return sub_100001344(a1, a2, v6);
}

unint64_t sub_100001344(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100001668())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000013FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001530(&qword_100008378, &qword_100001968);
    v3 = sub_100001658();
    v4 = a1 + 32;

    while (1)
    {
      sub_100001578(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000012CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000015E8(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100001530(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001530(&unk_100008380, &qword_100001970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000015E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}