uint64_t sub_165C()
{
  v0 = sub_8DCC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_8DBC();
  v3 = sub_8D8C();

  if (v3)
  {
    if (sub_1804(v3))
    {
      v4 = sub_8DEC();

      v5 = sub_1F90(1701667182, 0xE400000000000000, v4);

      if (v5)
      {
        result = sub_2A90(v5);
        if (result)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            sub_924C();
          }

          else
          {
            if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }

            v7 = *(v5 + 32);
          }

          v8 = sub_8DDC();
          v10 = v9;

          if (v10)
          {
            sub_33FC(&qword_106B0, &qword_98D0);
            v11 = sub_36D0();
            v11[1] = xmmword_9660;
            *(v11 + 7) = &type metadata for String;
            *(v11 + 4) = v8;
            *(v11 + 5) = v10;
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }

    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_14:
  sub_36E8();

  return v12(v11);
}

uint64_t sub_1804(uint64_t a1)
{
  v2 = sub_915C();
  v3 = sub_36A4(v2);
  v70 = v4;
  v71 = v3;
  v6 = *(v5 + 64);
  (__chkstk_darwin)();
  v69 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_912C();
  v8 = sub_36A4(v73);
  v68 = v9;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v8);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v72 = &v66[-v15];
  v16 = sub_33FC(&qword_106B8, &qword_98D8);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - 8);
  v19 = &v66[-v18];
  v20 = sub_913C();
  v21 = sub_36A4(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v66[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_33FC(&qword_106C0, &qword_98E0);
  v29 = *(*(v28 - 1) + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v66[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v34 = &v66[-v33];
  if (qword_10440 != -1)
  {
    swift_once();
  }

  *v27 = a1;
  (*(v23 + 104))(v27, enum case for RRQuery.usoReference(_:), v20);
  v35 = sub_916C();
  sub_3444(v19, 1, 1, v35);

  sub_90BC();
  sub_34A4(v19, &qword_106B8, &qword_98D8);
  (*(v23 + 8))(v27, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_3550(v34, v32);
    v36 = sub_917C();
    v37 = *(v36 - 8);
    if ((*(v37 + 88))(v32, v36) == enum case for RRResult.foundMatch(_:))
    {
      (*(v37 + 96))(v32, v36);
      v38 = v68;
      v40 = v72;
      v39 = v73;
      (*(v68 + 32))(v72, v32, v73);
      if (qword_10480 != -1)
      {
        sub_3678();
      }

      v41 = sub_910C();
      sub_346C(v41, static Logger.suggestions);
      (*(v38 + 16))(v14, v40, v39);

      v42 = sub_90EC();
      v43 = sub_921C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v74 = a1;
        v75 = v45;
        *v44 = 136315394;
        sub_8DFC();
        v67 = v43;

        v46 = sub_91AC();
        v48 = sub_2AB4(v46, v47, &v75);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        sub_35C0(&qword_106C8, 255, &type metadata accessor for RRCandidate);
        v49 = sub_928C();
        v51 = v50;
        v52 = sub_36F4();
        v28(v52, v73);
        v53 = sub_2AB4(v49, v51, &v75);
        v39 = v73;

        *(v44 + 14) = v53;
        _os_log_impl(&dword_0, v42, v67, "#ReferenceResolution: found SRR match for %s, match=%s", v44, 0x16u);
        swift_arrayDestroy();
        sub_36B8();
        v40 = v72;
        sub_36B8();
      }

      else
      {

        v63 = sub_36F4();
        v28(v63, v39);
      }

      v64 = v69;
      sub_911C();
      v62 = sub_914C();
      (*(v70 + 8))(v64, v71);
      v28(v40, v39);
      goto LABEL_17;
    }

    (*(v37 + 8))(v32, v36);
  }

  if (qword_10480 != -1)
  {
    sub_3678();
  }

  v54 = sub_910C();
  sub_346C(v54, static Logger.suggestions);

  v55 = sub_90EC();
  v56 = sub_921C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = a1;
    v75 = v58;
    *v57 = 136315138;
    sub_8DFC();

    v59 = sub_91AC();
    v61 = sub_2AB4(v59, v60, &v75);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "#ReferenceResolution: found no SRR match for %s", v57, 0xCu);
    sub_3504(v58);
    sub_36B8();
    sub_36B8();
  }

  v62 = 0;
LABEL_17:
  sub_34A4(v34, &qword_106C0, &qword_98E0);
  return v62;
}

uint64_t sub_1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_3024(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1FE0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_309C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_2054()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_2088()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3670;

  return sub_1648();
}

uint64_t sub_212C()
{
  v0 = sub_8DAC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_8D9C();
  v3 = sub_8D8C();

  if (v3)
  {
    if (sub_1804(v3))
    {

      sub_33FC(&qword_106B0, &qword_98D0);
      v4 = sub_36D0();
      *(v4 + 16) = xmmword_9660;
      *(v4 + 56) = &type metadata for Bool;
      *(v4 + 32) = 1;
    }

    else
    {
      sub_33FC(&qword_106B0, &qword_98D0);
      v4 = sub_36D0();
      *(v4 + 16) = xmmword_9660;
      *(v4 + 56) = &type metadata for Bool;
      *(v4 + 32) = 0;
    }
  }

  else
  {
    if (qword_10480 != -1)
    {
      sub_3678();
    }

    v5 = sub_910C();
    sub_346C(v5, static Logger.suggestions);
    v6 = sub_90EC();
    v7 = sub_921C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#ResolveGenericReferenceEntity: Unable to create agent entity", v8, 2u);
      sub_36B8();
    }

    sub_33FC(&qword_106B0, &qword_98D0);
    v4 = sub_36D0();
    *(v4 + 16) = xmmword_9660;
    *(v4 + 56) = &type metadata for Bool;
    *(v4 + 32) = 0;
  }

  sub_36E8();

  return v9(v4);
}

uint64_t sub_234C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3670;

  return sub_2118();
}

uint64_t sub_23F0()
{
  v12 = v0;
  if (qword_10480 != -1)
  {
    sub_3678();
  }

  v1 = *(v0 + 16);
  v2 = sub_910C();
  sub_346C(v2, static Logger.suggestions);

  v3 = sub_90EC();
  v4 = sub_921C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2AB4(*(v5 + 16), *(v5 + 24), &v11);
    *(v6 + 12) = 1024;
    *(v6 + 14) = 1;
    _os_log_impl(&dword_0, v3, v4, "resolved parameter %s to %{BOOL}d", v6, 0x12u);
    sub_3504(v7);
    sub_36B8();
    sub_36B8();
  }

  sub_33FC(&qword_106B0, &qword_98D0);
  v8 = sub_36D0();
  *(v8 + 16) = xmmword_9660;
  *(v8 + 56) = &type metadata for Bool;
  *(v8 + 32) = 1;
  sub_36E8();

  return v9();
}

uint64_t sub_258C()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_25E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2678;

  return sub_23D8();
}

uint64_t sub_2678(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  sub_36E8();

  return v4(a1);
}

uint64_t sub_2920()
{
  sub_90DC();
  result = sub_90CC();
  qword_10A00 = result;
  return result;
}

uint64_t sub_2954(char a1, char a2)
{
  v3 = sub_4090(a1);
  v5 = v4;
  if (v3 == sub_4090(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_929C();
  }

  return v8 & 1;
}

uint64_t sub_29D8(uint64_t a1, char a2)
{
  sub_4090(a2);
  sub_91BC();
}

Swift::Int sub_2A2C(uint64_t a1, char a2)
{
  sub_92AC();
  sub_4090(a2);
  sub_91BC();

  return sub_92BC();
}

uint64_t sub_2A90(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

uint64_t sub_2AB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2B78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_3608(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3504(v11);
  return v7;
}

unint64_t sub_2B78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2C78(a5, a6);
    *a1 = v9;
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
    result = sub_925C();
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

char *sub_2C78(uint64_t a1, unint64_t a2)
{
  v4 = sub_2CC4(a1, a2);
  sub_2DDC(&off_C7B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2CC4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_91DC())
  {
    result = sub_2EC0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_923C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_925C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2DDC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2F30(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2EC0(uint64_t a1, uint64_t a2)
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

  sub_33FC(&qword_106D0, &qword_98E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_106D0, &qword_98E8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_3024(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_92AC();
  sub_91BC();
  v6 = sub_92BC();

  return sub_3124(a1, a2, v6);
}

unint64_t sub_309C(char a1)
{
  v3 = *(v1 + 40);
  sub_92AC();
  sub_4090(a1);
  sub_91BC();

  v4 = sub_92BC();

  return sub_31D8(a1, v4);
}

unint64_t sub_3124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_929C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_31D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ELL;
      v8 = &unk_9CE0;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000026;
          v8 = "messages_ReadItLongMessageHint";
          break;
        case 2:
          v7 = 0xD000000000000012;
          v8 = "ultilingualMessageHint";
          break;
        case 3:
          v7 = 0xD000000000000025;
          v8 = "messages_ReplyHint";
          break;
        case 4:
          v7 = 0xD000000000000013;
          v8 = "ltilingualMessageHint";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ELL;
      v11 = &unk_9CE0;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000026;
          v11 = "messages_ReadItLongMessageHint";
          break;
        case 2:
          v10 = 0xD000000000000012;
          v11 = "ultilingualMessageHint";
          break;
        case 3:
          v10 = 0xD000000000000025;
          v11 = "messages_ReplyHint";
          break;
        case 4:
          v10 = 0xD000000000000013;
          v11 = "ltilingualMessageHint";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_929C();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_33FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_346C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_34A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_33FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3504(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3550(uint64_t a1, uint64_t a2)
{
  v4 = sub_33FC(&qword_106C0, &qword_98E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_3608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3678()
{

  return swift_once();
}

uint64_t sub_36B8()
{
}

uint64_t sub_36D0()
{

  return swift_allocObject();
}

Swift::Int sub_3708(char a1)
{
  sub_92AC();
  sub_38F0(a1);
  sub_91BC();

  return sub_92BC();
}

uint64_t sub_376C()
{
  v0 = sub_8D7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = AFSystemRootDirectory();
  sub_919C();

  sub_8D3C();

  sub_8D5C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_8D5C();
  return (v9)(v7, v0);
}

unint64_t sub_38F0(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_399C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_33FC(&qword_106D8, &qword_9920);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_9660;
  sub_8F3C();
  v2 = sub_8F2C();
  IsConciseResolver = type metadata accessor for IsConciseResolver();
  v4 = swift_allocObject();
  *(v4 + 16) = 0x7369636E6F437369;
  *(v4 + 24) = 0xE900000000000065;
  v7 = IsConciseResolver;
  v8 = sub_3AA0();
  *&v6 = v4;
  sub_3AF8(&v6, v1 + 48);
  *(v1 + 32) = 0x7369636E6F437369;
  *(v1 + 40) = 0xE900000000000065;
  *(v1 + 88) = v2;
  return v1;
}

unint64_t sub_3AA0()
{
  result = qword_106E0;
  if (!qword_106E0)
  {
    type metadata accessor for IsConciseResolver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106E0);
  }

  return result;
}

uint64_t sub_3AF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3B10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_C7E0;
  v6._object = a2;
  v4 = sub_927C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3B68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3B10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_3B98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_38F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_3BEC()
{
  sub_33FC(&qword_106E8, &qword_9928);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9910;
  *(inited + 32) = 0;
  *(inited + 40) = &_swiftEmptyArrayStorage;
  *(inited + 48) = 1;
  *(inited + 56) = &_swiftEmptyArrayStorage;
  *(inited + 64) = 2;
  *(inited + 72) = &_swiftEmptyArrayStorage;
  *(inited + 80) = 3;
  *(inited + 88) = &_swiftEmptyArrayStorage;
  *(inited + 96) = 4;
  *(inited + 104) = &_swiftEmptyArrayStorage;
  sub_33FC(&qword_106F0, &unk_9930);
  sub_3CB8();
  result = sub_918C();
  qword_10A08 = result;
  return result;
}

unint64_t sub_3CB8()
{
  result = qword_106F8;
  if (!qword_106F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationHints(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceNotificationHints(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x3E70);
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

uint64_t sub_3EBC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_3ED4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3EE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3F8C()
{
  result = qword_10700;
  if (!qword_10700)
  {
    sub_3FF0(&qword_10708, ">\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10700);
  }

  return result;
}

uint64_t sub_3FF0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_403C()
{
  result = qword_10710;
  if (!qword_10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10710);
  }

  return result;
}

uint64_t sub_4094(char a1)
{
  v2 = sub_8E4C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_8548(0, &qword_10968, INSendMessageIntent_ptr);
  sub_8E3C();
  *(swift_allocObject() + 16) = a1;
  return sub_8E5C();
}

uint64_t sub_4164(uint64_t a1, char a2)
{
  v3 = sub_33FC(&qword_10970, &qword_9C68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_8E8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_8E7C();
  if (sub_8100(v6, 1, v7) == 1)
  {
    sub_8418(v6, &qword_10970, &qword_9C68);
    return 0;
  }

  (*(v8 + 32))(v14, v6, v7);
  (*(v8 + 16))(v12, v14, v7);
  if ((*(v8 + 88))(v12, v7) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v20 = *(v8 + 8);
    v20(v14, v7);
    v20(v12, v7);
    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = *v12;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    (*(v8 + 8))(v14, v7);
    return 0;
  }

  v17 = sub_8470(v16, &selRef_attachments, &qword_10978, INSendMessageAttachment_ptr);
  if (v17)
  {
    v18 = sub_2A90(v17);

    (*(v8 + 8))(v14, v7);
    result = v18 > 0;
    if (a2)
    {
      return result;
    }

    return result ^ 1;
  }

  (*(v8 + 8))(v14, v7);

  result = 0;
  if ((a2 & 1) == 0)
  {
    return result ^ 1;
  }

  return result;
}

uint64_t sub_444C()
{
  v0 = sub_8EAC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_8EBC();
  qword_10718 = result;
  return result;
}

uint64_t sub_452C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_33FC(&qword_109C8, &qword_9CA0);
  v4 = swift_allocObject();
  *a2 = v4;
  return sub_502C(a1, (v4 + 16));
}

uint64_t sub_458C()
{
  v0 = sub_8548(0, &qword_109A0, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_9C88, 0, v0);
}

uint64_t sub_45EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_460C, 0, 0);
}

uint64_t sub_460C()
{
  v57 = v0;
  if (qword_10480 != -1)
  {
LABEL_39:
    sub_3678();
  }

  v1 = sub_910C();
  sub_346C(v1, static Logger.suggestions);
  v2 = sub_90EC();
  v3 = sub_920C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#MessagesOwnerDefinitionFactory: running contactsTransformer", v4, 2u);
    sub_36B8();
  }

  v5 = *(v0 + 24);

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *(v0 + 24);
  v9 = sub_8470(v7, &selRef_recipients, &qword_109C0, INPerson_ptr);
  if (!v9)
  {

    goto LABEL_23;
  }

  v10 = v9;
  v11 = sub_2A90(v9);
  if (v11 <= 0 || v11 > 3)
  {

LABEL_23:
    v23 = *(v0 + 16);
    v24 = &enum case for IntentParameter.ignore(_:);
    goto LABEL_24;
  }

  v12 = v11;
  v54 = v7;
  v55 = v0;
  v13 = sub_2A8C(v10);
  v14 = 0;
  v15 = v10 & 0xC000000000000001;
  v0 = v12;
  while (v13 != v14)
  {
    if (v15)
    {
      v16 = sub_924C();
    }

    else
    {
      if (v14 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_38;
      }

      v16 = *(v10 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = sub_84E4(v16);
    v20 = v19;

    if (v20)
    {

      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      ++v14;
      if (v21)
      {
        continue;
      }
    }

    v0 = v55;
    v22 = *(v55 + 24);

    goto LABEL_23;
  }

  v56 = &_swiftEmptyArrayStorage;
  sub_8230(0, v0, 0);
  v30 = 0;
  v31 = &_swiftEmptyArrayStorage;
  do
  {
    if (v15)
    {
      v32 = sub_924C();
    }

    else
    {
      v32 = *(v10 + 8 * v30 + 32);
    }

    v33 = v32;
    v34 = [v32 displayName];
    v35 = sub_919C();
    v37 = v36;

    v56 = v31;
    v39 = v31[2];
    v38 = v31[3];
    if (v39 >= v38 >> 1)
    {
      sub_8230((v38 > 1), v39 + 1, 1);
      v31 = v56;
    }

    ++v30;
    v31[2] = v39 + 1;
    v40 = &v31[2 * v39];
    v40[4] = v35;
    v40[5] = v37;
  }

  while (v0 != v30);
  v0 = v55;
  v41 = *(v55 + 24);

  v42 = v41;

  v43 = sub_90EC();
  v44 = sub_921C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v55 + 24);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v56 = v48;
    *v46 = 136315394;
    v49 = sub_91FC();
    v51 = sub_2AB4(v49, v50, &v56);

    *(v46 + 4) = v51;
    v0 = v55;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v54;
    *v47 = v54;
    v52 = v45;
    _os_log_impl(&dword_0, v43, v44, "#MessagesOwnerDefinitionFactory: returning contactNames %s from intent %@", v46, 0x16u);
    sub_8418(v47, &qword_109A8, &qword_9C80);
    sub_36B8();
    sub_3504(v48);
    sub_36B8();
    sub_36B8();
  }

  v23 = *(v0 + 16);
  v53 = *(v0 + 24);
  v23[3] = sub_33FC(&qword_109B0, &qword_9C90);

  *v23 = v31;
  v24 = &enum case for IntentParameter.directAssignment(_:);
LABEL_24:
  v25 = *v24;
  v26 = sub_8EFC();
  sub_85D0(v26);
  (*(v27 + 104))(v23, v25);
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_4AE8()
{
  v0 = sub_8548(0, &qword_109A0, INIntent_ptr);

  return static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)(&unk_9C78, 0, v0);
}

uint64_t sub_4B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4B68, 0, 0);
}

uint64_t sub_4B68()
{
  v42 = v0;
  if (qword_10480 != -1)
  {
    sub_3678();
  }

  v1 = sub_910C();
  sub_346C(v1, static Logger.suggestions);
  v2 = sub_90EC();
  v3 = sub_920C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#MessagesOwnerDefinitionFactory: running groupNameTransformer", v4, 2u);
    sub_36B8();
  }

  v5 = *(v0 + 24);

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v24 = *(v0 + 16);
    v30 = enum case for IntentParameter.ignore(_:);
LABEL_11:
    v31 = sub_8EFC();
    sub_85D0(v31);
    (*(v32 + 104))(v24, v30);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(v0 + 24);
  v9 = [v7 speakableGroupName];
  v10 = *(v0 + 24);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v13 = v11;
    v14 = sub_90EC();
    v15 = sub_921C();

    if (os_log_type_enabled(v14, v15))
    {
      v39 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v16 = 136315394;
      v18 = [v13 spokenPhrase];
      v19 = sub_919C();
      v21 = v20;

      v22 = sub_2AB4(v19, v21, &v41);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v7;
      *v17 = v7;
      v23 = v39;
      _os_log_impl(&dword_0, v14, v15, "#MessagesOwnerDefinitionFactory: returning groupName %s from intent %@", v16, 0x16u);
      sub_8418(v17, &qword_109A8, &qword_9C80);
      sub_36B8();
      sub_3504(v40);
      sub_36B8();
      sub_36B8();
    }

    v24 = *(v0 + 16);
    v25 = *(v0 + 24);
    v26 = [v13 spokenPhrase];
    v27 = sub_919C();
    v29 = v28;

    v24[3] = &type metadata for String;
    *v24 = v27;
    v24[1] = v29;
    v30 = enum case for IntentParameter.directAssignment(_:);
    goto LABEL_11;
  }

  v33 = *(v0 + 16);
  v34 = enum case for IntentParameter.ignore(_:);
  v35 = sub_8EFC();
  sub_85D0(v35);
  (*(v36 + 104))(v33, v34);

LABEL_13:
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_4EF8()
{
  sub_8F3C();
  if (qword_10460 != -1)
  {
    swift_once();
  }

  sub_83B4(&unk_10A10, v1);
  result = sub_8F1C();
  qword_10748 = result;
  return result;
}

uint64_t sub_4F90()
{
  sub_8F3C();
  if (qword_10468 != -1)
  {
    swift_once();
  }

  sub_83B4(&unk_10A38, v1);
  result = sub_8F1C();
  qword_10750 = result;
  return result;
}

uint64_t sub_502C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3608(a1, v22);
  sub_33FC(&qword_109D0, &qword_9CA8);
  if (swift_dynamicCast())
  {
    v3 = v21;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v3[2];
  if (v4)
  {
    v19 = a2;
    v5 = &_swiftEmptyArrayStorage;
    v6 = (v3 + 4);
    while (1)
    {
      sub_3608(v6, v22);
      sub_3608(v22, &v21);
      sub_8548(0, &qword_109C0, INPerson_ptr);
      if (swift_dynamicCast())
      {
        sub_84E4(v20);
        if (v7)
        {

          v8 = [v20 displayName];
          v9 = sub_919C();
          v11 = v10;

          sub_3504(v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_8128(0, *(v5 + 2) + 1, 1, v5);
          }

          v13 = *(v5 + 2);
          v12 = *(v5 + 3);
          if (v13 >= v12 >> 1)
          {
            v5 = sub_8128((v12 > 1), v13 + 1, 1, v5);
          }

          *(v5 + 2) = v13 + 1;
          v14 = &v5[16 * v13];
          *(v14 + 4) = v9;
          *(v14 + 5) = v11;
          goto LABEL_15;
        }
      }

      sub_3504(v22);
LABEL_15:
      v6 += 32;
      if (!--v4)
      {

        a2 = v19;
        goto LABEL_18;
      }
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_18:
  if (*(v5 + 2))
  {
    v15 = *(v5 + 4);
    v16 = *(v5 + 5);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_33FC(&qword_109D8, &qword_9CB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_9660;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  result = sub_33FC(&qword_109E0, &qword_9CB8);
  a2[3] = result;
  *a2 = v17;
  return result;
}

uint64_t sub_52A0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_8ECC();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_5364, 0, 0);
}

uint64_t sub_5364()
{
  if (qword_10450 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = qword_10718;
  v0[13] = sub_8EAC();
  v0[14] = sub_836C(&qword_10938, 255, &type metadata accessor for DomainOwner);
  v0[10] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_54E8;
  v5 = v0[21];

  return v7(v0 + 10);
}

uint64_t sub_54E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(v2 + 216) = a1;

  sub_3504((v2 + 80));

  return _swift_task_switch(sub_55F0, 0, 0);
}

uint64_t sub_55F0()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  sub_33FC(&qword_10940, &qword_9C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9AA0;
  sub_909C();
  v7 = sub_8EDC();
  v0[18] = v7;
  v0[19] = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes);
  v8 = sub_8024(v0 + 15);
  (*(*(v7 - 8) + 104))(v8, enum case for CoreSignalTypes.app(_:), v7);
  *(inited + 32) = sub_906C();
  *(inited + 40) = sub_905C();
  *(inited + 48) = sub_907C();
  *(inited + 56) = sub_908C();
  sub_5A28(v1, inited);
  swift_setDeallocating();
  sub_7F88();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x8000000000009FD0;
  (*(v3 + 104))(v2, enum case for DialogDetails.catId(_:), v4);
  *(swift_task_alloc() + 16) = v5;
  sub_901C();

  (*(v3 + 8))(v2, v4);
  v9 = 0;
  do
  {
    v10 = *(&off_C878 + v9++ + 32);
    v11 = 0xD00000000000001ELL;
    v12 = &unk_9CE0;
    switch(v10)
    {
      case 1:
        v11 = 0xD000000000000026;
        v12 = "messages_ReadItLongMessageHint";
        break;
      case 2:
        v11 = 0xD000000000000012;
        v12 = "ultilingualMessageHint";
        break;
      case 3:
        v11 = 0xD000000000000025;
        v12 = "messages_ReplyHint";
        break;
      case 4:
        v11 = 0xD000000000000013;
        v12 = "ltilingualMessageHint";
        break;
      default:
        break;
    }

    v13 = v0[27];
    v20._object = (v12 | 0x8000000000000000);
    v20._countAndFlagsBits = v11;
    sub_91CC(v20);

    *(swift_task_alloc() + 16) = v10;
    sub_900C();
  }

  while (v9 != 5);
  v14 = v0[27];
  v15 = v0[25];
  sub_33FC(&qword_10950, &qword_9C50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_9660;
  sub_902C();

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_5A28(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v4 = sub_8ECC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 0xD000000000000021;
  v8[1] = 0x800000000000A050;
  v9 = enum case for DialogDetails.catId(_:);
  v10 = v5[13];
  v10(v8, enum case for DialogDetails.catId(_:), v4);
  v13 = v2;
  v17 = v2;
  v18 = a2;
  v19 = v2;
  sub_901C();
  v11 = v5[1];
  v11(v8, v4);
  *v8 = 0xD000000000000023;
  v8[1] = 0x800000000000A0A0;
  v10(v8, v9, v4);
  v15 = v13;
  v16 = v14;
  sub_901C();

  return (v11)(v8, v4);
}

uint64_t sub_5C34(void *a1, uint64_t a2)
{
  v54 = a2;
  v3 = a1[5];
  v53 = *(a1 + 3);
  sub_7FE0(a1, v53);
  sub_33FC(&qword_10958, &qword_9C58);
  v4 = sub_8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_9AB0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for DeviceType.iPhone(_:), v4);
  v10(v9 + v6, enum case for DeviceType.iPad(_:), v4);
  v62 = v53;
  v63 = v3;
  sub_8024(v61);
  sub_8FBC();

  v11 = v63;
  v53 = v62;
  sub_7FE0(v61, v62);
  if (qword_10488 != -1)
  {
    swift_once();
  }

  v59 = v53;
  v60 = v11;
  sub_8024(v58);
  sub_8F9C();
  v13 = v59;
  v52 = v13 >> 64;
  v12 = v13;
  v49 = v59;
  v50 = sub_7FE0(v58, v59);
  *&v53 = &v47;
  v51 = *(v12 - 8);
  v14 = *(v51 + 64);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10940, &qword_9C48);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_9AA0;
  sub_909C();
  v17 = sub_8EDC();
  v56 = v17;
  v18 = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes);
  v57 = v18;
  v19 = sub_8024(v55);
  v20 = enum case for CoreSignalTypes.app(_:);
  v21 = *(*(v17 - 8) + 104);
  v21(v19, enum case for CoreSignalTypes.app(_:), v17);
  *(v16 + 32) = sub_906C();
  v56 = v17;
  v57 = v18;
  v22 = sub_8024(v55);
  v21(v22, v20, v17);
  *(v16 + 40) = sub_906C();
  v56 = v17;
  v57 = v18;
  v23 = sub_8024(v55);
  v21(v23, v20, v17);
  *(v16 + 48) = sub_906C();
  v56 = v17;
  v57 = v18;
  v24 = sub_8024(v55);
  v21(v24, v20, v17);
  *(v16 + 56) = sub_906C();
  v25 = v48;
  v26 = v49;
  sub_8E2C();

  (*(v51 + 8))(v25, v26);
  sub_3504(v58);
  sub_3504(v61);
  v27 = a1[3];
  v28 = a1[5];
  v29 = sub_7FE0(a1, v27);
  v30 = *(v27 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = sub_8E6C();
  *(&v62 + 1) = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_8024(v61);
  sub_4094(1);
  sub_8F8C();
  (*(v30 + 8))(v33, v27);
  sub_3504(v61);
  v34 = a1[3];
  v35 = a1[5];
  v36 = sub_7FE0(a1, v34);
  v37 = *(v34 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v41 = sub_8EEC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_9660;
  (*(v42 + 104))(v45 + v44, enum case for DeliveryVehicle.siriHelp(_:), v41);
  sub_8FDC();

  return (*(v37 + 8))(v40, v34);
}

uint64_t sub_638C(uint64_t a1, int a2)
{
  v28 = a2;
  *&v29 = sub_8D7C();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v26 = *(a1 + 24);
  v30 = a1;
  *&v27 = sub_7FE0(a1, v26);
  sub_33FC(&qword_10958, &qword_9C58);
  v8 = sub_8E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_9AB0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for DeviceType.iPhone(_:), v8);
  v14(v13 + v10, enum case for DeviceType.iPad(_:), v8);
  v15 = v28;
  v38 = v26;
  v39 = v7;
  sub_8024(v37);
  sub_8FBC();

  v16 = v39;
  v27 = v38;
  sub_7FE0(v37, v38);
  sub_376C();
  sub_8D6C();
  (*(v3 + 8))(v6, v29);
  v35 = v27;
  v36 = v16;
  sub_8024(v34);
  sub_8F9C();

  v17 = v36;
  v29 = v35;
  sub_7FE0(v34, v35);
  sub_38F0(v15);
  v32 = v29;
  v33 = v17;
  sub_8024(v31);
  sub_8FCC();

  v18 = v32;
  v19 = sub_7FE0(v31, v32);
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10448 != -1)
  {
    swift_once();
  }

  sub_1FE0(v15, qword_10A08);
  sub_8E2C();

  (*(v20 + 8))(v23, v18);
  sub_3504(v31);
  sub_3504(v34);
  sub_3504(v37);
  v24 = sub_399C(v15);
  sub_67E8(v24, v30);
}

uint64_t sub_67E8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_8084(a2, v14);
    v5 = v15;
    v6 = sub_7FE0(v14, v15);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(i - 16);
    v12 = *(i - 8);
    v13 = *(i + 40);
    sub_8FFC();
    (*(v7 + 8))(v10, v5);
    result = sub_3504(v14);
    i += 64;
  }

  return result;
}

uint64_t sub_6928(void *a1)
{
  sub_6FE0(a1);
  v2 = a1[3];
  v3 = sub_7FE0(a1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10498 != -1)
  {
    swift_once();
  }

  sub_8E0C();
  (*(v4 + 8))(v7, v2);
  v8 = a1[3];
  v9 = a1[5];
  v10 = sub_7FE0(a1, v8);
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_8E6C();
  v48 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_8024(v46);
  sub_4094(0);
  sub_8F8C();
  (*(v11 + 8))(v14, v8);
  sub_3504(v46);
  v15 = a1[3];
  v45[1] = a1[5];
  v45[0] = sub_7FE0(a1, v15);
  v45[2] = v45;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v45[0]);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v20 = sub_8EEC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_9AB0;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, enum case for DeliveryVehicle.siriHelp(_:), v20);
  v26(v25 + v22, enum case for DeliveryVehicle.siriAutoComplete(_:), v20);
  sub_8FDC();

  (*(v16 + 8))(v19, v15);
  v27 = a1[3];
  v28 = a1[5];
  v29 = sub_7FE0(a1, v27);
  v30 = *(v27 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10458 != -1)
  {
    swift_once();
  }

  sub_83B4(&unk_10720, v46);
  if (qword_10470 != -1)
  {
    swift_once();
  }

  sub_8FEC();
  sub_8418(v46, &qword_10990, &qword_9C70);
  (*(v30 + 8))(v33, v27);
  v34 = a1[3];
  v35 = a1[5];
  v36 = sub_7FE0(a1, v34);
  v37 = *(v34 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NoOpResolver();
  v42 = swift_allocObject();
  *(v42 + 16) = 0x6D614E70756F7267;
  *(v42 + 24) = 0xE900000000000065;
  v47 = v41;
  v48 = sub_836C(&qword_10998, v43, type metadata accessor for NoOpResolver);
  v46[0] = v42;
  if (qword_10478 != -1)
  {
    swift_once();
  }

  sub_8FEC();
  (*(v37 + 8))(v40, v34);
  return sub_8418(v46, &qword_10990, &qword_9C70);
}

uint64_t sub_6FE0(uint64_t a1)
{
  v54 = sub_8F6C();
  v52 = *(v54 - 8);
  v2 = v52[8];
  __chkstk_darwin(v54);
  v4 = (&v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 40);
  v53 = *(a1 + 24);
  sub_7FE0(a1, v53);
  if (qword_10490 != -1)
  {
    swift_once();
  }

  v65 = v53;
  v66 = v5;
  sub_8024(&v64);
  sub_8FBC();
  v6 = v66;
  v53 = v65;
  sub_7FE0(&v64, v65);
  if (qword_10488 != -1)
  {
    swift_once();
  }

  *v63 = v53;
  *&v63[16] = v6;
  sub_8024(&v62);
  sub_8F9C();
  v7 = *v63;
  v53 = *&v63[8];
  v41 = sub_7FE0(&v62, *v63);
  v43 = sub_33FC(&qword_10940, &qword_9C48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_9AC0;
  v51 = sub_909C();
  *(v8 + 32) = sub_908C();
  v46 = sub_33FC(&qword_10960, &qword_9C60);
  v45 = sub_8EEC();
  v9 = *(v45 - 8);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v42 = *(v9 + 72);
  v10 = v42;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_9660;
  v50 = enum case for DeliveryVehicle.siriHelp(_:);
  v44 = *(v9 + 104);
  v44(v12 + v11);
  *v4 = v12;
  v49 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v13 = v52;
  v14 = v52[13];
  v47 = v52 + 13;
  v48 = v14;
  v15 = v4;
  v16 = v4;
  v17 = v54;
  v14(v15);
  v60 = v7;
  v61 = v53;
  sub_8024(v59);
  sub_8E1C();

  v18 = v13[1];
  v18(v16, v17);
  v19 = v18;
  v20 = v60;
  v41 = (v11 + 2 * v10);
  v53 = v61;
  v52 = sub_7FE0(v59, v60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_9AD0;
  v22 = sub_8EDC();
  v57 = v22;
  *&v58 = sub_836C(&qword_10948, 255, &type metadata accessor for CoreSignalTypes);
  v23 = sub_8024(v56);
  (*(*(v22 - 8) + 104))(v23, enum case for CoreSignalTypes.app(_:), v22);
  *(v21 + 32) = sub_906C();
  *(v21 + 40) = sub_905C();
  *(v21 + 48) = sub_907C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_9AB0;
  v25 = v24 + v11;
  v26 = v24 + v11;
  v27 = v45;
  v28 = v44;
  (v44)(v26, enum case for DeliveryVehicle.assistantSuggestions(_:), v45);
  (v28)(v25 + v42, v50, v27);
  *v16 = v24;
  v29 = v54;
  v48(v16, v49, v54);
  v57 = v20;
  v58 = v53;
  sub_8024(v56);
  sub_8E1C();

  v19(v16, v29);
  v30 = v57;
  v31 = sub_7FE0(v56, v57);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MessagesSuggestionsAssetProvider();
  v37 = swift_allocObject();
  v55[3] = v36;
  v55[4] = sub_836C(&qword_10988, v38, type metadata accessor for MessagesSuggestionsAssetProvider);
  v55[0] = v37;
  sub_8FAC();
  (*(v32 + 8))(v35, v30);
  sub_3504(v55);
  sub_3504(v56);
  sub_3504(v59);
  sub_3504(&v62);
  return sub_3504(&v64);
}

uint64_t sub_7754(void *a1)
{
  v2 = sub_8E4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6FE0(a1);
  v7 = a1[3];
  v8 = a1[5];
  v9 = sub_7FE0(a1, v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8548(0, &qword_10980, INSearchForMessagesIntent_ptr);
  sub_8E3C();
  sub_8F7C();
  (*(v3 + 8))(v6, v2);
  (*(v10 + 8))(v13, v7);
  v14 = a1[3];
  v28[1] = a1[5];
  v15 = sub_7FE0(a1, v14);
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33FC(&qword_10960, &qword_9C60);
  v20 = sub_8EEC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_9AE0;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, enum case for DeliveryVehicle.siriHelp(_:), v20);
  v26(v25 + v22, enum case for DeliveryVehicle.siriAutoComplete(_:), v20);
  v26(v25 + 2 * v22, enum case for DeliveryVehicle.assistantSuggestions(_:), v20);
  sub_8FDC();

  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_7B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7BB0;

  return sub_52A0(a1, a2);
}

uint64_t sub_7BB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_7CAC()
{
  v0 = sub_33FC(&qword_109E8, &qword_9CC0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  strcpy(&v11 - v5, "com.apple.siri");
  (&v11 - v5)[15] = -18;
  v7 = enum case for Image.appIcon(_:);
  v8 = sub_903C();
  sub_85D0(v8);
  (*(v9 + 104))(v6, v7, v8);
  sub_3444(v6, 0, 1, v8);
  sub_3444(v4, 1, 1, v8);
  return sub_904C();
}

uint64_t sub_7E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_85CC;

  return sub_7E2C();
}

uint64_t sub_7F88()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_7FE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_8024(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_8084(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_8128(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_109B8, &qword_9C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8230(char *a1, int64_t a2, char a3)
{
  result = sub_8250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8250(char *result, int64_t a2, char a3, char *a4)
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
    sub_33FC(&qword_109B8, &qword_9C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_8358(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_6928(a1);
}

uint64_t sub_8364(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_7754(a1);
}

uint64_t sub_836C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_83B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8418(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_33FC(a2, a3);
  sub_85D0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_8470(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_8548(0, a3, a4);
  v8 = sub_91EC();

  return v8;
}

uint64_t sub_84E4(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_919C();

  return v3;
}

uint64_t sub_8548(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_8588()
{
  if (*(v0 + 40))
  {
    sub_3504((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t Logger.suggestions.unsafeMutableAddressor()
{
  if (qword_10480 != -1)
  {
    sub_3678();
  }

  v0 = sub_910C();

  return sub_346C(v0, static Logger.suggestions);
}

uint64_t sub_8634()
{
  v0 = sub_910C();
  sub_875C(v0, static Logger.suggestions);
  sub_346C(v0, static Logger.suggestions);
  return sub_90FC();
}

uint64_t static Logger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10480 != -1)
  {
    sub_3678();
  }

  v2 = sub_910C();
  v3 = sub_346C(v2, static Logger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_875C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_87C0()
{
  result = sub_87E4();
  qword_10A78 = result;
  unk_10A80 = v1;
  return result;
}

uint64_t sub_87E4()
{
  v0 = sub_8D7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = AFSystemRootDirectory();
  sub_919C();

  sub_8D3C();

  sub_8D5C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_8548(0, &qword_109F0, NSBundle_ptr);
  (*(v1 + 16))(v5, v7, v0);
  v10 = sub_8A98(v5);
  if (v10 && (v11 = sub_8CCC(v10), v12))
  {
    v19[0] = v11;
    v19[1] = v12;

    v20._countAndFlagsBits = 0x74616C706D65542FLL;
    v20._object = 0xEA00000000007365;
    sub_91CC(v20);

    v13 = v19[0];
  }

  else
  {
    if (qword_10480 != -1)
    {
      swift_once();
    }

    v14 = sub_910C();
    sub_346C(v14, static Logger.suggestions);
    v15 = sub_90EC();
    v16 = sub_922C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#Constants failed to find SiriMessagesFlow resource path", v17, 2u);
    }

    v13 = 0;
  }

  v9(v7, v0);
  return v13;
}

id sub_8A98(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_8D4C(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = sub_8D7C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_8B34()
{
  sub_33FC(&qword_10958, &qword_9C58);
  v0 = sub_8E9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_9AE0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DeviceType.iPhone(_:), v0);
  v6(v5 + v2, enum case for DeviceType.iPad(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for DeviceType.mac(_:), v0);
  qword_10A88 = v4;
  return result;
}

uint64_t sub_8C68()
{
  sub_8548(0, &qword_10968, INSendMessageIntent_ptr);
  sub_33FC(&qword_109F8, &unk_9CF0);
  result = sub_91AC();
  qword_10A90 = result;
  *algn_10A98 = v1;
  return result;
}

uint64_t sub_8CCC(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_919C();

  return v3;
}