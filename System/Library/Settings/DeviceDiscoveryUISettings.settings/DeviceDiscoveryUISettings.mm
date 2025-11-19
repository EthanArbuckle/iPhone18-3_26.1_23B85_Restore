id ResetWiFiIdentifierViewController(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v2 = [ASAccessoryInfoViewFactory performSelector:"resetWiFiViewControllerFromDevices:" withObject:v1]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_alloc_init(UIViewController);
  }

  v4 = v3;

  return v4;
}

uint64_t sub_1834()
{
  v0 = sub_146D4();
  sub_110B4(v0, qword_207B8);
  sub_F370(v0, qword_207B8);
  return sub_146C4();
}

uint64_t sub_18AC()
{
  sub_14C94(28);

  sub_14B34(*v0);
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_14B34(v4);
  sub_14B34(*(v0 + 16));
  v5._countAndFlagsBits = 0x726961507369202CLL;
  v5._object = 0xEC000000203A6465;
  sub_14B34(v5);
  if (*(v0 + 32))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_14B34(v1);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_14B34(v6);
  return 0x28656369766544;
}

uint64_t sub_19A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_19B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_14D04()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_14D04()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5C()
{
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1B14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C00(v4);
}

uint64_t sub_1C00(uint64_t a1)
{
  swift_beginAccess();
  if (sub_10E64(*(v1 + 32), a1))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_11554(&qword_20428, type metadata accessor for Manager);
    sub_14614();
  }
}

uint64_t sub_1D38()
{
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  v1 = *(v0 + 40);
}

uint64_t sub_1DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  *a2 = *(v3 + 40);
}

uint64_t sub_1E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1EB4(v4);
}

uint64_t sub_1EB4(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_10BD8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_11554(&qword_20428, type metadata accessor for Manager);
    sub_14614();
  }
}

uint64_t sub_2008()
{
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_20C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_2180(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21AC(v4);
}

uint64_t sub_21AC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_10E64(*(v1 + 48), a1))
  {
    *(v1 + 48) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_11554(&qword_20428, type metadata accessor for Manager);
    sub_14614();
  }
}

uint64_t sub_22E4()
{
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  v4 = 0;
LABEL_2:
  v5 = 40 * v4;
  while (1)
  {
    if (v2 == v4)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = v5 + 40;
    v7 = *(v1 + v5 + 64);
    v5 += 40;
    if (v7)
    {
      v9 = *(v1 + v6 - 8);
      v8 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v10 = *(v1 + v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_FD2C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_FD2C((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v8;
      *(v14 + 6) = v11;
      *(v14 + 7) = v10;
      v14[64] = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A4()
{
  swift_getKeyPath();
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  v4 = 0;
LABEL_2:
  v5 = 40 * v4;
  while (1)
  {
    if (v2 == v4)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = v5 + 40;
    v7 = *(v1 + v5 + 64);
    v5 += 40;
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + v6 - 8);
      v8 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v10 = *(v1 + v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_FD2C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_FD2C((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      *(v14 + 64) = 0;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_2660()
{
  v1 = v0;
  v2 = sub_EC70(&qword_20400, &qword_15590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  v0[4] = _swiftEmptyArrayStorage;
  v0[5] = _swiftEmptyArrayStorage;
  v0[6] = _swiftEmptyArrayStorage;
  sub_14654();
  sub_14684();
  swift_allocObject();
  v0[2] = sub_14674();
  v6 = [objc_allocWithZone(DASession) init];
  v1[3] = v6;
  aBlock[4] = sub_ECB8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4BC0;
  aBlock[3] = &unk_1CCC8;
  v7 = _Block_copy(aBlock);
  swift_retain_n();
  v8 = v6;

  [v8 setEventHandler:v7];
  _Block_release(v7);

  v9 = sub_14C24();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  sub_48C0(0, 0, v5, &unk_155A0, v10);

  return v1;
}

uint64_t sub_2874(uint64_t a1)
{
  v2 = sub_EC70(&qword_20400, &qword_15590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_14C24();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_14C04();

  v7 = sub_14BF4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_48C0(0, 0, v5, &unk_156D0, v8);
}

uint64_t sub_2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_14C04();
  v4[4] = sub_14BF4();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2A48;

  return sub_2D24();
}

uint64_t sub_2A48()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_2B88;
  v5 = *(v1 + 16);

  return sub_3B18();
}

uint64_t sub_2B88()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_14BB4();

  return _swift_task_switch(sub_2CC4, v5, v4);
}

uint64_t sub_2CC4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2D24()
{
  v1[20] = v0;
  v2 = *(*(sub_EC70(&qword_20400, &qword_15590) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = sub_EC70(&qword_20408, &qword_155D8);
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_2E28, 0, 0);
}

uint64_t sub_2E28()
{
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v1 = sub_146D4();
  v0[25] = sub_F370(v1, qword_207B8);
  v2 = sub_146B4();
  v3 = sub_14C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating devices", v4, 2u);
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[20];

  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v0[26] = v9;
  v12 = *(v8 + 24);
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_30D4;
  swift_continuation_init();
  v0[17] = v7;
  v10 = sub_F3A8(v0 + 14);
  sub_EC70(&qword_20410, &qword_155E0);
  sub_EC70(&qword_20418, &qword_155E8);
  sub_14BC4();
  (*(v6 + 32))(v10, v5, v7);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9674;
  v0[13] = &unk_1CDE0;
  [v12 getDevicesWithFlags:1024 completionHandler:v0 + 10];
  (*(v6 + 8))(v10, v7);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_30D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_38A8;
  }

  else
  {
    v3 = sub_31E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31E4()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    goto LABEL_57;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  for (i = *(v0 + 152); v2; i = v1)
  {
    v3 = 0;
    v4 = i & 0xC000000000000001;
    v59 = i + 32;
    v60 = i & 0xFFFFFFFFFFFFFF8;
    v55 = _swiftEmptyArrayStorage;
    v56 = v2;
    v58 = i & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v5 = sub_14CA4();
      }

      else
      {
        if (v3 >= *(v60 + 16))
        {
          goto LABEL_56;
        }

        v5 = *(v59 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 wifiAwareOTAName];
      if (v8)
      {
        v1 = v8;
        v9 = sub_14B04();
        v11 = v10;

        v12 = [v6 appAccessInfoMap];
        if (v12)
        {
          v13 = v12;
          v57 = v9;
          sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
          v14 = sub_14AD4();

          v1 = v14 + 64;
          v15 = 1 << *(v14 + 32);
          if (v15 < 64)
          {
            v16 = ~(-1 << v15);
          }

          else
          {
            v16 = -1;
          }

          v17 = v16 & *(v14 + 64);
          v18 = (v15 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v19 = 0;
          while (v17)
          {
LABEL_19:
            v21 = *(*(v14 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
            if ([v21 state] == &dword_18 + 1)
            {

LABEL_33:

              v29 = 1 << *(v14 + 32);
              if (v29 < 64)
              {
                v30 = ~(-1 << v29);
              }

              else
              {
                v30 = -1;
              }

              v31 = v30 & *(v14 + 64);
              v32 = (v29 + 63) >> 6;

              v33 = 0;
              while (v31)
              {
                v34 = v33;
LABEL_43:
                v35 = __clz(__rbit64(v31));
                v31 &= v31 - 1;
                if ([*(*(v14 + 56) + ((v34 << 9) | (8 * v35))) state] == &dword_18 + 1)
                {
                  v36 = 1;
LABEL_46:

                  v54[18] = [v6 signature];
                  v1 = sub_14CF4();
                  v38 = v37;

                  v2 = v56;
                  v4 = v58;
                  if (v38)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v55 = sub_F5B8(0, *(v55 + 2) + 1, 1, v55, &qword_20450, &qword_15650);
                    }

                    v40 = *(v55 + 2);
                    v39 = *(v55 + 3);
                    if (v40 >= v39 >> 1)
                    {
                      v55 = sub_F5B8((v39 > 1), v40 + 1, 1, v55, &qword_20450, &qword_15650);
                    }

                    *(v55 + 2) = v40 + 1;
                    v41 = &v55[40 * v40];
                    *(v41 + 4) = v1;
                    *(v41 + 5) = v38;
                    *(v41 + 6) = v57;
                    *(v41 + 7) = v11;
                    v41[64] = v36;
                    v4 = v58;
                  }

                  goto LABEL_30;
                }
              }

              while (1)
              {
                v34 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_54;
                }

                if (v34 >= v32)
                {
                  v36 = 0;
                  goto LABEL_46;
                }

                v31 = *(v1 + 8 * v34);
                ++v33;
                if (v31)
                {
                  v33 = v34;
                  goto LABEL_43;
                }
              }
            }

            v17 &= v17 - 1;
            v22 = [v21 state];

            if (v22 == &dword_0 + 1)
            {
              goto LABEL_33;
            }
          }

          while (1)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v20 >= v18)
            {

              v2 = v56;
              v4 = v58;
              goto LABEL_28;
            }

            v17 = *(v1 + 8 * v20);
            ++v19;
            if (v17)
            {
              v19 = v20;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

LABEL_28:
      }

      else
      {
        if (qword_207B0 != -1)
        {
          swift_once();
        }

        v23 = sub_146D4();
        sub_F370(v23, qword_207B8);
        v24 = v6;
        v1 = sub_146B4();
        v25 = sub_14C34();

        if (os_log_type_enabled(v1, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v24;
          *v27 = v24;
          v28 = v24;
          _os_log_impl(&dword_0, v1, v25, "Device missing OTA name: %@", v26, 0xCu);
          sub_12F1C(v27, &qword_20420, &qword_155F0);
        }
      }

LABEL_30:
      if (v3 == v2)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v2 = sub_14CC4();
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_59:
  v42 = v54[26];

  v43 = *(v42 + 16);
  *(v42 + 16) = v55;

  v44 = v54[26];
  v45 = v54[24];
  v47 = v54[20];
  v46 = v54[21];
  sub_94D0((v44 + 16), sub_10940);
  v48 = sub_14C24();
  (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
  sub_14C04();

  v49 = sub_14BF4();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = &protocol witness table for MainActor;
  v50[4] = v47;
  v50[5] = v44;
  sub_48C0(0, 0, v46, &unk_15648, v50);

  v51 = v54[1];

  return v51();
}

uint64_t sub_38A8()
{
  v1 = v0[27];
  v2 = v0[25];
  swift_willThrow();
  swift_errorRetain();
  v3 = sub_146B4();
  v4 = sub_14C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to fetch devices: %@", v7, 0xCu);
    sub_12F1C(v8, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v10 = v0[26];
  v11 = v0[24];
  v13 = v0[20];
  v12 = v0[21];
  sub_94D0((v10 + 16), sub_10940);
  v14 = sub_14C24();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_14C04();

  v15 = sub_14BF4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v10;
  sub_48C0(0, 0, v12, &unk_15648, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_3B18()
{
  v1[19] = v0;
  v2 = *(*(sub_EC70(&qword_20400, &qword_15590) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = sub_EC70(&qword_20408, &qword_155D8);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_3C1C, 0, 0);
}

uint64_t sub_3C1C()
{
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v1 = sub_146D4();
  v0[24] = sub_F370(v1, qword_207B8);
  v2 = sub_146B4();
  v3 = sub_14C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating Reset Devices", v4, 2u);
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[19];

  v11 = *(v8 + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_3EA4;
  swift_continuation_init();
  v0[17] = v7;
  v9 = sub_F3A8(v0 + 14);
  sub_EC70(&qword_20410, &qword_155E0);
  sub_EC70(&qword_20418, &qword_155E8);
  sub_14BC4();
  (*(v6 + 32))(v9, v5, v7);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9674;
  v0[13] = &unk_1CD68;
  [v11 getDevicesWithFlags:1032 completionHandler:v0 + 10];
  (*(v6 + 8))(v9, v7);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_3EA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_4748;
  }

  else
  {
    v3 = sub_3FB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3FB4()
{
  v58 = v0;
  v1 = *(v0 + 144);
  v57 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_46;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  v51 = v1;
  while (v2)
  {
    v3 = 0;
    v4 = v51 & 0xC000000000000001;
    v5 = v51 & 0xFFFFFFFFFFFFFF8;
    v55 = _swiftEmptyArrayStorage;
    v52 = v2;
    while (1)
    {
      if (v4)
      {
        v6 = sub_14CA4();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v51 + 32 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v9 = [v6 wifiAwareOTAName];
      if (v9)
      {

        v10 = [v7 appAccessInfoMap];
        if (v10)
        {
          v11 = v10;
          v12 = v2;
          v13 = v4;
          sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
          v1 = sub_14AD4();

          v14 = 1 << *(v1 + 32);
          if (v14 < 64)
          {
            v15 = ~(-1 << v14);
          }

          else
          {
            v15 = -1;
          }

          v16 = v15 & *(v1 + 64);
          v17 = (v14 + 63) >> 6;

          v18 = 0;
          while (v16)
          {
            v19 = v18;
LABEL_23:
            v20 = __clz(__rbit64(v16));
            v16 &= v16 - 1;
            if ([*(*(v1 + 56) + ((v19 << 9) | (8 * v20))) state] == &dword_8 + 2)
            {

              v4 = v13;
              v2 = v12;
              goto LABEL_25;
            }
          }

          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
              goto LABEL_44;
            }

            if (v19 >= v17)
            {
              break;
            }

            v16 = *(v1 + 64 + 8 * v19);
            ++v18;
            if (v16)
            {
              v18 = v19;
              goto LABEL_23;
            }
          }

          v4 = v13;
          v2 = v12;
          v5 = v51 & 0xFFFFFFFFFFFFFF8;
          if (v7)
          {
            v1 = &v57;
            sub_14B54();
            if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v40 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
              sub_14B84();
            }

            sub_14BA4();
            v55 = v57;
          }

          goto LABEL_6;
        }

LABEL_25:
        if (qword_207B0 != -1)
        {
          swift_once();
        }

        v21 = sub_146D4();
        sub_F370(v21, qword_207B8);
        v22 = v7;
        v1 = sub_146B4();
        v23 = sub_14C34();

        if (os_log_type_enabled(v1, v23))
        {
          v24 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v56 = v54;
          *v24 = 138412546;
          *(v24 + 4) = v22;
          *v53 = v22;
          *(v24 + 12) = 2080;
          v25 = [v22 appAccessInfoMap];
          if (v25)
          {
            v26 = v25;
            sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
            sub_14AD4();
          }

          else
          {
            sub_10F68(_swiftEmptyArrayStorage);
          }

          sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
          v36 = sub_14AE4();
          v38 = v37;

          v39 = sub_F784(v36, v38, &v56);

          *(v24 + 14) = v39;
          _os_log_impl(&dword_0, v1, v23, "Filtering out %@ due to activating state: %s", v24, 0x16u);
          sub_12F1C(v53, &qword_20420, &qword_155F0);

          sub_F468(v54);

          v4 = v51 & 0xC000000000000001;
          v2 = v52;
        }

        else
        {
        }

        v5 = v51 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        if (qword_207B0 != -1)
        {
          swift_once();
        }

        v27 = sub_146D4();
        sub_F370(v27, qword_207B8);
        v28 = v7;
        v1 = sub_146B4();
        v29 = sub_14C34();

        if (os_log_type_enabled(v1, v29))
        {
          v30 = swift_slowAlloc();
          v31 = v5;
          v32 = v2;
          v33 = v4;
          v34 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v28;
          *v34 = v28;
          v35 = v28;
          _os_log_impl(&dword_0, v1, v29, "Device missing OTA name: %@", v30, 0xCu);
          sub_12F1C(v34, &qword_20420, &qword_155F0);
          v4 = v33;
          v2 = v32;
          v5 = v31;
        }
      }

LABEL_6:
      if (v3 == v2)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v2 = sub_14CC4();
    v51 = v1;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_48:
  v42 = v50[19];
  v41 = v50[20];

  v43 = sub_14C24();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  sub_14C04();

  v44 = sub_14BF4();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = &protocol witness table for MainActor;
  v45[4] = v42;
  v45[5] = v55;
  sub_48C0(0, 0, v41, &unk_15600, v45);

  v46 = v50[23];
  v47 = v50[20];

  v48 = v50[1];

  return v48();
}

uint64_t sub_4748()
{
  v2 = v0[24];
  v1 = v0[25];
  swift_willThrow();
  swift_errorRetain();
  v3 = sub_146B4();
  v4 = sub_14C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to fetch DeviceAccess devices for reset: %@", v7, 0xCu);
    sub_12F1C(v8, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v10 = v0[23];
  v11 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t sub_48C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_EC70(&qword_20400, &qword_15590);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_12EB4(a3, v27 - v11, &qword_20400, &qword_15590);
  v13 = sub_14C24();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_12F1C(v12, &qword_20400, &qword_15590);
  }

  else
  {
    sub_14C14();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_14BB4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_14B14() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_12F1C(a3, &qword_20400, &qword_15590);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12F1C(a3, &qword_20400, &qword_15590);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_4BC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_4C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_4CBC;

  return sub_5030();
}

uint64_t sub_4CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_4DFC;
  v5 = *(v1 + 16);

  return sub_2D24();
}

uint64_t sub_4DFC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_4F3C;
  v5 = *(v1 + 16);

  return sub_3B18();
}

uint64_t sub_4F3C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5030()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_EC70(&qword_20400, &qword_15590) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_50F8, 0, 0);
}

uint64_t sub_50F8()
{
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v1 = sub_146D4();
  v0[5] = sub_F370(v1, qword_207B8);
  v2 = sub_146B4();
  v3 = sub_14C54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating apps", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + 16);
  v0[6] = v6;
  v7 = (*v6 + 144) & 0xFFFFFFFFFFFFLL | 0xD1FB000000000000;
  v0[7] = *(*v6 + 144);
  v0[8] = v7;

  return _swift_task_switch(sub_5268, v6, 0);
}

uint64_t sub_5268()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 72) = (*(v0 + 56))();

  return _swift_task_switch(sub_5304, 0, 0);
}

uint64_t sub_5304()
{
  v32 = v0;
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[10] = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  v0[11] = v3;
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v0[12] = 0;
      v0[13] = v4;
      v8 = v0[9] + 16 * v4;
      v9 = *(v8 + 32);
      v0[14] = v9;
      v10 = *(v8 + 40);
      v0[15] = v10;
      v11 = objc_allocWithZone(LSApplicationRecord);

      v12 = sub_14AF4();
      v0[2] = 0;
      v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:1 error:v0 + 2];
      v0[16] = v13;

      v14 = v0[2];
      if (v13)
      {
        break;
      }

      v15 = v0[5];
      v16 = v14;
      sub_14604();

      swift_willThrow();

      v17 = sub_146B4();
      v18 = sub_14C54();

      if (os_log_type_enabled(v17, v18))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v31 = v6;
        *v5 = 136315138;
        v7 = sub_F784(v9, v10, &v31);

        *(v5 + 4) = v7;
        _os_log_impl(&dword_0, v17, v18, "Could not find application for %s", v5, 0xCu);
        sub_F468(v6);
      }

      else
      {
      }

      v4 = v0[13] + 1;
      if (v4 == v0[11])
      {
        v22 = v0[9];
        goto LABEL_12;
      }
    }

    v19 = v0[6];
    v20 = (*v19 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
    v0[17] = *(*v19 + 152);
    v0[18] = v20;
    v21 = v14;

    return _swift_task_switch(sub_5710, v19, 0);
  }

  else
  {
LABEL_12:

    v23 = v0[10];
    v25 = v0[3];
    v24 = v0[4];
    sub_94D0((v23 + 16), sub_10980);
    v26 = sub_14C24();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_14C04();

    v27 = sub_14BF4();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v25;
    v28[5] = v23;
    sub_48C0(0, 0, v24, &unk_15690, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_5710()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 112), *(v0 + 120));

  return _swift_task_switch(sub_57B0, 0, 0);
}

uint64_t sub_57B0()
{
  v48 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v4 = (v1 & 1) == 0 && v1 != 2;
  v5 = [*(v0 + 128) localizedName];
  v6 = sub_14B04();
  v8 = v7;

  v9 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = *(v0 + 80);
    v9 = sub_F5B8(0, *(v9 + 2) + 1, 1, v9, &qword_20460, &qword_15698);
    *(v46 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_F5B8((v11 > 1), v12 + 1, 1, v9, &qword_20460, &qword_15698);
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);

  *(v9 + 2) = v12 + 1;
  v16 = &v9[40 * v12];
  *(v16 + 4) = v14;
  *(v16 + 5) = v13;
  *(v16 + 6) = v6;
  *(v16 + 7) = v8;
  v16[64] = v4;
  *(v15 + 16) = v9;
  v17 = *(v0 + 96);
  v18 = *(v0 + 104) + 1;
  if (v18 == *(v0 + 88))
  {
    v19 = *(v0 + 96);
LABEL_13:
    v20 = *(v0 + 72);

    v21 = *(v0 + 80);
    v23 = *(v0 + 24);
    v22 = *(v0 + 32);
    sub_94D0((v21 + 16), sub_10980);
    v24 = sub_14C24();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    sub_14C04();

    v25 = sub_14BF4();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v23;
    v26[5] = v21;
    sub_48C0(0, 0, v22, &unk_15690, v26);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    while (1)
    {
      *(v0 + 96) = v17;
      *(v0 + 104) = v18;
      v32 = *(v0 + 72) + 16 * v18;
      v33 = *(v32 + 32);
      *(v0 + 112) = v33;
      v34 = *(v32 + 40);
      *(v0 + 120) = v34;
      v35 = objc_allocWithZone(LSApplicationRecord);

      v36 = sub_14AF4();
      *(v0 + 16) = 0;
      v37 = [v35 initWithBundleIdentifier:v36 allowPlaceholder:1 error:v0 + 16];
      *(v0 + 128) = v37;

      v38 = *(v0 + 16);
      if (v37)
      {
        break;
      }

      v39 = *(v0 + 40);
      v40 = v38;
      sub_14604();

      swift_willThrow();

      v41 = sub_146B4();
      v42 = sub_14C54();

      if (os_log_type_enabled(v41, v42))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v47 = v30;
        *v29 = 136315138;
        v31 = sub_F784(v33, v34, &v47);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_0, v41, v42, "Could not find application for %s", v29, 0xCu);
        sub_F468(v30);
      }

      else
      {
      }

      v17 = 0;
      v18 = *(v0 + 104) + 1;
      if (v18 == *(v0 + 88))
      {
        goto LABEL_13;
      }
    }

    v43 = *(v0 + 48);
    v44 = (*v43 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
    *(v0 + 136) = *(*v43 + 152);
    *(v0 + 144) = v44;
    v45 = v38;

    return _swift_task_switch(sub_5710, v43, 0);
  }
}

uint64_t sub_5CA4(__int128 *a1)
{
  v3 = v1;
  v5 = sub_EC70(&qword_20400, &qword_15590);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v9 = sub_146D4();
  sub_F370(v9, qword_207B8);
  v10 = *a1;
  v38 = a1[1];
  v39 = v10;
  sub_12884(&v39, v37);
  sub_12884(&v38, v37);
  v11 = sub_146B4();
  v12 = sub_14C54();
  sub_128E0(&v39);
  sub_128E0(&v38);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315138;
    v15 = sub_18AC();
    v17 = sub_F784(v15, v16, v37);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "Unpairing device: %s", v13, 0xCu);
    sub_F468(v14);
  }

  v18 = sub_14C24();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v3;
  v20 = a1[1];
  *(v19 + 40) = *a1;
  *(v19 + 56) = v20;
  *(v19 + 72) = *(a1 + 32);
  sub_12884(&v39, v37);
  sub_12884(&v38, v37);

  sub_48C0(0, 0, v8, &unk_15858, v19);

  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC25DeviceDiscoveryUISettings7Manager___observationRegistrar;
  v37[0] = v3;
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  result = sub_78E4(a1, *(v3 + 32));
  if ((v23 & 1) == 0)
  {
    v24 = result;
    KeyPath = swift_getKeyPath();
    v36 = v3;
    v26 = v3 + v21;
    sub_14624();

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v3 + 32);
      if (v24 < *(v27 + 16))
      {
        v2 = 40 * v24;
        v28 = (v27 + 40 * v24);
        v29 = v28[4];
        KeyPath = v28[5];
        v12 = v28[7];
        v34 = v28[6];
        v35 = v29;
        swift_getKeyPath();
        v36 = v3;

        sub_14624();

        v36 = v3;
        swift_getKeyPath();
        sub_14644();

        swift_beginAccess();
        v26 = *(v3 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 32) = v26;
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    result = sub_10940(v26);
    v26 = result;
    *(v3 + 32) = result;
LABEL_9:
    if (v24 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = v26 + v2;
      v31 = *(v26 + v2 + 40);
      v32 = *(v26 + v2 + 56);
      v33 = v34;
      *(v30 + 32) = v35;
      *(v30 + 40) = KeyPath;
      *(v30 + 48) = v33;
      *(v30 + 56) = v12;
      *(v30 + 64) = 0;
      *(v3 + 32) = v26;
      swift_endAccess();

      v36 = v3;
      swift_getKeyPath();
      sub_14634();
    }
  }

  return result;
}

uint64_t sub_6158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_61F4;

  return sub_62E8(a5);
}

uint64_t sub_61F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_62E8(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_EC70(&qword_20620, &qword_15868);
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = sub_EC70(&qword_20408, &qword_155D8);
  v2[49] = v6;
  v7 = *(v6 - 8);
  v2[50] = v7;
  v8 = *(v7 + 64) + 15;
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_641C, 0, 0);
}

uint64_t sub_641C()
{
  v18 = v0;
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = sub_146D4();
  *(v0 + 416) = sub_F370(v2, qword_207B8);
  *(v0 + 272) = *v1;
  *(v0 + 288) = v1[1];
  sub_12884(v0 + 272, v0 + 304);
  sub_12884(v0 + 288, v0 + 320);
  v3 = sub_146B4();
  v4 = sub_14C54();
  sub_128E0(v0 + 272);
  sub_128E0(v0 + 288);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_18AC();
    v10 = sub_F784(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Revoking access to all apps for %s", v6, 0xCu);
    sub_F468(v7);
  }

  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v13 = *(v0 + 392);
  v14 = *(*(v0 + 360) + 24);
  *(v0 + 424) = v14;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 336;
  *(v0 + 24) = sub_6740;
  swift_continuation_init();
  *(v0 + 200) = v13;
  v15 = sub_F3A8((v0 + 176));
  sub_EC70(&qword_20410, &qword_155E0);
  *(v0 + 432) = sub_EC70(&qword_20418, &qword_155E8);
  sub_14BC4();
  (*(v12 + 32))(v15, v11, v13);
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_9674;
  *(v0 + 168) = &unk_1CF48;
  [v14 getDevicesWithFlags:1024 completionHandler:?];
  (*(v12 + 8))(v15, v13);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6740()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_75D8;
  }

  else
  {
    v3 = sub_6850;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6850()
{
  v66 = v0;
  v1 = *(v0 + 336);
  *(v0 + 448) = v1;
  if (v1 >> 62)
  {
LABEL_42:
    v60 = v1;
    v61 = sub_14CC4();
    v1 = v60;
    *(v0 + 456) = v61;
    if (v61)
    {
      goto LABEL_3;
    }

LABEL_30:

    v40 = *(v0 + 408);
    v41 = *(v0 + 384);

    v42 = *(v0 + 8);

    return v42();
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  *(v0 + 456) = v2;
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = 0;
  v4 = *(v0 + 280);
  *(v0 + 464) = *(v0 + 272);
  *(v0 + 472) = v4;
  v5 = &Manager;
  v6 = &type metadata for Int;
  v7 = &protocol witness table for Int;
  while (1)
  {
    v8 = *(v0 + 448);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v1 = sub_14CA4();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_41;
      }

      v1 = *(v8 + 8 * v3 + 32);
    }

    v9 = v1;
    *(v0 + 480) = v1;
    *(v0 + 488) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10 = [v1 identifier];
    if (!v10)
    {
      v14 = *(v0 + 416);
      v15 = v9;
      v9 = sub_146B4();
      v16 = sub_14C34();

      if (os_log_type_enabled(v9, v16))
      {
        v17 = swift_slowAlloc();
        v18 = v7;
        v19 = v6;
        v20 = v5;
        v21 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v15;
        *v21 = v15;
        v22 = v15;
        _os_log_impl(&dword_0, v9, v16, "Device missing identifier: %@", v17, 0xCu);
        sub_12F1C(v21, &qword_20420, &qword_155F0);
        v5 = v20;
        v6 = v19;
        v7 = v18;

        v9 = v22;
      }

      else
      {
      }

      goto LABEL_27;
    }

    v12 = *(v0 + 464);
    v11 = *(v0 + 472);

    *(v0 + 344) = [v9 v5[6].base_prots];
    if (sub_14CF4() == v12 && v13 == v11)
    {
    }

    else
    {
      v23 = *(v0 + 464);
      v24 = *(v0 + 472);
      v25 = sub_14D04();

      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v26 = [v9 appAccessInfoMap];
    if (v26)
    {
      break;
    }

LABEL_27:
    v37 = *(v0 + 488);
    v38 = *(v0 + 456);

    if (v37 == v38)
    {
      v39 = *(v0 + 448);
      goto LABEL_30;
    }

    v3 = *(v0 + 488);
  }

  v27 = v26;
  sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
  v28 = sub_14AD4();
  *(v0 + 496) = v28;

  v29 = *(v28 + 32);
  *(v0 + 536) = v29;
  v30 = -1 << v29;
  if (-v30 < 64)
  {
    v31 = ~(-1 << -v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v28 + 64);
  if (!v32)
  {
    v33 = 0;
    v34 = ((63 - v30) >> 6) - 1;
    v35 = *(v0 + 496);
    while (v34 != v33)
    {
      v36 = v33 + 1;
      v32 = *(v35 + 8 * v33++ + 72);
      if (v32)
      {
        goto LABEL_34;
      }
    }

    v9 = *(v0 + 480);
    goto LABEL_27;
  }

  v36 = 0;
  v35 = *(v0 + 496);
LABEL_34:
  *(v0 + 504) = v32;
  *(v0 + 512) = v36;
  v44 = *(v0 + 416);
  v45 = __clz(__rbit64(v32)) | (v36 << 6);
  v46 = (*(v35 + 48) + 16 * v45);
  v48 = *v46;
  v47 = v46[1];
  v49 = *(*(v35 + 56) + 8 * v45);
  *(v0 + 520) = v49;

  v64 = v49;
  [v64 setState:1];

  v50 = sub_146B4();
  v51 = sub_14C54();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v52 = 136315138;
    v54 = sub_F784(v48, v47, &v65);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_0, v50, v51, "Removing access for %s", v52, 0xCu);
    sub_F468(v53);
  }

  else
  {
  }

  v63 = *(v0 + 480);
  v55 = *(v0 + 432);
  v62 = *(v0 + 424);
  v56 = *(v0 + 376);
  v57 = *(v0 + 384);
  v58 = *(v0 + 368);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_6EA4;
  swift_continuation_init();
  *(v0 + 264) = v58;
  v59 = sub_F3A8((v0 + 240));
  sub_14BC4();
  (*(v56 + 32))(v59, v57, v58);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_9960;
  *(v0 + 232) = &unk_1CF70;
  [v62 setDeviceAppAccessInfo:v64 device:v63 completionHandler:v0 + 208];
  (*(v56 + 8))(v59, v58);

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_6EA4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 528) = v3;
  if (v3)
  {
    v4 = *(v1 + 448);

    v5 = sub_7750;
  }

  else
  {
    v5 = sub_6FBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6FBC()
{
  v63 = v0;

  v2 = *(v0 + 512);
  isa = (*(v0 + 504) - 1) & *(v0 + 504);
  if (isa)
  {
    goto LABEL_2;
  }

  v16 = &Manager;
  v17 = &type metadata for Int;
  v18 = &Manager;
  v19 = &protocol witness table for Int;
  while (1)
  {
LABEL_6:
    if (__OFADD__(v2++, 1))
    {
LABEL_39:
      __break(1u);
      return _swift_continuation_await(v1);
    }

    v1 = *(v0 + 496);
    if (v2 >= (((1 << *(v0 + 536)) + 63) >> 6))
    {
      break;
    }

    isa = v1[v2 + 8].isa;
    if (isa)
    {
      goto LABEL_2;
    }
  }

  v21 = *(v0 + 488);
  v22 = *(v0 + 456);

  while (1)
  {
    if (v21 == v22)
    {
      v49 = *(v0 + 448);

      v50 = *(v0 + 408);
      v51 = *(v0 + 384);

      v52 = *(v0 + 8);

      return v52();
    }

    v23 = *(v0 + 488);
    v24 = *(v0 + 448);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = *(v0 + 488);
      v1 = sub_14CA4();
    }

    else
    {
      if (v23 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_38;
      }

      v1 = *(v24 + 8 * v23 + 32);
    }

    v26 = v1;
    *(v0 + 480) = v1;
    *(v0 + 488) = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v27 = [v1 v16[7].ivar_lyt];
    if (!v27)
    {
      v31 = *(v0 + 416);
      v32 = v26;
      v26 = sub_146B4();
      v33 = sub_14C34();

      if (os_log_type_enabled(v26, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v32;
        *v35 = v32;
        v36 = v19;
        v37 = v17;
        v38 = v18;
        v39 = v32;
        _os_log_impl(&dword_0, v26, v33, "Device missing identifier: %@", v34, 0xCu);
        sub_12F1C(v35, &qword_20420, &qword_155F0);

        v32 = v26;
        v26 = v39;
        v18 = v38;
        v17 = v37;
        v19 = v36;
        v16 = &Manager;
      }

      goto LABEL_10;
    }

    v29 = *(v0 + 464);
    v28 = *(v0 + 472);

    *(v0 + 344) = [v26 v18[6].base_prots];
    if (sub_14CF4() == v29 && v30 == v28)
    {
    }

    else
    {
      v40 = *(v0 + 464);
      v41 = *(v0 + 472);
      v42 = sub_14D04();

      if ((v42 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v43 = [v26 appAccessInfoMap];
    if (v43)
    {
      break;
    }

LABEL_10:
    v21 = *(v0 + 488);
    v22 = *(v0 + 456);
  }

  v44 = v43;
  sub_11B10(0, &qword_20438, DADeviceAppAccessInfo_ptr);
  v45 = sub_14AD4();
  *(v0 + 496) = v45;

  v2 = 0;
  v46 = *(v45 + 32);
  *(v0 + 536) = v46;
  v47 = 1 << v46;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  isa = v48 & *(v45 + 64);
  if (!isa)
  {
    goto LABEL_6;
  }

LABEL_2:
  *(v0 + 504) = isa;
  *(v0 + 512) = v2;
  v4 = *(v0 + 496);
  v5 = *(v0 + 416);
  v6 = __clz(__rbit64(isa)) | (v2 << 6);
  v7 = (*(v4 + 48) + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(*(v4 + 56) + 8 * v6);
  *(v0 + 520) = v10;

  v61 = v10;
  [v61 setState:1];

  v11 = sub_146B4();
  v12 = sub_14C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62 = v14;
    *v13 = 136315138;
    v15 = sub_F784(v9, v8, &v62);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_0, v11, v12, "Removing access for %s", v13, 0xCu);
    sub_F468(v14);
  }

  else
  {
  }

  v54 = *(v0 + 432);
  v59 = *(v0 + 424);
  v60 = *(v0 + 480);
  v55 = *(v0 + 376);
  v56 = *(v0 + 384);
  v57 = *(v0 + 368);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_6EA4;
  swift_continuation_init();
  *(v0 + 264) = v57;
  v58 = sub_F3A8((v0 + 240));
  sub_14BC4();
  (*(v55 + 32))(v58, v56, v57);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_9960;
  *(v0 + 232) = &unk_1CF70;
  [v59 setDeviceAppAccessInfo:v61 device:v60 completionHandler:v0 + 208];
  (*(v55 + 8))(v58, v57);
  v1 = (v0 + 80);

  return _swift_continuation_await(v1);
}

uint64_t sub_75D8()
{
  v1 = v0[55];
  swift_willThrow();
  v2 = v0[55];
  v3 = v0[52];
  swift_errorRetain();
  v4 = sub_146B4();
  v5 = sub_14C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Failed to revoke access: %@", v6, 0xCu);
    sub_12F1C(v7, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v9 = v0[51];
  v10 = v0[48];

  v11 = v0[1];

  return v11();
}

uint64_t sub_7750()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[60];
  swift_willThrow();

  v5 = v0[66];
  v6 = v0[52];
  swift_errorRetain();
  v7 = sub_146B4();
  v8 = sub_14C34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "Failed to revoke access: %@", v9, 0xCu);
    sub_12F1C(v10, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v12 = v0[51];
  v13 = v0[48];

  v14 = v0[1];

  return v14();
}

uint64_t sub_78E4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a2 + 64);
    v15 = *(a1 + 32);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 4) == v4 && *(v8 - 3) == v5;
      if (v12 || (sub_14D04() & 1) != 0)
      {
        if (v9 == v6 && v10 == v7)
        {
          if (v11 == (v15 & 1))
          {
            return v3;
          }
        }

        else if ((sub_14D04() & 1) != 0 && ((v11 ^ v15) & 1) == 0)
        {
          return v3;
        }
      }

      ++v3;
      v8 += 40;
    }

    while (v2 != v3);
  }

  return 0;
}

uint64_t sub_79E0(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_EC70(&qword_20400, &qword_15590);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v11 = sub_146D4();
  sub_F370(v11, qword_207B8);
  v13 = *a1;
  v12 = *(a1 + 8);
  v40 = *(a1 + 16);

  sub_12884(&v40, v39);
  v14 = sub_146B4();
  v15 = sub_14C54();

  sub_128E0(&v40);
  if (os_log_type_enabled(v14, v15))
  {
    v3 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v3 = 136315394;
    *(v3 + 4) = sub_F784(v13, v12, v39);
    *(v3 + 12) = 1024;
    *(v3 + 14) = a2 & 1;
    _os_log_impl(&dword_0, v14, v15, "Updating app %s isEnabled: %{BOOL}d", v3, 0x12u);
    sub_F468(v16);
  }

  v17 = sub_14C24();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a2 & 1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a2 & 1;
  *(v18 + 40) = v4;
  v20 = *(a1 + 16);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v20;
  *(v18 + 80) = *(a1 + 32);

  sub_12884(&v40, v39);

  sub_48C0(0, 0, v10, &unk_15990, v18);

  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC25DeviceDiscoveryUISettings7Manager___observationRegistrar;
  v39[0] = v4;
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  result = sub_78E4(a1, *(v4 + 48));
  if ((v23 & 1) == 0)
  {
    v24 = result;
    KeyPath = swift_getKeyPath();
    v38 = v4;
    v26 = v4 + v21;
    sub_14624();

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v4 + 48);
      if (v24 < *(v27 + 16))
      {
        v37 = v19;
        v3 = 40 * v24;
        v28 = (v27 + 40 * v24);
        v29 = v28[4];
        KeyPath = v28[5];
        v12 = v28[7];
        v35 = v28[6];
        v36 = v29;
        swift_getKeyPath();
        v38 = v4;

        sub_14624();

        v38 = v4;
        swift_getKeyPath();
        sub_14644();

        swift_beginAccess();
        v26 = *(v4 + 48);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 48) = v26;
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    result = sub_10980(v26);
    v26 = result;
    *(v4 + 48) = result;
LABEL_9:
    if (v24 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = v26 + v3;
      v31 = *(v26 + v3 + 40);
      v32 = *(v26 + v3 + 56);
      v33 = v35;
      *(v30 + 32) = v36;
      *(v30 + 40) = KeyPath;
      *(v30 + 48) = v33;
      *(v30 + 56) = v12;
      *(v30 + 64) = v37;
      *(v4 + 48) = v26;
      swift_endAccess();

      v38 = v4;
      swift_getKeyPath();
      sub_14634();
    }
  }

  return result;
}

uint64_t sub_7EA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 80) = a4;
  return _swift_task_switch(sub_7EC4, 0, 0);
}

uint64_t sub_7EC4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v0[4] = v2;
  v0[5] = *v1;
  v0[6] = v1[1];
  v3 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0x25F0000000000000;
  v0[7] = *(*v2 + 160);
  v0[8] = v3;
  return _swift_task_switch(sub_7F14, v2, 0);
}

uint64_t sub_7F14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 80);
  (*(v0 + 56))(v3 ^ 1u, *(v0 + 40), *(v0 + 48));
  if (v3)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_7FF8;
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 16);

    return sub_80EC(v8, v7);
  }
}

uint64_t sub_7FF8()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_80EC(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = sub_EC70(&qword_20620, &qword_15868);
  v3[38] = v4;
  v5 = *(v4 - 8);
  v3[39] = v5;
  v6 = *(v5 + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = sub_EC70(&qword_20408, &qword_155D8);
  v3[41] = v7;
  v8 = *(v7 - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_8224, 0, 0);
}

uint64_t sub_8224()
{
  v16 = v0;
  if (qword_207B0 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = sub_146D4();
  v0[44] = sub_F370(v2, qword_207B8);

  v3 = sub_146B4();
  v4 = sub_14C54();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[35];
    v5 = v0[36];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_F784(v6, v5, &v15);
    _os_log_impl(&dword_0, v3, v4, "Revoking access to all devices for %s", v7, 0xCu);
    sub_F468(v8);
  }

  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[41];
  v12 = *(v0[37] + 24);
  v0[45] = v12;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_8514;
  swift_continuation_init();
  v0[25] = v11;
  v13 = sub_F3A8(v0 + 22);
  sub_EC70(&qword_20410, &qword_155E0);
  v0[46] = sub_EC70(&qword_20418, &qword_155E8);
  sub_14BC4();
  (*(v10 + 32))(v13, v9, v11);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_9674;
  v0[21] = &unk_1D128;
  [v12 getDevicesWithFlags:1024 completionHandler:?];
  (*(v10 + 8))(v13, v11);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8514()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_91D4;
  }

  else
  {
    v3 = sub_8624;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_8624()
{
  v1 = v0[34];
  v0[48] = v1;
  if (v1 >> 62)
  {
LABEL_30:
    v46 = v1;
    v47 = sub_14CC4();
    v1 = v46;
    v0[49] = v47;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_20:

    v28 = v0[43];
    v29 = v0[40];

    v30 = v0[1];

    return v30();
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  v0[49] = v2;
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v3 = 0;
  v4 = &Manager;
  v5 = &Manager;
  v6 = &qword_20438;
  v7 = &type metadata for String;
  v8 = &protocol witness table for String;
  while (1)
  {
    v9 = v0[48];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v1 = sub_14CA4();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_29;
      }

      v1 = *(v9 + 8 * v3 + 32);
    }

    v10 = v1;
    v0[50] = v1;
    v0[51] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = [v1 v4[7].ivar_lyt];
    if (!v11)
    {
      v17 = v0[44];
      v10 = v10;
      v18 = sub_146B4();
      v19 = sub_14C34();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = v5;
        v22 = v8;
        v23 = v7;
        v24 = v6;
        v25 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v10;
        *v25 = v10;
        v26 = v10;
        _os_log_impl(&dword_0, v18, v19, "Device missing identifier: %@", v20, 0xCu);
        sub_12F1C(v25, &qword_20420, &qword_155F0);
        v6 = v24;
        v7 = v23;
        v8 = v22;
        v5 = v21;
        v4 = &Manager;

        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v12 = [v10 v5[6].name];
    if (v12)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v3 = v0[51];
    if (v3 == v0[49])
    {
      v27 = v0[48];
      goto LABEL_20;
    }
  }

  v13 = v12;
  sub_11B10(0, v6, DADeviceAppAccessInfo_ptr);
  v14 = sub_14AD4();

  if (!*(v14 + 16) || (v15 = sub_109C0(v0[35], v0[36]), (v16 & 1) == 0))
  {

    goto LABEL_6;
  }

  v32 = v0[44];
  v33 = *(*(v14 + 56) + 8 * v15);
  v0[52] = v33;
  v34 = v33;

  v48 = v34;
  [v34 setState:1];
  v35 = v10;
  v36 = sub_146B4();
  v37 = sub_14C54();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_0, v36, v37, "Removing access to %@", v38, 0xCu);
    sub_12F1C(v39, &qword_20420, &qword_155F0);
  }

  v41 = v0[46];
  v49 = v0[45];
  v42 = v0[39];
  v43 = v0[40];
  v44 = v0[38];

  v0[10] = v0;
  v0[11] = sub_8B8C;
  swift_continuation_init();
  v0[33] = v44;
  v45 = sub_F3A8(v0 + 30);
  sub_14BC4();
  (*(v42 + 32))(v45, v43, v44);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_9960;
  v0[29] = &unk_1D150;
  [v49 setDeviceAppAccessInfo:v48 device:v35 completionHandler:v0 + 26];
  (*(v42 + 8))(v45, v44);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_8B8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 424) = v3;
  if (v3)
  {
    v4 = *(v1 + 384);

    v5 = sub_934C;
  }

  else
  {
    v5 = sub_8CA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8CA4()
{
  v1 = *(v0 + 416);

  v3 = *(v0 + 408);
  if (v3 == *(v0 + 392))
  {
LABEL_2:
    v4 = *(v0 + 384);

    v5 = *(v0 + 344);
    v6 = *(v0 + 320);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = &Manager;
  v10 = &Manager;
  v11 = &qword_20438;
  v12 = &type metadata for String;
  v13 = &protocol witness table for String;
  while (1)
  {
    v14 = *(v0 + 384);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v2 = sub_14CA4();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }

      v2 = *(v14 + 8 * v3 + 32);
    }

    v15 = v2;
    *(v0 + 400) = v2;
    *(v0 + 408) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return _swift_continuation_await(v2);
    }

    v16 = [v2 v9[7].ivar_lyt];
    if (!v16)
    {
      v22 = *(v0 + 352);
      v15 = v15;
      v23 = sub_146B4();
      v24 = sub_14C34();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = v10;
        v27 = v13;
        v28 = v12;
        v29 = v11;
        v30 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v15;
        *v30 = v15;
        v31 = v15;
        _os_log_impl(&dword_0, v23, v24, "Device missing identifier: %@", v25, 0xCu);
        sub_12F1C(v30, &qword_20420, &qword_155F0);
        v11 = v29;
        v12 = v28;
        v13 = v27;
        v10 = v26;
        v9 = &Manager;

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v17 = [v15 v10[6].name];
    if (v17)
    {
      break;
    }

LABEL_7:

LABEL_8:
    v3 = *(v0 + 408);
    if (v3 == *(v0 + 392))
    {
      goto LABEL_2;
    }
  }

  v18 = v17;
  sub_11B10(0, v11, DADeviceAppAccessInfo_ptr);
  v19 = sub_14AD4();

  if (!*(v19 + 16) || (v20 = sub_109C0(*(v0 + 280), *(v0 + 288)), (v21 & 1) == 0))
  {

    goto LABEL_8;
  }

  v32 = *(v0 + 352);
  v33 = *(*(v19 + 56) + 8 * v20);
  *(v0 + 416) = v33;
  v34 = v33;

  v46 = v34;
  [v34 setState:1];
  v35 = v15;
  v36 = sub_146B4();
  v37 = sub_14C54();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_0, v36, v37, "Removing access to %@", v38, 0xCu);
    sub_12F1C(v39, &qword_20420, &qword_155F0);
  }

  v41 = *(v0 + 368);
  v47 = *(v0 + 360);
  v42 = *(v0 + 312);
  v43 = *(v0 + 320);
  v44 = *(v0 + 304);

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_8B8C;
  swift_continuation_init();
  *(v0 + 264) = v44;
  v45 = sub_F3A8((v0 + 240));
  sub_14BC4();
  (*(v42 + 32))(v45, v43, v44);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_9960;
  *(v0 + 232) = &unk_1D150;
  [v47 setDeviceAppAccessInfo:v46 device:v35 completionHandler:v0 + 208];
  (*(v42 + 8))(v45, v44);
  v2 = (v0 + 80);

  return _swift_continuation_await(v2);
}

uint64_t sub_91D4()
{
  v1 = v0[47];
  swift_willThrow();
  v2 = v0[47];
  v3 = v0[44];
  swift_errorRetain();
  v4 = sub_146B4();
  v5 = sub_14C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Failed to revoke access: %@", v6, 0xCu);
    sub_12F1C(v7, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v9 = v0[43];
  v10 = v0[40];

  v11 = v0[1];

  return v11();
}

uint64_t sub_934C()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  swift_willThrow();

  v4 = v0[53];
  v5 = v0[44];
  swift_errorRetain();
  v6 = sub_146B4();
  v7 = sub_14C34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Failed to revoke access: %@", v8, 0xCu);
    sub_12F1C(v9, &qword_20420, &qword_155F0);
  }

  else
  {
  }

  v11 = v0[43];
  v12 = v0[40];

  v13 = v0[1];

  return v13();
}

Swift::Int sub_94D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v5;
  result = sub_FE68(v7);
  *a1 = v4;
  return result;
}

uint64_t sub_9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_14C04();
  v5[7] = sub_14BF4();
  v7 = sub_14BB4();

  return _swift_task_switch(sub_95F0, v7, v6);
}

uint64_t sub_95F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  swift_beginAccess();
  v4 = *(v2 + 16);

  sub_21AC(v5);
  v6 = v0[1];

  return v6();
}

void sub_9674(uint64_t a1, uint64_t a2, void *a3)
{
  sub_11070((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_EC70(&qword_20408, &qword_155D8);
    sub_14BD4();
  }

  else
  {
    sub_11B10(0, &qword_20430, DADevice_ptr);
    sub_14B74();
    sub_EC70(&qword_20408, &qword_155D8);
    sub_14BE4();
  }
}

uint64_t sub_973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_14C04();
  v5[7] = sub_14BF4();
  v7 = sub_14BB4();

  return _swift_task_switch(sub_97D4, v7, v6);
}

uint64_t sub_97D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  swift_beginAccess();
  v4 = *(v2 + 16);

  sub_1C00(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_9858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_14C04();
  v5[4] = sub_14BF4();
  v7 = sub_14BB4();

  return _swift_task_switch(sub_98F0, v7, v6);
}

uint64_t sub_98F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1EB4(v4);
  v5 = v0[1];

  return v5();
}

void sub_9960(uint64_t a1, void *a2)
{
  sub_11070((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_EC70(&qword_20620, &qword_15868);
    sub_14BD4();
  }

  else
  {
    sub_EC70(&qword_20620, &qword_15868);
    sub_14BE4();
  }
}

uint64_t sub_99F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = OBJC_IVAR____TtC25DeviceDiscoveryUISettings7Manager___observationRegistrar;
  v6 = sub_14664();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t sub_9ADC()
{
  result = sub_14664();
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

uint64_t sub_9B9C()
{
  v1 = v0;
  v2 = sub_14AA4();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(sub_EC70(&qword_20478, &qword_15710) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = (&v22 - v12);
  v14 = (*(*(sub_EC70(&qword_20488, &qword_15720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v22 - v15;
  sub_12EB4(v1, v13, &qword_20478, &qword_15710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_12A60(v13, v16, &qword_20488, &qword_15720);
  }

  else
  {
    v17 = *v13;
    sub_14C44();
    v18 = sub_148B4();
    sub_146A4();

    sub_14784();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v19 = sub_EC70(&qword_20608, &qword_15838);
  if ((*(*(v19 - 8) + 48))(v16, 1, v19) == 1)
  {
    sub_12F1C(v16, &qword_20488, &qword_15720);
    v20 = 0;
  }

  else
  {
    sub_14A24();
    sub_12F1C(v16, &qword_20608, &qword_15838);
    v20 = sub_14A94();
    (*(v22 + 8))(v5, v23);
  }

  return v20 & 1;
}

uint64_t sub_9F00@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_EC70(&qword_20568, &qword_157D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v50 - v5;
  v55 = sub_EC70(&qword_20570, &qword_157E0);
  v54 = *(v55 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v55);
  v9 = v50 - v8;
  v57 = sub_EC70(&qword_20578, &qword_157E8);
  v56 = *(v57 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v57);
  v12 = v50 - v11;
  v13 = sub_EC70(&qword_20580, &qword_157F0);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  __chkstk_darwin(v13);
  v62 = v50 - v15;
  v58 = v1;
  v63 = v1;
  sub_EC70(&qword_20588, &qword_157F8);
  sub_13AB8(&qword_20590, &qword_20588, &qword_157F8);
  sub_148C4();
  v16 = sub_13AB8(&qword_20598, &qword_20568, &qword_157D8);
  sub_148F4();
  (*(v3 + 8))(v6, v2);
  sub_147C4();
  sub_11B10(0, &qword_205A0, NSBundle_ptr);
  if (!sub_14C64())
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v18 = sub_148D4();
  v20 = v19;
  v22 = v21;
  *&v68 = v2;
  *(&v68 + 1) = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v55;
  sub_14944();
  sub_11B58(v18, v20, v22 & 1);

  v25 = (*(v54 + 8))(v9, v24);
  __chkstk_darwin(v25);
  v26 = v58;
  v27 = sub_EC70(&qword_205A8, &qword_15800);
  *&v68 = v24;
  *(&v68 + 1) = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_11B70();
  v30 = v57;
  v55 = v27;
  v54 = v28;
  v53 = v29;
  sub_14974();
  (*(v56 + 8))(v12, v30);
  v31 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v32 = (v26 + *(v31 + 40));
  v33 = *(v32 + 32);
  v34 = *(v32 + 5);
  v35 = v32[1];
  v68 = *v32;
  v69 = v35;
  v70 = v33;
  v71 = v34;
  sub_EC70(&qword_20618, &qword_15848);
  sub_149B4();
  v36 = v65;
  if (v65)
  {
    v37 = v64;
    v39 = v66;
    v38 = v67;

    sub_12A1C(v37, v36);
  }

  else
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  *&v68 = 0xE220726961706E55;
  *(&v68 + 1) = 0xAA00000000009C80;
  v72._countAndFlagsBits = v39;
  v72._object = v38;
  sub_14B34(v72);

  v73._countAndFlagsBits = 10322146;
  v73._object = 0xA300000000000000;
  sub_14B34(v73);
  v57 = sub_147D4();
  v56 = v40;
  v52 = v41;
  v42 = (v26 + *(v31 + 24));
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v64) = v43;
  v65 = v44;
  sub_EC70(&qword_205C0, &qword_15808);
  v45 = sub_149D4();
  v51 = v50;
  v50[3] = v69;
  v46 = __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  sub_EC70(&qword_205C8, &qword_15810);
  sub_EC70(&qword_205D0, &qword_15818);
  *&v68 = v30;
  *(&v68 + 1) = v55;
  *&v69 = v54;
  *(&v69 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  sub_13AB8(&qword_205D8, &qword_205C8, &qword_15810);
  sub_120F0();
  v47 = v60;
  v48 = v62;
  sub_14954();

  return (*(v59 + 8))(v48, v47);
}

uint64_t sub_A784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v130 = a1;
  v122 = a2;
  v124 = sub_EC70(&qword_20628, &qword_15870);
  v123 = *(v124 - 8);
  v2 = *(v123 + 64);
  __chkstk_darwin(v124);
  v111 = &v111 - v3;
  v4 = sub_EC70(&qword_20630, &qword_15878);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v121 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v111 - v8;
  v117 = sub_EC70(&qword_20638, &qword_15880);
  v116 = *(v117 - 8);
  v9 = *(v116 + 64);
  __chkstk_darwin(v117);
  v113 = &v111 - v10;
  v11 = sub_EC70(&qword_20640, &qword_15888);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v120 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v134 = &v111 - v15;
  v115 = sub_EC70(&qword_20648, &qword_15890);
  v16 = *(v115 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v115);
  v112 = &v111 - v18;
  v19 = sub_EC70(&qword_20650, &qword_15898);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v111 - v23;
  v114 = sub_EC70(&qword_20658, &qword_158A0);
  v25 = *(v114 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v114);
  v28 = &v111 - v27;
  v29 = sub_EC70(&qword_20660, &qword_158A8);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v133 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v132 = &v111 - v33;
  v127 = sub_EC70(&qword_20668, &qword_158B0);
  v119 = *(v127 - 8);
  v34 = *(v119 + 64);
  v35 = __chkstk_darwin(v127);
  v126 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v131 = &v111 - v37;
  sub_14C04();
  v118 = sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v40 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v41 = *(v130 + *(v40 + 32));
  v129 = v24;
  if (v39 == &dword_0 + 1)
  {
    if (v41)
    {
      sub_147C4();
      sub_11B10(0, &qword_205A0, NSBundle_ptr);
      if (sub_14C64())
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_147C4();
      sub_11B10(0, &qword_205A0, NSBundle_ptr);
      if (sub_14C64())
      {
        goto LABEL_14;
      }
    }
  }

  else if (v41)
  {
    sub_147C4();
    sub_11B10(0, &qword_205A0, NSBundle_ptr);
    if (sub_14C64())
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_147C4();
    sub_11B10(0, &qword_205A0, NSBundle_ptr);
    if (sub_14C64())
    {
      goto LABEL_14;
    }
  }

  v42 = [objc_opt_self() mainBundle];
LABEL_14:
  v144 = sub_148D4();
  v145 = v43;
  v146 = v44 & 1;
  v147 = v45;
  sub_14A84();
  v46 = v130;
  v47 = sub_9B9C();
  v48 = v129;
  if (v47)
  {
    v49 = 1;
    v50 = v132;
    v51 = v114;
  }

  else
  {
    __chkstk_darwin(v47);
    sub_EC70(&qword_20670, &qword_158B8);
    sub_12AD0();
    sub_14A74();
    v50 = v132;
    v51 = v114;
    (*(v25 + 32))(v132, v28, v114);
    v49 = 0;
  }

  v52 = 1;
  (*(v25 + 56))(v50, v49, 1, v51);
  v53 = *(v46 + *(v40 + 20));
  v54 = *(sub_22E4() + 16);

  if (v54)
  {
    v55 = v112;
    sub_BE08();
    v56 = v115;
    (*(v16 + 32))(v48, v55, v115);
    v52 = 0;
  }

  else
  {
    v56 = v115;
  }

  v57 = 1;
  (*(v16 + 56))(v48, v52, 1, v56);
  v58 = *(sub_24A4() + 16);

  if (v58)
  {
    v115 = &v111;
    __chkstk_darwin(v59);
    sub_14BF4();
    sub_14BB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_147C4();
    sub_11B10(0, &qword_205A0, NSBundle_ptr);
    if (!sub_14C64())
    {
      v60 = [objc_opt_self() mainBundle];
    }

    v61 = sub_148D4();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v135 = v61;
    v136 = v63;
    v137 = v65 & 1;
    v138 = v67;
    sub_14BF4();
    sub_14BB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v68 = [objc_opt_self() currentDevice];
    v69 = [v68 userInterfaceIdiom];

    if (v69 == &dword_0 + 1)
    {
      sub_147C4();
      if (!sub_14C64())
      {
        v70 = [objc_opt_self() mainBundle];
      }

      v139 = sub_148D4();
      v140 = v71;
      v141 = v72 & 1;
      v142 = v73;
      v143 = 0;
    }

    else
    {
      sub_147C4();
      if (!sub_14C64())
      {
        v77 = [objc_opt_self() mainBundle];
      }

      v139 = sub_148D4();
      v140 = v79;
      v141 = v78 & 1;
      v142 = v80;
      v143 = 1;
    }

    sub_147E4();

    v74 = v134;
    sub_EC70(&qword_20690, &qword_158C8);
    sub_EC70(&qword_205F0, &qword_15820);
    sub_12D1C();
    sub_12174();
    v81 = v113;
    sub_14A64();
    v76 = v116;
    v75 = v117;
    (*(v116 + 32))(v74, v81, v117);
    v57 = 0;
    v48 = v129;
  }

  else
  {
    v74 = v134;
    v75 = v117;
    v76 = v116;
  }

  v82 = 1;
  (*(v76 + 56))(v74, v57, 1, v75);
  if ((sub_9B9C() & 1) == 0)
  {
    swift_getKeyPath();
    v144 = v53;
    sub_11554(&qword_20428, type metadata accessor for Manager);
    sub_14624();

    v83 = *(v53 + 40);
    if (v83 >> 62)
    {
      if (v83 < 0)
      {
        v110 = *(v53 + 40);
      }

      if (sub_14CC4())
      {
LABEL_39:
        v84 = [objc_opt_self() currentDevice];
        v85 = [v84 userInterfaceIdiom];

        v86 = SFIsGreenTeaDevice();
        if (v85 == &dword_0 + 1)
        {
          if (v86)
          {
            sub_147C4();
            sub_11B10(0, &qword_205A0, NSBundle_ptr);
            if (!sub_14C64())
            {
              goto LABEL_49;
            }
          }

          else
          {
            sub_147C4();
            sub_11B10(0, &qword_205A0, NSBundle_ptr);
            if (!sub_14C64())
            {
              goto LABEL_49;
            }
          }
        }

        else if (v86)
        {
          sub_147C4();
          sub_11B10(0, &qword_205A0, NSBundle_ptr);
          if (!sub_14C64())
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_147C4();
          sub_11B10(0, &qword_205A0, NSBundle_ptr);
          if (!sub_14C64())
          {
LABEL_49:
            v87 = [objc_opt_self() mainBundle];
          }
        }

        v144 = sub_148D4();
        v145 = v88;
        v146 = v89 & 1;
        v147 = v90;
        __chkstk_darwin(v144);
        sub_EC70(&qword_206B0, &qword_158D8);
        v91 = sub_1199C(&qword_206B8, &qword_158E0);
        v92 = sub_1199C(&qword_206C0, &qword_158E8);
        v93 = sub_13AB8(&qword_206C8, &qword_206B8, &qword_158E0);
        v94 = sub_12DD4();
        v139 = v91;
        v140 = v92;
        v141 = v93;
        v142 = v94;
        swift_getOpaqueTypeConformance2();
        v95 = v111;
        sub_14A84();
        (*(v123 + 32))(v125, v95, v124);
        v82 = 0;
      }
    }

    else if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_39;
    }
  }

  v96 = v125;
  (*(v123 + 56))(v125, v82, 1, v124);
  v97 = v119;
  v98 = *(v119 + 16);
  v99 = v126;
  v100 = v127;
  v98(v126, v131, v127);
  sub_12EB4(v132, v133, &qword_20660, &qword_158A8);
  v101 = v48;
  v102 = v128;
  sub_12EB4(v101, v128, &qword_20650, &qword_15898);
  v103 = v120;
  sub_12EB4(v134, v120, &qword_20640, &qword_15888);
  v104 = v121;
  sub_12EB4(v96, v121, &qword_20630, &qword_15878);
  v105 = v122;
  v98(v122, v99, v100);
  v106 = sub_EC70(&qword_206E0, &qword_158F0);
  sub_12EB4(v133, &v105[v106[12]], &qword_20660, &qword_158A8);
  sub_12EB4(v102, &v105[v106[16]], &qword_20650, &qword_15898);
  sub_12EB4(v103, &v105[v106[20]], &qword_20640, &qword_15888);
  sub_12EB4(v104, &v105[v106[24]], &qword_20630, &qword_15878);
  sub_12F1C(v96, &qword_20630, &qword_15878);
  sub_12F1C(v134, &qword_20640, &qword_15888);
  sub_12F1C(v129, &qword_20650, &qword_15898);
  sub_12F1C(v132, &qword_20660, &qword_158A8);
  v107 = *(v97 + 8);
  v108 = v127;
  v107(v131, v127);
  sub_12F1C(v104, &qword_20630, &qword_15878);
  sub_12F1C(v103, &qword_20640, &qword_15888);
  sub_12F1C(v128, &qword_20650, &qword_15898);
  sub_12F1C(v133, &qword_20660, &qword_158A8);
  v107(v126, v108);
}

uint64_t sub_BD78()
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_BE08()
{
  sub_147C4();
  sub_11B10(0, &qword_205A0, NSBundle_ptr);
  if (!sub_14C64())
  {
    v0 = [objc_opt_self() mainBundle];
  }

  v2 = sub_148D4();
  __chkstk_darwin(v2);
  sub_EC70(&qword_20738, &qword_15950);
  sub_13350();
  return sub_14A54();
}

uint64_t sub_BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_14724();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_EC70(&qword_205A8, &qword_15800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + *(type metadata accessor for DeviceDiscoveryUISettingsView(0) + 20));
  v14 = *(sub_22E4() + 16);

  if (v14 || (sub_9B9C() & 1) != 0)
  {
    sub_14714();
    (*(v5 + 32))(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_12A60(v12, a2, &qword_205A8, &qword_15800);
}

uint64_t sub_C1AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = v6;
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_EC70(&qword_205F8, &qword_15828);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_EC70(&qword_20600, &qword_15830);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = __chkstk_darwin(v12);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v42 = &v36 - v17;
  v18 = __chkstk_darwin(v16);
  v39 = &v36 - v19;
  __chkstk_darwin(v18);
  v45 = &v36 - v20;
  sub_14C04();
  v38 = sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_146E4();
  v21 = sub_14704();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 0, 1, v21);
  sub_121F0(a1, v7);
  v37 = a1;
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_12254(v7, v24 + v23);
  sub_149F4();
  sub_146F4();
  v22(v11, 0, 1, v21);
  sub_121F0(v37, v7);
  v25 = swift_allocObject();
  sub_12254(v7, v25 + v23);
  v26 = v39;
  sub_149F4();
  v27 = v40;
  v28 = *(v40 + 16);
  v29 = v42;
  v30 = v45;
  v28(v42, v45, v12);
  v31 = v43;
  v28(v43, v26, v12);
  v32 = v44;
  v28(v44, v29, v12);
  v33 = sub_EC70(&qword_20610, &qword_15840);
  v28(&v32[*(v33 + 48)], v31, v12);
  v34 = *(v27 + 8);
  v34(v26, v12);
  v34(v30, v12);
  v34(v31, v12);
  v34(v29, v12);
}

uint64_t sub_C678()
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_14AB4();
  sub_14734();
}

void (*sub_C768(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_EC70(&qword_20470, &qword_156D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_EC70(&qword_20498, &unk_15730);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  sub_12EB4(v1 + *(v9 + 36), v8, &qword_20498, &unk_15730);
  sub_149B4();
  return sub_C8A8;
}

void sub_C8A8(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    sub_12EB4(*(a1 + 8), v4, &qword_20470, &qword_156D8);
    sub_149C4();
    sub_12F1C(v2, &qword_20498, &unk_15730);
    v6 = v5;
    v7 = &qword_20470;
    v8 = &qword_156D8;
  }

  else
  {
    v9 = *(a1 + 8);
    sub_149C4();
    v7 = &qword_20498;
    v8 = &unk_15730;
    v6 = v2;
  }

  sub_12F1C(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

uint64_t sub_C9A8@<X0>(uint64_t a1@<X8>)
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_147C4();
  sub_11B10(0, &qword_205A0, NSBundle_ptr);
  if (!sub_14C64())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_148D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_CB10(uint64_t a1)
{
  v2 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + *(v2 + 20));
  swift_getKeyPath();
  v9[1] = v5;
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  swift_beginAccess();
  v9[0] = *(v5 + 48);
  sub_121F0(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_12254(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_EC70(&qword_20788, &qword_15980);
  sub_EC70(&qword_20688, &qword_158C0);
  sub_13AB8(&qword_20790, &qword_20788, &qword_15980);
  sub_13AB8(&qword_20680, &qword_20688, &qword_158C0);
  sub_13B00();
  sub_14A44();
}

uint64_t sub_CDEC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = a1[1];
  v22 = *a1;
  v23 = v8;
  v24 = *(a1 + 32);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  sub_12884(&v25, &v21);
  sub_12884(&v26, &v21);
  v10 = sub_14BF4();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = v23;
  *(v11 + 32) = v22;
  *(v11 + 48) = v12;
  *(v11 + 64) = v24;
  sub_121F0(a2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12884(&v25, &v21);
  sub_12884(&v26, &v21);
  v13 = sub_14BF4();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_12254(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = v23;
  *v16 = v22;
  *(v16 + 16) = v17;
  *(v16 + 32) = v24;
  v18 = sub_14A34();
  __chkstk_darwin(v18);
  *(&v20 - 2) = &v22;
  sub_EC70(&qword_206A8, &qword_158D0);
  sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
  sub_14A14();
}

uint64_t sub_D0F0()
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  sub_EC70(&qword_20728, &qword_15948);
  sub_13AB8(&qword_20730, &qword_20728, &qword_15948);
  sub_14994();
}

uint64_t sub_D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_14C04();
  v16[1] = sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(v3 + 20));
  v22 = sub_22E4();
  sub_121F0(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_12254(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_EC70(&qword_20710, &qword_15940);
  sub_EC70(&qword_20770, &qword_15968);
  sub_13AB8(&qword_20718, &qword_20710, &qword_15940);
  v9 = sub_1199C(&qword_206A8, &qword_158D0);
  v10 = sub_1199C(&qword_20600, &qword_15830);
  v11 = sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
  v12 = sub_13AB8(&qword_20758, &qword_20600, &qword_15830);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  sub_132EC();
  v13 = v17;
  sub_14A44();

  result = sub_EC70(&qword_20738, &qword_15950);
  v15 = (v13 + *(result + 36));
  *v15 = sub_10AF0;
  v15[1] = 0;
  return result;
}

uint64_t sub_D584@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_147B4();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  (__chkstk_darwin)();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_EC70(&qword_20778, &qword_15970) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v9 = v21 - v8;
  v22 = sub_EC70(&qword_206A8, &qword_158D0);
  v10 = *(v22 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v13 = v21 - v12;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v28 = *(a1 + 32);
  sub_14C04();
  v21[1] = sub_14BF4();
  sub_14BB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_EC70(&qword_20728, &qword_15948);
  sub_13AB8(&qword_20730, &qword_20728, &qword_15948);
  sub_14994();
  v16 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) + 36);
  sub_EC70(&qword_20498, &unk_15730);
  sub_149D4();
  v17 = sub_EC70(&qword_20780, &qword_15978);
  v18 = (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  __chkstk_darwin(v18);
  sub_147A4();
  sub_EC70(&qword_20600, &qword_15830);
  sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
  sub_13AB8(&qword_20758, &qword_20600, &qword_15830);
  v19 = v22;
  sub_14924();
  (*(v24 + 8))(v6, v25);
  sub_12F1C(v9, &qword_20778, &qword_15970);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_DA28(uint64_t a1, __int128 *a2)
{
  v4 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = (*(*(sub_EC70(&qword_205F8, &qword_15828) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v16[-v7];
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_146E4();
  v9 = sub_14704();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_121F0(a1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = *a2;
  v17 = a2[1];
  v18 = v10;
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_12254(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 32);
  sub_12884(&v18, v16);
  sub_12884(&v17, v16);
  sub_149F4();
}

uint64_t sub_DCB8(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_EC70(&qword_20728, &qword_15948);
  sub_13AB8(&qword_20730, &qword_20728, &qword_15948);
  sub_14994();
}

uint64_t sub_DE38()
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_14AF4();
  [v0 initWithType:v1];

  v2 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_14694();
}

uint64_t sub_DF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_EC70(&qword_206B8, &qword_158E0);
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  sub_14C04();
  v18[1] = sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_121F0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_12254(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_EC70(&qword_206E8, &qword_158F8);
  sub_130CC();
  sub_14A04();
  v12 = a1 + *(v3 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  v22 = v13;
  v23 = v14;
  sub_EC70(&qword_205C0, &qword_15808);
  sub_149D4();
  sub_121F0(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_12254(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v10);
  sub_EC70(&qword_206C0, &qword_158E8);
  sub_13AB8(&qword_206C8, &qword_206B8, &qword_158E0);
  sub_12DD4();
  v16 = v20;
  sub_14964();

  (*(v19 + 8))(v9, v16);
}

uint64_t sub_E2E0@<X0>(uint64_t a1@<X8>)
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() resetWiFiButtonTitle];
  sub_14B04();

  sub_13298();
  v3 = sub_148E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_14984();
  KeyPath = swift_getKeyPath();

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_E40C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + *(v4 + 20));
  swift_getKeyPath();
  v12[1] = v7;
  sub_11554(&qword_20428, type metadata accessor for Manager);
  sub_14624();

  v8 = *(v7 + 40);
  sub_121F0(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_12254(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v8;
  a2[3] = sub_131F8;
  a2[4] = v10;
  return result;
}

uint64_t sub_E60C(uint64_t a1)
{
  v2 = sub_EC70(&qword_20400, &qword_15590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *(type metadata accessor for DeviceDiscoveryUISettingsView(0) + 20));
  v7 = sub_14C24();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_48C0(0, 0, v5, &unk_15908, v8);
}

double sub_E798@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_EC70(&qword_20470, &qword_156D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  *a2 = swift_getKeyPath();
  sub_EC70(&qword_20478, &qword_15710);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  *(a2 + v11[5]) = a1;
  v12 = a2 + v11[6];
  LOBYTE(v24[0]) = 0;
  sub_149A4();
  v13 = *(&v26 + 1);
  *v12 = v26;
  *(v12 + 1) = v13;
  v14 = a2 + v11[7];
  LOBYTE(v24[0]) = 0;
  sub_149A4();
  v15 = *(&v26 + 1);
  *v14 = v26;
  *(v14 + 1) = v15;
  v16 = v11[8];
  *(a2 + v16) = SFIsGreenTeaDevice();
  v17 = v11[9];
  v18 = sub_14814();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_12EB4(v10, v8, &qword_20470, &qword_156D8);
  sub_149A4();
  sub_12F1C(v10, &qword_20470, &qword_156D8);
  v19 = a2 + v11[10];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_EC70(&qword_20480, &qword_15718);
  sub_149A4();
  v20 = v28;
  v21 = v29;
  result = *&v26;
  v23 = v27;
  *v19 = v26;
  *(v19 + 1) = v23;
  v19[32] = v20;
  *(v19 + 5) = v21;
  return result;
}

__n128 sub_EA3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EA64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_EAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_EB14()
{
  result = qword_203F8;
  if (!qword_203F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_203F8);
  }

  return result;
}

uint64_t sub_EB84()
{
  v1 = *v0;
  v2 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v3 = sub_11554(&qword_20468, type metadata accessor for DeviceDiscoveryUISettingsView);

  return SettingsPane.init(makeContent:)(sub_1144C, v1, v2, v3);
}

void *sub_EC30@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Manager(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  result = sub_2660();
  *a1 = v5;
  return result;
}

uint64_t sub_EC70(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_ECC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_ECDC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_145F8;

  return sub_4C28(v3, v4, v5, v2);
}

id sub_ED70()
{
  v1 = *v0;
  sub_11B10(0, &qword_20430, DADevice_ptr);
  isa = sub_14B64().super.isa;
  v3 = ResetWiFiIdentifierViewController(isa);

  return v3;
}

uint64_t sub_EE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14544();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_EE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14544();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_EEE4()
{
  sub_14544();
  sub_14884();
  __break(1u);
}

uint64_t sub_EF30(uint64_t a1)
{
  v2 = sub_EC70(&qword_20488, &qword_15720);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_12EB4(a1, &v6 - v4, &qword_20488, &qword_15720);
  return sub_14754();
}

uint64_t sub_EFD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_F0D0;

  return v7(a1);
}

uint64_t sub_F0D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_F1C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_F200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_145F8;

  return sub_EFD8(a1, v5);
}

uint64_t sub_F2B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_61F4;

  return sub_EFD8(a1, v5);
}

uint64_t sub_F370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_F3A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_F468(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_F4B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_EC70(&qword_20458, &qword_15680);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_F5B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_EC70(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_F6EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_145F8;

  return sub_9858(v4, v5, v6, v2, v3);
}

uint64_t sub_F784(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_F850(v11, 0, 0, 1, a1, a2);
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
    sub_F40C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_F468(v11);
  return v7;
}

unint64_t sub_F850(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_F95C(a5, a6);
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
    result = sub_14CB4();
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

void *sub_F95C(uint64_t a1, unint64_t a2)
{
  v4 = sub_F9A8(a1, a2);
  sub_FAD8(&off_1CB90);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_F9A8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_FBC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_14CB4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_14B44();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_FBC4(v10, 0);
        result = sub_14C84();
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

uint64_t sub_FAD8(uint64_t result)
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

  result = sub_FC38(result, v12, 1, v3);
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

void *sub_FBC4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_EC70(&qword_20440, &qword_15630);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_FC38(char *result, int64_t a2, char a3, char *a4)
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
    sub_EC70(&qword_20440, &qword_15630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_FD2C(char *a1, int64_t a2, char a3)
{
  result = sub_FD4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_FD4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_EC70(&qword_20450, &qword_15650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_FE68(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_14CE4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_14B94();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10044(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_FF60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_FF60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 56);
      v11 = result == *(v10 + 16) && *(v10 + 64) == *(v10 + 24);
      if (v11 || (result = sub_14D04(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = *(v10 + 40);
      v13 = *(v10 + 16);
      *(v10 + 40) = *v10;
      v14 = *(v10 + 56);
      v15 = *(v10 + 64);
      v16 = *(v10 + 72);
      *(v10 + 56) = v13;
      *(v10 + 72) = *(v10 + 32);
      *v10 = v12;
      *(v10 + 16) = v14;
      *(v10 + 24) = v15;
      *(v10 + 32) = v16;
      v10 -= 40;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10044(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1092C(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_10650((v94 + 40 * *v95), (v94 + 40 * *v96), v94 + 40 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 40 * v7;
      result = *(v11 + 16);
      v12 = *(v11 + 24);
      v13 = *v5 + 40 * v9;
      if (result == *(v13 + 16) && v12 == *(v13 + 24))
      {
        v15 = 0;
      }

      else
      {
        result = sub_14D04();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 40 * v9 + 104);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_14D04();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 5;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 40 * v7 - 16;
          v19 = 40 * v9 + 32;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v30 + v19);
              v23 = *(v30 + v19 - 32);
              v24 = (v30 + v18);
              v25 = *(v22 - 2);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = v24[1];
              v29 = *(v24 - 1);
              *(v22 - 2) = *(v24 - 3);
              *(v22 - 1) = v29;
              *v22 = v28;
              *(v24 - 3) = v23;
              *(v24 - 1) = v25;
              *v24 = v26;
              *(v24 + 8) = v27;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_F4B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_F4B4((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_10650((*v5 + 40 * v89), (*v5 + 40 * *&v8[16 * v50 + 32]), *v5 + 40 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1092C(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_108A0(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 40 * v7 - 40;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    v38 = *(v37 + 56) == *(v37 + 16) && *(v37 + 64) == *(v37 + 24);
    if (v38 || (result = sub_14D04(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 40;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v39 = *(v37 + 40);
    v40 = *(v37 + 16);
    *(v37 + 40) = *v37;
    v41 = *(v37 + 56);
    v42 = *(v37 + 64);
    v43 = *(v37 + 72);
    *(v37 + 56) = v40;
    *(v37 + 72) = *(v37 + 32);
    *v37 = v39;
    *(v37 + 16) = v41;
    *(v37 + 24) = v42;
    *(v37 + 32) = v43;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10650(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (!v17 && (sub_14D04() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v17 = v7 == v6;
    v6 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    v16 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v5 -= 40;
    do
    {
      v19 = *(v13 - 3) == *(v6 - 3) && *(v13 - 2) == *(v6 - 2);
      if (!v19 && (sub_14D04() & 1) != 0)
      {
        v23 = v6 - 40;
        if ((v5 + 40) != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 40, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v20 = v13 - 40;
      if ((v5 + 40) != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 24);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 40;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_39:
  v26 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_108A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1092C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_109C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_14D14();
  sub_14B24();
  v6 = sub_14D24();

  return sub_10A38(a1, a2, v6);
}

unint64_t sub_10A38(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_14D04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10AF0()
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10B80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14764();
  *a1 = result;
  return result;
}

uint64_t sub_10BAC(uint64_t *a1)
{
  v1 = *a1;

  return sub_14774();
}

uint64_t sub_10BD8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
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
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_11B10(0, &qword_20430, DADevice_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_14CA4();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_14CA4();
LABEL_26:
        v17 = v16;
        v18 = sub_14C74();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_14C74();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_14CC4();
  }

  result = sub_14CC4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10E28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_10E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = *(a1 + i + 48);
      v7 = *(a1 + i + 56);
      v8 = *(a1 + i + 64);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_14D04() & 1) == 0)
      {
        break;
      }

      if (v6 == v9 && v7 == v10)
      {
        if (v8 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_14D04();
        result = 0;
        if (v14 & 1) == 0 || ((v8 ^ v11))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_10F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_EC70(&qword_20448, &qword_15638);
    v3 = sub_14CD4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_109C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_11070(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_110B4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_11118()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11168()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_145F8;

  return sub_973C(v4, v5, v6, v2, v3);
}

uint64_t sub_11200()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
}

uint64_t sub_11264(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_112BC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_145F8;

  return sub_9558(v4, v5, v6, v2, v3);
}

uint64_t sub_11354()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
}

uint64_t sub_113B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_145F8;

  return sub_2998(v3, v4, v5, v2);
}

uint64_t sub_1144C@<X0>(uint64_t *a1@<X8>)
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_E798(v2, a1);
}

uint64_t sub_1151C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_115B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_EC70(&qword_20490, &qword_15728);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_EC70(&qword_20498, &unk_15730);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_11700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_EC70(&qword_20490, &qword_15728);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_EC70(&qword_20498, &unk_15730);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1183C()
{
  sub_11A34(319, &qword_204F8, &qword_20488, &qword_15720, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Manager(319);
    if (v1 <= 0x3F)
    {
      sub_119E4();
      if (v2 <= 0x3F)
      {
        sub_11A34(319, &qword_20508, &qword_20470, &qword_156D8, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_11A34(319, &unk_20510, &qword_20480, &qword_15718, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1199C(uint64_t *a1, uint64_t *a2)
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

void sub_119E4()
{
  if (!qword_20500)
  {
    v0 = sub_149E4();
    if (!v1)
    {
      atomic_store(v0, &qword_20500);
    }
  }
}

void sub_11A34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1199C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_11B10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_11B58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_11B70()
{
  result = qword_205B0;
  if (!qword_205B0)
  {
    sub_1199C(&qword_205A8, &qword_15800);
    sub_11554(&qword_205B8, &type metadata accessor for EditButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_205B0);
  }

  return result;
}

double sub_11C2C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = *(v3 + *(type metadata accessor for DeviceDiscoveryUISettingsView(0) + 32));
  if (v5 == &dword_0 + 1)
  {
    if (v6)
    {
      sub_147C4();
      sub_11B10(0, &qword_205A0, NSBundle_ptr);
      if (!sub_14C64())
      {
        v7 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      sub_147C4();
      sub_11B10(0, &qword_205A0, NSBundle_ptr);
      if (!sub_14C64())
      {
        v9 = [objc_opt_self() mainBundle];
      }
    }
  }

  else if (v6)
  {
    sub_147C4();
    sub_11B10(0, &qword_205A0, NSBundle_ptr);
    if (!sub_14C64())
    {
      v8 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    sub_147C4();
    sub_11B10(0, &qword_205A0, NSBundle_ptr);
    if (!sub_14C64())
    {
      v10 = [objc_opt_self() mainBundle];
    }
  }

  sub_148D4();
  sub_147E4();
  sub_EC70(&qword_205F0, &qword_15820);
  sub_12174();
  sub_147E4();

  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 33) = v15;
  return result;
}

unint64_t sub_120F0()
{
  result = qword_205E0;
  if (!qword_205E0)
  {
    sub_1199C(&qword_205D0, &qword_15818);
    sub_12174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_205E0);
  }

  return result;
}

unint64_t sub_12174()
{
  result = qword_205E8;
  if (!qword_205E8)
  {
    sub_1199C(&qword_205F0, &qword_15820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_205E8);
  }

  return result;
}

uint64_t sub_121F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_122B8()
{
  v0 = *(*(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8) + 80);

  return sub_C678();
}

uint64_t sub_12318()
{
  v1 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_EC70(&qword_20478, &qword_15710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_EC70(&qword_20608, &qword_15838);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_14AA4();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = *&v5[v1[5]];

  v13 = *&v5[v1[6] + 8];

  v14 = *&v5[v1[7] + 8];

  v15 = &v5[v1[9]];
  v16 = sub_14814();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *&v15[*(sub_EC70(&qword_20498, &unk_15730) + 28)];

  v19 = &v5[v1[10]];
  if (*(v19 + 1))
  {

    v20 = *(v19 + 3);
  }

  v21 = *(v19 + 5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_12588()
{
  v0 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_C768(v7);
  v4 = v3;
  v5 = sub_14814();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_147F4();
  }

  v2(v7, 0);
}

uint64_t sub_126CC()
{
  v1 = *(v0 + 16);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v3 = v1 + *(v2 + 40);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v14 = *v3;
  v15 = *(v3 + 16);
  v16 = v4;
  v17 = v5;
  sub_EC70(&qword_20618, &qword_15848);
  result = sub_149B4();
  if (*(&v12[0] + 1))
  {
    v14 = v12[0];
    v15 = v12[1];
    v16 = v13 & 1;
    v7 = *(v1 + *(v2 + 20));
    sub_5CA4(&v14);

    v8 = sub_C768(v12);
    v10 = v9;
    v11 = sub_14814();
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      sub_14804();
    }

    v8(v12, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_12934()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_12984()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_61F4;

  return sub_6158(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_12A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_12A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_EC70(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_12AD0()
{
  result = qword_20678;
  if (!qword_20678)
  {
    sub_1199C(&qword_20670, &qword_158B8);
    sub_13AB8(&qword_20680, &qword_20688, &qword_158C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20678);
  }

  return result;
}

uint64_t sub_12B80()
{
  v1 = *(v0 + 16);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + *(type metadata accessor for DeviceDiscoveryUISettingsView(0) + 20));
  sub_24A4();
  sub_EC70(&qword_20710, &qword_15940);
  sub_EC70(&qword_206A8, &qword_158D0);
  sub_13AB8(&qword_20718, &qword_20710, &qword_15940);
  sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
  sub_132EC();
  sub_14A44();
}

unint64_t sub_12D1C()
{
  result = qword_20698;
  if (!qword_20698)
  {
    sub_1199C(&qword_20690, &qword_158C8);
    sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20698);
  }

  return result;
}

unint64_t sub_12DD4()
{
  result = qword_206D0;
  if (!qword_206D0)
  {
    sub_1199C(&qword_206C0, &qword_158E8);
    sub_12E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_206D0);
  }

  return result;
}

unint64_t sub_12E60()
{
  result = qword_206D8;
  if (!qword_206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_206D8);
  }

  return result;
}

uint64_t sub_12EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_EC70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_EC70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_12F7C()
{
  v1 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0 + *(v1 + 28) + ((v2 + 16) & ~v2);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_EC70(&qword_205C0, &qword_15808);
  sub_149B4();
  sub_149C4();
}

unint64_t sub_130CC()
{
  result = qword_206F0;
  if (!qword_206F0)
  {
    sub_1199C(&qword_206E8, &qword_158F8);
    sub_13AB8(&qword_206F8, &qword_20700, &qword_15900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_206F0);
  }

  return result;
}

uint64_t sub_13184@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_E40C(v4, a1);
}

uint64_t sub_131F8()
{
  v1 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_E60C(v2);
}

uint64_t sub_13258()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_13298()
{
  result = qword_20708;
  if (!qword_20708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20708);
  }

  return result;
}

unint64_t sub_132EC()
{
  result = qword_20720;
  if (!qword_20720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20720);
  }

  return result;
}

unint64_t sub_13350()
{
  result = qword_20740;
  if (!qword_20740)
  {
    sub_1199C(&qword_20738, &qword_15950);
    sub_13408();
    sub_13AB8(&qword_20760, &qword_20768, &qword_15960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20740);
  }

  return result;
}

unint64_t sub_13408()
{
  result = qword_20748;
  if (!qword_20748)
  {
    sub_1199C(&qword_20750, &qword_15958);
    sub_1199C(&qword_206A8, &qword_158D0);
    sub_1199C(&qword_20600, &qword_15830);
    sub_13AB8(&qword_206A0, &qword_206A8, &qword_158D0);
    sub_13AB8(&qword_20758, &qword_20600, &qword_15830);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20748);
  }

  return result;
}

uint64_t sub_13584()
{
  v1 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_EC70(&qword_20478, &qword_15710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_EC70(&qword_20608, &qword_15838);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_14AA4();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = *&v5[v1[5]];

  v13 = *&v5[v1[6] + 8];

  v14 = *&v5[v1[7] + 8];

  v15 = &v5[v1[9]];
  v16 = sub_14814();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *&v15[*(sub_EC70(&qword_20498, &unk_15730) + 28)];

  v19 = &v5[v1[10]];
  if (*(v19 + 1))
  {

    v20 = *(v19 + 3);
  }

  v21 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v19 + 5);

  v23 = *(v0 + v21 + 8);

  v24 = *(v0 + v21 + 24);

  return _swift_deallocObject(v0, v21 + 33, v2 | 7);
}

uint64_t sub_13814()
{
  v1 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v3[1];
  v16 = *v3;
  v4 = v3[2];
  v5 = v3[3];
  v6 = *(v3 + 32);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = v0 + v2 + *(v1 + 40);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  v10 = *(v7 + 16);
  v23 = *v7;
  v24 = v10;
  v25 = v8;
  v26 = v9;
  v18 = v16;
  v19 = v15;
  v20 = v4;
  v21 = v5;
  v22 = v6 & 1;
  v28 = *v3;
  v27 = *(v3 + 1);
  sub_12884(&v28, v17);
  sub_12884(&v27, v17);
  sub_EC70(&qword_20618, &qword_15848);
  sub_149C4();
  v11 = v0 + v2 + *(v1 + 24);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v23) = v12;
  *(&v23 + 1) = v13;
  LOBYTE(v18) = 1;
  sub_EC70(&qword_205C0, &qword_15808);
  sub_149C4();
}

uint64_t sub_13A24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DeviceDiscoveryUISettingsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_13AB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1199C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_13B00()
{
  result = qword_20798;
  if (!qword_20798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20798);
  }

  return result;
}

uint64_t sub_13B54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_13B9C@<X0>(_BYTE *a1@<X8>)
{
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_13C38()
{
  v1 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_EC70(&qword_20478, &qword_15710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_EC70(&qword_20608, &qword_15838);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {
      v8 = *v6;

      v9 = *(v6 + 1);

      v10 = *(v7 + 32);
      v11 = sub_14AA4();
      (*(*(v11 - 8) + 8))(&v6[v10], v11);
    }
  }

  else
  {
    v12 = *v6;
  }

  v13 = *&v6[v1[5]];

  v14 = *&v6[v1[6] + 8];

  v15 = *&v6[v1[7] + 8];

  v16 = &v6[v1[9]];
  v17 = sub_14814();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  v19 = *&v16[*(sub_EC70(&qword_20498, &unk_15730) + 28)];

  v20 = &v6[v1[10]];
  if (*(v20 + 1))
  {

    v21 = *(v20 + 3);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v20 + 5);

  v24 = *(v0 + v22 + 8);

  v25 = *(v0 + v22 + 24);

  return _swift_deallocObject(v0, v22 + 33, v2 | 7);
}

uint64_t sub_13ED0(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceDiscoveryUISettingsView(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *a1;
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (v5 + 32) & ~v5;
  v9 = *(v2 + v8 + *(v4 + 20));
  sub_79E0(v2 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8), v7);
}

uint64_t sub_1400C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_13298();

  v4 = sub_148E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_140F8()
{
  v1 = *(v0 + 16);
  sub_14C04();
  sub_14BF4();
  sub_14BB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = objc_allocWithZone(ISIcon);
  v5 = sub_14AF4();
  [v4 initWithBundleIdentifier:v5];

  v6 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_14694();
}

uint64_t sub_14218()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_14268()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_145F8;

  return sub_7EA0(v4, v5, v6, v2, v3, v0 + 48);
}

uint64_t sub_14338()
{
  sub_1199C(&qword_20580, &qword_157F0);
  sub_1199C(&qword_205C8, &qword_15810);
  sub_1199C(&qword_205D0, &qword_15818);
  sub_1199C(&qword_20578, &qword_157E8);
  sub_1199C(&qword_205A8, &qword_15800);
  sub_1199C(&qword_20570, &qword_157E0);
  sub_1199C(&qword_20568, &qword_157D8);
  sub_13AB8(&qword_20598, &qword_20568, &qword_157D8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_11B70();
  swift_getOpaqueTypeConformance2();
  sub_13AB8(&qword_205D8, &qword_205C8, &qword_15810);
  sub_120F0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_14544()
{
  result = qword_207A0;
  if (!qword_207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_207A0);
  }

  return result;
}