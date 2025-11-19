uint64_t sub_1CC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

uint64_t sub_1D34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_292E4();
}

uint64_t sub_1DA0()
{
  result = sub_28FB4();
  if (!result)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v1 = sub_29264();
    sub_5BB4(v1, qword_3C140);
    v2 = sub_29254();
    v3 = sub_29DA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_DA08(0xD00000000000001FLL, 0x800000000002DFD0, &v6);
      _os_log_impl(&dword_0, v2, v3, "%{public}s", v4, 0xCu);
      sub_5FD0(v5);
    }

    result = sub_29FD4();
    __break(1u);
  }

  return result;
}

id sub_1F30(uint64_t a1, void (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), void (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  ObjectType = swift_getObjectType();
  v8 = sub_51E0(&qword_39148, &qword_2AD48);
  v9 = sub_7AA0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel__resolvedViews;
  v28 = &_swiftEmptyArrayStorage;
  sub_51E0(&qword_39048, &qword_2AC00);
  sub_292B4();
  (*(v11 + 32))(&v3[v16], v15, v8);
  if (sub_2844(&_swiftEmptyArrayStorage))
  {
    v17 = sub_59F0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters] = v17;
  v18 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_dataModel;
  v19 = sub_29014();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v3[v18], a1, v19);
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = sub_2140;
  }

  if (a2)
  {
    v22 = a3;
  }

  else
  {
    v22 = 0;
  }

  v23 = &v3[OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_remoteViewControllerProvider];
  *v23 = v21;
  v23[1] = v22;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "init");
  (*(v20 + 8))(a1, v19);
  return v24;
}

void sub_2140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_2218;
  v8[3] = &unk_35E38;
  v7 = _Block_copy(v8);

  [v6 requestRemoteViewControllerWithRequestInfo:a1 reply:v7];
  _Block_release(v7);
}

void sub_2218(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22A4()
{
  sub_1D34();
  if (sub_2844(&_swiftEmptyArrayStorage))
  {
    v1 = sub_59F0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v2 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;

  return sub_2338(0);
}

uint64_t sub_2338(unint64_t a1)
{
  v2 = v1;
  v4 = sub_28FE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = *(sub_28FF4() + 16);

  if (v10 <= a1)
  {
    return result;
  }

  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_38FB0 != -1)
  {
    swift_once();
  }

  v12 = sub_29264();
  v45 = sub_5BB4(v12, qword_3C140);
  v13 = sub_29254();
  v14 = sub_29D84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_0, v13, v14, "Resolving slot #%ld", v15, 0xCu);
  }

  result = sub_28FF4();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*(result + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v16 = *(v5 + 16);
  v17 = *(v5 + 80);
  v18 = *(v5 + 72);
  v48 = a1;
  v50 = v9;
  v46 = v16;
  v16(v9, (result + ((v17 + 32) & ~v17) + v18 * a1), v4);

  v19 = sub_1DA0();
  v20 = [v19 intent];

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();

  v47 = v5;
  if (v21 || (v22 = sub_1DA0(), v23 = [v22 intent], v22, objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, v24))
  {
    v25 = v4;
    v45 = &_swiftEmptyArrayStorage;
    v26 = v49;
LABEL_11:
    v27 = sub_1DA0();
    v28 = [objc_allocWithZone(INUIExtensionRequestInfo) initWithInteraction:v27];

    v29 = *(v2 + OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_remoteViewControllerProvider + 8);
    v49 = *(v2 + OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_remoteViewControllerProvider);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = v50;
    v46(v26, v50, v25);
    v32 = (v17 + 40) & ~v17;
    v33 = swift_allocObject();
    v35 = v47;
    v34 = v48;
    *(v33 + 2) = v30;
    *(v33 + 3) = v34;
    *(v33 + 4) = v45;
    (*(v35 + 32))(&v33[v32], v26, v25);

    (v49)(v28, sub_5CDC, v33);

    (*(v35 + 8))(v31, v25);
  }

  v36 = v50;
  sub_2868();
  v38 = v37;
  v39 = sub_2C0C();
  v26 = v49;
  if ((v39 & 1) != 0 || sub_2844(v38))
  {
    v25 = v4;
    v45 = v38;
    goto LABEL_11;
  }

  v40 = sub_29254();
  v41 = sub_29D84();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v48;
  if (v42)
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v43;
    _os_log_impl(&dword_0, v40, v41, "Skipping slot #%ld; no unhandled params", v44, 0xCu);
  }

  sub_2338(v43 + 1);
  return (*(v5 + 8))(v36, v4);
}

uint64_t sub_2844(uint64_t a1)
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

void sub_2868()
{
  v1 = v0;
  v2 = sub_1DA0();
  v3 = [v2 intent];

  v4 = [v3 _intentInstanceDescription];
  v39 = sub_7994(v4, &selRef_name);
  v40 = v5;
  v34 = v4;
  v6 = sub_7994(v4, &selRef_responseName);
  v8 = v7;
  v9 = sub_28FC4();
  v10 = 0;
  v43 = &_swiftEmptyArrayStorage;
  v11 = *(v9 + 16);
  v12 = (v9 + 40);
  v37 = &_swiftEmptyArrayStorage;
  v38 = v1;
  while (1)
  {
    if (v11 == v10)
    {

      v43 = &_swiftEmptyArrayStorage;
      v14 = sub_2844(v37);
      v15 = OBJC_IVAR____TtC12SystemPlugin26IntentsUIStandardViewModel_handledParameters;
      swift_beginAccess();
      v16 = 0;
      v17 = v37 & 0xC000000000000001;
      v18 = v15;
      v35 = v15;
      v36 = v14;
      while (1)
      {
        while (1)
        {
LABEL_10:
          if (v16 == v14)
          {

            return;
          }

          if (v17)
          {
            v19 = sub_29F44();
          }

          else
          {
            if (v16 >= *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_31;
            }

            v19 = *(v37 + 32 + 8 * v16);
          }

          v20 = v19;
          if (__OFADD__(v16++, 1))
          {
            goto LABEL_30;
          }

          v22 = *(v1 + v18);
          if ((v22 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*(v22 + 16))
          {
            sub_62A0(0, &qword_39178, INParameter_ptr);
            v27 = *(v22 + 40);

            v28 = sub_29DF4(v27);
            v29 = ~(-1 << *(v22 + 32));
            while (1)
            {
              v30 = v28 & v29;
              if (((*(v22 + 56 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
              {
                break;
              }

              v31 = *(*(v22 + 48) + 8 * v30);
              v32 = sub_29E04();

              v28 = v30 + 1;
              if (v32)
              {

                v1 = v38;
                v18 = v35;
                v14 = v36;
                v17 = v37 & 0xC000000000000001;
                goto LABEL_10;
              }
            }

            v1 = v38;
            v18 = v35;
            v14 = v36;
            v17 = v37 & 0xC000000000000001;
          }

LABEL_26:
          sub_29F64();
          v33 = *(v43 + 16);
          sub_29F84();
          sub_29F94();
          sub_29F74();
        }

        if (v22 < 0)
        {
          v23 = *(v1 + v18);
        }

        v24 = *(v1 + v18);

        v25 = v20;
        v26 = sub_29EB4();

        if ((v26 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v13 = *v12;
    v41[0] = *(v12 - 1);
    v41[1] = v13;

    sub_4744(v41, v39, v40, v6, v8, &v42);

    if (v42)
    {
      sub_29C64();
      if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_29CA4();
      }

      sub_29CB4();
      v37 = v43;
      v1 = v38;
    }

    v12 += 2;
    ++v10;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void *sub_2C0C()
{
  v0 = *(sub_28FC4() + 16);

  if (!v0)
  {
    return (&dword_0 + 1);
  }

  result = sub_28FC4();
  if (result[2])
  {
    v2 = result[4];
    v3 = result[5];

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    return (v4 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v46 = a5;
  v47 = a2;
  v9 = sub_298F4();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29914();
  v41 = *(v43 - 8);
  v12 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_28FE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = *(v15 + 16);
  v20(&v38 - v18, v49, v14);
  v49 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v46;
  v20(v49, v19, v14);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a1;
  *(v23 + 3) = a3;
  v39 = a4;
  *(v23 + 4) = a4;
  *(v23 + 5) = v21;
  v24 = v47;
  v25 = *(v15 + 32);
  v48 = v14;
  v25(&v23[v22], v19, v14);
  *&v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;
  v26 = objc_opt_self();
  swift_errorRetain();
  v27 = a1;

  if ([v26 isMainThread])
  {
    v28 = a3;
    v29 = v49;
    sub_3144(a1, v28, v39, v21, v49, v24);

    v30 = v29;
  }

  else
  {
    sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
    v31 = sub_29DB4();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_5E28;
    *(v32 + 24) = v23;
    aBlock[4] = sub_5EE4;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5140;
    aBlock[3] = &unk_35D48;
    v33 = _Block_copy(aBlock);

    v34 = v40;
    sub_29904();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_5F24(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags);
    sub_51E0(&unk_39160, &qword_2AD50);
    sub_5F6C();
    v35 = v42;
    v36 = v45;
    sub_29E54();
    sub_29DC4();
    _Block_release(v33);

    (*(v44 + 8))(v35, v36);
    (*(v41 + 8))(v34, v43);
    v30 = v49;
  }

  return (*(v15 + 8))(v30, v48);
}

void sub_3144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_28FE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v14 = Strong;
    v50 = a3;
    v15 = qword_38FB0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_29264();
    sub_5BB4(v17, qword_3C140);
    v18 = sub_29254();
    v19 = sub_29D84();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = v16;
      *v20 = 134217984;
      *(v20 + 4) = v50;
      _os_log_impl(&dword_0, v18, v19, "Remote VC vended for slot #%ld", v20, 0xCu);
      v16 = v49;
    }

    sub_62A0(0, &qword_39170, INUIExtensionViewControllerConfiguration_ptr);

    sub_37D8(v21);
    v23 = sub_39AC(v22, 0, 0);
    [v16 setDelegate:v14 completion:0];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v11 + 16))(&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v24;
    *(v26 + 24) = v27;
    (*(v11 + 32))(v26 + v25, &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v26 + ((v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    *&v52[16] = sub_60D0;
    *&v52[24] = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *v52 = sub_46D8;
    *&v52[8] = &unk_35D98;
    v28 = _Block_copy(&aBlock);
    v29 = v16;

    [v29 setIdealConfiguration:v23 animated:0 completion:v28];
    _Block_release(v28);
  }

  else
  {
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
      return;
    }

    v23 = v30;
    if (!a6)
    {
      if (qword_38FB0 != -1)
      {
        swift_once();
      }

      v39 = sub_29264();
      sub_5BB4(v39, qword_3C140);
      v40 = sub_29254();
      v41 = sub_29D94();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = a3;
        _os_log_impl(&dword_0, v40, v41, "Request for remote VC failed for slot #%ld.", v42, 0xCu);
      }

      goto LABEL_19;
    }

    swift_errorRetain();
    if (qword_38FB0 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v31 = sub_29264();
      sub_5BB4(v31, qword_3C140);
      swift_errorRetain();
      v32 = sub_29254();
      v33 = sub_29D94();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&aBlock = v35;
        *v34 = 134218242;
        *(v34 + 4) = a3;
        *(v34 + 12) = 2082;
        swift_getErrorValue();
        v36 = sub_2A064();
        v38 = sub_DA08(v36, v37, &aBlock);

        *(v34 + 14) = v38;
        _os_log_impl(&dword_0, v32, v33, "Request for remote VC failed for slot #%ld: %{public}s", v34, 0x16u);
        sub_5FD0(v35);
      }

      else
      {
      }

LABEL_19:
      sub_28FD4();
      v52[24] = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = sub_292C4();
      v45 = v44;
      sub_5858();
      v46 = *(*v45 + 16);
      sub_58A4(v46);
      v47 = *v45;
      *(v47 + 16) = v46 + 1;
      v48 = (v47 + 48 * v46);
      v48[2] = aBlock;
      v48[3] = *v52;
      *(v48 + 57) = *&v52[9];
      v43(v53, 0);

      if (!__OFADD__(a3, 1))
      {
        break;
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    sub_2338(a3 + 1);
  }
}

void sub_37D8(uint64_t a1)
{
  sub_2844(a1);
  sub_62A0(0, &qword_39178, INParameter_ptr);
  sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
  v5[1] = sub_29D54();
  v2 = sub_2844(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_29F44();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_6524(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_38EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_29D54();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_6748(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

id sub_39AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_62A0(0, &qword_39178, INParameter_ptr);
  sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
  isa = sub_29D24().super.isa;

  v7 = [v5 initWithParameters:isa interactiveBehavior:a2 hostedViewContext:a3];

  return v7;
}

uint64_t sub_3A78(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v40 = a3;
  v41 = a4;
  v8 = sub_298F4();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29914();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_28FE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = *(v14 + 16);
  v19(&v34 - v17, v41, v13);
  v41 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(v41, v18, v13);
  v20 = v40;
  v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a1;
  *(v22 + 4) = v20;
  (*(v14 + 32))(&v22[v21], v18, v13);
  *&v22[(v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  v23 = objc_opt_self();
  v24 = a5;
  swift_errorRetain();

  if ([v23 isMainThread])
  {
    v25 = v41;
    sub_3F30(a2, a1, v20, v41, v24);

    v26 = v25;
  }

  else
  {
    sub_62A0(0, &qword_39150, OS_dispatch_queue_ptr);
    v27 = sub_29DB4();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_621C;
    *(v28 + 24) = v22;
    aBlock[4] = sub_7A8C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5140;
    aBlock[3] = &unk_35E10;
    v29 = _Block_copy(aBlock);

    v30 = v34;
    sub_29904();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_5F24(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags);
    sub_51E0(&unk_39160, &qword_2AD50);
    sub_5F6C();
    v31 = v36;
    v32 = v39;
    sub_29E54();
    sub_29DC4();
    _Block_release(v29);

    (*(v38 + 8))(v31, v32);
    (*(v35 + 8))(v30, v37);
    v26 = v41;
  }

  return (*(v14 + 8))(v26, v13);
}

void sub_3F30(uint64_t a1, uint64_t a2, _BYTE *KeyPath, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v43 = KeyPath;
    if (!a2)
    {
      v24 = [a5 configuration];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 parameters];

        sub_62A0(0, &qword_39178, INParameter_ptr);
        sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
        v27 = sub_29D34();
      }

      else if (sub_2844(&_swiftEmptyArrayStorage))
      {
        v27 = sub_59F0(&_swiftEmptyArrayStorage);
      }

      else
      {
        v27 = &_swiftEmptySetSingleton;
      }

      if (qword_38FB0 != -1)
      {
        swift_once();
      }

      v28 = sub_29264();
      sub_5BB4(v28, qword_3C140);

      v29 = sub_29254();
      v30 = sub_29D84();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v44 = v32;
        *v31 = 134218242;
        *(v31 + 4) = KeyPath;
        *(v31 + 12) = 2080;
        sub_62A0(0, &qword_39178, INParameter_ptr);
        sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
        v33 = sub_29D44();
        v35 = sub_DA08(v33, v34, &v44);

        *(v31 + 14) = v35;
        _os_log_impl(&dword_0, v29, v30, "Successfully set remoteVC configuration for slot #%ld; handled parameters: %s", v31, 0x16u);
        sub_5FD0(v32);
      }

      swift_beginAccess();
      sub_44E0(v27);
      swift_endAccess();
      v47 = 0;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v36 = a5;
      v37 = sub_292C4();
      v39 = v38;
      sub_5858();
      v40 = *(*v39 + 16);
      sub_58A4(v40);
      v41 = *v39;
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 48 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v44;
      *(v42 + 56) = *v45;
      *(v42 + 72) = v47;
      v37(v46, 0);

      goto LABEL_17;
    }

    swift_errorRetain();
    if (qword_38FB0 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v10 = sub_29264();
      sub_5BB4(v10, qword_3C140);
      swift_errorRetain();
      v11 = sub_29254();
      v12 = sub_29D94();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v44 = v14;
        *v13 = 134218242;
        *(v13 + 4) = KeyPath;
        *(v13 + 12) = 2082;
        swift_getErrorValue();
        v15 = sub_2A064();
        v17 = sub_DA08(v15, v16, &v44);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_0, v11, v12, "Unable to setIdealConfiguration for slot #%ld: %{public}s", v13, 0x16u);
        sub_5FD0(v14);
      }

      sub_28FD4();
      v45[24] = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      KeyPath = v46;
      v18 = sub_292C4();
      v20 = v19;
      sub_5858();
      v21 = *(*v20 + 16);
      sub_58A4(v21);
      v22 = *v20;
      *(v22 + 16) = v21 + 1;
      v23 = (v22 + 48 * v21);
      v23[2] = v44;
      v23[3] = *v45;
      *(v23 + 57) = *&v45[9];
      v18(v46, 0);

LABEL_17:
      if (!__OFADD__(v43, 1))
      {
        break;
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

    sub_2338(v43 + 1);
  }
}

void sub_44E0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_29E74();
    sub_62A0(0, &qword_39178, INParameter_ptr);
    sub_57B0(&qword_39180, &qword_39178, INParameter_ptr);
    sub_29D64();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_62E0();
      return;
    }

    while (1)
    {
      sub_6524(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_29EA4())
      {
        sub_62A0(0, &qword_39178, INParameter_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_46D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_4744(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v32 = a6;
    sub_4B68(46, 0xE100000000000000, v6, v7);
    if (v11)
    {
      v13 = 15;
    }

    else
    {
      v13 = sub_29BB4();
    }

    sub_29BF4();
    v14 = sub_29B94();
    v16 = v15;

    sub_4C50(v13, v6, v7);
    sub_29B94();

    if (a3)
    {
      v17 = v14 == a2 && v16 == a3;
      if (v17 || (sub_2A034() & 1) != 0)
      {

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v18 = sub_1DA0();
        v19 = [v18 intent];

        swift_getObjectType();
        v12 = sub_4CF4();
LABEL_40:
        a6 = v32;
        goto LABEL_41;
      }
    }

    v20 = sub_1DA0();
    v21 = [v20 intentResponse];

    if (v21)
    {
      if (a5)
      {
        if (v14 == a4 && v16 == a5)
        {

LABEL_39:
          sub_62A0(0, &qword_39178, INParameter_ptr);
          swift_getObjectType();
          v12 = sub_4CF4();

          goto LABEL_40;
        }

        v23 = sub_2A034();

        if (v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v24 = sub_29264();
    sub_5BB4(v24, qword_3C140);

    v25 = sub_29254();
    v26 = sub_29D94();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_DA08(v6, v7, &v34);
      *(v27 + 12) = 2082;
      if (a3)
      {
        v28 = a2;
      }

      else
      {
        v28 = 0x6E776F6E6B6E753CLL;
      }

      if (a3)
      {
        v29 = a3;
      }

      else
      {
        v29 = 0xE90000000000003ELL;
      }

      v30 = sub_DA08(v28, v29, &v34);

      *(v27 + 14) = v30;
      _os_log_impl(&dword_0, v25, v26, "Invalid parameter keyPath '%{public}s' for Intent '%{public}s'.", v27, 0x16u);
      swift_arrayDestroy();
    }

    v12 = 0;
    goto LABEL_40;
  }

  v12 = 0;
LABEL_41:
  *a6 = v12;
}

unint64_t sub_4B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_29BB4())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_29BE4() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2A034();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_4C50(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_29BF4();

    return v4;
  }

  return result;
}

id sub_4CF4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_29B04();

  v2 = [swift_getObjCClassFromMetadata() parameterForClass:ObjCClassFromMetadata keyPath:v1];

  return v2;
}

id sub_4DB0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4EAC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_292A4();
  *a1 = result;
  return result;
}

uint64_t sub_4EEC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  Height = CGRectGetHeight(v12);
  sub_51E0(&qword_39140, &qword_2AD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2AB10;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:720896];
  *(inited + 40) = [objc_opt_self() valueWithCGSize:{0.0, Height}];
  sub_62A0(0, &qword_39128, NSNumber_ptr);
  sub_62A0(0, &qword_39130, NSValue_ptr);
  sub_57B0(&qword_39138, &qword_39128, NSNumber_ptr);
  return sub_29AB4();
}

uint64_t sub_5140(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t variable initialization expression of SashStandardView._appIcon()
{
  type metadata accessor for SashStandardView.AppIcon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_51E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_52A0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_51E0(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s12SystemPlugin11AppIconViewV8_context33_2832D3348F8A880C8C0A57389E58B602LL7SwiftUI17EnvironmentObjectVy07SnippetP07ContextCGvpfi_0()
{
  sub_29A94();
  sub_5F24(&qword_3A0D0, &type metadata accessor for Context);

  return sub_29404();
}

uint64_t variable initialization expression of MapIdentifiablePlace.canvas@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_28CF4();

  return sub_53C4(a1, 1, 1, v2);
}

uint64_t type metadata accessor for IntentsUIStandardViewModel()
{
  result = qword_39030;
  if (!qword_39030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5440()
{
  v0 = sub_29014();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_5528();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_5528()
{
  if (!qword_39040)
  {
    sub_558C(&qword_39048, &qword_2AC00);
    v0 = sub_292F4();
    if (!v1)
    {
      atomic_store(v0, &qword_39040);
    }
  }
}

uint64_t sub_558C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_55D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_55E4(uint64_t a1, int a2)
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

uint64_t sub_5604(uint64_t result, int a2, int a3)
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

__n128 sub_5660(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_5674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_56B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_5700(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

__n128 sub_5738(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_5744(uint64_t a1, int a2)
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

uint64_t sub_5764(uint64_t result, int a2, int a3)
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

uint64_t sub_57B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_62A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CC0();
  *a2 = result;
  return result;
}

uint64_t sub_582C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D34();
}

char *sub_5858()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_58E8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_58A4(char *result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_58E8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_58E8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_51E0(&qword_39190, &qword_2ADA8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_275C8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::Int sub_59F0(uint64_t a1)
{
  v1 = a1;
  if (sub_2844(a1))
  {
    sub_51E0(&qword_39188, &qword_2ADA0);
    v2 = sub_29F04();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_2844(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_6500(v3, v19 == 0, v1);
      result = v19 ? sub_29F44() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_29DF4(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = sub_29E04();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_5BB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5C24()
{
  v1 = sub_28FE4();
  sub_7AA0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = sub_7ACC();
  v9(v8);

  return _swift_deallocObject(v0, ((v3 + 40) & ~v3) + v5, v3 | 7);
}

uint64_t sub_5CDC(void *a1, uint64_t a2)
{
  v5 = *(sub_28FE4() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2C70(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_5D64()
{
  v2 = sub_28FE4();
  sub_7AA0(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_7B0C();

  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  v9 = sub_7ACC();
  v10(v9);
  v11 = *(v0 + v1);

  v12 = sub_7AFC();

  return _swift_deallocObject(v12, v13, v14);
}

void sub_5E28()
{
  v1 = sub_28FE4();
  sub_7AEC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_7ADC();
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v14 = *(v0 + v13);

  sub_3144(v9, v10, v11, v12, v0 + v8, v14);
}

uint64_t sub_5EAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5EE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_5F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5F24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5F6C()
{
  result = qword_39D90;
  if (!qword_39D90)
  {
    sub_558C(&unk_39160, &qword_2AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D90);
  }

  return result;
}

uint64_t sub_5FD0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_601C()
{
  v2 = sub_28FE4();
  sub_7AA0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_7B0C();
  v7 = *(v0 + 16);

  v8 = sub_7ACC();
  v9(v8);

  v10 = sub_7AFC();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_60D0(uint64_t a1)
{
  v3 = sub_28FE4();
  sub_7AEC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_7ADC();
  v12 = *(v1 + v11);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);

  return sub_3A78(a1, v13, v14, v1 + v10, v12);
}

uint64_t sub_6160()
{
  v2 = sub_28FE4();
  sub_7AA0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_7B0C();
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = sub_7ACC();
  v10(v9);

  v11 = sub_7AFC();

  return _swift_deallocObject(v11, v12, v13);
}

void sub_621C()
{
  v1 = sub_28FE4();
  sub_7AEC(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_7ADC();
  v9 = v0[2];
  v10 = v0[3];
  v12 = *(v0 + v11);
  v13 = v0[4];

  sub_3F30(v9, v10, v13, v0 + v8, v12);
}

uint64_t sub_62A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_62E8(uint64_t a1)
{
  v1 = a1;
  if (sub_2844(a1))
  {
    sub_51E0(&qword_391B0, &unk_2ADF0);
    v2 = sub_29F04();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v21 = sub_2844(v1);
  if (v21)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v19 = v1;
    v20 = v1 & 0xC000000000000001;
    v18 = v1 + 32;
    while (1)
    {
      sub_6500(v3, v20 == 0, v1);
      if (v20)
      {
        result = sub_29F44();
        v6 = result;
      }

      else
      {
        v6 = *(v18 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = v2[5];
      sub_29294();
      sub_7AB4();
      sub_5F24(&qword_391B8, v9);
      result = sub_29AE4();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *&v4[8 * v12];
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v22 = *(v2[6] + 8 * v11);
        sub_7AB4();
        sub_5F24(&unk_391C0, v15);
        if (sub_29AF4())
        {

          goto LABEL_17;
        }

        result = v11 + 1;
      }

      *&v4[8 * v12] = v14 | v13;
      *(v2[6] + 8 * v11) = v6;
      v16 = v2[2];
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_6500(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6524(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_29E94();

    if (v9)
    {

      sub_62A0(0, &qword_39178, INParameter_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_29E84();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_6894(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_6A70(v17 + 1);
        }

        v18 = v8;
        sub_6EF0(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_62A0(0, &qword_39178, INParameter_ptr);
    v11 = sub_29DF4(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_6F74(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_29E04();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

BOOL sub_6748(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2A0B4();
  sub_29BA4();
  v9 = sub_2A0D4();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2A034() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_70D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

Swift::Int sub_6894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_51E0(&qword_39188, &qword_2ADA0);
    v2 = sub_29EF4();
    v15 = v2;
    sub_29E74();
    while (1)
    {
      if (!sub_29EA4())
      {

        return v2;
      }

      sub_62A0(0, &qword_39178, INParameter_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_6A70(v3 + 1);
      }

      v2 = v15;
      result = sub_29DF4(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_6A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_51E0(&qword_39188, &qword_2ADA0);
  result = sub_29EE4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_7240(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = sub_29DF4(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_6C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_51E0(&qword_391A8, &qword_2ADE8);
  result = sub_29EE4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_7240(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2A0B4();
    sub_29BA4();
    result = sub_2A0D4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_6EF0(uint64_t a1, uint64_t a2)
{
  sub_29DF4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_29E64();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_6F74(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_6A70(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_754C(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_29DF4(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_62A0(0, &qword_39178, INParameter_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_29E04();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_72A4();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_2A044();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

Swift::Int sub_70D8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_6C94(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_7760(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2A0B4();
      sub_29BA4();
      result = sub_2A0D4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2A034() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_73F4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2A044();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_7240(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2AB20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_72A4()
{
  v1 = v0;
  sub_51E0(&qword_39188, &qword_2ADA0);
  v2 = *v0;
  v3 = sub_29ED4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_73F4()
{
  v1 = v0;
  sub_51E0(&qword_391A8, &qword_2ADE8);
  v2 = *v0;
  v3 = sub_29ED4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_754C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_51E0(&qword_39188, &qword_2ADA0);
  result = sub_29EE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_29DF4(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_7760(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_51E0(&qword_391A8, &qword_2ADE8);
  result = sub_29EE4();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2A0B4();

        sub_29BA4();
        result = sub_2A0D4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_7994(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_29B14();

  return v4;
}

void sub_7A1C(uint64_t a1, unint64_t *a2)
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

uint64_t property wrapper backing initializer of SashStandardView.appIcon()
{
  v0 = type metadata accessor for SashStandardView.AppIcon(0);
  v1 = sub_C3B0(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_C3C0();
  sub_9EEC();
  sub_29854();
  sub_C3D8();
  return sub_C35C();
}

uint64_t SashStandardView.init(modelData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v4 = sub_28EA4();
  v5 = sub_7AA0(v4);
  v29[0] = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SashStandardView.AppIcon(0);
  v12 = sub_C3B0(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v16 = type metadata accessor for SashStandardView(0);
  v17 = (a3 + v16[5]);
  sub_29A94();
  sub_C318();
  v18 = sub_29404();
  *v17 = v18;
  v17[1] = v19;
  v20 = v16[6];
  swift_storeEnumTagMultiPayload();
  sub_C3C0();
  sub_9EEC();
  sub_29854();
  sub_C3D8();
  sub_C35C();
  v21 = (a3 + v16[7]);
  v29[3] = 0;
  v29[4] = 0xE000000000000000;
  sub_29854();
  v22 = v29[6];
  v23 = v29[7];
  *v21 = v29[5];
  v21[1] = v22;
  v21[2] = v23;
  v24 = v16[8];
  _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
  sub_C318();
  v25 = v29[9];
  sub_28FA4();
  if (!v25)
  {
    return (*(v29[0] + 32))(a3, v10, v4);
  }

  sub_C004();

  v26 = sub_29994();
  sub_7B1C(v26);
  return (*(v27 + 8))(a3 + v24);
}

uint64_t sub_7F28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SashStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for SashStandardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_51E0(&qword_39360, &qword_2AE28);
  v7 = sub_7AA0(v6);
  v26 = v8;
  v27 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v25 - v11;
  sub_8254(__src);
  v13 = sub_9178();
  if (!v13)
  {
    v13 = sub_297B4();
  }

  v30[0] = v13;
  v14 = sub_29374();
  v15 = sub_29694();
  memcpy(v29, __src, 0x91uLL);
  v29[19] = v14;
  LOBYTE(v29[20]) = v15;
  sub_9EEC();
  v16 = *(v4 + 80);
  v25 = v2;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_9F48(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_51E0(&qword_39368, &qword_2AE30);
  sub_A00C();
  sub_29744();

  memcpy(v30, v29, 0xA1uLL);
  sub_C004();
  sub_9EEC();
  v19 = swift_allocObject();
  sub_9F48(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  v20 = sub_51E0(&qword_393B8, &qword_2AE68);
  v21 = v28;
  v22 = (v28 + *(v20 + 36));
  v23 = v22 + *(sub_29384() + 20);
  sub_29CF4();
  *v22 = &unk_2AE60;
  v22[1] = v19;
  return (*(v26 + 32))(v21, v12, v27);
}

void *sub_8254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29584();
  v20 = 0;
  sub_8450(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_BFAC();
  sub_C004();
  memcpy(&v19[7], __dst, 0x49uLL);
  v3 = v20;
  sub_51E0(&qword_39578, &qword_2AF48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2AE00;
  v5 = sub_296B4();
  *(inited + 32) = v5;
  v6 = sub_296A4();
  *(inited + 33) = v6;
  v7 = sub_296D4();
  *(inited + 34) = v7;
  v8 = sub_296C4();
  sub_296C4();
  if (sub_296C4() != v5)
  {
    v8 = sub_296C4();
  }

  sub_296C4();
  if (sub_296C4() != v6)
  {
    v8 = sub_296C4();
  }

  sub_296C4();
  if (sub_296C4() != v7)
  {
    v8 = sub_296C4();
  }

  sub_29314();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v19, 0x50uLL);
  *(a1 + 104) = v8;
  *(a1 + 112) = v10;
  *(a1 + 120) = v12;
  *(a1 + 128) = v14;
  *(a1 + 136) = v16;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_8450@<X0>(uint64_t a1@<X8>)
{
  sub_84D4(&v10);
  v2 = v10;
  sub_8DD8(&v10);
  v3 = v10;
  v4 = sub_296B4();
  result = sub_29314();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_84D4@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v70 = sub_51E0(&qword_395D0, &qword_2AFB0);
  v67 = *(v70 - 8);
  v1 = *(v67 + 64);
  __chkstk_darwin(v70);
  v64 = &v60 - v2;
  v3 = sub_51E0(&qword_395D8, &qword_2AFB8);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  v5 = __chkstk_darwin(v3);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v60 - v7;
  v73 = sub_28F24();
  v63 = *(v73 - 8);
  v8 = *(v63 + 64);
  v9 = __chkstk_darwin(v73);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v60 - v11;
  v71 = sub_28D44();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_28D84();
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = *(v60 + 64);
  __chkstk_darwin(v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppIconView(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  v25 = type metadata accessor for SashStandardView.AppIcon(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(type metadata accessor for SashStandardView(0) + 24);
  sub_51E0(&qword_39358, &qword_2AE20);
  sub_29864();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v63;
      v32 = *(v63 + 32);
      v34 = v72;
      v33 = v73;
      v32(v72, v28, v73);
      v35 = v62;
      (*(v31 + 16))(v62, v34, v33);
      v36 = &v24[v20[5]];
      sub_29A94();
      sub_C318();
      *v36 = sub_29404();
      v36[1] = v37;
      v38 = v20[6];
      *&v24[v38] = swift_getKeyPath();
      sub_51E0(&qword_38FE0, &qword_2AB60);
      swift_storeEnumTagMultiPayload();
      v39 = &v24[v20[7]];
      *v39 = swift_getKeyPath();
      v39[8] = 0;
      v40 = v20[8];
      v75 = 0;
      sub_51E0(&unk_39770, &qword_2B200);
      sub_29854();
      *&v24[v40] = v76;
      v41 = v35;
      v42 = v73;
      v32(v24, v41, v73);
      type metadata accessor for AppIconView.Model(0);
      swift_storeEnumTagMultiPayload();
      v43 = v71;
      (*(v12 + 104))(v15, enum case for ImageElement.ImageStyle.appIcon2(_:), v71);
      v44 = sub_C318();
      v45 = v64;
      sub_29714();
      (*(v12 + 8))(v15, v43);
      sub_C35C();
      *&v76 = v20;
      *(&v76 + 1) = v44;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v47 = v66;
      v48 = v70;
      sub_29724();
      (*(v67 + 8))(v45, v48);
      v50 = v68;
      v49 = v69;
      (*(v68 + 16))(v65, v47, v69);
      *&v76 = v48;
      *(&v76 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v51 = sub_298A4();
      (*(v50 + 8))(v47, v49);
      result = (*(v31 + 8))(v72, v42);
    }

    else
    {
      result = sub_298A4();
      v51 = result;
    }
  }

  else
  {
    v53 = *v28;
    v54 = v28[1];
    (*(v12 + 104))(v15, enum case for ImageElement.ImageStyle.appIcon2(_:), v71);
    sub_28D94();
    v55 = &v24[v20[5]];
    sub_29A94();
    sub_C318();
    *v55 = sub_29404();
    v55[1] = v56;
    v57 = v20[6];
    *&v24[v57] = swift_getKeyPath();
    sub_51E0(&qword_38FE0, &qword_2AB60);
    swift_storeEnumTagMultiPayload();
    v58 = &v24[v20[7]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = v20[8];
    v75 = 0;
    sub_51E0(&unk_39770, &qword_2B200);
    sub_29854();
    *&v24[v59] = v76;
    (*(v60 + 32))(v24, v19, v61);
    type metadata accessor for AppIconView.Model(0);
    swift_storeEnumTagMultiPayload();
    sub_9EEC();
    sub_C318();
    v51 = sub_298A4();
    result = sub_C35C();
  }

  *v74 = v51;
  return result;
}

uint64_t sub_8DD8@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v2 = sub_51E0(&qword_39580, &qword_2AF50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v35 = &v33 - v4;
  v5 = sub_51E0(&qword_39588, &qword_2AF58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_28C84();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_51E0(&qword_39590, &qword_2AF60);
  v13 = *(*(v36 - 8) + 64);
  v14 = __chkstk_darwin(v36);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *(type metadata accessor for SashStandardView(0) + 28);
  v37 = v1;
  v18 = (v1 + v17);
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  *&v39 = *v18;
  *(&v39 + 1) = v19;
  *&v40 = v21;
  sub_51E0(&qword_39528, &qword_2AEF8);
  sub_29864();
  v23 = v42;
  v22 = v43;

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    *&v39 = v20;
    *(&v39 + 1) = v19;
    *&v40 = v21;
    sub_29864();
    v25 = sub_28C74();
    sub_53C4(v8, 1, 1, v25);
    v26 = sub_29064();
    sub_53C4(v35, 1, 1, v26);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_28C94();
    sub_28C64();
    (*(v33 + 8))(v12, v34);
    v27 = sub_295E4();
    *&v16[*(sub_51E0(&qword_39598, &qword_2AF68) + 36)] = v27;
    v28 = sub_B164();
    KeyPath = swift_getKeyPath();
    v30 = &v16[*(v36 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    sub_C084();
    sub_C0E4();
    v31 = sub_298A4();
    result = sub_C2B0();
  }

  else
  {
    result = sub_298A4();
    v31 = result;
  }

  *v38 = v31;
  return result;
}

uint64_t sub_9178()
{
  v1 = sub_290F4();
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_28CC4();
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_28CA4();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_51E0(&qword_39540, &unk_2AF10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_51E0(&qword_39568, &qword_2AF38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_28ED4();
  v44 = *(v18 - 8);
  v19 = *(v44 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  sub_28E44();
  v25 = sub_28F24();
  if (sub_B89C(v13, 1, v25) == 1)
  {
    sub_C004();
    sub_53C4(v17, 1, 1, v18);
    goto LABEL_5;
  }

  v38 = v1;
  sub_28F04();
  (*(*(v25 - 8) + 8))(v13, v25);
  v26 = v0 + *(type metadata accessor for SashStandardView(0) + 20);
  if (*v26)
  {
    v27 = *v26;
    sub_29A24();

    sub_29E14();
    sub_29C94();

    (*(v45 + 8))(v9, v46);
    if (sub_B89C(v17, 1, v18) != 1)
    {
      v30 = v44;
      (*(v44 + 32))(v24, v17, v18);
      (*(v30 + 16))(v22, v24, v18);
      if ((*(v30 + 88))(v22, v18) == enum case for VisualElement.color(_:))
      {
        (*(v30 + 96))(v22, v18);
        v32 = v39;
        v31 = v40;
        v33 = v42;
        (*(v40 + 32))(v39, v22, v42);
        v34 = v41;
        sub_28CB4();
        v28 = sub_290E4();
        (*(v43 + 8))(v34, v38);
        (*(v31 + 8))(v32, v33);
        (*(v30 + 8))(v24, v18);
        return v28;
      }

      v35 = *(v30 + 8);
      v35(v24, v18);
      v35(v22, v18);
      return 0;
    }

LABEL_5:
    sub_C004();
    return 0;
  }

  v36 = *(v26 + 8);
  sub_29A94();
  sub_C318();
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_9754()
{
  v0 = sub_29134();
  v65 = *(v0 - 8);
  v66 = v0;
  v1 = *(v65 + 64);
  __chkstk_darwin(v0);
  v64 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_28C44();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SashStandardView.AppIcon(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_51E0(&qword_39548, &qword_2C340);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - v12;
  v13 = sub_51E0(&qword_39550, &qword_2AF20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - v15;
  v17 = sub_51E0(&qword_39558, &qword_2AF28);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v63 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - v22;
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  v26 = type metadata accessor for SashStandardView(0);
  v27 = *(v26 + 32);
  sub_29974();
  v28 = sub_29A14();
  v29 = sub_B89C(v25, 1, v28);
  v67 = v28;
  v58 = v16;
  if (v29 == 1)
  {
    sub_C004();
  }

  else
  {
    sub_28E84();
    v30 = sub_299F4();
    sub_C004();
    v31 = *(*(v28 - 8) + 8);
    v31(v25, v28);
    if (v30)
    {
      sub_29974();
      v32 = v67;
      if (sub_B89C(v23, 1, v67) == 1)
      {
        return sub_C004();
      }

      sub_28E84();
      v55 = enum case for InteractionType.componentTapped(_:);
      v56 = sub_299A4();
      v57 = v59;
      (*(*(v56 - 8) + 104))(v59, v55, v56);
      sub_53C4(v57, 0, 1, v56);
      sub_29A04();
      sub_C004();
      sub_C004();
      return (v31)(v23, v32);
    }
  }

  v33 = *(v26 + 24);
  sub_51E0(&qword_39358, &qword_2AE20);
  sub_29864();
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_C35C();
  }

  v35 = *v9;
  v36 = v9[1];
  v37 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v38 = v60;
  sub_28C34();
  v39 = sub_28C24();
  v41 = v40;
  (*(v61 + 8))(v38, v62);
  sub_BE70(v39, v41, v37, &selRef_setAceId_);
  [v37 setAppAvailableInStorefront:1];
  sub_BE70(v35, v36, v37, &selRef_setBundleId_);
  v43 = v64;
  v42 = v65;
  *v64 = v37;
  *(v43 + 8) = 0;
  v44 = v66;
  (*(v42 + 104))(v43, enum case for Command.aceCommand(_:), v66);
  v45 = v37;
  v46 = v63;
  sub_29974();
  v47 = v67;
  if (sub_B89C(v46, 1, v67) == 1)
  {
    (*(v42 + 8))(v43, v44);

    return sub_C004();
  }

  sub_51E0(&qword_39560, &qword_2AF30);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2AB10;
  *(v48 + 56) = v44;
  *(v48 + 64) = &protocol witness table for Command;
  v49 = sub_BF4C((v48 + 32));
  (*(v42 + 16))(v49, v43, v44);
  v50 = v58;
  sub_28EF4();
  v51 = sub_28EE4();
  sub_53C4(v50, 0, 1, v51);
  v52 = enum case for InteractionType.componentTapped(_:);
  v53 = sub_299A4();
  v54 = v59;
  (*(*(v53 - 8) + 104))(v59, v52, v53);
  sub_53C4(v54, 0, 1, v53);
  sub_29A04();

  sub_C004();
  sub_C004();
  (*(v42 + 8))(v43, v44);
  return (*(*(v47 - 8) + 8))(v46, v47);
}

uint64_t sub_9EEC()
{
  sub_C3F0();
  v3 = v2(0);
  sub_C3B0(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_9F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SashStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9FAC()
{
  v0 = *(*(type metadata accessor for SashStandardView(0) - 8) + 80);

  return sub_9754();
}

unint64_t sub_A00C()
{
  result = qword_39370;
  if (!qword_39370)
  {
    sub_558C(&qword_39368, &qword_2AE30);
    sub_A0C4();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39370);
  }

  return result;
}

unint64_t sub_A0C4()
{
  result = qword_39378;
  if (!qword_39378)
  {
    sub_558C(&qword_39380, &qword_2AE38);
    sub_A148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39378);
  }

  return result;
}

unint64_t sub_A148()
{
  result = qword_39388;
  if (!qword_39388)
  {
    sub_558C(&qword_39390, &qword_2AE40);
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39388);
  }

  return result;
}

uint64_t sub_A200(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_29CE4();
  *(v1 + 24) = sub_29CD4();
  v3 = sub_29CC4();

  return _swift_task_switch(sub_A298, v3, v2);
}

uint64_t sub_A298()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_A68C();
  sub_AA6C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_A300()
{
  v1 = type metadata accessor for SashStandardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_28EA4();
  sub_7B1C(v6);
  (*(v7 + 8))(v0 + v3);

  v8 = v0 + v3 + v1[6];
  type metadata accessor for SashStandardView.AppIcon(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_28F24();
    sub_7B1C(v11);
    (*(v12 + 8))(v8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = *(v8 + 8);
  }

  v13 = *(v8 + *(sub_51E0(&qword_39358, &qword_2AE20) + 28));

  v14 = v5 + v1[7];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = v1[8];
  v18 = sub_29994();
  sub_7B1C(v18);
  (*(v19 + 8))(v5 + v17);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A4B0()
{
  v2 = *(type metadata accessor for SashStandardView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_A200(v0 + v3);
}

uint64_t sub_A57C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_A68C()
{
  v0 = sub_51E0(&qword_39520, &qword_2AEF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for SashStandardView.AppIcon(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = (&v25 - v7);
  v9 = sub_51E0(&qword_39540, &unk_2AF10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_28F24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28E94();
  if (sub_B89C(v12, 1, v13) == 1)
  {
    sub_C004();
    sub_28E74();
    v18 = sub_28E64();
    if (sub_B89C(v3, 1, v18) == 1)
    {
      return sub_C004();
    }

    else
    {
      v21 = sub_28E54();
      v23 = v22;
      result = (*(*(v18 - 8) + 8))(v3, v18);
      if (v23)
      {
        *v8 = v21;
        v8[1] = v23;
        swift_storeEnumTagMultiPayload();
        v24 = *(type metadata accessor for SashStandardView(0) + 24);
        sub_9EEC();
        sub_51E0(&qword_39358, &qword_2AE20);
        sub_29874();
        return sub_C35C();
      }
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v14 + 16))(v8, v17, v13);
    swift_storeEnumTagMultiPayload();
    v20 = *(type metadata accessor for SashStandardView(0) + 24);
    sub_9EEC();
    sub_51E0(&qword_39358, &qword_2AE20);
    sub_29874();
    sub_C35C();
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_AA6C()
{
  v1 = v0;
  v2 = sub_51E0(&qword_39520, &qword_2AEF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  sub_28E74();
  v9 = sub_28E64();
  if (sub_B89C(v8, 1, v9) == 1)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v10 = sub_29264();
    sub_5BB4(v10, qword_3C140);
    v11 = sub_29254();
    v12 = sub_29D94();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "App title missing for sash.";
LABEL_6:
    _os_log_impl(&dword_0, v11, v12, v14, v13, 2u);

LABEL_7:

    return sub_C004();
  }

  sub_BFAC();
  v16 = *(v9 - 8);
  v17 = (*(v16 + 88))(v6, v9);
  if (v17 != enum case for SashStandard.Title.applicationBundleIdentifier(_:))
  {
    if (v17 == enum case for SashStandard.Title.text(_:))
    {
      (*(v16 + 96))(v6, v9);
      v21 = *v6;
      v22 = v6[1];
      v23 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
      v24 = *v23;
      v25 = *(v23 + 2);
      v52 = v24;
      v53 = v25;
      v50 = v21;
      v51 = v22;
      sub_51E0(&qword_39528, &qword_2AEF8);
      sub_29874();
      return sub_C004();
    }

    (*(v16 + 8))(v6, v9);
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v26 = sub_29264();
    sub_5BB4(v26, qword_3C140);
    v11 = sub_29254();
    v12 = sub_29D94();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Unknown app title type.";
    goto LABEL_6;
  }

  (*(v16 + 96))(v6, v9);
  v19 = *v6;
  v18 = v6[1];
  v20 = objc_allocWithZone(LSApplicationRecord);

  v27 = sub_BD68(v19, v18, 1);

  v28 = [objc_opt_self() sharedPreferences];
  v29 = sub_BEDC(v28);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    sub_51E0(&qword_39538, &qword_2AF08);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2AB10;
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    isa = sub_29C74().super.isa;

    v35 = [v27 localizedNameWithPreferredLocalizations:isa];

    v36 = sub_29B14();
    v38 = v37;

    v39 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
    v40 = v39[1];
    v41 = v39[2];
    *&v52 = *v39;
    *(&v52 + 1) = v40;
    v53 = v41;
    v50 = v36;
    v51 = v38;

    sub_51E0(&qword_39528, &qword_2AEF8);
    sub_29874();
  }

  else
  {
    v42 = [v27 localizedName];
    v43 = sub_29B14();
    v45 = v44;

    v46 = (v1 + *(type metadata accessor for SashStandardView(0) + 28));
    v47 = v46[1];
    v48 = v46[2];
    *&v52 = *v46;
    *(&v52 + 1) = v47;
    v53 = v48;
    v50 = v43;
    v51 = v45;

    sub_51E0(&qword_39528, &qword_2AEF8);
    sub_29874();
  }

  return sub_C004();
}

uint64_t sub_B164()
{
  v1 = sub_290F4();
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_28CC4();
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_28CA4();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_51E0(&qword_39540, &unk_2AF10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_51E0(&qword_39568, &qword_2AF38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_28ED4();
  v44 = *(v18 - 8);
  v19 = *(v44 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  sub_28E34();
  v25 = sub_28F24();
  if (sub_B89C(v13, 1, v25) == 1)
  {
    sub_C004();
    sub_53C4(v17, 1, 1, v18);
    goto LABEL_5;
  }

  v38 = v1;
  sub_28F04();
  (*(*(v25 - 8) + 8))(v13, v25);
  v26 = v0 + *(type metadata accessor for SashStandardView(0) + 20);
  if (*v26)
  {
    v27 = *v26;
    sub_29A24();

    sub_29E14();
    sub_29C94();

    (*(v45 + 8))(v9, v46);
    if (sub_B89C(v17, 1, v18) != 1)
    {
      v30 = v44;
      (*(v44 + 32))(v24, v17, v18);
      (*(v30 + 16))(v22, v24, v18);
      if ((*(v30 + 88))(v22, v18) == enum case for VisualElement.color(_:))
      {
        (*(v30 + 96))(v22, v18);
        v32 = v39;
        v31 = v40;
        v33 = v42;
        (*(v40 + 32))(v39, v22, v42);
        v34 = v41;
        sub_28CB4();
        v28 = sub_290E4();
        (*(v43 + 8))(v34, v38);
        (*(v31 + 8))(v32, v33);
        (*(v30 + 8))(v24, v18);
        return v28;
      }

      v35 = *(v30 + 8);
      v35(v24, v18);
      v35(v22, v18);
      return sub_297F4();
    }

LABEL_5:
    sub_C004();
    return sub_297F4();
  }

  v36 = *(v26 + 8);
  sub_29A94();
  sub_C318();
  result = sub_293F4();
  __break(1u);
  return result;
}

uint64_t sub_B780(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_28EA4();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return sub_B89C(v10, a2, v9);
  }

  v11 = sub_51E0(&qword_39358, &qword_2AE20);
  v12 = sub_C40C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_29994();
    v14 = a3[8];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[7] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_B8D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_28EA4();
  v9 = sub_C40C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_51E0(&qword_39358, &qword_2AE20);
    result = sub_C40C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[6];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v11 = sub_29994();
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return sub_53C4(v12, a2, a2, v11);
}

void sub_B9F0()
{
  sub_28EA4();
  if (v0 <= 0x3F)
  {
    sub_BABC();
    if (v1 <= 0x3F)
    {
      sub_BB50();
      if (v2 <= 0x3F)
      {
        sub_BBA8();
        if (v3 <= 0x3F)
        {
          sub_29994();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_BABC()
{
  if (!qword_3A150)
  {
    sub_29A94();
    sub_C318();
    v0 = sub_29414();
    if (!v1)
    {
      atomic_store(v0, &qword_3A150);
    }
  }
}

void sub_BB50()
{
  if (!qword_39428)
  {
    type metadata accessor for SashStandardView.AppIcon(255);
    v0 = sub_29894();
    if (!v1)
    {
      atomic_store(v0, &qword_39428);
    }
  }
}

void sub_BBA8()
{
  if (!qword_39430)
  {
    v0 = sub_29894();
    if (!v1)
    {
      atomic_store(v0, &qword_39430);
    }
  }
}

unint64_t sub_BBFC()
{
  result = qword_39470;
  if (!qword_39470)
  {
    sub_558C(&qword_393B8, &qword_2AE68);
    sub_558C(&qword_39368, &qword_2AE30);
    sub_A00C();
    swift_getOpaqueTypeConformance2();
    sub_C318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39470);
  }

  return result;
}

uint64_t sub_BCFC()
{
  result = sub_28F24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_BD68(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_29B04();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_28BC4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_BE44(uint64_t *a1)
{
  v1 = *a1;

  return sub_29504();
}

void sub_BE70(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_29B04();

  [a3 *a4];
}

uint64_t sub_BEDC(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_29B14();

  return v3;
}

uint64_t *sub_BF4C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_BFAC()
{
  sub_C3F0();
  v4 = sub_51E0(v2, v3);
  sub_C3B0(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_C004()
{
  sub_C400();
  v3 = sub_51E0(v1, v2);
  sub_7B1C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_C054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_294F4();
  *a1 = result;
  return result;
}

uint64_t sub_C084()
{
  sub_C3F0();
  v2 = sub_51E0(&qword_39590, &qword_2AF60);
  sub_C3B0(v2);
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_C0E4()
{
  result = qword_395A0;
  if (!qword_395A0)
  {
    sub_558C(&qword_39590, &qword_2AF60);
    sub_C19C();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395A0);
  }

  return result;
}

unint64_t sub_C19C()
{
  result = qword_395A8;
  if (!qword_395A8)
  {
    sub_558C(&qword_39598, &qword_2AF68);
    swift_getOpaqueTypeConformance2();
    sub_C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_395A8);
  }

  return result;
}

unint64_t sub_C26C()
{
  sub_C400();
  result = *v3;
  if (!result)
  {
    sub_558C(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_C2B0()
{
  sub_C400();
  v1 = sub_51E0(&qword_39590, &qword_2AF60);
  sub_7B1C(v1);
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_C318()
{
  sub_C400();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_C35C()
{
  sub_C400();
  v2 = v1(0);
  sub_7B1C(v2);
  (*(v3 + 8))(v0);
  return v0;
}

Swift::Int sub_C440()
{
  sub_2A0B4();
  sub_2A0C4(0);
  return sub_2A0D4();
}

Swift::Int sub_C494()
{
  sub_2A0B4();
  sub_2A0C4(0);
  return sub_2A0D4();
}

uint64_t sub_C4E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v267 = a3;
  v268 = a4;
  v6 = sub_29B44();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_E4A0();
  sub_E4E0(v8);
  v9 = sub_29224();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_E4A0();
  sub_E4E0(v11);
  v12 = sub_29074();
  v13 = sub_E4CC(v12, &v268);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_E4A0();
  sub_E4E0(v16);
  v245 = sub_28E24();
  v17 = sub_7AA0(v245);
  v244 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_E4A0();
  v22 = sub_E4E0(v21);
  v23 = type metadata accessor for ContactImageSourceView(v22);
  v24 = sub_E4CC(v23, &v264);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_E4A0();
  v28 = sub_E4E0(v27);
  v29 = type metadata accessor for AppIconView(v28);
  v30 = sub_E4CC(v29, &v270);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_E4A0();
  v34 = sub_E4E0(v33);
  v35 = type metadata accessor for SashStandardView(v34);
  v36 = sub_E4CC(v35, &v271);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_E4A0();
  sub_E4E0(v39);
  v248 = sub_28F84();
  v40 = sub_7AA0(v248);
  v247 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_E4A0();
  v45 = sub_E4E0(v44);
  v46 = type metadata accessor for MapsOverlayView(v45);
  v47 = sub_E4CC(v46, &v272);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_E4A0();
  sub_E4E0(v50);
  v254 = sub_29014();
  v51 = sub_7AA0(v254);
  v251 = v52;
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v51);
  v252 = &v238 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  sub_E4E0(&v238 - v57);
  v58 = type metadata accessor for IntentsUIStandardView();
  v59 = sub_E4CC(v58, &v274);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  sub_E4A0();
  sub_E4E0(v62);
  v63 = type metadata accessor for CoreChartPluginView();
  v64 = sub_E4CC(v63, &v275);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  sub_E4A0();
  sub_E4E0(v67);
  v68 = sub_29044();
  v69 = sub_7AA0(v68);
  v258 = v70;
  v259 = v69;
  v72 = *(v71 + 64);
  __chkstk_darwin(v69);
  sub_E4A0();
  v260 = v73;
  v257 = type metadata accessor for MapsPlaceCardView();
  v74 = sub_C3B0(v257);
  v76 = *(v75 + 64);
  __chkstk_darwin(v74);
  sub_E4A0();
  sub_E4E0(v77);
  v78 = sub_290C4();
  v79 = sub_7AA0(v78);
  v262 = v80;
  v263 = v79;
  v82 = *(v81 + 64);
  __chkstk_darwin(v79);
  sub_E4A0();
  v264 = v83;
  v261 = type metadata accessor for ContactPickerButtonView();
  v84 = sub_C3B0(v261);
  v86 = *(v85 + 64);
  __chkstk_darwin(v84);
  v88 = &v238 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ContactImageView(0);
  v90 = sub_C3B0(v89);
  v92 = *(v91 + 64);
  __chkstk_darwin(v90);
  v94 = &v238 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_28CD4();
  v96 = sub_7AA0(v95);
  v265 = v97;
  v99 = *(v98 + 64);
  v100 = __chkstk_darwin(v96);
  __chkstk_darwin(v100);
  v102 = &v238 - v101;
  v239 = a1;
  v240 = a2;
  v104 = sub_29B74();
  v105 = v103;
  v106 = v104 == 0x6D69656C63726963 && v103 == 0xEB00000000656761;
  if (v106 || (sub_E4F0() & 1) != 0)
  {

    v107 = sub_E50C();
    sub_DACC(v107, v108);
    sub_E50C();
    v109 = v266;
    result = sub_28CE4();
    if (!v109)
    {
      *&v269 = CircleImageView.init(model:)(v102);
      *(&v269 + 1) = v111;
      *&v270 = v112;
      sub_DDC4();
      return sub_298A4();
    }

    return result;
  }

  if (v104 == 0x69746361746E6F63 && v105 == 0xEC0000006567616DLL)
  {

    v115 = v267;
LABEL_20:
    sub_DACC(v115, v268);
    v117 = v266;
    result = sub_28CE4();
    if (!v117)
    {
      sub_29A94();
      sub_E4B4();
      sub_DD7C(v118, v119);
      *v94 = sub_29404();
      *(v94 + 1) = v120;
      v121 = *(v89 + 24);
      *&v94[v121] = swift_getKeyPath();
      sub_51E0(&qword_38FE0, &qword_2AB60);
      swift_storeEnumTagMultiPayload();
      v122 = v265;
      v123 = (*(v265 + 80) + 16) & ~*(v265 + 80);
      v124 = swift_allocObject();
      (*(v122 + 32))(v124 + v123, &v238 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v95);
      *(v94 + 2) = sub_DD1C;
      *(v94 + 3) = v124;
      v94[32] = 0;
      sub_DD7C(&qword_396E8, type metadata accessor for ContactImageView);
      return sub_298A4();
    }

    return result;
  }

  v114 = sub_E4F0();
  v115 = v267;
  if (v114 & 1) != 0 || (v104 == 0x6D6172676F6E6F6DLL ? (v116 = v105 == 0xED00006567616D69) : (v116 = 0), v116 || (sub_E4F0()))
  {

    goto LABEL_20;
  }

  sub_E524();
  v126 = v104 == 0xD000000000000013 && v125 == v105;
  if (v126 || (sub_E4F0() & 1) != 0)
  {

    sub_DACC(v115, v268);
    v127 = v264;
    v128 = v266;
    result = sub_290D4();
    if (!v128)
    {
      v129 = v261;
      v130 = &v88[*(v261 + 20)];
      sub_29A94();
      sub_E4B4();
      sub_DD7C(v131, v132);
      *v130 = sub_29404();
      v130[1] = v133;
      v134 = &v88[*(v129 + 24)];
      v273 = 0;
      sub_29854();
      v135 = *(&v269 + 1);
      *v134 = v269;
      *(v134 + 1) = v135;
      (*(v262 + 32))(v88, v127, v263);
      sub_DD7C(&qword_396E0, type metadata accessor for ContactPickerButtonView);
      return sub_298A4();
    }

    return result;
  }

  v136 = v104 == 0x63616C707370616DLL && v105 == 0xED00006472616365;
  if (v136 || (sub_E4F0() & 1) != 0)
  {

    v137 = sub_E518();
    sub_DACC(v137, v138);
    sub_E518();
    v139 = v266;
    result = sub_29054();
    if (!v139)
    {
      v140 = *(v258 + 32);
      v141 = sub_E50C();
      v142(v141);
      sub_DD7C(&qword_396D8, type metadata accessor for MapsPlaceCardView);
      return sub_298A4();
    }

    return result;
  }

  v143 = v104 == 0x7261686365726F63 && v105 == 0xE900000000000074;
  if (v143 || (sub_E4F0() & 1) != 0)
  {

    v144 = sub_E518();
    sub_DACC(v144, v145);
    sub_E518();
    sub_291A4();
    sub_DD7C(&qword_396D0, type metadata accessor for CoreChartPluginView);
    v146 = &v275;
    goto LABEL_44;
  }

  sub_E524();
  v149 = v104 == 0xD000000000000011 && v148 == v105;
  if (v149 || (sub_E4F0() & 1) != 0)
  {

    v150 = v256;
    v151 = v255;
    v152 = (v255 + *(v256 + 20));
    v153 = sub_E518();
    sub_DACC(v153, v154);
    sub_29A94();
    sub_E4B4();
    sub_DD7C(v155, v156);
    v157 = sub_29404();
    *v152 = v157;
    v152[1] = v158;
    v159 = *(v150 + 24);
    *(v151 + v159) = swift_getKeyPath();
    sub_51E0(&qword_38FE8, &unk_2C210);
    swift_storeEnumTagMultiPayload();
    v160 = *(v150 + 28);
    _s12SystemPlugin16SashStandardViewV14_actionHandler33_289897A7AC71DBD41716A1019D2705CFLL9SnippetUI06ActionG0Vvpfi_0();
    v161 = sub_E518();
    sub_DACC(v161, v162);
    sub_DD7C(&qword_396B0, &type metadata accessor for IntentsUIStandard);
    v163 = v253;
    sub_E518();
    v164 = v254;
    v165 = v266;
    sub_28FA4();
    if (!v165)
    {
      v170 = v251;
      (*(v251 + 32))(v151, v163, v164);
      v171 = v252;
      (*(v170 + 16))(v252, v151, v164);
      v172 = objc_allocWithZone(type metadata accessor for IntentsUIStandardViewModel());
      sub_1F30(v171, 0, 0);
      v173 = (v151 + *(v256 + 32));
      sub_DD7C(&qword_396C0, type metadata accessor for IntentsUIStandardViewModel);
      sub_E50C();
      v174 = sub_29394();
      v176 = v175;
      v177 = sub_E518();
      sub_DB24(v177, v178);
      *v173 = v174;
      v173[1] = v176;
      sub_DD7C(&qword_396C8, type metadata accessor for IntentsUIStandardView);
      return sub_298A4();
    }

    v166 = sub_E518();
    sub_DB24(v166, v167);

    sub_DC2C(v151 + v159);
    v168 = sub_29994();
    sub_C3B0(v168);
    return (*(v169 + 8))(v151 + v160);
  }

  v179 = v104 == 0x6C7265766F70616DLL && v105 == 0xEA00000000007961;
  if (v179 || (sub_E4F0() & 1) != 0)
  {

    v180 = sub_E50C();
    sub_DACC(v180, v181);
    sub_E50C();
    v182 = v266;
    result = sub_28F94();
    if (!v182)
    {
      v183 = v249;
      v184 = v246;
      v185 = (v246 + *(v249 + 24));
      sub_29A94();
      sub_E4B4();
      sub_DD7C(v186, v187);
      *v185 = sub_29404();
      v185[1] = v188;
      v189 = v247;
      v190 = v250;
      v191 = v248;
      (*(v247 + 16))(v184, v250, v248);
      sub_28F64();
      v193 = v192;
      sub_28F74();
      v195 = v194;
      v196 = COERCE_DOUBLE(sub_28F34());
      if (v197)
      {
        v198 = 0.01;
      }

      else
      {
        v198 = v196;
      }

      v199 = sub_28F44();
      v201 = v200;
      (*(v189 + 8))(v190, v191);
      v202 = *&v199;
      if (v201)
      {
        v202 = 0.01;
      }

      v203 = v184 + *(v183 + 20);
      *v203 = v193;
      *(v203 + 8) = v195;
      *(v203 + 16) = v198;
      *(v203 + 24) = v202;
      *(v203 + 32) = 0;
      sub_DD7C(&qword_396A8, type metadata accessor for MapsOverlayView);
      return sub_298A4();
    }

    return result;
  }

  sub_E524();
  v205 = v104 == 0xD000000000000010 && v204 == v105;
  if (v205 || (sub_E4F0() & 1) != 0)
  {

    v206 = sub_E50C();
    sub_DACC(v206, v207);
    v208 = sub_E50C();
    v209 = v266;
    result = SashStandardView.init(modelData:)(v208, v210, v211);
    if (v209)
    {
      return result;
    }

    sub_DD7C(&qword_396A0, type metadata accessor for SashStandardView);
    v146 = &v271;
    goto LABEL_44;
  }

  v212 = v104 == 0x766E6F6369707061 && v105 == 0xEB00000000776569;
  if (v212 || (sub_E4F0() & 1) != 0)
  {

    v213 = sub_E50C();
    sub_DACC(v213, v214);
    sub_E50C();
    v215 = v266;
    result = AppIconView.init(modelData:)(v216);
    if (v215)
    {
      return result;
    }

    sub_DD7C(&qword_395E0, type metadata accessor for AppIconView);
    v146 = &v270;
LABEL_44:
    v147 = *(v146 - 32);
    return sub_298A4();
  }

  sub_E524();
  v218 = v104 == 0xD000000000000016 && v217 == v105;
  if (!v218 && (sub_E4F0() & 1) == 0)
  {
    if (v104 == 0x6C6F686563616C70 && v105 == 0xEB00000000726564)
    {
    }

    else
    {
      v226 = sub_E4F0();

      if ((v226 & 1) == 0)
      {
        if (qword_38FB0 != -1)
        {
          swift_once();
        }

        v227 = sub_29264();
        sub_5BB4(v227, qword_3C140);

        v228 = sub_29254();
        v229 = sub_29D94();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *&v269 = v231;
          *v230 = 136446210;
          *(v230 + 4) = sub_DA08(v239, v240, &v269);
          _os_log_impl(&dword_0, v228, v229, "Unhandled view ID: %{public}s", v230, 0xCu);
          sub_5FD0(v231);
        }

        sub_D960();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v232 = sub_E50C();
    sub_DACC(v232, v233);
    sub_29B34();
    sub_E50C();
    v234 = sub_29B24();
    if (v235)
    {
      v236 = v234;
      v237 = v235;
      sub_DB24(v267, v268);
    }

    else
    {
      sub_DB24(v267, v268);
      v236 = 0;
      v237 = 0xE000000000000000;
    }

    *&v269 = v236;
    *(&v269 + 1) = v237;
    sub_DB7C();
    return sub_298A4();
  }

  v271 = 0;
  v269 = 0u;
  v270 = 0u;
  v219 = sub_E50C();
  sub_DACC(v219, v220);
  sub_29214();
  sub_DD7C(&qword_39690, &type metadata accessor for _ProtoImageElement.Contact);
  sub_E50C();
  v221 = v266;
  result = sub_29234();
  if (!v221)
  {
    v222 = v242;
    sub_28DB4();
    KeyPath = swift_getKeyPath();
    v224 = v241;
    *v241 = KeyPath;
    *(v224 + 8) = 0;
    (*(v244 + 32))(v224 + *(v243 + 20), v222, v245);
    sub_DD7C(&qword_39698, type metadata accessor for ContactImageSourceView);
    return sub_298A4();
  }

  return result;
}

uint64_t sub_D920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D910();
  *a1 = result;
  return result;
}

unint64_t sub_D960()
{
  result = qword_39680;
  if (!qword_39680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39680);
  }

  return result;
}

uint64_t sub_D9B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29424();
  *a1 = result;
  return result;
}

uint64_t sub_DA08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_DE18(v11, 0, 0, 1, a1, a2);
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
    sub_DF18(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_5FD0(v11);
  return v7;
}

uint64_t sub_DACC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_DB24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_DB7C()
{
  result = qword_39688;
  if (!qword_39688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39688);
  }

  return result;
}

uint64_t sub_DBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29424();
  *a1 = result;
  return result;
}

uint64_t sub_DC2C(uint64_t a1)
{
  v2 = sub_51E0(&qword_396B8, &qword_2B0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DC9C()
{
  v1 = sub_28CD4();
  sub_C3B0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_DD1C()
{
  v1 = *(sub_28CD4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_17DB4(v2);
}

uint64_t sub_DD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_DDC4()
{
  result = qword_396F0;
  if (!qword_396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396F0);
  }

  return result;
}

unint64_t sub_DE18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_DF74(a5, a6);
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
    result = sub_29F54();
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

uint64_t sub_DF18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_DF74(uint64_t a1, unint64_t a2)
{
  v4 = sub_DFC0(a1, a2);
  sub_E0D8(&off_35AD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_DFC0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_29BD4())
  {
    result = sub_E1BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_29F14();
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
          result = sub_29F54();
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

uint64_t sub_E0D8(uint64_t result)
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

    result = sub_E22C(result, v8, 1, v3);
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

void *sub_E1BC(uint64_t a1, uint64_t a2)
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

  sub_51E0(&qword_396F8, &qword_2B118);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_E22C(char *result, int64_t a2, char a3, char *a4)
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
    sub_51E0(&qword_396F8, &qword_2B118);
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

uint64_t getEnumTagSinglePayload for SystemPlugin.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SystemPlugin.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xE410);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_E44C()
{
  result = qword_39700;
  if (!qword_39700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39700);
  }

  return result;
}

uint64_t sub_E4CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_E4F0()
{

  return sub_2A034();
}

uint64_t sub_E530()
{
  v0 = type metadata accessor for ContactAvatarView.AvatarLoader(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_10924();
  return v3;
}

uint64_t sub_E56C()
{
  v1 = sub_29574();
  v2 = sub_7AA0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for ContactAvatarView(0) + 44);
  v10 = *v9;
  if ((*(v9 + 8) & 1) == 0)
  {

    sub_29DA4();
    v11 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v10, 0);
    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v10;
}

double sub_E6B4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactAvatarView(0);
  v5 = sub_7AA0(v4);
  v55 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v56 = v9;
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29824();
  v11 = sub_7AA0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + v4[7]);
  v19 = *(*(v1 + v4[14]) + 16);
  v20 = sub_10B00(v18);
  v54 = sub_295A4();
  v58 = 1;
  if (v20)
  {
    goto LABEL_3;
  }

  v21 = v2 + v4[6];
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  type metadata accessor for ContactAvatarView.AvatarLoader(0);
  sub_12CDC();
  sub_12094(v25, v26);
  sub_29344();
  v27 = sub_EB70();

  if (v27)
  {
LABEL_3:
    (*(v13 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v10);

    v53 = sub_29844();

    (*(v13 + 8))(v17, v10);
    sub_EBE4();
    sub_EBE4();
    sub_298E4();
    sub_29364();
    v52 = v59;
    v51 = v60;
    v50 = v61;
    v49 = v62;
    v29 = v63;
    v28 = v64;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v29 = 0;
    v28 = 0;
  }

  v30 = v58;
  v31 = v57;
  sub_120D8(v2, v57);
  v32 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  sub_123C0(v31, v33 + v32);
  v34 = (a1 + *(sub_51E0(&qword_39A10, &qword_2B348) + 36));
  v35 = *(sub_29384() + 20);

  sub_29CF4();
  *v34 = &unk_2B340;
  v34[1] = v33;
  v36 = v53;
  *a1 = v54;
  *(a1 + 8) = 0;
  *(a1 + 16) = v30;
  v37 = v52;
  *(a1 + 24) = v36;
  *(a1 + 32) = v37;
  v38 = v50;
  *(a1 + 40) = v51;
  *(a1 + 48) = v38;
  *(a1 + 56) = v49;
  *(a1 + 64) = v29;
  *(a1 + 72) = v28;
  v39 = sub_FD80();
  v40 = (a1 + *(sub_51E0(&qword_39A18, &qword_2B350) + 36));
  v41 = *(sub_293D4() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = sub_29594();
  sub_C3B0(v43);
  (*(v44 + 104))(v40 + v41, v42);
  *v40 = v39;
  v40[1] = v39;
  *(v40 + *(sub_51E0(&qword_39A20, &qword_2B358) + 36)) = 256;
  sub_EBE4();
  sub_EBE4();
  sub_298E4();
  sub_29364();

  v45 = (a1 + *(sub_51E0(&qword_39A28, &qword_2B360) + 36));
  v46 = v66;
  *v45 = v65;
  v45[1] = v46;
  result = v67[0];
  v45[2] = *v67;
  return result;
}

uint64_t sub_EB70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

double sub_EBE4()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29574();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactImageSizeResolver(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContactAvatarView(0);
  v14 = *(v13 + 20);
  v40 = v2;
  v15 = *(v2 + 16);
  v42 = v1;
  v15(v12, v0 + v14, v1);
  v45 = sub_E56C();
  v16 = v13;
  v17 = v0 + *(v13 + 48);
  v18 = *v17;
  v19 = *(v17 + 8);
  LODWORD(v17) = *(v17 + 9);
  v41 = v5;
  if (v17 == 1)
  {
    v43 = v18;
    v20 = v8;
  }

  else
  {

    sub_29DA4();
    v21 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v18, v19, 0);
    v20 = v8;
    (*(v5 + 8))(v8, v44);
    v43 = v46;
    LODWORD(v19) = v47;
  }

  v22 = v16;
  v23 = v0 + *(v16 + 52);
  v24 = *v23;
  v25 = *(v23 + 8);
  if (*(v23 + 9) != 1)
  {

    sub_29DA4();
    v38 = v0;
    v26 = sub_29684();
    v0 = v38;
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v24, v25, 0);
    (*(v41 + 8))(v20, v44);
    v24 = v46;
    LODWORD(v25) = v47;
  }

  v27 = &v12[v9[8]];
  v28 = v0 + *(v22 + 32);
  sub_1DAA8();
  *&v12[v9[5]] = v45;
  v29 = &v12[v9[6]];
  v30 = *&v43;
  *v29 = v43;
  v29[8] = v19 & 1;
  v31 = &v12[v9[7]];
  *v31 = v24;
  v31[8] = v25 & 1;
  if ((v19 | v25))
  {
    v32 = v39;
    sub_16118(v39);
    v33 = objc_allocWithZone(sub_29A94());
    v34 = sub_29A74();
    sub_28D24();
    v36 = v35;

    (*(v40 + 8))(v32, v42);
  }

  else
  {
    v36 = v30;
  }

  sub_124F8(v12);
  return v36;
}

uint64_t sub_F008(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_293C4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_29574();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_29CE4();
  v2[12] = sub_29CD4();
  v10 = sub_29CC4();
  v2[13] = v10;
  v2[14] = v9;

  return _swift_task_switch(sub_F164, v10, v9);
}

uint64_t sub_F164()
{
  if (v0[3])
  {
    v1 = v0[12];

    v2 = v0[11];
    v3 = v0[7];
    v4 = v0[8];

    sub_12D24();
    sub_12D9C();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[4];
  v8 = type metadata accessor for ContactAvatarView(0);
  v9 = (v7 + v8[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  type metadata accessor for ContactAvatarView.AvatarLoader(0);
  sub_12CDC();
  sub_12094(v13, v14);
  v0[15] = sub_29344();
  v35 = *(v7 + v8[7]);
  sub_EBE4();
  v15 = v7 + v8[10];
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = *v15;
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    sub_29DA4();
    v21 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v16, 0);
    (*(v19 + 8))(v18, v20);
    v22 = v0[2];
  }

  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[5];
  v26 = v0[6];
  v27 = v0[4];
  v28 = v27 + v8[9];
  sub_1DC3C(v23);
  (*(v26 + 104))(v24, enum case for LayoutDirection.rightToLeft(_:), v25);
  sub_293B4();
  v29 = *(v26 + 8);
  v29(v24, v25);
  v29(v23, v25);
  v30 = *(v27 + v8[14]);
  v31 = swift_task_alloc();
  v0[16] = v31;
  *v31 = v0;
  v31[1] = sub_F44C;
  v32 = v0[4];
  sub_12D9C();

  return sub_F5F8();
}

uint64_t sub_F44C()
{
  sub_12D30();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *v0;
  sub_12CF4();
  *v5 = v4;

  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return _swift_task_switch(sub_F584, v7, v6);
}

uint64_t sub_F584()
{
  sub_12D5C();
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  sub_12D24();

  return v5();
}

uint64_t sub_F5F8()
{
  sub_12D5C();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 112) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 40) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 80) = *v0;
  v9 = *(*(sub_51E0(&unk_39A30, &qword_2B370) - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_F6F4, 0, 0);
}

uint64_t sub_F6F4()
{
  v1 = *(v0 + 24);
  v2 = *(sub_28DC4() + 16);

  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = [objc_opt_self() scopeWithPointSize:*(v0 + 112) scale:0 rightToLeft:*(v0 + 40) style:{*(v0 + 48), *(v0 + 56)}];
    v5 = objc_opt_self();
    sub_28DC4();
    isa = sub_29C74().super.isa;

    v7 = [v5 predicateForContactsWithIdentifiers:isa];

    sub_51E0(&unk_3A270, &unk_2B378);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2B1D0;
    *(v8 + 32) = [objc_opt_self() descriptorForRequiredKeys];
    sub_12D90();
    v9 = swift_allocObject();
    if (qword_38F90 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v10 = qword_39710;
      sub_51E0(&qword_39AA0, &qword_2B388);
      sub_12D78();
      v11 = sub_29C74().super.isa;

      *(v0 + 16) = 0;
      v12 = [v10 unifiedContactsMatchingPredicate:v7 keysToFetch:v11 error:v0 + 16];

      v13 = *(v0 + 16);
      v41 = v7;
      if (v12)
      {
        sub_12818();
        sub_12D78();
        v14 = sub_29C84();
        v15 = v13;
      }

      else
      {
        v20 = v13;
        sub_28BC4();

        swift_willThrow();

        v14 = &_swiftEmptyArrayStorage;
      }

      v21 = *(v0 + 24);
      *(v9 + 16) = v14;
      v22 = sub_7A84(v14);
      v23 = *(sub_28DC4() + 16);

      if (v22 >= v23)
      {
LABEL_21:
        v31 = *(v0 + 80);
        v30 = *(v0 + 88);
        v33 = *(v0 + 64);
        v32 = *(v0 + 72);
        v34 = *(v0 + 32);
        sub_29CF4();
        v35 = sub_29D14();
        sub_53C4(v30, 0, 1, v35);
        v36 = swift_allocObject();
        v36[2] = 0;
        v36[3] = 0;
        v36[4] = v9;
        v36[5] = v4;
        v36[6] = v32;
        v36[7] = v33;
        v36[8] = v34;
        v36[9] = v31;

        swift_unknownObjectRetain();

        sub_1049C(0, 0, v30, &unk_2B3A0, v36);

        swift_unknownObjectRelease();
        sub_127B0(v30);

        v37 = *(v0 + 88);

        sub_12D24();
        sub_12DC0();

        __asm { BRAA            X1, X16 }
      }

      v24 = *(v0 + 24);
      v25 = *(sub_28DC4() + 16);

      v26 = sub_7A84(v14);
      v27 = v25 - v26;
      if (__OFSUB__(v25, v26))
      {
        break;
      }

      if (v27 < 1)
      {
        goto LABEL_26;
      }

      v28 = 1;
      v7 = &IntentsUIStandardViewModel;
      do
      {
        [objc_allocWithZone(CNContact) init];
        sub_29C64();
        if (*(&dword_10 + (*(v9 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v9 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_29CA4();
        }

        sub_29CB4();
        if (v27 == v28)
        {
          goto LABEL_21;
        }
      }

      while (!__OFADD__(v28++, 1));
      __break(1u);
LABEL_24:
      swift_once();
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (qword_38F98 != -1)
  {
    sub_12D04();
  }

  *(v0 + 96) = [objc_msgSend(qword_39718 "placeholderImageProvider")];
  swift_unknownObjectRelease();
  sub_29CE4();
  *(v0 + 104) = sub_29CD4();
  sub_29CC4();
  sub_12DC0();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_FC4C()
{
  sub_12D30();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];

  v4 = v2;
  sub_29804();
  sub_101C8();

  return _swift_task_switch(sub_FCF4, 0, 0);
}

uint64_t sub_FCF4()
{
  sub_12D5C();

  v1 = *(v0 + 88);

  sub_12D24();

  return v2();
}

double sub_FD80()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29574();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v43);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactImageSizeResolver(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContactAvatarView(0);
  v14 = v13[5];
  v41 = v2;
  v42 = v1;
  (*(v2 + 16))(v12, v0 + v14, v1);
  v15 = sub_E56C();
  v16 = v0 + v13[12];
  v17 = *v16;
  v18 = *(v16 + 8);
  LODWORD(v16) = *(v16 + 9);
  v38 = v8;
  v39 = v5;
  if (v16 != 1)
  {
    v44 = v18;

    sub_29DA4();
    v37 = v13;
    v19 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v17, v44, 0);
    v13 = v37;
    (*(v5 + 8))(v8, v43);
    v17 = v45;
    v18 = v46;
  }

  v44 = v18;
  v20 = v0 + v13[13];
  v21 = *v20;
  v22 = *(v20 + 8);
  if (*(v20 + 9) != 1)
  {

    sub_29DA4();
    v23 = sub_29684();
    v37 = v15;
    v24 = v23;
    sub_29244();

    v15 = v37;
    v25 = v38;
    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v21, v22, 0);
    (*(v39 + 8))(v25, v43);
    v21 = v45;
    LOBYTE(v22) = v46;
  }

  v26 = &v12[v9[8]];
  v27 = v0 + v13[8];
  sub_1DAA8();
  *&v12[v9[5]] = v15;
  v28 = &v12[v9[6]];
  *v28 = v17;
  v29 = v44;
  v28[8] = v44 & 1;
  v30 = &v12[v9[7]];
  *v30 = v21;
  v30[8] = v22 & 1;
  if (v29 & 1) != 0 || (v22)
  {
    v31 = v40;
    sub_16118(v40);
    v32 = objc_allocWithZone(sub_29A94());
    v33 = sub_29A74();
    sub_28D14();
    v35 = v34;

    (*(v41 + 8))(v31, v42);
    sub_124F8(v12);
  }

  else
  {
    v35 = v21;
    sub_124F8(v12);
    if (v17 > v21)
    {
      return v17;
    }
  }

  return v35;
}

uint64_t sub_1019C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_101C8();
}

uint64_t sub_101C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

uint64_t sub_10238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return _swift_task_switch(sub_10264, 0, 0);
}

uint64_t sub_10264()
{
  sub_12D30();
  if (qword_38F98 != -1)
  {
    sub_12D04();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = qword_39718;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_12818();
  v5 = v3;

  isa = sub_29C74().super.isa;

  v7 = [v5 avatarImageForContacts:isa scope:v2];
  v0[10] = v7;

  v8 = v7;
  v0[11] = sub_29804();
  sub_29CE4();
  v0[12] = sub_29CD4();
  v10 = sub_29CC4();

  return _swift_task_switch(sub_103AC, v10, v9);
}

uint64_t sub_103AC()
{
  sub_12D30();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_101C8();
  v6 = *(v4 + 16);
  sub_10C48(v2, v3);

  return _swift_task_switch(sub_1043C, 0, 0);
}

uint64_t sub_1043C()
{
  sub_12D5C();
  v1 = *(v0 + 88);

  sub_12D24();

  return v2();
}

uint64_t sub_1049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_51E0(&unk_39A30, &qword_2B370);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_1288C(a3, v26 - v11);
  v13 = sub_29D14();
  v14 = sub_B89C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_127B0(v12);
  }

  else
  {
    sub_29D04();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_29CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_29B84() + 32;
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

id sub_10720()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_39710 = result;
  return result;
}

id sub_10754()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_39718 = result;
  return result;
}

uint64_t sub_10788()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader__image;
  v2 = sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_C3B0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader_cnCancellable);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_10860()
{
  sub_1159C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10924()
{
  v1 = sub_51E0(&unk_398B0, &unk_2B2A0);
  v2 = sub_7AA0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader__image;
  v11[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v4 + 32))(v0 + v9, v8, v1);
  *(v0 + OBJC_IVAR____TtCV12SystemPlugin17ContactAvatarView12AvatarLoader_cnCancellable) = 0;
  return v0;
}

uint64_t sub_10A28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_292A4();
  *a1 = result;
  return result;
}

uint64_t sub_10A78()
{
  type metadata accessor for ContactImageCache();
  sub_12D90();
  v0 = swift_allocObject();
  sub_51E0(&unk_399D0, &qword_2B318);
  swift_allocObject();
  result = sub_11694(6, 0, sub_16F8C, 0, 300.0);
  *(v0 + 16) = result;
  qword_3C138 = v0;
  return result;
}

uint64_t sub_10B00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_28C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_11A30(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(v2 + 32);
  (*(v2 + 24))();
  v12 = *(*v10 + 120);
  LOBYTE(v11) = sub_28BF4();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {

    return 0;
  }

  sub_11CE4(v10);
  v13 = v10[3];

  return v13;
}

uint64_t sub_10C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_28C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  sub_11A30(a2);

  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v15(v14);
  v17 = *(v3 + 40);
  sub_28BE4();
  v18 = *(v7 + 8);
  v18(v11, v6);
  (*(v7 + 16))(v11, v13, v6);
  v19 = sub_51E0(&qword_399E0, &qword_2B328);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_11DE4(a2, a1, v11);
  v23 = *(v3 + 64);
  if (v23 && (v24 = sub_1161C(), (*(v3 + 80) & 1) == 0) && v24 == *(v3 + 72))
  {
    v25 = *(v23 + 16);

    sub_11A30(v25);
  }

  else
  {
  }

  sub_11CE4(v22);

  return (v18)(v13, v6);
}

uint64_t sub_10E64()
{
  swift_beginAccess();
  sub_51E0(&unk_399F8, &qword_2B330);
  sub_29AD4(0);
  swift_endAccess();
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;

  v2 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_10EE4()
{
  v1 = *(v0 + 16);

  sub_12D90();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_10F50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_28DD4();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return sub_B89C(v10, a2, v9);
  }

  v11 = sub_28D44();
  v12 = sub_C40C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = sub_51E0(&unk_39C40, &unk_2B4B0);
    v18 = sub_C40C(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[8];
    }

    else
    {
      v9 = sub_51E0(&qword_398C0, &unk_2B2B0);
      v14 = a3[9];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_110C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_28DD4();
  v9 = sub_C40C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_28D44();
    result = sub_C40C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v17 = sub_51E0(&unk_39C40, &unk_2B4B0);
      v18 = sub_C40C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[8];
      }

      else
      {
        v11 = sub_51E0(&qword_398C0, &unk_2B2B0);
        v16 = a4[9];
      }
    }

    v12 = a1 + v16;
  }

  return sub_53C4(v12, a2, a2, v11);
}

void sub_11248()
{
  sub_28DD4();
  if (v0 <= 0x3F)
  {
    sub_28D44();
    if (v1 <= 0x3F)
    {
      sub_11410();
      if (v2 <= 0x3F)
      {
        sub_114A4();
        if (v3 <= 0x3F)
        {
          sub_1159C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1154C(319, &unk_39CE0, &type metadata accessor for LayoutDirection);
            if (v5 <= 0x3F)
            {
              sub_114FC();
              if (v6 <= 0x3F)
              {
                sub_1154C(319, &unk_39CF0, type metadata accessor for VRXIdiom);
                if (v7 <= 0x3F)
                {
                  sub_1159C(319, qword_39970, &unk_39D00, &qword_2B2C0, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for ContactImageCache();
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_11410()
{
  if (!qword_39930)
  {
    type metadata accessor for ContactAvatarView.AvatarLoader(255);
    sub_12094(&qword_39938, type metadata accessor for ContactAvatarView.AvatarLoader);
    v0 = sub_29354();
    if (!v1)
    {
      atomic_store(v0, &qword_39930);
    }
  }
}

void sub_114A4()
{
  if (!qword_39940)
  {
    v0 = sub_29D74();
    if (!v1)
    {
      atomic_store(v0, &qword_39940);
    }
  }
}

void sub_114FC()
{
  if (!qword_39960)
  {
    v0 = sub_29334();
    if (!v1)
    {
      atomic_store(v0, &qword_39960);
    }
  }
}

void sub_1154C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_12D78();
    v4 = sub_29334();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1159C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_558C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_11694(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_29DD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7A84(&_swiftEmptyArrayStorage))
  {
    v17 = sub_62E8(&_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *(v6 + 16) = v17;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2 & 1;

  sub_51E0(&unk_3A770, &qword_2B320);
  sub_51E0(&qword_399E0, &qword_2B328);
  sub_12C8C(&qword_399E8, &unk_3A770, &qword_2B320);
  *(v6 + 48) = sub_29AB4();
  v18 = [objc_opt_self() defaultCenter];
  sub_29DE4();

  sub_12094(&qword_399F0, &type metadata accessor for NSNotificationCenter.Publisher);

  sub_29304();

  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  sub_29284();
  swift_endAccess();

  return v6;
}

uint64_t sub_11940()
{
  result = sub_11654();
  if ((result & 1) == 0)
  {
    if (qword_38FB0 != -1)
    {
      swift_once();
    }

    v1 = sub_29264();
    sub_5BB4(v1, qword_3C140);
    v2 = sub_29254();
    v3 = sub_29D94();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Received a memory limit warning. Emptying the LRU Cache.", v4, 2u);
    }

    return sub_10E64();
  }

  return result;
}

uint64_t sub_11A30(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[6];
  v5 = sub_20014(a1);
  if (v6)
  {
    v7 = v5;
    v8 = v2[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v2[6];
    v10 = v27[3];
    sub_51E0(&qword_39B10, &qword_2C1D0);
    sub_29FB4(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(v27[6] + 8 * v7);

    v12 = *(v27[7] + 8 * v7);
    sub_51E0(&unk_3A770, &qword_2B320);
    sub_51E0(&qword_399E0, &qword_2B328);
    sub_12C8C(&qword_399E8, &unk_3A770, &qword_2B320);
    sub_29FC4();
    v2[6] = v27;
    swift_endAccess();
    v13 = v2[8];
    if (v13 && v12 == v13)
    {
      v14 = *(*v12 + 128);
      v2[8] = swift_weakLoadStrong();
    }

    v15 = v2[7];
    if (v15 && v12 == v15)
    {
      v16 = *(*v12 + 136);
      v2[7] = swift_weakLoadStrong();
    }

    v17 = *(*v12 + 128);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = *(*v12 + 136);
      swift_weakLoadStrong();
      v21 = *(*v19 + 136);
      swift_weakAssign();
    }

    v22 = *(*v12 + 136);
    v23 = swift_weakLoadStrong();
    if (v23)
    {
      v24 = v23;
      swift_weakLoadStrong();
      v25 = *(*v24 + 128);
      swift_weakAssign();
    }

    swift_weakAssign();
    swift_weakAssign();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v12;
}

uint64_t sub_11CE4(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  swift_beginAccess();

  v5 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1[6];
  sub_20260(a1, v4, isUniquelyReferenced_nonNull_native);
  v1[6] = v13;
  swift_endAccess();
  if (!v1[8])
  {
    v1[8] = a1;
  }

  v7 = v1[7];
  if (v7)
  {
    v8 = *(*a1 + 136);
    v9 = v2[7];
    swift_weakAssign();
    v10 = *(*v7 + 128);
    swift_weakAssign();
    v11 = v2[7];
  }

  v2[7] = a1;
}

char *sub_11DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 128);
  swift_weakInit();
  v8 = *(*v3 + 136);
  swift_weakInit();
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  v9 = *(*v3 + 120);
  v10 = sub_28C14();
  (*(*(v10 - 8) + 32))(&v3[v9], a3, v10);
  return v3;
}

uint64_t sub_11EAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_11FA4;

  return v7(a1);
}

uint64_t sub_11FA4()
{
  sub_12D5C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_12CF4();
  *v3 = v2;

  sub_12D24();

  return v4();
}

uint64_t sub_12094(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_120D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1213C()
{
  v1 = type metadata accessor for ContactAvatarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_28DD4();
  sub_C3B0(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = v1[5];
  v10 = sub_28D44();
  sub_C3B0(v10);
  v12 = *(v11 + 8);
  v12(v0 + v3 + v9, v10);
  v13 = v0 + v3 + v1[6];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  sub_123A0();
  v17 = *(v0 + v3 + v1[7]);

  v18 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!sub_B89C(v6 + v18, 1, v10))
    {
      v12(v6 + v18, v10);
    }
  }

  else
  {
    v19 = *(v6 + v18);
  }

  v20 = v1[9];
  sub_51E0(&qword_39A08, &qword_2B550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_293C4();
    sub_C3B0(v21);
    (*(v22 + 8))(v6 + v20);
  }

  else
  {
    v23 = *(v6 + v20);
  }

  v24 = sub_12D84(v1[10]);
  sub_123A8(v24, *(v25 + 8));
  v26 = sub_12D84(v1[11]);
  sub_123A8(v26, *(v27 + 8));
  v28 = sub_12D84(v1[12]);
  sub_123B4(v28, *(v29 + 8), *(v29 + 9));
  v30 = sub_12D84(v1[13]);
  sub_123B4(v30, *(v31 + 8), *(v31 + 9));
  v32 = *(v6 + v1[14]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_123A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_123B4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_123C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12424()
{
  sub_12D30();
  v2 = *(type metadata accessor for ContactAvatarView(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_12CD4;

  return sub_F008(v4, v0 + v3);
}

uint64_t sub_124F8(uint64_t a1)
{
  v2 = type metadata accessor for ContactImageSizeResolver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12554()
{
  v1 = *(v0 + 16);

  sub_12D90();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_12588()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_125E8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  v12 = sub_12D68(v11);
  *v12 = v13;
  v12[1] = sub_126CC;

  return sub_10238(a1, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_126CC()
{
  sub_12D5C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_12CF4();
  *v3 = v2;

  sub_12D24();

  return v4();
}

uint64_t sub_127B0(uint64_t a1)
{
  v2 = sub_51E0(&unk_39A30, &qword_2B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12818()
{
  result = qword_3A280;
  if (!qword_3A280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3A280);
  }

  return result;
}

uint64_t sub_1285C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_EB70();
  *a2 = result;
  return result;
}

uint64_t sub_1288C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&unk_39A30, &qword_2B370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_128FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12934()
{
  sub_12D30();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_12D68(v3);
  *v4 = v5;
  v6 = sub_12D3C(v4);

  return v7(v6);
}

uint64_t sub_129C8()
{
  sub_12D30();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_12D68(v3);
  *v4 = v5;
  v6 = sub_12D3C(v4);

  return v7(v6);
}

unint64_t sub_12A60()
{
  result = qword_39B18;
  if (!qword_39B18)
  {
    sub_558C(&qword_39A28, &qword_2B360);
    sub_12AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B18);
  }

  return result;
}

unint64_t sub_12AEC()
{
  result = qword_39B20;
  if (!qword_39B20)
  {
    sub_558C(&qword_39A18, &qword_2B350);
    sub_12BA4();
    sub_12C8C(&qword_39DC0, &qword_39A20, &qword_2B358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B20);
  }

  return result;
}

unint64_t sub_12BA4()
{
  result = qword_39B28;
  if (!qword_39B28)
  {
    sub_558C(&qword_39A10, &qword_2B348);
    sub_12C8C(&qword_39B30, &qword_39B38, &unk_2B410);
    sub_12094(&unk_39B40, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39B28);
  }

  return result;
}

uint64_t sub_12C8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2, a3);
    sub_12D78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_12D04()
{

  return swift_once();
}

uint64_t sub_12D24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_12D3C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_12DE4()
{
  v0 = type metadata accessor for ContactMonogramView.MonogramLoader(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_14760();
  return v3;
}

uint64_t sub_12E20()
{
  v2 = sub_29574();
  v3 = sub_156F4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(type metadata accessor for ContactMonogramView(0) + 44);
  v11 = *v10;
  if ((*(v10 + 8) & 1) == 0)
  {

    sub_29DA4();
    v12 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v11, 0);
    (*(v5 + 8))(v9, v0);
    return v14[1];
  }

  return v11;
}

uint64_t sub_12F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactMonogramView(0);
  v5 = v4 - 8;
  v33 = *(v4 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29824();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_295A4();
  v12 = v2 + *(v5 + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  type metadata accessor for ContactMonogramView.MonogramLoader(0);
  sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader);
  sub_29344();
  v16 = sub_13344();

  if (v16)
  {
    (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
    v17 = sub_29844();

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_133B8();
  v19 = (a1 + *(sub_51E0(&unk_39D50, &unk_2B520) + 36));
  v20 = *(sub_293D4() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_29594();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  v19[1] = v18;
  *(v19 + *(sub_51E0(&qword_39A20, &qword_2B358) + 36)) = 256;
  *a1 = v32;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v17;
  sub_137D0();
  sub_137D0();
  sub_298E4();
  sub_29364();
  v23 = (a1 + *(sub_51E0(&qword_39D60, &qword_2B530) + 36));
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  v23[2] = v37;
  v25 = v34;
  sub_14EDC(v2, v34);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_151E8(v25, v27 + v26);
  v28 = (a1 + *(sub_51E0(&unk_39D70, &unk_2B560) + 36));
  v29 = v28 + *(sub_29384() + 20);
  result = sub_29CF4();
  *v28 = &unk_2B558;
  v28[1] = v27;
  return result;
}

uint64_t sub_13344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_292D4();

  return v1;
}

double sub_133B8()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29574();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v43);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactImageSizeResolver(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContactMonogramView(0);
  v14 = v13[5];
  v41 = v2;
  v42 = v1;
  (*(v2 + 16))(v12, v0 + v14, v1);
  v15 = sub_12E20();
  v16 = v0 + v13[12];
  v17 = *v16;
  v18 = *(v16 + 8);
  LODWORD(v16) = *(v16 + 9);
  v38 = v8;
  v39 = v5;
  if (v16 != 1)
  {
    v44 = v18;

    sub_29DA4();
    v37 = v13;
    v19 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v17, v44, 0);
    v13 = v37;
    (*(v5 + 8))(v8, v43);
    v17 = v45;
    v18 = v46;
  }

  v44 = v18;
  v20 = v0 + v13[13];
  v21 = *v20;
  v22 = *(v20 + 8);
  if (*(v20 + 9) != 1)
  {

    sub_29DA4();
    v23 = sub_29684();
    v37 = v15;
    v24 = v23;
    sub_29244();

    v15 = v37;
    v25 = v38;
    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(*&v21, v22, 0);
    (*(v39 + 8))(v25, v43);
    v21 = v45;
    LOBYTE(v22) = v46;
  }

  v26 = &v12[v9[8]];
  v27 = v0 + v13[8];
  sub_1DAA8();
  *&v12[v9[5]] = v15;
  v28 = &v12[v9[6]];
  *v28 = v17;
  v29 = v44;
  v28[8] = v44 & 1;
  v30 = &v12[v9[7]];
  *v30 = v21;
  v30[8] = v22 & 1;
  if (v29 & 1) != 0 || (v22)
  {
    v31 = v40;
    sub_16118(v40);
    v32 = objc_allocWithZone(sub_29A94());
    v33 = sub_29A74();
    sub_28D14();
    v35 = v34;

    (*(v41 + 8))(v31, v42);
    sub_124F8(v12);
  }

  else
  {
    v35 = v21;
    sub_124F8(v12);
    if (v17 > v21)
    {
      return v17;
    }
  }

  return v35;
}

double sub_137D0()
{
  v1 = sub_28D44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29574();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactImageSizeResolver(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContactMonogramView(0);
  v14 = *(v13 + 20);
  v40 = v2;
  v15 = *(v2 + 16);
  v42 = v1;
  v15(v12, v0 + v14, v1);
  v45 = sub_12E20();
  v16 = v13;
  v17 = v0 + *(v13 + 48);
  v18 = *v17;
  v19 = *(v17 + 8);
  LODWORD(v17) = *(v17 + 9);
  v41 = v5;
  if (v17 == 1)
  {
    v43 = v18;
    v20 = v8;
  }

  else
  {

    sub_29DA4();
    v21 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v18, v19, 0);
    v20 = v8;
    (*(v5 + 8))(v8, v44);
    v43 = v46;
    LODWORD(v19) = v47;
  }

  v22 = v16;
  v23 = v0 + *(v16 + 52);
  v24 = *v23;
  v25 = *(v23 + 8);
  if (*(v23 + 9) != 1)
  {

    sub_29DA4();
    v38 = v0;
    v26 = sub_29684();
    v0 = v38;
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123B4(v24, v25, 0);
    (*(v41 + 8))(v20, v44);
    v24 = v46;
    LODWORD(v25) = v47;
  }

  v27 = &v12[v9[8]];
  v28 = v0 + *(v22 + 32);
  sub_1DAA8();
  *&v12[v9[5]] = v45;
  v29 = &v12[v9[6]];
  v30 = *&v43;
  *v29 = v43;
  v29[8] = v19 & 1;
  v31 = &v12[v9[7]];
  *v31 = v24;
  v31[8] = v25 & 1;
  if ((v19 | v25))
  {
    v32 = v39;
    sub_16118(v39);
    v33 = objc_allocWithZone(sub_29A94());
    v34 = sub_29A74();
    sub_28D24();
    v36 = v35;

    (*(v40 + 8))(v32, v42);
  }

  else
  {
    v36 = v30;
  }

  sub_124F8(v12);
  return v36;
}

uint64_t sub_13BF4(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_293C4();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_29574();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_29CE4();
  v1[11] = sub_29CD4();
  v9 = sub_29CC4();

  return _swift_task_switch(sub_13D50, v9, v8);
}

uint64_t sub_13D50()
{
  v1 = *(v0 + 11);
  v2 = *(v0 + 3);

  v3 = type metadata accessor for ContactMonogramView(0);
  v4 = (v2 + v3[6]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for ContactMonogramView.MonogramLoader(0);
  sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader);
  sub_29344();
  v8 = sub_137D0();
  v10 = v9;
  v11 = v2 + v3[10];
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {
    v15 = *(v0 + 9);
    v14 = *(v0 + 10);
    v16 = *(v0 + 8);

    sub_29DA4();
    v17 = sub_29684();
    sub_29244();

    sub_29564();
    swift_getAtKeyPath();
    sub_123A8(v12, 0);
    (*(v15 + 8))(v14, v16);
    v13 = v0[2];
  }

  v18 = *(v0 + 10);
  v19 = *(v0 + 6);
  v20 = *(v0 + 7);
  v21 = *(v0 + 4);
  v22 = *(v0 + 5);
  v23 = *(v0 + 3);
  v24 = v23 + v3[9];
  sub_1DC3C(v20);
  (*(v22 + 104))(v19, enum case for LayoutDirection.rightToLeft(_:), v21);
  LOBYTE(v24) = sub_293B4();
  v25 = *(v22 + 8);
  v25(v19, v21);
  v25(v20, v21);
  sub_13FD0(v8, v10, v13, v23, v24 & 1);

  v26 = *(v0 + 1);

  return v26();
}

uint64_t sub_13FD0(double a1, double a2, double a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = [objc_opt_self() scopeWithPointSize:a5 & 1 scale:0 rightToLeft:a1 style:{a2, a3}];
  if (qword_38FA8 != -1)
  {
    swift_once();
  }

  v8 = qword_39B50;
  sub_28E04();
  v9 = sub_29B04();

  v10 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_15350;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_17D3C;
  v15[3] = &unk_36180;
  v11 = _Block_copy(v15);

  v12 = [v8 renderMonogramForString:v9 scope:v7 imageHandler:v11];
  swift_unknownObjectRelease();
  _Block_release(v11);

  v13 = *(v6 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable);
  *(v6 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable) = v12;
  return swift_unknownObjectRelease();
}

uint64_t sub_141A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_141D0();
}

uint64_t sub_141D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_292E4();
}

id sub_14240()
{
  result = [objc_allocWithZone(CNAvatarImageRenderer) init];
  qword_39B50 = result;
  return result;
}

uint64_t sub_14274(void *a1, uint64_t a2)
{
  v4 = sub_298F4();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29914();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15370();
  v12 = sub_29DB4();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_153F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5140;
  aBlock[3] = &unk_361D0;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  sub_29904();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_153FC(&unk_39D80, &type metadata accessor for DispatchWorkItemFlags);
  sub_51E0(&unk_39160, &qword_2AD50);
  sub_156A4(&qword_39D90, &unk_39160, &qword_2AD50);
  sub_29E54();
  sub_29DC4();
  _Block_release(v14);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

uint64_t sub_14564(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    sub_29804();
    sub_141D0();
  }

  return result;
}

uint64_t sub_145C8()
{
  v1 = OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader__image;
  v2 = sub_51E0(&unk_398B0, &unk_2B2A0);
  sub_7B1C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_1469C()
{
  sub_1159C(319, qword_39BA0, &unk_39770, &qword_2B200, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_14760()
{
  v2 = sub_51E0(&unk_398B0, &unk_2B2A0);
  v3 = sub_156F4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v12 - v8;
  v10 = OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader__image;
  v12[1] = 0;
  sub_51E0(&unk_39770, &qword_2B200);
  sub_292B4();
  (*(v5 + 32))(v1 + v10, v9, v0);
  *(v1 + OBJC_IVAR____TtCV12SystemPlugin19ContactMonogramView14MonogramLoader_cnCancellable) = 0;
  return v1;
}

uint64_t sub_14874(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_28E14();
  v7 = sub_C40C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_28D44();
    v12 = sub_C40C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v16 = *(a1 + a3[6] + 16);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v17 = sub_51E0(&qword_39C38, &qword_2B4A8);
      v18 = sub_C40C(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v14 = a3[7];
      }

      else
      {
        v20 = sub_51E0(&unk_39C40, &unk_2B4B0);
        v21 = sub_C40C(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v14 = a3[8];
        }

        else
        {
          v9 = sub_51E0(&qword_398C0, &unk_2B2B0);
          v14 = a3[9];
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_B89C(v10, a2, v9);
}

uint64_t sub_14A34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_28E14();
  v9 = sub_C40C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_28D44();
    result = sub_C40C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 16) = -a2;
        return result;
      }

      v17 = sub_51E0(&qword_39C38, &qword_2B4A8);
      v18 = sub_C40C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_51E0(&unk_39C40, &unk_2B4B0);
        v21 = sub_C40C(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v11 = sub_51E0(&qword_398C0, &unk_2B2B0);
          v16 = a4[9];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_53C4(v12, a2, a2, v11);
}

void sub_14C00()
{
  sub_28E14();
  if (v0 <= 0x3F)
  {
    sub_28D44();
    if (v1 <= 0x3F)
    {
      sub_14DD8();
      if (v2 <= 0x3F)
      {
        sub_14E6C(319, &qword_39CC8, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_1159C(319, &unk_39CD0, &unk_39950, &unk_2B4C0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_14E6C(319, &unk_39CE0, &type metadata accessor for LayoutDirection);
            if (v5 <= 0x3F)
            {
              sub_114FC();
              if (v6 <= 0x3F)
              {
                sub_14E6C(319, &unk_39CF0, type metadata accessor for VRXIdiom);
                if (v7 <= 0x3F)
                {
                  sub_1159C(319, qword_39970, &unk_39D00, &qword_2B2C0, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_14DD8()
{
  if (!qword_39CB8)
  {
    type metadata accessor for ContactMonogramView.MonogramLoader(255);
    sub_153FC(&qword_39CC0, type metadata accessor for ContactMonogramView.MonogramLoader);
    v0 = sub_29354();
    if (!v1)
    {
      atomic_store(v0, &qword_39CB8);
    }
  }
}

void sub_14E6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29334();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_14EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactMonogramView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F40()
{
  v1 = type metadata accessor for ContactMonogramView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_28E14();
  sub_7B1C(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = v1[5];
  v9 = sub_28D44();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v11 = v0 + v3 + v1[6];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_123A0();
  v15 = v1[7];
  sub_51E0(&qword_39D68, &unk_2B540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29324();
    sub_7B1C(v16);
    (*(v17 + 8))(v5 + v15);
  }

  else
  {
    v18 = *(v5 + v15);
  }

  v19 = v1[8];
  sub_51E0(&qword_38FE0, &qword_2AB60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!sub_B89C(v5 + v19, 1, v9))
    {
      v10(v5 + v19, v9);
    }
  }

  else
  {
    v20 = *(v5 + v19);
  }

  v21 = v1[9];
  sub_51E0(&qword_39A08, &qword_2B550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_293C4();
    sub_7B1C(v22);
    (*(v23 + 8))(v5 + v21);
  }

  else
  {
    v24 = *(v5 + v21);
  }

  v25 = sub_12D84(v1[10]);
  sub_123A8(v25, *(v26 + 8));
  v27 = sub_12D84(v1[11]);
  sub_123A8(v27, *(v28 + 8));
  v29 = sub_12D84(v1[12]);
  sub_123B4(v29, *(v30 + 8), *(v30 + 9));
  v31 = sub_12D84(v1[13]);
  sub_123B4(v31, *(v32 + 8), *(v32 + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_151E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactMonogramView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1524C()
{
  v2 = *(type metadata accessor for ContactMonogramView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A57C;

  return sub_13BF4(v0 + v3);
}

uint64_t sub_15318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_15370()
{
  result = qword_39150;
  if (!qword_39150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_39150);
  }

  return result;
}

uint64_t sub_153B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_153FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15444@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_13344();
  *a2 = result;
  return result;
}

unint64_t sub_15478()
{
  result = qword_39D98;
  if (!qword_39D98)
  {
    sub_558C(&unk_39D70, &unk_2B560);
    sub_15534();
    sub_153FC(&unk_39B40, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39D98);
  }

  return result;
}

unint64_t sub_15534()
{
  result = qword_39DA0;
  if (!qword_39DA0)
  {
    sub_558C(&qword_39D60, &qword_2B530);
    sub_155C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA0);
  }

  return result;
}

unint64_t sub_155C0()
{
  result = qword_39DA8;
  if (!qword_39DA8)
  {
    sub_558C(&unk_39D50, &unk_2B520);
    sub_156A4(&qword_39DB0, &qword_39DB8, &qword_2B5B8);
    sub_156A4(&qword_39DC0, &qword_39A20, &qword_2B358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39DA8);
  }

  return result;
}

uint64_t sub_156A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double ContactImageSizeResolver.imageSize.getter()
{
  v2 = sub_28D44();
  v3 = sub_7AA0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_16B7C();
  v10 = v9 - v8;
  v11 = type metadata accessor for ContactImageSizeResolver(0);
  sub_16BC0(v11);
  if (v13 & 1) != 0 || (v14 = (v0 + *(v1 + 28)), (v14[1]))
  {
    sub_16118(v10);
    v15 = *(v0 + *(v1 + 20));
    v16 = objc_allocWithZone(sub_29A94());
    v17 = sub_16BD4();
    sub_28D24();
    v19 = v18;

    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v20 = *v14;
    return *v12;
  }

  return v19;
}

double ContactImageSizeResolver.cornerRadius.getter()
{
  v2 = sub_28D44();
  v3 = sub_7AA0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_16B7C();
  v10 = v9 - v8;
  v11 = type metadata accessor for ContactImageSizeResolver(0);
  sub_16BC0(v11);
  if (v13 & 1) != 0 || (v14 = (v0 + *(v1 + 28)), (v14[8]))
  {
    sub_16118(v10);
    v15 = *(v0 + *(v1 + 20));
    v16 = objc_allocWithZone(sub_29A94());
    v17 = sub_16BD4();
    sub_28D14();
    v19 = v18;

    (*(v5 + 8))(v10, v2);
  }

  else if (*v12 <= *v14)
  {
    return *v14;
  }

  else
  {
    return *v12;
  }

  return v19;
}

uint64_t sub_15974@<X0>(uint64_t *a1@<X8>)
{
  v104 = a1;
  v1 = type metadata accessor for ContactMonogramView(0);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  sub_16B7C();
  v5 = v4 - v3;
  v6 = sub_28E14();
  v7 = sub_7AA0(v6);
  v102 = v8;
  v103 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_16B7C();
  v100 = v12 - v11;
  v13 = sub_28D44();
  v14 = sub_7AA0(v13);
  v97 = v15;
  v98 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_16B7C();
  v101 = v19 - v18;
  v20 = type metadata accessor for ContactAvatarView(0);
  v21 = *(*(v20 - 1) + 64);
  __chkstk_darwin(v20);
  sub_16B7C();
  v24 = v23 - v22;
  v25 = sub_28DD4();
  v26 = sub_7AA0(v25);
  v95 = v27;
  v96 = v26;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v26);
  v94 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v99 = &v93 - v32;
  v33 = sub_28DE4();
  v34 = sub_7AA0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_16B7C();
  v41 = v40 - v39;
  v42 = *(type metadata accessor for ContactImageSourceView(0) + 20);
  sub_28DF4();
  v43 = v36[11];
  v44 = sub_16BB4();
  v46 = v45(v44);
  if (v46 == enum case for ImageElement.Contact.Content.monogram(_:))
  {
    v47 = v36[12];
    v48 = sub_16BB4();
    v49(v48);
    v51 = v102;
    v50 = v103;
    v52 = v100;
    (*(v102 + 32))(v100, v41, v103);
    (*(v51 + 16))(v5, v52, v50);
    v53 = v5 + v1[5];
    sub_28DA4();
    v54 = v5 + v1[6];
    *v54 = sub_12DE4;
    *(v54 + 8) = 0;
    *(v54 + 16) = 0;
    v55 = v1[7];
    *(v5 + v55) = swift_getKeyPath();
    sub_51E0(&qword_39D68, &unk_2B540);
    sub_16B8C();
    v56 = v1[8];
    *(v5 + v56) = swift_getKeyPath();
    sub_51E0(&qword_38FE0, &qword_2AB60);
    sub_16B8C();
    v57 = v1[9];
    *(v5 + v57) = swift_getKeyPath();
    sub_51E0(&qword_39A08, &qword_2B550);
    sub_16B8C();
    v58 = v5 + v1[10];
    KeyPath = swift_getKeyPath();
    sub_16BA8(KeyPath);
    v60 = v5 + v1[11];
    v61 = swift_getKeyPath();
    sub_16BA8(v61);
    v62 = v5 + v1[12];
    *v62 = swift_getKeyPath();
    *(v62 + 8) = 0;
    v63 = v5 + v1[13];
    *v63 = swift_getKeyPath();
    *(v63 + 8) = 0;
    sub_16B28(&qword_39F08, type metadata accessor for ContactMonogramView);
    v64 = sub_298A4();
    result = (*(v51 + 8))(v52, v50);
LABEL_7:
    *v104 = v64;
    return result;
  }

  v66 = v104;
  if (v46 == enum case for ImageElement.Contact.Content.avatar(_:))
  {
    v67 = v36[12];
    v68 = sub_16BB4();
    v69(v68);
    v70 = v95;
    v71 = v96;
    v72 = v99;
    (*(v95 + 32))(v99, v41, v96);
    v73 = v94;
    v103 = *(v70 + 16);
    v103(v94, v72, v71);
    sub_28DA4();
    if (qword_38FA0 != -1)
    {
      swift_once();
    }

    v74 = qword_3C138;
    v75 = v24 + v20[6];
    *v75 = sub_E530;
    *(v75 + 8) = 0;
    *(v75 + 16) = 0;
    v76 = v20[8];
    *(v24 + v76) = swift_getKeyPath();
    sub_51E0(&qword_38FE0, &qword_2AB60);
    swift_storeEnumTagMultiPayload();
    v77 = v20[9];
    *(v24 + v77) = swift_getKeyPath();
    sub_51E0(&qword_39A08, &qword_2B550);
    swift_storeEnumTagMultiPayload();
    v78 = v24 + v20[10];
    v79 = swift_getKeyPath();
    sub_16BA8(v79);
    v80 = v24 + v20[11];
    v81 = swift_getKeyPath();
    sub_16BA8(v81);
    v82 = v24 + v20[12];
    *v82 = swift_getKeyPath();
    *(v82 + 8) = 0;
    v83 = v24 + v20[13];
    *v83 = swift_getKeyPath();
    *(v83 + 8) = 0;
    v103(v24, v73, v71);
    v85 = v97;
    v84 = v98;
    v86 = v101;
    (*(v97 + 16))(v24 + v20[5], v101, v98);

    v87 = sub_28DC4();
    v88 = sub_38EC(v87);
    (*(v85 + 8))(v86, v84);
    v89 = *(v70 + 8);
    v89(v73, v71);
    *(v24 + v20[7]) = v88;
    *(v24 + v20[14]) = v74;
    sub_16B28(&qword_39F10, type metadata accessor for ContactAvatarView);
    v64 = sub_298A4();
    result = (v89)(v99, v71);
    goto LABEL_7;
  }

  *v66 = sub_298A4();
  v90 = v36[1];
  v91 = sub_16BB4();
  return v92(v91);
}

uint64_t sub_16118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_51E0(&unk_39950, &unk_2B4C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_28D44();
  v9 = sub_7AA0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_16B7C();
  v16 = v15 - v14;
  v17 = *(v11 + 104);
  v17(v15 - v14, enum case for ImageElement.ImageStyle.default(_:), v8);
  v18 = sub_28D34();
  (*(v11 + 8))(v16, v8);
  if ((v18 & 1) == 0)
  {
    return (*(v11 + 16))(a1, v2, v8);
  }

  v19 = type metadata accessor for ContactImageSizeResolver(0);
  sub_165CC(v2 + *(v19 + 32), v7);
  if (sub_B89C(v7, 1, v8) != 1)
  {
    return (*(v11 + 32))(a1, v7, v8);
  }

  v17(a1, enum case for ImageElement.ImageStyle.contactImage5(_:), v8);
  result = sub_B89C(v7, 1, v8);
  if (result != 1)
  {
    return sub_1663C(v7);
  }

  return result;
}

uint64_t sub_1632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28D44();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_51E0(&unk_39950, &unk_2B4C0);
    v8 = a1 + *(a3 + 32);
  }

  return sub_B89C(v8, a2, v7);
}

uint64_t sub_163E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_28D44();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_51E0(&unk_39950, &unk_2B4C0);
    v10 = a1 + *(a4 + 32);
  }

  return sub_53C4(v10, a2, a2, v9);
}

void sub_16498()
{
  sub_28D44();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VRXIdiom(319);
    if (v1 <= 0x3F)
    {
      sub_1657C();
      if (v2 <= 0x3F)
      {
        sub_1689C(319, &unk_39E38, &type metadata accessor for ImageElement.ImageStyle, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1657C()
{
  if (!qword_39E30)
  {
    v0 = sub_29E34();
    if (!v1)
    {
      atomic_store(v0, &qword_39E30);
    }
  }
}

uint64_t sub_165CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_51E0(&unk_39950, &unk_2B4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1663C(uint64_t a1)
{
  v2 = sub_51E0(&unk_39950, &unk_2B4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_166B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_28E24();
    v9 = a1 + *(a3 + 20);

    return sub_B89C(v9, a2, v8);
  }
}

uint64_t sub_1674C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_28E24();
    v8 = v5 + *(a4 + 20);

    return sub_53C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_167E8()
{
  sub_1689C(319, &unk_39CF0, type metadata accessor for VRXIdiom, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_28E24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1689C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1691C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29474();
}

uint64_t sub_16970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = sub_7AA0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_16AF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_29464();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_16B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16B8C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_16BA8(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_16BD4()
{

  return sub_29A74();
}

uint64_t sub_16BF4()
{
  v0 = sub_29264();
  sub_16CBC(v0, qword_3C140);
  v1 = sub_5BB4(v0, qword_3C140);
  if (qword_38FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_5BB4(v0, qword_3C158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_16CBC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_16D20()
{
  sub_16E0C();
  result = sub_29E24();
  qword_39F18 = result;
  return result;
}

uint64_t sub_16D80()
{
  v0 = sub_29264();
  sub_16CBC(v0, qword_3C158);
  sub_5BB4(v0, qword_3C158);
  if (qword_38FB8 != -1)
  {
    swift_once();
  }

  v1 = qword_39F18;
  return sub_29274();
}

unint64_t sub_16E0C()
{
  result = qword_39F20[0];
  if (!qword_39F20[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_39F20);
  }

  return result;
}

uint64_t sub_16ECC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[6];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  type metadata accessor for LRUCache.Entry();

  v6 = sub_29AC4();

  return v6;
}

void *sub_16F90()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return v0;
}

uint64_t sub_16FD0()
{
  sub_16F90();

  return _swift_deallocClassInstance(v0, 81, 7);
}

uint64_t sub_17020(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = sub_28C14();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_17138()
{
  v1 = *v0;
  if (*(v0 + 56))
  {
    v16 = *(v0 + 56);
    v2 = v1[10];
    v3 = v1[11];
    v4 = v1[12];
    type metadata accessor for LRUCache.Entry();
    swift_getWitnessTable();
    sub_29C44();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v3;
    v5[4] = v4;
    sub_29F34();
    swift_getWitnessTable();
    sub_2A004();

    sub_29FA4();
    swift_getWitnessTable();
    sub_179D0();
    v6 = sub_29C54();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v19._countAndFlagsBits = v6;
    v19._object = v8;
    sub_29BC4(v19);

    v20._countAndFlagsBits = 23818;
    v20._object = 0xE200000000000000;
    sub_29BC4(v20);
    v10 = 0xE400000000000000;
    v11 = 538970715;
  }

  else
  {

    v10 = 0xE200000000000000;
    v11 = 23899;
  }

  sub_29F24(40);
  v12 = sub_2A0E4();

  v18 = v12;
  v21._countAndFlagsBits = 0x7469636170616328;
  v21._object = 0xEB00000000203A79;
  sub_29BC4(v21);
  if (*(v0 + 80))
  {
    object = 0xE300000000000000;
    v14._countAndFlagsBits = 7104878;
  }

  else
  {
    v17 = *(v0 + 72);
    sub_17A24();
    v14._countAndFlagsBits = sub_29E44();
    object = v14._object;
  }

  v14._object = object;
  sub_29BC4(v14);

  v22._countAndFlagsBits = 0x3A746E756F63202CLL;
  v22._object = 0xE900000000000020;
  sub_29BC4(v22);
  sub_16ECC();
  v23._countAndFlagsBits = sub_2A014();
  sub_29BC4(v23);

  v24._countAndFlagsBits = 0x656972746E65202CLL;
  v24._object = 0xEB00000000203A73;
  sub_29BC4(v24);
  v25._countAndFlagsBits = v11;
  v25._object = v10;
  sub_29BC4(v25);

  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  sub_29BC4(v26);
  return v18;
}

uint64_t sub_174FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  type metadata accessor for LRUCache.Entry();

  swift_getWitnessTable();
  result = sub_29B64();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1759C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  sub_2A024();
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  sub_29BC4(v7);
  v4 = *(*v0 + 112);
  v5 = *(v1 + 88);
  sub_2A024();
  return 0;
}

uint64_t sub_1765C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];

  sub_176B4(v1);
  return v2;
}

uint64_t sub_176B4(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(**a1 + 136);
    Strong = swift_weakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
}

uint64_t sub_17718@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1765C(a1);
  *a2 = result;
  return result;
}

uint64_t *sub_17740()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  v2 = *(*v0 + 120);
  v3 = sub_28C14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 128);
  swift_weakDestroy();
  v5 = *(*v0 + 136);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_17890()
{
  v0 = sub_17740();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1793C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_17654();

  *a1 = v4;
  return result;
}

uint64_t sub_179C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_174FC(a1, a2);
}

unint64_t sub_179D0()
{
  result = qword_3A028;
  if (!qword_3A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A028);
  }

  return result;
}

unint64_t sub_17A24()
{
  result = qword_3A030[0];
  if (!qword_3A030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3A030);
  }

  return result;
}

uint64_t sub_17AA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_17AFC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_17B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ContactImageView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29A94();
  sub_18244(&qword_3A0D0, &type metadata accessor for Context);
  *a2 = sub_29404();
  *(a2 + 8) = v4;
  v5 = *(type metadata accessor for ContactImageView(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_51E0(&qword_38FE0, &qword_2AB60);
  swift_storeEnumTagMultiPayload();
  v6 = sub_28CD4();
  sub_7AA0(v6);
  v8 = v7;
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = swift_allocObject();
  result = (*(v8 + 32))(v12 + v9, a1, v6);
  *(a2 + 16) = sub_DD1C;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  return result;
}

void sub_17D3C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_17DB4(uint64_t a1)
{
  v2 = sub_28CD4();
  v3 = sub_7AA0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_16B7C();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, a1);
  v10 = type metadata accessor for ContactImageView.ContactImageLoader(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_194BC(v8);
  return v13;
}

uint64_t sub_17E7C()
{
  v1 = sub_28CD4();
  sub_C3B0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t ContactImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactImageView(0);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4 - 8);
  v41 = v6;
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29824();
  v8 = sub_7AA0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_16B7C();
  v15 = v14 - v13;
  v39 = sub_295A4();
  v43 = 1;
  v16 = *(v1 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 32);
  type metadata accessor for ContactImageView.ContactImageLoader(0);
  sub_19F90();
  sub_18244(v19, v20);
  sub_29344();
  v21 = sub_18288();

  if (v21)
  {
    (*(v10 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v7);
    v38 = sub_29844();

    (*(v10 + 8))(v15, v7);
    sub_182FC();
    sub_182FC();
    sub_298E4();
    sub_29364();
    v36 = v45;
    v37 = v44;
    v22 = v46;
    v23 = v47;
    v25 = v48;
    v24 = v49;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
  }

  v26 = v43;
  v27 = (a1 + *(sub_51E0(&qword_39A10, &qword_2B348) + 36));
  v28 = v27 + *(sub_29384() + 20);
  sub_29CF4();
  v29 = v42;
  sub_186AC(v2, v42);
  v30 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v31 = swift_allocObject();
  result = sub_18858(v29, v31 + v30);
  *v27 = &unk_2B9E8;
  v27[1] = v31;
  v33 = v38;
  *a1 = v39;
  *(a1 + 8) = 0;
  *(a1 + 16) = v26;
  v34 = v36;
  v35 = v37;
  *(a1 + 24) = v33;
  *(a1 + 32) = v35;
  *(a1 + 40) = v34;
  *(a1 + 48) = v22;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = v24;
  return result;
}