void sub_100001CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001CF8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10004BDB8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001E3C;
    v4[4] = &unk_100044DC8;
    v4[5] = v4;
    v5 = off_100044DB0;
    v6 = 0;
    qword_10004BDB8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10004BDB8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NTKFontLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100036D60();
  }

  qword_10004BDB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001E3C()
{
  result = _sl_dlopen();
  qword_10004BDB8 = result;
  return result;
}

uint64_t sub_100001F10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100036F68();
  sub_100002620(v3, a2);
  sub_100002684(v3, a2);
  return sub_100036F58();
}

uint64_t sub_100001F88@<X0>(uint64_t *a1@<X8>)
{
  sub_100036FE8();
  swift_allocObject();
  sub_100036FF8();
  sub_100036FB8();
  swift_allocObject();

  sub_100036FC8();
  sub_100002590(&qword_10004AE98);
  sub_100036DF8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100038710;
  sub_1000025D8(&qword_10004AEA0, &type metadata accessor for PRRenderingConfiguration);

  sub_100036DE8();
  sub_1000025D8(&qword_10004AEA8, &type metadata accessor for PREditingConfiguration);

  sub_100036DE8();

  *a1 = v2;
  return result;
}

id sub_1000021E4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100002228()
{
  sub_100002590(&qword_10004AE58);
  swift_allocObject();
  sub_100036FD8();
  sub_1000027B8(&qword_10004AE90);
  sub_100036E28();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002368();
  sub_1000027B8(&qword_10004AE50);
  sub_100036E08();
  return 0;
}

unint64_t sub_100002368()
{
  result = qword_10004AE48;
  if (!qword_10004AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AE48);
  }

  return result;
}

uint64_t sub_1000023BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10000242C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_1000024AC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000024B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000024D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_100002548@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002590(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000025D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100002620(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002684(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000026BC()
{
  v0 = sub_100037068();
  v2 = v1;
  if (v0 == sub_100037068() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100037558();
  }

  return v5 & 1;
}

uint64_t sub_100002744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100037068();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000027B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000023BC(&qword_10004AE58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000281C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RhizomeFlowerLayerLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RhizomeFlowerLayerLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000029E4()
{
  result = qword_10004AF28;
  if (!qword_10004AF28)
  {
    sub_1000023BC(&qword_10004AF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AF28);
  }

  return result;
}

uint64_t sub_100002A48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7267656C6464696DLL;
  v4 = 0xEC000000646E756FLL;
  if (v2 != 1)
  {
    v3 = 0x756F726765726F66;
    v4 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000646ELL;
  }

  v7 = 0x7267656C6464696DLL;
  v8 = 0xEC000000646E756FLL;
  if (*a2 != 1)
  {
    v7 = 0x756F726765726F66;
    v8 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100037558();
  }

  return v11 & 1;
}

Swift::Int sub_100002B54()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100002C00()
{
  sub_1000370A8();
}

Swift::Int sub_100002C98()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100002D40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000034DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100002D70(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000646ELL;
  v3 = *v1;
  v4 = 0xEC000000646E756FLL;
  v5 = 0x7267656C6464696DLL;
  if (v3 != 1)
  {
    v5 = 0x756F726765726F66;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x756F72676B636162;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_100002DEC()
{
  result = qword_10004AF38;
  if (!qword_10004AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AF38);
  }

  return result;
}

_BYTE *sub_100002E40(char a1, unsigned __int8 a2, char a3)
{
  v5 = sub_100003528(off_1000459D0[a3]);
  v13 = v5;
  if (a2 <= 7u)
  {
    if (a2 >= 4u)
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_7:
    v6 = sub_100037558();
LABEL_9:

    goto LABEL_10;
  }

  if (a2 - 12 < 5 || a2 - 8 < 4)
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_10:
  if (!a1)
  {
    goto LABEL_15;
  }

  v7 = sub_100037558();

  if ((v7 | v6))
  {
    goto LABEL_16;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    while (1)
    {
      v9 = sub_1000132DC(v8, 0);
      v10 = sub_1000033E0(&v12, v9 + 32, v8, v5);
      sub_100003664();
      if (v10 == v8)
      {
        break;
      }

      __break(1u);
LABEL_15:

LABEL_16:
      sub_100003130(0x19u);
      v5 = v13;
      v8 = *(v13 + 16);
      if (!v8)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    return &_swiftEmptyArrayStorage;
  }

  return v9;
}

void *sub_100003064(char a1, unsigned __int8 a2, char a3)
{
  v3 = sub_100002E40(a1, a2, a3);
  v4 = *(v3 + 2);
  if (v4)
  {
    sub_100037418();
    v5 = 32;
    do
    {
      sub_1000316F4(v3[v5]);
      sub_1000373F8();
      sub_100037428();
      sub_100037438();
      sub_100037408();
      ++v5;
      --v4;
    }

    while (v4);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100003130(unsigned __int8 a1)
{
  v3 = *v1;
  sub_1000375A8();
  sub_1000375B8(a1);
  v4 = sub_1000375E8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 27;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 27;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100013488();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_100003238(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_100003238(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000372B8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1000375A8();
        sub_1000375B8(v10);
        v11 = sub_1000375E8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1000033E0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000034DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100044E90;
  v6._object = a2;
  v4 = sub_100037508(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100003528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002590(&qword_10004AF40);
    v3 = sub_100037388();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1000375A8();
      sub_1000375B8(v10);
      result = sub_1000375E8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100003678(unint64_t *a1@<X8>)
{
  v2 = 0xED00007973696144;
  v3 = 0x206E616369726641;
  v4 = 0xE900000000000079;
  v5 = 0x6C694C20616C6143;
  if (*v1 != 2)
  {
    v5 = 0x646C6F676972614DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000100039F30;
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

id sub_10000386C(void *a1)
{
  v1[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurEnabled] = 0;
  v3 = &v1[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadiusKeyPath];
  *v3 = 0xD000000000000020;
  v3[1] = 0x8000000100039FC0;
  *&v1[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadius] = 0x4014000000000000;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FlowerBlurringLayer();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10000393C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowerBlurringLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000039A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000039EC(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100003A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003ACC(void *a1, char a2, char a3)
{
  v3 = a1[9];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v7 = sub_10001534C(0);
  if ((v8 & 1) == 0 || !*(v3 + 16))
  {
    return 0;
  }

  v9 = *(*(v3 + 56) + 8 * v7);
  v10 = sub_10001534C(2u);
  if ((v11 & 1) == 0)
  {

    return 0;
  }

  v12 = a2;
  v13 = *(*(v3 + 56) + 8 * v10);
  v14 = a1;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = v14[3];
  v19 = 3.0;
  if (a3)
  {
    v19 = 1.5;
  }

  v20 = v12 & 1;
  if (v12)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0.0;
  }

  v23 = v14[7];
  v22 = v14[8];
  LOBYTE(v56) = v15;
  *(&v56 + 1) = v12 & 1;
  *(&v56 + 1) = v9;
  *&v57 = v16;
  *(&v57 + 1) = v21;
  *&v58 = v23;
  *(&v58 + 1) = v22;
  v64[1] = v57;
  v64[2] = v58;
  LOBYTE(v59) = v15;
  BYTE1(v59) = v12 & 1;
  BYTE2(v59) = 2;
  *(&v59 + 1) = v13;
  *&v60 = v18;
  *(&v60 + 1) = v21;
  *&v61 = v23;
  *(&v61 + 1) = v22;
  v63[2] = v61;
  v64[0] = v56;
  v63[0] = v59;
  v63[1] = v60;
  v24 = *(v3 + 16);
  v25 = v16;
  v26 = v18;
  v27 = v25;
  v28 = v26;
  v29 = v13;
  v30 = v17;
  v51 = v9;
  v31 = v27;
  v32 = v28;
  v33 = v30;
  v50 = v29;
  if (v24)
  {
    v34 = sub_10001534C(1u);
    if (v35)
    {
      v36 = v15 | (v20 << 8);
      v37 = *(*(v3 + 56) + 8 * v34);
      v38 = v36 | 0x10000;
      v39 = v21;
      v24 = v23;
      v40 = v22;
      v41 = v33;
      v42 = v37;
      v43 = v33;
      goto LABEL_18;
    }

    v38 = 0;
    v37 = 0;
    v43 = 0;
    v39 = 0.0;
    v24 = 0;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v43 = 0;
    v39 = 0.0;
  }

  v40 = 0;
LABEL_18:
  sub_100003E18(&v56, v62);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v62[0] = &_swiftEmptyDictionarySingleton;
  sub_100016A9C(v64, 0, isUniquelyReferenced_nonNull_native);
  v46 = *&v62[0];
  sub_100003E18(&v59, v62);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v62[0] = v46;
  sub_100016A9C(v63, 2u, v47);
  v48 = *&v62[0];
  if (v37)
  {
    *&v53 = v38;
    *(&v53 + 1) = v37;
    *&v54 = v43;
    *(&v54 + 1) = v39;
    *&v55 = v24;
    *(&v55 + 1) = v40;
    v62[0] = v53;
    v62[1] = v54;
    v62[2] = v55;
    sub_100003E18(&v53, v52);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v48;
    sub_100016A9C(v62, 1u, v49);

    sub_100003EC8(v38, v37, v43);
    sub_100003E74(&v59);
    sub_100003E74(&v56);

    return v52[0];
  }

  else
  {

    sub_100003E74(&v56);
    sub_100003E74(&v59);

    return v48;
  }
}

void sub_100003EC8(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_100003F08()
{
  v7 = sub_100037208();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000371F8();
  __chkstk_darwin(v3);
  v4 = sub_100036FA8();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100005048();
  sub_100036F98();
  v8 = _swiftEmptyArrayStorage;
  sub_100005094(&qword_10004B060, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002590(&qword_10004B068);
  sub_1000050DC(&qword_10004B070, &qword_10004B068);
  sub_1000372A8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_100037238();
  qword_10004D288 = result;
  return result;
}

void sub_100004158(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v59 = a5;
  v9 = sub_100036DC8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  sub_100010094(a1 & 0xFF01, a2, a3);
  if (qword_10004ADC0 != -1)
  {
    swift_once();
  }

  v16 = sub_100036F68();
  v17 = sub_100002684(v16, qword_10004D270);
  v18 = *(v10 + 16);
  v61 = a4;
  v55 = v18;
  v56 = v10 + 16;
  v18(v15, a4, v9);

  v60 = v17;
  v19 = sub_100036F48();
  v20 = sub_1000371B8();

  v21 = os_log_type_enabled(v19, v20);
  v58 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v54 = v13;
    *&v64[0] = v23;
    *v22 = 136315394;
    v24 = sub_100036DA8();
    v26 = v25;
    v57 = *(v10 + 8);
    v57(v15, v9);
    v27 = sub_10000BEB8(v24, v26, v64);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_100037028();
    v30 = sub_10000BEB8(v28, v29, v64);

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to store layout dictionary in User Defaults with (uuid=%s): %s", v22, 0x16u);
    swift_arrayDestroy();
    v13 = v54;
  }

  else
  {

    v57 = *(v10 + 8);
    v57(v15, v9);
  }

  isa = sub_100037008().super.isa;

  v32 = v61;
  sub_100036DA8();
  v33 = sub_100037058();

  v34 = v59;
  [v59 setValue:isa forKey:v33];

  sub_100036DA8();
  v35 = sub_100037058();

  v36 = [v34 valueForKey:v35];

  if (v36)
  {
    sub_100037298();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64[0] = v62;
  v64[1] = v63;
  if (*(&v63 + 1))
  {
    sub_100002590(&qword_10004B050);
    if (swift_dynamicCast())
    {
      v55(v13, v32, v9);

      v37 = sub_100036F48();
      v38 = sub_1000371B8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v13;
        v40 = v9;
        v41 = swift_slowAlloc();
        *&v64[0] = swift_slowAlloc();
        *v41 = 136315394;
        v42 = sub_100036DA8();
        v44 = v43;
        v57(v39, v40);
        v45 = sub_10000BEB8(v42, v44, v64);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        v46 = sub_100037028();
        v48 = v47;

        v49 = sub_10000BEB8(v46, v48, v64);

        *(v41 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v37, v38, "What is saved for this uuid? (uuid=%s) %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v57(v13, v9);
      }

      return;
    }
  }

  else
  {
    sub_100005E5C(v64, &qword_10004B048);
  }

  v50 = sub_100036F48();
  v51 = sub_1000371C8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to save to user defaults...", v52, 2u);
  }
}

uint64_t sub_1000047BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100004800(void *a1, void *a2)
{
  sub_100036DA8();
  v4 = sub_100037058();

  v5 = [a2 valueForKey:v4];

  if (v5)
  {
    sub_100037298();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_100002590(&qword_10004B050);
    v6 = swift_dynamicCast();
    v7 = v9;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_100005E5C(v12, &qword_10004B048);
    v7 = 0;
  }

  *a1 = v7;
}

void sub_100004970(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v38 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v6 = sub_100036F78();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100036FA8();
  isa = v10[-1].isa;
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100036DC8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(NSUserDefaults);
  v18 = sub_100037058();
  v19 = [v17 initWithSuiteName:v18];

  if (v19)
  {
    v35 = v9;
    v36 = v7;
    v37 = v6;
    if (qword_10004ADC8 != -1)
    {
      swift_once();
    }

    v20 = v39;
    v21 = v39 >> 8;
    v34 = qword_10004D288;
    (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v13);
    v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v20 & 1;
    *(v24 + 17) = v21;
    v25 = v41;
    *(v24 + 24) = v40;
    *(v24 + 32) = v25;
    *(v24 + 40) = a5;
    (*(v14 + 32))(v24 + v22, v16, v13);
    *(v24 + v23) = v19;
    aBlock[4] = sub_100004F90;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000047BC;
    aBlock[3] = &unk_100045AA0;
    v26 = _Block_copy(aBlock);

    v27 = v19;
    sub_100036F88();
    v44 = _swiftEmptyArrayStorage;
    sub_100005094(&qword_10004B030, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002590(&qword_10004B038);
    sub_1000050DC(&qword_10004B040, &qword_10004B038);
    v28 = v35;
    v29 = v37;
    sub_1000372A8();
    sub_100037228();
    _Block_release(v26);

    (*(v36 + 8))(v28, v29);
    (*(isa + 1))(v12, v43);
  }

  else
  {
    if (qword_10004ADC0 != -1)
    {
      swift_once();
    }

    v30 = sub_100036F68();
    sub_100002684(v30, qword_10004D270);
    v43 = sub_100036F48();
    v31 = sub_1000371C8();
    if (os_log_type_enabled(v43, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v43, v31, "Failed to initialize rhizome user defaults...", v32, 2u);
    }

    v33 = v43;
  }
}

uint64_t sub_100004EB8()
{
  v1 = sub_100036DC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100004F90()
{
  v1 = *(sub_100036DC8() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16) | (*(v0 + 17) << 8);
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100004158(v5, v3, v4, v0 + v2, v6);
}

uint64_t sub_100005030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005048()
{
  result = qword_10004B058;
  if (!qword_10004B058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004B058);
  }

  return result;
}

uint64_t sub_100005094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000050DC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000023BC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005130(uint64_t a1, int a2)
{
  v4 = sub_100002590(&qword_10004B720);
  __chkstk_darwin(v4 - 8);
  v6 = &v94 - v5;
  v7 = sub_100036DC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v94 - v13;
  __chkstk_darwin(v12);
  v16 = &v94 - v15;
  sub_100005DEC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005E5C(v6, &qword_10004B720);
    if (qword_10004ADC0 != -1)
    {
      swift_once();
    }

    v17 = sub_100036F68();
    sub_100002684(v17, qword_10004D270);
    v18 = sub_100036F48();
    v19 = sub_1000371C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to load layout dictionary because uuid was nil.", v20, 2u);
    }

    return 0;
  }

  LODWORD(v99) = a2;
  v21 = *(v8 + 32);
  v102 = v16;
  v21(v16, v6, v7);
  v22 = objc_allocWithZone(NSUserDefaults);
  v23 = sub_100037058();
  v24 = [v22 initWithSuiteName:v23];

  if (!v24)
  {
    if (qword_10004ADC0 == -1)
    {
LABEL_18:
      v52 = sub_100036F68();
      sub_100002684(v52, qword_10004D270);
      v53 = sub_100036F48();
      v54 = sub_1000371C8();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v102;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed to load rhizome user defaults", v57, 2u);
      }

      (*(v8 + 8))(v56, v7);
      return 0;
    }

LABEL_45:
    swift_once();
    goto LABEL_18;
  }

  v104 = 0;
  if (qword_10004ADC8 != -1)
  {
    swift_once();
  }

  v25 = qword_10004D288;
  v101 = v8;
  v98 = *(v8 + 16);
  v98(v14, v102, v7);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v28 = v7;
  v7 = v27;
  *(v27 + 16) = &v104;
  *(v27 + 24) = v24;
  v29 = v27 + v26;
  v8 = v28;
  (v21)(v29, v14);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100005F80;
  *(v30 + 24) = v7;
  v100 = v7;
  aBlock[4] = sub_100005FF4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004914;
  aBlock[3] = &unk_100045B18;
  v31 = _Block_copy(aBlock);

  v32 = v24;

  dispatch_sync(v25, v31);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
    goto LABEL_45;
  }

  v33 = v104;
  if (!v104)
  {
    v99 = v32;
    v58 = [v32 dictionaryRepresentation];
    sub_100037018();

    v59 = v101;
    if (qword_10004ADC0 != -1)
    {
      swift_once();
    }

    v60 = sub_100036F68();
    sub_100002684(v60, qword_10004D270);
    v61 = v102;
    v98(v11, v102, v8);

    v62 = sub_100036F48();
    v63 = sub_1000371C8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v64 = 136315394;
      v65 = sub_100036DA8();
      v67 = v66;
      v101 = v59[1];
      (v101)(v11, v8);
      v68 = sub_10000BEB8(v65, v67, aBlock);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = sub_100037028();
      v71 = v70;

      v72 = sub_10000BEB8(v69, v71, aBlock);

      *(v64 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to load layout dictionary for uuid %s and defaults was %s", v64, 0x16u);
      swift_arrayDestroy();

      (v101)(v102, v8);
    }

    else
    {

      v91 = v59[1];
      v91(v11, v8);
      v91(v61, v8);
    }

    goto LABEL_41;
  }

  swift_bridgeObjectRetain_n();
  v34 = sub_10001AC78(v33);
  v38 = v101;
  if (!v36)
  {
    if (qword_10004ADC0 != -1)
    {
      swift_once();
    }

    v73 = sub_100036F68();
    sub_100002684(v73, qword_10004D270);

    v74 = sub_100036F48();
    v75 = sub_1000371B8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136315138;
      v78 = sub_100037028();
      v79 = v8;
      v80 = v32;
      v82 = v81;

      v83 = sub_10000BEB8(v78, v82, aBlock);

      *(v76 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to initialize poster layout dict from dictionary %s", v76, 0xCu);
      sub_1000039EC(v77);

      v38[1](v102, v79);
    }

    else
    {

      v38[1](v102, v8);
    }

LABEL_41:

    return 0;
  }

  v39 = v34;
  v96 = v37;
  v97 = v36;
  v98 = v35;
  if (qword_10004ADC0 != -1)
  {
    swift_once();
  }

  v40 = sub_100036F68();
  sub_100002684(v40, qword_10004D270);

  v41 = sub_100036F48();
  v42 = sub_1000371B8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v95 = v8;
    v45 = v32;
    v46 = v44;
    aBlock[0] = v44;
    *v43 = 136315138;
    v47 = sub_100037028();
    v48 = v39;
    v50 = v49;

    v51 = sub_10000BEB8(v47, v50, aBlock);
    v39 = v48;

    *(v43 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "Successfully loaded layout dict %s", v43, 0xCu);
    sub_1000039EC(v46);
    v32 = v45;
    v8 = v95;
    v38 = v101;
  }

  else
  {
  }

  v84 = v99;
  v85 = v102;
  if (v99 == 5)
  {
    v86 = sub_100036F48();
    v87 = sub_1000371B8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      v89 = "Returning existing saved layout because no override colorway was provided";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);

      v90 = v32;
LABEL_39:

      v38[1](v85, v8);

      return v39 & 0xFF01;
    }

    goto LABEL_38;
  }

  if (sub_100030700(v99, HIBYTE(v39)))
  {
    v86 = sub_100036F48();
    v87 = sub_1000371B8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      v89 = "Returning existing loaded layout because override colorway was the same as saved layout colorway.";
      goto LABEL_36;
    }

LABEL_38:
    v90 = v86;
    v86 = v32;
    goto LABEL_39;
  }

  v93 = sub_1000103FC(v84, v39 & 0xFF01, v98, v97);

  v38[1](v85, v8);

  return v93 & 0xFF01;
}

uint64_t sub_100005DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002590(&qword_10004B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005E5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100002590(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005EBC()
{
  v1 = sub_100036DC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100005F80()
{
  sub_100036DC8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_100004800(v1, v2);
}

id sub_100006024@<X0>(const __CTFont *a1@<X0>, __int16 a2@<W1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = a6;
  if (a1)
  {
    v98 = a4;
    v99 = a5;
    v100 = a6;
    v9 = a1;
LABEL_5:
    v97 = a3;
    v15 = a1;
    v16 = sub_100034E54(a2);
    v18 = HIBYTE(v17) & 0xF;
    v108 = v16;
    v109 = v17;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v110 = 0;
    v111 = v18;
    v19 = sub_1000370C8();
    v101 = a2;
    if (v20 == 0.0)
    {
      *&v102 = 0;
      a = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
      height = 0.0;
      goto LABEL_42;
    }

    v22 = v19;
    v23 = v20;
    v24 = 0;
    *&v21 = 0;
    v102 = v21;
    a = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
    height = 0.0;
    while (1)
    {
      v26 = v24;
      while (1)
      {
        v24 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_76;
        }

        *&transform.a = qword_100038B98[a2];
        v112._countAndFlagsBits = sub_100037538();
        *&transform.a = 812872494;
        transform.b = -4.94660803e173;
        sub_1000370B8(v112);

        v28 = *&transform.a;
        b = transform.b;
        *&transform.a = v22;
        transform.b = v23;

        v113._countAndFlagsBits = v28;
        *&v113._object = b;
        sub_1000370B8(v113);

        v30 = sub_100037058();

        GlyphWithName = CTFontGetGlyphWithName(v9, v30);

        CGAffineTransformMakeScale(&v106, 1.0, -1.0);
        transform = v106;
        PathForGlyph = CTFontCreatePathForGlyph(v9, GlyphWithName, 0);
        if (!PathForGlyph)
        {
          goto LABEL_12;
        }

        v33 = PathForGlyph;
        v34 = CGPathCreateCopyByTransformingPath(PathForGlyph, &transform);
        if (v34)
        {
          break;
        }

LABEL_11:

LABEL_12:
        v22 = sub_1000370C8();
        v23 = v27;
        ++v26;
        if (v27 == 0.0)
        {
          goto LABEL_42;
        }
      }

      v35 = v34;
      if (v26 >= 3)
      {
        break;
      }

      if (v26)
      {
        if (v26 == 1)
        {
          if (a2 <= 0x10u && ((1 << a2) & 0x1F000) != 0)
          {

            v36 = 1;
          }

          else
          {
            v37 = sub_100037558();

            if (v37)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }
          }
        }

        else
        {
          v36 = 2;
        }
      }

      else
      {
        v36 = 0;
      }

      PathBoundingBox = CGPathGetPathBoundingBox(v33);
      v38 = v102;
      if (*&v102 <= PathBoundingBox.size.width)
      {
        *&v38 = PathBoundingBox.size.width;
      }

      v102 = v38;
      if (height <= PathBoundingBox.size.height)
      {
        height = PathBoundingBox.size.height;
      }

      v39 = [objc_opt_self() bezierPathWithCGPath:v35];
      if (v39)
      {
        v40 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106.a = a;
        sub_100016954(v40, v36, isUniquelyReferenced_nonNull_native);

        a = v106.a;
      }

      else
      {
        *&v42 = a;
        v43 = sub_10001534C(v36);
        if (v44)
        {
          v45 = v43;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v106.a = a;
          if ((v46 & 1) == 0)
          {
            sub_1000176FC();
            v42 = *&v106.a;
          }

          a = *&v42;
          sub_100006A9C(v45, v42);
        }
      }

      v22 = sub_1000370C8();
      v23 = v47;
      if (v47 == 0.0)
      {
LABEL_42:

        v48 = 1 << *(*&a + 32);
        v49 = -1;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        v50 = v49 & *(*&a + 64);
        v51 = (v48 + 63) >> 6;
        *&v52 = COERCE_DOUBLE();
        v53 = 0;
        v14 = *&v52;
        while (1)
        {
          while (1)
          {
            if (!v50)
            {
              while (1)
              {
                v54 = v53 + 1;
                if (__OFADD__(v53, 1))
                {
                  break;
                }

                if (v54 >= v51)
                {

                  v80 = sub_100034E54(v101);
                  v82 = v81;

                  *&v83 = a7;
                  *(&v83 + 1) = v102;
                  v104 = v83;
                  v84 = v101;
                  v85 = v97;
                  v86 = v97;
                  v87 = v98;
                  v88 = v98;
                  v89 = v99;
                  result = v99;
                  v90 = v104;
                  v8 = v100;
                  goto LABEL_73;
                }

                v50 = *(*&a + 64 + 8 * v54);
                ++v53;
                if (v50)
                {
                  v53 = v54;
                  goto LABEL_52;
                }
              }

              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
            }

LABEL_52:
            v55 = __clz(__rbit64(v50));
            v50 &= v50 - 1;
            v56 = *(*(v52 + 48) + (v55 | (v53 << 6)));
            CGAffineTransformMakeTranslation(&v106, *&v102 * 0.5, height * 0.5);
            transform = v106;
            if (!*(*&v14 + 16))
            {
              goto LABEL_46;
            }

            v57 = sub_10001534C(v56);
            if ((v58 & 1) == 0)
            {
              goto LABEL_46;
            }

            v59 = [*(*(*&v14 + 56) + 8 * v57) CGPath];
            if (!v59)
            {
              goto LABEL_46;
            }

            v60 = v59;
            v61 = CGPathCreateCopyByTransformingPath(v59, &transform);
            if (!v61)
            {

LABEL_46:
              *&v52 = a;
              continue;
            }

            v96 = v61;
            v62 = [objc_opt_self() bezierPathWithCGPath:v61];
            if (v62)
            {
              break;
            }

            v72 = sub_10001534C(v56);
            if (v73)
            {
              v74 = v72;
              v75 = swift_isUniquelyReferenced_nonNull_native();
              v106.a = v14;
              if (!v75)
              {
                sub_1000176FC();
                v14 = v106.a;
              }

              sub_100006A9C(v74, *&v14);
            }

            *&v52 = a;
          }

          v95 = v62;
          v93 = swift_isUniquelyReferenced_nonNull_native();
          v106.a = v14;
          v63 = sub_10001534C(v56);
          v65 = *(*&v14 + 16);
          v66 = (v64 & 1) == 0;
          v67 = __OFADD__(v65, v66);
          v68 = v65 + v66;
          if (v67)
          {
            goto LABEL_77;
          }

          if (*(*&v14 + 24) >= v68)
          {
            v71 = v96;
            if (v93)
            {
              goto LABEL_67;
            }

            v94 = v63;
            v92 = v64;
            sub_1000176FC();
            v64 = v92;
            v63 = v94;
          }

          else
          {
            v91 = v64;
            sub_100015630(v68, v93);
            v63 = sub_10001534C(v56);
            v70 = v69 & 1;
            v64 = v91;
            if ((v91 & 1) != v70)
            {
              *&result = COERCE_DOUBLE(sub_100037578());
              __break(1u);
              return result;
            }
          }

          v71 = v96;
LABEL_67:
          v14 = v106.a;
          if (v64)
          {
            v76 = *(*&v106.a + 56);
            v77 = *(v76 + 8 * v63);
            *(v76 + 8 * v63) = v95;

            *&v52 = a;
          }

          else
          {
            *(*&v106.a + 8 * (v63 >> 6) + 64) |= 1 << v63;
            *(*(*&v14 + 48) + v63) = v56;
            *(*(*&v14 + 56) + 8 * v63) = v95;

            v78 = *(*&v14 + 16);
            v67 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v67)
            {
              goto LABEL_78;
            }

            *(*&v14 + 16) = v79;
            *&v52 = a;
          }
        }
      }
    }

    goto LABEL_11;
  }

  v10 = a3;
  result = [objc_opt_self() rhizomeFontDescriptor];
  v14 = *&result;
  if (*&result != 0.0)
  {
    v98 = a4;
    v99 = a5;
    v100 = v8;
    v9 = [objc_opt_self() fontWithDescriptor:result size:a7];

    a1 = 0;
    a3 = v10;
    goto LABEL_5;
  }

  v85 = 0;
  v87 = 0;
  v89 = 0;
  v80 = 0;
  v82 = 0;
  v84 = 0;
  v90 = 0uLL;
  height = 0.0;
LABEL_73:
  *v8 = v84;
  *(v8 + 8) = v85;
  *(v8 + 16) = v87;
  *(v8 + 24) = v89;
  *(v8 + 32) = v80;
  *(v8 + 40) = v82;
  *(v8 + 48) = v90;
  *(v8 + 64) = height;
  *(v8 + 72) = v14;
  return result;
}

uint64_t sub_100006844()
{
  v8._countAndFlagsBits = sub_100029A7C(*v0, *(v0 + 1));
  v7._countAndFlagsBits = 91;
  v7._object = 0xE100000000000000;
  sub_1000370B8(v8);

  v9._countAndFlagsBits = 2236460;
  v9._object = 0xE300000000000000;
  sub_1000370B8(v9);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v10._countAndFlagsBits = v1;
  v10._object = v2;
  sub_1000370B8(v10);

  sub_1000373A8(22);

  strcpy(&v7, ", pointSize=");
  HIWORD(v7._object) = -4864;
  v11._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v11);

  v12._countAndFlagsBits = 0x3D657A6973202CLL;
  v12._object = 0xE700000000000000;
  sub_1000370B8(v12);

  sub_1000370B8(v7);

  type metadata accessor for CGSize(0);
  v3 = sub_100037078();
  v5 = v4;

  v13._countAndFlagsBits = v3;
  v13._object = v5;
  sub_1000370B8(v13);

  v14._countAndFlagsBits = sub_100037538();
  sub_1000370B8(v14);

  v15._countAndFlagsBits = 93;
  v15._object = 0xE100000000000000;
  sub_1000370B8(v15);

  v16._countAndFlagsBits = 0x3D7368746170202CLL;
  v16._object = 0xE800000000000000;
  sub_1000370B8(v16);

  return 91;
}

Swift::Int sub_100006A9C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000372B8() + 1) & ~v5;
    do
    {
      sub_1000375A8();
      sub_1000370A8();

      result = sub_1000375E8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100006CA0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000372B8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1000375A8();
      sub_1000375B8(v9);
      result = sub_1000375E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100006E34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000372B8() + 1) & ~v5;
    do
    {
      sub_1000375A8();

      sub_1000370A8();
      v9 = sub_1000375E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

__n128 sub_100006FE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100007000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100007048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000070AC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 11;
  if (v1 == 1)
  {
    v2 = 15;
  }

  qword_10004D290 = v2;
}

char *sub_100007118(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10, double a11, char a12, char a13)
{
  *&v132 = a5;
  v18 = a1;
  v19 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView;
  v20 = BYTE1(a1);
  v130 = a1 >> 8;
  *(v13 + v19) = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView;
  *(v13 + v21) = [objc_allocWithZone(UIView) init];
  v22 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView;
  *(v13 + v22) = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay;
  *(v13 + v23) = [objc_allocWithZone(UIView) init];
  v24 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView;
  *(v13 + v24) = [objc_allocWithZone(UIView) init];
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldShowShadows;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldShowShadows) = 1;
  v26 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_renderShadowsSynchronously;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_renderShadowsSynchronously) = 0;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastWakeProgress) = 0x3FF0000000000000;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockProgress) = 0;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockLandingPlace) = 0;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_orientationAfterUnlock) = 1;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldGenerateNewLayout) = 1;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_needsCleaning) = 0;
  v27 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_fadeInTimingFunction;
  *(v13 + v27) = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v28 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_scaleTimingFunction;
  v29 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v30) = 1049918177;
  LODWORD(v31) = 1048911544;
  LODWORD(v32) = 1049247089;
  LODWORD(v33) = 1066359849;
  *(v13 + v28) = [v29 initWithControlPoints:v30 :v31 :v32 :v33];
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD) = 0;
  *(v13 + v26) = a8;
  v127 = a4;
  qword_10004D298 = a4;
  v34 = [objc_opt_self() mainScreen];
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v141.origin.x = v36;
  v141.origin.y = v38;
  v141.size.width = v40;
  v141.size.height = v42;
  Height = CGRectGetHeight(v141);
  v123 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_yMinValueForOverlap;
  *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_yMinValueForOverlap) = Height * a11;
  *(v13 + v25) = a7;
  v44 = (v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout);
  v45 = v18 & 1;
  *v44 = v18 & 1;
  v44[1] = v130;
  *(v44 + 1) = a2;
  *(v44 + 2) = a3;
  *(v44 + 3) = a9;

  LODWORD(v131) = v20;
  v47 = sub_10000C510(v46, v20, a8, a12);
  LODWORD(a4) = *v44;
  v49 = *(v44 + 1);
  v48 = *(v44 + 2);
  v50 = *(v44 + 3);
  LODWORD(v26) = v44[1];
  v51 = objc_opt_self();

  v52 = [v51 currentDevice];
  v53 = [v52 userInterfaceIdiom];

  v54 = a4 | (v26 << 8);
  v55 = v127;
  if (v53 == 1)
  {
    v56 = sub_100011FB4(v127, v54, v50, v49, v48);
  }

  else
  {
    v56 = sub_100012450(v127, v54, v49, v48);
  }

  v60 = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;

  v64 = v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout;
  *v64 = v60 & 1;
  *(v64 + 1) = HIBYTE(v60);
  *(v64 + 8) = v61;
  *(v64 + 16) = v62;
  *(v64 + 24) = v63;
  if ((a13 & 1) == 0)
  {
    v69 = v131;
    v66 = a2;
    goto LABEL_8;
  }

  if (qword_10004ADD0 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v65 = sub_10001EFA4(qword_10004D290, 1, v131, v55, *(v13 + v123));
    a3 = v67;
    a9 = v68;
    v69 = HIBYTE(v65);
    v45 = v65 & 1;
LABEL_8:
    v70 = v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout;
    *v70 = v45;
    *(v70 + 1) = v69;
    *(v70 + 8) = v66;
    *(v70 + 16) = a3;
    *(v70 + 24) = a9;
    *(v13 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_floatingContainerView) = v132;
    v71 = type metadata accessor for RhizomeView();
    v140.receiver = v13;
    v140.super_class = v71;
    v122 = v132;
    v72 = objc_msgSendSuper2(&v140, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 blackColor];
    [v74 setBackgroundColor:v75];

    v76 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView;
    p_align = &stru_100048FE8.align;
    [v74 addSubview:*&v74[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView]];
    v126 = v76;
    v78 = *&v74[v76];
    v79 = [v73 blackColor];
    [v78 setBackgroundColor:v79];

    v123 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView;
    v80 = *&v74[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView];
    v81 = [v73 clearColor];
    [v80 setBackgroundColor:v81];

    v120 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView;
    v82 = *&v74[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView];
    v121 = v73;
    v83 = [v73 clearColor];
    [v82 setBackgroundColor:v83];

    if (v47 >> 62)
    {
      goto LABEL_54;
    }

    v84 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
LABEL_10:
      v85 = 0;
      v136 = v47 & 0xC000000000000001;
      v86 = v47 & 0xFFFFFFFFFFFFFF8;
      v134 = v47;
      do
      {
        if (v136)
        {
          v87 = sub_1000373C8();
        }

        else
        {
          if (v85 >= *(v86 + 16))
          {
            goto LABEL_53;
          }

          v87 = *(v47 + 8 * v85 + 32);
        }

        v88 = v87;
        v89 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v84 = sub_1000374A8();
          if (!v84)
          {
            break;
          }

          goto LABEL_10;
        }

        v90 = p_align;
        v91 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet;
        if (v87[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle])
        {
          v91 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet;
        }

        if (*&v87[*v91])
        {

          [v88 bounds];
          [v88 setBounds:?];
        }

        else
        {
          [v87 setBounds:{0.0, 0.0, 0.0, 0.0}];
        }

        v92 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec;
        v93 = *&v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec];
        v94 = 0.0;
        v95 = 0.0;
        if (v93)
        {
          v95 = *(v93 + 104);
        }

        CGAffineTransformMakeRotation(&transform, v95);
        v96 = *&transform.a;
        v97 = *&transform.c;
        v98 = *&transform.tx;
        if (qword_10004D298 > 2)
        {
          if (qword_10004D298 == 3)
          {
            v94 = 1.57079633;
            goto LABEL_37;
          }

          if (qword_10004D298 != 4)
          {
LABEL_35:
            v94 = 1.0;
            goto LABEL_37;
          }

          v131 = *&transform.c;
          v132 = *&transform.a;
          v129 = *&transform.tx;
          v100 = CLKFloatEqualsFloat();
          v98 = v129;
          v97 = v131;
          v96 = v132;
          if (v100)
          {
            v94 = -1.57079633;
          }

          else
          {
            v94 = 4.71238898;
          }
        }

        else if (qword_10004D298 != 1)
        {
          if (qword_10004D298 != 2)
          {
            goto LABEL_35;
          }

          v131 = *&transform.c;
          v132 = *&transform.a;
          v128 = *&transform.tx;
          v99 = CLKFloatEqualsFloat();
          v98 = v128;
          v97 = v131;
          v96 = v132;
          if (v99)
          {
            v94 = -3.14159265;
          }

          else
          {
            v94 = 3.14159265;
          }
        }

LABEL_37:
        *&transform.a = v96;
        *&transform.c = v97;
        *&transform.tx = v98;
        CGAffineTransformRotate(&v138, &transform, v94);
        tx = v138.tx;
        ty = v138.ty;
        v103 = type metadata accessor for RhizomeLayeredFlowerView();
        v137.receiver = v88;
        v137.super_class = v103;
        *&transform.a = *&v138.a;
        *&transform.c = *&v138.c;
        transform.tx = tx;
        transform.ty = ty;
        objc_msgSendSuper2(&v137, "setTransform:", &transform);
        v104 = *&v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
        if (v104 && *(v104 + 24) == 1 && *(v104 + 120) == 1)
        {

          [v88 transform];
          CGAffineTransformDecompose(&v138, &transform);
          v105 = 3.0;
          if (*(v104 + 48))
          {
            v105 = 1.5;
          }

          v106 = v105 / v138.a;
          [*(v104 + 56) setLineWidth:v105 / v138.a];
          [*(v104 + 64) setLineWidth:v106];
          [*(v104 + 72) setLineWidth:v106];
        }

        v107 = *&v88[v92];
        if (v107 && *(v107 + 128) == 1 && (a6 & 1) != 0)
        {
          p_align = v90;
          [*&v74[v123] *(v90 + 478)];
          v47 = v134;
          if (v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] == (a7 & 1))
          {
            goto LABEL_12;
          }

          v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = a7 & 1;
          if ((a7 & 1) == 0)
          {
            [*&v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] removeFromSuperview];
            goto LABEL_12;
          }
        }

        else
        {
          p_align = v90;
          [*&v74[v126] *(v90 + 478)];
          v47 = v134;
          if (v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows])
          {
            goto LABEL_12;
          }

          v88[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = 1;
        }

        sub_10000E8E0();
LABEL_12:

        ++v85;
      }

      while (v89 != v84);
    }

    v108 = v122;
    [v122 *(p_align + 478)];
    v109 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay;
    v110 = *&v74[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay];
    v111 = [v121 blackColor];
    [v110 setBackgroundColor:v111];

    [*&v74[v109] setAlpha:0.0];
    [v122 *(p_align + 478)];
    if ((a13 & 1) == 0)
    {
      goto LABEL_71;
    }

    v112 = v74[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 1];

    v13 = sub_10000C510(v113, v112, 0, 0);

    if (v13 >> 62)
    {
      break;
    }

    v47 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v47)
    {
      goto LABEL_70;
    }

LABEL_58:
    v114 = 0;
    v55 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v115 = sub_1000373C8();
      }

      else
      {
        if (v114 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v115 = *(v13 + 8 * v114 + 32);
      }

      v116 = v115;
      v117 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      *&transform.a = v115;
      sub_100007CF8(&transform, v74, a6 & 1);

      ++v114;
      if (v117 == v47)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v47 = sub_1000374A8();
  if (v47)
  {
    goto LABEL_58;
  }

LABEL_70:

  v108 = v122;
LABEL_71:
  [v108 *(p_align + 478)];
  v118 = *&v74[v120];
  [v108 *(p_align + 478)];

  return v74;
}

id sub_100007CF8(void **a1, uint64_t a2, char a3)
{
  v5 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows))
  {
    v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = 0;
    [*&v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] removeFromSuperview];
  }

  v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shouldEnableBlurs] = 0;
  v6 = v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle];
  v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle] = 1;
  if ((v6 & 1) == 0)
  {
    sub_10000EA40();
    sub_10000E8E0();
  }

  v7 = 0.0;
  [v5 setAlpha:0.0];
  v8 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec;
  v9 = *&v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec];
  v10 = 0.0;
  if (v9)
  {
    v10 = *(v9 + 104);
  }

  CGAffineTransformMakeRotation(&v29, v10);
  v11 = *&v29.a;
  v12 = *&v29.c;
  v13 = *&v29.tx;
  if (qword_10004D298 > 2)
  {
    if (qword_10004D298 == 3)
    {
      v7 = 1.57079633;
      goto LABEL_20;
    }

    if (qword_10004D298 == 4)
    {
      v25 = *&v29.c;
      v26 = *&v29.a;
      v24 = *&v29.tx;
      v18 = CLKFloatEqualsFloat();
      v13 = v24;
      v15 = v18 == 0;
      v16 = 4.71238898;
      v17 = -1.57079633;
      goto LABEL_14;
    }

LABEL_18:
    v7 = 1.0;
    goto LABEL_20;
  }

  if (qword_10004D298 == 1)
  {
    goto LABEL_20;
  }

  if (qword_10004D298 != 2)
  {
    goto LABEL_18;
  }

  v25 = *&v29.c;
  v26 = *&v29.a;
  v24 = *&v29.tx;
  v14 = CLKFloatEqualsFloat();
  v13 = v24;
  v15 = v14 == 0;
  v16 = 3.14159265;
  v17 = -3.14159265;
LABEL_14:
  if (v15)
  {
    v7 = v16;
  }

  else
  {
    v7 = v17;
  }

  v12 = v25;
  v11 = v26;
LABEL_20:
  *&v29.a = v11;
  *&v29.c = v12;
  *&v29.tx = v13;
  CGAffineTransformRotate(&v28, &v29, v7);
  tx = v28.tx;
  ty = v28.ty;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for RhizomeLayeredFlowerView();
  *&v29.a = *&v28.a;
  *&v29.c = *&v28.c;
  v29.tx = tx;
  v29.ty = ty;
  objc_msgSendSuper2(&v27, "setTransform:", &v29);
  if (*&v5[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet])
  {

    sub_10003411C(v5);
  }

  v21 = *&v5[v8];
  if (v21 && *(v21 + 128) == 1 && (a3 & 1) != 0)
  {
    v22 = &OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView;
  }

  else
  {
    v22 = &OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView;
  }

  return [*(a2 + *v22) addSubview:{v5, v24}];
}

void sub_100007F60()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for RhizomeView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView;
  v3 = *&v0[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView];
  [v0 bounds];
  [v3 setBounds:?];

  v4 = *&v0[v2];
  [v0 bounds];
  v5 = CGRectGetWidth(v11) * 0.5;
  [v0 bounds];
  [v4 setCenter:{v5, CGRectGetHeight(v12) * 0.5}];

  v6 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView;
  v7 = *&v0[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView];
  [v0 bounds];
  [v7 setBounds:?];

  v8 = *&v0[v6];
  [v0 bounds];
  v9 = CGRectGetWidth(v13) * 0.5;
  [v0 bounds];
  [v8 setCenter:{v9, CGRectGetHeight(v14) * 0.5}];
}

uint64_t sub_100008124()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView) subviews];
  sub_10000CBCC();
  v2 = sub_100037108();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000374A8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000373C8();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v8 = [*(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView) subviews];
  v9 = sub_100037108();

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1000374A8())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000373C8();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 removeFromSuperview];

      ++v11;
      if (v14 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v15 = (v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout);
  v16 = *(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 1);

  v18 = sub_10000C510(v17, v16, 0, 0);

  v19 = *v15;
  v21 = *(v15 + 1);
  v20 = *(v15 + 2);
  v22 = *(v15 + 3);
  v23 = qword_10004D298;
  v24 = v15[1];
  v25 = objc_opt_self();

  v26 = [v25 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v28 = v19 | (v24 << 8);
  if (v27 == 1)
  {
    v29 = sub_100011FB4(v23, v28, v22, v21, v20);
  }

  else
  {
    v29 = sub_100012450(v23, v28, v21, v20);
  }

  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;

  v37 = v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout;
  *v37 = v33 & 1;
  *(v37 + 1) = HIBYTE(v33);
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;

  p_align = &stru_100048FE8.align;
  if (v18 >> 62)
  {
    goto LABEL_43;
  }

  for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_1000374A8())
  {
    v40 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v41 = sub_1000373C8();
      }

      else
      {
        if (v40 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v41 = *(v18 + 8 * v40 + 32);
      }

      v42 = v41;
      p_align = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v87 = v41;
      sub_100009498(&v87, v86);

      ++v40;
      v43 = p_align == k;
      p_align = (&stru_100048FE8 + 24);
      if (v43)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_44:

  v85 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView;
  v44 = [*(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView) subviews];
  v45 = sub_100037108();

  if (v45 >> 62)
  {
    goto LABEL_56;
  }

  for (m = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_1000374A8())
  {
    v47 = 0;
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = sub_1000373C8();
      }

      else
      {
        if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      [v48 *(p_align + 481)];

      ++v47;
      if (v50 == m)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:

  v84 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView;
  v51 = [*(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView) subviews];
  v52 = sub_100037108();

  if (v52 >> 62)
  {
    goto LABEL_69;
  }

  for (n = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_1000374A8())
  {
    v54 = 0;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v55 = sub_1000373C8();
      }

      else
      {
        if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v55 = *(v52 + 8 * v54 + 32);
      }

      v56 = v55;
      v57 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      [v55 *(p_align + 481)];

      ++v54;
      if (v57 == n)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

LABEL_70:

  v58 = v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout;
  v59 = *(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 8);
  v60 = *(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 16);
  v61 = *(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout) | (*(v86 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 1) << 8);
  v62 = v15[1];

  LOWORD(v59) = sub_1000103FC(v62, v61, v59, v60);
  v64 = v63;
  v66 = v65;
  v68 = v67;

  *v58 = v59 & 1;
  *(v58 + 1) = BYTE1(v59);
  *(v58 + 8) = v64;
  *(v58 + 16) = v66;
  *(v58 + 24) = v68;

  v69 = *(v58 + 16);
  if (v69 >> 62)
  {
    goto LABEL_102;
  }

  for (ii = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); ; ii = sub_1000374A8())
  {

    if (ii)
    {
      v71 = 0;
      do
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          sub_1000373C8();
          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
LABEL_81:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_100;
          }

          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_81;
          }
        }

        swift_unknownObjectWeakAssign();

        ++v71;
      }

      while (v72 != ii);
    }

    v69 = *(v58 + 16);
    v73 = *(v58 + 1);

    v75 = sub_10000C510(v74, v73, 0, 0);

    if (v75 >> 62)
    {
      break;
    }

    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v76)
    {
      goto LABEL_104;
    }

LABEL_84:
    v77 = 0;
    while (1)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v79 = sub_1000373C8();
      }

      else
      {
        if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v79 = *(v75 + 8 * v77 + 32);
      }

      v69 = v79;
      v58 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v79[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows])
      {
        v79[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = 0;
        [*&v79[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] removeFromSuperview];
      }

      v80 = *(v69 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle);
      *(v69 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle) = 1;
      if ((v80 & 1) == 0)
      {
        sub_10000EA40();
        sub_10000E8E0();
      }

      [v69 setAlpha:0.0];
      v81 = *(v69 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec);
      if (v81 && *(v81 + 128) == 1)
      {
        v82 = *(v86 + v84);

        v78 = v82;
        [v78 addSubview:v69];
      }

      else
      {
        v78 = *(v86 + v85);
        [v78 addSubview:v69];
      }

      ++v77;
      if (v58 == v76)
      {
        goto LABEL_104;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    ;
  }

  v76 = sub_1000374A8();
  if (v76)
  {
    goto LABEL_84;
  }

LABEL_104:
}

double sub_100008988(double a1, uint64_t a2, char a3)
{
  if (sub_100036EF8())
  {
    v6 = sub_100036F28();
  }

  else
  {
    v6 = 0;
  }

  sub_100036F08();
  sub_10000CB78();
  sub_100037038();
  v7 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastWakeProgress;
  v8 = *(v3 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastWakeProgress);
  sub_100036F08();
  sub_100037038();
  if (v10 != *(v3 + v7))
  {
    if (v6 & 1 | (v10 < v8))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_100036F08();
  sub_100037038();
  if (!(v6 & 1 | (v10 < v8)) && v10 >= 1.0)
  {
LABEL_7:
    sub_100008B14(a3 & 1, a1);
  }

LABEL_8:
  sub_100009748();
  sub_100036F08();
  sub_100037038();
  result = v10;
  *(v3 + v7) = v10;
  return result;
}

void sub_100008B14(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockProgress;
  if (*&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockProgress] != a2)
  {
    v5 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16];
    if (v5 >> 62)
    {
      goto LABEL_52;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v24 = v4;
        v25 = a1;
        v32 = &v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout];
        v26 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_fadeInTimingFunction;
        v27 = v2;
        v2 = (v5 & 0xC000000000000001);
        v28 = v5 & 0xFFFFFFFFFFFFFF8;

        v8 = 0;
        v30 = v6;
        v31 = v5;
        v29 = v5 & 0xC000000000000001;
        while (1)
        {
LABEL_7:
          if (v2)
          {
            LOBYTE(a1) = sub_1000373C8();
            v9 = __OFADD__(v8++, 1);
            if (v9)
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v8 >= *(v28 + 16))
            {
              goto LABEL_51;
            }

            v9 = __OFADD__(v8++, 1);
            if (v9)
            {
              goto LABEL_50;
            }
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

LABEL_6:

          if (v8 == v6)
          {
LABEL_35:

            LOBYTE(a1) = v25;
            v2 = v27;
            v4 = v24;
            goto LABEL_36;
          }
        }

        v11 = *(v32 + 2);
        if (!(v11 >> 62))
        {
          break;
        }

        v20 = Strong;
        v12 = sub_1000374A8();
        Strong = v20;
        if (!v12)
        {
          goto LABEL_5;
        }

LABEL_16:
        if ((v11 & 0xC000000000000001) == 0)
        {
          v2 = Strong;
          v13 = Strong;

          v4 = 0;
          while (1)
          {
            if (v4 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v5 = *(v11 + 8 * v4 + 32);
            a1 = swift_unknownObjectWeakLoadStrong();
            if (a1)
            {
              v19 = a1;

              if (v19 == v13)
              {
LABEL_22:

                v7 = a2;
                *&v17 = v7;
                [*&v27[v26] _solveForInput:v17];
                v18 = v2;
                CLKInterpolateBetweenPoints();
                [v18 setCenter:?];

                goto LABEL_31;
              }
            }

            if (v12 == ++v4)
            {

LABEL_31:
              v6 = v30;
              v5 = v31;
              v2 = v29;
              if (v8 != v30)
              {
                goto LABEL_7;
              }

              goto LABEL_35;
            }
          }
        }

        v2 = Strong;
        v13 = Strong;

        v14 = 0;
        while (1)
        {
          a1 = sub_1000373C8();
          v4 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v5 = a1;
          v15 = swift_unknownObjectWeakLoadStrong();
          if (v15)
          {
            v16 = v15;

            if (v16 == v13)
            {
              goto LABEL_22;
            }
          }

          swift_unknownObjectRelease();
          ++v14;
          if (v4 == v12)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v23 = a1;
        v6 = sub_1000374A8();
        LOBYTE(a1) = v23;
        if (!v6)
        {
          goto LABEL_36;
        }
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_16;
      }

LABEL_5:

      goto LABEL_6;
    }

LABEL_36:
    *&v2[v4] = a2;
    if ((a2 == 1.0 || a2 == 0.0) && *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockLandingPlace] != a2)
    {
      *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockLandingPlace] = a2;
    }

    if ((a1 & 1) == 0)
    {
      v21 = [objc_opt_self() currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (!v22)
      {
        sub_100008F5C(a2);
      }
    }

    if (a2 == 1.0)
    {
      *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_orientationAfterUnlock] = qword_10004D298;
    }

    if (a2 == 0.0)
    {
      *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_orientationAfterUnlock] = qword_10004D298;
    }
  }
}

void sub_100008F5C(double a1)
{
  v2 = v1;
  if (a1 == 1.0 && v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldGenerateNewLayout] == 1)
  {
    v62 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldGenerateNewLayout;
    v3 = a1;
    v4 = &v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
    v5 = v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
    v6 = *&v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 8];
    v7 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16];
    v8 = v5 | (v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 1] << 8);

    v58 = sub_10001083C(v8, v6, v7);
    v61 = v9;
    v11 = v10;
    v13 = v12;

    v14 = sub_10000C510(v11, v4[1], 0, 0);
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000374A8())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = sub_1000373C8();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v64 = v18;
        sub_100009498(&v64, v2);

        ++v17;
        if (v20 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    *v4 = v58 & 1;
    v4[1] = HIBYTE(v58);
    *(v4 + 1) = v61;
    *(v4 + 2) = v11;
    *(v4 + 3) = v13;

    v2[v62] = 0;
    v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_needsCleaning] = 1;
    a1 = v3;
  }

  if (a1 == 0.0)
  {
    v21 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_needsCleaning;
    if (v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_needsCleaning] == 1)
    {
      v22 = &v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
      v60 = v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
      v23 = v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 1];
      v24 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 8];
      v25 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16];

      [v2 bounds];
      v27 = v26;
      v64 = _swiftEmptyArrayStorage;
      if (v25 >> 62)
      {
        v28 = sub_1000374A8();
      }

      else
      {
        v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v21;
      v59 = v23;
      if (v28)
      {
        if (v28 < 1)
        {
          __break(1u);
          return;
        }

        v29 = 0;
        v30 = _swiftEmptyArrayStorage;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v31 = sub_1000373C8();
          }

          else
          {
            v31 = *(v25 + 8 * v29 + 32);
          }

          if (*(v31 + 144) + *(v31 + 64) * -0.5 <= v27)
          {

            sub_1000370E8();
            if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100037128();
            }

            sub_100037148();

            v30 = v64;
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v33 = Strong;
              [v33 removeFromSuperview];
            }
          }

          ++v29;
        }

        while (v28 != v29);
      }

      else
      {
        v30 = _swiftEmptyArrayStorage;
      }

      v34 = [objc_opt_self() mainScreen];
      [v34 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v66.origin.x = v36;
      v66.origin.y = v38;
      v66.size.width = v40;
      v66.size.height = v42;
      Height = CGRectGetHeight(v66);

      *v22 = v60;
      v22[1] = v59;
      v44 = Height / 5.0;
      *(v22 + 1) = v24;
      *(v22 + 2) = v30;
      *(v22 + 3) = v44;

      v45 = qword_10004D298;
      v46 = [objc_opt_self() currentDevice];
      v47 = [v46 userInterfaceIdiom];

      v48 = v60 | (v59 << 8);
      if (v47 == 1)
      {
        v49 = sub_100011FB4(v45, v48, v44, v24, v30);
      }

      else
      {
        v49 = sub_100012450(v45, v48, v24, v30);
      }

      v53 = v49;
      v54 = v50;
      v55 = v51;
      v56 = v52;

      v57 = &v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout];
      *v57 = v53 & 1;
      v57[1] = HIBYTE(v53);
      *(v57 + 1) = v54;
      *(v57 + 2) = v55;
      *(v57 + 3) = v56;

      v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldGenerateNewLayout] = 1;
      v2[v63] = 0;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000293B0(v2);

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_100009498(void **a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldShowShadows);
  v4 = *a1;
  if (v3 != *(*a1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows))
  {
    v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = v3;
    if (v3)
    {
      sub_10000E8E0();
    }

    else
    {
      [*&v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] removeFromSuperview];
    }
  }

  if (v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle])
  {
    v5 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet;
  }

  else
  {
    v5 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet;
  }

  if (*&v4[*v5])
  {

    [v4 bounds];
    [v4 setBounds:?];
  }

  else
  {
    [v4 setBounds:{0.0, 0.0, 0.0, 0.0}];
  }

  v6 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec;
  v7 = *&v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec];
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v9 = *(v7 + 104);
  }

  CGAffineTransformMakeRotation(&v28, v9);
  v10 = *&v28.a;
  v11 = *&v28.c;
  v12 = *&v28.tx;
  if (qword_10004D298 > 2)
  {
    if (qword_10004D298 == 3)
    {
      v8 = 1.57079633;
      goto LABEL_26;
    }

    if (qword_10004D298 == 4)
    {
      v24 = *&v28.c;
      v25 = *&v28.a;
      v23 = *&v28.tx;
      v17 = CLKFloatEqualsFloat();
      v12 = v23;
      v14 = v17 == 0;
      v15 = 4.71238898;
      v16 = -1.57079633;
      goto LABEL_20;
    }

LABEL_24:
    v8 = 1.0;
    goto LABEL_26;
  }

  if (qword_10004D298 == 1)
  {
    goto LABEL_26;
  }

  if (qword_10004D298 != 2)
  {
    goto LABEL_24;
  }

  v24 = *&v28.c;
  v25 = *&v28.a;
  v23 = *&v28.tx;
  v13 = CLKFloatEqualsFloat();
  v12 = v23;
  v14 = v13 == 0;
  v15 = 3.14159265;
  v16 = -3.14159265;
LABEL_20:
  if (v14)
  {
    v8 = v15;
  }

  else
  {
    v8 = v16;
  }

  v11 = v24;
  v10 = v25;
LABEL_26:
  *&v28.a = v10;
  *&v28.c = v11;
  *&v28.tx = v12;
  CGAffineTransformRotate(&v27, &v28, v8);
  tx = v27.tx;
  ty = v27.ty;
  v26.receiver = v4;
  v26.super_class = type metadata accessor for RhizomeLayeredFlowerView();
  *&v28.a = *&v27.a;
  *&v28.c = *&v27.c;
  v28.tx = tx;
  v28.ty = ty;
  objc_msgSendSuper2(&v26, "setTransform:", &v28);
  if (*&v4[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet])
  {

    sub_10003411C(v4);
  }

  v20 = *&v4[v6];
  if (v20 && (*(v20 + 128) & 1) != 0)
  {
    v21 = &OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView;
  }

  else
  {
    v21 = &OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView;
  }

  return [*(a2 + *v21) addSubview:{v4, v23}];
}

uint64_t sub_100009748()
{
  sub_100036F08();
  sub_10000CB78();
  sub_100037038();
  v1 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastWakeProgress;
  if (v5 >= *(v0 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastWakeProgress) || (v2 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD, (*(v0 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD) & 1) != 0))
  {
    sub_100036F08();
    sub_100037038();
    if (*(v0 + v1) < v5 && (v3 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD, *(v0 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD) == 1))
    {
      sub_10000A808();
      sub_100036F08();
      result = sub_100037038();
      if (v5 > 0.99 && *(v0 + v3) == 1)
      {
        return sub_10000AC18();
      }
    }

    else
    {
      sub_100036F08();
      result = sub_100037038();
      if (*(v0 + v1) < v5)
      {
        return sub_100009914();
      }
    }
  }

  else
  {
    sub_100009914();
    sub_100036F08();
    result = sub_100037038();
    if (v5 < 0.01 && (*(v0 + v2) & 1) == 0)
    {
      return sub_10000A0F8();
    }
  }

  return result;
}

uint64_t sub_100009914()
{
  v1 = v0;
  sub_100036F08();
  v98.a = v2;
  sub_10000CB78();
  sub_100037038();
  CLKInterpolateBetweenFloatsClipped();
  [*&v0[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay] setAlpha:?];
  CLKInterpolateBetweenFloatsClipped();
  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView];
  CGAffineTransformMakeScale(&v98, v3, v3);
  [v5 setTransform:&v98];
  v6 = *&v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView];
  CGAffineTransformMakeScale(&v98, v4, v4);
  result = [v6 setTransform:&v98];
  v8 = *&v1[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 16];
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_1000374A8();
  if (result < 0)
  {
    __break(1u);
  }

  v9 = result;
  if (result)
  {
LABEL_3:
    v10 = 0.15 / v9;

    v11 = 0;
    v12 = 0.55;
    v13 = 0.4;
    v14 = 15.0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = sub_1000373C8();
      }

      else
      {
        v16 = *(v8 + 8 * v11 + 32);
      }

      v12 = fmax(v12 - v10, v13);
      v17 = v16[17];
      v18 = v16[18];
      [v1 center];
      if (v17 >= v19)
      {
        v20 = v14;
      }

      else
      {
        v20 = -15.0;
      }

      v21 = v17 + v20;
      [v1 center];
      if (v18 >= v22)
      {
        v23 = v14;
      }

      else
      {
        v23 = -15.0;
      }

      v24 = v18 + v23;
      v26 = v16[17];
      v25 = v16[18];
      sub_100036F08();
      v98.a = v27;
      sub_100037038();
      if (v12 < v97.a)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v29 = Strong;
          [Strong setAlpha:0.0];
        }

        CGAffineTransformMakeRotation(&v98, v16[13]);
        v30 = *&v98.a;
        v31 = *&v98.c;
        v32 = *&v98.tx;
        if (qword_10004D298 > 2)
        {
          if (qword_10004D298 == 3)
          {
            v34 = 1.57079633;
            goto LABEL_57;
          }

          if (qword_10004D298 == 4)
          {
            v81 = *&v98.c;
            v90 = *&v98.a;
            v75 = *&v98.tx;
            v41 = CLKFloatEqualsFloat();
            v32 = v75;
            v34 = -1.57079633;
            if (!v41)
            {
              v34 = 4.71238898;
            }

            v31 = v81;
            v30 = v90;
LABEL_57:
            *&v98.a = v30;
            *&v98.c = v31;
            *&v98.tx = v32;
            CGAffineTransformRotate(&v97, &v98, v34);
            v98 = v97;
            CGAffineTransformScale(&v97, &v98, 1.5, 1.5);
            v85 = *&v97.c;
            v94 = *&v97.a;
            tx = v97.tx;
            ty = v97.ty;
            v60 = swift_unknownObjectWeakLoadStrong();
            if (v60)
            {
              *&v98.a = v94;
              *&v98.c = v85;
              v98.tx = tx;
              v98.ty = ty;
              v61 = v60;
              [v60 setTransform:&v98];
            }

            v62 = swift_unknownObjectWeakLoadStrong();
            if (!v62)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (qword_10004D298 == 1)
          {
            v34 = 0.0;
            goto LABEL_57;
          }

          if (qword_10004D298 == 2)
          {
            v79 = *&v98.c;
            v88 = *&v98.a;
            v73 = *&v98.tx;
            v33 = CLKFloatEqualsFloat();
            v32 = v73;
            v34 = 3.14159265;
            if (v33)
            {
              v34 = -3.14159265;
            }

            v31 = v79;
            v30 = v88;
            goto LABEL_57;
          }
        }

        v34 = 1.0;
        goto LABEL_57;
      }

      sub_100036F08();
      v98.a = v35;
      sub_100037038();
      if (v97.a < v12 + -0.4)
      {
        CGAffineTransformMakeRotation(&v98, v16[13]);
        v36 = *&v98.a;
        v37 = *&v98.c;
        v38 = *&v98.tx;
        if (qword_10004D298 > 2)
        {
          if (qword_10004D298 != 3)
          {
            if (qword_10004D298 == 4)
            {
              v83 = *&v98.c;
              v92 = *&v98.a;
              v77 = *&v98.tx;
              v56 = CLKFloatEqualsFloat();
              v38 = v77;
              v40 = -1.57079633;
              if (!v56)
              {
                v40 = 4.71238898;
              }

              v37 = v83;
              v36 = v92;
              goto LABEL_66;
            }

            goto LABEL_61;
          }

          v40 = 1.57079633;
        }

        else if (qword_10004D298 == 1)
        {
          v40 = 0.0;
        }

        else
        {
          if (qword_10004D298 == 2)
          {
            v80 = *&v98.c;
            v89 = *&v98.a;
            v74 = *&v98.tx;
            v39 = CLKFloatEqualsFloat();
            v38 = v74;
            v40 = 3.14159265;
            if (v39)
            {
              v40 = -3.14159265;
            }

            v37 = v80;
            v36 = v89;
            goto LABEL_66;
          }

LABEL_61:
          v40 = 1.0;
        }

LABEL_66:
        *&v98.a = v36;
        *&v98.c = v37;
        *&v98.tx = v38;
        CGAffineTransformRotate(&v97, &v98, v40);
        v98 = v97;
        CGAffineTransformScale(&v97, &v98, 0.8, 0.8);
        v86 = *&v97.c;
        v95 = *&v97.a;
        v63 = v97.tx;
        v64 = v97.ty;
        v65 = swift_unknownObjectWeakLoadStrong();
        if (v65)
        {
          v66 = v65;
          [v65 setAlpha:1.0];
        }

        v67 = swift_unknownObjectWeakLoadStrong();
        if (v67)
        {
          *&v98.a = v95;
          *&v98.c = v86;
          v98.tx = v63;
          v98.ty = v64;
          v68 = v67;
          [v67 setTransform:&v98];
        }

        v62 = swift_unknownObjectWeakLoadStrong();
        if (!v62)
        {
          goto LABEL_5;
        }

        v21 = v26;
        v24 = v25;
        goto LABEL_4;
      }

      sub_100036F08();
      v98.a = v42;
      sub_100037038();
      v43 = v13;
      v44 = (v12 - v97.a) / v13;
      CLKInterpolateBetweenFloatsClipped();
      v46 = v45;
      CLKInterpolateBetweenFloatsClipped();
      v21 = v47;
      CLKInterpolateBetweenFloatsClipped();
      v24 = v48;
      v49 = swift_unknownObjectWeakLoadStrong();
      if (v49)
      {
        v50 = v49;
        [v49 setAlpha:v44];
      }

      CGAffineTransformMakeRotation(&v98, v16[13]);
      v51 = *&v98.a;
      v52 = *&v98.c;
      v53 = *&v98.tx;
      if (qword_10004D298 > 2)
      {
        v13 = v43;
        if (qword_10004D298 == 3)
        {
          v55 = 1.57079633;
          goto LABEL_73;
        }

        v14 = 15.0;
        if (qword_10004D298 != 4)
        {
LABEL_62:
          v55 = 1.0;
          goto LABEL_74;
        }

        v84 = *&v98.c;
        v93 = *&v98.a;
        v78 = *&v98.tx;
        v57 = CLKFloatEqualsFloat();
        v53 = v78;
        v55 = -1.57079633;
        if (!v57)
        {
          v55 = 4.71238898;
        }

        v52 = v84;
        v51 = v93;
      }

      else
      {
        v13 = v43;
        if (qword_10004D298 == 1)
        {
          v55 = 0.0;
LABEL_73:
          v14 = 15.0;
          goto LABEL_74;
        }

        v14 = 15.0;
        if (qword_10004D298 != 2)
        {
          goto LABEL_62;
        }

        v82 = *&v98.c;
        v91 = *&v98.a;
        v76 = *&v98.tx;
        v54 = CLKFloatEqualsFloat();
        v53 = v76;
        v55 = 3.14159265;
        if (v54)
        {
          v55 = -3.14159265;
        }

        v52 = v82;
        v51 = v91;
      }

LABEL_74:
      *&v98.a = v51;
      *&v98.c = v52;
      *&v98.tx = v53;
      CGAffineTransformRotate(&v97, &v98, v55);
      v98 = v97;
      CGAffineTransformScale(&v97, &v98, v46, v46);
      v87 = *&v97.c;
      v96 = *&v97.a;
      v69 = v97.tx;
      v70 = v97.ty;
      v71 = swift_unknownObjectWeakLoadStrong();
      if (v71)
      {
        *&v98.a = v96;
        *&v98.c = v87;
        v98.tx = v69;
        v98.ty = v70;
        v72 = v71;
        [v71 setTransform:&v98];
      }

      v62 = swift_unknownObjectWeakLoadStrong();
      v10 = 0.15 / v9;
      if (!v62)
      {
        goto LABEL_5;
      }

LABEL_4:
      v15 = v62;
      [v62 setCenter:{v21, v24}];

LABEL_5:
      ++v11;

      if (v9 == v11)
      {
      }
    }
  }

  return result;
}

uint64_t sub_10000A0F8()
{
  v5 = v1;
  if (qword_10004ADB8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v6 = sub_100036F68();
  sub_100002684(v6, qword_10004D258);
  v7 = sub_100036F48();
  v8 = sub_1000371D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Finished transition into AOD", v9, 2u);
  }

  v10 = v5 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout;
  v11 = *(v5 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16);
  if (v11 >> 62)
  {
    v65 = sub_1000374A8();
    if ((v65 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_51;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  p_align = &stru_100048FE8.align;
  if (v12)
  {
LABEL_6:
    v0 = (v11 & 0xC000000000000001);

    v14 = 0;
    do
    {
      if (v0)
      {
        sub_1000373C8();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        [v2 *(p_align + 481)];
      }

      ++v14;
    }

    while (v12 != v14);

    goto LABEL_14;
  }

  while (1)
  {
LABEL_14:
    v3 = v5 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout;
    v11 = *(v5 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextScreenLayout + 16);
    if (v11 >> 62)
    {
LABEL_51:
      v66 = sub_1000374A8();
      if (v66 < 0)
      {
        __break(1u);
LABEL_53:
        swift_once();
        goto LABEL_29;
      }

      v16 = v66;
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      break;
    }

LABEL_25:
    v67 = v5;

    v19 = *v3;
    v21 = *(v3 + 1);
    v20 = *(v3 + 2);
    v22 = *(v3 + 3);
    v23 = v3[1];
    *v10 = v19;
    *(v10 + 1) = v23;
    *(v10 + 8) = v21;
    *(v10 + 16) = v20;
    *(v10 + 24) = v22;
    swift_bridgeObjectRetain_n();

    v0 = &unk_10004D000;
    v24 = qword_10004D298;
    v25 = [objc_opt_self() currentDevice];
    v26 = [v25 userInterfaceIdiom];

    v27 = v19 | (v23 << 8);
    if (v26 == 1)
    {
      v28 = sub_100011FB4(v24, v27, v22, v21, v20);
    }

    else
    {
      v28 = sub_100012450(v24, v27, v21, v20);
    }

    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v2 = v67;
    v4 = &stru_100048FE8.align;

    v36 = v67 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout;
    *v36 = v32 & 1;
    v36[1] = HIBYTE(v32);
    *(v36 + 1) = v33;
    *(v36 + 2) = v34;
    *(v36 + 3) = v35;

    if (qword_10004ADD0 != -1)
    {
      goto LABEL_53;
    }

LABEL_29:
    v37 = sub_10001EFA4(qword_10004D290, 1, *(v10 + 1), v0[83], *(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_yMinValueForOverlap));
    *v3 = v37 & 1;
    v3[1] = HIBYTE(v37);
    *(v3 + 1) = v38;
    *(v3 + 2) = v39;
    *(v3 + 3) = v40;

    v41 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView;
    [*(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersView) *(v4 + 3848)];
    v0 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView;
    [*(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_currentFlowersFloatingView) *(v4 + 3848)];
    v42 = *(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay);
    [v42 setAlpha:0.0];
    v4 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView;
    v43 = *(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersView);
    v44 = *(v2 + v41);
    *(v2 + v41) = v43;
    v45 = v43;

    v46 = [objc_allocWithZone(UIView) init];
    v47 = *(v2 + v4);
    *(v2 + v4) = v46;

    v5 = &stru_100048FE8.align;
    [(uint32_t *)v2 addSubview:*(v2 + v41)];
    v10 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView;
    v48 = *(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_nextFlowersFloatingView);
    v49 = *(v0 + v2);
    *(v0 + v2) = v48;
    v50 = v48;

    v51 = [objc_allocWithZone(UIView) init];
    v52 = *(v2 + v10);
    *(v2 + v10) = v51;

    v53 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_floatingContainerView;
    [*(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_floatingContainerView) addSubview:*(v0 + v2)];
    [*(v2 + v53) addSubview:v42];
    [*(v2 + v53) addSubview:*(v2 + v4)];
    [*(v2 + v53) addSubview:*(v2 + v10)];
    v11 = *(v3 + 2);
    LOBYTE(v53) = v3[1];

    v55 = sub_10000C510(v54, v53, 0, 0);

    if (!(v55 >> 62))
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
LABEL_60:

        *(v67 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD) = 1;
        return result;
      }

LABEL_31:
      v57 = 0;
      do
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v59 = sub_1000373C8();
        }

        else
        {
          v59 = *(v55 + 8 * v57 + 32);
        }

        v60 = v59;
        if (v59[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows])
        {
          v59[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = 0;
          [*&v59[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] removeFromSuperview];
        }

        v61 = v60[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle];
        v60[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle] = 1;
        if ((v61 & 1) == 0)
        {
          sub_10000EA40();
          sub_10000E8E0();
        }

        [v60 setAlpha:0.0];
        v62 = *&v60[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec];
        if (v62 && *(v62 + 128) == 1)
        {
          v63 = *(v67 + v10);

          v58 = v63;
          [v58 addSubview:v60];
        }

        else
        {
          v58 = *(v67 + v4);
          [v58 addSubview:v60];
        }

        ++v57;
      }

      while (v56 != v57);
      goto LABEL_60;
    }

    v65 = sub_1000374A8();
    if ((v65 & 0x8000000000000000) == 0)
    {
      v56 = v65;
      if (!v65)
      {
        goto LABEL_60;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_56:
    v12 = v65;
    p_align = (&stru_100048FE8 + 24);
    if (v65)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
  v0 = (v11 & 0xC000000000000001);
  v4 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v0)
    {
      sub_1000373C8();
    }

    else
    {
      if (v17 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      break;
    }

    v2 = v18;
    ++v17;
    [(uint32_t *)v18 setAlpha:1.0];

    if (v16 == v17)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_10000A808()
{
  v1 = *(v0 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16);
  if (v1 >> 62)
  {
LABEL_38:
    v24 = sub_1000374A8();
    if (v24 < 0)
    {
      __break(1u);
    }

    v2 = v24;
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldShowShadows;

  if (v2)
  {
    v3 = 0;
    v25 = -3.14159265;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000373C8();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v6 = Strong;
      v7 = *(v33 + v32);
      if (v7 != *(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows))
      {
        *(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows) = v7;
        if (v7)
        {
          sub_10000E8E0();
        }

        else
        {
          [*(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView) removeFromSuperview];
        }
      }

      sub_100036F08();
      transform.a = v8;
      sub_10000CB78();
      sub_100037038();
      a = v35.a;
      sub_100036F08();
      transform.a = v10;
      sub_100037038();
      sub_10000E53C(1.0 - v35.a);
      CGAffineTransformMakeRotation(&transform, *(v4 + 104));
      v11 = *&transform.a;
      v12 = *&transform.c;
      v13 = *&transform.tx;
      if (qword_10004D298 > 2)
      {
        if (qword_10004D298 != 3)
        {
          if (qword_10004D298 == 4)
          {
            v29 = *&transform.c;
            v31 = *&transform.a;
            v27 = *&transform.tx;
            v16 = CLKFloatEqualsFloat();
            v13 = v27;
            v12 = v29;
            v11 = v31;
            if (v16)
            {
              v15 = -1.57079633;
            }

            else
            {
              v15 = 4.71238898;
            }

            goto LABEL_28;
          }

          goto LABEL_25;
        }

        v15 = 1.57079633;
      }

      else
      {
        if (qword_10004D298 != 1)
        {
          if (qword_10004D298 == 2)
          {
            v28 = *&transform.c;
            v30 = *&transform.a;
            v26 = *&transform.tx;
            v14 = CLKFloatEqualsFloat();
            v13 = v26;
            v12 = v28;
            v11 = v30;
            v15 = 3.14159265;
            if (v14)
            {
              v15 = v25;
            }

            goto LABEL_28;
          }

LABEL_25:
          v15 = 1.0;
          goto LABEL_28;
        }

        v15 = 0.0;
      }

LABEL_28:
      *&transform.a = v11;
      *&transform.c = v12;
      *&transform.tx = v13;
      CGAffineTransformRotate(&v35, &transform, v15);
      transform = v35;
      CGAffineTransformScale(&v35, &transform, a * 0.2 + 0.8, a * 0.2 + 0.8);
      tx = v35.tx;
      ty = v35.ty;
      v19 = type metadata accessor for RhizomeLayeredFlowerView();
      v34.receiver = v6;
      v34.super_class = v19;
      *&transform.a = *&v35.a;
      *&transform.c = *&v35.c;
      transform.tx = tx;
      transform.ty = ty;
      objc_msgSendSuper2(&v34, "setTransform:", &transform);
      v20 = *&v6[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
      if (v20 && *(v20 + 24) == 1 && (*(v20 + 120) & 1) != 0)
      {

        [v6 transform];
        CGAffineTransformDecompose(&v35, &transform);
        v21 = 3.0;
        if (*(v20 + 48))
        {
          v21 = 1.5;
        }

        v22 = v21 / v35.a;
        [*(v20 + 56) setLineWidth:{v21 / v35.a, *&v25}];
        [*(v20 + 64) setLineWidth:v22];
        [*(v20 + 72) setLineWidth:v22];
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

uint64_t sub_10000AC18()
{
  v1 = v0;
  if (qword_10004ADB8 != -1)
  {
LABEL_44:
    swift_once();
  }

  v2 = sub_100036F68();
  sub_100002684(v2, qword_10004D258);
  v3 = sub_100036F48();
  v4 = sub_1000371D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished transition out of AOD", v5, 2u);
  }

  [*(v1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_blackOverlay) setAlpha:0.0];
  *(v1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_readyToTransitionOutOfAOD) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16);
  if (v6 >> 62)
  {
    v7 = sub_1000374A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = OBJC_IVAR____TtC13RhizomePoster11RhizomeView_shouldShowShadows;

  if (v7)
  {
    v8 = 0;
    v29 = v1;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1000373C8();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_38;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v12 = Strong;
      v13 = *(v1 + v30);
      if (v13 != *(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows))
      {
        *(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows) = v13;
        if (v13)
        {
          sub_10000E8E0();
        }

        else
        {
          [*(Strong + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView) removeFromSuperview];
        }
      }

      v14 = 0.0;
      sub_10000E53C(0.0);
      CGAffineTransformMakeRotation(&transform, *(v9 + 104));
      v15 = *&transform.a;
      v16 = *&transform.c;
      v17 = *&transform.tx;
      if (qword_10004D298 <= 2)
      {
        break;
      }

      if (qword_10004D298 != 3)
      {
        if (qword_10004D298 == 4)
        {
          v32 = *&transform.c;
          v35 = *&transform.a;
          v28 = *&transform.tx;
          v19 = CLKFloatEqualsFloat();
          v17 = v28;
          v16 = v32;
          v15 = v35;
          if (v19)
          {
            v14 = -1.57079633;
          }

          else
          {
            v14 = 4.71238898;
          }

          goto LABEL_30;
        }

LABEL_28:
        v14 = 1.0;
        goto LABEL_30;
      }

      v14 = 1.57079633;
LABEL_30:
      *&transform.a = v15;
      *&transform.c = v16;
      *&transform.tx = v17;
      CGAffineTransformRotate(&v38, &transform, v14);
      transform = v38;
      CGAffineTransformScale(&v38, &transform, 1.0, 1.0);
      tx = v38.tx;
      ty = v38.ty;
      v22 = type metadata accessor for RhizomeLayeredFlowerView();
      v33 = *&v38.c;
      v36 = *&v38.a;
      v37.receiver = v12;
      v37.super_class = v22;
      v23 = v12;
      *&transform.a = v36;
      *&transform.c = v33;
      transform.tx = tx;
      transform.ty = ty;
      objc_msgSendSuper2(&v37, "setTransform:", &transform);
      v24 = *&v23[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
      if (v24 && *(v24 + 24) == 1 && *(v24 + 120) == 1)
      {

        [v23 transform];
        CGAffineTransformDecompose(&v38, &transform);
        v25 = 3.0;
        if (*(v24 + 48))
        {
          v25 = 1.5;
        }

        v26 = v25 / v38.a;
        [*(v24 + 56) setLineWidth:{v25 / v38.a, v28}];
        [*(v24 + 64) setLineWidth:v26];
        [*(v24 + 72) setLineWidth:v26];
      }

      [v23 setAlpha:{1.0, v28}];

      ++v8;
      v1 = v29;
      if (v10 == v7)
      {
        goto LABEL_39;
      }
    }

    if (qword_10004D298 == 1)
    {
      goto LABEL_30;
    }

    if (qword_10004D298 == 2)
    {
      v31 = *&transform.c;
      v34 = *&transform.a;
      v28 = *&transform.tx;
      v18 = CLKFloatEqualsFloat();
      v17 = v28;
      v16 = v31;
      v15 = v34;
      if (v18)
      {
        v14 = -3.14159265;
      }

      else
      {
        v14 = 3.14159265;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_39:

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000293B0(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000B128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RhizomeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B278(uint64_t a1, uint64_t a2)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    if (a2 > 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (a2 != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (a2 > 2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a1 != 2)
  {
LABEL_10:
    if (a2 > 2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_7:
  CLKFloatEqualsFloat();
  if (a2 <= 2)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (a2 == 4)
  {
LABEL_9:
    CLKFloatEqualsFloat();
  }

LABEL_17:
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4;
  transform.a = *(v2 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16);

  result = sub_10000BA28(v6);
  a = transform.a;
  if (*&transform.a >> 62)
  {
    result = sub_1000374A8();
    v9 = result;
    if (result)
    {
LABEL_19:
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        v10 = 0;
        v11 = &unk_10004B000;
        do
        {
          if ((*&a & 0xC000000000000001) != 0)
          {
            v12 = sub_1000373C8();
          }

          else
          {
            v12 = *(*&a + 8 * v10 + 32);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v14 = Strong;
            CGAffineTransformMakeRotation(&transform, *(v12 + 104));
            CGAffineTransformRotate(&v23, &transform, v5);
            tx = v23.tx;
            ty = v23.ty;
            v17 = type metadata accessor for RhizomeLayeredFlowerView();
            v22.receiver = v14;
            v22.super_class = v17;
            *&transform.a = *&v23.a;
            *&transform.c = *&v23.c;
            transform.tx = tx;
            transform.ty = ty;
            objc_msgSendSuper2(&v22, "setTransform:", &transform);
            v18 = *&v14[v11[88]];
            if (v18 && *(v18 + 24) == 1 && (*(v18 + 120) & 1) != 0)
            {

              [v14 transform];
              CGAffineTransformDecompose(&v23, &transform);
              if (*(v18 + 48))
              {
                v19 = 1.5;
              }

              else
              {
                v19 = 3.0;
              }

              v20 = v19 / v23.a;
              [*(v18 + 56) setLineWidth:v19 / v23.a];
              [*(v18 + 64) setLineWidth:v20];
              v21 = *(v18 + 72);
              v11 = &unk_10004B000;
              [v21 setLineWidth:v20];
            }

            else
            {
            }
          }

          else
          {
          }

          ++v10;
        }

        while (v9 != v10);
      }

      return result;
    }
  }

  else
  {
    v9 = *((*&transform.a & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_10000B678(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100036ED8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10004ADB8 != -1)
  {
    swift_once();
  }

  v8 = sub_100036F68();
  sub_100002684(v8, qword_10004D258);
  v9 = sub_100036F48();
  v10 = sub_1000371D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;
    sub_100036EE8();
    sub_10000CAC0();
    v13 = sub_100037538();
    v14 = v5;
    v15 = v2;
    v16 = a1;
    v18 = v17;
    (*(v14 + 8))(v7, v4);
    v19 = sub_10000BEB8(v13, v18, &v48);
    a1 = v16;
    v2 = v15;

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Orientation landed: %s", v11, 0xCu);
    sub_1000039EC(v12);
  }

  qword_10004D298 = a1;
  v20 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lastUnlockLandingPlace] == 1.0;
  v21 = &v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
  v22 = v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout];
  v23 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 8];
  v24 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16];
  v25 = *&v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 24];
  v26 = v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 1];

  [v2 bounds];
  v27 = sub_10001FDCC(v20, a1, v22 | (v26 << 8), v25, v23, v24);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  *v21 = v27 & 1;
  v21[1] = BYTE1(v27);
  *(v21 + 1) = v29;
  *(v21 + 2) = v31;
  *(v21 + 3) = v33;

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  v36 = v27 & 0xFFFFFF01;
  if (v35 == 1)
  {
    v37 = sub_100011FB4(a1, v36, v33, v29, v31);
  }

  else
  {
    v37 = sub_100012450(a1, v36, v29, v31);
  }

  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;

  v45 = &v2[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_unlockedScreenLayout];
  *v45 = v41 & 1;
  v45[1] = HIBYTE(v41);
  *(v45 + 1) = v42;
  *(v45 + 2) = v43;
  *(v45 + 3) = v44;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000293B0(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000BA28(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1000374A8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1000374A8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000C470(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10001A9B0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10000BB18(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100012FC4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000BC10(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000130E4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000BCFC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000131E8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000BDE8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000BE5C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000BEB8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000BEB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000BF84(v11, 0, 0, 1, a1, a2);
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
    sub_10000CB18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000039EC(v11);
  return v7;
}

unint64_t sub_10000BF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000C090(a5, a6);
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
    result = sub_1000373E8();
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

char *sub_10000C090(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C0DC(a1, a2);
  sub_10000C20C(&off_100045018);
  return v3;
}

char *sub_10000C0DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000C2F8(v5, 0);
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

  result = sub_1000373E8();
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
        v10 = sub_1000370D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000C2F8(v10, 0);
        result = sub_100037398();
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

uint64_t sub_10000C20C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000C36C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000C2F8(uint64_t a1, uint64_t a2)
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

  sub_100002590(&qword_10004B158);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000C36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B158);
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

_BYTE **sub_10000C460(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000C470(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1000374A8();
LABEL_9:
  result = sub_1000373D8();
  *v1 = result;
  return result;
}

unint64_t sub_10000C510(unint64_t result, unsigned __int8 a2, char a3, char a4)
{
  v5 = result;
  v65 = &_swiftEmptyArrayStorage;
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = sub_1000374A8();
  v6 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v51 = a2 << 8;
    v9 = &_swiftEmptyArrayStorage;
    v53 = v6;
    v54 = v5;
    v52 = v5 & 0xC000000000000001;
    do
    {
      if (v8)
      {
        v11 = sub_1000373C8();
      }

      else
      {
        v11 = *(v5 + 8 * v7 + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
      }

      else
      {
        if (a3)
        {
          v13 = 1;
        }

        else
        {
          v13 = *(v11 + 128) & a4;
        }

        v57 = v13;
        v59 = *(v11 + 96);
        v14 = *(v11 + 72);
        v15 = *(v11 + 80);
        v16 = *(v11 + 88);
        v17 = *(v11 + 112);
        v18 = type metadata accessor for RhizomeLayeredFlowerView();
        v19 = objc_allocWithZone(v18);
        v20 = &v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower];
        *v20 = 0u;
        v20[1] = 0u;
        *&v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize] = 0;
        v21 = &v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_configuration];
        *v21 = 0;
        v21[1] = 0;
        *&v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec] = 0;
        v22 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_synchronousShadows;
        v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_synchronousShadows] = 0;
        *&v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet] = 0;
        *&v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet] = 0;
        v56 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
        v23 = objc_allocWithZone(UIImageView);
        v24 = v14;
        v25 = v15;
        v26 = v16;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        *&v19[v56] = [v23 init];
        v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] = 0;
        v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shouldEnableBlurs] = 0;
        v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle] = 0;
        v19[v22] = v57 & 1;
        v19[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_context] = 0;
        v64.receiver = v19;
        v64.super_class = v18;
        v30 = v18;
        v31 = objc_msgSendSuper2(&v64, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        v32 = v27;
        v33 = v28;
        v34 = v29;
        v35 = v31;
        sub_10000F42C(v51 | v59, v27, v28, v29, v17);

        v58 = v33;
        v60 = v32;

        v36 = &v35[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower];
        v37 = *&v35[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 8];
        if (v37)
        {
          v39 = *(v36 + 2);
          v38 = *(v36 + 3);
          v40 = *(v11 + 136);
          v41 = *(v11 + 144);
          v42 = v37;
          v43 = v39;
          v44 = v38;
          [v35 setCenter:{v40, v41}];
          [v35 setBounds:{0.0, 0.0, *(v11 + 56), *(v11 + 64)}];

          swift_unknownObjectWeakAssign();
          *&v35[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec] = v11;
        }

        v45 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet;
        if (!v35[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle])
        {
          v45 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet;
        }

        if (*&v35[*v45])
        {

          [v35 bounds];
          [v35 setBounds:?];
        }

        else
        {
          [v35 setBounds:{0.0, 0.0, 0.0, 0.0}];
        }

        v6 = v53;
        v5 = v54;
        v8 = v52;
        CGAffineTransformMakeRotation(&transform, *(v11 + 104));
        v62.receiver = v35;
        v62.super_class = v30;
        objc_msgSendSuper2(&v62, "setTransform:", &transform);
        v46 = *&v35[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
        if (v46 && *(v46 + 24) == 1 && *(v46 + 120) == 1)
        {

          [v35 transform];
          CGAffineTransformDecompose(&v61, &transform);
          if (*(v46 + 48))
          {
            v47 = 1.5;
          }

          else
          {
            v47 = 3.0;
          }

          v48 = v47 / v61.scale.width;
          [*(v46 + 56) setLineWidth:v47 / v61.scale.width];
          [*(v46 + 64) setLineWidth:v48];
          [*(v46 + 72) setLineWidth:v48];
        }

        v49 = v35;
        sub_1000370E8();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        sub_100037148();

        v9 = v65;
      }

      ++v7;
    }

    while (v6 != v7);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000CAC0()
{
  result = qword_10004B150;
  if (!qword_10004B150)
  {
    sub_100036ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B150);
  }

  return result;
}

uint64_t sub_10000CB18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000CB78()
{
  result = qword_10004B160;
  if (!qword_10004B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B160);
  }

  return result;
}

unint64_t sub_10000CBCC()
{
  result = qword_10004B168;
  if (!qword_10004B168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004B168);
  }

  return result;
}

void *sub_10000CC40()
{
  v1 = *(v0 + 56);
  v72 = &type metadata for CGFloat;
  *&v71 = v1;
  sub_10000D3A0(&v71, v70);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = _swiftEmptyDictionarySingleton;
  sub_100016D48(v70, 0xD000000000000017, 0x800000010003A5E0, isUniquelyReferenced_nonNull_native);
  v3 = qword_10004B170;
  v4 = off_10004B178;
  v5 = *(v0 + 64);
  v72 = &type metadata for CGFloat;
  *&v71 = v5;
  sub_10000D3A0(&v71, v70);

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v69 = _swiftEmptyDictionarySingleton;
  sub_100016D48(v70, v3, v4, v6);

  v7 = qword_10004B180;
  v8 = off_10004B188;
  v9 = *(v0 + 136);
  v72 = &type metadata for CGFloat;
  *&v71 = v9;
  sub_10000D3A0(&v71, v70);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v69 = _swiftEmptyDictionarySingleton;
  sub_100016D48(v70, v7, v8, v10);

  v11 = qword_10004B190;
  v12 = off_10004B198;
  v13 = *(v0 + 144);
  v72 = &type metadata for CGFloat;
  *&v71 = v13;
  sub_10000D3A0(&v71, v70);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v69 = _swiftEmptyDictionarySingleton;
  sub_100016D48(v70, v11, v12, v14);

  v15 = *(v0 + 120);
  v72 = &type metadata for Int;
  *&v71 = v15;
  sub_10000D3A0(&v71, v70);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, 0xD000000000000013, 0x800000010003A600, v16);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  [*(v0 + 72) getRed:&v69 green:&v68 blue:&v67 alpha:0];
  v17 = qword_10004B1A0;
  v18 = off_10004B1A8;
  v72 = &type metadata for CGFloat;
  *&v71 = v69;
  sub_10000D3A0(&v71, v70);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v17, v18, v19);

  v20 = qword_10004B1B0;
  v21 = off_10004B1B8;
  v72 = &type metadata for CGFloat;
  *&v71 = v68;
  sub_10000D3A0(&v71, v70);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v20, v21, v22);

  v23 = qword_10004B1C0;
  v24 = off_10004B1C8;
  v72 = &type metadata for CGFloat;
  *&v71 = v67;
  sub_10000D3A0(&v71, v70);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v23, v24, v25);

  v65 = 0;
  v66 = 0;
  v64 = 0;
  [*(v0 + 80) getRed:&v66 green:&v65 blue:&v64 alpha:0];
  v26 = qword_10004B1D0;
  v27 = off_10004B1D8;
  v72 = &type metadata for CGFloat;
  *&v71 = v66;
  sub_10000D3A0(&v71, v70);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v26, v27, v28);

  v29 = qword_10004B1E0;
  v30 = off_10004B1E8;
  v72 = &type metadata for CGFloat;
  *&v71 = v65;
  sub_10000D3A0(&v71, v70);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v29, v30, v31);

  v32 = qword_10004B1F0;
  v33 = off_10004B1F8;
  v72 = &type metadata for CGFloat;
  *&v71 = v64;
  sub_10000D3A0(&v71, v70);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v32, v33, v34);

  v62 = 0;
  v63 = 0;
  v61 = 0;
  [*(v0 + 88) getRed:&v63 green:&v62 blue:&v61 alpha:0];
  v35 = qword_10004B200;
  v36 = off_10004B208;
  v72 = &type metadata for CGFloat;
  *&v71 = v63;
  sub_10000D3A0(&v71, v70);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v35, v36, v37);

  v38 = qword_10004B210;
  v39 = off_10004B218;
  v72 = &type metadata for CGFloat;
  *&v71 = v62;
  sub_10000D3A0(&v71, v70);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v38, v39, v40);

  v41 = qword_10004B220;
  v42 = off_10004B228;
  v72 = &type metadata for CGFloat;
  *&v71 = v61;
  sub_10000D3A0(&v71, v70);

  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v41, v42, v43);

  v44 = qword_10004B230;
  v45 = off_10004B238;
  v46 = *(v0 + 96);
  v72 = &type metadata for Int;
  *&v71 = v46;
  sub_10000D3A0(&v71, v70);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v44, v45, v47);

  v48 = qword_10004B250;
  v49 = off_10004B258;
  v50 = *(v0 + 128);
  v72 = &type metadata for Bool;
  LOBYTE(v71) = v50;
  sub_10000D3A0(&v71, v70);

  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v48, v49, v51);

  v52 = qword_10004B240;
  v53 = off_10004B248;
  v54 = *(v0 + 104);
  v72 = &type metadata for CGFloat;
  *&v71 = v54;
  sub_10000D3A0(&v71, v70);

  v55 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v52, v53, v55);

  v56 = qword_10004B260;
  v57 = off_10004B268;
  v58 = *(v0 + 112);
  v72 = &type metadata for CGFloat;
  *&v71 = v58;
  sub_10000D3A0(&v71, v70);

  v59 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v70, v56, v57, v59);

  return _swiftEmptyDictionarySingleton;
}

_OWORD *sub_10000D3A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D3B0(uint64_t a1)
{
  if (!*(a1 + 16)
    || (v2 = sub_10001541C(0xD000000000000017, 0x800000010003A5E0), (v3 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v2, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v4 = qword_10004B170, v5 = off_10004B178, , v6 = sub_10001541C(v4, v5), v8 = v7, , (v8 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v6, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v9 = qword_10004B180, v10 = off_10004B188, , v11 = sub_10001541C(v9, v10), v13 = v12, , (v13 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v11, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v14 = qword_10004B190, v15 = off_10004B198, , v16 = sub_10001541C(v14, v15), v18 = v17, , (v18 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v16, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v19 = qword_10004B1A0, v20 = off_10004B1A8, , v21 = sub_10001541C(v19, v20), v23 = v22, , (v23 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v21, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v24 = qword_10004B1B0, v25 = off_10004B1B8, , v26 = sub_10001541C(v24, v25), v28 = v27, , (v28 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v26, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v29 = qword_10004B1C0, v30 = off_10004B1C8, , v31 = sub_10001541C(v29, v30), v33 = v32, , (v33 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v31, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v34 = qword_10004B1D0, v35 = off_10004B1D8, , v36 = sub_10001541C(v34, v35), v38 = v37, , (v38 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v36, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v39 = qword_10004B1E0, v40 = off_10004B1E8, , v41 = sub_10001541C(v39, v40), v43 = v42, , (v43 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v41, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v44 = qword_10004B1F0, v45 = off_10004B1F8, , v46 = sub_10001541C(v44, v45), v48 = v47, , (v48 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v46, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v49 = qword_10004B200, v50 = off_10004B208, , v51 = sub_10001541C(v49, v50), v53 = v52, , (v53 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v51, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v54 = qword_10004B210, v55 = off_10004B218, , v56 = sub_10001541C(v54, v55), v58 = v57, , (v58 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v56, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v59 = qword_10004B220, v60 = off_10004B228, , v61 = sub_10001541C(v59, v60), v63 = v62, , (v63 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v61, v101), (swift_dynamicCast() & 1) == 0)
    || !*(a1 + 16)
    || (v64 = qword_10004B230, v65 = off_10004B238, , v66 = sub_10001541C(v64, v65), v68 = v67, , (v68 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v66, v101), (swift_dynamicCast() & 1) == 0)
    || (v69 = sub_10000E23C(*&v100), v69 == 17)
    || !*(a1 + 16)
    || (v70 = v69, v71 = qword_10004B250, v72 = off_10004B258, , v73 = sub_10001541C(v71, v72), v75 = v74, , (v75 & 1) == 0)
    || (sub_10000CB18(*(a1 + 56) + 32 * v73, v101), (swift_dynamicCast() & 1) == 0))
  {

    return 0;
  }

  if (*(a1 + 16) && (v76 = sub_10001541C(0xD000000000000013, 0x800000010003A600), (v77 & 1) != 0) && (sub_10000CB18(*(a1 + 56) + 32 * v76, v101), swift_dynamicCast()))
  {
    v78 = v100;
  }

  else
  {
    v78 = 0.0;
  }

  v80 = [objc_allocWithZone(UIColor) initWithRed:v100 green:v100 blue:v100 alpha:1.0];
  v81 = [objc_allocWithZone(UIColor) initWithRed:v100 green:v100 blue:v100 alpha:1.0];
  v82 = [objc_allocWithZone(UIColor) initWithRed:v100 green:v100 blue:v100 alpha:1.0];
  if (*(a1 + 16))
  {
    v84 = qword_10004B240;
    v83 = off_10004B248;
    v85 = v80;
    v86 = v81;
    v87 = v82;

    v88 = sub_10001541C(v84, v83);
    LOBYTE(v84) = v89;

    v90 = 0.0;
    if (v84)
    {
      sub_10000CB18(*(a1 + 56) + 32 * v88, v101);
      if (swift_dynamicCast())
      {
        v90 = v100;
      }
    }
  }

  else
  {
    v91 = v80;
    v92 = v81;
    v93 = v82;
    v90 = 0.0;
  }

  if (!*(a1 + 16) || (v95 = qword_10004B260, v94 = off_10004B268, , v96 = sub_10001541C(v95, v94), LOBYTE(v95) = v97, , (v95 & 1) == 0))
  {

    goto LABEL_63;
  }

  sub_10000CB18(*(a1 + 56) + 32 * v96, v101);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_63:
    if (qword_10004AE38 != -1)
    {
      swift_once();
    }

    v98 = qword_10004D310;

    goto LABEL_66;
  }

  v98 = *&v100;
LABEL_66:
  type metadata accessor for RhizomeLayoutSpec();
  v99 = swift_allocObject();
  *(v99 + 16) = 0u;
  *(v99 + 32) = 0u;
  *(v99 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v99 + 56) = v100;
  *(v99 + 64) = v100;
  *(v99 + 136) = v100;
  *(v99 + 144) = v100;
  *(v99 + 72) = v80;
  *(v99 + 80) = v81;
  *(v99 + 88) = v82;
  *(v99 + 104) = v90;
  swift_unknownObjectWeakAssign();
  result = v99;
  *(v99 + 96) = v70;
  *(v99 + 120) = v78;
  *(v99 + 128) = LOBYTE(v100);
  *(v99 + 129) = 1;
  *(v99 + 112) = v98;
  *(v99 + 16) = v100 * v100;
  *(v99 + 24) = v100 - v100 * 0.5;
  *(v99 + 32) = v100 - v100 * 0.5;
  *(v99 + 40) = v100;
  *(v99 + 48) = v100;
  return result;
}

uint64_t getEnumTagSinglePayload for RhizomeFlowerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RhizomeFlowerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000DEFC(unsigned __int8 a1)
{
  v1 = 1 << a1;
  v2 = 0xD000000000000011;
  v3 = 0x6C694C20616C6143;
  if (((1 << a1) & 0xF00) == 0)
  {
    v3 = 0x206E616369726641;
  }

  if ((v1 & 0xF0) == 0)
  {
    v2 = v3;
  }

  if ((v1 & 0x1F000) != 0)
  {
    v4 = 0x646C6F676972614DLL;
  }

  else
  {
    v4 = v2;
  }

  if (a1 <= 0x10u)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x206E616369726641;
  }

  v10 = v5;

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  sub_1000370B8(v11);

  v6 = sub_100037538();
  v8 = v7;

  v12._countAndFlagsBits = v6;
  v12._object = v8;
  sub_1000370B8(v12);

  return v10;
}

Swift::Int sub_10000E074()
{
  v1 = *v0;
  sub_1000375A8();
  sub_1000375B8(v1);
  return sub_1000375E8();
}

Swift::Int sub_10000E0E8()
{
  v1 = *v0;
  sub_1000375A8();
  sub_1000375B8(v1);
  return sub_1000375E8();
}

unint64_t sub_10000E13C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E23C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000E180()
{
  result = qword_10004B270;
  if (!qword_10004B270)
  {
    sub_1000023BC(&qword_10004B278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B270);
  }

  return result;
}

unint64_t sub_10000E1E8()
{
  result = qword_10004B280;
  if (!qword_10004B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B280);
  }

  return result;
}

unint64_t sub_10000E23C(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

uint64_t sub_10000E24C()
{
  v0 = sub_100036F68();
  sub_100002620(v0, qword_10004D2A0);
  sub_100002684(v0, qword_10004D2A0);
  return sub_100036F58();
}

unint64_t sub_10000E2C0(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100016BFC(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_100015494(a2 & 1);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1000179EC();
        v11 = v13;
      }

      result = sub_100006CA0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_10000E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100016E98(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10001541C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100017CEC();
        v14 = v16;
      }

      result = sub_100006E34(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

id sub_10000E478()
{
  if (v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle])
  {
    v1 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet;
  }

  if (*&v0[*v1])
  {

    [v0 bounds];
    [v0 setBounds:?];
  }

  else
  {

    return [v0 setBounds:{0.0, 0.0, 0.0, 0.0}];
  }
}

void sub_10000E53C(double a1)
{
  if (a1 == 0.0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle);
    *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle) = 0;
    if (v2 != 1)
    {
      return;
    }

LABEL_3:
    sub_10000EA40();

    sub_10000E8E0();
    return;
  }

  if (a1 == 1.0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle);
    *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle) = 1;
    if (v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v5 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet);
  if (v5)
  {
    *(v5 + 152) = 0;

    sub_100032AA8();
    v6 = 1.0 - a1;
    *&v6 = 1.0 - a1;
    *(v5 + 156) = LODWORD(v6);
    sub_100032B80(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet);
  if (v7)
  {
    *(v7 + 152) = 0;

    sub_100032AA8();
    *&v8 = a1;
    *(v7 + 156) = LODWORD(v8);
    sub_100032B80(v8);
  }

  v9 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
  [*(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView) setHidden:(*(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows) & 1) == 0];
  v11 = [*(v1 + v9) layer];
  v10 = 1.0 - a1;
  *&v10 = 1.0 - a1;
  [v11 setOpacity:v10];
}

uint64_t sub_10000E718(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet];
  if (a1)
  {

    sub_100034080();

    if (!v2)
    {
      return result;
    }
  }

  else
  {

    if (!v2)
    {
      return result;
    }
  }

  if (*(v2 + 120) == 1)
  {

    sub_100033DEC(v1);
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize];

    sub_1000330D8(v1, v4);
  }

  *(v2 + 152) = v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle];
  sub_100032AA8();
}

uint64_t sub_10000E7F8(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
  if (a1)
  {

    sub_100034080();

    if (!v2)
    {
      return result;
    }
  }

  else
  {

    if (!v2)
    {
      return result;
    }
  }

  if (*(v2 + 120) == 1)
  {

    sub_100033DEC(v1);
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize];

    sub_1000330D8(v1, v4);
  }

  *(v2 + 152) = (v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle] & 1) == 0;
  sub_100032AA8();
}

void sub_10000E8E0()
{
  v1 = *&v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet];
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
      v4 = *&v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView];
      v10 = v2;
      [v4 setImage:?];
      v5 = 1;
      [*&v0[v3] setContentMode:1];
      [*&v0[v3] setAlpha:1.0];
      if ((v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle] & 1) == 0)
      {
        v5 = v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows] ^ 1;
      }

      [*&v0[v3] setHidden:v5 & 1];
      v6 = *&v0[v3];
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 blackColor];
      [v8 setTintColor:v9];

      [v0 insertSubview:*&v0[v3] atIndex:0];
    }
  }
}

id sub_10000EA40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet);
  if (v2)
  {
    *(v2 + 156) = 1065353216;

    sub_100032B80(v3);
    *(v2 + 152) = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle);
    sub_100032AA8();
  }

  v4 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet);
  if (v4)
  {
    *(v4 + 156) = 1065353216;

    sub_100032B80(v5);
    *(v4 + 152) = (*(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle) & 1) == 0;
    sub_100032AA8();
  }

  v6 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
  [*(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView) setAlpha:1.0];
  v7 = *(v1 + v6);
  if (*(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows) ^ 1;
  }

  return [v7 setHidden:v8 & 1];
}

void sub_10000EB74(id a1)
{
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSublayersOfLayer:", a1);
  v3 = [v1 layer];

  if (v3 != a1)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet];
  if (v4)
  {
    v5 = v4[7];
    if (v5)
    {

      v6 = v5;
      [a1 bounds];
      [v6 setFrame:?];

      v7 = v4[8];
      if (!v7)
      {
LABEL_6:
        v9 = v4[9];
        if (v9)
        {
          v10 = v9;
          [a1 bounds];
          [v10 setFrame:?];
        }

        goto LABEL_9;
      }
    }

    else
    {

      v7 = v4[8];
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v8 = v7;
    [a1 bounds];
    [v8 setFrame:?];

    goto LABEL_6;
  }

LABEL_9:
  v11 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
  if (!v11)
  {
    return;
  }

  v12 = v11[7];
  if (!v12)
  {

    v14 = v11[8];
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = v12;
  [a1 bounds];
  [v13 setFrame:?];

  v14 = v11[8];
  if (v14)
  {
LABEL_12:
    v15 = v14;
    [a1 bounds];
    [v15 setFrame:?];
  }

LABEL_13:
  v16 = v11[9];
  if (v16)
  {
    v17 = v16;
    [a1 bounds];
    [v17 setFrame:?];
  }
}

void sub_10000EDD4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet])
  {
    v1 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
    [*&v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView] sizeToFit];
    v2 = *&v0[v1];
    [v0 bounds];
    v3 = CGRectGetWidth(v5) * 0.5;
    [v0 bounds];
    [v2 setCenter:{v3, CGRectGetHeight(v6) * 0.5}];
  }
}

void sub_10000F020()
{
  v1 = v0;
  sub_10000F3AC();
  v2 = &v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower];
  v3 = *&v0[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 8];
  if (!v3)
  {
    return;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = *v2;
  v7 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize];
  v8 = v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_context];
  v9 = v3;
  v10 = v5;
  v11 = v4;
  sub_10000FD80(v6, v3, v5, v4);
  sub_100006024(0, v6, v9, v10, v11, &v31, v7);
  if (!v32)
  {

LABEL_19:
    return;
  }

  v37[0] = v31;
  v37[1] = v32;
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v41 = v36;
  v12 = sub_100003ACC(v37, 0, v8);
  if (!v12 || (v13 = v12, type metadata accessor for RhizomeLayerSet(), swift_allocObject(), (v14 = sub_1000343F4(v13, 0, v8)) == 0))
  {

    sub_10000FE6C(&v31);
LABEL_18:

    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100003ACC(v37, 1, v8);
  if (!v16 || (v17 = v16, swift_allocObject(), !sub_1000343F4(v17, 1, v8)))
  {

    sub_10000FE6C(&v31);

    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100016BFC(v15, 0, isUniquelyReferenced_nonNull_native);

  sub_10000E2C0(v19, 1);
  sub_10000FE6C(&v31);

  if (!*(&_swiftEmptyDictionarySingleton + 2) || (v20 = sub_100015494(0), (v21 & 1) == 0) || !*(&_swiftEmptyDictionarySingleton + 2) || (v22 = *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v20), v23 = sub_100015494(1), (v24 & 1) == 0))
  {

    goto LABEL_18;
  }

  v25 = *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v23);
  v26 = &v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_configuration];
  *v26 = v7;
  *(v26 + 1) = &_swiftEmptyDictionarySingleton;

  v27 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet;
  v28 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet];
  *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet] = v22;
  swift_retain_n();
  sub_10000E718(v28);

  v29 = *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet];
  *&v1[OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet] = v25;
  swift_retain_n();
  sub_10000E7F8(v29);

  if (*&v1[v27])
  {

    v30 = v1;
    sub_100032A40(v1, &off_100045D98);
  }

  sub_10000E8E0();
}

uint64_t sub_10000F3AC()
{
  v1 = (v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_configuration);
  *v1 = 0;
  v1[1] = 0;

  v2 = *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet);
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet) = 0;
  sub_10000E7F8(v2);

  v3 = *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet);
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet) = 0;
  sub_10000E718(v3);
}

void sub_10000F42C(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v11 = (v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower);
  v12 = *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower);
  v13 = *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 8);
  v14 = *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 16);
  v15 = *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 24);
  if (!a2)
  {
    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_6:
    v16 = *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower);
    sub_10000FD80(v12, *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 8), *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 16), *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 24));
    sub_10000FD80(a1, a2, a3, a4);
    sub_10000FDD0(a1, a2, a3, a4);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
LABEL_14:
    sub_10000FDD0(v17, v18, v19, v20);
    goto LABEL_15;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  if (v12 != a1)
  {
    sub_10000FD80(v12, *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 8), *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 16), *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower + 24));
    sub_10000FD80(a1, a2, a3, a4);
LABEL_13:

    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    goto LABEL_14;
  }

  v25 = v12 >> 8;
  sub_10000FD80(v12, v13, v14, v15);
  sub_10000FD80(a1, a2, a3, a4);
  if ((sub_100030700(BYTE1(a1), v25) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10000FE20();
  if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
  {

    sub_10000FDD0(a1, a2, a3, a4);
    goto LABEL_15;
  }

  v26 = sub_100037258();

  sub_10000FDD0(a1, a2, a3, a4);
  if (v26)
  {
LABEL_11:
    if (*(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize) == a5)
    {
      return;
    }
  }

LABEL_15:
  v21 = *v11;
  v22 = v11[1];
  v23 = v11[2];
  v24 = v11[3];
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  sub_10000FD80(a1, a2, a3, a4);
  sub_10000FDD0(v21, v22, v23, v24);
  *(v5 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize) = a5;

  sub_10000F020();
}

uint64_t sub_10000F718()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v7, "debugDescription");
  v2 = sub_100037068();

  v8._countAndFlagsBits = 0x7265776F6C665B20;
  v8._object = 0xE90000000000003DLL;
  sub_1000370B8(v8);

  sub_100002590(&qword_10004B330);
  v3 = sub_100037278();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1000370B8(v9);

  v10._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v10);

  v11._countAndFlagsBits = 6124656;
  v11._object = 0xE300000000000000;
  sub_1000370B8(v11);

  v12._countAndFlagsBits = 8251;
  v12._object = 0xE200000000000000;
  sub_1000370B8(v12);

  return v2;
}

id sub_10000F8D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for LayoutState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LayoutState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000FB3C()
{
  result = qword_10004B310;
  if (!qword_10004B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B310);
  }

  return result;
}

unint64_t sub_10000FB94()
{
  result = qword_10004B318;
  if (!qword_10004B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B318);
  }

  return result;
}

void sub_10000FBE8(char a1, double a2, double a3)
{
  v3 = -30.0;
  v4 = 30.0;
  if (((1 << a1) & 0x1F00F) == 0)
  {
    if (((1 << a1) & 0xF0) != 0)
    {
      v7 = MobileGestalt_get_current_device();
      if (!v7)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = v7;
      mainScreenWidth = MobileGestalt_get_mainScreenWidth();

      v10 = MobileGestalt_get_current_device();
      if (!v10)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v11 = v10;
      mainScreenHeight = MobileGestalt_get_mainScreenHeight();

      v13 = vcvtd_n_f64_s32(mainScreenHeight, 1uLL);
      if (vcvtd_n_f64_s32(mainScreenWidth, 1uLL) <= a2)
      {
        v14 = v13 < a3;
        if (v13 >= a3)
        {
          v4 = -135.0;
        }

        else
        {
          v4 = -35.0;
        }

        v15 = -165.0;
        v16 = -65.0;
      }

      else
      {
        v14 = v13 < a3;
        if (v13 >= a3)
        {
          v4 = 165.0;
        }

        else
        {
          v4 = 65.0;
        }

        v15 = 135.0;
        v16 = 35.0;
      }

      if (v14)
      {
        v3 = v16;
      }

      else
      {
        v3 = v15;
      }
    }

    else
    {
      v3 = -60.0;
      v4 = 60.0;
    }
  }

  if (COERCE__INT64(fabs(v4 - v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_100019AE4(0x20000000000001uLL);

  CLKDegreesToRadians();
}

void sub_10000FD80(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = a3;

    v7 = a4;
  }
}

void sub_10000FDD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

unint64_t sub_10000FE20()
{
  result = qword_10004B320;
  if (!qword_10004B320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004B320);
  }

  return result;
}

uint64_t sub_10000FE6C(uint64_t a1)
{
  v2 = sub_100002590(&qword_10004B328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000FED4()
{
  v1 = (v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__flower);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__pointSize) = 0;
  v2 = (v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_configuration);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_layoutSpec) = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_synchronousShadows) = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_filledLayerSet) = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_outlineLayerSet) = 0;
  v3 = OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shadowImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView__shouldShowShadows) = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_shouldEnableBlurs) = 0;
  *(v0 + OBJC_IVAR____TtC13RhizomePoster24RhizomeLayeredFlowerView_activeLayerStyle) = 0;
  sub_100037498();
  __break(1u);
}

uint64_t sub_10000FFFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100010044(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *sub_100010094(__int16 a1, uint64_t a2, unint64_t a3)
{
  v21 = HIBYTE(a1);
  v5 = 1819047270;
  if ((a1 & 1) == 0)
  {
    v5 = 0x73736572706D6F63;
  }

  v6 = 0xE400000000000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0xEA00000000006465;
  }

  v24 = &type metadata for String;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  sub_10000D3A0(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v22, 0xD000000000000019, 0x800000010003A8D0, isUniquelyReferenced_nonNull_native);
  if (a3 >> 62)
  {
    v8 = sub_1000374A8();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    *&v23 = _swiftEmptyArrayStorage;
    result = sub_100014AC0(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = a2;
    v11 = 0;
    v9 = v23;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        sub_1000373C8();
      }

      else
      {
      }

      v12 = sub_10000CC40();

      *&v23 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_100014AC0((v13 > 1), v14 + 1, 1);
        v9 = v23;
      }

      ++v11;
      v9[2] = v14 + 1;
      v9[v14 + 4] = v12;
    }

    while (v8 != v11);
    a2 = v20;
  }

  v24 = sub_100002590(&qword_10004B338);
  *&v23 = v9;
  sub_10000D3A0(&v23, v22);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v22, 0xD000000000000019, 0x800000010003A8F0, v15);
  if (v21 <= 1u)
  {
    if (v21)
    {
      v16 = 0xE300000000000000;
      v17 = 6579538;
    }

    else
    {
      v16 = 0xE500000000000000;
      v17 = 0x7974696E55;
    }
  }

  else if (v21 == 2)
  {
    v16 = 0xE500000000000000;
    v17 = 0x6E65657247;
  }

  else if (v21 == 3)
  {
    v16 = 0xEA0000000000726FLL;
    v17 = 0x6C6F6369746C754DLL;
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x6B63616C42;
  }

  v24 = &type metadata for String;
  *&v23 = v17;
  *(&v23 + 1) = v16;
  sub_10000D3A0(&v23, v22);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v22, 0xD000000000000013, 0x800000010003A910, v18);
  v24 = &type metadata for Int;
  *&v23 = a2;
  sub_10000D3A0(&v23, v22);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100016D48(v22, 0xD000000000000016, 0x800000010003A930, v19);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1000103FC(uint64_t *a1, __int16 a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v7 = 0x7974696E55;
  v8 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v9 = 6579538;
    }

    else
    {
      v9 = 0x7974696E55;
    }

    if (v8)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v10 = 0xE500000000000000;
    v9 = 0x6E65657247;
  }

  else
  {
    if (a1 == 3)
    {
      v9 = 0x6C6F6369746C754DLL;
    }

    else
    {
      v9 = 0x6B63616C42;
    }

    if (v8 == 3)
    {
      v10 = 0xEA0000000000726FLL;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  v11 = 0xE500000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x6E65657247;
  v14 = 0x6C6F6369746C754DLL;
  v15 = 0xEA0000000000726FLL;
  if (HIBYTE(a2) != 3)
  {
    v14 = 0x6B63616C42;
    v15 = 0xE500000000000000;
  }

  if (HIBYTE(a2) != 2)
  {
    v13 = v14;
    v12 = v15;
  }

  if (HIBYTE(a2))
  {
    v7 = 6579538;
    v11 = 0xE300000000000000;
  }

  if (HIBYTE(a2) <= 1u)
  {
    v16 = v7;
  }

  else
  {
    v16 = v13;
  }

  if (HIBYTE(a2) <= 1u)
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  if (v9 == v16 && v10 == v17)
  {

LABEL_32:

    LODWORD(v6) = HIBYTE(v5);
    return v5 & 1u | (v6 << 8);
  }

  v18 = sub_100037558();

  if (v18)
  {
    goto LABEL_32;
  }

  if (!(a4 >> 62))
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_35;
    }

LABEL_45:
    v41 = [objc_opt_self() mainScreen];
    [v41 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v54.origin.x = v43;
    v54.origin.y = v45;
    v54.size.width = v47;
    v54.size.height = v49;
    CGRectGetHeight(v54);
    return v5 & 1u | (v6 << 8);
  }

  result = sub_1000374A8();
  if (!result)
  {
    goto LABEL_45;
  }

LABEL_35:
  v50 = v5;
  if (result >= 1)
  {
    v20 = 0;
    v51 = a4 & 0xC000000000000001;
    v52 = result;
    v53 = a4;
    do
    {
      if (v51)
      {
        v21 = sub_1000373C8();
      }

      else
      {
        v21 = *(a4 + 8 * v20 + 32);
      }

      v22 = *(v21 + 56);
      v23 = *(v21 + 64);
      v24 = *(v21 + 136);
      v25 = *(v21 + 144);
      v26 = *(v21 + 96);
      v27 = v6;
      v28 = sub_100035598(v26, v6);
      v30 = v29;
      v32 = v31;
      v33 = *(v21 + 104);
      v34 = *(v21 + 112);
      v35 = *(v21 + 128);
      v36 = *(v21 + 129);
      type metadata accessor for RhizomeLayoutSpec();
      v37 = swift_allocObject();
      *(v37 + 16) = 0u;
      *(v37 + 32) = 0u;
      *(v37 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v37 + 56) = v22;
      *(v37 + 64) = v23;
      *(v37 + 136) = v24;
      *(v37 + 144) = v25;
      *(v37 + 72) = v28;
      *(v37 + 80) = v30;
      *(v37 + 88) = v32;
      *(v37 + 104) = v33;
      swift_unknownObjectWeakAssign();
      *(v37 + 96) = v26;
      *(v37 + 120) = 0;
      *(v37 + 128) = v35;
      *(v37 + 129) = v36;
      *(v37 + 112) = v34;
      *(v37 + 16) = v22 * v23;
      *(v37 + 24) = v24 - v22 * 0.5;
      *(v37 + 32) = v25 - v23 * 0.5;
      *(v37 + 40) = v22;
      *(v37 + 48) = v23;
      v38 = v28;
      v39 = v30;
      v40 = v32;

      sub_1000370E8();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      ++v20;
      sub_100037148();

      a4 = v53;
      v6 = v27;
    }

    while (v52 != v20);
    LOBYTE(v5) = v50;
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001083C(int a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  LODWORD(v7) = a1;
  v8 = _swiftEmptyArrayStorage;
  v118 = _swiftEmptyArrayStorage;
  sub_100012D8C(a1 & 0xFFFFFF01, a2, a3);
  v112 = v9;
  v10 = sub_100019AE4(2uLL);
  v117 = _swiftEmptyArrayStorage;
  v104 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_106;
  }

  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = _swiftEmptyArrayStorage;
  v114 = v6;
  if (v11)
  {
    v13 = v6;
    v119[0] = _swiftEmptyArrayStorage;
    sub_100014B30(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_108;
    }

    v108 = v10;
    v110 = v7;
    v4 = 0;
    v14 = v119[0];
    v15 = v6;
    v16 = v6 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v6 = sub_1000373C8();
      }

      else
      {
        v6 = *(v15 + 8 * v4 + 32);
      }

      v17 = *(v6 + 80);
      v18 = *(v6 + 88);
      v19 = *(v6 + 72);
      v20 = v17;
      v21 = v18;

      v119[0] = v14;
      v3 = *(v14 + 2);
      v22 = *(v14 + 3);
      v8 = v3 + 1;
      if (v3 >= v22 >> 1)
      {
        v6 = v119;
        sub_100014B30((v22 > 1), v3 + 1, 1);
        v14 = v119[0];
      }

      ++v4;
      *(v14 + 2) = v8;
      v23 = &v14[24 * v3];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      *(v23 + 6) = v21;
      v15 = v114;
    }

    while (v11 != v4);
    v12 = _swiftEmptyArrayStorage;
    LODWORD(v7) = v110;
    v10 = v108;
    v24 = v108 + 3;
    if (v108 + 3 < 0)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
    v24 = v10 + 3;
    if (v10 + 3 < 0)
    {
      goto LABEL_86;
    }
  }

  v107 = v7 & 0xFFFFFF00;
  if (!v24)
  {
    goto LABEL_71;
  }

  v25 = 0;
  v11 = 0x8000000100039F30;
  v105 = BYTE1(v7);
  v106 = v24;
  do
  {
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_103;
    }

    v26 = __OFADD__(v112++, 1);
    if (v26)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      v11 = sub_1000374A8();
      goto LABEL_3;
    }

    v109 = v27;
    v111 = v14;
    v116[0] = v114;

    v6 = v116;
    sub_10000BA28(v12);
    v8 = v116[0];
    v116[0] = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      v4 = sub_1000374A8();
      if (!v4)
      {
LABEL_41:
        v6 = _swiftEmptyArrayStorage;
        goto LABEL_42;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_41;
      }
    }

    v28 = 0;
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v29 = sub_1000373C8();
        v3 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v28 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        v29 = *(v8 + 8 * v28 + 32);

        v3 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }
      }

      v30 = *(v29 + 96);
      if (v30 > 0x10)
      {
        v6 = 0xED00007973696144;
      }

      else
      {
        v31 = 1 << v30;
        if ((v31 & 0x1F000) != 0)
        {
          v6 = 0xE800000000000000;
        }

        else
        {
          if ((v31 & 0xF0) != 0)
          {

LABEL_21:
            sub_1000373F8();
            v7 = *(v116[0] + 16);
            sub_100037428();
            sub_100037438();
            v6 = v116;
            sub_100037408();
            goto LABEL_22;
          }

          if ((v31 & 0xF00) != 0)
          {
            v6 = 0xE900000000000079;
          }

          else
          {
            v6 = 0xED00007973696144;
          }
        }
      }

      LODWORD(v7) = sub_100037558();

      if (v7)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v28;
    }

    while (v3 != v4);
    v6 = v116[0];
LABEL_42:

    if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v8 = sub_1000374A8();
    }

    else
    {
      v8 = *(v6 + 16);
    }

    if (v8 >= 2)
    {
      v33 = sub_10001B320();
      goto LABEL_49;
    }

    v32 = sub_100019AE4(0x11uLL);
    if (v32 > 0x10)
    {
      goto LABEL_105;
    }

    v33 = *(&off_1000450E0 + v32 + 32);
LABEL_49:
    if (v33 > 0x10u || ((1 << v33) & 0x1F000) != 0 || ((1 << v33) & 0xF0) == 0)
    {
      v34 = sub_100037558();
    }

    else
    {
      v34 = 1;
    }

    v35 = sub_100035A88(v33, v14, v105);
    v37 = v36;
    v39 = v38;
    v40 = v35;
    v41 = v37;
    v7 = v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = v111;
    }

    else
    {
      v42 = sub_100012FC4(0, *(v111 + 2) + 1, 1, v111);
    }

    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_100012FC4((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v3 = v42;
    v45 = &v42[24 * v44];
    *(v45 + 4) = v40;
    *(v45 + 5) = v41;
    *(v45 + 6) = v7;
    v10 = qword_10004AE38;
    v46 = v40;
    v4 = v41;
    v8 = v7;
    if (v10 != -1)
    {
      swift_once();
    }

    v5 = *&qword_10004D310;
    v47 = sub_100006024(0, v107 | v33, v46, v4, v8, v119, *&qword_10004D310);
    if (v119[1])
    {
      v48 = *&v119[7];
      v49 = *&v119[8];
      v47 = sub_10000FE6C(v119);
      if (v34)
      {
        goto LABEL_62;
      }

LABEL_64:
      sub_10001B650(v47, v49);
    }

    else
    {
      v48 = 0.0;
      v49 = 0.0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_62:
      sub_10001B9D8(0, v48, v49);
    }

    v52 = v50;
    v53 = v51;
    sub_10000FBE8(v33, v50, v51);
    v55 = v54;
    type metadata accessor for RhizomeLayoutSpec();
    v56 = swift_allocObject();
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v56 + 56) = v48;
    *(v56 + 64) = v49;
    *(v56 + 136) = v52;
    *(v56 + 144) = v53;
    *(v56 + 72) = v46;
    *(v56 + 80) = v4;
    *(v56 + 88) = v8;
    *(v56 + 104) = v55;
    swift_unknownObjectWeakAssign();
    *(v56 + 96) = v33;
    *(v56 + 120) = v112;
    *(v56 + 128) = 0;
    *(v56 + 129) = (v34 & 1) == 0;
    *(v56 + 112) = v5;
    *(v56 + 16) = v48 * v49;
    *(v56 + 24) = v52 - v48 * 0.5;
    *(v56 + 32) = v53 - v49 * 0.5;
    *(v56 + 40) = v48;
    *(v56 + 48) = v49;

    sub_1000370E8();
    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100037128();
    }

    v6 = &v117;
    sub_100037148();

    v12 = v117;
    v25 = v109;
    v14 = v3;
  }

  while (v109 != v106);
LABEL_71:

  if (qword_10004ADB8 != -1)
  {
    swift_once();
  }

  v57 = sub_100036F68();
  sub_100002684(v57, qword_10004D258);
  v13 = sub_100036F48();
  LOBYTE(v3) = sub_1000371B8();
  v4 = &unk_100039000;
  if (!os_log_type_enabled(v13, v3))
  {
    goto LABEL_77;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v116[0] = v11;
  *v10 = 134218242;
  if (v12 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000374A8())
  {
    *(v10 + 4) = i;
    *(v10 + 12) = 2080;
    type metadata accessor for RhizomeLayoutSpec();

    v59 = sub_100037118();
    v61 = v60;

    v62 = sub_10000BEB8(v59, v61, v116);

    *(v10 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v13, v3, "Offscreen layout specs before refinement. Count: %ld specs: %s", v10, 0x16u);
    sub_1000039EC(v11);

LABEL_77:

    v63 = qword_10004ADE0;

    if (v63 != -1)
    {
      swift_once();
    }

    v5 = *&qword_10004D2B8;
    v64 = -*&qword_10004D2B8;
    if (qword_10004ADF0 != -1)
    {
      v103 = -*&qword_10004D2B8;
      swift_once();
      v64 = v103;
    }

    v65 = sub_1000258CC(v12, 3, v64, *&qword_10004D2C8 * -2.0);

    swift_beginAccess();
    v117 = v65;

    v8 = sub_100036F48();
    LOBYTE(v3) = sub_1000371B8();
    if (os_log_type_enabled(v8, v3))
    {
      v66 = swift_slowAlloc();
      v12 = v65;
      v11 = swift_slowAlloc();
      v115 = v11;
      *v66 = *(v4 + 96);
      v10 = v114;
      v67 = v65 >> 62 ? sub_1000374A8() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v66 + 4) = v67;
      *(v66 + 12) = 2080;
      type metadata accessor for RhizomeLayoutSpec();

      v68 = sub_100037118();
      v70 = v69;

      v71 = sub_10000BEB8(v68, v70, &v115);

      *(v66 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v8, v3, "Offscreen layout specs after refinement.  Count: %ld specs: %s", v66, 0x16u);
      sub_1000039EC(v11);
    }

    else
    {
LABEL_87:

      v10 = v114;
    }

    sub_10000BA28(v72);
    if (v104)
    {
      v74 = sub_1000374A8();
      v73 = v10;
      v13 = v74;
      if (!v74)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v73 = v10;
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_100;
      }
    }

    if (v13 >= 1)
    {
      break;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

  v75 = 0;
  v113 = v73 & 0xC000000000000001;
  do
  {
    if (v113)
    {
      v76 = sub_1000373C8();
    }

    else
    {
      v76 = *(v73 + 8 * v75 + 32);
    }

    v77 = *(v76 + 136);
    v78 = v5 + *(v76 + 144);
    v79 = *(v76 + 56);
    v80 = *(v76 + 64);
    v82 = *(v76 + 72);
    v81 = *(v76 + 80);
    v83 = *(v76 + 88);
    v84 = *(v76 + 96);
    v85 = *(v76 + 104);
    v86 = *(v76 + 112);
    Strong = swift_unknownObjectWeakLoadStrong();
    v88 = *(v76 + 120);
    type metadata accessor for RhizomeLayoutSpec();
    v89 = swift_allocObject();
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v89 + 56) = v79;
    *(v89 + 64) = v80;
    *(v89 + 136) = v77;
    *(v89 + 144) = v78;
    *(v89 + 72) = v82;
    *(v89 + 80) = v81;
    *(v89 + 88) = v83;
    *(v89 + 104) = v85;
    swift_unknownObjectWeakAssign();
    v90 = v82;
    v91 = v81;
    v92 = v83;

    *(v89 + 96) = v84;
    *(v89 + 120) = v88;
    *(v89 + 128) = 256;
    *(v89 + 112) = v86;
    *(v89 + 16) = v79 * v80;
    *(v89 + 24) = v77 - v79 * 0.5;
    *(v89 + 32) = v78 - v80 * 0.5;
    *(v89 + 40) = v79;
    *(v89 + 48) = v80;

    sub_1000370E8();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100037128();
    }

    ++v75;
    sub_100037148();

    v73 = v114;
  }

  while (v13 != v75);
LABEL_100:
  v93 = [objc_opt_self() mainScreen];
  [v93 bounds];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  v120.origin.x = v95;
  v120.origin.y = v97;
  v120.size.width = v99;
  v120.size.height = v101;
  CGRectGetHeight(v120);

  return v107 | 1;
}

CGFloat sub_1000115CC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) / 3.0;
  qword_10004D2B8 = *&result;
  return result;
}

CGFloat sub_100011660()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) / 7.0;
  qword_10004D2C0 = *&result;
  return result;
}

double sub_1000116F4()
{
  if (qword_10004ADE8 != -1)
  {
    swift_once();
  }

  result = *&qword_10004D2C0 * 0.5;
  *&qword_10004D2C8 = *&qword_10004D2C0 * 0.5;
  return result;
}

void sub_100011794(uint64_t a1, double (*a2)(double, double, double, double), double *a3)
{
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a3 = a2(v7, v9, v11, v13);
}