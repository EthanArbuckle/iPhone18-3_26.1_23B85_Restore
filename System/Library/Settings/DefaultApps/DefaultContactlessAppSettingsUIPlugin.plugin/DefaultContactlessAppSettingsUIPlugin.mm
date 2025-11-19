id sub_1410()
{
  type metadata accessor for DefaultContactlessAppSettingsView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10678 = result;
  return result;
}

uint64_t sub_1468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BA0();
  sub_9B18();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_14FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BA0();
  sub_9B18();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1590(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t variable initialization expression of DefaultContactlessAppSettingsView.localizedTitle()
{
  v0 = *(*(sub_9AF8() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_9CE8() - 8) + 64);
  __chkstk_darwin();
  sub_9CD8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v2 = qword_10678;
  sub_9AE8();
  return sub_9D18();
}

uint64_t variable initialization expression of DefaultContactlessAppSettingsView.localizedNavigationTitle()
{
  v0 = *(*(sub_9AF8() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_9CE8() - 8) + 64);
  __chkstk_darwin();
  sub_9CD8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v2 = qword_10678;
  sub_9AE8();
  return sub_9D18();
}

uint64_t variable initialization expression of DefaultContactlessAppSettingsView.localizedDetail()
{
  v0 = *(*(sub_9AF8() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_9CE8() - 8) + 64);
  __chkstk_darwin();
  sub_9CD8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v2 = qword_10678;
  sub_9AE8();
  return sub_9D18();
}

uint64_t variable initialization expression of DefaultContactlessAppSettingsView.selection()
{
  v0 = type metadata accessor for DefaultContactlessAppRecord();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  _s37DefaultContactlessAppSettingsUIPlugin0abcD4ViewC22__observationRegistrar33_B8EE1352407608ADA5084C84AA7D82B111Observation0pH0Vvpfi_0();
  if (!*(v3 + 24))
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    if (*(v3 + 40))
    {
      goto LABEL_3;
    }

LABEL_5:
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    return v3;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_1BA0();
  sub_9B08();

  if (!*(v3 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getKeyPath();
  __chkstk_darwin();
  sub_1BA0();
  sub_9B08();

  return v3;
}

unint64_t sub_1BA0()
{
  result = qword_10380;
  if (!qword_10380)
  {
    type metadata accessor for DefaultContactlessAppRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10380);
  }

  return result;
}

uint64_t sub_1C28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2678(&qword_10380);
  sub_9B18();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1CC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_9E18())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_2678(&qword_10380);
    sub_9B08();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_1E5C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2678(&qword_10380);
  sub_9B18();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1EF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_9E18())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_2678(&qword_10380);
    sub_9B08();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t sub_2090(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  _s37DefaultContactlessAppSettingsUIPlugin0abcD4ViewC22__observationRegistrar33_B8EE1352407608ADA5084C84AA7D82B111Observation0pH0Vvpfi_0();
  if (!a1)
  {
    sub_1CC4(0, 0);
    v9 = 0;
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v4 = [a1 bundleId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_9D08();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_1CC4(v6, v8);
  v10 = [a1 bundleId];
  if (v10)
  {
    v11 = v10;
    v12 = sub_9D08();
    v14 = v13;

    v15 = objc_allocWithZone(LSApplicationRecord);
    v16 = sub_8D78(v12, v14, 1);
    if (v16)
    {
      v23 = v16;
      v24 = [v16 localizedName];
      v25 = sub_9D08();
      v27 = v26;

      sub_1EF8(v25, v27);
      goto LABEL_12;
    }
  }

  v9 = [a1 localizedDisplayName];
  if (!v9)
  {
    goto LABEL_10;
  }

  v17 = v9;
  v18 = sub_9D08();
  v20 = v19;

  v21 = v20;
  v9 = v18;
LABEL_11:
  sub_1EF8(v9, v21);
LABEL_12:

  return v2;
}

uint64_t sub_2240()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC37DefaultContactlessAppSettingsUIPlugin27DefaultContactlessAppRecord___observationRegistrar;
  v4 = sub_9B58();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for DefaultContactlessAppRecord()
{
  result = qword_103B8;
  if (!qword_103B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2340()
{
  result = sub_9B58();
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

uint64_t sub_2410@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_2678(&qword_10380);
  sub_9B18();

  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
}

Swift::Int sub_24CC()
{
  v2 = *v0;
  sub_9E28();
  sub_9CC8();
  return sub_9E48();
}

void sub_2530()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2678(&qword_10380);
  sub_9B18();

  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    sub_9E38(1u);

    sub_9D38();
  }

  else
  {
    sub_9E38(0);
  }
}

Swift::Int sub_2604()
{
  v2 = *v0;
  sub_9E28();
  sub_9CC8();
  return sub_9E48();
}

uint64_t sub_2678(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultContactlessAppRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_2678(&qword_10380);
  sub_9B18();

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();

  sub_9B18();

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (v4)
  {
    if (v6)
    {
      if (v5 == *(a2 + 16) && v4 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_9E18();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t sub_27FC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_283C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

id SESDefaultNFCApplication.id.getter()
{
  result = [v0 bundleId];
  if (result)
  {
    v2 = result;
    v3 = sub_9D08();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SESDefaultNFCApplication.isPassbook.getter()
{
  v1 = [v0 bundleId];
  if (v1)
  {
    v2 = v1;
    v3 = sub_9D08();
    v5 = v4;

    if (v3 == 0xD000000000000012 && 0x800000000000A350 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_9E18();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_298C(uint64_t *a1@<X8>)
{
  v3 = [*v1 bundleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_9D08();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t DefaultContactlessAppSettingsView.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DefaultContactlessAppSettingsView.available.getter()
{
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  return *(v0 + 32);
}

uint64_t sub_2ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t type metadata accessor for DefaultContactlessAppSettingsView()
{
  result = qword_104F0;
  if (!qword_104F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C04(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }

  return result;
}

uint64_t DefaultContactlessAppSettingsView.localizedTitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t DefaultContactlessAppSettingsView.localizedNavigationTitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DefaultContactlessAppSettingsView.localizedDetail.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v1 = *(v4 + 80);

  return v2;
}

uint64_t sub_2E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t DefaultContactlessAppSettingsView.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 72) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 80);
      if (sub_9E18())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B08();
}

uint64_t sub_3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 80);
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

void (*DefaultContactlessAppSettingsView.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC37DefaultContactlessAppSettingsUIPlugin33DefaultContactlessAppSettingsView___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  *v4 = v1;
  swift_getKeyPath();
  sub_9B38();

  swift_beginAccess();
  return sub_3244;
}

void sub_3244(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_9B28();

  free(v1);
}

uint64_t sub_32C8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v2 = *(v0 + 88);
  v1 = *(v4 + 96);

  return v2;
}

uint64_t sub_3378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_3424(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 88) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 96);
      if (sub_9E18())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t sub_3594()
{
  swift_getKeyPath();
  v4 = v0;
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v2 = *(v0 + 104);
  v1 = *(v4 + 112);

  return v2;
}

uint64_t sub_3644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
}

uint64_t sub_36F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 104) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 112);
      if (sub_9E18())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_3860()
{
  v1 = *(*(sub_9AF8() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_9CE8() - 8) + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v3 = *(v0 + 128);
  swift_getKeyPath();
  sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);

  sub_9B18();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_9CD8();
    if (qword_10378 != -1)
    {
      swift_once();
    }

    v7 = qword_10678;
    sub_9AE8();
    v4 = sub_9D18();
  }

  DefaultContactlessAppSettingsView.localizedDetail.setter(v4, v6);
  return sub_3B68();
}

uint64_t sub_3AC4()
{
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v1 = *(v0 + 128);
}

uint64_t sub_3B68()
{
  v1 = *(*(sub_9AF8() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_9CE8() - 8) + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v3 = *(v0 + 136);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v9 = *(v0 + 136);
    }

    v4 = sub_9E08();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    sub_9CD8();
    if (qword_10378 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_9CD8();
  if (qword_10378 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_7:
  v5 = qword_10678;
  sub_9AE8();
  v6 = sub_9D18();
  return sub_3424(v6, v7);
}

uint64_t sub_3DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  *a2 = *(v3 + 128);
}

uint64_t sub_3E8C(uint64_t a1)
{
  v3 = *(v1 + 128);

  v5 = sub_26BC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 128);
    *(v1 + 128) = a1;

    sub_3860();
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }
}

uint64_t sub_3FF8()
{
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v1 = *(v0 + 136);
}

uint64_t sub_409C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  *a2 = *(v3 + 136);
}

uint64_t sub_4148(uint64_t a1)
{
  v3 = *(v1 + 136);

  v5 = sub_9044(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 136);
    *(v1 + 136) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }
}

uint64_t DefaultContactlessAppSettingsView.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  DefaultContactlessAppSettingsView.init(for:)(a1, a2);
  return v7;
}

uint64_t DefaultContactlessAppSettingsView.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_9AF8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_9CE8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(v2 + 16) = 0xD00000000000002CLL;
  *(v2 + 24) = 0x800000000000A220;
  *(v2 + 32) = 0;
  sub_9CD8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v8 = qword_10678;
  sub_9AE8();
  v9 = v8;
  *(v2 + 40) = sub_9D18();
  *(v2 + 48) = v10;
  sub_9CD8();
  sub_9AE8();
  *(v2 + 56) = sub_9D18();
  *(v2 + 64) = v11;
  sub_9CD8();
  sub_9AE8();
  *(v2 + 72) = sub_9D18();
  *(v2 + 80) = v12;
  v13 = type metadata accessor for DefaultContactlessAppRecord();
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  _s37DefaultContactlessAppSettingsUIPlugin0abcD4ViewC22__observationRegistrar33_B8EE1352407608ADA5084C84AA7D82B111Observation0pH0Vvpfi_0();
  if (*(v16 + 24))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 3) = 0;
    *(&v31 - 2) = 0;
    *(&v31 - 4) = v16;
    aBlock[0] = v16;
    sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
    sub_9B08();
  }

  else
  {
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
  }

  v18 = v32;
  if (*(v16 + 40))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v31 - 3) = 0;
    *(&v31 - 2) = 0;
    *(&v31 - 4) = v16;
    aBlock[0] = v16;
    sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
    sub_9B08();
  }

  else
  {
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
  }

  *(v2 + 128) = v16;
  *(v2 + 136) = &_swiftEmptyArrayStorage;
  _s37DefaultContactlessAppSettingsUIPlugin0abcD4ViewC22__observationRegistrar33_B8EE1352407608ADA5084C84AA7D82B111Observation0pH0Vvpfi_0();
  v20 = swift_allocObject();
  swift_weakInit();

  if (v18)
  {
    v21 = sub_9CF8();
  }

  else
  {
    v21 = 0;
  }

  aBlock[4] = sub_4A6C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_57AC;
  aBlock[3] = &unk_C738;
  v22 = _Block_copy(aBlock);
  v23 = [objc_opt_self() contextWithBundleId:v21 onChange:{v22, v31}];

  _Block_release(v22);

  v24 = *(v3 + 120);
  *(v3 + 120) = v23;

  sub_4C54();
  v25 = *(v3 + 120);
  if (v25)
  {
    v26 = [v25 getDefaultNFCApplication];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v13 + 48);
  v28 = *(v13 + 52);
  swift_allocObject();
  v29 = sub_2090(v26);
  sub_3E8C(v29);
  sub_53B8();
  sub_3B68();
  return v3;
}

uint64_t sub_48A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_48D8(uint64_t a1)
{
  v2 = (*(*(sub_5E40(&qword_10670, &qword_B0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v9 - v3;
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_9D98();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = sub_9D68();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_54EC(0, 0, v4, &unk_B0D0, v7);
}

uint64_t sub_4A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_9D78();
  *(v4 + 96) = sub_9D68();
  v6 = sub_9D58();

  return _swift_task_switch(sub_4B0C, v6, v5);
}

uint64_t sub_4B0C()
{
  v2 = v0[11];
  v1 = v0[12];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_4C54();
  }

  v3 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 120);
    if (v5)
    {
      v6 = [v5 getDefaultNFCApplication];
    }

    else
    {
      v6 = 0;
    }

    v7 = type metadata accessor for DefaultContactlessAppRecord();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_2090(v6);
    sub_3E8C(v10);
  }

  v11 = v0[11];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_53B8();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_4C54()
{
  v1 = *(v0 + 120);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = [v1 defaultAppCandidates];
    sub_95AC();
    v4 = sub_9D48();

    v5 = v4;
    if (v4 >> 62)
    {
      v48 = v4;
      v6 = sub_9E08();
      v5 = v48;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_4:
        v7 = v5;
        v50[1] = v0;
        v57 = &_swiftEmptyArrayStorage;
        sub_9DD8();
        if (v6 < 0)
        {
          __break(1u);
        }

        v8 = sub_9D78();
        v9 = 0;
        v10 = v7;
        v51 = v7 & 0xC000000000000001;
        v52 = v8;
        v53 = v6;
        v54 = v7;
        while (1)
        {
          if (v51)
          {
            v12 = sub_9DA8();
          }

          else
          {
            v12 = *(v10 + 8 * v9 + 32);
          }

          v13 = v12;
          v55 = sub_9D68();
          sub_9D58();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v14 = type metadata accessor for DefaultContactlessAppRecord();
          v15 = *(v14 + 48);
          v16 = *(v14 + 52);
          v17 = swift_allocObject();
          *(v17 + 16) = 0u;
          *(v17 + 32) = 0u;
          v18 = v13;
          _s37DefaultContactlessAppSettingsUIPlugin0abcD4ViewC22__observationRegistrar33_B8EE1352407608ADA5084C84AA7D82B111Observation0pH0Vvpfi_0();
          v19 = [v18 bundleId];
          if (v19)
          {
            v20 = v19;
            v21 = sub_9D08();
            v23 = v22;

            v24 = *(v17 + 24);
            if (v24)
            {
              if (!v23)
              {
                goto LABEL_25;
              }

              if (*(v17 + 16) == v21 && v24 == v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = v23;
                v26 = *(v17 + 24);
                if ((sub_9E18() & 1) == 0)
                {
LABEL_25:
                  swift_getKeyPath();
                  __chkstk_darwin();
                  v56 = v17;
                  sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
                  sub_9B08();

                  goto LABEL_28;
                }
              }
            }

            else
            {
              if (v23)
              {
                goto LABEL_25;
              }

              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
            v21 = 0;
            if (*(v17 + 24))
            {
              goto LABEL_25;
            }
          }

          *(v17 + 16) = v21;
          *(v17 + 24) = v25;

LABEL_28:
          v27 = [v18 bundleId];
          if (v27)
          {
            v28 = v27;
            sub_9D08();

            v29 = objc_allocWithZone(LSApplicationRecord);
            v30 = sub_9CF8();

            v56 = 0;
            v31 = [v29 initWithBundleIdentifier:v30 allowPlaceholder:1 error:&v56];

            if (v31)
            {
              v32 = v56;
              v33 = [v31 localizedName];
              v34 = sub_9D08();
              v36 = v35;

              v37 = *(v17 + 40);
              if (v37 && (*(v17 + 32) == v34 && v37 == v36 || (v38 = *(v17 + 40), (sub_9E18() & 1) != 0)))
              {
                *(v17 + 32) = v34;
                *(v17 + 40) = v36;
              }

              else
              {
                swift_getKeyPath();
                v50[2] = v50;
                __chkstk_darwin();
                v56 = v17;
                sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
                sub_9B08();
              }

              goto LABEL_7;
            }

            v39 = v56;
            sub_9AD8();

            swift_willThrow();
          }

          v40 = [v18 localizedDisplayName];
          if (v40)
          {
            v41 = v40;
            v42 = sub_9D08();
            v44 = v43;

            v45 = *(v17 + 40);
            if (v45)
            {
              if (v44)
              {
                if (*(v17 + 32) == v42 && v45 == v44)
                {
                  v46 = v44;
LABEL_50:
                  *(v17 + 32) = v42;
                  *(v17 + 40) = v46;

                  goto LABEL_7;
                }

                v46 = v44;
                v47 = *(v17 + 40);
                if (sub_9E18())
                {
                  goto LABEL_50;
                }
              }
            }

            else if (!v44)
            {
              v46 = 0;
              goto LABEL_50;
            }
          }

          else
          {
            v46 = 0;
            v42 = 0;
            if (!*(v17 + 40))
            {
              goto LABEL_50;
            }
          }

          swift_getKeyPath();
          __chkstk_darwin();
          v56 = v17;
          sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
          sub_9B08();

LABEL_7:
          ++v9;
          sub_9DB8();
          v11 = v57[2];
          sub_9DE8();
          sub_9DF8();
          sub_9DC8();
          v10 = v54;
          if (v53 == v9)
          {

            v2 = v57;
            return sub_4148(v2);
          }
        }
      }
    }
  }

  return sub_4148(v2);
}

id sub_53B8()
{
  result = *(v0 + 120);
  if (result)
  {
    result = [result shouldShowDefaultNFCAppPicker];
    v2 = result;
    if (result != *(v0 + 32))
    {
LABEL_3:
      swift_getKeyPath();
      __chkstk_darwin();
      sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
      sub_9B08();
    }
  }

  else
  {
    v2 = 0;
    if (*(v0 + 32))
    {
      goto LABEL_3;
    }
  }

  *(v0 + 32) = v2;
  return result;
}

uint64_t sub_54EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_5E40(&qword_10670, &qword_B0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_97E0(a3, v26 - v10);
  v12 = sub_9D98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9850(v11);
  }

  else
  {
    sub_9D88();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_9D58();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_9D28() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_9850(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9850(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_57AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_57F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DefaultContactlessAppSettingsView.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DefaultContactlessAppSettingsView.init(for:)(0, 0);
  return v3;
}

uint64_t DefaultContactlessAppSettingsView.deinit()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 120);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 120) = 0;

  v3 = *(v0 + 24);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = OBJC_IVAR____TtC37DefaultContactlessAppSettingsUIPlugin33DefaultContactlessAppSettingsView___observationRegistrar;
  v12 = sub_9B58();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t DefaultContactlessAppSettingsView.__deallocating_deinit()
{
  DefaultContactlessAppSettingsView.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_5980(uint64_t a1)
{
  swift_getKeyPath();
  sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
  sub_9B18();

  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);

    sub_3E8C(a1);
    v4 = *(v1 + 120);
    if (v4)
    {
      v5 = v4;
      v6 = sub_9CF8();

      [v5 setDefaultNFCApplication:v6];
    }

    else
    {
    }
  }
}

uint64_t DefaultContactlessAppSettingsView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_5E40(&qword_10468, &qword_ADF0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  sub_5E40(&qword_10470, &qword_ADF8);
  sub_6050();
  sub_9BE8();
  sub_9BC8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v7 = qword_10678;
  v8 = sub_9BF8();
  v22 = v9;
  v23 = v8;
  v11 = v10;
  v21 = v12;
  sub_9D78();

  v13 = sub_9D68();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v1;

  v15 = sub_9D68();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v2;
  sub_9C98();
  sub_5E40(&qword_104A8, &qword_AE18);
  sub_8CC0(&qword_104B0, &qword_10468, &qword_ADF0);
  sub_8CC0(&qword_104B8, &qword_104A8, &qword_AE18);
  v17 = v26;
  v18 = v23;
  v19 = v22;
  sub_9C38();

  sub_7060(v18, v19, v11 & 1);

  return (*(v25 + 8))(v6, v17);
}

uint64_t sub_5E40(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5E88(uint64_t a1)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_66F8(a1, v3);
  sub_5E40(&qword_105E0, &qword_B030);
  sub_5E40(&qword_104A0, &qword_AE10);
  sub_6184(&qword_10480, &qword_AE00);
  sub_9BB8();
  sub_6184(&qword_10488, &qword_AE08);
  sub_8CC0(&qword_10490, &qword_10488, &qword_AE08);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_61CC();
  sub_9CB8();
}

unint64_t sub_6050()
{
  result = qword_10478;
  if (!qword_10478)
  {
    sub_6184(&qword_10470, &qword_ADF8);
    sub_6184(&qword_10480, &qword_AE00);
    sub_9BB8();
    sub_6184(&qword_10488, &qword_AE08);
    sub_8CC0(&qword_10490, &qword_10488, &qword_AE08);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_61CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10478);
  }

  return result;
}

uint64_t sub_6184(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_61CC()
{
  result = qword_10498;
  if (!qword_10498)
  {
    sub_6184(&qword_104A0, &qword_AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10498);
  }

  return result;
}

uint64_t sub_623C@<X0>(uint64_t a1@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_62EC(a1);
}

uint64_t sub_62EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v27 = sub_5E40(&qword_10480, &qword_AE00);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v27);
  v5 = v26 - v4;
  v6 = sub_5E40(&qword_10488, &qword_AE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = sub_9BC8();
  v26[1] = v12;
  v26[2] = v11;
  v26[0] = v13;
  sub_9D78();

  v14 = sub_9D68();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;

  v16 = sub_9D68();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v2;
  type metadata accessor for DefaultContactlessAppRecord();
  sub_9C88();
  v30 = v32;
  v31 = v33;
  sub_5E40(&qword_105F0, &qword_B060);
  sub_8BC8(&qword_105F8, type metadata accessor for DefaultContactlessAppRecord);
  sub_8A9C();
  sub_9C78();
  v18 = sub_8CC0(&qword_10490, &qword_10488, &qword_AE08);
  sub_9C28();
  (*(v7 + 8))(v10, v6);
  v19 = sub_9BB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9BA8();
  v32 = v6;
  *&v33 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_9C18();
  (*(v20 + 8))(v23, v19);
  return (*(v29 + 8))(v5, v24);
}

uint64_t sub_66F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v4 = *(a1 + 96);
  if (v4)
  {
    v13 = *(a1 + 88);
    v14 = *(a1 + 96);
    sub_89E8();

    v4 = sub_9C08();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12 = v8 & 1;
  }

  else
  {

    v6 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

uint64_t sub_686C@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v4 = *(a1 + 112);

  *a2 = v4 != 0;
  return result;
}

uint64_t sub_698C@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_686C(v1[4], a1);
}

uint64_t sub_6998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a4 + 112))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }

  else
  {
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
  }
}

uint64_t sub_6B3C@<X0>(char *a1@<X8>)
{
  v19 = a1;
  sub_9D78();
  v20 = sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = sub_5E40(&qword_105C8, &qword_AFF0);
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);

  v4 = sub_9C68();
  v18[1] = v18;
  __chkstk_darwin(v4);
  v5 = sub_5E40(&qword_105D0, &qword_AFF8);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5 - 8);
  v8 = v18 - v7;
  sub_9B78();
  v9 = sub_9B88();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);

  v10 = sub_9C58();
  v18[0] = v18;
  __chkstk_darwin(v10);
  v11 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v13 = v12(v11, v11, v1);
  __chkstk_darwin(v13);
  v12(v11, v11, v1);
  v14 = v19;
  v12(v19, v11, v1);
  v15 = sub_5E40(&qword_105D8, &qword_B000);
  v12(&v14[*(v15 + 48)], v11, v1);
  v16 = v2[1];
  v16(v11, v1);
  v16(v11, v1);
  v16(v11, v1);
  v16(v11, v1);
}

uint64_t sub_6F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  if (*(a1 + 112))
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_7060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_70D4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v4 = *(a1 + 128);

  *a2 = v4;
  return result;
}

uint64_t sub_71F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v7 = *(a5 + 128);

  v9 = sub_26BC(v8, v6);

  if ((v9 & 1) == 0)
  {

    sub_3E8C(v10);
    swift_getKeyPath();
    sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
    sub_9B18();

    if (*(v6 + 24))
    {
      v11 = *(a5 + 120);
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = *(v6 + 16);
      v13 = v11;

      v14 = sub_9CF8();

      v15 = [v13 alertMessageForDefaultAppChangeTo:v14];

      if (v15)
      {
        v16 = sub_9D08();
        v18 = v17;

        sub_36F0(v16, v18);
      }

      else
      {
LABEL_8:
        sub_5980(v6);
      }
    }
  }
}

uint64_t sub_7438(uint64_t a1)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v3 = *(a1 + 136);

  sub_5E40(&qword_10618, &qword_B098);
  sub_5E40(&qword_10610, &qword_B068);
  type metadata accessor for DefaultContactlessAppRecord();
  sub_8B64();
  sub_8CC0(&qword_10608, &qword_10610, &qword_B068);
  sub_8BC8(&qword_10628, type metadata accessor for DefaultContactlessAppRecord);
  sub_9CA8();
}

uint64_t sub_7638(uint64_t *a1)
{
  v1 = *a1;
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultContactlessAppRecord();

  sub_5E40(&qword_10630, &qword_B0A0);
  sub_8BC8(&qword_105F8, type metadata accessor for DefaultContactlessAppRecord);
  sub_8CC0(&qword_10638, &qword_10630, &qword_B0A0);
  sub_9B98();
}

uint64_t sub_779C()
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_5E40(&qword_10640, &qword_B0A8);
  sub_8C28();
  sub_9C48();
}

uint64_t sub_78A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
  sub_9B18();

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);

    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = &_swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_5E40(&qword_10640, &qword_B0A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v29 - v5;
  swift_getKeyPath();
  v29[1] = a1;
  sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
  sub_9B18();

  if (*(a1 + 24))
  {
    v7 = *(a1 + 16);
    v8 = sub_5E40(&qword_10658, &qword_B0B0);
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = v29 - v11;
    v13 = objc_allocWithZone(ISIcon);

    v14 = sub_9CF8();

    [v13 initWithBundleIdentifier:{v14, v29[0]}];

    v15 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    sub_9B68();
    v16 = sub_5E40(&qword_10660, &qword_B0B8);
    v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v16);
    (*(v9 + 16))(v29 - v18, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_8CC0(&qword_10650, &qword_10658, &qword_B0B0);
    sub_9BD8();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = sub_5E40(&qword_10658, &qword_B0B0);
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    __chkstk_darwin(v19);
    v23 = v29 - v22;
    v24 = [objc_opt_self() genericApplicationIcon];
    sub_9B68();
    v25 = sub_5E40(&qword_10660, &qword_B0B8);
    v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v25);
    (*(v20 + 16))(v29 - v27, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_8CC0(&qword_10650, &qword_10658, &qword_B0B0);
    sub_9BD8();
    (*(v20 + 8))(v23, v19);
  }

  sub_8D08(v6, v29[0]);
}

uint64_t sub_7EF0(void *a1)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  v2 = a1[16];

  sub_5980(v3);

  if (a1[14])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_9B08();
  }

  else
  {
    a1[13] = 0;
    a1[14] = 0;
  }
}

uint64_t sub_80D8(void *a1)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[15];
  if (v2)
  {
    v3 = [v2 getDefaultNFCApplication];
  }

  else
  {
    v3 = 0;
  }

  v4 = type metadata accessor for DefaultContactlessAppRecord();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2090(v3);
  sub_3E8C(v7);
  if (a1[14])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
    sub_9B08();
  }

  else
  {
    a1[13] = 0;
    a1[14] = 0;
  }
}

uint64_t sub_82DC@<X0>(uint64_t a1@<X8>)
{
  sub_9D78();
  sub_9D68();
  sub_9D58();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_9BC8();
  if (qword_10378 != -1)
  {
    swift_once();
  }

  v2 = qword_10678;
  v3 = sub_9BF8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_8438()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_846C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  return *(v1 + 32);
}

uint64_t sub_850C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);

  return v1;
}

uint64_t sub_8540()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_8BC8(&qword_10460, type metadata accessor for DefaultContactlessAppSettingsView);
  sub_9B18();

  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);

  return v2;
}

uint64_t sub_8604()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);

  return v1;
}

uint64_t sub_865C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  result = DefaultContactlessAppSettingsView.init(for:)(0, 0);
  *a1 = v5;
  return result;
}

uint64_t sub_86A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  result = DefaultContactlessAppSettingsView.init(for:)(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_86F4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_870C()
{
  result = sub_9B58();
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

uint64_t sub_87E8()
{
  sub_6184(&qword_10468, &qword_ADF0);
  sub_6184(&qword_104A8, &qword_AE18);
  sub_8CC0(&qword_104B0, &qword_10468, &qword_ADF0);
  sub_8CC0(&qword_104B8, &qword_104A8, &qword_AE18);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8910(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_3E8C(v4);
}

uint64_t sub_893C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 112);
  *(v1 + 104) = v0[3];
  *(v1 + 112) = v2;
}

uint64_t sub_89A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

unint64_t sub_89E8()
{
  result = qword_105E8;
  if (!qword_105E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_105E8);
  }

  return result;
}

uint64_t sub_8A3C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 96);
  *(v1 + 88) = v0[3];
  *(v1 + 96) = v2;
}

uint64_t sub_8A7C@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_70D4(v1[4], a1);
}

unint64_t sub_8A9C()
{
  result = qword_10600;
  if (!qword_10600)
  {
    sub_6184(&qword_105F0, &qword_B060);
    sub_8CC0(&qword_10608, &qword_10610, &qword_B068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10600);
  }

  return result;
}

uint64_t sub_8B38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4148(v4);
}

unint64_t sub_8B64()
{
  result = qword_10620;
  if (!qword_10620)
  {
    sub_6184(&qword_10618, &qword_B098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10620);
  }

  return result;
}

uint64_t sub_8BC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_8C28()
{
  result = qword_10648;
  if (!qword_10648)
  {
    sub_6184(&qword_10640, &qword_B0A8);
    sub_8CC0(&qword_10650, &qword_10658, &qword_B0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10648);
  }

  return result;
}

uint64_t sub_8CC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6184(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5E40(&qword_10640, &qword_B0A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_8D78(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_9CF8();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_9AD8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_8E54(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8F4C;

  return v7(a1);
}

uint64_t sub_8F4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_9044(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = v32)
  {
    if (a2 >> 62)
    {
      v33 = v3;
      result = sub_9E08();
      v3 = v33;
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v34 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_61;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v21 = (v3 + 32);
    v22 = (a2 + 32);
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v23 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    while (v4)
    {
      if (!v23)
      {
        goto LABEL_55;
      }

      v41 = v21;
      v43 = i;
      v25 = *v21;
      a2 = *v22;
      swift_getKeyPath();
      sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);

      sub_9B18();

      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      swift_getKeyPath();

      sub_9B18();

      v28 = *(a2 + 24);
      if (v27)
      {
        if (!v28)
        {
LABEL_49:

LABEL_50:

          return 0;
        }

        if (v26 == *(a2 + 16) && v27 == v28)
        {
        }

        else
        {
          v29 = *(a2 + 24);
          v30 = sub_9E18();

          if ((v30 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v24 = *(a2 + 24);

        if (v28)
        {
          goto LABEL_50;
        }
      }

      --v23;
      --v4;
      v21 = v41 + 1;
      ++v22;
      i = v43 - 1;
      if (v43 == 1)
      {
        return 1;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v31 = v3;
    v32 = sub_9E08();
    v3 = v31;
  }

  v38 = a2 & 0xC000000000000001;
  v39 = v3 & 0xC000000000000001;
  v11 = 4;
  v42 = i;
  v36 = v3;
  v37 = a2;
  while (1)
  {
    v13 = v11 - 4;
    v4 = v11 - 3;
    if (__OFADD__(v11 - 4, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v39)
    {
      result = sub_9DA8();
      v14 = result;
      goto LABEL_25;
    }

    if (v13 >= *(v35 + 16))
    {
      break;
    }

    v14 = *(v3 + 8 * v11);

LABEL_25:
    v40 = v11 - 3;
    if (v38)
    {
      v15 = sub_9DA8();
    }

    else
    {
      if (v13 >= *(v34 + 16))
      {
        goto LABEL_60;
      }

      v15 = *(a2 + 8 * v11);
    }

    swift_getKeyPath();
    sub_8BC8(&qword_10380, type metadata accessor for DefaultContactlessAppRecord);
    sub_9B18();

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    swift_getKeyPath();

    sub_9B18();

    v18 = *(v15 + 24);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_49;
      }

      if (v17 == *(v15 + 16) && v16 == v18)
      {
      }

      else
      {
        v19 = *(v15 + 24);
        v20 = sub_9E18();

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v12 = *(v15 + 24);

      if (v18)
      {
        goto LABEL_50;
      }
    }

    ++v11;
    v3 = v36;
    a2 = v37;
    if (v40 == v42)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_9514()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 136);
  *(v1 + 136) = *(v0 + 24);
}

uint64_t sub_9560()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 24);

  return sub_3860();
}

unint64_t sub_95AC()
{
  result = qword_10668;
  if (!qword_10668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10668);
  }

  return result;
}

uint64_t sub_95F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_96EC;

  return sub_4A74(a1, v4, v5, v6);
}

uint64_t sub_96EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_97E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5E40(&qword_10670, &qword_B0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9850(uint64_t a1)
{
  v2 = sub_5E40(&qword_10670, &qword_B0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_98B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_98F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_9AA4;

  return sub_8E54(a1, v5);
}

uint64_t sub_99A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_96EC;

  return sub_8E54(a1, v5);
}