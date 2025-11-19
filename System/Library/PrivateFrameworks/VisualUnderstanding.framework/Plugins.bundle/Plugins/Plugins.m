uint64_t sub_1598(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E2B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E334();

  v9 = sub_E324();
  v10 = sub_E4A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_E2D4();
    sub_2018();
    v13 = sub_E564();
    v14 = v4;
    v16 = v15;
    (*(v5 + 8))(v8, v14);
    v17 = sub_19CC(v13, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Initializing VUPersonalizationPlugin for the VUGallery for %s client", v11, 0xCu);
    sub_2070(v12);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_17C0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC7Plugins23VUPersonalizationPlugin_logger;
  v3 = sub_E344();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUPersonalizationPlugin()
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B8()
{
  result = sub_E344();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for VUPersonalizationPlugin();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = sub_1598(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_19CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A98(v11, 0, 0, 1, a1, a2);
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
    sub_20BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2070(v11);
  return v7;
}

unint64_t sub_1A98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BA4(a5, a6);
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
    result = sub_E524();
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

char *sub_1BA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF0(a1, a2);
  sub_1D20(&off_14758);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1BF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1E0C(v5, 0);
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

  result = sub_E524();
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
        v10 = sub_E3B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1E0C(v10, 0);
        result = sub_E504();
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

uint64_t sub_1D20(uint64_t result)
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

  result = sub_1E80(result, v12, 1, v3);
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

void *sub_1E0C(uint64_t a1, uint64_t a2)
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

  sub_2118(&qword_185C0, &unk_EC68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_185C0, &unk_EC68);
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

void sub_1F74()
{
  v0 = sub_E324();
  v1 = sub_E4C4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, v0, v1, "Personalization plugin updated", v2, 2u);
  }
}

unint64_t sub_2018()
{
  result = qword_185B8;
  if (!qword_185B8)
  {
    sub_E2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185B8);
  }

  return result;
}

uint64_t sub_2070(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_20BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2118(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2164(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E2B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E334();
  *(v1 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary) = 0;

  v9 = sub_E324();
  v10 = sub_E4A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_E2D4();
    sub_E068(&qword_185B8, &type metadata accessor for VUGallery.Client);
    v13 = sub_E564();
    v14 = v4;
    v16 = v15;
    (*(v5 + 8))(v8, v14);
    v17 = sub_19CC(v13, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Initializing VUDeviceOwnerPlugin for the VUGallery for %s client", v11, 0xCu);
    sub_2070(v12);
  }

  *(v2 + 16) = a1;
  return v2;
}

id sub_23C8()
{
  v1 = sub_E154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary;
  v8 = *(v0 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary);
  }

  else
  {
    v10 = v4;
    v11 = objc_opt_self();
    if ([v11 isMultiLibraryModeEnabled])
    {
      v12 = [v11 systemPhotoLibraryURL];
      sub_E144();

      v13 = objc_allocWithZone(PHPhotoLibrary);
      sub_E134(v14);
      v16 = v15;
      v17 = [v13 initWithPhotoLibraryURL:v15];

      (*(v2 + 8))(v6, v10);
    }

    else
    {
      v17 = [v11 sharedPhotoLibrary];
    }

    v18 = *(v0 + v7);
    *(v0 + v7) = v17;
    v9 = v17;

    v8 = 0;
  }

  v19 = v8;
  return v9;
}

Class sub_256C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_DACC(0, &qword_18970, NSObject_ptr);
    v5.super.isa = sub_E354().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_2608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2118(&qword_18968, &qword_EDC0);
    v2 = sub_E544();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
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
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_90E8(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
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

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_27E8()
{
  v1 = sub_E0F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_2118(&qword_18A00, &qword_EE18);
  v6 = swift_allocBox();
  v8 = v7;
  v48 = v2;
  v9 = *(v2 + 56);
  v49 = v1;
  v9(v7, 1, 1, v1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v51 = v10 + 16;
  *(v10 + 24) = 1;
  v11 = [objc_allocWithZone(CNContactStore) init];
  v12 = swift_allocObject();
  v12[2] = v0;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v6;
  v12[6] = v10;
  aBlock[4] = sub_DBB4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_378C;
  aBlock[3] = &unk_14938;
  v13 = _Block_copy(aBlock);

  v14 = v11;

  [v14 requestAccessForEntityType:0 completionHandler:v13];
  _Block_release(v13);

  v15 = sub_E324();
  v16 = sub_E4A4();

  v17 = os_log_type_enabled(v15, v16);
  v50 = v5 + 16;
  if (v17)
  {
    v45 = v16;
    v46 = v14;
    v18 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v18 = 136315650;
    swift_beginAccess();
    v19 = *(v5 + 24);
    if (v19)
    {
      v20 = *(v5 + 16);
      v21 = *(v5 + 24);
    }

    else
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    v22 = sub_19CC(v20, v19, aBlock);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    swift_beginAccess();
    v23 = v48;
    v24 = v49;
    if ((*(v48 + 48))(v8, 1, v49))
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v27 = v47;
      (*(v23 + 16))(v47, v8, v24);
      v28 = v23;
      v29 = sub_E0C4();
      v25 = v30;
      (*(v28 + 8))(v27, v24);
      v26 = v29;
    }

    v31 = v46;
    v32 = sub_19CC(v26, v25, aBlock);

    *(v18 + 14) = v32;
    *(v18 + 22) = 2080;
    swift_beginAccess();
    if (*(v10 + 24))
    {

      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v52 = *(v10 + 16);
      sub_DBC4();
      v35 = sub_E4E4();
      v33 = v36;

      v34 = v35;
    }

    v37 = sub_19CC(v34, v33, aBlock);

    *(v18 + 24) = v37;
    _os_log_impl(&dword_0, v15, v45, "Fetched me contact with meContactIdentifier: %s and meBirthday %s and meAge %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  v38 = *(v5 + 16);
  v39 = *(v5 + 24);
  swift_beginAccess();
  v40 = *(v10 + 16);
  v41 = *(v10 + 24);

  return v38;
}

void sub_2D94(char a1, uint64_t a2, uint64_t a3, id a4, char *a5, uint64_t a6, uint64_t a7)
{
  v90 = a7;
  v96 = a5;
  v100 = sub_E1E4();
  v99 = *(v100 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v100);
  v102 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_E0F4();
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v12);
  v91 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v101 = v87 - v16;
  v17 = sub_E174();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2118(&qword_18A00, &qword_EE18);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v98 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v95 = v87 - v26;
  v97 = swift_projectBox();
  if (a2)
  {
    v27 = a2;
    v92 = a4;
    swift_errorRetain();
    v28 = sub_E324();
    v29 = sub_E4B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v93 = v12;
      v103[0] = v31;
      v32 = v21;
      v33 = v31;
      *v30 = 136315138;
      v87[1] = v27;
      swift_getErrorValue();
      v34 = sub_E584();
      v36 = sub_19CC(v34, v35, v103);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "Failed to fetch the me contact identifier: %s", v30, 0xCu);
      sub_2070(v33);
      v21 = v32;
      v12 = v93;
    }

    else
    {
    }

    a4 = v92;
  }

  if (a1)
  {
    v37 = v12;
    sub_2118(&qword_18A10, &unk_EE20);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_ECC0;
    *(v38 + 32) = CNContactIdentifierKey;
    *(v38 + 40) = CNContactBirthdayKey;
    v39 = CNContactIdentifierKey;
    v40 = CNContactBirthdayKey;
    sub_2118(&qword_18A18, &qword_EE30);
    isa = sub_E3E4().super.isa;

    v103[0] = 0;
    v42 = [a4 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:v103];

    if (v42)
    {
      v43 = v103[0];
      v44 = [v42 identifier];
      v45 = sub_E394();
      v92 = v42;
      v47 = v46;

      v48 = 1;
      v49 = v96;
      swift_beginAccess();
      v50 = *(v49 + 3);
      *(v49 + 2) = v45;
      *(v49 + 3) = v47;

      v51 = [v92 birthday];
      v89 = v17;
      v88 = v18;
      v52 = v21;
      v53 = v95;
      if (v51)
      {
        v54 = v51;
        sub_E0D4();

        v48 = 0;
      }

      v56 = v94;
      (*(v94 + 56))(v53, v48, 1, v37);
      v57 = v97;
      swift_beginAccess();
      sub_DC18(v53, v57, &qword_18A00, &qword_EE18);
      sub_E164();
      sub_E1C4();
      sub_2118(&qword_18A20, &qword_EE38);
      v58 = sub_E1D4();
      v59 = *(v58 - 8);
      v60 = v59;
      v96 = v52;
      v61 = *(v59 + 72);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v93 = v37;
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_ECD0;
      v64 = v63 + v62;
      v65 = *(v60 + 104);
      v65(v64, enum case for Calendar.Component.year(_:), v58);
      v65(v64 + v61, enum case for Calendar.Component.month(_:), v58);
      v65(v64 + 2 * v61, enum case for Calendar.Component.day(_:), v58);
      v65(v64 + 3 * v61, enum case for Calendar.Component.hour(_:), v58);
      v66 = v64 + 4 * v61;
      v67 = v93;
      v65(v66, enum case for Calendar.Component.minute(_:), v58);
      v68 = v56;
      sub_DC80(v63);
      swift_setDeallocating();
      swift_arrayDestroy();
      v69 = v96;
      swift_deallocClassInstance();
      v71 = v101;
      v70 = v102;
      sub_E1B4();

      (*(v99 + 8))(v70, v100);
      swift_beginAccess();
      v72 = v98;
      sub_DFA0(v57, v98, &qword_18A00, &qword_EE18);
      if ((*(v68 + 48))(v72, 1, v67) == 1)
      {

        (*(v68 + 8))(v71, v67);
        (*(v88 + 8))(v69, v89);
        sub_E008(v72, &qword_18A00, &qword_EE18);
      }

      else
      {
        v73 = v69;
        v74 = v91;
        (*(v68 + 32))(v91, v72, v67);
        v75 = sub_E0E4();
        v76 = v88;
        if (v77)
        {

          v78 = *(v68 + 8);
          v78(v74, v67);
          v78(v71, v67);
          (*(v76 + 8))(v69, v89);
        }

        else
        {
          v79 = v75;
          v80 = sub_E0E4();
          v82 = v81;

          v83 = *(v68 + 8);
          v83(v74, v67);
          v83(v71, v67);
          (*(v76 + 8))(v73, v89);
          v84 = v90;
          if ((v82 & 1) == 0)
          {
            v85 = __OFSUB__(v80, v79);
            v86 = v80 - v79;
            if (v85)
            {
              __break(1u);
            }

            swift_beginAccess();
            *(v84 + 16) = v86;
            *(v84 + 24) = 0;
          }
        }
      }
    }

    else
    {
      v55 = v103[0];
      sub_E104();

      swift_willThrow();
    }
  }
}

void sub_378C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_3804()
{
  v1 = v0;
  v2 = sub_23C8();
  v3 = [v2 librarySpecificFetchOptions];

  sub_DACC(0, &qword_189F8, NSPredicate_ptr);
  v4 = &_swiftEmptyArrayStorage;
  v5 = sub_E474();
  [v3 setPredicate:v5];

  v28 = v3;
  v6 = [objc_opt_self() fetchPersonsWithOptions:v3];
  v7 = [v6 fetchedObjects];

  if (v7)
  {
    sub_DACC(0, &qword_189F0, PHPerson_ptr);
    v4 = sub_E3F4();
  }

  if (!(v4 >> 62))
  {
    v8 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_18:

    return;
  }

  v8 = sub_E534();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v4 & 0xC000000000000001;
    v30 = v8;
    v31 = v4;
    v29 = v4 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = sub_E514();
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_E324();
      v14 = sub_E4A4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v1;
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v16 = 136315394;
        v17 = [v12 localIdentifier];
        v18 = sub_E394();
        v20 = v19;

        v21 = sub_19CC(v18, v20, &v32);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        v22 = [v12 name];
        if (v22)
        {
          v23 = v22;
          v24 = sub_E394();
          v26 = v25;
        }

        else
        {
          v24 = 0x20656D616E206F6ELL;
          v26 = 0xED0000646E756F66;
        }

        v27 = sub_19CC(v24, v26, &v32);

        *(v16 + 14) = v27;
        _os_log_impl(&dword_0, v13, v14, "Found PHPerson with localIdentifier %s with name %s", v16, 0x16u);
        swift_arrayDestroy();

        v1 = v15;
        v8 = v30;
        v4 = v31;
        v10 = v29;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_18;
  }

  __break(1u);
}

id sub_3B8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C8();
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setPersonContext:1];
  sub_DACC(0, &qword_189F8, NSPredicate_ptr);
  v6 = sub_E474();
  [v5 setPredicate:v6];

  v7 = objc_opt_self();
  sub_2118(&qword_189D8, &qword_EE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_ECE0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  isa = sub_E3E4().super.isa;

  v10 = [v7 fetchPersonsForContactIdentifiers:isa options:v5];

  v11 = [v10 firstObject];

  v12 = sub_E324();
  v13 = sub_E4A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_19CC(a1, a2, &v27);
    *(v14 + 12) = 2080;
    if (v11)
    {
      v15 = [v11 localIdentifier];
      v16 = sub_E394();
      v18 = v17;
    }

    else
    {
      v18 = 0x800000000000F100;
      v16 = 0xD000000000000018;
    }

    v19 = 0xED0000646E756F66;
    v20 = 0x20656D616E206F6ELL;
    v21 = sub_19CC(v16, v18, &v27);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    if (v11)
    {
      v22 = [v11 name];
      if (v22)
      {
        v23 = v22;
        v20 = sub_E394();
        v19 = v24;
      }
    }

    v25 = sub_19CC(v20, v19, &v27);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_0, v12, v13, "Found PHPerson linked with contact %s with localIdentifier: %s, name: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return v11;
}

void *sub_3EFC(uint64_t a1, unint64_t a2)
{
  v55 = sub_E124();
  v5 = *(v55 - 8);
  v6 = v5[8];
  __chkstk_darwin(v55);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v9 = sub_23C8();
  v10 = [v9 librarySpecificFetchOptions];

  v61 = &_swiftEmptyArrayStorage;
  v11 = objc_opt_self();
  v43 = v10;
  v12 = [v11 fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions:v10];
  if (v12)
  {
    v14 = v12;
    v15 = [v12 fetchedObjects];

    if (v15)
    {
      sub_DACC(0, &qword_189F0, PHPerson_ptr);
      v16 = sub_E3F4();
    }

    else
    {
      v16 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  v48 = v16;
  if (v16 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E534())
  {
    v17 = 0;
    v51 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
    v52 = v48 & 0xC000000000000001;
    v46 = v48 & 0xFFFFFFFFFFFFFF8;
    v45 = v48 + 32;
    v50 = v5 + 1;
    *&v13 = 136315394;
    v47 = v13;
    v44 = &_swiftEmptyArrayStorage;
    while (v52)
    {
      v18 = sub_E514();
      v19 = __OFADD__(v17, 1);
      v20 = v17 + 1;
      if (v19)
      {
        goto LABEL_38;
      }

LABEL_16:
      v56 = v20;
      v21 = v18;

      v22 = sub_E324();
      v23 = sub_E4A4();

      v24 = v21;
      if (os_log_type_enabled(v22, v23))
      {
        v25 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v59 = v49;
        *v25 = v47;
        v26 = [v24 localIdentifier];
        v27 = sub_E394();
        v28 = a1;
        v30 = v29;

        v31 = sub_19CC(v27, v30, &v59);
        a1 = v28;

        *(v25 + 4) = v31;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_19CC(v28, a2, &v59);
        _os_log_impl(&dword_0, v22, v23, "Found PHPerson with localIdentifier %s with negative feedback for contact %s", v25, 0x16u);
        swift_arrayDestroy();

        v21 = v24;
      }

      [v21 fetchPropertySetsIfNeeded];
      v32 = [v21 userFeedbackProperties];
      v5 = [v32 autonamingUserFeedbacks];

      if (!v5)
      {
        sub_DACC(0, &qword_189E0, NSOrderedSet_ptr);
        v5 = sub_E484();
      }

      sub_E494();
LABEL_22:
      while (1)
      {
        sub_E114();
        if (!v60)
        {
          break;
        }

        while (1)
        {
          sub_DABC(&v59, &v58);
          sub_DACC(0, &qword_189E8, PHUserFeedback_ptr);
          if (!swift_dynamicCast())
          {
            break;
          }

          v33 = v57;
          v34 = [v57 feature];
          if ((v34 & 0x8000000000000000) != 0 || v34 != 2 || (v35 = [v33 context]) == 0)
          {
LABEL_21:

            v21 = v24;
            goto LABEL_22;
          }

          v36 = v35;
          v37 = sub_E394();
          v39 = v38;

          if (v37 == a1 && v39 == a2)
          {
          }

          else
          {
            v40 = sub_E574();

            if ((v40 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v41 = v24;
          sub_E3D4();
          if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_E414();
          }

          sub_E434();

          v44 = v61;
          sub_E114();
          v21 = v24;
          if (!v60)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_9:
      (*v50)(v8, v55);

      v17 = v56;
      if (v56 == i)
      {

        return v44;
      }
    }

    if (v17 >= *(v46 + 16))
    {
      goto LABEL_39;
    }

    v18 = *(v45 + 8 * v17);
    v19 = __OFADD__(v17, 1);
    v20 = v17 + 1;
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4558(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8();
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setPersonContext:1];
  v6 = objc_opt_self();
  sub_2118(&qword_189D8, &qword_EE10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_ECE0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  isa = sub_E3E4().super.isa;

  v9 = [v6 fetchPersonsWithLocalIdentifiers:isa options:v5];

  v10 = [v9 firstObject];
  if (v10)
  {
    v11 = [v10 ageType];
  }

  else
  {

    v11 = 0;
  }

  return v11 | ((v10 == 0) << 16);
}

uint64_t sub_46B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = sub_E2B4();
  v7 = *(v90 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v90);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_E314();
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  v13 = __chkstk_darwin(v11);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v72 - v15;
  v16 = sub_2118(&qword_18990, &qword_EDD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v86 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v72 - v20;
  v22 = sub_E1A4();
  v92 = *(v22 - 8);
  v23 = *(v92 + 64);
  __chkstk_darwin(v22);
  v91 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2118(&qword_18928, &qword_ED80);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v80 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v84 = &v72 - v30;
  __chkstk_darwin(v29);
  v32 = &v72 - v31;
  v33 = sub_E254();
  v79 = *(v33 - 8);
  v34 = *(v79 + 56);
  v85 = v33;
  v83 = v34;
  (v34)(v32, 1, 1);
  v35 = sub_3B8C(a1, a2);
  if (!v35)
  {
    goto LABEL_18;
  }

  v36 = v35;
  v89 = v22;
  v37 = [v35 localIdentifier];
  if (!v37)
  {
    sub_E394();
    v37 = sub_E384();
  }

  v38 = [objc_opt_self() uuidFromLocalIdentifier:v37];

  if (!v38)
  {

LABEL_18:
    swift_beginAccess();
    sub_DFA0(v32, a3, &qword_18928, &qword_ED80);
    return sub_E008(v32, &qword_18928, &qword_ED80);
  }

  v78 = a3;
  sub_E394();

  sub_E184();

  v39 = v92;
  v40 = v89;
  if ((*(v92 + 48))(v21, 1, v89) == 1)
  {

    sub_E008(v21, &qword_18990, &qword_EDD8);
LABEL_17:
    a3 = v78;
    goto LABEL_18;
  }

  v77 = v36;
  v41 = v91;
  (*(v39 + 32))(v91, v21, v40);
  v76 = v3;
  v42 = *(v3 + 16);
  v43 = v90;
  (*(v7 + 104))(v10, enum case for VUGallery.Client.photos(_:), v90);

  v44 = sub_E294();
  v45 = v43;

  v48 = *(v7 + 8);
  v47 = v7 + 8;
  v46 = v48;
  v48(v10, v45);
  if (!*(v44 + 16))
  {

    (*(v39 + 8))(v41, v40);
    goto LABEL_17;
  }

  v49 = v87;
  v50 = *(v87 + 16);
  v72 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = v82;
  v75 = v46;
  v52 = v88;
  v73 = v50;
  v50(v82, v44 + v72, v88);

  v74 = v47;
  sub_E304();
  v87 = *(v49 + 8);
  (v87)(v51, v52);
  v53 = *(v76 + 16);

  sub_E2D4();
  sub_E2A4();
  v75(v10, v90);
  v54 = sub_E284();

  if (*(v54 + 16))
  {
    v55 = v81;
    v56 = v88;
    v73(v81, v54 + v72, v88);

    v57 = v86;
    sub_E2E4();
    (v87)(v55, v56);
    v58 = 0;
  }

  else
  {

    v58 = 1;
    v57 = v86;
  }

  v59 = v85;
  v60 = v92;
  v61 = v89;
  (*(v92 + 56))(v57, v58, 1, v89);
  v62 = v84;
  sub_E264();
  v83(v62, 0, 1, v59);
  sub_DC18(v62, v32, &qword_18928, &qword_ED80);
  v63 = sub_E324();
  v64 = sub_E4A4();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v77;
  if (!v65)
  {

    (*(v60 + 8))(v91, v61);
    goto LABEL_17;
  }

  v67 = swift_slowAlloc();
  *v67 = 134217984;
  swift_beginAccess();
  v68 = v80;
  sub_DFA0(v32, v80, &qword_18928, &qword_ED80);
  v69 = v79;
  result = (*(v79 + 48))(v68, 1, v59);
  if (result != 1)
  {
    v71 = sub_E244();
    (*(v69 + 8))(v68, v59);
    *(v67 + 4) = v71;
    _os_log_impl(&dword_0, v63, v64, "Device owner: found ground truth %ld", v67, 0xCu);

    (*(v60 + 8))(v91, v89);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_4F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_E1A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_E314();
  v9 = *(v114 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v114);
  v108 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v109 = &v98 - v14;
  v15 = __chkstk_darwin(v13);
  v125 = &v98 - v16;
  __chkstk_darwin(v15);
  v112 = &v98 - v17;
  v129 = sub_E2B4();
  v115 = *(v129 - 1);
  v18 = *(v115 + 64);
  v19 = __chkstk_darwin(v129);
  v124 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v98 - v21;
  v22 = sub_2118(&qword_18990, &qword_EDD8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v110 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v98 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v98 - v30;
  __chkstk_darwin(v29);
  v33 = &v98 - v32;
  v133[0] = a1;
  v133[1] = a2;
  v131 = 58;
  v132 = 0xE100000000000000;
  sub_DA68();
  v34 = sub_E4D4();
  if (!v34[2])
  {

    return;
  }

  v36 = v34[4];
  v35 = v34[5];

  v128 = v36;
  sub_E184();
  v104 = v5;
  v37 = *(v5 + 48);
  v107 = v4;
  v106 = v5 + 48;
  v105 = v37;
  if (v37(v33, 1, v4) == 1)
  {

    v38 = v33;
LABEL_46:
    sub_E008(v38, &qword_18990, &qword_EDD8);
    return;
  }

  sub_E008(v33, &qword_18990, &qword_EDD8);
  v39 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;

  v103 = v39;
  v40 = sub_E324();
  v41 = sub_E4A4();

  v42 = os_log_type_enabled(v40, v41);
  v101 = v8;
  v102 = v28;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v133[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_19CC(v128, v35, v133);
    _os_log_impl(&dword_0, v40, v41, "Me Contact Picture: fetching tags for UUID %s", v43, 0xCu);
    sub_2070(v44);
  }

  v45 = v115;
  v46 = v129;
  v47 = *(v111 + 16);

  sub_E184();
  v48 = v107;
  if (v105(v31, 1, v107) == 1)
  {
    goto LABEL_49;
  }

  v49 = v126;
  v122 = *(v45 + 104);
  v123 = v45 + 104;
  v122(v126, enum case for VUGallery.Client.contacts(_:), v46);
  v50 = sub_E294();

  v121 = *(v45 + 8);
  v121(v49, v46);
  v51 = *(v104 + 8);
  v100 = v104 + 8;
  v99 = v51;
  v51(v31, v48);
  v120 = *(v50 + 16);
  v115 = v45 + 8;
  if (v120)
  {
    v52 = 0;
    v119 = v9 + 16;
    v118 = enum case for VUGallery.Client.photos(_:);
    v113 = (v9 + 8);
    v116 = (v9 + 32);
    v53 = &_swiftEmptyArrayStorage;
    v54 = v114;
    v55 = v112;
    v117 = v50;
    while (v52 < *(v50 + 16))
    {
      v128 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v129 = v53;
      v127 = *(v9 + 72);
      (*(v9 + 16))(v55, v50 + v128 + v127 * v52, v54);
      v56 = v9;
      v57 = v126;
      sub_E2F4();
      v58 = v124;
      v122(v124, v118, v46);
      sub_E068(&qword_189C8, &type metadata accessor for VUGallery.Client);
      sub_E3C4();
      sub_E3C4();
      v59 = v121;
      v121(v58, v46);
      v59(v57, v46);
      if (v131 == v130)
      {
        v60 = *v116;
        (*v116)(v125, v55, v54);
        v53 = v129;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133[0] = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_9284(0, *(v53 + 2) + 1, 1);
          v55 = v112;
          v53 = v133[0];
        }

        v50 = v117;
        v63 = *(v53 + 2);
        v62 = *(v53 + 3);
        if (v63 >= v62 >> 1)
        {
          sub_9284(v62 > 1, v63 + 1, 1);
          v55 = v112;
          v53 = v133[0];
        }

        *(v53 + 2) = v63 + 1;
        v64 = &v53[v128 + v63 * v127];
        v54 = v114;
        v60(v64, v125, v114);
        v9 = v56;
      }

      else
      {
        (*v113)(v55, v54);
        v9 = v56;
        v53 = v129;
        v50 = v117;
      }

      if (v120 == ++v52)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v53 = &_swiftEmptyArrayStorage;
LABEL_20:

  if (*(v53 + 2) == 1)
  {
    v65 = sub_E324();
    v66 = sub_E4A4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "Me Contact Picture: found exactly one face", v67, 2u);
    }

    if (!*(v53 + 2))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v68 = v9;
    v69 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v70 = v109;
    v71 = v114;
    v129 = *(v68 + 16);
    (v129)(v109, &v53[v69], v114);

    sub_E304();
    v72 = *(v68 + 8);
    v72(v70, v71);
    v73 = *(v111 + 16);
    v74 = v126;
    v122(v126, enum case for VUGallery.Client.photos(_:), v46);

    sub_E2A4();
    v121(v74, v46);
    v75 = sub_E284();

    if (*(v75 + 16))
    {
      v76 = v108;
      (v129)(v108, v75 + v69, v71);

      v77 = v102;
      sub_E2E4();
      v72(v76, v71);
      v78 = 0;
      v79 = v107;
    }

    else
    {

      v78 = 1;
      v79 = v107;
      v77 = v102;
    }

    v84 = v104;
    v85 = v110;
    (*(v104 + 56))(v77, v78, 1, v79);
    sub_DFA0(v77, v85, &qword_18990, &qword_EDD8);
    if (v105(v85, 1, v79) == 1)
    {
      sub_E008(v85, &qword_18990, &qword_EDD8);
      v86 = sub_E324();
      v87 = sub_E4A4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_0, v86, v87, "Me Contact Picture: does not match a PHPerson", v88, 2u);
      }

LABEL_45:
      v38 = v102;
      goto LABEL_46;
    }

    (*(v84 + 32))(v101, v85, v79);
    v89 = sub_E194();
    v91 = sub_4558(v89, v90);

    v92 = sub_E324();
    v93 = sub_E4A4();
    v94 = os_log_type_enabled(v92, v93);
    if ((v91 & 0x10000) != 0 || (v91 - 6) < 0xFFFDu)
    {
      if (v94)
      {
        v96 = swift_slowAlloc();
        *v96 = 33554688;
        if ((v91 & 0x10000) != 0)
        {
          v97 = 0;
        }

        else
        {
          v97 = v91;
        }

        *(v96 + 4) = v97;
        _os_log_impl(&dword_0, v92, v93, "Me Contact Picture: matches a PHPerson not adult (age %hu), not usable for device owner inference", v96, 6u);
      }

      v99(v101, v79);
      goto LABEL_45;
    }

    if (v94)
    {
      v95 = swift_slowAlloc();
      *v95 = 33554688;
      *(v95 + 4) = v91;
      _os_log_impl(&dword_0, v92, v93, "Me Contact Picture: matches a PHPerson young adult, adult or senior (age %hu), returning this entity", v95, 6u);
    }

    v99(v101, v79);
    sub_E008(v102, &qword_18990, &qword_EDD8);
  }

  else
  {

    v80 = sub_E324();
    v81 = sub_E4A4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134217984;
      v83 = *(v53 + 2);

      *(v82 + 4) = v83;

      _os_log_impl(&dword_0, v80, v81, "Me Contact Picture: found %ld faces, not usable for device owner inference.", v82, 0xCu);
    }

    else
    {
    }
  }
}

char *sub_5DD0(unint64_t a1, unint64_t a2)
{
  v86 = a2;
  v97 = a1;
  v93 = sub_E2B4();
  v79 = *(v93 - 8);
  v3 = *(v79 + 64);
  __chkstk_darwin(v93);
  v92 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2118(&qword_18990, &qword_EDD8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v77 - v10);
  v12 = sub_E1A4();
  v78 = *(v12 - 8);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v77 - v17);
  v94 = v2;
  sub_3804();
  v20 = v19;
  if (v19 >> 62)
  {
    result = sub_E534();
  }

  else
  {
    result = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  }

  v90 = v16;
  v91 = v9;
  v96 = v12;
  if (result)
  {
    v85 = result;
    v22 = v86;
    if (result >= 1)
    {
      v87 = v18;
      v95 = v11;
      v23 = 0;
      v98 = (v20 & 0xC000000000000001);
      v89 = (v78 + 48);
      v84 = (v78 + 32);
      LODWORD(v83) = enum case for VUGallery.Client.photos(_:);
      v81 = (v79 + 8);
      v82 = (v79 + 104);
      v88 = &_swiftEmptyArrayStorage;
      v80 = (v78 + 8);
      v24 = v85;
      while (1)
      {
        if (v98)
        {
          v25 = sub_E514();
        }

        else
        {
          v25 = *(v20 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 personUri];
        if (!v27)
        {
          goto LABEL_17;
        }

        v28 = v27;
        v29 = sub_E394();
        v31 = v30;

        if (v29 == v97 && v31 == v22)
        {

          goto LABEL_7;
        }

        v33 = sub_E574();

        if ((v33 & 1) == 0)
        {
LABEL_17:
          v34 = [v26 localIdentifier];
          if (!v34)
          {
            sub_E394();
            v34 = sub_E384();
          }

          v35 = [objc_opt_self() uuidFromLocalIdentifier:v34];

          if (v35)
          {
            sub_E394();

            v36 = v95;
            sub_E184();

            if ((*v89)(v36, 1, v12) == 1)
            {

              sub_E008(v36, &qword_18990, &qword_EDD8);
            }

            else
            {
              v37 = v87;
              (*v84)(v87, v36, v12);
              v38 = v93;
              v39 = *(v94 + 16);
              v40 = v12;
              v41 = v92;
              (*v82)(v92, v83, v93);

              v42 = sub_E224();
              v44 = v43;

              (*v81)(v41, v38);
              if (v44)
              {
                (*v80)(v37, v40);

                v9 = v91;
                v12 = v40;
                v24 = v85;
                v22 = v86;
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v88 = sub_8E18(0, *(v88 + 2) + 1, 1, v88);
                }

                v12 = v96;
                v24 = v85;
                v22 = v86;
                v46 = *(v88 + 2);
                v45 = *(v88 + 3);
                if (v46 >= v45 >> 1)
                {
                  v88 = sub_8E18((v45 > 1), v46 + 1, 1, v88);
                }

                (*v80)(v87, v12);
                v47 = v88;
                *(v88 + 2) = v46 + 1;
                *&v47[8 * v46 + 32] = v42;
                v9 = v91;
              }
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        if (v24 == ++v23)
        {

          v48 = v88;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  v48 = &_swiftEmptyArrayStorage;
  v22 = v86;
LABEL_32:
  v49 = sub_3EFC(v97, v22);
  v50 = v49;
  if (v49 >> 62)
  {
    v51 = sub_E534();
    if (!v51)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v51 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
    if (!v51)
    {
      goto LABEL_55;
    }
  }

  result = objc_opt_self();
  v98 = result;
  if (v51 < 1)
  {
LABEL_59:
    __break(1u);
    return result;
  }

  v52 = 0;
  v97 = v50 & 0xC000000000000001;
  v95 = (v78 + 48);
  v87 = (v78 + 32);
  LODWORD(v86) = enum case for VUGallery.Client.photos(_:);
  v84 = (v79 + 8);
  v85 = (v79 + 104);
  v83 = (v78 + 8);
  v88 = v51;
  v89 = v50;
  do
  {
    if (v97)
    {
      v53 = sub_E514();
    }

    else
    {
      v53 = *(v50 + 8 * v52 + 32);
    }

    v54 = v53;
    v55 = [v53 localIdentifier];
    if (!v55)
    {
      sub_E394();
      v55 = sub_E384();
    }

    v56 = [v98 uuidFromLocalIdentifier:v55];

    if (v56)
    {
      sub_E394();

      sub_E184();

      v57 = v96;
      if ((*v95)(v9, 1, v96) == 1)
      {

        sub_E008(v9, &qword_18990, &qword_EDD8);
      }

      else
      {
        v58 = v48;
        v59 = v90;
        (*v87)(v90, v9, v57);
        v60 = v93;
        v61 = *(v94 + 16);
        v62 = v92;
        (*v85)(v92, v86, v93);

        v63 = sub_E224();
        v65 = v64;

        (*v84)(v62, v60);
        if (v65)
        {
          (*v83)(v59, v57);

          v48 = v58;
          v9 = v91;
          v51 = v88;
          v50 = v89;
        }

        else
        {
          v48 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_8E18(0, *(v58 + 2) + 1, 1, v58);
          }

          v9 = v91;
          v51 = v88;
          v50 = v89;
          v67 = *(v48 + 2);
          v66 = *(v48 + 3);
          if (v67 >= v66 >> 1)
          {
            v48 = sub_8E18((v66 > 1), v67 + 1, 1, v48);
          }

          (*v83)(v90, v96);
          *(v48 + 2) = v67 + 1;
          *&v48[8 * v67 + 32] = v63;
        }
      }
    }

    else
    {
    }

    ++v52;
  }

  while (v51 != v52);
LABEL_55:

  v68 = sub_E324();
  v69 = sub_E4A4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v99 = v71;
    *v70 = 136315138;

    v72 = v48;
    v73 = sub_E404();
    v75 = v74;

    v76 = sub_19CC(v73, v75, &v99);

    *(v70 + 4) = v76;
    v48 = v72;
    _os_log_impl(&dword_0, v68, v69, "Device owner: invalid persons %s", v70, 0xCu);
    sub_2070(v71);
  }

  return v48;
}

uint64_t sub_6798(uint64_t a1, int a2)
{
  v73 = a2;
  v75 = a1;
  v3 = sub_E1A4();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  v5 = __chkstk_darwin(v3);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v71 = &v71 - v8;
  __chkstk_darwin(v7);
  v79 = &v71 - v9;
  v10 = sub_E2B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_E314();
  v15 = *(v74 - 1);
  v16 = *(v15 + 64);
  __chkstk_darwin(v74);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2118(&qword_18990, &qword_EDD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v71 - v24;
  v76 = v2;
  v26 = v2[2];
  (*(v11 + 104))(v14, enum case for VUGallery.Client.photos(_:), v10);

  sub_E2A4();
  v27 = v10;
  v28 = v75;
  (*(v11 + 8))(v14, v27);
  v29 = sub_E284();

  if (*(v29 + 16))
  {
    v30 = v74;
    (*(v15 + 16))(v18, v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v74);

    sub_E2E4();
    (*(v15 + 8))(v18, v30);
    v31 = 0;
  }

  else
  {

    v31 = 1;
  }

  v33 = v77;
  v32 = v78;
  (*(v77 + 56))(v25, v31, 1, v78);
  sub_DFA0(v25, v23, &qword_18990, &qword_EDD8);
  v34 = (*(v33 + 48))(v23, 1, v32);
  v35 = v79;
  if (v34 == 1)
  {
    sub_E008(v23, &qword_18990, &qword_EDD8);
LABEL_12:
    v53 = sub_E324();
    v54 = sub_E4A4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v28;
      _os_log_impl(&dword_0, v53, v54, "Age of the entity %ld not found", v55, 0xCu);
    }

    v56 = v25;
LABEL_15:
    sub_E008(v56, &qword_18990, &qword_EDD8);
    return 0;
  }

  (*(v33 + 32))(v79, v23, v32);
  v36 = sub_E194();
  v38 = sub_4558(v36, v37);

  if ((v38 & 0x10000) != 0)
  {
    (*(v33 + 8))(v35, v32);
    goto LABEL_12;
  }

  v39 = v28;
  v74 = v25;
  v40 = v38;
  v41 = *(v33 + 16);
  if (v38 != 1 && (v73 & (v38 == 2)) == 0)
  {
    v42 = v72;
    v41(v72, v35, v32);
    v43 = sub_E324();
    v44 = sub_E4A4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v42;
      v46 = v33;
      v47 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v47 = 134218754;
      *(v47 + 4) = v39;
      *(v47 + 12) = 2080;
      v48 = sub_E194();
      v50 = v49;
      v51 = *(v46 + 8);
      v51(v45, v32);
      v52 = sub_19CC(v48, v50, &v80);

      *(v47 + 14) = v52;
      *(v47 + 22) = 512;
      *(v47 + 24) = v40;
      *(v47 + 26) = 1024;
      *(v47 + 28) = v73 & 1;
      _os_log_impl(&dword_0, v43, v44, "Age of the entity %ld, UUID %s is %hu (not baby nor a child if includeChild %{BOOL}d)", v47, 0x20u);
      sub_2070(v76);

      v51(v79, v32);
    }

    else
    {

      v70 = *(v33 + 8);
      v70(v42, v32);
      v70(v35, v32);
    }

    v56 = v74;
    goto LABEL_15;
  }

  v58 = v71;
  v41(v71, v35, v32);
  v59 = sub_E324();
  v60 = sub_E4A4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v58;
    v62 = v33;
    v63 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v80 = v76;
    *v63 = 134218754;
    *(v63 + 4) = v39;
    *(v63 + 12) = 2080;
    v64 = sub_E194();
    v66 = v65;
    v67 = *(v62 + 8);
    v67(v61, v32);
    v68 = sub_19CC(v64, v66, &v80);

    *(v63 + 14) = v68;
    *(v63 + 22) = 512;
    *(v63 + 24) = v40;
    *(v63 + 26) = 1024;
    *(v63 + 28) = v73 & 1;
    _os_log_impl(&dword_0, v59, v60, "Age of the entity %ld UUID %s is %hu (baby or child with includeChild %{BOOL}d), so it is considered invalid", v63, 0x20u);
    sub_2070(v76);

    v67(v79, v32);
  }

  else
  {

    v69 = *(v33 + 8);
    v69(v58, v32);
    v69(v35, v32);
  }

  sub_E008(v74, &qword_18990, &qword_EDD8);
  return 1;
}

char *sub_6FF8(uint64_t a1, uint64_t a2)
{
  sub_96A4(a1, sub_AABC, sub_AABC);

  v4 = sub_96A4(v3, sub_A9E0, sub_A9E0);

  v5 = sub_E324();
  v6 = sub_E4A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v4 + 16);

    _os_log_impl(&dword_0, v5, v6, "Device owner: [Top-selfies] After filtering at min 5 selfies and on predicate, found %ld entities with selfies.", v7, 0xCu);

    v8 = *(v4 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:

    return &_swiftEmptyArrayStorage;
  }

  v8 = *(v4 + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v30 = a2;
  v9 = sub_9020(v8, 0);
  v10 = sub_AF90(&v31, v9 + 4, v8, v4);

  sub_DA60();
  if (v10 != v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = v9;
  sub_9814(&v31);

  v11 = v31;
  sub_2118(&qword_18998, &qword_EDE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_ECE0;
  v13 = *(v11 + 2);
  if (v13)
  {
    v14 = v12;
    *(v12 + 32) = *(v11 + 4);
    if (v13 == 1)
    {

      return v14;
    }

    if (v30 < 101)
    {
      v16 = sub_E324();
      v17 = sub_E4A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = v30;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 100;
        _os_log_impl(&dword_0, v16, v17, "Device owner: [Top-selfies] Number of selfies %ld is smaller than threshold %ld. Keeping at least two candidates.", v18, 0x16u);
      }

      if (*(v11 + 2) < 2uLL)
      {
        goto LABEL_33;
      }

      v19 = *(v11 + 6);
      v15 = 2;
      v14 = sub_8E18(&dword_0 + 1, 2, 1, v14);
      *(v14 + 2) = 2;
      *(v14 + 5) = v19;
      if (v13 <= 2)
      {
LABEL_23:

        v26 = sub_E324();
        v27 = sub_E4A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134218240;
          *(v28 + 4) = *(v14 + 2);
          *(v28 + 12) = 2048;
          *(v28 + 14) = 0x3FC3333340000000;

          _os_log_impl(&dword_0, v26, v27, "Device owner: [Top-selfies] Found %ld candidates before the gap becomes higher than %f.", v28, 0x16u);
        }

        else
        {
        }

        return v14;
      }
    }

    else
    {
      v15 = 1;
    }

    v20 = &v11[16 * v15 + 40];
    while (1)
    {
      v21 = *(v11 + 2);
      if (v15 - 1 >= v21)
      {
        break;
      }

      if (v15 >= v21)
      {
        goto LABEL_29;
      }

      v22 = *(v20 - 2);
      if (__OFSUB__(v22, *v20))
      {
        goto LABEL_30;
      }

      if (((v22 - *v20) / v22) < 0.15)
      {
        v23 = *(v20 - 1);
        v25 = *(v14 + 2);
        v24 = *(v14 + 3);
        if (v25 >= v24 >> 1)
        {
          v14 = sub_8E18((v24 > 1), v25 + 1, 1, v14);
        }

        *(v14 + 2) = v25 + 1;
        *&v14[8 * v25 + 32] = v23;
        ++v15;
        v20 += 16;
        if (v13 != v15)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1)
  {

    v4 = sub_BA88(v4, a1);

    v6 = *(v4 + 16);
    if (!v6)
    {
LABEL_30:

      return 0;
    }

    v28 = a3;
  }

  else
  {
    v6 = *(a2 + 16);
    if (!v6)
    {
      return 0;
    }

    v28 = a3;
  }

  v7 = sub_9020(v6, 0);
  v8 = sub_AF90(&v29, v7 + 4, v6, v4);

  sub_DA60();
  if (v8 != v6)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = v7;
  sub_9970(&v29);

  v9 = v29;

  v10 = sub_E324();
  v11 = sub_E4A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v9 + 2);

    _os_log_impl(&dword_0, v10, v11, "Device owner: [Rear-facing] Found %ld entities with rear captures.", v12, 0xCu);

    v13 = *(v9 + 2);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v13 = *(v9 + 2);
    if (v13)
    {
LABEL_9:
      if (v13 == 1)
      {
        v14 = *(v9 + 4);

        return v14;
      }

      v20 = *(v9 + 5);
      v21 = *(v9 + 7);
      if (v21)
      {
        if (__OFSUB__(v21, v20))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v22 = (v21 - v20) / v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = sub_E324();
      v24 = sub_E4A4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218496;
        *(v25 + 4) = v22;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v20;
        *(v25 + 22) = 2048;
        *(v25 + 24) = v21;
        _os_log_impl(&dword_0, v23, v24, "Device owner: [Rear-facing] gap between bottom-1 and bottom-2 %f (%ld and %ld)", v25, 0x20u);
      }

      if (v28 >= 101 && v22 > 0.15)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  v16 = sub_E324();
  v17 = sub_E4A4();
  if (!os_log_type_enabled(v16, v17))
  {

LABEL_20:
    if (v28 > 100)
    {
LABEL_27:
      if (*(v9 + 2))
      {
        v26 = *(v9 + 4);
        v27 = *(v9 + 5);

        if (v27 > 10)
        {
          return v26;
        }

        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v18 = swift_slowAlloc();
  *v18 = 134217984;
  if (*(v9 + 2))
  {
    *(v18 + 4) = *(v9 + 5);
    v19 = v18;

    _os_log_impl(&dword_0, v16, v17, "Device owner: [Rear-facing] only one candidate with rear-facing captures %ld", v19, 0xCu);

    goto LABEL_20;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

void sub_78C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v11 = v10;
  v196 = a8;
  v200 = a7;
  LODWORD(v202) = a6;
  v186 = a4;
  v187 = a3;
  v199 = a1;
  v194 = a10;
  v183 = sub_E2B4();
  v182 = *(v183 - 8);
  v15 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_E314();
  v189 = *(v17 - 8);
  v190 = v17;
  v18 = *(v189 + 64);
  v19 = __chkstk_darwin(v17);
  v175 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v179 = &v174 - v22;
  __chkstk_darwin(v21);
  v178 = &v174 - v23;
  v24 = sub_2118(&qword_18990, &qword_EDD8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v176 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v185 = &v174 - v29;
  __chkstk_darwin(v28);
  v180 = &v174 - v30;
  v31 = sub_E254();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v177 = &v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v188 = &v174 - v37;
  __chkstk_darwin(v36);
  v184 = &v174 - v38;
  v39 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v40 = sub_E324();
  v41 = sub_E4A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "Starting getInferredDeviceOwnerVersion1", v42, 2u);
  }

  v197 = a2;
  v43 = sub_6FF8(a2, v199);
  v204 = v43;
  v44 = *(v43 + 2);
  if (!v44)
  {
    v60 = sub_E324();
    v61 = sub_E4A4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "Device owner: [Top-selfies] No entity with selfie, returning nil.", v62, 2u);
    }

    (*(v32 + 56))(a9, 1, 1, v31);
    goto LABEL_94;
  }

  v192 = v32;
  v193 = v39;
  v195 = v31;
  v191 = a9;
  v45 = 0;
  v198 = v43;
  v46 = (v43 + 32);
  v47 = *(a5 + 16);
  v48 = &_swiftEmptyArrayStorage;
  v201 = (v43 + 32);
  do
  {
    v51 = v46[v45];
    v52 = v47;
    v53 = 32;
    while (v52)
    {
      v54 = *(a5 + v53);
      v53 += 8;
      --v52;
      if (v54 == v51)
      {
        goto LABEL_8;
      }
    }

    if ((v202 & 1) == 0 || (sub_6798(v46[v45], v200 & 1) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_92A4(0, *(v48 + 2) + 1, 1);
        v48 = v203;
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        sub_92A4((v49 > 1), v50 + 1, 1);
        v48 = v203;
      }

      *(v48 + 2) = v50 + 1;
      *&v48[8 * v50 + 32] = v51;
      v46 = v201;
    }

LABEL_8:
    ++v45;
  }

  while (v45 != v44);

  v56 = v11;
  v57 = sub_E324();
  v58 = sub_E4A4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134218240;
    *(v59 + 4) = *(v198 + 2);
    *(v59 + 12) = 2048;
    *(v59 + 14) = *(v48 + 2);

    _os_log_impl(&dword_0, v57, v58, "Device owner: [Top-selfies] Before filtering out invalid: %ld entities, after filtering: %ld entities", v59, 0x16u);
  }

  else
  {
  }

  v63 = v196;
  if (*(v48 + 2))
  {
    swift_beginAccess();
    v204 = v48;

    goto LABEL_25;
  }

  v80 = sub_E324();
  v81 = sub_E4A4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_0, v80, v81, "Device owner: [Top-selfies] After removing invalid: 0 entities --> Run top k selfies again", v82, 2u);
  }

  if (v200)
  {
    v83 = 256;
  }

  else
  {
    v83 = 0;
  }

  v84 = v83 & 0xFFFE | v202 & 1;

  v85 = v197;
  v48 = sub_B480(v197, v199, v11, a5, v84);

  if (!*(v48 + 2))
  {

    v124 = sub_E324();
    v125 = sub_E4A4();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_0, v124, v125, "Device owner: [Top-selfies] After replacing invalid device owners, no entity with selfies left, returning nil.", v126, 2u);
    }

    (*(v192 + 56))(v191, 1, 1, v195);
    goto LABEL_94;
  }

  v86 = v198;
  if (!*(v85 + 16))
  {
    __break(1u);
    goto LABEL_104;
  }

  v87 = sub_90A4(*(v48 + 4));
  if ((v88 & 1) == 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (!*(v86 + 2))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v89 = *(v197 + 56);
  v90 = *(v89 + 8 * v87);
  v91 = sub_90A4(*v46);
  if ((v92 & 1) == 0)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v93 = vcvts_n_f32_s64(*(v89 + 8 * v91), 1uLL);
  if ((LODWORD(v93) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v93 <= -9.2234e18)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v93 >= 9.2234e18)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v94 = v93;

  if (v90 > v94)
  {

    v95 = sub_E324();
    v96 = sub_E4A4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134218496;
      *(v97 + 4) = 0x3FE0000000000000;
      *(v97 + 12) = 2048;
      if (!*(v198 + 2))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v98 = v197;
      if (!*(v197 + 16))
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v99 = v97;
      v100 = sub_90A4(*v201);
      if ((v101 & 1) == 0)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      *(v99 + 14) = *(*(v98 + 56) + 8 * v100);
      *(v99 + 22) = 2048;
      if (!*(v48 + 2))
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (!*(v98 + 16))
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v102 = sub_90A4(*(v48 + 4));
      if ((v103 & 1) == 0)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      *(v99 + 24) = *(*(v98 + 56) + 8 * v102);

      _os_log_impl(&dword_0, v95, v96, "Device owner: [Top-selfies] After replacing invalid device owners, keeping the new top selfies persons with %f of %ld (%ld selfies)", v99, 0x20u);
    }

    else
    {

      v98 = v197;
    }

    v160 = v198;
    v161 = v201;
    if (*(v98 + 16))
    {
      v162 = sub_90A4(*(v48 + 4));
      if (v163)
      {
        if (*(v160 + 2))
        {
          v164 = *(v197 + 56);
          v165 = *(v164 + 8 * v162);
          v166 = sub_90A4(*v161);
          if (v167)
          {
            v168 = (1.0 - (v165 / *(v164 + 8 * v166))) * 0.1;
            swift_beginAccess();
            v204 = v48;

LABEL_25:
            v64 = v192;
            v65 = v195;
            v66 = sub_E324();
            v67 = sub_E4A4();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              *v68 = 134218496;
              *(v68 + 4) = *(v48 + 2);
              *(v68 + 12) = 2048;
              *(v68 + 14) = 0x3FC3333340000000;
              *(v68 + 22) = 2048;
              *(v68 + 24) = 100;
              _os_log_impl(&dword_0, v66, v67, "Device owner: [Top-selfies] After replacing invalid, found %ld candidates before the gap > %f or because less than %ld selfies.", v68, 0x20u);
            }

            v69 = *(v48 + 2);
            if (v69 < 9)
            {
              v70 = *(v48 + 2);
            }

            if (v194)
            {
              if (v69 == 1)
              {
                v71 = *(v48 + 4);
                v72 = *(v56 + 16);

                v73 = sub_E274();

                if (*(v73 + 16))
                {
                  v75 = v189;
                  v74 = v190;
                  v76 = v179;
                  (*(v189 + 16))(v179, v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v190);

                  v77 = v185;
                  sub_E2E4();
                  (*(v75 + 8))(v76, v74);
                  v78 = 0;
                  v79 = v188;
                }

                else
                {

                  v78 = 1;
                  v79 = v188;
                  v77 = v185;
                }

                v150 = sub_E1A4();
                (*(*(v150 - 8) + 56))(v77, v78, 1, v150);
                sub_E264();
                v151 = sub_E324();
                v152 = sub_E4A4();
                if (os_log_type_enabled(v151, v152))
                {
                  v153 = swift_slowAlloc();
                  *v153 = 134217984;
                  *(v153 + 4) = v71;
                  _os_log_impl(&dword_0, v151, v152, "Device owner: only 1 top-selfie, returning %ld.", v153, 0xCu);
                }

                v154 = v191;
                v155 = v195;
                (*(v64 + 32))(v191, v79, v195);
                (*(v64 + 56))(v154, 0, 1, v155);
                goto LABEL_96;
              }

              v118 = sub_74DC(v117, v186, v187);
              v120 = v119;

              if ((v120 & 1) == 0)
              {
                v138 = *(v56 + 16);

                v139 = sub_E274();

                if (*(v139 + 16))
                {
                  v141 = v189;
                  v140 = v190;
                  v142 = *(v189 + 16);
                  v143 = v139 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
                  v202 = v118;
                  v144 = v65;
                  v145 = v175;
                  v142(v175, v143, v190);

                  v146 = v176;
                  sub_E2E4();
                  v147 = v145;
                  v65 = v144;
                  v118 = v202;
                  (*(v141 + 8))(v147, v140);
                  v148 = 0;
                  v149 = v177;
                }

                else
                {

                  v148 = 1;
                  v149 = v177;
                  v146 = v176;
                }

                v169 = sub_E1A4();
                (*(*(v169 - 8) + 56))(v146, v148, 1, v169);
                sub_E264();
                v170 = sub_E324();
                v171 = sub_E4A4();
                if (os_log_type_enabled(v170, v171))
                {
                  v172 = swift_slowAlloc();
                  *v172 = 134217984;
                  *(v172 + 4) = v118;
                  _os_log_impl(&dword_0, v170, v171, "Device owner: returning %ld.", v172, 0xCu);
                }

LABEL_101:
                v173 = v191;
                (*(v64 + 32))(v191, v149, v65);
                v121 = *(v64 + 56);
                v122 = v173;
                v123 = 0;
                goto LABEL_102;
              }
            }

            else
            {
              v104 = 32;
              while (v69)
              {
                v105 = *&v48[v104];
                v104 += 8;
                --v69;
                if (v105 == v63)
                {
                  v106 = *(v56 + 16);

                  v107 = v181;
                  sub_E2D4();
                  sub_E2A4();
                  (*(v182 + 8))(v107, v183);
                  v108 = sub_E284();

                  if (*(v108 + 16))
                  {
                    v110 = v189;
                    v109 = v190;
                    v111 = v178;
                    (*(v189 + 16))(v178, v108 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v190);

                    v112 = v180;
                    sub_E2E4();
                    (*(v110 + 8))(v111, v109);
                    v113 = 0;
                  }

                  else
                  {

                    v113 = 1;
                    v112 = v180;
                  }

                  v65 = v195;
                  v156 = sub_E1A4();
                  (*(*(v156 - 8) + 56))(v112, v113, 1, v156);
                  v149 = v184;
                  sub_E264();
                  v157 = sub_E324();
                  v158 = sub_E4A4();
                  if (os_log_type_enabled(v157, v158))
                  {
                    v159 = swift_slowAlloc();
                    *v159 = 134217984;
                    *(v159 + 4) = v63;
                    _os_log_impl(&dword_0, v157, v158, "Device owner: Contact picture matched a top-selfies person, returning %ld.", v159, 0xCu);
                  }

                  goto LABEL_101;
                }
              }

              v114 = sub_E324();
              v115 = sub_E4A4();
              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                *v116 = 0;
                _os_log_impl(&dword_0, v114, v115, "Device owner: Contact picture did not match a top-selfies person, returning nil.", v116, 2u);
              }
            }

            v121 = *(v64 + 56);
            v122 = v191;
            v123 = 1;
LABEL_102:
            v121(v122, v123, 1, v65);
LABEL_96:

            return;
          }

          goto LABEL_113;
        }

LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v127 = sub_E324();
  v128 = sub_E4A4();
  if (!os_log_type_enabled(v127, v128))
  {

    v134 = v192;
    v135 = v195;
    goto LABEL_93;
  }

  v129 = swift_slowAlloc();
  *v129 = 134218496;
  *(v129 + 4) = 0x3FE0000000000000;
  *(v129 + 12) = 2048;
  v130 = v197;
  if (!*(v198 + 2))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (!*(v197 + 16))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v131 = v129;
  v132 = sub_90A4(*v201);
  if ((v133 & 1) == 0)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *(v131 + 14) = *(*(v130 + 56) + 8 * v132);
  *(v131 + 22) = 2048;
  v134 = v192;
  v135 = v195;
  if (!*(v48 + 2))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (!*(v130 + 16))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v136 = sub_90A4(*(v48 + 4));
  if (v137)
  {
    *(v131 + 24) = *(*(v130 + 56) + 8 * v136);

    _os_log_impl(&dword_0, v127, v128, "Device owner: [Top-selfies] After replacing invalid device owners, the top selfie person <= %f of %ld (%ld)", v131, 0x20u);

LABEL_93:
    (*(v134 + 56))(v191, 1, 1, v135);
LABEL_94:

    goto LABEL_96;
  }

LABEL_125:
  __break(1u);
}

uint64_t sub_8BF4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v3 = sub_E344();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUDeviceOwnerPlugin()
{
  result = qword_187E0;
  if (!qword_187E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8CFC()
{
  result = sub_E344();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_8DA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for VUDeviceOwnerPlugin();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = sub_2164(a1);
  *a2 = v7;
  return result;
}

char *sub_8E18(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_18998, &qword_EDE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_8F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_189B0, &qword_EDF8);
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

void *sub_9020(uint64_t a1, uint64_t a2)
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

  sub_2118(&qword_189A0, &qword_EDE8);
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

unint64_t sub_90A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_E594();

  return sub_9160(a1, v4);
}

unint64_t sub_90E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_E5A4();
  sub_E3A4();
  v6 = sub_E5B4();

  return sub_91CC(a1, a2, v6);
}

unint64_t sub_9160(uint64_t a1, uint64_t a2)
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

unint64_t sub_91CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E574())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t sub_9284(size_t a1, int64_t a2, char a3)
{
  result = sub_92C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_92A4(char *a1, int64_t a2, char a3)
{
  result = sub_95A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_92C4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2118(&qword_189D0, &qword_EE08);
  v10 = *(sub_E314() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_E314() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_949C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_189A0, &qword_EDE8);
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

char *sub_95A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_18998, &qword_EDE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_96A4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_AC7C(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

Swift::Int sub_9814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_B094(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_E554(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2118(&qword_189A8, &qword_EDF0);
      v7 = sub_E424();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_9ACC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_9970(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_B094(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_E554(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2118(&qword_189A8, &qword_EDF0);
      v7 = sub_E424();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_A048(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_9ACC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A9CC(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_A5C4((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
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
      result = sub_8F1C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_8F1C((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = (v8 + 4);
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[16 * v5];
        v67 = *v65;
        v66 = *(v65 + 1);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
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

        v73 = &v34[16 * v5 - 16];
        v74 = *v73;
        v75 = &v34[16 * v5];
        v76 = *(v75 + 1);
        sub_A5C4((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        *(v73 + 1) = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[16 * v5], v75 + 16, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[16 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
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

uint64_t sub_A048(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A9CC(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_A7C8((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
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
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
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
      result = sub_8F1C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_8F1C((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = (v8 + 4);
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[16 * v5];
        v67 = *v65;
        v66 = *(v65 + 1);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
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

        v73 = &v34[16 * v5 - 16];
        v74 = *v73;
        v75 = &v34[16 * v5];
        v76 = *(v75 + 1);
        sub_A7C8((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        *(v73 + 1) = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[16 * v5], v75 + 16, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[16 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 >= *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
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

uint64_t sub_A5C4(char *__dst, char *__src, char *a3, char *a4)
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

      if (*(v4 + 1) < *(v6 + 1))
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
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_A7C8(char *__dst, char *__src, char *a3, char *a4)
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

      if (*(v6 + 1) < *(v4 + 1))
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
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t *sub_A9E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = *(a3 + 64) & v7;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return sub_AD94(result, a2, v4, a3);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_AD94(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_AABC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 5)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_AD94(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_AD94(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_ABA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_B0A8(v9, a2, a3, a4, a5 & 0x101);

    swift_bridgeObjectRelease_n();
    return v10;
  }

  return result;
}

void *sub_AC7C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_AD04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_B980(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_AD94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_2118(&qword_189B8, &qword_EE00);
  result = sub_E544();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_E594();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

void *sub_AF90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 48) + v14);
      v16 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v15;
      a2[1] = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
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
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_B0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v27 = 0;
  v13 = 0;
LABEL_4:
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v17 = v14 | (v13 << 6);
    v18 = *(*(a3 + 48) + 8 * v17);
    v19 = *(a4 + 16);
    v20 = 32;
    while (v19)
    {
      v21 = *(a4 + v20);
      v20 += 8;
      --v19;
      if (v21 == v18)
      {
        goto LABEL_4;
      }
    }

    if (a5)
    {

      v22 = sub_6798(v18, (a5 >> 8) & 1);

      if (v22)
      {
        continue;
      }
    }

    *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    if (__OFADD__(v27++, 1))
    {
      __break(1u);
LABEL_20:
      v24 = sub_AD94(a1, a2, v27, a3);

      return v24;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_20;
    }

    v16 = *(v7 + 8 * v13);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B26C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_retain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v12 = sub_ABA8(v13, v9, a1, a2, a3 & 0x101);

      goto LABEL_7;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_B0A8((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3 & 0x101);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_7:

  swift_bridgeObjectRelease_n();
  return v12;
}

char *sub_B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{

  sub_96A4(a1, sub_AABC, sub_AABC);

  v10 = sub_B26C(v9, a4, a5 & 0x101);

  v11 = sub_E324();
  v12 = sub_E4A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v10 + 16);

    _os_log_impl(&dword_0, v11, v12, "Device owner: [Top-selfies] After filtering at min 5 selfies and on predicate, found %ld entities with selfies.", v13, 0xCu);

    v14 = *(v10 + 16);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:

    return &_swiftEmptyArrayStorage;
  }

  v14 = *(v10 + 16);
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v36 = a2;
  v15 = sub_9020(v14, 0);
  v16 = sub_AF90(&v37, v15 + 4, v14, v10);

  sub_DA60();
  if (v16 != v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = v15;
  sub_9814(&v37);

  v17 = v37;
  sub_2118(&qword_18998, &qword_EDE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_ECE0;
  v19 = *(v17 + 2);
  if (v19)
  {
    v20 = v18;
    *(v18 + 32) = *(v17 + 4);
    if (v19 == 1)
    {

      return v20;
    }

    if (v36 < 101)
    {
      v22 = sub_E324();
      v23 = sub_E4A4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134218240;
        *(v24 + 4) = v36;
        *(v24 + 12) = 2048;
        *(v24 + 14) = 100;
        _os_log_impl(&dword_0, v22, v23, "Device owner: [Top-selfies] Number of selfies %ld is smaller than threshold %ld. Keeping at least two candidates.", v24, 0x16u);
      }

      if (*(v17 + 2) < 2uLL)
      {
        goto LABEL_33;
      }

      v25 = *(v17 + 6);
      v21 = 2;
      v20 = sub_8E18(&dword_0 + 1, 2, 1, v20);
      *(v20 + 2) = 2;
      *(v20 + 5) = v25;
      if (v19 <= 2)
      {
LABEL_23:

        v32 = sub_E324();
        v33 = sub_E4A4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          *(v34 + 4) = *(v20 + 2);
          *(v34 + 12) = 2048;
          *(v34 + 14) = 0x3FC3333340000000;

          _os_log_impl(&dword_0, v32, v33, "Device owner: [Top-selfies] Found %ld candidates before the gap becomes higher than %f.", v34, 0x16u);
        }

        else
        {
        }

        return v20;
      }
    }

    else
    {
      v21 = 1;
    }

    v26 = &v17[16 * v21 + 40];
    while (1)
    {
      v27 = *(v17 + 2);
      if (v21 - 1 >= v27)
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_29;
      }

      v28 = *(v26 - 2);
      if (__OFSUB__(v28, *v26))
      {
        goto LABEL_30;
      }

      if (((v28 - *v26) / v28) < 0.15)
      {
        v29 = *(v26 - 1);
        v31 = *(v20 + 2);
        v30 = *(v20 + 3);
        if (v31 >= v30 >> 1)
        {
          v20 = sub_8E18((v30 > 1), v31 + 1, 1, v20);
        }

        *(v20 + 2) = v31 + 1;
        *&v20[8 * v31 + 32] = v29;
        ++v21;
        v26 += 16;
        if (v19 != v21)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t *sub_B980(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_AD94(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_AD94(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_BA88(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v9);
    bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_B980((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_AD04(v13, v7, a1, a2);

  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_BC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2118(&unk_18980, &qword_EDD0);
    v3 = sub_E544();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_90E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_BD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2118(a2, a3);
    v5 = sub_E544();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_90E8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_BE30()
{
  v1 = v0;
  v2 = sub_2118(&qword_18918, &qword_ED70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v233 = &v207 - v4;
  v5 = sub_2118(&qword_18920, &qword_ED78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v232 = &v207 - v7;
  v8 = sub_E254();
  v237 = *(v8 - 8);
  v9 = *(v237 + 64);
  v10 = __chkstk_darwin(v8);
  v208 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v214 = &v207 - v13;
  v14 = __chkstk_darwin(v12);
  v213 = &v207 - v15;
  v16 = __chkstk_darwin(v14);
  v229 = &v207 - v17;
  __chkstk_darwin(v16);
  v227 = &v207 - v18;
  v19 = sub_2118(&qword_18928, &qword_ED80);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v211 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v210 = &v207 - v24;
  v25 = __chkstk_darwin(v23);
  v209 = &v207 - v26;
  v27 = __chkstk_darwin(v25);
  v212 = &v207 - v28;
  v29 = __chkstk_darwin(v27);
  v219 = &v207 - v30;
  v31 = __chkstk_darwin(v29);
  v231 = &v207 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v207 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v207 - v37;
  __chkstk_darwin(v36);
  v40 = &v207 - v39;
  v235 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v41 = sub_E324();
  v42 = sub_E4A4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Updating VUDeviceOwnerPlugin", v43, 2u);
  }

  CFAbsoluteTimeGetCurrent();
  v44 = v1;
  v45 = sub_27E8();
  v47 = v46;
  v234 = v48;
  LODWORD(v230) = v49;
  v50 = v237;
  (*(v237 + 56))(v40, 1, 1, v8);
  v236 = v8;
  v239 = v44;
  v228 = v40;
  if (v47)
  {
    v226 = v45;
    sub_46B4(v45, v47, v38);
    sub_DC18(v38, v40, &qword_18928, &qword_ED80);
    v51 = v236;
    sub_DFA0(v40, v35, &qword_18928, &qword_ED80);
    v52 = (*(v50 + 48))(v35, 1, v51);
    LODWORD(v218) = v52 != 1;
    if (v52 == 1)
    {
      sub_E008(v35, &qword_18928, &qword_ED80);
      v57 = v226;
      v58 = v234;
    }

    else
    {
      v53 = v227;
      (*(v50 + 32))(v227, v35, v51);
      v54 = *(v44 + 16);

      v55 = sub_E234();
      v243 = sub_2118(&qword_18960, &qword_EDB8);
      aBlock = v55;
      v56 = v238;
      sub_E214();
      if (v56)
      {

        (*(v50 + 8))(v53, v51);
        v238 = 0;
      }

      else
      {
        v238 = 0;
        (*(v50 + 8))(v53, v51);
      }

      v58 = v234;
      sub_2070(&aBlock);
      v44 = v239;
      v57 = v226;
    }

    v59 = v230;
    v230 = sub_5DD0(v57, v47);
    LODWORD(v217) = v59 | (v58 > 29);
    if (!(v59 & 1 | (v58 > 29)))
    {
      v60 = sub_E324();
      v61 = sub_E4A4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        *(v62 + 4) = v58;
        _os_log_impl(&dword_0, v60, v61, "Device owner: Not filtering out children because age of Me contact is %ld", v62, 0xCu);
      }

      v44 = v239;
    }

    sub_4F68(v57, v47);
    v216 = v63;
    v215 = v64;
  }

  else
  {
    v215 = 1;
    LODWORD(v218) = 0;
    v216 = 0;
    v230 = &_swiftEmptyArrayStorage;
    LODWORD(v217) = 1;
  }

  v65 = *(v44 + 16);
  v66 = enum case for VUGallery.EntityClass.person(_:);
  v67 = sub_E1F4();
  v68 = *(v67 - 8);
  v69 = *(v68 + 104);
  v70 = v232;
  LODWORD(v234) = v66;
  v221 = v69;
  v69(v232, v66, v67);
  v71 = *(v68 + 56);
  v226 = v68 + 56;
  v227 = v67;
  v225 = v71;
  v71(v70, 0, 1, v67);
  v72 = enum case for VUGallery.Source.frontCamera(_:);
  v73 = sub_E2C4();
  v74 = *(v73 - 8);
  v75 = v233;
  v76 = v72;
  v77 = v239;
  v220 = *(v74 + 104);
  v220(v233, v76, v73);
  v78 = *(v74 + 56);
  v223 = v74 + 56;
  v224 = v73;
  v222 = v78;
  v78(v75, 0, 1, v73);

  v79 = sub_E204();

  sub_E008(v75, &qword_18918, &qword_ED70);
  result = sub_E008(v70, &qword_18920, &qword_ED78);
  v81 = 0;
  v82 = 0;
  v83 = 1 << *(v79 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v79 + 64);
  v86 = (v83 + 63) >> 6;
  while (2)
  {
    if (v85)
    {
      v87 = v81;
      goto LABEL_25;
    }

    do
    {
      v87 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      if (v87 >= v86)
      {
        goto LABEL_28;
      }

      v85 = *(v79 + 64 + 8 * v87);
      ++v81;
    }

    while (!v85);
    v81 = v87;
LABEL_25:
    v88 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v89 = *(*(v79 + 56) + ((v87 << 9) | (8 * v88)));
    v90 = __OFADD__(v82, v89);
    v82 += v89;
    if (!v90)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_28:
  v91 = *(v77 + 16);
  v92 = v232;
  v93 = v227;
  v221(v232, v234, v227);
  v225(v92, 0, 1, v93);
  v94 = v233;
  v95 = v224;
  v220(v233, enum case for VUGallery.Source.backCamera(_:), v224);
  v222(v94, 0, 1, v95);

  v96 = sub_E204();

  sub_E008(v94, &qword_18918, &qword_ED70);
  result = sub_E008(v92, &qword_18920, &qword_ED78);
  v97 = 0;
  v98 = 0;
  v99 = 1 << *(v96 + 32);
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *(v96 + 64);
  v102 = (v99 + 63) >> 6;
  while (2)
  {
    if (!v101)
    {
      while (1)
      {
        v103 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_118;
        }

        if (v103 >= v102)
        {
          goto LABEL_40;
        }

        v101 = *(v96 + 64 + 8 * v103);
        ++v97;
        if (v101)
        {
          v97 = v103;
          goto LABEL_37;
        }
      }
    }

    v103 = v97;
LABEL_37:
    v104 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v105 = *(*(v96 + 56) + ((v103 << 9) | (8 * v104)));
    v90 = __OFADD__(v98, v105);
    v98 += v105;
    if (!v90)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_40:

  v106 = sub_E324();
  v107 = sub_E4A4();
  v108 = os_log_type_enabled(v106, v107);
  v234 = v79;
  if (v108)
  {
    v109 = swift_slowAlloc();
    *v109 = 134218752;
    *(v109 + 4) = v82;
    *(v109 + 12) = 2048;
    *(v109 + 14) = *(v234 + 16);

    *(v109 + 22) = 2048;
    *(v109 + 24) = v98;
    *(v109 + 32) = 2048;
    *(v109 + 34) = *(v96 + 16);

    _os_log_impl(&dword_0, v106, v107, "Device owner: Total of %ld faces in selfies assets for %ld entities and %ld faces in rear-facing assets for %ld entities", v109, 0x2Au);
    v79 = v234;
  }

  else
  {
  }

  v110 = v229;
  v111 = v231;
  sub_78C4(v82, v79, v98, v96, v230, 1, v217 & 1, v216, v231, v215 & 1);
  v112 = v219;
  sub_DFA0(v111, v219, &qword_18928, &qword_ED80);
  v113 = v236;
  v114 = v237;
  v220 = *(v237 + 48);
  v221 = (v237 + 48);
  if (v220(v112, 1, v236) != 1)
  {
    (*(v114 + 32))(v110, v112, v113);
    v116 = *(v114 + 16);
    if ((v218 & 1) == 0)
    {
      v117 = v213;
      v218 = *(v114 + 16);
      v116(v213, v110, v113);
      v118 = v239;
      v119 = sub_E324();
      v120 = sub_E4A4();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 134217984;
        v217 = v119;
        v122 = sub_E244();
        v219 = *(v237 + 8);
        (v219)(v117, v236);
        *(v121 + 4) = v122;
        v119 = v217;
        _os_log_impl(&dword_0, v217, v120, "Device owner (me ground truth does not exist): result %ld", v121, 0xCu);
        v118 = v239;
      }

      else
      {
        v219 = *(v237 + 8);
        (v219)(v117, v236);
      }

      v136 = *(v118 + 16);

      v110 = v229;
      v137 = sub_E234();
      v243 = sub_2118(&qword_18960, &qword_EDB8);
      aBlock = v137;
      v138 = v238;
      sub_E214();
      if (v138)
      {
        (v219)(v110, v236);
        goto LABEL_67;
      }

      v238 = 0;

      sub_2070(&aBlock);
      v113 = v236;
      v116 = v218;
    }

    v116(v214, v110, v113);
    v139 = v113;
    v140 = sub_E324();
    v141 = sub_E4A4();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 134217984;
      v143 = v214;
      v144 = sub_E244();
      v235 = *(v237 + 8);
      v235(v143, v236);
      *(v142 + 4) = v144;
      _os_log_impl(&dword_0, v140, v141, "Device owner: result ignoring me ground truth %ld", v142, 0xCu);
      v110 = v229;
    }

    else
    {
      v235 = *(v237 + 8);
      v235(v214, v139);
    }

    v145 = *(v239 + 16);

    v146 = sub_E234();
    v243 = sub_2118(&qword_18960, &qword_EDB8);
    aBlock = v146;
    v147 = v238;
    sub_E214();
    if (!v147)
    {
      v238 = 0;
      v235(v110, v236);

      sub_2070(&aBlock);
      v134 = 0xD000000000000013;
      goto LABEL_70;
    }

    v235(v110, v236);
LABEL_67:

    sub_E008(v231, &qword_18928, &qword_ED80);
    sub_2070(&aBlock);
    return sub_E008(v228, &qword_18928, &qword_ED80);
  }

  sub_E008(v112, &qword_18928, &qword_ED80);
  if (v218)
  {
    v115 = v239;
    goto LABEL_53;
  }

  v115 = v239;
  v123 = sub_E324();
  v124 = sub_E4A4();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&dword_0, v123, v124, "Device owner (me ground truth does not exist): result null", v125, 2u);
  }

  v126 = *(v115 + 16);

  v127 = sub_BC38(&off_14780);
  sub_2118(&qword_18930, &qword_ED88);
  swift_arrayDestroy();
  v243 = sub_2118(&qword_18938, &qword_ED90);
  aBlock = v127;
  v128 = v238;
  sub_E214();
  v238 = v128;
  if (v128)
  {
    goto LABEL_56;
  }

  sub_2070(&aBlock);
LABEL_53:
  v129 = sub_E324();
  v130 = sub_E4A4();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v129, v130, "Device owner: result ignoring me ground truth null", v131, 2u);
  }

  v132 = *(v115 + 16);

  v133 = sub_BC38(&off_147D0);
  sub_2118(&qword_18930, &qword_ED88);
  swift_arrayDestroy();
  v243 = sub_2118(&qword_18938, &qword_ED90);
  aBlock = v133;
  v134 = 0xD000000000000013;
  v135 = v238;
  sub_E214();
  v238 = v135;
  if (v135)
  {
LABEL_56:

    sub_E008(v231, &qword_18928, &qword_ED80);
    sub_2070(&aBlock);
    return sub_E008(v228, &qword_18928, &qword_ED80);
  }

  sub_2070(&aBlock);
LABEL_70:
  v148 = sub_E384();
  v149 = NSClassFromString(v148);

  v150 = v239;
  if (v149)
  {

    goto LABEL_116;
  }

  v151 = &loc_E000;
  if (os_variant_has_internal_ui())
  {
    v151 = (&dword_0 + 1);
    sub_78C4(v82, v234, v98, v96, &_swiftEmptyArrayStorage, 0, 0, 0, v212, 1u);

    v152 = *(v150 + 16);
    v153 = v232;
    v225(v232, 1, 1, v227);
    v154 = v233;
    v222(v233, 1, 1, v224);

    v155 = sub_E204();

    sub_E008(v154, &qword_18918, &qword_ED70);
    sub_E008(v153, &qword_18920, &qword_ED78);
    result = v155;
    v156 = 0;
    v157 = 0;
    v158 = 1 << *(result + 32);
    v159 = -1;
    if (v158 < 64)
    {
      v159 = ~(-1 << v158);
    }

    v160 = v159 & *(result + 64);
    v161 = (v158 + 63) >> 6;
    v134 = v228;
    v162 = v236;
    while (v160)
    {
      v163 = v156;
LABEL_82:
      v164 = __clz(__rbit64(v160));
      v160 &= v160 - 1;
      v165 = *(*(result + 56) + ((v163 << 9) | (8 * v164)));
      v90 = __OFADD__(v157, v165);
      v157 += v165;
      if (v90)
      {
        __break(1u);
        goto LABEL_85;
      }
    }

    while (1)
    {
      v163 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      if (v163 >= v161)
      {

        v166 = v220;
        LODWORD(v239) = v220(v231, 1, v162);
        LODWORD(v234) = v166(v212, 1, v162);
        v167 = v134;
        v168 = v134;
        v169 = v209;
        sub_DFA0(v167, v209, &qword_18928, &qword_ED80);
        LODWORD(v233) = v166(v169, 1, v236);
        v170 = v236;
        sub_E008(v169, &qword_18928, &qword_ED80);
        v171 = v166(v168, 1, v170);
        if (v171)
        {
          v235 = 0;
        }

        else
        {
          v172 = v168;
          v173 = v237;
          v174 = v208;
          (*(v237 + 16))(v208, v172, v170);
          v235 = sub_E244();
          (*(v173 + 8))(v174, v170);
        }

        v175 = v210;
        sub_DFA0(v231, v210, &qword_18928, &qword_ED80);
        v176 = v220(v175, 1, v170);
        if (v176 == 1)
        {
          sub_E008(v175, &qword_18928, &qword_ED80);
          v178 = 0;
        }

        else
        {
          LODWORD(v232) = v171;
          v177 = v175;
          v178 = sub_E244();
          v179 = v177;
          v171 = v232;
          (*(v237 + 8))(v179, v170);
        }

        v181 = v176 != 1 && v235 == v178;
        if (v171)
        {
          v181 = v176 == 1;
        }

        LODWORD(v235) = v181;
        v182 = v228;
        v183 = v220(v228, 1, v170);
        if (v183)
        {
          v232 = 0;
          v184 = v237;
        }

        else
        {
          v185 = v237;
          v186 = v208;
          (*(v237 + 16))(v208, v182, v170);
          v184 = v185;
          v232 = sub_E244();
          (*(v185 + 8))(v186, v170);
        }

        v187 = v211;
        sub_DFA0(v212, v211, &qword_18928, &qword_ED80);
        v188 = v220(v187, 1, v170);
        LODWORD(v237) = v188 == 1;
        if (v188 == 1)
        {
          sub_E008(v187, &qword_18928, &qword_ED80);
          v191 = 0;
        }

        else
        {
          LODWORD(v229) = v183;
          v189 = v187;
          v190 = v184;
          v191 = sub_E244();
          v192 = v189;
          v183 = v229;
          (*(v190 + 8))(v192, v170);
        }

        v194 = v188 != 1 && v232 == v191;
        if (v183)
        {
          v194 = v237;
        }

        LODWORD(v237) = v194;
        LODWORD(v236) = v233 != 1;
        LODWORD(v234) = v234 != 1;
        sub_2118(&qword_18950, &qword_EDA8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_ECF0;
        *(inited + 32) = 0xD000000000000013;
        *(inited + 40) = 0x800000000000EFE0;
        v196 = *(v230 + 2);

        *(inited + 48) = sub_E464();
        strcpy((inited + 56), "selfiesCount");
        *(inited + 69) = 0;
        *(inited + 70) = -5120;
        *(inited + 72) = sub_E464();
        *(inited + 80) = 0xD000000000000017;
        *(inited + 88) = 0x800000000000F000;
        *(inited + 96) = sub_E464();
        *(inited + 104) = 0x6F43736F746F6870;
        *(inited + 112) = 0xEB00000000746E75;
        *(inited + 120) = sub_E464();
        strcpy((inited + 128), "meNodeInferred");
        *(inited + 143) = -18;
        *(inited + 144) = sub_E444();
        *(inited + 152) = 0xD00000000000002ALL;
        *(inited + 160) = 0x800000000000F020;
        *(inited + 168) = sub_E444();
        *(inited + 176) = 0xD000000000000013;
        *(inited + 184) = 0x800000000000F050;
        *(inited + 192) = sub_E444();
        strcpy((inited + 200), "meNodeAccuracy");
        *(inited + 215) = -18;
        *(inited + 216) = sub_E444();
        *(inited + 224) = 0xD00000000000002ALL;
        *(inited + 232) = 0x800000000000F070;
        *(inited + 240) = sub_E444();
        v197 = sub_BD34(inited, &qword_18968, &qword_EDC0);
        v134 = 0xD000000000000013;
        swift_setDeallocating();
        sub_2118(&qword_18958, &qword_EDB0);
        swift_arrayDestroy();
        v198 = sub_E384();
        v199 = swift_allocObject();
        *(v199 + 16) = v197;
        v244 = sub_DA58;
        v245 = v199;
        aBlock = _NSConcreteStackBlock;
        v151 = &loc_E000;
        v241 = 1107296256;
        v242 = sub_256C;
        v243 = &unk_14898;
        v200 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v200);

        sub_E008(v212, &qword_18928, &qword_ED80);
        goto LABEL_115;
      }

      v160 = *(result + 64 + 8 * v163);
      ++v156;
      if (v160)
      {
        v156 = v163;
        goto LABEL_82;
      }
    }

LABEL_119:
    __break(1u);
  }

  else
  {
LABEL_85:

LABEL_115:
    CFAbsoluteTimeGetCurrent();
    sub_2118(&qword_18940, &qword_ED98);
    v201 = swift_initStackObject();
    *(v201 + 16) = xmmword_ECE0;
    *(v201 + 32) = v134 + 13;
    *(v201 + 40) = 0x800000000000EF50;
    *(v201 + 48) = sub_E454();
    v202 = sub_BD34(v201, &qword_18978, &qword_EDC8);
    swift_setDeallocating();
    sub_E008(v201 + 32, &qword_18948, &qword_EDA0);
    v203 = sub_E384();
    v204 = swift_allocObject();
    *(v204 + 16) = v202;
    v244 = sub_DA38;
    v245 = v204;
    aBlock = _NSConcreteStackBlock;
    v241 = v151[399];
    v242 = sub_256C;
    v243 = &unk_14848;
    v205 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v205);

LABEL_116:
    v206 = v228;
    sub_E008(v231, &qword_18928, &qword_ED80);
    return sub_E008(v206, &qword_18928, &qword_ED80);
  }

  return result;
}

uint64_t sub_DA00()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_DA68()
{
  result = qword_189C0;
  if (!qword_189C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189C0);
  }

  return result;
}

_OWORD *sub_DABC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_DACC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_DB14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DB5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_DBC4()
{
  result = qword_18A08;
  if (!qword_18A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A08);
  }

  return result;
}

uint64_t sub_DC18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2118(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_DC80(uint64_t a1)
{
  v2 = sub_E1D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2118(&qword_18A28, &unk_EE40);
    v10 = sub_E4F4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_E068(&qword_18A30, &type metadata accessor for Calendar.Component);
      v18 = sub_E364();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_E068(&qword_18A38, &type metadata accessor for Calendar.Component);
          v25 = sub_E374();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_DFA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2118(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_E008(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2118(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_E068(unint64_t *a1, void (*a2)(uint64_t))
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