uint64_t sub_10032885C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100328CC8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100327DE0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100327DE0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void sub_100329144(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_10032918C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1003291E0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_100329218(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1003292B0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1003292E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_100329330()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_100329368(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_100329450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1003294A8(a1, a2, a3);
  return v6;
}

uint64_t sub_1003294A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = v4;
  *(v4 + 40) = 0u;
  v8 = (v4 + 40);
  *(v8 + 1) = 0u;
  v9 = v8 + 2;
  *(v8 - 3) = a1;
  *(v8 - 2) = a2;
  *(v8 - 1) = a3;
  type metadata accessor for PlatformInfo();
  v32 = a1;

  static PlatformInfo.instance.getter();
  v31 = dispatch thunk of PlatformInfo.aop2Enabled.getter();

  v10 = sub_100334FA4();
  v11 = *(**v10 + 104);

  v11(v34, 0x756D695369466957, 0xED0000646574616CLL, &type metadata for Bool);

  if (LOBYTE(v34[0]) != 2 && (v34[0] & 1) != 0)
  {
    type metadata accessor for ALWiFiSimulated();
    v12 = sub_10033EAC4(v32, a2, a3);
    swift_beginAccess();
    v13 = *v8;
    *v8 = v12;
    goto LABEL_22;
  }

  v14 = *(**v10 + 104);

  v14(v34, 0x6C70655269466957, 0xEF56534364657961, &type metadata for Bool);

  if (LOBYTE(v34[0]) != 2 && (v34[0] & 1) != 0)
  {
    type metadata accessor for ALWiFiReplayerCSV();
    v15 = sub_10033F0B4(v32, a2, a3);
    swift_beginAccess();
    v16 = v8[1];
    v8[1] = v15;
    goto LABEL_22;
  }

  v17 = *(**v10 + 104);

  v17(v34, 0x726F43686365654CLL, 0xED00006946695765, &type metadata for Bool);

  if (LOBYTE(v34[0]) != 2)
  {
    v18 = a2;
    if ((v34[0] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_11:
    type metadata accessor for ALLeechCoreWiFi();
    v19 = sub_100332874(v32, v18, a3);
    swift_beginAccess();
    v20 = *v9;
    *v9 = v19;
    goto LABEL_22;
  }

  if ((v31 & 1) == 0)
  {
    static PlatformInfo.instance.getter();
    v21 = dispatch thunk of PlatformInfo.hasMobileWiFi.getter();

    v18 = a2;
    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v18 = a2;
LABEL_13:
  v22 = *(**v10 + 104);

  v22(v34, 0xD000000000000018, 0x80000001003B12E0, &type metadata for Bool);

  if (LOBYTE(v34[0]) == 2)
  {
    v23 = v32;
  }

  else
  {
    v23 = v32;
    if (v34[0])
    {
      type metadata accessor for ALLeechCoreWiFi();
      v24 = sub_100332874(v32, sub_100329940, 0);
      swift_beginAccess();
      v25 = *v9;
      *v9 = v24;
    }
  }

  v26 = *(**v10 + 104);

  v26(v34, 0x504F41686365654CLL, 0xED00006946695732, &type metadata for Bool);

  v27 = v34[0];
  if (LOBYTE(v34[0]) == 2)
  {
    v27 = v31;
  }

  if (v27)
  {
    type metadata accessor for ALWiFiLeechAOP2();
    v28 = sub_10032D9F4(v23, v18, a3);
    swift_beginAccess();
    v29 = v8[3];
    v8[3] = v28;
  }

  else
  {
  }

LABEL_22:

  return v33;
}

uint64_t sub_100329940(uint64_t a1)
{
  v3 = type metadata accessor for ALWiFiNotification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v11);
  (*(v4 + 16))(v7, a1, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v8;
    v15 = v14;
    v21 = swift_slowAlloc();
    v25 = v21;
    *v15 = 136315138;
    v16 = ALWiFiNotification.description.getter();
    v23 = v1;
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v19 = sub_10000234C(v16, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "#WiFi,LeechCoreWiFiAsReference,%s", v15, 0xCu);
    sub_100002580(v21);

    return (*(v24 + 8))(v11, v22);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v24 + 8))(v11, v8);
  }
}

uint64_t sub_100329BF0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return v0;
}

uint64_t sub_100329C38()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100329CBC()
{
  type metadata accessor for ALCoreAnalyticsManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 88) = &off_100407B00;
  *(v0 + 96) = &off_100407B88;
  v1 = *(**sub_100334FA4() + 104);

  v1(&v5, 0xD000000000000017, 0x80000001003B1570, &type metadata for Double);

  if (v6)
  {
    v2 = 6.0;
  }

  else
  {
    v2 = v5;
  }

  *(v0 + 80) = v2 * SecInHr.getter();
  *(v0 + 72) = machContTimeSec()();
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v3 = dispatch thunk of PlatformInfo.aop2Enabled.getter();

  *(v0 + 16) = v3 & 1;
  qword_10048BEA0 = v0;
  return result;
}

uint64_t static ALCoreAnalyticsManager.instance.getter()
{
  if (qword_10048BE98 != -1)
  {
    swift_once();
  }
}

void sub_100329E68(unint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = UsToMin.getter();
  sub_100329EFC(a2, v8 * v7);
  if (a2 > 1.0)
  {
    v9 = *(v4 + 32);
    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
LABEL_9:
      __break(1u);
      return;
    }

    *(v4 + 32) = v11;
  }

  v12 = *(v4 + 24);
  v10 = __CFADD__(v12, a4);
  v13 = v12 + a4;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 24) = v13;

  sub_1000040B4();
}

void sub_100329EFC(double a1, double a2)
{
  v3 = v2;
  v48 = type metadata accessor for Logger();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v48);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10032AB90(&_swiftEmptyArrayStorage);
  v11 = (v10 + 16);
  sub_10000ABCC(0, &qword_100430FE0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v13 = *(v10 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v13;
  *(v10 + 16) = 0x8000000000000000;
  sub_10032A8AC(isa, 0x6E65637265507442, 0xED00006C6C754674, isUniquelyReferenced_nonNull_native);
  *(v10 + 16) = aBlock[0];
  v15 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v16 = *(v10 + 16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v16;
  *(v10 + 16) = 0x8000000000000000;
  sub_10032A8AC(v15, 0x7265666675427442, 0xEC000000657A6953, v17);
  v18 = 0;
  v19 = aBlock[0];
  *(v10 + 16) = aBlock[0];
  v20 = *(v3 + 96);
  v21 = *(v20 + 16);
  while (v21 != v18)
  {
    v22 = *(v20 + 32 + 8 * v18++);
    if (v22 >= a2)
    {
      goto LABEL_7;
    }
  }

  if (v21)
  {
    v23 = *(v20 + 8 * v21 + 24);
  }

LABEL_7:
  v24 = Double._bridgeToObjectiveC()().super.super.isa;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v19;
  *v11 = 0x8000000000000000;
  sub_10032A8AC(v24, 0x656C7341656D6954, 0xEA00000000007065, v25);
  v26 = 0;
  v27 = aBlock[0];
  *v11 = aBlock[0];
  v28 = *(v3 + 88);
  v29 = *(v28 + 16);
  while (v29 != v26)
  {
    v30 = *(v28 + 32 + 8 * v26++);
    if (v30 >= a1)
    {
      goto LABEL_13;
    }
  }

  if (v29)
  {
    v31 = *(v28 + 8 * v29 + 24);
  }

LABEL_13:
  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v27;
  *(v10 + 16) = 0x8000000000000000;
  sub_10032A8AC(v32, 0x6372655069666957, 0xEF6C6C7546746E65, v33);
  v34 = aBlock[0];
  *(v10 + 16) = aBlock[0];
  v35 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v34;
  *(v10 + 16) = 0x8000000000000000;
  sub_10032A8AC(v35, 0x6666754269666957, 0xEE00657A69537265, v36);
  *(v10 + 16) = aBlock[0];
  corelog.getter(v9);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    v41 = *v11;
    sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);

    v42 = Dictionary.description.getter();
    v44 = v43;

    v45 = sub_10000234C(v42, v44, aBlock);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "CoreAnalytics, send wake event: %{public}s", v39, 0xCu);
    sub_100002580(v40);
  }

  (*(v6 + 8))(v9, v48);
  v46 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10032AC94;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10032A44C;
  aBlock[3] = &unk_100407D48;
  v47 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v47);
}

Class sub_10032A44C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000ABCC(0, &unk_1004309B0, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void *ALCoreAnalyticsManager.deinit()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[11];

  v3 = v0[12];

  return v0;
}

uint64_t ALCoreAnalyticsManager.__deallocating_deinit()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[11];

  v3 = v0[12];

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_10032A608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024A2C(&unk_1004309C0, &qword_10039A498);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10032A8AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10031DC00(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10032A608(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10031DC00(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10032AA24();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_10032AA24()
{
  v1 = v0;
  sub_100024A2C(&unk_1004309C0, &qword_10039A498);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_10032AB90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&unk_1004309C0, &qword_10039A498);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10031DC00(v5, v6);
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

uint64_t sub_10032ACD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_10032AD5C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  sub_10032ADC4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_10032ADC4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v15 = a1;

  corelog.getter(v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v16, v17, "debounce.init,%{public}f", v18, 0xCu);
  }

  else
  {
  }

  (*(v11 + 8))(v14, v10);
  return v5;
}

uint64_t sub_10032AF80(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  *&result = COERCE_DOUBLE((*(*a1 + 120))(v10));
  if ((v14 & 1) == 0)
  {
    v15 = result;
    if (*&result <= a2)
    {
      corelog.getter(v9);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349312;
        *(v21 + 4) = a2;
        *(v21 + 12) = 2050;
        *(v21 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v19, v20, "debounce.workItem,callback,mctnow,%{public}f,last,%{public}f", v21, 0x16u);
      }

      (*(v5 + 8))(v9, v4);
      *&result = COERCE_DOUBLE(sub_100008264(0, 1));
    }

    else
    {
      corelog.getter(v12);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134349312;
        *(v18 + 4) = a2;
        *(v18 + 12) = 2050;
        *(v18 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "debounce.workItem,skip,mctnow,%{public}f,last,%{public}f", v18, 0x16u);
      }

      *&result = COERCE_DOUBLE((*(v5 + 8))(v12, v4));
    }
  }

  return result;
}

uint64_t sub_10032B200()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_10032B230()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

void *sub_10032B2A8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10032B304()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_10032B33C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_10032B3D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_10032B46C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_10032B4A4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_10032B54C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_10032B584(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10032B5CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 95;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10032B65C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_10032B68C()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return 19;
  }

  v2 = *(*v1 + 144);

  v2(v3);

  return 36;
}

uint64_t DataVendorService.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  DataVendorService.init(queue:)(a1);
  return v2;
}

uint64_t DataVendorService.init(queue:)(void *a1)
{
  v2 = v1;
  v102 = type metadata accessor for Logger();
  v4 = *(v102 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v102);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v100 = &v89 - v9;
  v10 = __chkstk_darwin(v8);
  v96 = &v89 - v11;
  __chkstk_darwin(v10);
  v95 = &v89 - v12;
  v94 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v93 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v92 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v92);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  v21 = (v2 + 32);
  *(v2 + 64) = 0u;
  v99 = v2 + 64;
  *(v2 + 80) = 0u;
  v89 = v2 + 80;
  v103 = v2 + 16;
  *(v2 + 112) = 0;
  v90 = (v2 + 112);
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0xE100000000000000;
    v24 = 95;
  }

  *(v2 + 120) = v24;
  *(v2 + 128) = v26;
  *(v2 + 24) = a1;
  v98 = a1;
  v97 = sub_100334FA4();
  v27 = *(**v97 + 104);

  v27(v104, 0x4244656C62616E45, 0xE800000000000000, &type metadata for Bool);

  v101 = v4;
  if (LOBYTE(v104[0]) != 2 && (v104[0] & 1) != 0)
  {
    type metadata accessor for ALDatabase();
    v28 = sub_100354C88();
    swift_beginAccess();
    v29 = *v21;
    *v21 = v28;
  }

  sub_100024B00();
  v30 = *(v2 + 128);
  v104[0] = *(v2 + 120);
  v104[1] = v30;

  v31._countAndFlagsBits = 7627310;
  v31._object = 0xE300000000000000;
  String.append(_:)(v31);
  static DispatchQoS.userInteractive.getter();
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v92);
  v104[0] = &_swiftEmptyArrayStorage;
  sub_100015758(&qword_1004180F8, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100024A2C(&qword_100418100, &qword_10039A500);
  sub_100006DDC(&qword_100418108, &qword_100418100, &qword_10039A500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = v95;
  kappalog.getter(v95);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v104[0] = v36;
    *v35 = 136315394;
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v37 = PlatformInfo.product.getter();
    v39 = v38;

    v40 = sub_10000234C(v37, v39, v104);

    *(v35 + 4) = v40;
    *(v35 + 12) = 1024;
    static PlatformInfo.instance.getter();
    v41 = dispatch thunk of PlatformInfo.supportsSMA()();

    *(v35 + 14) = v41 & 1;
    _os_log_impl(&_mh_execute_header, v33, v34, "product type: %s supportsSMA: %{BOOL}d", v35, 0x12u);
    sub_100002580(v36);
  }

  v42 = *(v101 + 8);
  v43 = v102;
  v42(v32, v102);
  v44 = v100;
  v45 = v96;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v46 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if (v46)
  {
    type metadata accessor for AONSenseExclave.Service();
    sub_100015758(&qword_100430AF8, 255, type metadata accessor for AONSenseExclave.Service);
    _s9Tightbeam8ConclaveV7service3for2asxSS_xmtSo10tb_error_taYKAA0A19ServiceInitProtocolRzlFZ();
    v86 = v104[0];
    v87 = v90;
    swift_beginAccess();
    v88 = *v87;
    *v87 = v86;
  }

  else
  {
    exlog.getter(v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "not supported", v49, 2u);
    }

    v42(v45, v43);
  }

  sub_100024A2C(&qword_100430AD0, &qword_10039A508);
  v50 = *(v2 + 24);
  v51 = static ALKappaConfigNotifications.serializedIndications.getter();
  *(v2 + 96) = sub_10033C0B4(v50, v51, v52);
  v53 = *(**v97 + 104);

  v53(v104, 0x414D656C62616E45, 0xE800000000000000, &type metadata for Bool);

  if (LOBYTE(v104[0]) == 2 || (v104[0] & 1) != 0)
  {
    static PlatformInfo.instance.getter();
    v54 = dispatch thunk of PlatformInfo.supportsSMA()();

    v55 = 0;
    if (v54)
    {
      type metadata accessor for ALMobileAssets();
      v56 = *(v2 + 96);
      swift_beginAccess();
      v57 = *(v2 + 112);
      v58 = *(v2 + 120);
      v59 = *(v2 + 128);

      v55 = sub_10035CA98(v60, v57, v58, v59);
    }
  }

  else
  {
    v55 = 0;
  }

  *(v2 + 104) = v55;
  sub_100024A2C(&qword_100430AD8, &qword_10039A510);
  v61 = v98;
  *(v2 + 48) = sub_10033C0B4(v61, sub_10032C50C, 0);
  sub_100024A2C(&qword_100430AE0, &qword_10039A518);
  *(v2 + 56) = sub_10033C0B4(*(v2 + 40), sub_10032C524, 0);
  type metadata accessor for ALWiFiResultHub();
  v62 = swift_allocObject();
  *(v62 + 16) = v2;
  *(v62 + 24) = v61;
  v63 = v61;

  v64 = sub_100329450(v63, sub_10000EA34, v62);
  swift_beginAccess();
  v65 = *(v2 + 64);
  *(v2 + 64) = v64;

  type metadata accessor for ALBtResultHub();
  v66 = *(v2 + 40);

  v67 = sub_10034A728(v66, sub_10000770C, v2);
  swift_beginAccess();
  v68 = *(v2 + 72);
  *(v2 + 72) = v67;

  v69 = type metadata accessor for AONSenseFF();
  v105 = v69;
  v106 = sub_100015758(&qword_100430AE8, 255, type metadata accessor for AONSenseFF);
  v70 = sub_10000DA60(v104);
  (*(v69[-1].Description + 13))(v70, 0, v69);
  LOBYTE(v69) = isFeatureEnabled(_:)();
  sub_100002580(v104);
  if (v69)
  {
    type metadata accessor for ALNIResultHub();
    v71 = sub_10032E12C(*(v2 + 40), sub_10032C53C, 0);
    swift_beginAccess();
    v72 = *(v2 + 88);
    *(v2 + 88) = v71;

    type metadata accessor for ALBTScanRequestResultHub();
    v73 = *(v2 + 40);

    v74 = sub_10034AB98(v73, sub_10032D7B8, v2);
    swift_beginAccess();
    v75 = *(v2 + 80);
    *(v2 + 80) = v74;
  }

  v76 = *(v2 + 104);
  if (v76)
  {
    v77 = *(v2 + 104);

    kappalog.getter(v44);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Calling initMobileAsset()", v80, 2u);
    }

    v81 = (v42)(v44, v43);
    (*(*v76 + 184))(v81);
  }

  type metadata accessor for ALServiceDelegate();
  v105 = type metadata accessor for DataVendorService();
  v106 = sub_100015758(&qword_100430AF0, v82, type metadata accessor for DataVendorService);
  v104[0] = v2;

  v83 = ALServiceDelegate.__allocating_init(queue:dataService:)(v63, v104);
  swift_beginAccess();
  v84 = *(v2 + 16);
  *(v2 + 16) = v83;

  return v2;
}

uint64_t sub_10032C53C(uint64_t a1)
{
  v2 = *(**sub_10031EA68() + 256);

  v2(a1);
}

uint64_t sub_10032C5B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchTime();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v32);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v19);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "ALDataVendorService is alive", v22, 2u);
  }

  (*(v16 + 8))(v19, v15);
  v30 = *(v1 + 24);
  static DispatchTime.now()();
  v23 = v14;
  + infix(_:_:)();
  v31 = *(v8 + 8);
  v24 = v32;
  v31(v12, v32);
  aBlock[4] = sub_10032D8F4;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100407E10;
  v25 = _Block_copy(aBlock);

  v26 = v33;
  static DispatchQoS.unspecified.getter();
  v39 = &_swiftEmptyArrayStorage;
  sub_100015758(&qword_100430F40, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006DDC(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  v27 = v36;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);
  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v26, v35);
  v31(v23, v24);
}

uint64_t sub_10032CA74(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for DataClient();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v61 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v58 - v20;
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = dispatch thunk of ALProtoRequest.isWiFiResult()();
  v62 = a1;
  v63 = a2;
  if (v24)
  {
    corelog.getter(v23);
    v27 = a2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v59 = v15;
      v31 = v30;
      v32 = swift_slowAlloc();
      v60 = v14;
      v33 = v9;
      v34 = v3;
      v35 = v32;
      *v31 = 138543362;
      *(v31 + 4) = v27;
      *v32 = v27;
      v36 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "Add wifi client %{public}@", v31, 0xCu);
      sub_1000059A8(v35, &unk_10042F020, &qword_100399AE0);
      v3 = v34;
      v9 = v33;
      v14 = v60;

      v15 = v59;
    }

    (*(v15 + 8))(v23, v14);
    v37 = type metadata accessor for ALResultOptions();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    sub_10033BD80(v27, v9, v13);
    (*(**(v3 + 48) + 176))(v13);
    sub_10001543C(v13);
    a2 = v63;
    result = dispatch thunk of ALProtoRequest.isBtResult()();
    if ((result & 1) == 0)
    {
LABEL_3:
      v26 = *(v3 + 104);
      if (!v26)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    result = dispatch thunk of ALProtoRequest.isBtResult()();
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  corelog.getter(v21);
  v38 = a2;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v60 = v3;
    v42 = v41;
    v43 = v15;
    v44 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v38;
    *v44 = v38;
    v45 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "Add BT client %{public}@", v42, 0xCu);
    sub_1000059A8(v44, &unk_10042F020, &qword_100399AE0);
    v15 = v43;

    v3 = v60;
  }

  (*(v15 + 8))(v21, v14);
  v46 = type metadata accessor for ALResultOptions();
  (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
  sub_10033BD80(v38, v9, v13);
  (*(**(v3 + 56) + 176))(v13);
  result = sub_10001543C(v13);
  a2 = v63;
  v26 = *(v3 + 104);
  if (v26)
  {
LABEL_11:

    if (dispatch thunk of ALProtoRequest.isKappaConfigResult()())
    {
      kappalog.getter(v61);
      v47 = a2;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v60 = v14;
        v51 = v3;
        v52 = v50;
        v53 = v15;
        v54 = swift_slowAlloc();
        *v52 = 138543362;
        *(v52 + 4) = v47;
        *v54 = v47;
        v55 = v47;
        _os_log_impl(&_mh_execute_header, v48, v49, "Add Kappa client %{public}@", v52, 0xCu);
        sub_1000059A8(v54, &unk_10042F020, &qword_100399AE0);
        v15 = v53;

        v3 = v51;
        v14 = v60;
      }

      (*(v15 + 8))(v61, v14);
      v56 = type metadata accessor for ALResultOptions();
      (*(*(v56 - 8) + 56))(v9, 1, 1, v56);
      sub_10033BD80(v47, v9, v13);
      v57 = *(**(v3 + 96) + 208);

      v57(v13, sub_10032D920, v26);

      return sub_10001543C(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10032D124(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  corelog.getter(v21 - v10);
  v12 = a3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v7;
    v17 = v6;
    v18 = v16;
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "subscribeDataService %{public}@", v15, 0xCu);
    sub_1000059A8(v18, &unk_10042F020, &qword_100399AE0);
    v6 = v17;
    v7 = v21[0];
  }

  (*(v7 + 8))(v11, v6);
  type metadata accessor for ALProtoRequest();
  sub_1000150EC(a1, a2);
  ALProtoRequest.__allocating_init(data:)(a1, a2);
  (*(*v21[1] + 384))();
}

uint64_t sub_10032D488()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  corelog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "cleanup client list upon client disconnected", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*(*v1[6] + 184))(v10);
  v12 = (*(*v1[7] + 184))(v11);
  return (*(*v1[12] + 184))(v12);
}

uint64_t DataVendorService.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 128);

  return v0;
}

uint64_t DataVendorService.__deallocating_deinit()
{
  DataVendorService.deinit();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10032D7B8(uint64_t a1)
{
  result = (*(*v1 + 312))();
  if (result)
  {
    sub_100024A2C(&qword_100418C80, &qword_10039A620);
    v4 = type metadata accessor for ALBtNotification();
    v5 = *(v4 - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100374440;
    (*(v5 + 16))(v8 + v7, a1, v4);
    sub_10032F834(v8);
  }

  return result;
}

uint64_t sub_10032D9F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10032DA4C(a1, a2, a3);
  return v6;
}

uint64_t sub_10032DA4C(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  corelog.getter(&v32 - v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "#WiFi, Leeching on AOP2", v15, 2u);
  }

  v33 = *(v6 + 8);
  v33(v12, v5);
  v16 = sub_100334FA4();
  v17 = *(**v16 + 104);

  v17(&v37, 0xD000000000000016, 0x80000001003B16F0, &type metadata for Double);

  if (v38)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v37;
  }

  type metadata accessor for ALRPCInterface();
  v19 = a1;
  v20 = ALRPCInterface.__allocating_init(queue:interval:)(v19, v18);
  v21 = v35;
  *(v35 + 16) = v20;
  v22 = (v21 + 16);

  v23 = *sub_100004064();

  dispatch thunk of ALRPCInterface.regAnalytics(onLocCompAnalytics:)();

  swift_beginAccess();
  v24 = *v22;
  v25 = swift_allocObject();
  *(v25 + 16) = v34;
  *(v25 + 24) = a3;

  dispatch thunk of ALRPCInterface.regWifi(onWiFi:)();

  v26 = *(**v16 + 104);

  v26(&v36, 0xD000000000000017, 0x80000001003B1710, &type metadata for Bool);

  if (v36 == 2 || (v36 & 1) != 0)
  {
    corelog.getter(v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "#WiFi, Enable AOP2 Wifi Reception", v29, 2u);
    }

    v33(v10, v5);
    v30 = *v22;

    dispatch thunk of ALRPCInterface.activate(enable:)();
  }

  return v35;
}

uint64_t sub_10032DE4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  return a2(a1);
}

void sub_10032E04C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id sub_10032E0A0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void sub_10032E0E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_10032E12C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10032E184(a1, a2, a3);
  return v6;
}

void *sub_10032E184(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v4[5] = 0;
  v4[6] = sub_10033206C(&_swiftEmptyArrayStorage);
  v16 = sub_10033AC88();
  v17 = *v16;
  v4[7] = *v16;
  v4[8] = &_swiftEmptySetSingleton;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v18 = *((swift_isaMask & *v17) + 0xD0);
  v19 = v17;
  v27 = a1;
  v28 = a3;

  v18(v20);

  swift_allocObject();
  swift_weakInit();
  sub_100323B4C();
  Publisher<>.sink(receiveValue:)();

  (*(v12 + 8))(v15, v11);
  v21 = v26;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  nilog.getter(v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "ALNIResultHub init", v24, 2u);
  }

  else
  {
  }

  (*(v29 + 8))(v21, v30);
  return v4;
}

uint64_t sub_10032E4C4(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = *a1;
  nilog.getter(&v27 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v29 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v3;
    v15 = v14;
    v16 = v7;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315138;
    if (v10)
    {
      v18 = 28271;
    }

    else
    {
      v18 = 6710895;
    }

    if (v10)
    {
      v19 = 0xE200000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10000234C(v18, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v17);
    v7 = v16;

    v3 = v28;
  }

  v21 = *(v3 + 8);
  v21(v9, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((v29 & 1) == 0)
    {
      (*(*Strong + 304))(Strong);
    }
  }

  else
  {
    nilog.getter(v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no self", v26, 2u);
    }

    return (v21)(v7, v2);
  }
}

uint64_t sub_10032E7B4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for ALNIPresenceNotifications();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 200))(v7);
  ALNIPresenceNotifications.init(presenceResults:)();
  v10 = ALNIPresenceNotifications.presenceResults.getter();
  sub_1003309CC(v10);

  ALNIPresenceNotifications.presenceResults.setter();
  v11 = *(ALNIPresenceNotifications.presenceResults.getter() + 16);

  if (!v11)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v13 = (*(*v1 + 152))(v12);
  v13(v9);
  (*(v5 + 8))(v9, v4);
}

uint64_t sub_10032EA70(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100430D98, &qword_10039A658);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v73 = v68 - v4;
  v82 = type metadata accessor for ALNIDevicePresencePreset();
  v79 = *(v82 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v82);
  v69 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100024A2C(&qword_100430DA0, &qword_10039A660);
  v7 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v80 = v68 - v8;
  v9 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v71 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v70 = v68 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v68 - v16;
  __chkstk_darwin(v15);
  v19 = v68 - v18;
  v20 = type metadata accessor for ALNIPresenceNotification();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Logger();
  v25 = *(v75 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v75);
  v28 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v28);
  v29 = *(v21 + 16);
  v83 = a1;
  v68[0] = v29;
  v68[1] = v21 + 16;
  v29(v24, a1, v20);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v72 = v20;
  v81 = v21;
  v77 = v17;
  v78 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10000234C(0xD00000000000001ELL, 0x80000001003B1760, v84);
    *(v33 + 12) = 2080;
    v34 = ALNIPresenceNotification.description.getter();
    v35 = v20;
    v37 = v36;
    (*(v21 + 8))(v24, v35);
    v38 = sub_10000234C(v34, v37, v84);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s %s", v33, 0x16u);
    swift_arrayDestroy();
    v19 = v78;

    v17 = v77;
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  (*(v25 + 8))(v28, v75);
  ALNIPresenceNotification.region.getter();
  v39 = v79;
  v40 = v82;
  (*(v79 + 104))(v17, enum case for ALNIDevicePresencePreset.sensorMax(_:), v82);
  (*(v39 + 56))(v17, 0, 1, v40);
  v41 = *(v76 + 48);
  v42 = v80;
  sub_10000A0A4(v19, v80, &unk_100431470, &qword_10039A668);
  sub_10000A0A4(v17, v42 + v41, &unk_100431470, &qword_10039A668);
  v43 = *(v39 + 48);
  if (v43(v42, 1, v40) == 1)
  {
    sub_1000059A8(v17, &unk_100431470, &qword_10039A668);
    sub_1000059A8(v19, &unk_100431470, &qword_10039A668);
    v44 = v43(v42 + v41, 1, v40);
    v45 = v83;
    if (v44 == 1)
    {
      sub_1000059A8(v42, &unk_100431470, &qword_10039A668);
      v46 = v81;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v47 = v70;
  sub_10000A0A4(v42, v70, &unk_100431470, &qword_10039A668);
  if (v43(v42 + v41, 1, v40) == 1)
  {
    sub_1000059A8(v77, &unk_100431470, &qword_10039A668);
    sub_1000059A8(v78, &unk_100431470, &qword_10039A668);
    (*(v39 + 8))(v47, v40);
    v45 = v83;
LABEL_9:
    sub_1000059A8(v42, &qword_100430DA0, &qword_10039A660);
    v46 = v81;
    goto LABEL_10;
  }

  v60 = v69;
  (*(v39 + 32))(v69, v42 + v41, v40);
  sub_100332260();
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v39 + 8);
  v62(v60, v40);
  sub_1000059A8(v77, &unk_100431470, &qword_10039A668);
  sub_1000059A8(v78, &unk_100431470, &qword_10039A668);
  v62(v47, v40);
  sub_1000059A8(v42, &unk_100431470, &qword_10039A668);
  v46 = v81;
  v45 = v83;
  if (v61)
  {
LABEL_14:
    result = ALNIPresenceNotification.deviceId.getter();
    if (v63)
    {
      v64 = result;
      v65 = v63;
      v66 = v73;
      (*(v46 + 56))(v73, 1, 1, v72);
      v67 = (*(*v74 + 216))(v84);
      sub_10032F388(v66, v64, v65);
      return v67(v84, 0);
    }

    return result;
  }

LABEL_10:
  v48 = v71;
  ALNIPresenceNotification.region.getter();
  v49 = v43(v48, 1, v40);
  sub_1000059A8(v48, &unk_100431470, &qword_10039A668);
  if (v49 == 1)
  {
    goto LABEL_14;
  }

  result = ALNIPresenceNotification.deviceId.getter();
  if (v51)
  {
    v52 = result;
    v53 = v51;
    v54 = v73;
    v55 = v45;
    v56 = v72;
    (v68[0])(v73, v55, v72);
    (*(v46 + 56))(v54, 0, 1, v56);
    v57 = v74;
    v58 = (*(*v74 + 216))(v84);
    sub_10032F388(v54, v52, v53);
    v59 = v58(v84, 0);
    return (*(*v57 + 280))(v59);
  }

  return result;
}

uint64_t sub_10032F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100024A2C(&qword_100430D98, &qword_10039A658);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ALNIPresenceNotification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1000059A8(a1, &qword_100430D98, &qword_10039A658);
    sub_100331204(a2, a3, v10);

    return sub_1000059A8(v10, &qword_100430D98, &qword_10039A658);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100331560(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10032F560()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "ni invalidated", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return (*(*v1 + 184))(0);
}

uint64_t sub_10032F6F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return v0;
}

uint64_t sub_10032F73C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_10032F834(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v91 - v8;
  v122 = type metadata accessor for ALNIPresenceNotification();
  v118 = *(v122 - 8);
  v10 = v118[8];
  v11 = __chkstk_darwin(v122);
  v109 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v91 - v13;
  v15 = type metadata accessor for ALBtAdvertisement();
  v92 = *(v15 - 8);
  v16 = *(v92 + 64);
  v17 = __chkstk_darwin(v15);
  v108 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v91 - v19;
  v110 = type metadata accessor for Logger();
  v21 = *(v110 - 8);
  v22 = *(v21 + 8);
  v23 = __chkstk_darwin(v110);
  v112 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v91 - v26;
  v28 = *(*v1 + 176);
  v123 = *v1 + 176;
  v124 = v28;
  v29 = (v28)(v25);
  if (v29)
  {
  }

  else
  {
    v30 = (*(*v1 + 224))();
    v31 = (*((swift_isaMask & *v30) + 0xB8))();

    if ((v31 & 1) == 0)
    {
      return;
    }

    nilog.getter(v27);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v128 = v21;
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "starting NI", v34, 2u);
      v21 = v128;
    }

    (*(v21 + 1))(v27, v110);
    type metadata accessor for ALNearbyInteraction();
    v35 = (*(*v2 + 128))();
    v130[3] = type metadata accessor for ALNIResultHub();
    v130[4] = &off_100407F50;
    v130[0] = v2;

    v36 = sub_100338924(v35, v130);
    (*(*v2 + 184))(v36);
  }

  v99 = *(a1 + 16);
  if (v99)
  {
    v37 = 0;
    v38 = *(type metadata accessor for ALBtNotification() - 8);
    v98 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v125 = v92 + 16;
    v120 = v118 + 2;
    v116 = (v92 + 48);
    v115 = (v118 + 1);
    v127 = v92 + 8;
    v106 = (v118 + 6);
    v93 = (v92 + 56);
    v105 = (v21 + 8);
    v96 = "didUpdateRegion(notification:)";
    v97 = *(v38 + 72);
    *&v39 = 136315650;
    v95 = v39;
    v107 = v9;
    v117 = v14;
    v121 = v2;
    v104 = v15;
    do
    {
      v40 = ALBtNotification.advertisements.getter();
      v41 = *(v40 + 16);
      if (v41)
      {
        v101 = v37;
        v42 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v100 = v40;
        v43 = v40 + v42;
        v126 = *(v92 + 72);
        v128 = *(v92 + 16);
        (v128)(v20, v40 + v42, v15);
        while (1)
        {
          v44 = ALBtAdvertisement.identifier.getter();
          v46 = v15;
          if (v45)
          {
            v47 = v44;
            v48 = v45;
            v49 = v46;
            v50 = v124();
            if (v50)
            {
              v51 = v50;
              (*((swift_isaMask & *v50) + 0xB0))(v20);
            }

            v52 = (*(*v2 + 200))();
            if (*(v52 + 16) && (v53 = sub_10031DC00(v47, v48), (v54 & 1) != 0))
            {
              v55 = *(v52 + 56) + v118[9] * v53;
              v56 = v122;
              v119 = v118[2];
              v119(v14, v55, v122);

              ALNIPresenceNotification._deviceAdvertisement.getter();
              if ((*v116)(v9, 1, v49) == 1)
              {
                sub_1000059A8(v9, &qword_100430278, &qword_10039A230);
                v57 = (*(*v121 + 216))(v130);
                v58 = sub_100330554(&v129, v47, v48);
                if ((*v106)(v59, 1, v56))
                {
                  (v58)(&v129, 0);

                  v57(v130, 0);
                  v60 = v117;
                  v61 = v49;
                  v62 = v108;
                  v63 = v112;
                  v64 = v128;
                }

                else
                {
                  v114 = v58;
                  v65 = v94;
                  v64 = v128;
                  (v128)(v94, v20, v49);
                  (*v93)(v65, 0, 1, v49);
                  ALNIPresenceNotification._deviceAdvertisement.setter();
                  v114(&v129, 0);
                  v61 = v49;

                  v57(v130, 0);
                  v60 = v117;
                  v62 = v108;
                  v63 = v112;
                }

                nilog.getter(v63);
                v66 = v109;
                v119(v109, v60, v122);
                (v64)(v62, v20, v61);
                v67 = Logger.logObject.getter();
                v111 = static os_log_type_t.default.getter();
                v68 = os_log_type_enabled(v67, v111);
                v69 = v115;
                v114 = (v115 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                v70 = v127;
                v119 = (v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                v2 = v121;
                if (v68)
                {
                  v71 = v115;
                  v72 = v66;
                  v73 = swift_slowAlloc();
                  v103 = swift_slowAlloc();
                  v130[0] = v103;
                  *v73 = v95;
                  *(v73 + 4) = sub_10000234C(0xD00000000000001CLL, v96 | 0x8000000000000000, v130);
                  *(v73 + 12) = 2080;
                  v74 = ALNIPresenceNotification.description.getter();
                  v102 = v67;
                  v76 = v75;
                  v113 = *v71;
                  v113(v72, v122);
                  v77 = sub_10000234C(v74, v76, v130);

                  *(v73 + 14) = v77;
                  *(v73 + 22) = 2080;
                  v78 = ALBtAdvertisement.description.getter();
                  v80 = v79;
                  v81 = v62;
                  v82 = *v127;
                  v15 = v104;
                  (*v127)(v81, v104);
                  v83 = sub_10000234C(v78, v80, v130);
                  v14 = v117;

                  *(v73 + 24) = v83;
                  v84 = v102;
                  _os_log_impl(&_mh_execute_header, v102, v111, "%s matching device: %s with adv: %s", v73, 0x20u);
                  swift_arrayDestroy();

                  v85 = (*v105)(v112, v110);
                  v86 = v122;
                  v9 = v107;
                }

                else
                {

                  v87 = *v70;
                  v88 = v62;
                  v89 = v104;
                  (*v70)(v88, v104);
                  v90 = v66;
                  v86 = v122;
                  v113 = *v69;
                  v113(v90, v122);
                  v85 = (*v105)(v63, v110);
                  v9 = v107;
                  v15 = v89;
                  v82 = v87;
                  v14 = v117;
                }

                (*(*v2 + 280))(v85);
                v113(v14, v86);
                v82(v20, v15);
              }

              else
              {

                (*v115)(v14, v56);
                (*v127)(v20, v49);
                sub_1000059A8(v9, &qword_100430278, &qword_10039A230);
                v2 = v121;
                v15 = v49;
              }
            }

            else
            {

              v15 = v49;
              (*v127)(v20, v49);
            }
          }

          else
          {
            (*v127)(v20, v15);
          }

          v43 += v126;
          if (!--v41)
          {
            break;
          }

          (v128)(v20, v43, v15);
        }

        v37 = v101;
      }

      else
      {
      }

      ++v37;
    }

    while (v37 != v99);
  }
}

void (*sub_100330554(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100331A10(v6, a2, a3);
  return sub_1003305DC;
}

void sub_1003305DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10033064C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for ALNIPresenceNotification();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1003309CC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100330B2C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100330E0C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100330B2C(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v4 = sub_100024A2C(&qword_100430278, &qword_10039A230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v33 - v6;
  v41 = type metadata accessor for ALNIPresenceNotification();
  v7 = *(*(v41 - 8) + 64);
  result = __chkstk_darwin(v41);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v12 = 0;
  v43 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v39 = v9 + 16;
  v40 = v9;
  v38 = v9 + 8;
  v20 = v9;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v44 = (v18 - 1) & v18;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = v43[7];
    v26 = *(v43[6] + 16 * v24 + 8);
    v27 = *(v20 + 72);
    v37 = v24;
    v28 = v41;
    (*(v20 + 16))(v11, v25 + v27 * v24, v41);

    v29 = v42;
    ALNIPresenceNotification._deviceAdvertisement.getter();
    v30 = type metadata accessor for ALBtAdvertisement();
    v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
    sub_1000059A8(v29, &qword_100430278, &qword_10039A230);
    (*(v20 + 8))(v11, v28);

    v18 = v44;
    if (v31 != 1)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_100330E84(v35, v34, v36, v43);
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_100330E84(v35, v34, v36, v43);
    }

    v23 = v14[v12];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100330E0C(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100330B2C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100330E84(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = type metadata accessor for ALNIPresenceNotification();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

uint64_t sub_100331204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10031DC00(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100331790();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ALNIPresenceNotification();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100331374(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ALNIPresenceNotification();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_100331374(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ALNIPresenceNotification() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100331560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10031DC00(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100331790();
      goto LABEL_7;
    }

    sub_10033064C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10031DC00(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for ALNIPresenceNotification();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1003316E0(v12, a2, a3, a1, v18);
}

uint64_t sub_1003316E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ALNIPresenceNotification();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100331790()
{
  v1 = v0;
  v36 = type metadata accessor for ALNIPresenceNotification();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void (*sub_100331A10(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_100332038(v8);
  v8[9] = sub_100331B1C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100331ABC;
}

void sub_100331ABC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100331B1C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for ALNIPresenceNotification();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_100024A2C(&qword_100430D98, &qword_10039A658) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_10031DC00(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        (*(v13 + 32))(v18, *(*v5 + 56) + *(v13 + 72) * v21, v11);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_100331DF8;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_100331790();
      goto LABEL_16;
    }

    sub_10033064C(v24, a4 & 1);
    v28 = *v5;
    v29 = sub_10031DC00(a2, a3);
    if ((v25 & 1) == (v30 & 1))
    {
      v21 = v29;
      v10[11] = v29;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100331DF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_10000A0A4(v5, v6, &qword_100430D98, &qword_10039A658);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 6), *(v2 + 8), *(v2 + 3));
      v12 = *v10;
      v13 = *(v2 + 11);
      v14 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 5);
        v17 = *v2;
        v16 = *(v2 + 1);
        v11(v15, v14, *(v2 + 3));
        sub_1003316E0(v13, v17, v16, v15, v12);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 9);
    sub_10000A0A4(v5, v18, &qword_100430D98, &qword_10039A658);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v19 != 1)
    {
      v22 = *(v2 + 2);
      v11 = *(*(v2 + 4) + 32);
      v11(*(v2 + 7), *(v2 + 9), *(v2 + 3));
      v12 = *v22;
      v13 = *(v2 + 11);
      v14 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 4) + 72) * v13, v14, *(v2 + 3));
      goto LABEL_10;
    }
  }

  sub_1000059A8(v9, &qword_100430D98, &qword_10039A658);
  if (v8)
  {
    v20 = *(v2 + 11);
    v21 = **(v2 + 2);
    sub_1003322DC(*(v21 + 48) + 16 * v20);
    sub_100331374(v20, v21);
  }

LABEL_10:
  v23 = *(v2 + 9);
  v24 = *(v2 + 10);
  v26 = *(v2 + 7);
  v25 = *(v2 + 8);
  v28 = *(v2 + 5);
  v27 = *(v2 + 6);
  sub_1000059A8(v24, &qword_100430D98, &qword_10039A658);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

uint64_t (*sub_100332038(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100332060;
}

unint64_t sub_10033206C(uint64_t a1)
{
  v2 = sub_100024A2C(&unk_100430F30, &qword_10039A6E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100024A2C(&qword_100430F28, &qword_10039A6D8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000A0A4(v10, v6, &unk_100430F30, &qword_10039A6E0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10031DC00(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ALNIPresenceNotification();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100332260()
{
  result = qword_100430DA8;
  if (!qword_100430DA8)
  {
    type metadata accessor for ALNIDevicePresencePreset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100430DA8);
  }

  return result;
}

uint64_t sub_100332330(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v34 = type metadata accessor for Logger();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v32 - v14;
  v35 = a1;
  v16 = *(a1 + 16);
  if (v16 >= 2)
  {
    v36 = *(v13 + 16);
    v37 = v13 + 16;
    v17 = v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = (v13 + 8);
    v19 = *&v38;
    v33 = (v3 + 8);
    v39 = *(v13 + 72);
    for (i = 1; ; ++i)
    {
      if (!v16)
      {
        __break(1u);
        return result;
      }

      v22 = v36;
      v36(v15, v17, v7);
      v22(v11, v17 + v39, v7);
      v23 = ALWiFiScanSingleAccessPoint._ageSec.getter();
      if ((v23 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      v24 = *&v23;
      v25 = ALWiFiScanSingleAccessPoint._ageSec.getter();
      if ((v25 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      if (*&v25 > v24)
      {
        break;
      }

      v21 = *v18;
      (*v18)(v11, v7, v24, *&v25);
      result = (v21)(v15, v7);
LABEL_4:
      --v16;
      v17 += v39;
      if (v16 == 1)
      {
        return result;
      }
    }

    if ((v38 & 0x100000000) != 0)
    {
LABEL_10:
      v26 = *v18;
      (*v18)(v11, v7);
      (v26)(v15, v7);
    }

    else
    {
      v29 = vabds_f32(v24, *&v25);
      v30 = *v18;
      (*v18)(v11, v7);
      result = (v30)(v15, v7);
      if (v29 <= v19)
      {
        goto LABEL_4;
      }
    }

    v27 = corelog.getter(v6);
    __chkstk_darwin(v27);
    v28 = BYTE4(v38);
    *(&v32 - 8) = v38;
    *(&v32 - 28) = v28 & 1;
    *(&v32 - 3) = i;
    v31 = 54;
    Logger._fault(_:function:file:line:)(sub_1003326B0, (&v32 - 6), "checkInOrder(_:toleranceSec:)", 29, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    result = (*v33)(v6, v34);
    goto LABEL_4;
  }

  return result;
}

void sub_1003326B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v5._object = 0x80000001003B1A20;
  v5._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v5);
  LODWORD(v17[0]) = v1;
  BYTE4(v17[0]) = v2;
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v17, &type metadata for Float, &protocol witness table for Float);
  v6._countAndFlagsBits = 44;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v17[0] = v3;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 44;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v4 + 16);
  if (v9 >= v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(type metadata accessor for ALWiFiScanSingleAccessPoint() - 8);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14._countAndFlagsBits = ALWiFiScanSingleAccessPoint.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 44;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  if (v10 > v3)
  {
    v16._countAndFlagsBits = ALWiFiScanSingleAccessPoint.description.getter();
    String.append(_:)(v16);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100332874(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_100334B14(a1, a2, a3);

  return v6;
}

uint64_t sub_1003328DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100334B14(a1, a2, a3);

  return v4;
}

uint64_t sub_100332920()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = (*(*v0 + 184))([objc_allocWithZone(CWFInterface) init]);
  v20 = (*(*v0 + 176))(v19);
  if (v20)
  {
    v21 = v20;
    v35 = v3;
    v36 = v2;
    corelog.getter(v18);
    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = [v22 serviceType];

      _os_log_impl(&_mh_execute_header, v23, v24, "#WiFi, Leeching CoreWiFi %{public}ld", v25, 0xCu);
    }

    else
    {

      v23 = v22;
    }

    v27 = (*(v12 + 8))(v18, v11);
    v28 = *(*v1 + 128);
    v29 = (v28)(v27);
    [v22 setTargetQueue:v29];

    v44 = sub_100006D7C;
    v45 = v1;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100004830;
    v43 = &unk_100407FD8;
    v30 = _Block_copy(&aBlock);

    [v22 setEventHandler:v30];
    _Block_release(v30);
    v31 = v28();
    v44 = sub_100334CAC;
    v45 = v1;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100003EE4;
    v43 = &unk_100408000;
    v32 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v39 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    v33 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v35 + 8))(v6, v33);
    (*(v37 + 8))(v10, v38);
  }

  else
  {
    corelog.getter(v16);
    Logger._fault(_:function:file:line:)(sub_100332EC8, 0, "regCoreWiFi()", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    return (*(v12 + 8))(v16, v11);
  }
}

void *sub_100332EE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  result = (*(*v0 + 176))(v8);
  if (result)
  {
    v12 = result;
    [result activate];
    v13 = 0;
    v33 = (v3 + 8);
    *&v14 = 134349056;
    v32 = v14;
    v31 = v10;
    do
    {
      v15 = *(&off_100407FA0 + v13 + 32);
      v34 = 0;
      if ([v12 startMonitoringEventType:v15 error:&v34])
      {
        v16 = v34;
        corelog.getter(v10);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = v32;
          *(v19 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v17, v18, "#WiFi,startMonitoringEventType,%{public}ld", v19, 0xCu);
        }

        (*v33)(v10, v2);
      }

      else
      {
        v20 = v34;
        v21 = _convertNSErrorToError(_:)();

        swift_willThrow();
        corelog.getter(v7);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = v32;
          *(v24 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v22, v23, "#WiFi,activate,catch,%{public}ld", v24, 0xCu);
          v10 = v31;
        }

        (*v33)(v7, v2);
        (*(*v1 + 296))(v21);
      }

      v13 += 8;
    }

    while (v13 != 24);
    v25 = [v12 BSSID];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    (*(*v1 + 320))(v27, v29);
  }

  return result;
}

uint64_t sub_1003332D8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v43 = &v40 - v7;
  v8 = __chkstk_darwin(v6);
  v42 = &v40 - v9;
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  corelog.getter(&v40 - v15);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v5;
    v21 = v1;
    v22 = v0;
    v23 = v20;
    *v19 = 134349314;
    swift_getErrorValue();
    *(v19 + 4) = dispatch thunk of Error._code.getter();

    *(v19 + 12) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "#WiFi,exceptionHandling,code,%{public}ld,%{public}@", v19, 0x16u);
    sub_10000ACB4(v23);
    v0 = v22;
    v1 = v21;
    v5 = v40;
  }

  else
  {
  }

  v25 = *(v1 + 8);
  v25(v16, v0);
  swift_getErrorValue();
  v26 = dispatch thunk of Error._code.getter();
  if (v26 <= 4096)
  {
    if (v26 == 60)
    {
      v27 = v43;
      corelog.getter(v43);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "#WiFi,exceptionHandling,timeout";
        goto LABEL_19;
      }

LABEL_20:

      v14 = v27;
      return (v25)(v14, v0);
    }

    if (v26 == 82)
    {
      v27 = v42;
      corelog.getter(v42);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "#WiFi,exceptionHandling,poweredOff";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v26 == 4097)
  {
    v27 = v41;
    corelog.getter(v41);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "#WiFi,exceptionHandling,interrupted";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v26 != 4099)
  {
LABEL_14:
    v37 = corelog.getter(v5);
    __chkstk_darwin(v37);
    v39 = 136;
    Logger._fault(_:function:file:line:)(sub_100334CD8, (&v40 - 4), "exceptionHandling(_:)", 21, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreWiFi.swift", 73, 2);
    v14 = v5;
    return (v25)(v14, v0);
  }

  corelog.getter(v14);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0;
    v35 = swift_slowAlloc();
    *v35 = 67240192;
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v36 = dispatch thunk of PlatformInfo.virtual.getter();

    *(v35 + 4) = v36 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "#WiFi,exceptionHandling,unloaded,virtual,%{BOOL,public}d", v35, 8u);
    v0 = v34;
  }

  return (v25)(v14, v0);
}

uint64_t sub_100333868(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000DB14(a1, a2);
  (*(*v2 + 208))(v10, v11 & 1);
  corelog.getter(v9);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      a1 = 1953722220;
      v16 = 0xE400000000000000;
    }

    v17 = sub_10000234C(a1, v16, &v20);

    *(v14 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "#WiFi,updateAssociatedMac,%s", v14, 0xCu);
    sub_100002580(v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100333A74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = __chkstk_darwin(v1);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v75 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v75 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v75 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v75 - v17;
  v19 = (*(*v0 + 176))(v16);
  if (!v19 || (v20 = v19, v21 = [v19 backgroundScanCache], v20, !v21))
  {
    corelog.getter(v6);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "processBackgroundScanCache,backgroundScanCache,nil", v60, 2u);
    }

    return (*(v2 + 1))(v6, v1);
  }

  v86 = v15;
  v88 = sub_10000ABCC(0, &qword_100430FC0, CWFScanResult_ptr);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v90 = v22 >> 62;
  if (v22 >> 62)
  {
LABEL_87:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_88:

    corelog.getter(v18);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "processBackgroundScanCache,empty", v74, 2u);
    }

    return (*(v2 + 1))(v18, v1);
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_88;
  }

LABEL_5:
  v82 = v12;
  v83 = v9;
  v85 = v1;
  v25 = 0;
  v26 = 0;
  v9 = (v22 & 0xC000000000000001);
  v1 = v22 & 0xFFFFFFFFFFFFFF8;
  v91 = v22 + 32;
  v84 = (v2 + 8);
  if (v22 < 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v22 & 0xFFFFFFFFFFFFFF8;
  }

  v87 = v27;
  v80 = v1 + 32;
  v81 = v0;
  *&v23 = 134349312;
  v77 = v23;
  *&v23 = 138477827;
  v78 = v23;
  v92 = v24;
  v93 = v22 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v89 = v25;
    v12 = ((2 * v26) | 1);
    v25 = v26;
    while (1)
    {
      if (v9)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v1 + 16))
        {
          goto LABEL_81;
        }

        v28 = *(v22 + 8 * v25 + 32);
      }

      v2 = v28;
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v25)
      {
        v29 = [v28 timestamp];
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        v18 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          goto LABEL_83;
        }

        v0 = v29;
        if (v9)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if (v18 >= *(v1 + 16))
          {
            goto LABEL_86;
          }

          v30 = *(v91 + 8 * v18);
        }

        v31 = v30;
        v1 = [v30 timestamp];

        if (v1 < 0)
        {
          goto LABEL_84;
        }

        v32 = v0 - v1;
        if (v0 - v1 < 0)
        {
          v32 = v1 - v0;
        }

        v24 = v92;
        v1 = v93;
        if (v32 > 0x773593FF)
        {
          break;
        }
      }

      ++v25;
      v12 += 2;
      if (v26 == v24)
      {
        v25 = v89;
LABEL_61:
        if (v90)
        {
          v62 = _CocoaArrayWrapper.endIndex.getter();
          if (v25 < v62)
          {
            v61 = v62;
            result = _CocoaArrayWrapper.endIndex.getter();
            if (result < v25)
            {
              goto LABEL_94;
            }

            result = _CocoaArrayWrapper.endIndex.getter();
LABEL_68:
            if (result < v61)
            {
              goto LABEL_95;
            }

            if (v9)
            {

              if (v25 != v61)
              {
                v63 = v25;
                do
                {
                  v64 = v63 + 1;
                  _ArrayBuffer._typeCheckSlowPath(_:)(v63);
                  v63 = v64;
                }

                while (v61 != v64);
              }
            }

            else
            {
            }

            v66 = v80;
            v65 = v81;
            if (v90)
            {
              v1 = _CocoaArrayWrapper.subscript.getter();
              v66 = v68;
              v25 = v69;
              v67 = v70;
            }

            else
            {
              v67 = (2 * v61) | 1;
            }

            v95 = sub_100024A2C(&qword_100430FC8, &qword_10039A728);
            v96 = sub_100006E30(&unk_100430FD0, &qword_100430FC8, &qword_10039A728);
            v71 = swift_allocObject();
            v94[0] = v71;
            v71[2] = v1;
            v71[3] = v66;
            v71[4] = v25;
            v71[5] = v67;
            (*(*v65 + 304))(v94, 1);
            return sub_100002580(v94);
          }
        }

        else
        {
          v61 = *(v1 + 16);
          if (v25 < v61)
          {
            result = *(v1 + 16);
            if (result < v25)
            {
              goto LABEL_94;
            }

            goto LABEL_68;
          }
        }
      }
    }

    corelog.getter(v86);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = v77;
      *(v36 + 4) = v25;
      *(v36 + 12) = 2050;
      *(v36 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v33, v34, "processBackgroundScanCache,newGroup,idx,%{public}ld,start,%{public}ld", v36, 0x16u);
      v1 = v93;
    }

    v79 = *v84;
    v79(v86, v85);
    corelog.getter(v82);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    LODWORD(v76) = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v75 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = v78;
      if (v9)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v91 + 8 * v18);
      }

      *(v39 + 4) = v41;
      *v40 = v41;
      v42 = v75;
      _os_log_impl(&_mh_execute_header, v75, v76, "processBackgroundScanCache,newGroup,pre,%{private}@", v39, 0xCu);
      sub_10000ACB4(v40);

      v37 = v42;
    }

    v79(v82, v85);
    corelog.getter(v83);
    v43 = v2;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = v78;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "processBackgroundScanCache,newGroup,new,%{private}@", v46, 0xCu);
      sub_10000ACB4(v47);
      v1 = v93;
    }

    result = (v79)(v83, v85);
    v50 = v89;
    if (v25 < v89)
    {
      __break(1u);
      break;
    }

    if (v90)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v50)
      {
        break;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_44;
    }

    result = *(v1 + 16);
    if (result < v89)
    {
      break;
    }

LABEL_44:
    if (result < v25)
    {
      goto LABEL_93;
    }

    if (!v9 || v50 == v25)
    {
    }

    else
    {
      if (v50 >= v25)
      {
        goto LABEL_96;
      }

      v51 = v50;
      do
      {
        v52 = v51 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v51);
        v51 = v52;
      }

      while (v25 != v52);
    }

    v76 = v43;
    if (v90)
    {

      v79 = _CocoaArrayWrapper.subscript.getter();
      v18 = v54;
      v53 = v55;
      v12 = v56;
    }

    else
    {
      v79 = v1;
      v18 = v80;
      v53 = v89;
    }

    v2 = &qword_10039A728;
    v95 = sub_100024A2C(&qword_100430FC8, &qword_10039A728);
    v96 = sub_100006E30(&unk_100430FD0, &qword_100430FC8, &qword_10039A728);
    v57 = swift_allocObject();
    v0 = v81;
    v94[0] = v57;
    v57[2] = v79;
    v57[3] = v18;
    v57[4] = v53;
    v57[5] = v12;
    (*(*v0 + 304))(v94, 1);

    sub_100002580(v94);
    v24 = v92;
    if (v26 == v92)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_100334508()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_100334540()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  return _swift_deallocClassInstance(v0, 88, 7);
}

unsigned __int8 *sub_100334590(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003279E8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100334B14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  v5 = (v3 + 80);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v6 = a1;

  v7 = *(**sub_100334FA4() + 104);

  v7(&v14, 0xD000000000000020, 0x80000001003B19F0, &type metadata for Double);

  if (v15)
  {
    v8 = 3.0;
  }

  else
  {
    v8 = v14;
  }

  type metadata accessor for ALDebounce();
  v9 = v6;

  v10 = sub_10032AD5C(v9, sub_100008BBC, v3, v8);
  swift_beginAccess();
  v11 = *v5;
  *v5 = v10;

  (*(*v4 + 280))(v12);
  return v4;
}

uint64_t sub_100334CD8()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(34);
  v2._object = 0x80000001003B19A0;
  v2._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100334E88()
{
  v1 = *(v0 + 16);
  v2._countAndFlagsBits = 0x6E6F2C6946695723;
  v2._object = 0xED00002C61746144;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100334F78()
{
  type metadata accessor for PersistentConfig();
  result = swift_initStaticObject();
  qword_10048BF38 = result;
  return result;
}

uint64_t *sub_100334FA4()
{
  if (qword_10048BF30 != -1)
  {
    swift_once();
  }

  return &qword_10048BF38;
}

uint64_t static PersistentConfig.instance.getter()
{
  type metadata accessor for PersistentConfig();

  return swift_initStaticObject();
}

unint64_t sub_100335024(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v8 = dispatch thunk of PlatformInfo.systemVersionDescriptionNoSpace()();
  v10 = v9;

  if (!*(v7 + 16))
  {

    goto LABEL_11;
  }

  v11 = sub_10031DC00(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_11:
    v18 = sub_100335270(v7);

    return v18;
  }

  sub_100002524(*(v7 + 56) + 32 * v11, v20);

  sub_100323E60(v20, v21);
  sub_100002524(v21, v20);
  sub_100024A2C(&qword_1004311D8, &unk_10039A7B0);
  if (!swift_dynamicCast())
  {
LABEL_13:
    sub_100002580(v21);
    return 0;
  }

  if (!*(v19 + 16) || (v14 = sub_10031DC00(a1, a2), (v15 & 1) == 0))
  {

    goto LABEL_13;
  }

  v16 = *(*(v19 + 56) + 8 * v14);
  swift_unknownObjectRetain();
  sub_100002580(v21);

  *&v20[0] = v16;
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100335270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024A2C(&qword_1004312B0, &qword_10039A808);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        sub_100002524(*(a1 + 56) + 32 * v16, v31);
        *&v30 = v18;
        *(&v30 + 1) = v19;
        v28 = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v20 = v30;
        sub_100323E60(v29, &v26);

        swift_dynamicCast();
        v21 = v27;
        result = sub_10031DC00(v20, *(&v20 + 1));
        if (v22)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v20;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v20;
          *(v2[7] + 8 * result) = v21;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003354B0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dictionaryForKey:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16) && (v8 = sub_10031DC00(a1, a2), (v9 & 1) != 0))
  {
    sub_100002524(*(v7 + 56) + 32 * v8, v12);

    v10 = 1;
  }

  else
  {

    v10 = 0;
    memset(v12, 0, sizeof(v12));
  }

  sub_100335D50(v12);
  return v10;
}

BOOL sub_1003355F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100323E60(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100335D50(v5);
  return v2 != 0;
}

uint64_t sub_100335718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v13 = *a3;
  v12 = a3[1];
  (*(v14 + 16))(&v17 - v10, a1);
  v15 = *(**a2 + 112);

  return v15(v11, v13, v12, v7);
}

uint64_t sub_100335838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*v4 + 96))())
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForKey:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100323E60(&v22, v23);
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v17 = &qword_10042EF90;
    v18 = &qword_100399100;
LABEL_12:
    sub_100024A2C(v17, v18);
    v19 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v19 ^ 1u, 1, a3);
  }

  v12 = (*(*v4 + 80))(a1, a2);
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 16) && (v14 = sub_10031DC00(a1, a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      swift_unknownObjectRetain();
    }

    else
    {

      v16 = 0;
    }

    *&v23[0] = v16;
    v17 = &unk_1004311E0;
    v18 = &unk_10039A7C0;
    goto LABEL_12;
  }

  v21 = *(*(a3 - 8) + 56);

  return v21(a4, 1, 1, a3);
}

uint64_t sub_100335A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100335DB8(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*sub_100335AEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_100335838(a2, a3, a4, v13);
  return sub_100335C1C;
}

void sub_100335C1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    sub_100335DB8(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    v11 = (*a1)[1];

    sub_100335DB8(v4, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_100335D50(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_10042EF90, &qword_100399100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100335DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  (*(v7 + 16))(v10, a1, v6);
  v12 = *(a4 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, a4) != 1)
  {
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v10, a4);
  }

  v14 = String._bridgeToObjectiveC()();

  [v11 setObject:v13 forKey:v14];

  swift_unknownObjectRelease();
}

void *sub_100335FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_10033603C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *sub_100336084(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_1003361A0();
  sub_100336864();

  return v6;
}

void *sub_1003360FC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = *(*v3 + 216);
  v5 = a1;

  v7 = v4(v6);
  (*(*v3 + 224))(v7);

  return v3;
}

uint64_t sub_1003361A0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  scanlog.getter(&v34 - v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reg discovery BT on AP from CB", v20, 2u);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = (*(*v1 + 168))([objc_allocWithZone(CBDiscovery) init]);
  v23 = (*(*v1 + 160))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = *(*v1 + 112);
    v26 = v25();
    [v24 setDispatchQueue:v26];

    [v24 addDiscoveryType:29];
    [v24 setUseCase:269];
    [v24 setDiscoveryFlags:0x2000000];
    v44 = sub_100336E0C;
    v45 = v1;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100336784;
    v43 = &unk_100408138;
    v27 = _Block_copy(&aBlock);

    [v24 setDevicesBufferedHandler:v27];
    _Block_release(v27);
    v28 = v25();
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v1;
    v44 = sub_100336E78;
    v45 = v29;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100003EE4;
    v43 = &unk_100408188;
    v30 = _Block_copy(&aBlock);

    v31 = v24;
    static DispatchQoS.unspecified.getter();
    v39 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v32 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v37 + 8))(v5, v32);
    (*(v35 + 8))(v9, v36);
  }

  else
  {
    scanlog.getter(v15);
    Logger._fault(_:function:file:line:)(sub_100336768, 0, "regDiscovery()", 14, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);
    return (v21)(v15, v10);
  }
}

uint64_t sub_100336784(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100338464();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1003367F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100336864()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  scanlog.getter(&v34 - v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reg leeching BT on AP from CB", v20, 2u);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = (*(*v1 + 192))([objc_allocWithZone(CBDiscovery) init]);
  v23 = (*(*v1 + 184))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = *(*v1 + 112);
    v26 = v25();
    [v24 setDispatchQueue:v26];

    [v24 setDiscoveryFlags:0x10120001C080];
    v44 = sub_100004898;
    v45 = v1;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100004830;
    v43 = &unk_1004081B0;
    v27 = _Block_copy(&aBlock);

    [v24 setDeviceFoundHandler:v27];
    _Block_release(v27);
    v28 = v25();
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v1;
    v44 = sub_100338114;
    v45 = v29;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100003EE4;
    v43 = &unk_100408200;
    v30 = _Block_copy(&aBlock);

    v31 = v24;
    static DispatchQoS.unspecified.getter();
    v39 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v32 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v37 + 8))(v5, v32);
    (*(v35 + 8))(v9, v36);
  }

  else
  {
    scanlog.getter(v15);
    Logger._fault(_:function:file:line:)(sub_100336E98, 0, "regLeeching()", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);
    return (v21)(v15, v10);
  }
}

void sub_100336E0C(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  (*(*v1 + 240))(a1);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100336EBC(unint64_t a1)
{
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  __chkstk_darwin(v63);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Logger();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v74);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ALBtAdvertisement();
  v75 = *(v80 - 8);
  v10 = *(v75 + 64);
  v11 = __chkstk_darwin(v80);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  __chkstk_darwin(v14);
  v76 = &v56 - v17;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xE100000000000000;
    v20 = 95;
  }

  aBlock = v20;
  v83 = v22;

  v23._countAndFlagsBits = 0x666675622E74622ELL;
  v23._object = 0xEB00000000647265;
  String.append(_:)(v23);

  String.utf8CString.getter();

  v56 = os_transaction_create();

  v79 = swift_allocObject();
  *(v79 + 16) = &_swiftEmptyArrayStorage;
  v73 = v13;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v76;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_20:
    v49 = v57;
    v50 = (*(*v57 + 112))();
    v51 = swift_allocObject();
    v51[2] = v56;
    v51[3] = v49;
    v51[4] = v79;
    v86 = sub_1003381E0;
    v87 = v51;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100003EE4;
    v85 = &unk_1004082C8;
    v52 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v53 = v58;
    static DispatchQoS.unspecified.getter();
    v81 = &_swiftEmptyArrayStorage;
    sub_100005E70(&qword_100430F40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v54 = v60;
    v55 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);
    swift_unknownObjectRelease();

    (*(v62 + 8))(v54, v55);
    (*(v59 + 8))(v53, v61);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v26 = v76;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (result >= 1)
  {
    v27 = v6;
    v28 = 0;
    v78 = (v75 + 16);
    v69 = v75 + 32;
    v70 = a1 & 0xC000000000000001;
    v67 = (v27 + 8);
    v68 = (v75 + 8);
    *&v24 = 136315138;
    v64 = v24;
    v66 = a1;
    v65 = v9;
    v71 = result;
    v72 = v16;
    do
    {
      if (v70)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(a1 + 8 * v28 + 32);
      }

      v77 = v31;
      sub_1000050EC(v77, v26);
      v32 = *v78;
      (*v78)(v16, v26, v80);
      v33 = *(v79 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_100326598(0, v33[2] + 1, 1, v33);
        *(v79 + 16) = v33;
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        v33 = sub_100326598(v34 > 1, v35 + 1, 1, v33);
      }

      v33[2] = v35 + 1;
      v36 = v80;
      (*(v75 + 32))(v33 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v35, v16, v80);
      *(v79 + 16) = v33;
      scanlog.getter(v9);
      v37 = v73;
      v26 = v76;
      v32(v73, v76, v36);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = v64;
        v42 = ALBtAdvertisement.description.getter();
        v44 = v43;
        v45 = *v68;
        (*v68)(v37, v80);
        v46 = sub_10000234C(v42, v44, &aBlock);

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "#BT,onDevicesBuffered,%s", v40, 0xCu);
        sub_100002580(v41);
        v47 = v74;
        v9 = v65;

        a1 = v66;

        (*v67)(v9, v47);
        v48 = v76;
        v45(v76, v80);
        v26 = v48;
      }

      else
      {

        v29 = *v68;
        v30 = v80;
        (*v68)(v37, v80);
        (*v67)(v9, v74);
        v29(v26, v30);
      }

      ++v28;
      v16 = v72;
    }

    while (v71 != v28);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003377B8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  result = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  if (!a1)
  {
    return result;
  }

  swift_getErrorValue();
  swift_errorRetain();
  result = dispatch thunk of Error._code.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result == -71142)
  {
    scanlog.getter(v10);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "#BT,onCBError,interrupted,%{public}@", v21, 0xCu);
      sub_1000059A8(v22, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    v13 = v10;
  }

  else if (result == -71148)
  {
    scanlog.getter(v13);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "#BT,onCBError,bluetoothdUnloaded,%{public}@", v16, 0xCu);
      sub_1000059A8(v17, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }
  }

  else
  {
    v24 = scanlog.getter(v7);
    __chkstk_darwin(v24);
    v25 = 135;
    Logger._fault(_:function:file:line:)(sub_10033830C, (&v26 - 4), "onCBError(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALLeechCoreBluetooth.swift", 78, 2);

    v13 = v7;
  }

  return (*(v3 + 8))(v13, v2);
}

uint64_t sub_100337BC0()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_100337BF8()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100337C48@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  v8 = __chkstk_darwin(v6);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v16);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v11;
    v21 = v6;
    v22 = a3;
    v23 = v20;
    *v20 = 67109376;
    *(v20 + 4) = a2 & 1;
    *(v20 + 8) = 256;
    *(v20 + 10) = [v17 primaryBudSide];

    _os_log_impl(&_mh_execute_header, v18, v19, "ALBtAdvInfoType7.Placement,isLeftBud,%{BOOL}d,budSide,%hhu", v23, 0xBu);
    a3 = v22;
    v6 = v21;
    v11 = v41;
  }

  else
  {

    v18 = v17;
  }

  (*(v13 + 8))(v16, v12);
  v24 = [v17 primaryBudSide];
  if (v24 == 2)
  {
    v32 = &selRef_secondaryPlacement;
    if ((a2 & 1) == 0)
    {
      v32 = &selRef_primaryPlacement;
    }

    v33 = [v17 *v32];
    v27 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    v34 = &enum case for ALBtAdvInfoType7.Placement.onNeck(_:);
    v35 = &enum case for ALBtAdvInfoType7.Placement.disabled(_:);
    if (v33 != 7)
    {
      v35 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v33 != 6)
    {
      v34 = v35;
    }

    v36 = &enum case for ALBtAdvInfoType7.Placement.offEar(_:);
    if (v33 != 5)
    {
      v36 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v33 == 4)
    {
      v36 = &enum case for ALBtAdvInfoType7.Placement.onEar(_:);
    }

    if (v33 <= 5)
    {
      v34 = v36;
    }

    if (v33 == 3)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.inCase(_:);
    }

    if (v33 == 2)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.outOfEar(_:);
    }

    if (v33 == 1)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.inEar(_:);
    }

    if (v33 > 3)
    {
      v27 = v34;
    }

    v11 = v42;
  }

  else
  {
    if (v24 != 1)
    {
      v38 = 1;
      v37 = v43;
      return (*(v37 + 56))(a3, v38, 1, v6);
    }

    v25 = &selRef_primaryPlacement;
    if ((a2 & 1) == 0)
    {
      v25 = &selRef_secondaryPlacement;
    }

    v26 = [v17 *v25];
    v27 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    v28 = &enum case for ALBtAdvInfoType7.Placement.onNeck(_:);
    v29 = &enum case for ALBtAdvInfoType7.Placement.disabled(_:);
    if (v26 != 7)
    {
      v29 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v26 != 6)
    {
      v28 = v29;
    }

    v30 = &enum case for ALBtAdvInfoType7.Placement.onEar(_:);
    v31 = &enum case for ALBtAdvInfoType7.Placement.offEar(_:);
    if (v26 != 5)
    {
      v31 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
    }

    if (v26 != 4)
    {
      v30 = v31;
    }

    if (v26 <= 5)
    {
      v28 = v30;
    }

    if (v26 == 3)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.inCase(_:);
    }

    if (v26 == 2)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.outOfEar(_:);
    }

    if (v26 == 1)
    {
      v27 = &enum case for ALBtAdvInfoType7.Placement.inEar(_:);
    }

    if (v26 > 3)
    {
      v27 = v28;
    }
  }

  v37 = v43;
  (*(v43 + 104))(v11, *v27, v6);
  (*(v37 + 32))(a3, v11, v6);
  v38 = 0;
  return (*(v37 + 56))(a3, v38, 1, v6);
}

uint64_t sub_100338084@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 6)
  {
    v6 = &enum case for ALBtAdvInfoType7.Placement.unknown(_:);
  }

  else
  {
    v6 = *(&off_100408340 + (a1 - 1));
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

void sub_100338134(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[4] = a1;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1003367F8;
  v6[3] = a2;
  v5 = _Block_copy(v6);

  [v3 activateWithCompletion:v5];
  _Block_release(v5);
}

uint64_t sub_1003381E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(*v1 + 248);

  v4(v5, 0);
}

uint64_t sub_10033826C()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(20);
  v2._object = 0x80000001003B1BC0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10033830C()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(27);
  v2._object = 0x80000001003B1BA0;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  swift_getErrorValue();
  dispatch thunk of Error._code.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 44;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100338464()
{
  result = qword_100431440;
  if (!qword_100431440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100431440);
  }

  return result;
}

id sub_1003384E4()
{
  v0 = objc_allocWithZone(NISession);

  return [v0 init];
}

id sub_10033851C()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100338570(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_100338628@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100338638@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
  swift_beginAccess();
  return sub_100338690(v1 + v3, a1);
}

uint64_t sub_100338690(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431460, &unk_10039A890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100338700(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
  swift_beginAccess();
  sub_100338760(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100338760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431460, &unk_10039A890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100338830()
{
  v0 = *(**sub_100334FA4() + 104);

  v0(v2, 0x6F4D74736554696ELL, 0xEB000000006C6564, &type metadata for String);

  if (v2[1])
  {
    return v2[0];
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1003388E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel);
  v2 = *(v0 + OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel + 8);

  return v1;
}

uint64_t sub_100338968(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
  *&v3[v6] = [objc_allocWithZone(NISession) init];
  v7 = &v3[OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = *(**sub_100334FA4() + 104);

  v8(&v33, 0x6F4D74736554696ELL, 0xEB000000006C6564, &type metadata for String);

  v9 = 0x80000001003B1C00;
  v10 = v33;
  if (v34)
  {
    v9 = v34;
  }

  else
  {
    v10 = 0xD000000000000015;
  }

  v11 = &v3[OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel];
  *v11 = v10;
  v11[1] = v9;
  v12 = objc_allocWithZone(NIRegionPredicate);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithName:v13 devicePresencePreset:1];

  v15 = objc_allocWithZone(NIRegionPredicate);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithName:v16 devicePresencePreset:5];

  v18 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v33 = 0;
  v19 = v14;
  v20 = v17;
  v21 = [v18 initWithInnerBoundary:v19 outerBoundary:v20 error:&v33];
  if (v21)
  {
    v22 = v21;
    v23 = v33;

    [v22 setAllowedDevices:4];
    v32.receiver = v3;
    v32.super_class = type metadata accessor for ALNearbyInteraction();
    v24 = objc_msgSendSuper2(&v32, "init");
    v25 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_session;
    swift_beginAccess();
    v26 = *&v24[v25];
    v27 = v24;
    [v26 setDelegate:v27];
    [*&v24[v25] setDelegateQueue:a1];
    v28 = *&v24[v25];
    [v28 runWithConfiguration:v22];

    v29 = OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction_client;
    swift_beginAccess();
    sub_100338760(a2, &v27[v29]);
    swift_endAccess();

    return v27;
  }

  else
  {
    v31 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_100338CDC()
{
  (*((swift_isaMask & *v0) + 0xB8))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALNearbyInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100338E44(void *a1, void *a2, void *a3)
{
  v6 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  ALNIPresenceNotification.init()();
  static ALTimeStamp.now()();
  v14 = type metadata accessor for ALTimeStamp();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  ALNIPresenceNotification._timestamp.setter();
  ALNIPresenceNotification._simulated.setter();
  if (a1 && (v15 = [a1 deviceIdentifier]) != 0)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ALNIPresenceNotification._deviceId.setter();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ALNIPresenceNotification._deviceId.setter();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v17 = a2;
  v18 = [v17 devicePresencePreset];
  v19 = type metadata accessor for ALNIDevicePresencePreset();
  v20 = *(v19 - 8);
  if (v18 > 6)
  {
    v21 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
  }

  else
  {
    v21 = *(&off_1004083A0 + v18);
  }

  (*(*(v19 - 8) + 104))(v9, *v21, v19);
  (*(v20 + 56))(v9, 0, 1, v19);
  ALNIPresenceNotification._region.setter();

LABEL_10:
}

void sub_1003391C8()
{
  v1 = v0;
  v2 = ALBtAdvertisement.rssidB.getter();
  if ((v2 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  ALBtAdvertisement.identifier.getter();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel);
  v6 = *(v0 + OBJC_IVAR____TtC8ALDaemon19ALNearbyInteraction__testModel + 8);
  v7 = ALBtAdvertisement.channel.getter();
  if ((v7 & 0x100000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = ALBtAdvertisement.machContTimeSec.getter();
  if (v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *&v9;
  v12 = objc_allocWithZone(NIBluetoothSample);
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithRSSI:v13 identifier:v14 model:v8 channel:v3 machContinuousTimeSeconds:v11];

  v16 = (*((swift_isaMask & *v1) + 0x68))();
  v17 = [v16 devicePresenceNotifier];

  [v17 notifyBluetoothSample:v15];
}

void sub_10033935C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "tearing down", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*((swift_isaMask & *v1) + 0x68))(v10);
  [v11 invalidate];
}

uint64_t sub_100339548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 devicePresencePreset];
  v4 = type metadata accessor for ALNIDevicePresencePreset();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 6)
  {
    v6 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
  }

  else
  {
    v6 = *(&off_1004083A0 + v3);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_100339604(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100024A2C(&unk_100431470, &qword_10039A668);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v58 - v10;
  v12 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v64 = &v58 - v14;
  v15 = type metadata accessor for ALNIPresenceNotification();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  v17 = __chkstk_darwin(v15);
  v70 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v58 - v19;
  v20 = type metadata accessor for Logger();
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  __chkstk_darwin(v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v23);
  v62 = a3;
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v65 = a2;
  v63 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v60 = v11;
    v31 = v30;
    v32 = swift_slowAlloc();
    v59 = v4;
    v33 = v26;
    v34 = a2;
    v35 = v32;
    v36 = swift_slowAlloc();
    v61 = v15;
    v37 = v36;
    v74[0] = v36;
    *v31 = 136315906;
    *(v31 + 4) = sub_10000234C(0xD000000000000031, 0x80000001003B1D10, v74);
    *(v31 + 12) = 2112;
    *(v31 + 14) = v25;
    *(v31 + 22) = 2112;
    *(v31 + 24) = v33;
    *v35 = v25;
    v35[1] = v34;
    v26 = v33;
    v4 = v59;
    *(v31 + 32) = 2112;
    *(v31 + 34) = v24;
    v35[2] = v62;
    v38 = v25;
    v39 = v26;
    v40 = v24;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s object: %@, region: %@, previousRegion: %@", v31, 0x2Au);
    sub_100024A2C(&unk_10042F020, &qword_100399AE0);
    swift_arrayDestroy();

    sub_100002580(v37);
    v15 = v61;

    v11 = v60;
  }

  v41 = (*(v68 + 8))(v23, v69);
  (*((swift_isaMask & *v4) + 0x80))(v74, v41);
  v42 = v70;
  if (!v74[3])
  {
    return sub_1000059A8(v74, &qword_100431460, &unk_10039A890);
  }

  v43 = v26;
  sub_10000D9FC(v74, v71);
  sub_1000059A8(v74, &qword_100431460, &unk_10039A890);
  v44 = v72;
  v45 = v73;
  sub_10000D9B8(v71, v72);
  ALNIPresenceNotification.init()();
  v46 = v64;
  static ALTimeStamp.now()();
  v47 = type metadata accessor for ALTimeStamp();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  ALNIPresenceNotification._timestamp.setter();
  ALNIPresenceNotification._simulated.setter();
  v48 = [v63 deviceIdentifier];
  if (v48)
  {
    v49 = v48;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ALNIPresenceNotification._deviceId.setter();
  if (v65)
  {
    v51 = v43;
    v52 = [v51 devicePresencePreset];
    v53 = type metadata accessor for ALNIDevicePresencePreset();
    v54 = *(v53 - 8);
    if (v52 > 6)
    {
      v55 = &enum case for ALNIDevicePresencePreset.unspecified(_:);
    }

    else
    {
      v55 = *(&off_1004083A0 + v52);
    }

    (*(*(v53 - 8) + 104))(v11, *v55, v53);
    (*(v54 + 56))(v11, 0, 1, v53);
    v42 = v70;
    ALNIPresenceNotification._region.setter();
  }

  v57 = v66;
  v56 = v67;
  (*(v67 + 32))(v66, v42, v15);
  (*(v45 + 16))(v57, v44, v45);
  (*(v56 + 8))(v57, v15);
  return sub_100002580(v71);
}

uint64_t sub_100339C38()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  nilog.getter(v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10000234C(0xD00000000000001DLL, 0x80000001003B1CF0, v20);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s invalidated %@", v9, 0x16u);
    sub_1000059A8(v10, &unk_10042F020, &qword_100399AE0);

    sub_100002580(v11);
  }

  v13 = (*(v3 + 8))(v6, v2);
  (*((swift_isaMask & *v1) + 0x80))(v20, v13);
  if (!v20[3])
  {
    return sub_1000059A8(v20, &qword_100431460, &unk_10039A890);
  }

  sub_10000D9FC(v20, v17);
  sub_1000059A8(v20, &qword_100431460, &unk_10039A890);
  v14 = v18;
  v15 = v19;
  sub_10000D9B8(v17, v18);
  (*(v15 + 8))(v14, v15);
  return sub_100002580(v17);
}

id sub_100339F2C()
{
  v0 = [objc_opt_self() sharedBacklight];

  return v0;
}

uint64_t sub_100339FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10033A04C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_10033A100()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_10033A16C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10033B910;
}

uint64_t sub_10033A22C(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100024A2C(&qword_100431570, &qword_10039A948);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10033A364(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ALDaemon11ALBacklight__state;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100024A2C(&qword_100431570, &qword_10039A948);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10033B914;
}

uint64_t sub_10033A504()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10033A578@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10033A630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_10033A69C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10033A740;
}

void sub_10033A744(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10033A7C8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_100024A2C(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10033A840(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100024A2C(&unk_100431580, &unk_10039A9A0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10033A978(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ALDaemon11ALBacklight__isScreenOn;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100024A2C(&unk_100431580, &unk_10039A9A0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10033AAE8;
}

void sub_10033AAEC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_10033AC54()
{
  result = [objc_allocWithZone(type metadata accessor for ALBacklight()) init];
  qword_1004352A0 = result;
  return result;
}

uint64_t *sub_10033AC88()
{
  if (qword_10048BF60 != -1)
  {
    swift_once();
  }

  return &qword_1004352A0;
}

id sub_10033ACD8()
{
  if (qword_10048BF60 != -1)
  {
    swift_once();
  }

  v0 = qword_1004352A0;

  return v0;
}

char *sub_10033AD34()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100431578, &qword_10039A950);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v31 = &v29 - v4;
  v5 = sub_100024A2C(&qword_100431590, &unk_10039A9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = &v29 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService;
  *&v1[v14] = [objc_opt_self() sharedBacklight];
  *&v1[OBJC_IVAR____TtC8ALDaemon11ALBacklight_cancellables] = &_swiftEmptySetSingleton;
  backlightlog.getter(v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "init", v17, 2u);
    v9 = v30;
  }

  (*(v10 + 8))(v13, v9);
  v18 = [*&v1[v14] backlightState];
  swift_beginAccess();
  v36 = v18;
  type metadata accessor for BLSBacklightState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v19 = ([*&v1[v14] backlightState] & 0xFFFFFFFFFFFFFFFELL) == 2;
  swift_beginAccess();
  LOBYTE(v36) = v19;
  Published.init(initialValue:)();
  swift_endAccess();
  v20 = type metadata accessor for ALBacklight();
  v35.receiver = v1;
  v35.super_class = v20;
  v21 = objc_msgSendSuper2(&v35, "init");
  v22 = *&v21[OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService];
  v23 = v21;
  v24 = [v22 addObserver:v23];
  v25 = v31;
  (*((swift_isaMask & *v23) + 0xA0))(v24);
  sub_100006E30(&qword_1004315A8, &qword_100431578, &qword_10039A950);
  v26 = v32;
  Publisher.map<A>(_:)();
  (*(v33 + 8))(v25, v2);
  v27 = (*((swift_isaMask & *v23) + 0xE0))(v34);
  sub_100006E30(&qword_1004315B0, &qword_100431590, &unk_10039A9B0);
  Publisher<>.assign(to:)();
  (*(v6 + 8))(v26, v5);
  v27(v34, 0);

  return v23;
}

id sub_10033B28C()
{
  [*&v0[OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALBacklight();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10033B49C(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  sub_10033B594(v8, a5);
  swift_unknownObjectRelease();
}

void *sub_10033B52C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for ALBacklight()
{
  result = qword_10048BF98;
  if (!qword_10048BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10033B594(void *a1, const char *a2)
{
  v4 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  backlightlog.getter(v10);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v11 state];

    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 0xCu);
  }

  else
  {

    v12 = v11;
  }

  (*(v7 + 8))(v10, v6);
  v15 = [v11 state];
  return (*((swift_isaMask & *v4) + 0x90))(v15);
}

void sub_10033B760()
{
  sub_10033B868();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10033B8C0(319, &qword_100431648, &type metadata for Bool, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033B868()
{
  if (!qword_100431640)
  {
    type metadata accessor for BLSBacklightState(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100431640);
    }
  }
}

void sub_10033B8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10033B920(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_10033B960(uint64_t *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10033B9AC;
}

void sub_10033B9AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_10033B9EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALResultOptions();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10033BA58@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DataClient() + 20);

  return sub_10033BA9C(v3, a1);
}

uint64_t sub_10033BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033BB0C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DataClient() + 20);

  return sub_10033BB50(a1, v3);
}

uint64_t sub_10033BB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430B00, &unk_10039A528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033BC08()
{
  v1 = (v0 + *(type metadata accessor for DataClient() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10033BC34(uint64_t a1, char a2)
{
  result = type metadata accessor for DataClient();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10033BCC4()
{
  v1 = (v0 + *(type metadata accessor for DataClient() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10033BCF0(uint64_t a1, char a2)
{
  result = type metadata accessor for DataClient();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10033BD80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ALResultOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for DataClient();
  v12 = v11[5];
  v18 = *(v7 + 56);
  v18(a3 + v12, 1, 1, v6);
  v13 = a3 + v11[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a3 + v11[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  swift_unknownObjectWeakAssign();

  if ((*(v7 + 48))(a2, 1, v6) == 1)
  {
    return sub_1000059A8(a2, &qword_100430B00, &unk_10039A528);
  }

  v16 = *(v7 + 32);
  v16(v10, a2, v6);
  sub_1000059A8(a3 + v12, &qword_100430B00, &unk_10039A528);
  v16((a3 + v12), v10, v6);
  return (v18)(a3 + v12, 0, 1, v6);
}

BOOL sub_10033BF70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t sub_10033BFA8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10033BFE0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_10033C034(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_10033C07C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_10033C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = &_swiftEmptyArrayStorage;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a1;
  return result;
}

uint64_t sub_10033C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = &_swiftEmptyArrayStorage;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = a1;
  return v3;
}

uint64_t sub_10033C134(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DataClient();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v19 = v1[7];
  sub_100015140(a1, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(v3 + 80);
  *(v16 + 24) = v1;
  sub_10033DA84(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_10033DAE8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408448;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

uint64_t sub_10033C45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100015140(a2, v8);
  v9 = (*(*a1 + 160))(v17);
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10033D7A8(0, v12[2] + 1, 1, v12);
    *v11 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_10033D7A8(v14 > 1, v15 + 1, 1, v12);
    *v11 = v12;
  }

  v12[2] = v15 + 1;
  sub_10033DA84(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
  return v9(v17, 0);
}

uint64_t sub_10033C5F8()
{
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v26 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v25 = *(v27 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v24 - v18;
  static DispatchTime.now()();
  *v11 = 1000;
  (*(v8 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v7);
  + infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  v20 = *(v13 + 8);
  v20(v17, v12);
  v24 = *(v0 + 56);
  aBlock[4] = sub_10033DB4C;
  v31 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408470;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  v22 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v3, v22);
  (*(v25 + 8))(v6, v27);
  v20(v19, v12);
}

void sub_10033C9F8(void *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for Logger();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataClient();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v54 = &v47 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v47 = v2;
  v18 = *(v2 + 160);
  v49 = a1;
  v48 = v18(v55);
  v20 = v19;
  v21 = *v19;
  v22 = *(*v19 + 16);
  if (v22)
  {
    v23 = 0;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = *(v7 + 72);
      sub_100015140(v21 + v24 + v25 * v23, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10001543C(v17);
      if (!Strong)
      {
        break;
      }

      if (v22 == ++v23)
      {
        v23 = *(*v20 + 16);
        v27 = v23;
        goto LABEL_25;
      }
    }

    v27 = v23 + 1;
    v28 = *v20;
    v29 = *(*v20 + 16);
    if (v29 - 1 == v23)
    {
      goto LABEL_25;
    }

    v30 = v24 + v25 * v27;
    while (v27 < v29)
    {
      sub_100015140(v28 + v30, v15);
      v31 = swift_unknownObjectWeakLoadStrong();
      sub_10001543C(v15);
      if (v31)
      {

        if (v27 != v23)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          v32 = *v20;
          v33 = *(*v20 + 16);
          if (v23 >= v33)
          {
            goto LABEL_32;
          }

          sub_100015140(v32 + v24 + v23 * v25, v54);
          if (v27 >= v33)
          {
            goto LABEL_33;
          }

          sub_100015140(v32 + v30, v53);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v20 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v32 = sub_10033DF5C(v32);
            *v20 = v32;
          }

          if (v23 >= v32[2])
          {
            goto LABEL_34;
          }

          sub_10033E178(v53, v32 + v24 + v23 * v25);
          if (v27 >= *(*v20 + 16))
          {
            goto LABEL_35;
          }

          sub_10033E178(v54, *v20 + v30);
        }

        ++v23;
      }

      ++v27;
      v28 = *v20;
      v29 = *(*v20 + 16);
      v30 += v25;
      if (v27 == v29)
      {
        if (v27 < v23)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v27 = 0;
LABEL_25:
    sub_10033E0B8(v23, v27);
    v48(v55, 0);
    v35 = v50;
    corelog.getter(v50);
    v36 = v49;
    swift_retain_n();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55[0] = v40;
      *v39 = 136446466;
      v41 = *(v47 + 80);
      v42 = _typeName(_:qualified:)();
      v44 = sub_10000234C(v42, v43, v55);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2048;
      v46 = *((*(*v36 + 144))(v45) + 16);

      *(v39 + 14) = v46;

      _os_log_impl(&_mh_execute_header, v37, v38, "Remove all disconnected %{public}s client, remaining %ld", v39, 0x16u);
      sub_100002580(v40);
    }

    else
    {
    }

    (*(v51 + 8))(v35, v52);
  }
}

uint64_t sub_10033CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v23[0] = *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v25);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DataClient();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v23[1] = v4[7];
  sub_100015140(a1, v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v23[0] + 80);
  *(v19 + 24) = v4;
  sub_10033DA84(v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v24;
  v20[1] = a3;
  aBlock[4] = sub_10033DB54;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004084C0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100005EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v10, v7);
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_10033D280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for DataClient();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  v17 = (*(*a1 + 144))(v14);
  v18 = *(v17 + 16);
  v45 = v9;
  if (v18)
  {
    v40 = a1;
    v41 = a2;
    v42 = v13;
    v43 = a4;
    v44 = a3;
    v19 = v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = *(v9 + 72);
    v21 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100015140(v19, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = Strong;
        v24 = [Strong processIdentifier];

        sub_10001543C(v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10033D980(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_10033D980((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        *&v21[4 * v26 + 32] = v24;
      }

      else
      {
        sub_10001543C(v16);
      }

      v19 += v20;
      --v18;
    }

    while (v18);

    a3 = v44;
    a2 = v41;
    v13 = v42;
    a1 = v40;
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v27);
  *(&v39 - 2) = a2;
  v28 = *(sub_10033D5EC(sub_10033DDD8, (&v39 - 4), v21) + 16);

  if (!v28)
  {
    sub_100015140(a2, v13);
    v30 = (*(*a1 + 160))(v46);
    v32 = v31;
    v33 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v32 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_10033D7A8(0, v33[2] + 1, 1, v33);
      *v32 = v33;
    }

    v35 = v45;
    v37 = v33[2];
    v36 = v33[3];
    if (v37 >= v36 >> 1)
    {
      v33 = sub_10033D7A8(v36 > 1, v37 + 1, 1, v33);
      *v32 = v33;
    }

    v33[2] = v37 + 1;
    sub_10033DA84(v13, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v37);
    v29 = v30(v46, 0);
  }

  return a3(v29);
}

uint64_t sub_10033D5EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 4 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10033DE38(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          result = sub_10033DE38((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        v8[2] = v10 + 1;
        *(v8 + v10 + 8) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_10033D744()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_10033D774()
{
  sub_10033D744();

  return _swift_deallocClassInstance(v0, 64, 7);
}

size_t sub_10033D7A8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100024A2C(&qword_1004316F8, &qword_10039AAE0);
  v10 = *(type metadata accessor for DataClient() - 8);
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
  v15 = *(type metadata accessor for DataClient() - 8);
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

char *sub_10033D980(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&qword_1004316F0, &qword_10039AAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10033DA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033DAE8()
{
  v1 = *(type metadata accessor for DataClient() - 8);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10033C45C(v2, v3);
}

uint64_t sub_10033DB54()
{
  v1 = *(type metadata accessor for DataClient() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10033D280(v3, v0 + v2, v5, v6);
}

void sub_10033DC10()
{
  sub_10033DCA8();
  if (v0 <= 0x3F)
  {
    sub_10033DD00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10033DCA8()
{
  if (!qword_1004316B8)
  {
    type metadata accessor for ALResultOptions();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004316B8);
    }
  }
}

void sub_10033DD00()
{
  if (!qword_100418648)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100418648);
    }
  }
}

void *sub_10033DDD8(int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [result processIdentifier];

    return (v3 == v6);
  }

  return result;
}

char *sub_10033DE38(char *a1, int64_t a2, char a3)
{
  result = sub_10033DE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10033DE58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A2C(&qword_1004316F0, &qword_10039AAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_10033DF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DataClient();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10033E0B8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10033D7A8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10033DF70(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10033E178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataClient();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033E220()
{
  v0 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v11 - v2;
  ALWiFiScanSingleAccessPoint.init()();
  v4 = sub_10033ED80(0xFFFFFFFFFFFFFFFFLL);
  ALWiFiScanSingleAccessPoint._mac.setter();
  sub_100024A2C(&unk_10042F2F0, &unk_100399850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100374440;
  *(v5 + 56) = &type metadata for UInt64;
  *(v5 + 64) = &protocol witness table for UInt64;
  *(v5 + 32) = v4;
  v6._countAndFlagsBits = String.init(format:_:)();
  v11[0] = 0x2D6D6F646E6172;
  v11[1] = 0xE700000000000000;
  String.append(_:)(v6);

  ALWiFiScanSingleAccessPoint._ssid.setter();
  result = sub_10033ECF4(61);
  if (__OFSUB__(0, result + 20))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v11[0]) = 0;
    ALWiFiScanSingleAccessPoint._rssidB.setter();
    sub_10033ECF4(14);
    LOBYTE(v11[0]) = 0;
    ALWiFiScanSingleAccessPoint._channel.setter();
    sub_10033ED80(0x20000000000001uLL);
    ALWiFiScanSingleAccessPoint._isAph.setter();
    sub_10033ED80(0x20000000000001uLL);
    ALWiFiScanSingleAccessPoint._isMoving.setter();
    v8 = enum case for ALWiFiScanSingleAccessPoint.Band.band2G(_:);
    v9 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v3, v8, v9);
    (*(v10 + 56))(v3, 0, 1, v9);
    return ALWiFiScanSingleAccessPoint._band.setter();
  }

  return result;
}

uint64_t sub_10033E474@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v32 - v8;
  v10 = type metadata accessor for Logger();
  v33 = *(v10 - 8);
  v11 = *(v33 + 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v32 - v16;
  ALWiFiScanResult.init()();
  static ALTimeStamp.now()();
  v18 = type metadata accessor for ALTimeStamp();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v34 = a1;
  ALWiFiScanResult._scanTimestamp.setter();
  v19 = sub_10033ED80(0x29uLL);
  corelog.getter(v13);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Simulating AP count %ld", v22, 0xCu);
  }

  result = (*(v33 + 1))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19)
  {
    v32[0] = v3 + 8;
    v32[1] = v3 + 32;
    v33 = v7;
    do
    {
      sub_10033E220();
      (*(v3 + 16))(v7, v9, v2);
      v24 = ALWiFiScanResult._accessPoints.modify();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_10000DFC4(0, v27[2] + 1, 1, v27);
        *v26 = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_10000DFC4(v29 > 1, v30 + 1, 1, v27);
        *v26 = v27;
      }

      v27[2] = v30 + 1;
      v31 = v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30;
      v7 = v33;
      (*(v3 + 32))(v31, v33, v2);
      v24(v35, 0);
      result = (*(v3 + 8))(v9, v2);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_10033E86C()
{
  v0 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  ALWiFiNotification.init()();
  static ALTimeStamp.now()();
  v12 = type metadata accessor for ALTimeStamp();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  ALWiFiNotification._timestamp.setter();
  sub_10033E474(v7);
  v13 = type metadata accessor for ALWiFiScanResult();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  ALWiFiNotification._scanResult.setter();
  ALWiFiNotification._simulated.setter();
  ALWiFiNotification._available.setter();
  v14 = enum case for ALWiFiNotification.ScanType.normal(_:);
  v15 = type metadata accessor for ALWiFiNotification.ScanType();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v3, v14, v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  return ALWiFiNotification._scanType.setter();
}

uint64_t sub_10033EAC4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_10033EE0C(a1, a2, a3);

  return v6;
}

uint64_t sub_10033EB28(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10033EE0C(a1, a2, a3);

  return v3;
}

uint64_t sub_10033EB5C()
{
  v1 = type metadata accessor for ALWiFiNotification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033E86C();
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v6(v5);
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10033EC7C()
{
  v0 = ALDataGenerationBase.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_10033ECAC()
{
  v0 = ALDataGenerationBase.deinit();
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10033ECF4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10033ED80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033EE0C(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(**sub_100334FA4() + 104);

  v11(&v19, 0xD000000000000019, 0x80000001003B1E10, &type metadata for Double);

  if (v20)
  {
    v12 = 6.0;
  }

  else
  {
    v12 = v19;
  }

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  corelog.getter(v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "ALWiFiSimulated,interval,%f,sec", v15, 0xCu);
  }

  (*(v7 + 8))(v10, v6);
  return ALDataGenerationBase.init(queue:interval:)(v18);
}

uint64_t sub_10033F074(double a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

unint64_t sub_10033F108(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v199 = a1;
  v7 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v180 = &v162 - v9;
  v174 = type metadata accessor for ALWiFiScanResult();
  v173 = *(v174 - 8);
  v10 = *(v173 + 64);
  __chkstk_darwin(v174);
  v172 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v171 = *(v170 - 8);
  v12 = *(v171 + 64);
  v13 = __chkstk_darwin(v170);
  v169 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v175 = &v162 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v198 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v181 = &v162 - v22;
  v23 = __chkstk_darwin(v21);
  v192 = &v162 - v24;
  __chkstk_darwin(v23);
  v26 = &v162 - v25;
  v4[3] = &_swiftEmptyArrayStorage;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a2;
  v4[7] = a3;
  v177 = a3;

  v27 = sub_100334FA4();
  v28 = *(**v27 + 104);

  v28(&v201, 0xD000000000000013, 0x80000001003B1E30, &type metadata for String);

  v29 = v201;
  if (!v202)
  {
    v29 = 0xD000000000000018;
  }

  v200 = v29;
  if (v202)
  {
    v30 = v202;
  }

  else
  {
    v30 = 0x80000001003B1E50;
  }

  v31 = *(**v27 + 104);

  v31(&v201, 0xD00000000000001ALL, 0x80000001003B1E70, &type metadata for Double);

  if (v202)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = *&v201;
  }

  corelog.getter(v26);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v193 = v17;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v201 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_10000234C(v200, v30, &v201);
    *(v36 + 12) = 2048;
    *(v36 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "ALWiFiReplayerCSV,path,%s,interval,%f", v36, 0x16u);
    sub_100002580(v37);
  }

  v195 = *(v17 + 8);
  v195(v26, v16);
  v38 = v16;
  v176 = v199;
  v39 = ALDataGenerationBase.init(queue:interval:)(v176);
  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);

  URL.init(fileURLWithPath:)();
  v45 = type metadata accessor for String.Encoding();
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  static String.Encoding.utf8.getter();
  v47 = String.init(contentsOf:encoding:)();
  v178 = v30;
  v191 = v44;
  result = sub_100325678(0x7FFFFFFFFFFFFFFFuLL, 1, v47, v48, &v203);
  v50 = *(result + 16);
  v51 = v50 == 0;
  v196 = v50;
  if (v50)
  {
    *&v166[8] = 0;
    v52 = 0;
    v53 = 0;
    v189 = result + 32;
    v182 = v193 + 8;
    v165 = (v171 + 16);
    v164 = v171 + 8;
    v163 = v171 + 32;
    v167 = 1;
    *(&v54 + 1) = 2;
    v162 = xmmword_100374440;
    *&v54 = 134218242;
    v179 = v54;
    v168 = &_swiftEmptyArrayStorage;
    v185 = v16;
    v188 = v39;
    v184 = &v162;
    v187 = v40;
    v186 = v41;
    v183 = result;
    *v166 = v50 == 0;
    while (2)
    {
      v55 = v53;
      v56 = v191;
      v190 = v55;
LABEL_17:
      if (v52 >= *(result + 16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v57 = v52++;
      if (!v57)
      {
        goto LABEL_16;
      }

      v199 = v52;
      v194 = v57;
      v58 = (v189 + 32 * v57);
      v59 = *v58;
      v60 = v58[2];
      v61 = v58[3];
      v62 = *v58 >> 14;
      v63 = v58[1] >> 14;
      swift_bridgeObjectRetain_n();
      if (v62 == v63)
      {
        v64 = Substring.subscript.getter();
        v66 = v65;
        v68 = v67;
        v70 = v69;

        v71 = sub_100326770(0, 1, 1, &_swiftEmptyArrayStorage);
        v73 = *(v71 + 2);
        v72 = *(v71 + 3);
        if (v73 >= v72 >> 1)
        {
          v71 = sub_100326770((v72 > 1), v73 + 1, 1, v71);
        }

        *(v71 + 2) = v73 + 1;
        v74 = &v71[32 * v73];
        *(v74 + 4) = v64;
        *(v74 + 5) = v66;
        *(v74 + 6) = v68;
        *(v74 + 7) = v70;
        if (v73 != 4)
        {
          goto LABEL_45;
        }

LABEL_48:
        v200 = v71;

        result = ALWiFiScanSingleAccessPoint.init()();
        v108 = *&v166[4];
        if (!*(v200 + 2))
        {
          goto LABEL_98;
        }

        v110 = *(v200 + 4);
        v109 = *(v200 + 5);
        v39 = v188;
        v40 = v187;
        v41 = v186;
        if ((v109 ^ v110) >= 0x4000)
        {
          v112 = *(v200 + 6);
          v111 = *(v200 + 7);
          sub_1003282AC(*(v200 + 4), *(v200 + 5), v112, v111, 16);
          if ((v113 & 0x100) != 0)
          {
            v114 = v108;

            sub_100327458(v110, v109, v112, v111, 16);
            v116 = v115;

            if (v116)
            {
              v108 = v114;
            }

            else
            {
              v108 = v114;
            }
          }
        }

        result = ALWiFiScanSingleAccessPoint._mac.setter();
        if (*(v200 + 2) >= 3uLL)
        {
          v118 = *(v200 + 12);
          v117 = *(v200 + 13);
          if ((v117 ^ v118) >= 0x4000)
          {
            v120 = *(v200 + 14);
            v119 = *(v200 + 15);
            if ((sub_100341984(*(v200 + 12), *(v200 + 13), v120, v119, 10) & 0x10000000000) != 0)
            {

              sub_100326ED0(v118, v117, v120, v119, 10);
            }
          }

          LOBYTE(v201) = 0;
          result = ALWiFiScanSingleAccessPoint._channel.setter();
          if (*(v200 + 2) < 4uLL)
          {
            goto LABEL_100;
          }

          v122 = *(v200 + 16);
          v121 = *(v200 + 17);
          if ((v121 ^ v122) < 0x4000)
          {
            v38 = v185;
          }

          else
          {
            v124 = *(v200 + 18);
            v123 = *(v200 + 19);
            if ((sub_100341984(*(v200 + 16), *(v200 + 17), v124, v123, 10) & 0x10000000000) != 0)
            {

              sub_100326ED0(v122, v121, v124, v123, 10);
            }

            v38 = v185;
          }

          LOBYTE(v201) = 0;
          result = ALWiFiScanSingleAccessPoint._rssidB.setter();
          if (*(v200 + 2) < 5uLL)
          {
            goto LABEL_101;
          }

          *&v166[4] = v108;
          sub_100341A4C(*(v200 + 20), *(v200 + 21), *(v200 + 22), *(v200 + 23), 1702195828, 0xE400000000000000);
          result = ALWiFiScanSingleAccessPoint._isMoving.setter();
          if (*(v200 + 2) < 2uLL)
          {
            goto LABEL_102;
          }

          v125 = *(v200 + 8);
          v126 = *(v200 + 9);
          v127 = *(v200 + 10);
          v128 = *(v200 + 11);

          v129 = COERCE_DOUBLE(Double.init(_:)());
          if (v130)
          {
            v129 = 0.0;
          }

          v53 = *&v129;
          if (v167)
          {
            v131 = *&v129;
          }

          else
          {
            v131 = v190;
          }

          if (vabdd_f64(*&v131, v129) >= 2.22044605e-16)
          {
            sub_100340678(v131, 0, v168);

            sub_100024A2C(&qword_1004311C0, &qword_100399AB0);
            v138 = v171;
            v139 = *(v171 + 72);
            v140 = (*(v171 + 80) + 32) & ~*(v171 + 80);
            v141 = swift_allocObject();
            *(v141 + 16) = v162;
            v142 = *(v138 + 16);
            v168 = v141;
            v143 = v141 + v140;
            v144 = v175;
            v145 = v170;
            v142(v143, v175, v170);
            (*(v138 + 8))(v144, v145);
          }

          else
          {
            (*v165)(v169, v175, v170);
            v132 = v168;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v132 = sub_1003417A8(0, v132[2] + 1, 1, v132, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
            }

            v168 = v132;
            v134 = v132[2];
            v133 = v132[3];
            if (v134 >= v133 >> 1)
            {
              v168 = sub_1003417A8(v133 > 1, v134 + 1, 1, v168, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
            }

            v135 = v171;
            v136 = v170;
            (*(v171 + 8))(v175, v170);
            v137 = v168;
            v168[2] = v134 + 1;
            (*(v135 + 32))(v137 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v134, v169, v136);
          }

          v167 = 0;
          v52 = v199;
          result = v183;
          v51 = v166[0];
          if (v199 == v196)
          {
            v55 = v53;
            v56 = v191;
LABEL_82:
            v146 = v168;
            goto LABEL_84;
          }

          continue;
        }

        goto LABEL_99;
      }

      break;
    }

    v200 = &_swiftEmptyArrayStorage;
    v75 = v59;
    while (Substring.subscript.getter() != 44 || v76 != 0xE100000000000000)
    {
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v77)
      {
LABEL_31:
        if (v62 < v75 >> 14)
        {
          goto LABEL_95;
        }

        v78 = Substring.subscript.getter();
        v197 = v79;
        v198 = v78;
        v81 = v80;
        v83 = v82;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v84 = v200;
        }

        else
        {
          v84 = sub_100326770(0, *(v200 + 2) + 1, 1, v200);
        }

        v86 = *(v84 + 2);
        v85 = *(v84 + 3);
        if (v86 >= v85 >> 1)
        {
          v84 = sub_100326770((v85 > 1), v86 + 1, 1, v84);
        }

        *(v84 + 2) = v86 + 1;
        v200 = v84;
        v87 = &v84[32 * v86];
        v88 = v197;
        *(v87 + 4) = v198;
        *(v87 + 5) = v88;
        *(v87 + 6) = v81;
        *(v87 + 7) = v83;
        result = Substring.index(after:)();
        v75 = result;
        v62 = result >> 14;
        if (result >> 14 == v63)
        {
LABEL_39:
          if (v63 < v75 >> 14)
          {
            goto LABEL_96;
          }

          v89 = Substring.subscript.getter();
          v91 = v90;
          v93 = v92;
          v95 = v94;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v71 = v200;
          }

          else
          {
            v71 = sub_100326770(0, *(v200 + 2) + 1, 1, v200);
          }

          v97 = *(v71 + 2);
          v96 = *(v71 + 3);
          if (v97 >= v96 >> 1)
          {
            v71 = sub_100326770((v96 > 1), v97 + 1, 1, v71);
          }

          *(v71 + 2) = v97 + 1;
          v98 = &v71[32 * v97];
          *(v98 + 4) = v89;
          *(v98 + 5) = v91;
          *(v98 + 6) = v93;
          *(v98 + 7) = v95;
          if (v97 == 4)
          {
            goto LABEL_48;
          }

LABEL_45:

          v99 = v192;
          corelog.getter(v192);

          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v201 = v103;
            *v102 = v179;
            *(v102 + 4) = v194;
            *(v102 + 12) = 2080;
            v104 = static String._fromSubstring(_:)();
            v106 = v105;

            v107 = sub_10000234C(v104, v106, &v201);

            *(v102 + 14) = v107;
            _os_log_impl(&_mh_execute_header, v100, v101, "line %ld: '%s' is ill-formed. Please follow [mac],[timestamp],[channel],[rssidB],[isMoving]. Skip!", v102, 0x16u);
            sub_100002580(v103);
          }

          else
          {
          }

          v38 = v185;
          v195(v99, v185);
          v39 = v188;
          v40 = v187;
          v41 = v186;
          v56 = v191;
          result = v183;
          v52 = v199;
          v55 = v190;
LABEL_16:
          if (v52 == v196)
          {
            v51 = v167;
            goto LABEL_82;
          }

          goto LABEL_17;
        }
      }

      else
      {
        result = Substring.index(after:)();
        v62 = result >> 14;
        if (result >> 14 == v63)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_31;
  }

  v55 = 0;
  v146 = &_swiftEmptyArrayStorage;
  v56 = v191;
LABEL_84:

  sub_100340678(v55, v51 & 1, v146);

  (*(v41 + 8))(v56, v40);
  swift_beginAccess();
  if (*(*(v39 + 24) + 16))
  {
    v147 = machContTimeSec()();
    result = swift_beginAccess();
    v148 = *(v39 + 24);
    if (!*(v148 + 16))
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v149 = v173;
    v150 = v172;
    v151 = v174;
    (*(v173 + 16))(v172, v148 + ((*(v149 + 80) + 32) & ~*(v149 + 80)), v174);
    ALWiFiScanResult._scanTimestamp.getter();
    v152 = v180;
    (*(v149 + 8))(v150, v151);
    swift_endAccess();
    v153 = type metadata accessor for ALTimeStamp();
    v154 = *(v153 - 8);
    result = (*(v154 + 48))(v152, 1, v153);
    if (result == 1)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v155 = v152;
    v156 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
    v158 = v157;
    result = (*(v154 + 8))(v155, v153);
    if (v158)
    {
LABEL_104:
      __break(1u);
      return result;
    }

    swift_beginAccess();
    *(v39 + 40) = v147 - v156;
  }

  else
  {
  }

  corelog.getter(v181);

  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 134218240;
    *(v161 + 4) = *(*(v39 + 24) + 16);

    *(v161 + 12) = 2048;
    swift_beginAccess();
    *(v161 + 14) = *(v39 + 40);
    _os_log_impl(&_mh_execute_header, v159, v160, "Total Wifi scans from file: %ld. Offset is %f", v161, 0x16u);
  }

  else
  {
  }

  v195(v181, v38);
  return v39;
}

uint64_t sub_100340678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27[-v8];
  v10 = type metadata accessor for ALWiFiScanResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v13);
  v18 = &v27[-v17];
  if (*(a3 + 16))
  {
    ALWiFiScanResult.init()();
    ALTimeStamp.init(machContinuousTimeSec:)();
    v19 = type metadata accessor for ALTimeStamp();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    ALWiFiScanResult._scanTimestamp.setter();

    ALWiFiScanResult._accessPoints.setter();
    (*(v11 + 16))(v15, v18, v10);
    v20 = (*(*v4 + 176))(v27);
    v22 = v21;
    v23 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1003417A8(0, v23[2] + 1, 1, v23, &unk_100431910, &qword_10039AB78, &type metadata accessor for ALWiFiScanResult);
      *v22 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1003417A8(v25 > 1, v26 + 1, 1, v23, &unk_100431910, &qword_10039AB78, &type metadata accessor for ALWiFiScanResult);
      *v22 = v23;
    }

    v23[2] = v26 + 1;
    (*(v11 + 32))(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v15, v10);
    v20(v27, 0);
    return (*(v11 + 8))(v18, v10);
  }

  return result;
}

void sub_1003409A0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v133 = &v130 - v4;
  v5 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v132 = &v130 - v7;
  v131 = type metadata accessor for ALWiFiNotification();
  v130 = *(v131 - 8);
  v8 = *(v130 + 64);
  __chkstk_darwin(v131);
  v135 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Logger();
  v10 = *(v144 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v144);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = (&v130 - v15);
  v16 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v134 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v130 - v21;
  __chkstk_darwin(v20);
  v146 = &v130 - v22;
  v153 = type metadata accessor for ALWiFiScanResult();
  v147 = *(v153 - 8);
  v23 = *(v147 + 64);
  v24 = __chkstk_darwin(v153);
  v136 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v140 = &v130 - v27;
  v28 = __chkstk_darwin(v26);
  v145 = &v130 - v29;
  v30 = *(*v0 + 184);
  v31 = *v0 + 184;
  v33 = (*v0 + 160);
  v32 = *v33;
  v34 = (v30)(v28);
  v36 = v34 + 1;
  if (__OFADD__(v34, 1))
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    v151 = v147 + 8;
    v152 = v147 + 16;
    v143 = (v10 + 8);
    *&v35 = 136315138;
    v139 = v35;
    v149 = v0;
    v150 = v33;
    v138 = v14;
    v154 = v32;
    v155 = v31;
    v156 = v30;
    while (1)
    {
      v37 = *(v32() + 16);

      if (v36 >= v37)
      {
        break;
      }

      v39 = (v156)(v38);
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v41 = v154();
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v40 >= *(v41 + 16))
      {
        goto LABEL_37;
      }

      v42 = v147;
      v43 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v44 = *(v147 + 72);
      v45 = v41 + v43 + v44 * v40;
      v46 = *(v147 + 16);
      v47 = v145;
      v48 = v153;
      v46(v145, v45, v153);
      v49 = v146;
      ALWiFiScanResult._scanTimestamp.getter();
      v50 = *(v42 + 8);
      v51 = v47;
      v52 = v49;
      v50(v51, v48);
      v53 = type metadata accessor for ALTimeStamp();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53) == 1)
      {
        goto LABEL_48;
      }

      v55 = ALTimeStamp.machContinuousTimeSec.getter();
      v56 = v52;
      v57 = *&v55;
      v59 = v58;
      (*(v54 + 8))(v56, v53);
      if (v59)
      {
        goto LABEL_49;
      }

      v1 = v149;
      v61 = (*(*v149 + 208))(v60) + v57;
      if (v61 >= machContTimeSec()())
      {
        break;
      }

      v62 = v148;
      corelog.getter(v148);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v141 = v64;
        v142 = v63;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v157[0] = v66;
        *v65 = v139;
        v67 = v156();
        v68 = v154();
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v67 >= *(v68 + 16))
        {
          goto LABEL_40;
        }

        v69 = v68 + v43 + v67 * v44;
        v70 = v140;
        v71 = v153;
        v46(v140, v69, v153);

        v72 = ALWiFiScanResult.description.getter();
        v74 = v73;
        v50(v70, v71);
        v75 = sub_10000234C(v72, v74, v157);

        *(v65 + 4) = v75;
        v76 = v142;
        _os_log_impl(&_mh_execute_header, v142, v141, "One Wifi scan from file was discarded: %s. Please decrease TickIntervalSec", v65, 0xCu);
        sub_100002580(v66);

        (*v143)(v148, v144);
        v1 = v149;
      }

      else
      {

        (*v143)(v62, v144);
      }

      v77 = (*(*v1 + 200))(v157);
      v32 = v154;
      v79 = v156;
      if (__OFADD__(*v78, 1))
      {
        goto LABEL_38;
      }

      ++*v78;
      v80 = v77(v157, 0);
      v81 = (v79)(v80);
      v36 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_18;
      }
    }
  }

  v82 = v156;
  v83 = v156();
  v84 = v154;
  v85 = *(v154() + 16);

  if (v83 >= v85)
  {
    return;
  }

  v87 = (v82)(v86);
  v88 = v84();
  if ((v87 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v87 >= *(v88 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v89 = v147;
  v146 = ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v145 = *(v147 + 72);
  v90 = &v146[v88 + v145 * v87];
  v91 = v136;
  v92 = v153;
  v148 = *(v147 + 16);
  (v148)(v136, v90, v153);
  v93 = v137;
  ALWiFiScanResult._scanTimestamp.getter();
  v94 = *(v89 + 8);
  v94(v91, v92);
  v95 = type metadata accessor for ALTimeStamp();
  v96 = *(v95 - 8);
  if ((*(v96 + 48))(v93, 1, v95) == 1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v97 = COERCE_DOUBLE(ALTimeStamp.machContinuousTimeSec.getter());
  v98 = v93;
  v100 = v99;
  (*(v96 + 8))(v98, v95);
  v101 = v138;
  if (v100)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v103 = (*(*v1 + 208))(v102) + v97;
  if (v103 < machContTimeSec()())
  {
    corelog.getter(v101);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = v84;
      v107 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v157[0] = v142;
      *v107 = v139;
      v108 = v156();
      v109 = v106();
      if ((v108 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v141 = v105;
      if (v108 >= *(v109 + 16))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v110 = v140;
      v111 = v153;
      (v148)(v140, &v146[v109 + v108 * v145], v153);

      v112 = ALWiFiScanResult.description.getter();
      v114 = v113;
      v94(v110, v111);
      v115 = sub_10000234C(v112, v114, v157);

      *(v107 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v104, v141, "One Wifi scan from file: %s", v107, 0xCu);
      sub_100002580(v142);

      (*v143)(v138, v144);
      v1 = v149;
      v84 = v154;
    }

    else
    {

      (*v143)(v101, v144);
    }

    v116 = v135;
    ALWiFiNotification.init()();
    v117 = v134;
    static ALTimeStamp.now()();
    (*(v96 + 56))(v117, 0, 1, v95);
    v118 = ALWiFiNotification._timestamp.setter();
    v119 = (v156)(v118);
    v120 = v84();
    if ((v119 & 0x8000000000000000) == 0)
    {
      if (v119 < *(v120 + 16))
      {
        v121 = v132;
        v122 = v153;
        (v148)(v132, &v146[v120 + v119 * v145], v153);

        (*(v147 + 56))(v121, 0, 1, v122);
        ALWiFiNotification._scanResult.setter();
        ALWiFiNotification._simulated.setter();
        ALWiFiNotification._available.setter();
        v123 = enum case for ALWiFiNotification.ScanType.normal(_:);
        v124 = type metadata accessor for ALWiFiNotification.ScanType();
        v125 = *(v124 - 8);
        v126 = v133;
        (*(v125 + 104))(v133, v123, v124);
        (*(v125 + 56))(v126, 0, 1, v124);
        ALWiFiNotification._scanType.setter();
        v127 = (*(*v1 + 200))(v157);
        if (!__OFADD__(*v128, 1))
        {
          ++*v128;
          v127(v157, 0);
          v129 = *(v1 + 56);
          (*(v1 + 48))(v116);
          (*(v130 + 8))(v116, v131);
          return;
        }

        goto LABEL_45;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

size_t sub_1003417A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100341984(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10032885C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_100341A4C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100341AF8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_100341B30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t ALDataGenerationBase.__allocating_init(queue:interval:)(void *a1)
{
  swift_allocObject();
  v2 = sub_100341E04(a1);

  return v2;
}

uint64_t ALDataGenerationBase.init(queue:interval:)(void *a1)
{
  v2 = sub_100341E04(a1);

  return v2;
}

uint64_t sub_100341C00()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 120))(result);
  }

  return result;
}

uint64_t ALDataGenerationBase.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ALDataGenerationBase.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100341E04(uint64_t a1)
{
  v52 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  v12 = __chkstk_darwin(v10);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v21 = (v1 + 16);
  sub_10030F660();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1003424BC(&unk_10042F750, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100024A2C(&qword_100431A50, &unk_10039ABE0);
  sub_100006DDC(&unk_10042F760, &qword_100431A50, &unk_10039ABE0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v20, v16);
  swift_beginAccess();
  v23 = *v21;
  *v21 = v22;
  swift_unknownObjectRelease();
  if (*v21)
  {
    v24 = *v21;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v25 = v46;
    static DispatchTime.now()();
    v26 = v15;
    + infix(_:_:)();
    v27 = v48;
    v28 = *(v47 + 8);
    v28(v25, v48);
    v30 = v49;
    v29 = v50;
    *v49 = 0;
    v31 = v51;
    (*(v29 + 104))(v30, enum case for DispatchTimeInterval.nanoseconds(_:), v51);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v30, v31);
    v28(v26, v27);
    if (*v21)
    {
      v32 = *v21;
      swift_getObjectType();
      v33 = swift_allocObject();
      v34 = v53;
      swift_weakInit();
      aBlock[4] = sub_1003424B4;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000025CC;
      aBlock[3] = &unk_1004085F0;
      v35 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v36 = v40;
      static DispatchQoS.unspecified.getter();
      v37 = v42;
      sub_100309480();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v35);
      swift_unknownObjectRelease();
      (*(v44 + 8))(v37, v45);
      (*(v41 + 8))(v36, v43);

      if (*(v34 + 16))
      {
        v38 = *(v34 + 16);
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.activate()();
        swift_unknownObjectRelease();
      }
    }
  }

  return v53;
}

uint64_t sub_1003424BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100342504()
{
  v1 = *(v0 + 16);
  v2._countAndFlagsBits = 0x6F7272456B636954;
  v2._object = 0xEA00000000002072;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double sub_100342594()
{
  v0 = *(**sub_100334FA4() + 104);

  v0(&v2, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  result = v2;
  if (v3)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_100342668(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_1003426A8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1003426EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(**sub_100334FA4() + 104);

  v7(&v10, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  v8 = v10;
  if (v11)
  {
    v8 = 5.0;
  }

  *(v6 + 16) = v8;
  *(v6 + 32) = a3;
  *(v6 + 40) = a1;
  *(v6 + 24) = a2;
  return v6;
}

uint64_t sub_1003427CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(**sub_100334FA4() + 104);

  v7(&v10, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

  v8 = v10;
  if (v11)
  {
    v8 = 5.0;
  }

  *(v3 + 16) = v8;
  *(v3 + 32) = a3;
  *(v3 + 40) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_10034289C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v18);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = (*(*v0 + 104))();
    _os_log_impl(&_mh_execute_header, v19, v20, "starting boost timer for %f", v21, 0xCu);
  }

  v22 = (*(v15 + 8))(v18, v14);
  v31 = (*(*v0 + 152))(v22);
  v23 = static DispatchTime.now()();
  (*(*v0 + 104))(v23);
  + infix(_:_:)();
  v24 = v33;
  v32 = *(v32 + 8);
  (v32)(v11, v33);
  aBlock[4] = sub_1003497AC;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_100408640;
  v25 = _Block_copy(aBlock);

  v26 = v34;
  static DispatchQoS.unspecified.getter();
  v40 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  v27 = v37;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v26, v36);
  (v32)(v13, v24);
}

uint64_t sub_100342DB4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "timer fired from original block", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*(*a1 + 128))(v10);
  v11();
}

uint64_t sub_100342F30()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_100342F58()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100342F98()
{
  v1 = (v0 + OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100342FF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1003430B0()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__services;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1003430F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__services;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1003431B0()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__boostTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1003431F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__boostTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1003432B0()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100343304(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1003433BC()
{
  v1 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100343410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100343514(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100024A2C(&qword_100431A80, &qword_10039A218);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__boostTimer] = 0;
  v13 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
  v14 = sub_10033AC88();
  v15 = *v14;
  *&v4[v13] = *v14;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth_cancellables] = &_swiftEmptySetSingleton;
  v16 = &v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__onData];
  *v16 = a2;
  *(v16 + 1) = a3;
  *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__queue] = a1;
  v17 = v15;

  v34 = a1;
  result = sub_1003490D8();
  v19 = result;
  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v35 = &_swiftEmptyArrayStorage;
  v22 = *(result + 16);
  while (1)
  {
    if (v22 == v20)
    {

      *&v4[OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__services] = v21;
      v25 = type metadata accessor for ALScanCoreBluetooth();
      v36.receiver = v4;
      v36.super_class = v25;
      v26 = objc_msgSendSuper2(&v36, "init");
      v27 = OBJC_IVAR____TtC8ALDaemon19ALScanCoreBluetooth__backlightMonitor;
      swift_beginAccess();
      v28 = *&v26[v27];
      v29 = *((swift_isaMask & *v28) + 0xD0);
      v30 = v26;
      v31 = v28;
      v29();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100006E30(&qword_100431A90, &qword_100431A80, &qword_10039A218);
      Publisher<>.sink(receiveValue:)();

      (*(v9 + 8))(v12, v8);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return v30;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    v23 = *(v19 + 8 * v20++ + 32);
    if (v23)
    {
      v33 = v12;
      v24 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32[1] = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v35;
      v12 = v33;
    }
  }

  __break(1u);
  return result;
}

void sub_100343894(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = *a1;
  launchlog.getter(&v27 - v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v29 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    if (v10)
    {
      v17 = 28271;
    }

    else
    {
      v17 = 6710895;
    }

    if (v10)
    {
      v18 = 0xE200000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_10000234C(v17, v18, &v30);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "published isScreenOn state changed to: %s", v15, 0xCu);
    sub_100002580(v16);

    v3 = v28;
  }

  v20 = *(v3 + 8);
  v20(v9, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = swift_isaMask & *Strong;
    if (v29)
    {
      (*((swift_isaMask & *Strong) + 0x120))();
    }

    else
    {
      (*((swift_isaMask & *Strong) + 0x128))();
    }
  }

  else
  {
    launchlog.getter(v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no self", v26, 2u);
    }

    v20(v7, v2);
  }
}

uint64_t sub_100343BAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = (&v60 - v10);
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v60 - v15;
  v66 = type metadata accessor for ALBtNotification();
  v68 = *(v66 - 8);
  v17 = *(v68 + 64);
  v18 = __chkstk_darwin(v66);
  v67 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  ALBtNotification.init()();

  ALBtNotification._advertisements.setter();
  ALBtNotification._isScreenOn.setter();
  ALBtNotification._simulated.setter();
  static ALTimeStamp.now()();
  v22 = type metadata accessor for ALTimeStamp();
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  ALBtNotification._timestamp.setter();
  scanlog.getter(v12);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v64 = v5;
    v65 = v4;
    v25 = swift_slowAlloc();
    v69 = COERCE_DOUBLE(swift_slowAlloc());
    *v25 = 136315650;
    *(v25 + 4) = sub_10000234C(0xD000000000000022, 0x80000001003B1B20, &v69);
    *(v25 + 12) = 2082;
    swift_beginAccess();
    v26 = ALBtNotification.description.getter();
    v28 = sub_10000234C(v26, v27, &v69);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2050;
    if (!*(a1 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = *(*(type metadata accessor for ALBtAdvertisement() - 8) + 80);
    v31 = COERCE_DOUBLE(sub_100344450());
    if (v32)
    {
      v31 = -1.0;
    }

    *(v25 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s,notif,%{public}s,delayMs,%{public}f", v25, 0x20u);
    swift_arrayDestroy();

    v33 = v64;
    v4 = v65;
    v34 = v12;
    v35 = *(v64 + 8);
    v36 = v35(v34, v65);
  }

  else
  {

    v37 = v12;
    v35 = *(v5 + 8);
    v36 = v35(v37, v4);
    v33 = v5;
  }

  v38 = *((swift_isaMask & *v1) + 0xB0);
  v39 = v38(v36);
  v40 = v38;
  v41 = v67;
  v42 = v68;
  if (v39)
  {

    v44 = v66;
  }

  else
  {
    v61 = v40;
    v45 = v62;
    scanlog.getter(v62);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "creating timer", v48, 2u);
    }

    v64 = v33;
    v65 = v4;
    v62 = v35;
    v49 = v35(v45, v4);
    v60 = (*((swift_isaMask & *v2) + 0xC8))(v49);
    v50 = swift_allocObject();
    *(v50 + 16) = v2;
    type metadata accessor for ALScanBoostTimer();
    v51 = swift_allocObject();
    v52 = v2;
    v53 = *(**sub_100334FA4() + 104);

    v53(&v69, 0xD000000000000016, 0x80000001003B1FD0, &type metadata for Double);

    v54 = v69;
    if (v70)
    {
      v54 = 5.0;
    }

    *(v51 + 16) = v54;
    v55 = v60;
    *(v51 + 32) = v50;
    *(v51 + 40) = v55;
    *(v51 + 24) = sub_1003497E0;
    v56 = (*((swift_isaMask & *v52) + 0xB8))(v51);
    v57 = v61(v56);
    if (v57)
    {
      (*(*v57 + 184))(v57);
    }

    v43 = (*((swift_isaMask & *v52) + 0x138))(v57);
    v44 = v66;
    v41 = v67;
    v42 = v68;
  }

  v58 = (*((swift_isaMask & *v2) + 0x80))(v43);
  swift_beginAccess();
  (*(v42 + 16))(v41, v21, v44);
  v58(v41);
  v59 = *(v42 + 8);
  v59(v41, v44);

  return (v59)(v21, v44);
}

uint64_t sub_100344450()
{
  v0 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  ALBtNotification._timestamp.getter();
  v4 = type metadata accessor for ALTimeStamp();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000059A8(v3, &qword_100418C70, qword_10039A8A0);
LABEL_3:
    *&result = 0.0;
    return result;
  }

  v7 = COERCE_DOUBLE(ALTimeStamp._machAbsoluteTimeSec.getter());
  v9 = v8;
  (*(v5 + 8))(v3, v4);
  if (v9)
  {
    *&result = v7;
  }

  else
  {
    v10 = ALBtAdvertisement._machContTimeNs.getter();
    if (v11)
    {
      goto LABEL_3;
    }

    v12 = v10;
    v13 = v7 * MsInSec.getter();
    *&result = v13 - UsToSec.getter() * v12;
  }

  return result;
}

uint64_t sub_1003448A4(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1003448D4(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1003448E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100344914(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *sub_10034496C()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1003449E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALScanServices();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100344A94(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ALScanAdv() + 36);

  return sub_100349954(a1, v3);
}

uint64_t sub_100344B20@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = *(type metadata accessor for ALScanAdv() + 36);
  v13 = type metadata accessor for ALScanServices();
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  *(a4 + 40) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 12) = 0;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (!*(a1 + 16))
  {
    v25 = a3;

    goto LABEL_7;
  }

  v17 = v14;
  v18 = a3;

  v19 = sub_10031DC00(v17, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:
    v23 = 0;
    v24 = 1;
    goto LABEL_8;
  }

  sub_100002524(*(a1 + 56) + 32 * v19, v45);
  v22 = swift_dynamicCast();
  v23 = v44;
  if (!v22)
  {
    v23 = 0;
  }

  v24 = v22 ^ 1;
LABEL_8:
  *(a4 + 16) = v23;
  *(a4 + 20) = v24;
  v26 = [a3 identifier];

  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = UUID.uuidString.getter();
  v34 = v33;
  (*(v28 + 8))(v31, v27);
  *(a4 + 24) = v32;
  *(a4 + 32) = v34;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
  }

  v37 = sub_10031DC00(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
  }

  sub_100002524(*(a1 + 56) + 32 * v37, v45);

  sub_100024A2C(&qword_100431AA8, &qword_10039ABF0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v41 = v44;
  if (v44 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_13;
    }
  }

  result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_13:
  if ((v41 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v41 + 32);
LABEL_16:

    ALScanServices.init(uuid:)();
    return sub_100349954(v11, a4 + v12);
  }

  __break(1u);
  return result;
}

void sub_100344ED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = type metadata accessor for ALScanService();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ALScanServices();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 40) = 0;
  v12 = type metadata accessor for ALScanAdv();
  v13 = *(v8 + 56);
  v38 = *(v12 + 36);
  v13(a2 + v38, 1, 1, v7);
  *(a2 + 8) = [v39 bleRSSI];
  *(a2 + 12) = 0;
  *(a2 + 16) = [v39 bleChannel];
  *(a2 + 20) = 0;
  v14 = [v39 identifier];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  if (([v39 discoveryFlags] & 0x80000000) != 0)
  {
    v20 = [v39 watchSetupData];
    if (v20)
    {
      v21 = v20;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = *(v8 + 104);
      v34 = enum case for ALScanServices.Testing(_:);
      v33 = v25;
      v25(v11);
      ALScanServices.service.getter();
      (*(v8 + 8))(v11, v7);
      v26 = ALScanService._testingCustomWatchData.getter();
      v35 = v13;
      v28 = v27;
      (*(v36 + 8))(v6, v37);
      v29 = sub_10009F948(v22, v24, v26, v28);
      sub_100005B2C(v22, v24);

      v30 = v28;
      v13 = v35;
      sub_100005B2C(v26, v30);
      if (v29)
      {
        v31 = v38;
        sub_1000059A8(a2 + v38, &qword_100431AA0, &qword_10039A210);
        v33(a2 + v31, v34, v7);
LABEL_13:
        v13(a2 + v31, 0, 1, v7);
        return;
      }
    }

    else
    {
    }

    v31 = v38;
    sub_1000059A8(a2 + v38, &qword_100431AA0, &qword_10039A210);
    (*(v8 + 104))(a2 + v31, enum case for ALScanServices.FE25(_:), v7);
    goto LABEL_13;
  }

  v19 = v39;
}

void *sub_100345294()
{
  v1 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1003452E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1003453E4(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral) = 0;
  v6 = a1;

  v7 = sub_100343514(v6, a2, a3);
  v8 = *((swift_isaMask & *v7) + 0xC8);
  v9 = v7;
  v10 = v8();
  sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10036C830;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_1003499C4(inited);
  swift_setDeallocating();
  sub_100024A2C(&qword_100431AC0, &unk_10039AC00);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(CBCentralManager);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithDelegate:v9 queue:v10 options:isa];

  v17 = OBJC_IVAR____TtC8ALDaemon22ALCentralCoreBluetooth__btCentral;
  swift_beginAccess();
  v18 = *(v9 + v17);
  *(v9 + v17) = v16;

  return v9;
}

uint64_t sub_1003455F4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Reg central scan BT on AP from CB", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*((swift_isaMask & *v1) + 0x98))(v10);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= 1)
  {
    return (*((swift_isaMask & *v1) + 0x168))(result);
  }

  return result;
}

void sub_1003457E4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  scanlog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "cbcentral starting boost scan", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*((swift_isaMask & *v1) + 0x150))(v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isScanning];
    if (v13)
    {
      v13 = [v12 stopScan];
    }

    (*((swift_isaMask & *v1) + 0x98))(v13);
    sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10036C800;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v16;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v17;
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = 30;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v18;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 30;
    sub_1003499C4(inited);
    swift_setDeallocating();
    sub_100024A2C(&qword_100431AC0, &unk_10039AC00);
    swift_arrayDestroy();
    v19 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 scanForPeripheralsWithServices:isa options:v19];
  }
}

void sub_100345B2C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  scanlog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "cbcentral stopping boost scan", v9, 2u);
  }

  v10 = (*(v3 + 8))(v6, v2);
  v11 = (*((swift_isaMask & *v1) + 0x150))(v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isScanning];
    if (v13)
    {
      v13 = [v12 stopScan];
    }

    (*((swift_isaMask & *v1) + 0x168))(v13);
  }
}

void sub_100345D1C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  v10 = (*((swift_isaMask & *v0) + 0x150))(v7);
  if (v10)
  {
    v11 = v10;
    scanlog.getter(v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "screen off stopping cbcentral scan", v14, 2u);
    }

    (*(v2 + 8))(v9, v1);
    [v11 stopScan];
  }

  else
  {
    scanlog.getter(v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "could not stop cbcentral scan on screen off, no _btCentral", v17, 2u);
    }

    (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_100345F74()
{
  (*((swift_isaMask & *v0) + 0x168))();
  v1 = *((swift_isaMask & *v0) + 0xB8);

  return v1(0);
}

void sub_100346008()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0x150))(v4);
  if (v7)
  {
    v8 = v7;
    scanlog.getter(v6);
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v26 = v8;
      v13 = v12;
      v25 = swift_slowAlloc();
      v27 = v25;
      *v13 = 136315138;
      (*((swift_isaMask & *v9) + 0x98))();
      sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
      v14 = Array.description.getter();
      v24 = v1;
      v15 = v14;
      v17 = v16;

      v18 = sub_10000234C(v15, v17, &v27);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Starting scan with services: %s", v13, 0xCu);
      sub_100002580(v25);

      v8 = v26;

      v19 = (*(v2 + 8))(v6, v24);
    }

    else
    {

      v19 = (*(v2 + 8))(v6, v1);
    }

    (*((swift_isaMask & *v9) + 0x98))(v19);
    sub_10000ABCC(0, &unk_100431AC8, CBUUID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100024A2C(&qword_100431AB8, &qword_10039ABF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100374440;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v22;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_1003499C4(inited);
    swift_setDeallocating();
    sub_1000059A8(inited + 32, &qword_100431AC0, &unk_10039AC00);
    v23 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 scanForPeripheralsWithServices:isa options:v23];
  }
}

uint64_t sub_1003463DC(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  __chkstk_darwin(v1);
  v75 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  v4 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for ALScanAdv();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ALBtAdvertisement();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v69 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v66 = &v63 - v24;
  v68 = v25;
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = [objc_opt_self() mainBundle];
  v29 = [v28 bundleIdentifier];

  if (v29)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v32 = 0xE100000000000000;
    v30 = 95;
  }

  aBlock = v30;
  v81 = v32;

  v33._countAndFlagsBits = 0x756F662E7462632ELL;
  v33._object = 0xEA0000000000646ELL;
  String.append(_:)(v33);

  String.utf8CString.getter();

  v67 = os_transaction_create();

  sub_100349AF4(v65, v17);
  ALBtAdvertisement.init()();
  v34 = *(v17 + 2);
  LOBYTE(aBlock) = v17[12];
  ALBtAdvertisement._rssidB.setter();
  v35 = *(v17 + 4);
  LOBYTE(aBlock) = v17[20];
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();
  v36 = *(v17 + 3);
  v37 = *(v17 + 4);

  ALBtAdvertisement._identifier.setter();
  sub_10000A0A4(&v17[*(v14 + 36)], v13, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  sub_100349B58(v17);
  scanlog.getter(v9);
  v38 = *(v19 + 16);
  v39 = v66;
  v38(v66, v27, v18);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v63 = v9;
    v64 = v38;
    aBlock = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_10000234C(0xD000000000000012, 0x80000001003B20B0, &aBlock);
    *(v42 + 12) = 2080;
    v44 = ALBtAdvertisement.description.getter();
    v45 = v39;
    v47 = v46;
    v48 = *(v19 + 8);
    v65 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = v48;
    (v48)(v45, v18);
    v49 = sub_10000234C(v44, v47, &aBlock);

    *(v42 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s, %s", v42, 0x16u);
    swift_arrayDestroy();
    v38 = v64;

    v50 = (*(v70 + 8))(v63, v71);
  }

  else
  {

    v51 = *(v19 + 8);
    v65 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = v51;
    (v51)(v39, v18);
    v50 = (*(v70 + 8))(v9, v71);
  }

  v52 = v72;
  v53 = (*((swift_isaMask & *v72) + 0xC8))(v50);
  v54 = v69;
  v38(v69, v27, v18);
  v55 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v56 = swift_allocObject();
  v71 = v27;
  *(v56 + 16) = v67;
  *(v56 + 24) = v52;
  (*(v19 + 32))(v56 + v55, v54, v18);
  v84 = sub_100349BB4;
  v85 = v56;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100003EE4;
  v83 = &unk_1004086E0;
  v57 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v58 = v52;
  v59 = v73;
  static DispatchQoS.unspecified.getter();
  v79 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  v60 = v75;
  v61 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v57);
  swift_unknownObjectRelease();

  (*(v77 + 8))(v60, v61);
  (*(v74 + 8))(v59, v76);
  (v66)(v71, v18);
}

uint64_t sub_100346C54(uint64_t a1)
{
  v2 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  ALBtAdvertisement.init()();
  v6 = *(a1 + 8);
  v12[12] = *(a1 + 12);
  ALBtAdvertisement._rssidB.setter();
  v7 = *(a1 + 16);
  v12[8] = *(a1 + 20);
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  ALBtAdvertisement._identifier.setter();
  v10 = type metadata accessor for ALScanAdv();
  sub_10000A0A4(a1 + *(v10 + 36), v5, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  return sub_100349B58(a1);
}

id sub_100346E94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  scanlog.getter(&v38 - v13);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  p_align = &stru_100415FE8.align;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v38 = v12;
    v20 = v4;
    v21 = v9;
    v22 = v2;
    v23 = v5;
    v24 = v19;
    v25 = swift_slowAlloc();
    v39 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_10000234C(0xD000000000000020, 0x80000001003B20D0, &v39);
    *(v24 + 12) = 2048;
    *(v24 + 14) = [v15 state];

    _os_log_impl(&_mh_execute_header, v16, v17, "%s state:%ld", v24, 0x16u);
    sub_100002580(v25);
    p_align = (&stru_100415FE8 + 24);

    v5 = v23;
    v2 = v22;
    v9 = v21;
    v4 = v20;
    v12 = v38;
  }

  else
  {
  }

  v26 = *(v5 + 8);
  v26(v14, v4);
  result = [v15 *(p_align + 260)];
  if (result >= 5)
  {
    if (result == 5)
    {
      scanlog.getter(v12);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "powered on", v30, 2u);
      }

      v31 = (v26)(v12, v4);
      return (*((swift_isaMask & *v2) + 0x130))(v31);
    }

    else
    {
      v32 = p_align;
      scanlog.getter(v9);
      v33 = v15;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = [v33 *(v32 + 260)];

        _os_log_impl(&_mh_execute_header, v34, v35, "unknown central manager state: %ld", v37, 0xCu);
      }

      else
      {

        v34 = v33;
      }

      return (v26)(v9, v4);
    }
  }

  return result;
}

void *sub_10034730C()
{
  v1 = OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100347358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100347410()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = 95;
  }

  v3._countAndFlagsBits = 0x2E6E61637374622ELL;
  v3._object = 0xED0000646E756F66;
  String.append(_:)(v3);

  return v2;
}

uint64_t sub_1003474E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel);
  v2 = *(v0 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel + 8);

  return v1;
}

void *sub_100347568(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__btDiscovery) = 0;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 95;
  }

  v12 = (v3 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel);

  v13._countAndFlagsBits = 0x2E6E61637374622ELL;
  v13._object = 0xED0000646E756F66;
  String.append(_:)(v13);

  *v12 = v9;
  v12[1] = v11;
  v14 = a1;

  v15 = sub_100343514(v14, a2, a3);
  v16 = *((swift_isaMask & *v15) + 0x130);
  v17 = v15;
  v16();

  return v17;
}

uint64_t sub_1003476FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  __chkstk_darwin(v2);
  v60 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v55 - v13;
  scanlog.getter(v55 - v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "CBDiscovery scan request start", v17, 2u);
  }

  v18 = *(v8 + 8);
  v18(v14, v7);
  v19 = [objc_allocWithZone(CBDiscovery) init];
  v20 = (*((swift_isaMask & *v1) + 0x160))(v19);
  v21 = (*((swift_isaMask & *v1) + 0x158))(v20);
  if (!v21)
  {
    scanlog.getter(v12);
    Logger._fault(_:function:file:line:)(sub_10034A724, 0, "regScan()", 9, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    return (v18)(v12, v7);
  }

  v22 = v21;
  v23 = *((swift_isaMask & *v1) + 0xC8);
  v24 = (swift_isaMask & *v1) + 200;
  v25 = v23();
  [v22 setDispatchQueue:v25];

  [v22 addDiscoveryType:23];
  [v22 setDiscoveryFlags:0x202000000];
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v69 = sub_100349FA0;
  v70 = v26;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100004830;
  v68 = &unk_100408730;
  v27 = _Block_copy(&aBlock);
  v28 = v1;

  [v22 setDeviceFoundHandler:v27];
  _Block_release(v27);
  v29 = [v22 setBleScanRate:50];
  v30 = (*((swift_isaMask & *v28) + 0x98))(v29);
  v31 = v30;
  if (v30 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v32)
  {

    v45 = (v23)(v46);
LABEL_16:
    v47 = v45;
    v48 = swift_allocObject();
    *(v48 + 16) = v22;
    *(v48 + 24) = v28;
    v69 = sub_10034A028;
    v70 = v48;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100003EE4;
    v68 = &unk_100408780;
    v49 = _Block_copy(&aBlock);
    v50 = v28;
    v51 = v22;
    v52 = v58;
    static DispatchQoS.unspecified.getter();
    v64 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
    v53 = v60;
    v54 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);

    (*(v62 + 8))(v53, v54);
    (*(v59 + 8))(v52, v61);
  }

  aBlock = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v55[0] = v28;
    v55[1] = v24;
    v56 = v23;
    v57 = v22;
    v34 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v31 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      v37 = [objc_allocWithZone(CBServiceUUIDParamInfo) init];
      v38 = [v36 data];
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005B2C(v39, v41);
      [v37 setServiceUUID:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v43 = aBlock[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v32 != v34);

    v22 = v57;
    v28 = v55[0];
    v45 = (v56)(v44);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100347ED0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  scanlog.getter(&v17 - v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "cbdiscovery starting boost scan", v12, 2u);
  }

  v13 = *(v3 + 8);
  v14 = v13(v9, v2);
  v15 = (*((swift_isaMask & *v1) + 0x158))(v14);
  if (v15)
  {
    v16 = v15;
    [v15 setBleScanRate:50];
  }

  else
  {
    scanlog.getter(v7);
    Logger._fault(_:function:file:line:)(sub_10034A724, 0, "startBoostScan()", 16, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    v13(v7, v2);
  }
}

void sub_100348104()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  scanlog.getter(&v17 - v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "cbdiscovery stopping boost scan", v12, 2u);
  }

  v13 = *(v3 + 8);
  v14 = v13(v9, v2);
  v15 = (*((swift_isaMask & *v1) + 0x158))(v14);
  if (v15)
  {
    v16 = v15;
    [v15 setBleScanRate:0];
  }

  else
  {
    scanlog.getter(v7);
    Logger._fault(_:function:file:line:)(sub_100336768, 0, "stopBoostScan()", 15, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);
    v13(v7, v2);
  }
}

uint64_t sub_100348338(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = type metadata accessor for ALScanAdv();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ALBtAdvertisement();
  v57 = *(v64 - 8);
  v23 = *(v57 + 64);
  v24 = __chkstk_darwin(v64);
  v53 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = *(v2 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel);
  v28 = *(v2 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel + 8);
  String.utf8CString.getter();
  v56 = os_transaction_create();

  v29 = a1;
  sub_100344ED8(v29, v22);
  ALBtAdvertisement.init()();
  v30 = *(v22 + 2);
  LOBYTE(aBlock[0]) = v22[12];
  ALBtAdvertisement._rssidB.setter();
  v31 = *(v22 + 4);
  LOBYTE(aBlock[0]) = v22[20];
  ALBtAdvertisement._channel.setter();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();
  v32 = *(v22 + 3);
  v33 = *(v22 + 4);

  ALBtAdvertisement._identifier.setter();
  sub_10000A0A4(&v22[*(v19 + 44)], v17, &qword_100431AA0, &qword_10039A210);
  ALBtAdvertisement._service.setter();
  sub_100349B58(v22);
  scanlog.getter(v13);
  v34 = v29;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v34;
    v39 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "onDeviceFound,%@", v37, 0xCu);
    sub_1000059A8(v38, &unk_10042F020, &qword_100399AE0);
  }

  v40 = (*(v54 + 8))(v13, v55);
  v55 = (*((swift_isaMask & *v2) + 0xC8))(v40);
  v41 = v57;
  v42 = v53;
  v43 = v64;
  (*(v57 + 16))(v53, v26, v64);
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v56;
  *(v45 + 24) = v2;
  (*(v41 + 32))(v45 + v44, v42, v43);
  aBlock[4] = sub_10034A708;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003EE4;
  aBlock[3] = &unk_1004087D0;
  v46 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v47 = v2;
  v48 = v58;
  static DispatchQoS.unspecified.getter();
  v65 = &_swiftEmptyArrayStorage;
  sub_100006D84();
  sub_100024A2C(&unk_10042F300, &qword_10039A520);
  sub_100006E30(&qword_100430F50, &unk_10042F300, &qword_10039A520);
  v49 = v61;
  v50 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v55;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  swift_unknownObjectRelease();

  (*(v62 + 8))(v49, v50);
  (*(v59 + 8))(v48, v60);
  (*(v41 + 8))(v26, v64);
}

uint64_t sub_100348A20(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  if (!a1)
  {
    return result;
  }

  v31 = result;
  swift_getErrorValue();
  swift_errorRetain();
  result = dispatch thunk of Error._code.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result == -71142)
  {
    scanlog.getter(v14);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "onCBError,interrupted,%{public}@", v25, 0xCu);
      sub_1000059A8(v26, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    v17 = v14;
  }

  else if (result == -71148)
  {
    scanlog.getter(v17);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "onCBError,bluetoothdUnloaded,%{public}@", v20, 0xCu);
      sub_1000059A8(v21, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }
  }

  else
  {
    v28 = scanlog.getter(v11);
    __chkstk_darwin(v28);
    v29 = a3;
    Logger._fault(_:function:file:line:)(a2, (&v30 - 4), "onCBError(_:)", 13, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALScanCoreBluetooth.swift", 77, 2);

    v17 = v11;
  }

  return (*(v7 + 8))(v17, v31);
}

uint64_t sub_100348E1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ALDaemon24ALDiscoveryCoreBluetooth__tranlabel + 8);
}

id sub_100348E78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

size_t sub_100348F00(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100024A2C(&qword_100431D88, &unk_10039ACF0);
  v10 = *(type metadata accessor for ALScanServices() - 8);
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
  v15 = *(type metadata accessor for ALScanServices() - 8);
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

void *sub_1003490D8()
{
  v64 = type metadata accessor for ALCBUUID();
  v57 = *(v64 - 8);
  v0 = *(v57 + 64);
  __chkstk_darwin(v64);
  v63 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ALScanService();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v62);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for ALScanServices();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  v11 = __chkstk_darwin(v9);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Logger();
  v67 = *(v15 - 8);
  v16 = v67[8];
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(**sub_10031EA68() + 248);

  v21 = v19(v20);

  if (!v21)
  {
    return &_swiftEmptyArrayStorage;
  }

  v59 = v15;
  scanlog.getter(v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v65 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v68 = v58;
    *v25 = 136315138;
    v26 = Array.description.getter();
    v28 = sub_10000234C(v26, v27, &v68);

    *(v25 + 4) = v28;
    v21 = v65;
    _os_log_impl(&_mh_execute_header, v22, v23, "found requests %s", v25, 0xCu);
    sub_100002580(v58);
  }

  result = (v67[1])(v18, v59);
  if (!*(v21 + 16))
  {
LABEL_21:

    return &_swiftEmptyArrayStorage;
  }

  v30 = *(v21 + 16);
  v56 = v2;
  v31 = 0;
  v32 = (v66 + 48);
  v33 = (v66 + 32);
  v34 = (v21 + 40);
  v67 = &_swiftEmptyArrayStorage;
  v59 = v14;
  do
  {
    if (v31 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v36 = *(v34 - 1);
    v35 = *v34;

    ALScanServices.init(rawValue:)();
    if ((*v32)(v8, 1, v9) == 1)
    {
      result = sub_1000059A8(v8, &qword_100431AA0, &qword_10039A210);
    }

    else
    {
      v37 = *v33;
      (*v33)(v14, v8, v9);
      v38 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100348F00(0, v38[2] + 1, 1, v38);
      }

      v40 = v38[2];
      v39 = v38[3];
      v67 = v38;
      if (v40 >= v39 >> 1)
      {
        v67 = sub_100348F00(v39 > 1, v40 + 1, 1, v67);
      }

      v41 = v66;
      v42 = v67;
      v67[2] = v40 + 1;
      v43 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      v14 = v59;
      result = (v37)(v43, v59, v9);
    }

    ++v31;
    v34 += 2;
    v21 = v65;
  }

  while (v30 != v31);

  v68 = &_swiftEmptyArrayStorage;
  v44 = v67[2];
  if (!v44)
  {
    goto LABEL_21;
  }

  v45 = *(v66 + 16);
  v46 = v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v58 = *(v66 + 72);
  v59 = v45;
  v47 = (v56 + 8);
  v48 = (v57 + 8);
  v65 = v9;
  v66 += 16;
  v49 = (v66 - 8);
  do
  {
    v50 = v60;
    v51 = v65;
    (v59)(v60, v46, v65);
    v52 = v61;
    ALScanServices.service.getter();
    v53 = v63;
    ALScanService.uuid.getter();
    (*v47)(v52, v62);
    ALCBUUID.cbuuid.getter();
    (*v48)(v53, v64);
    (*v49)(v50, v51);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v68[2] >= v68[3] >> 1)
    {
      v57 = v68[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46 += v58;
    --v44;
  }

  while (v44);
  v54 = v68;

  return v54;
}

uint64_t sub_100349860()
{
  v1 = *(v0 + 16);
  v2._object = 0x80000001003B1B20;
  v2._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x2C726F7272652CLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t type metadata accessor for ALScanAdv()
{
  result = qword_10048C0C0;
  if (!qword_10048C0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100349954(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100431AA0, &qword_10039A210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003499C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_100430508, &unk_10039ACE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A0A4(v4, &v13, &qword_100431AC0, &unk_10039AC00);
      v5 = v13;
      v6 = v14;
      result = sub_10031DC00(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100323E60(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100349AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ALScanAdv();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100349B58(uint64_t a1)
{
  v2 = type metadata accessor for ALScanAdv();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100349BE0(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for ALScanAdv();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  if (([a3 integerValue] & 0x8000000000000000) != 0 && objc_msgSend(a3, "integerValue") >= -120)
  {
    v34 = v3;
    scanlog.getter(v18);
    v26 = a3;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v33 = a1;
      v30 = v29;
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v26;
      *v31 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "found advertisement with rssi:%@", v30, 0xCu);
      sub_1000059A8(v31, &unk_10042F020, &qword_100399AE0);

      a1 = v33;
    }

    (*(v12 + 8))(v18, v11);

    sub_100344B20(a2, [v26 intValue], a1, v10);
    (*((swift_isaMask & *v34) + 0x170))(v10);
    return sub_100349B58(v10);
  }

  else
  {
    scanlog.getter(v16);
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "cbcentral invalid rssi: %@", v22, 0xCu);
      sub_1000059A8(v23, &unk_10042F020, &qword_100399AE0);
    }

    return (*(v12 + 8))(v16, v11);
  }
}

void sub_100349FA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = objc_autoreleasePoolPush();
  (*((swift_isaMask & *v3) + 0x170))(a1);

  objc_autoreleasePoolPop(v4);
}

void sub_10034A028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v6[4] = sub_10034A698;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1003367F8;
  v6[3] = &unk_100408840;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v1 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_10034A100()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10034A1CC()
{
  v1 = type metadata accessor for ALBtAdvertisement();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 24);
  sub_100024A2C(&unk_100431430, &unk_10039A880);
  v6 = *(v2 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100374440;
  (*(v3 + 16))(v7 + v4, v0 + v4, v1);
  (*((swift_isaMask & *v5) + 0x118))(v7, 1);
}

uint64_t sub_10034A314()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(23);
  v2._object = 0x80000001003B2240;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  swift_getErrorValue();
  dispatch thunk of Error._code.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 44;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void sub_10034A488()
{
  sub_10034A574();
  if (v0 <= 0x3F)
  {
    sub_1000B2498(319, &qword_100418640);
    if (v1 <= 0x3F)
    {
      sub_1000B2498(319, &qword_100431C80);
      if (v2 <= 0x3F)
      {
        sub_10034A5D8();
        if (v3 <= 0x3F)
        {
          sub_10034A640();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10034A574()
{
  if (!qword_100431C68)
  {
    sub_100024BB0(&unk_100431C70, &unk_10039AC90);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100431C68);
    }
  }
}

void sub_10034A5D8()
{
  if (!qword_100431C88)
  {
    sub_10000ABCC(255, &qword_100431C90, CBPeripheral_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100431C88);
    }
  }
}

void sub_10034A640()
{
  if (!qword_100431C98)
  {
    type metadata accessor for ALScanServices();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100431C98);
    }
  }
}

uint64_t sub_10034A728(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10034A780(a1, a2, a3);
  return v6;
}

uint64_t sub_10034A780(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  v6 = (v3 + 24);
  *(v3 + 32) = 0;
  v7 = (v3 + 32);
  *(v3 + 40) = 0;
  v8 = (v3 + 40);
  *(v3 + 16) = a1;
  v21 = a1;
  v9 = sub_100334FA4();
  v10 = *(**v9 + 104);

  v10(v22, 0x616C756D69535442, 0xEB00000000646574, &type metadata for Bool);

  if (LOBYTE(v22[0]) == 2 || (v22[0] & 1) == 0)
  {
    v13 = *(**v9 + 104);

    v13(v22, 0x79616C7065525442, 0xED00005653436465, &type metadata for Bool);

    if (LOBYTE(v22[0]) == 2 || (v22[0] & 1) == 0)
    {
      v16 = *(**v9 + 104);

      v16(v22, 0x726F43686365654CLL, 0xEB00000000544265, &type metadata for Bool);

      if (LOBYTE(v22[0]) == 2 || (v22[0] & 1) != 0)
      {
        type metadata accessor for ALLeechCoreBluetooth();
        swift_beginAccess();
        v17 = sub_100336084(*(v3 + 16), a2, a3);

        swift_beginAccess();
        v18 = *v8;
        *v8 = v17;
      }

      else
      {
      }
    }

    else
    {
      type metadata accessor for ALBtReplayerCSV();
      v14 = sub_10032401C(v21, a2, a3);
      swift_beginAccess();
      v15 = *v7;
      *v7 = v14;
    }
  }

  else
  {
    type metadata accessor for ALBtSimulated();
    v11 = sub_10035C5E4(v21, a2, a3);
    swift_beginAccess();
    v12 = *v6;
    *v6 = v11;
  }

  return v4;
}

uint64_t sub_10034AA40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_10034AA78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_10034AAC8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_10034AB0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *sub_10034AB54()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_10034AB98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_10034ABF0(a1, a2, a3);
  return v6;
}

id *sub_10034ABF0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[3] = 0;
  v5 = v3 + 3;
  v3[4] = 0;
  v6 = v3 + 4;
  v3[2] = a1;
  v7 = a1;
  v8 = sub_100334FA4();
  v9 = *(**v8 + 104);

  v9(v17, 0xD000000000000011, 0x80000001003B2260, &type metadata for Bool);

  if (LOBYTE(v17[0]) == 2 || (v17[0] & 1) != 0)
  {
    type metadata accessor for ALCentralCoreBluetooth();
    swift_beginAccess();
    v10 = sub_100345398(v3[2], a2, a3);

    swift_beginAccess();
    v11 = *v5;
    *v5 = v10;
  }

  else
  {
    v13 = *(**v8 + 104);

    v13(v17, 0xD000000000000013, 0x80000001003B2280, &type metadata for Bool);

    if (LOBYTE(v17[0]) == 2 || (v17[0] & 1) == 0)
    {

      return v4;
    }

    type metadata accessor for ALDiscoveryCoreBluetooth();
    v14 = sub_10034751C(v7, a2, a3);
    swift_beginAccess();
    v11 = *v6;
    *v6 = v14;
  }

  return v4;
}

uint64_t sub_10034AE18()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

ALDaemon::ALWiFiScanRow::Band_optional __swiftcall ALWiFiScanRow.Band.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int sub_10034AF78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10034AFF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10034B16C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10034B1B4()
{
  result = qword_100431FB0;
  if (!qword_100431FB0)
  {
    sub_100024BB0(&qword_10042F720, &qword_100399AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FB0);
  }

  return result;
}

unint64_t sub_10034B2CC()
{
  result = qword_100431FB8;
  if (!qword_100431FB8)
  {
    sub_100024BB0(&qword_10042F720, &qword_100399AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FB8);
  }

  return result;
}

void (*ALWiFiScanRow._mac.modify(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034B1B4();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return sub_10034B4B8;
}

void sub_10034B4B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  v5 = (*a1)[5];
  v4 = (*a1)[6];
  (*a1)[2] = (*a1)[4];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t ALWiFiScanRow._ssid.getter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10034B6A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10034B7B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_10034B890()
{
  result = qword_100431FC0;
  if (!qword_100431FC0)
  {
    sub_100024BB0(&qword_1004302B0, &qword_10039A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FC0);
  }

  return result;
}

uint64_t ALWiFiScanRow._ssid.setter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034B9EC@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a2 = 0;
  return result;
}

uint64_t sub_10034BAAC()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034BB84();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10034BB54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10034BAAC();
}

unint64_t sub_10034BB84()
{
  result = qword_100431FC8;
  if (!qword_100431FC8)
  {
    sub_100024BB0(&qword_1004302B0, &qword_10039A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FC8);
  }

  return result;
}

void (*ALWiFiScanRow._ssid.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034B890();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10034BD68;
}

void sub_10034BD68(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v3[2] = (*a1)[4];
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[6];
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v8 = v3[1];
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

unint64_t sub_10034BF04()
{
  result = qword_100431FD0;
  if (!qword_100431FD0)
  {
    sub_100024BB0(&qword_100431FD8, &qword_10039ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FD0);
  }

  return result;
}

unint64_t sub_10034C004()
{
  result = qword_100431FE0;
  if (!qword_100431FE0)
  {
    sub_100024BB0(&qword_100431FD8, &qword_10039ADF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FE0);
  }

  return result;
}

void (*ALWiFiScanRow._rssiDb.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034C1E4;
}

void sub_10034C1E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 36);
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034C3AC()
{
  result = qword_100431FF8;
  if (!qword_100431FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100431FF8);
  }

  return result;
}

uint64_t sub_10034C420@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a2[4];
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a3 = 0;
  return result;
}

uint64_t sub_10034C560(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(&qword_100431FF0, &qword_10039AE28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034C5D8()
{
  result = qword_100432008;
  if (!qword_100432008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432008);
  }

  return result;
}

void (*ALWiFiScanRow._mode.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034C560(&qword_100431FE8, sub_10034C3AC);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10034C7B0;
}

void sub_10034C7B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034C938@<X0>(void *a1@<X1>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, void (*a4)(void)@<X6>, _BYTE *a5@<X8>)
{
  v9 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  sub_100024A2C(a2, a3);
  a4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a5 = 0;
  return result;
}

void (*ALWiFiScanRow._channel.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034CB9C;
}

void sub_10034CB9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 36);
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034CCE4()
{
  result = qword_100432010;
  if (!qword_100432010)
  {
    sub_100024BB0(&qword_100432018, &qword_10039AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432010);
  }

  return result;
}

unint64_t sub_10034CDE4()
{
  result = qword_100432020;
  if (!qword_100432020)
  {
    sub_100024BB0(&qword_100432018, &qword_10039AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432020);
  }

  return result;
}

void (*ALWiFiScanRow._ageSec.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034CCE4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034CFC4;
}

void sub_10034CFC4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 36);
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034D0E4()
{
  result = qword_100432028;
  if (!qword_100432028)
  {
    sub_100024BB0(&qword_100432030, &qword_10039AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432028);
  }

  return result;
}

uint64_t sub_10034D18C()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034D260();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10034D228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10034D18C();
}

unint64_t sub_10034D260()
{
  result = qword_100432038;
  if (!qword_100432038)
  {
    sub_100024BB0(&qword_100432030, &qword_10039AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432038);
  }

  return result;
}

void (*ALWiFiScanRow._isAppleHotspot.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_10034D438;
}

void sub_10034D438(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034D51C()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10034D628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10034D774()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034D844@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a2 = 0;
  return result;
}

uint64_t sub_10034D8F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10034D18C();
}

void (*ALWiFiScanRow._isMoving.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034D0E4();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_10034DA84;
}

void sub_10034DA84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034DBA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a4(a2, a3, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10034DD1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void (*a4)(uint64_t, uint64_t, void *)@<X6>, _BYTE *a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a4(a2, a3, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  *a5 = v11;
  return result;
}

uint64_t sub_10034DE84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034DF4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100024BB0(&qword_100432048, &qword_10039AF08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034DFC4()
{
  result = qword_100432050;
  if (!qword_100432050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432050);
  }

  return result;
}

uint64_t sub_10034E038(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034E0FC@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a2[4];
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a3 = 0;
  return result;
}

uint64_t sub_10034E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a6(a4, a5, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034E310()
{
  result = qword_100432060;
  if (!qword_100432060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432060);
  }

  return result;
}

void (*ALWiFiScanRow._band.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034DF4C(&qword_100432040, sub_10034DFC4);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10034E4E8;
}

void sub_10034E4E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

unint64_t sub_10034E5E0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v4 | (v5 << 32);
}

uint64_t sub_10034E718@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v7;
  *(a3 + 4) = v8;
  return result;
}

uint64_t sub_10034E85C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034E94C()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034EA48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*ALWiFiScanRow._frequencyKhz.modify(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034BF04();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 8) = *v4;
  *(v4 + 36) = *(v4 + 4);
  return sub_10034EC90;
}

void sub_10034EC90(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 36);
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

double ALWiFiScanRow._cfAbsoluteTimeSec.getter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10034EE7C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10034EF88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ALWiFiScanRow._cfAbsoluteTimeSec.setter()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*ALWiFiScanRow._cfAbsoluteTimeSec.modify(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10034F30C;
}

void sub_10034F30C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  (*a1)[1] = (*a1)[2];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10034F410(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_10034F53C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_10034F680(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_10034F74C()
{
  result = qword_100432068;
  if (!qword_100432068)
  {
    sub_100024BB0(&qword_100432070, &qword_10039AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432068);
  }

  return result;
}

uint64_t sub_10034F7E8()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034F8E4@<X0>(void *a1@<X2>, uint64_t *a2@<X5>, uint64_t *a3@<X6>, void (*a4)(uint64_t, uint64_t)@<X7>, _BYTE *a5@<X8>)
{
  v9 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  v10 = sub_100024A2C(a2, a3);
  a4(v10, v11);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a5 = 0;
  return result;
}

uint64_t sub_10034F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a5(v6, v7);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_10034FABC()
{
  result = qword_100432078;
  if (!qword_100432078)
  {
    sub_100024BB0(&qword_100432070, &qword_10039AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432078);
  }

  return result;
}

void (*ALWiFiScanRow._machContinuousTimeSec.modify(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  sub_10034F74C();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return sub_10034FCA8;
}

void sub_10034FCA8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  v5 = (*a1)[5];
  v4 = (*a1)[6];
  (*a1)[2] = (*a1)[4];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t ALWiFiScanRow.__allocating_init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10)
{
  v12 = *(v10 + 48);
  v13 = *(v10 + 52);
  v14 = swift_allocObject();
  v28 = *a6;
  v29 = *a10;
  *(v14 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  *(v14 + 64) = swift_getOpaqueTypeConformance2();
  sub_10000DA60((v14 + 32));
  static PersistentModel.createBackingData<A>()();
  v15 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 16) = 0;
  v16 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 17) = 0;
  v17 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 18) = 0;
  v18 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 19) = 0;
  v19 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 20) = 0;
  v20 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 21) = 0;
  v21 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 22) = 0;
  v22 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 23) = 0;
  v23 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 24) = 0;
  v24 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 25) = 0;
  v25 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v26 = *(v14 + 64);
  sub_10000D9B8((v14 + 32), *(v14 + 56));
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v14 + 26) = 0;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v14;
}

void *ALWiFiScanRow.init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10)
{
  v11 = v10;
  v12 = *v10;
  v26 = *a6;
  v27 = *a10;
  v11[7] = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  v11[8] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v11 + 4);
  static PersistentModel.createBackingData<A>()();
  v13 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 16) = 0;
  v14 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 17) = 0;
  v15 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 18) = 0;
  v16 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 19) = 0;
  v17 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 20) = 0;
  v18 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 21) = 0;
  v19 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 22) = 0;
  v20 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 23) = 0;
  v21 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 24) = 0;
  v22 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 25) = 0;
  v23 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v24 = v11[8];
  sub_10000D9B8(v11 + 4, v11[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 26) = 0;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v11;
}

uint64_t sub_10035141C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ALWiFiScanRow(0);
  a1[3] = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t sub_10035153C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_10000D9FC(v3 + 32, a2);
}

uint64_t sub_100351588(uint64_t a1, uint64_t *a2)
{
  sub_10000D9FC(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_100002580((v3 + 32));
  sub_10002351C(v5, v3 + 32);
  return swift_endAccess();
}

uint64_t ALWiFiScanRow.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100002580((v1 + 32));
  sub_10002351C(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t (*ALWiFiScanRow.persistentBackingData.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 32, v4);
  return sub_1003516D4;
}

uint64_t ALWiFiScanRow.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ALWiFiScanRow.init(backingData:)(a1);
  return v5;
}

void *ALWiFiScanRow.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v3 = *v1;
  v2[7] = sub_100024A2C(&qword_100432080, &qword_10039AF90);
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  v2[8] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v2 + 4);
  static PersistentModel.createBackingData<A>()();
  v4 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_10042F720, &qword_100399AB8);
  sub_10034B2CC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  v5 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_1004302B0, &qword_10039A268);
  sub_10034BB84();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 0;
  v6 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
  sub_10034C004();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 18) = 0;
  v7 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
  sub_10034C560(&qword_100432000, sub_10034C5D8);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 19) = 0;
  v8 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 20) = 0;
  v9 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432018, &qword_10039AE80);
  sub_10034CDE4();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 21) = 0;
  v10 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432030, &qword_10039AEB0);
  sub_10034D260();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 22) = 0;
  v11 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 23) = 0;
  v12 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432048, &qword_10039AF08);
  sub_10034DF4C(&qword_100432058, sub_10034E310);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 24) = 0;
  v13 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 25) = 0;
  v14 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v15 = v2[8];
  sub_10000D9B8(v2 + 4, v2[7]);
  swift_getKeyPath();
  sub_100024A2C(&qword_100432070, &qword_10039AF88);
  sub_10034FABC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 26) = 0;
  ObservationRegistrar.init()();
  *(v2 + 23) = 0;
  v2[2] = 0;
  swift_beginAccess();
  sub_100002580(v2 + 4);
  sub_10002351C(a1, (v2 + 4));
  swift_endAccess();
  return v2;
}

uint64_t ALWiFiScanRow.deinit()
{
  sub_100002580((v0 + 32));
  v1 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ALWiFiScanRow.__deallocating_deinit()
{
  sub_100002580(v0 + 4);
  v1 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100351F34(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_100351FBC()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1003520C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_1003521CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352298()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352360()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_1003523FC(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_100352560;
}

void sub_100352560(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  (*a1)[1] = (*a1)[2];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10035264C(void *a1)
{
  v1 = a1[4];
  sub_10000D9B8(a1, a1[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

double sub_1003526D0()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1003527D4@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1003528E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003529B8()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352A8C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  swift_getKeyPath();
  sub_10034B16C(a3, a4);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100352B20(void *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_100352C84;
}

void sub_100352C84(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  (*a1)[1] = (*a1)[2];
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_100352DCC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100352EB4()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_100352F78(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_1003530D0;
}

void sub_1003530D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_1003531C4(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_10035326C()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10035337C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_1003534CC()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100353568(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_1003536C0;
}

void sub_1003536C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_100353798(uint64_t a1, void *a2)
{
  v2 = a2[4];
  sub_10000D9B8(a2, a2[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t sub_100353820()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100353924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_100353A30(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100353B00()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100353BCC()
{
  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_100353C68(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = sub_10034B16C(&qword_100432088, type metadata accessor for ALBTScanRow);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return sub_100353DC0;
}

void sub_100353DC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t *sub_100353E98()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v3[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  v3[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  v4 = v3[6];
  sub_10000D9B8(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v5 = v3[6];
  sub_10000D9B8(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v6 = v3[6];
  sub_10000D9B8(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v7 = v3[6];
  sub_10000D9B8(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v8 = v3[6];
  sub_10000D9B8(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v3;
}

uint64_t *sub_10035414C()
{
  v1 = v0;
  v2 = *v0;
  v1[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v1 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  v3 = v1[6];
  sub_10000D9B8(v1 + 2, v1[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v4 = v1[6];
  sub_10000D9B8(v1 + 2, v1[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v5 = v1[6];
  sub_10000D9B8(v1 + 2, v1[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v6 = v1[6];
  sub_10000D9B8(v1 + 2, v1[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v7 = v1[6];
  sub_10000D9B8(v1 + 2, v1[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v1;
}

uint64_t sub_100354418@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ALBTScanRow(0);
  a1[3] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(a1);
  return static PersistentModel.createBackingData<A>()();
}

uint64_t sub_10035453C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_10000D9FC(v3 + 16, a2);
}

uint64_t sub_100354588(uint64_t a1, uint64_t *a2)
{
  sub_10000D9FC(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_100002580((v3 + 16));
  sub_10002351C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t ALBTScanRow.persistentBackingData.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100002580((v1 + 16));
  sub_10002351C(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*ALBTScanRow.persistentBackingData.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 16, v4);
  return sub_1003546D4;
}

uint64_t *ALBTScanRow.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100002580(v5 + 2);
  sub_10002351C(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t *ALBTScanRow.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[5] = sub_100024A2C(&qword_100432098, &qword_10039B060);
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_10000DA60(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  sub_100002580(v2 + 2);
  sub_10002351C(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_100354978(uint64_t a1, uint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a2;
  sub_10034B16C(a3, a4);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100354A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v7 = *a5;
  sub_10034B16C(a6, a7);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ALBTScanRow.deinit()
{
  sub_100002580((v0 + 16));
  v1 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ALBTScanRow.__deallocating_deinit()
{
  sub_100002580(v0 + 2);
  v1 = OBJC_IVAR____TtC8ALDaemon11ALBTScanRow___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100354BF8(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100354C88()
{
  v0 = swift_allocObject();
  sub_100354CC0();
  return v0;
}

void sub_100354CC0()
{
  v1 = type metadata accessor for Logger();
  v93 = *(v1 - 8);
  v2 = *(v93 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v84 = (&v75 - v6);
  v7 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v94 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModelConfiguration();
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  __chkstk_darwin(v10);
  v91 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v85 = v0;
  v0[3] = 0;
  v0[2] = 0;
  v83 = v0 + 2;
  v76 = v0 + 3;
  v0[4] = 0;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 URLsForDirectory:5 inDomains:1];

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v88 = v1;
  v20 = *(v14 + 16);
  v21 = v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v82 = v13;
  v80 = v14 + 16;
  v89 = v20;
  v20(&v75 - v16, v21, v13);

  __chkstk_darwin(v22);
  v90 = &v75 - v16;
  v81 = &v75 - v16;
  URL.appendingPathComponent(_:isDirectory:)();
  v23 = objc_opt_self();
  v24 = [v23 mainBundle];
  v25 = [v24 infoDictionary];

  if (!v25)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v79 = v14;
  v86 = v5;
  v87 = v10;
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v26 + 16) || (v27 = sub_10031DC00(0xD000000000000012, 0x80000001003B2340), (v28 & 1) == 0))
  {
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  sub_100002524(*(v26 + 56) + 32 * v27, v97);

  sub_100323E60(v97, &v98);
  swift_dynamicCast();
  v29 = v95;
  v30 = v96;
  v77 = sub_100334FA4();
  v31 = *(**v77 + 104);

  v31(&v98, 0xD000000000000010, 0x80000001003B2360, &type metadata for String);

  if (!*(&v98 + 1))
  {
    *&v97[0] = v29;
    *(&v97[0] + 1) = v30;

    v33._countAndFlagsBits = 0x336C71732E64735FLL;
    v33._object = 0xE800000000000000;
    String.append(_:)(v33);
  }

  v34 = v82;
  __chkstk_darwin(v32);
  v35 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = &v75 - v35;
  URL.appendingPathComponent(_:)();

  v36 = [v23 mainBundle];
  v37 = [v36 bundleIdentifier];

  v78 = &v75;
  v82 = &v75;
  if (v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __chkstk_darwin(v38);
  v89(&v75 - v35, v94, v34);
  static ModelConfiguration.CloudKitDatabase.automatic.getter();
  v39 = v91;
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  type metadata accessor for ModelContainer();
  sub_100024A2C(&qword_1004320A0, &qword_10039B068);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10036C830;
  v41 = type metadata accessor for ALWiFiScanRow(0);
  v42 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  v43 = type metadata accessor for ALBTScanRow(0);
  v44 = sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  *(v40 + 48) = v43;
  *(v40 + 56) = v44;
  sub_100024A2C(&qword_1004320A8, &qword_10039B070);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100374440;
  v46 = v87;
  *(v45 + 56) = v87;
  *(v45 + 64) = sub_10034B16C(&qword_1004320B0, &type metadata accessor for ModelConfiguration);
  v47 = sub_10000DA60((v45 + 32));
  (*(v92 + 16))(v47, v39, v46);
  v48 = ModelContainer.__allocating_init(for:configurations:)();
  v49 = v83;
  swift_beginAccess();
  v50 = *v49;
  *v49 = v48;

  v51 = v88;
  v52 = v86;
  swift_beginAccess();
  if (*v49)
  {
    v53 = type metadata accessor for ModelContext();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();

    v56 = ModelContext.init(_:)();
    v57 = v76;
    swift_beginAccess();
    v58 = *v57;
    *v57 = v56;
  }

  else
  {
    v59 = v84;
    corelog.getter(v84);
    Logger._fault(_:function:file:line:)(sub_100355948, 0, "init()", 6, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALDatabase.swift", 68, 2);
    (*(v93 + 8))(v59, v51);
  }

  v60 = corelog.getter(v52);
  v84 = &v75;
  __chkstk_darwin(v60);
  v61 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89(v61, v94, v34);
  v62 = Logger.logObject.getter();
  v63 = v34;
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v97[0] = v66;
    *v65 = 136446210;
    v67 = URL.absoluteString.getter();
    v69 = v68;
    v70 = *(v79 + 8);
    v70(v61, v63);
    v71 = sub_10000234C(v67, v69, v97);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v62, v64, "Database file in use: %{public}s", v65, 0xCu);
    sub_100002580(v66);

    v46 = v87;
    (*(v93 + 8))(v86, v88);
  }

  else
  {

    v70 = *(v79 + 8);
    v70(&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
    (*(v93 + 8))(v52, v51);
  }

  v72 = *(**v77 + 104);

  v72(v97, 0xD000000000000016, 0x80000001003B23D0, &type metadata for Double);

  (*(v92 + 8))(v91, v46);
  v70(v94, v63);
  v70(v90, v63);
  v70(v81, v63);
  if (BYTE8(v97[0]))
  {
    v73 = 24.0;
  }

  else
  {
    v73 = *v97;
  }

  v74 = v85;
  swift_beginAccess();
  v74[4] = v73;
}

uint64_t sub_100355964()
{
  v117 = type metadata accessor for Logger();
  v116 = *(v117 - 8);
  v1 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v129 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v128 = &v112 - v7;
  v8 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v118 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v112 - v12;
  v13 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v119 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v131 = &v112 - v17;
  v18 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v132 = *(v18 - 8);
  v19 = *(v132 + 64);
  __chkstk_darwin(v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v112 - v24;
  v26 = type metadata accessor for ALWiFiScanResult();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v137 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 128))(v29);
  if (!result)
  {
    return result;
  }

  v32 = result;
  ALWiFiNotification._scanResult.getter();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1000059A8(v25, &unk_10042F310, &unk_100399860);
    v33 = 0;
LABEL_24:
    dispatch thunk of ModelContext.save()();
    if (!v33)
    {
    }

    v108 = v115;
    v109 = corelog.getter(v115);
    __chkstk_darwin(v109);
    v110 = 129;
    Logger._fault(_:function:file:line:)(sub_10035AF94, (&v112 - 4), "insert(_:)", 10, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALDatabase.swift", 68, 2);

    return (*(v116 + 8))(v108, v117);
  }

  v113 = v27;
  v34 = *(v27 + 32);
  v114 = v26;
  v34(v137, v25, v26);
  v35 = ALWiFiScanResult._accessPoints.getter();
  v127 = *(v35 + 16);
  if (!v127)
  {
    v33 = 0;
LABEL_23:

    (*(v113 + 8))(v137, v114);
    goto LABEL_24;
  }

  result = type metadata accessor for ALWiFiScanRow(0);
  v36 = result;
  v37 = 0;
  v33 = 0;
  v126 = v35 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
  v125 = v132 + 16;
  v120 = (v132 + 8);
  v139 = v21;
  v124 = v32;
  v123 = v18;
  v122 = v35;
  v121 = result;
  while (v37 < *(v35 + 16))
  {
    v42 = *(v132 + 72);
    v134 = v37;
    (*(v132 + 16))(v21, v126 + v42 * v37, v18);
    v43 = *(v36 + 48);
    v44 = *(v36 + 52);
    v45 = swift_allocObject();
    *(v45 + 56) = sub_100024A2C(&qword_100432080, &qword_10039AF90);
    v138 = type metadata accessor for ALWiFiScanRow;
    v46 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
    v140 = v36;
    v141 = v36;
    v142 = v46;
    v143 = v46;
    *(v45 + 64) = swift_getOpaqueTypeConformance2();
    sub_10000DA60((v45 + 32));
    v133 = v46;
    static PersistentModel.createBackingData<A>()();
    v47 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    v140 = 0;
    LOBYTE(v141) = 1;
    v136 = v33;
    sub_100024A2C(&qword_10042F720, &qword_100399AB8);
    sub_10034B2CC();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 16) = 0;
    v48 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    v140 = 0;
    v141 = 0;
    sub_100024A2C(&qword_1004302B0, &qword_10039A268);
    sub_10034BB84();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 17) = 0;
    v49 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LODWORD(v140) = 0;
    BYTE4(v140) = 1;
    v50 = sub_100024A2C(&qword_100431FD8, &qword_10039ADF8);
    sub_10034C004();
    v135 = v50;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 18) = 0;
    v51 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LOBYTE(v140) = 4;
    sub_100024A2C(&qword_100431FF0, &qword_10039AE28);
    sub_10034C560(&qword_100432000, sub_10034C5D8);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 19) = 0;
    v52 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LODWORD(v140) = 0;
    BYTE4(v140) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 20) = 0;
    v53 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LODWORD(v140) = 0;
    BYTE4(v140) = 1;
    sub_100024A2C(&qword_100432018, &qword_10039AE80);
    sub_10034CDE4();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 21) = 0;
    v54 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LOBYTE(v140) = 2;
    sub_100024A2C(&qword_100432030, &qword_10039AEB0);
    sub_10034D260();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 22) = 0;
    v55 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LOBYTE(v140) = 2;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 23) = 0;
    v56 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LOBYTE(v140) = 4;
    sub_100024A2C(&qword_100432048, &qword_10039AF08);
    sub_10034DF4C(&qword_100432058, sub_10034E310);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 24) = 0;
    v57 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    LODWORD(v140) = 0;
    BYTE4(v140) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 25) = 0;
    v58 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    v140 = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v59 = *(v45 + 64);
    sub_10000D9B8((v45 + 32), *(v45 + 56));
    swift_getKeyPath();
    v140 = 0;
    LOBYTE(v141) = 1;
    sub_100024A2C(&qword_100432070, &qword_10039AF88);
    sub_10034FABC();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v45 + 26) = 0;
    ObservationRegistrar.init()();
    v140 = v45;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v112 - 4) = v45;
    *(&v112 - 3) = 0;
    v61 = sub_10034B16C(&qword_100431FA0, v138);
    v33 = v136;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v62 = swift_getKeyPath();
    __chkstk_darwin(v62);
    *(&v112 - 3) = 0;
    *(&v112 - 4) = v45;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v63 = swift_getKeyPath();
    __chkstk_darwin(v63);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v64 = swift_getKeyPath();
    __chkstk_darwin(v64);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v65 = swift_getKeyPath();
    __chkstk_darwin(v65);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v66 = swift_getKeyPath();
    __chkstk_darwin(v66);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v67 = swift_getKeyPath();
    __chkstk_darwin(v67);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v68 = swift_getKeyPath();
    __chkstk_darwin(v68);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v69 = swift_getKeyPath();
    __chkstk_darwin(v69);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v70 = swift_getKeyPath();
    __chkstk_darwin(v70);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v71 = swift_getKeyPath();
    __chkstk_darwin(v71);
    HIDWORD(v111) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v140 = v45;
    v72 = swift_getKeyPath();
    __chkstk_darwin(v72);
    *(&v112 - 4) = v45;
    *(&v112 - 3) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v73 = ALWiFiScanSingleAccessPoint._mac.getter();
    v140 = v45;
    v74 = swift_getKeyPath();
    __chkstk_darwin(v74);
    *(&v112 - 4) = v45;
    *(&v112 - 3) = v73;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v75 = ALWiFiScanSingleAccessPoint._ssid.getter();
    v140 = v45;
    v76 = swift_getKeyPath();
    __chkstk_darwin(v76);
    *(&v112 - 4) = v45;
    *(&v112 - 3) = v75;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v77 = ALWiFiScanSingleAccessPoint._rssidB.getter();
    v140 = v45;
    v78 = swift_getKeyPath();
    __chkstk_darwin(v78);
    v110 = v45;
    LODWORD(v111) = v77;
    BYTE4(v111) = BYTE4(v77) & 1;
    v138 = v61;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v79 = v131;
    ALWiFiScanSingleAccessPoint._mode.getter();
    v80 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
    v81 = *(v80 - 8);
    v82 = *(v81 + 48);
    LODWORD(v46) = v82(v79, 1, v80);
    sub_1000059A8(v79, &qword_10041C780, &qword_100374180);
    if (v46 != 1)
    {
      v83 = v119;
      ALWiFiScanSingleAccessPoint._mode.getter();
      result = v82(v83, 1, v80);
      if (result == 1)
      {
        goto LABEL_30;
      }

      ALWiFiScanSingleAccessPoint.Mode.rawValue.getter();
      (*(v81 + 8))(v83, v80);
    }

    v140 = v45;
    v84 = swift_getKeyPath();
    __chkstk_darwin(v84);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    ALWiFiScanSingleAccessPoint._channel.getter();
    v140 = v45;
    v85 = swift_getKeyPath();
    __chkstk_darwin(v85);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v86 = ALWiFiScanSingleAccessPoint._ageSec.getter();
    v140 = v45;
    v87 = swift_getKeyPath();
    __chkstk_darwin(v87);
    LODWORD(v111) = v86;
    BYTE4(v111) = BYTE4(v86) & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    ALWiFiScanSingleAccessPoint._isAph.getter();
    v140 = v45;
    v88 = swift_getKeyPath();
    __chkstk_darwin(v88);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    LOBYTE(v86) = ALWiFiScanSingleAccessPoint._isMoving.getter();
    v140 = v45;
    v89 = swift_getKeyPath();
    __chkstk_darwin(v89);
    v110 = v45;
    LOBYTE(v111) = v86;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v90 = v130;
    ALWiFiScanSingleAccessPoint._band.getter();
    v91 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
    v92 = *(v91 - 8);
    v93 = *(v92 + 48);
    v94 = v93(v90, 1, v91);
    sub_1000059A8(v90, &qword_10042F320, &qword_100399870);
    if (v94 != 1)
    {
      v95 = v118;
      ALWiFiScanSingleAccessPoint._band.getter();
      result = v93(v95, 1, v91);
      if (result == 1)
      {
        goto LABEL_29;
      }

      ALWiFiScanSingleAccessPoint.Band.rawValue.getter();
      (*(v92 + 8))(v95, v91);
    }

    v140 = v45;
    v96 = swift_getKeyPath();
    __chkstk_darwin(v96);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v97 = ALWiFiScanSingleAccessPoint._frequencyKhz.getter();
    v140 = v45;
    v98 = swift_getKeyPath();
    __chkstk_darwin(v98);
    v110 = v45;
    LODWORD(v111) = v97;
    BYTE4(v111) = BYTE4(v97) & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v99 = v128;
    ALWiFiScanResult._scanTimestamp.getter();
    v100 = type metadata accessor for ALTimeStamp();
    v101 = *(v100 - 8);
    v102 = *(v101 + 48);
    if (v102(v99, 1, v100) == 1)
    {
      sub_1000059A8(v99, &qword_100418C70, qword_10039A8A0);
LABEL_19:
      v103 = 0;
      goto LABEL_20;
    }

    v103 = ALTimeStamp.cfAbsoluteTimeSec.getter();
    v105 = v104;
    (*(v101 + 8))(v99, v100);
    if (v105)
    {
      goto LABEL_19;
    }

LABEL_20:
    v140 = v45;
    v106 = swift_getKeyPath();
    __chkstk_darwin(v106);
    v110 = v45;
    v111 = v103;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v107 = v129;
    ALWiFiScanResult._scanTimestamp.getter();
    if (v102(v107, 1, v100) == 1)
    {
      sub_1000059A8(v107, &qword_100418C70, qword_10039A8A0);
      v38 = 0;
    }

    else
    {
      v38 = ALTimeStamp.machContinuousTimeSec.getter();
      v40 = v39;
      (*(v101 + 8))(v107, v100);
      if (v40)
      {
        v38 = 0;
      }
    }

    v18 = v123;
    v35 = v122;
    v37 = v134 + 1;
    v140 = v45;
    v41 = swift_getKeyPath();
    __chkstk_darwin(v41);
    *(&v112 - 4) = v45;
    *(&v112 - 3) = v38;
    LOBYTE(v110) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v36 = v121;
    dispatch thunk of ModelContext.insert<A>(_:)();

    v21 = v139;
    result = (*v120)(v139, v18);
    if (v127 == v37)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_100357550(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v158 = *(v3 - 8);
  v4 = *(v158 + 64);
  __chkstk_darwin(v3);
  v5 = sub_100024A2C(&qword_1004317D0, &unk_10039AB20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v112 - v7;
  v9 = sub_100024A2C(&unk_10042F310, &unk_100399860);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v128 = &v112 - v11;
  v133 = type metadata accessor for ALWiFiNotification();
  v142 = *(v133 - 8);
  v12 = *(v142 + 64);
  v13 = __chkstk_darwin(v133);
  v132 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v131 = &v112 - v15;
  v16 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v127 = &v112 - v18;
  v130 = type metadata accessor for ALTimeStamp();
  v159 = *(v130 - 8);
  v19 = *(v159 + 64);
  __chkstk_darwin(v130);
  v137 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100024A2C(&qword_10042F320, &qword_100399870);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v149 = &v112 - v23;
  v24 = sub_100024A2C(&qword_10041C780, &qword_100374180);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v150 = &v112 - v26;
  v156 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v152 = *(v156 - 8);
  v27 = *(v152 + 64);
  v28 = __chkstk_darwin(v156);
  v155 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v112 - v30;
  v129 = type metadata accessor for ALWiFiScanResult();
  v32 = *(v129 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v129);
  v151 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100024A2C(&qword_1004324A8, &unk_10039B6A0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v40 = &v112 - v39;
  v41 = (*(*v1 + 128))(v38);
  if (!v41)
  {
    return &_swiftEmptyArrayStorage;
  }

  v157 = v3;
  v161 = v31;
  v125 = v8;
  v42 = v41;
  v43 = sub_100024A2C(&qword_100432430, &unk_10039B660);
  v135 = &v112;
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43 - 8);
  v46 = &v112 - v45;
  v47 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v48 = *(v47 - 8);
  (*(v48 + 16))(v46, a1, v47);
  (*(v48 + 56))(v46, 0, 1, v47);
  type metadata accessor for ALWiFiScanRow(0);
  v160 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  FetchDescriptor.init(predicate:sortBy:)();
  v136 = v42;
  v50 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v36 + 8))(v40, v35);

  v52 = sub_10035BAF0(v51);
  v114 = 0;
  v134 = v50;

  v53 = v52[8];
  v139 = v52 + 8;
  v54 = 1 << *(v52 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v140 = v55 & v53;
  v138 = (v54 + 63) >> 6;
  v148 = (v152 + 16);
  v147 = v152 + 32;
  v146 = v152 + 8;
  v124 = (v159 + 16);
  v123 = (v159 + 56);
  v122 = (v32 + 16);
  v121 = (v32 + 56);
  v120 = enum case for ALWiFiNotification.ScanType.cached(_:);
  v119 = (v142 + 16);
  v118 = v142 + 8;
  v117 = (v159 + 8);
  v116 = (v32 + 8);
  v56 = v52;
  v115 = v142 + 32;

  v57 = 0;
  v141 = &_swiftEmptyArrayStorage;
LABEL_7:
  v58 = &unk_10039AF60;
  v59 = &qword_10041C7A8;
  v60 = &qword_100374198;
  v61 = &qword_1004311C0;
  v62 = &qword_100399AB0;
  v63 = v139;
  v64 = v138;
  result = v140;
  while (result)
  {
LABEL_13:
    v66 = (v57 << 9) | (8 * __clz(__rbit64(result)));
    v67 = *(v56[6] + v66);
    v68 = *(v56[7] + v66);
    if (v68 >> 62)
    {
      v70 = v58;
      v71 = result;
      v72 = v59;
      v73 = v60;
      v74 = v61;
      v75 = v62;
      v76 = _CocoaArrayWrapper.endIndex.getter();
      v62 = v75;
      v61 = v74;
      v60 = v73;
      v59 = v72;
      v64 = v138;
      v63 = v139;
      v69 = v76;
      result = v71;
      v58 = v70;
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result &= result - 1;
    if (v69)
    {
      v140 = result;
      v113 = v56;

      result = ALWiFiScanResult.init()();
      v77 = 0;
      v145 = v68 & 0xC000000000000001;
      v126 = v68 & 0xFFFFFFFFFFFFFF8;
      v112 = v68 + 32;
      v144 = v68;
      v143 = v69;
      do
      {
        if (v145)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v78 = result;
          v79 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v77 >= *(v126 + 16))
          {
            goto LABEL_51;
          }

          v78 = *(v68 + 8 * v77 + 32);

          v79 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_50;
          }
        }

        v153 = v79;
        v154 = v77;
        ALWiFiScanSingleAccessPoint.init()();
        v80 = OBJC_IVAR____TtC8ALDaemon13ALWiFiScanRow___observationRegistrar;
        v162 = v78;
        swift_getKeyPath();
        v81 = sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034B1B4();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._mac.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034B890();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._ssid.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        v157 = sub_10034BF04();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v162) = BYTE4(v162);
        ALWiFiScanSingleAccessPoint._rssidB.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034C560(&qword_100431FE8, sub_10034C3AC);
        PersistentModel.getValue<A>(forKey:)();

        v158 = v80;
        v159 = v81;
        if (v162 == 4)
        {
          v82 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
          (*(*(v82 - 8) + 56))(v150, 1, 1, v82);
        }

        else
        {
          v162 = v78;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          result = v162;
          if (v162 == 4)
          {
            goto LABEL_56;
          }

          ALWiFiScanSingleAccessPoint.Mode.init(rawValue:)();
        }

        ALWiFiScanSingleAccessPoint._mode.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v162) = BYTE4(v162);
        ALWiFiScanSingleAccessPoint._channel.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034CCE4();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v162) = BYTE4(v162);
        ALWiFiScanSingleAccessPoint._ageSec.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034D0E4();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._isAph.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        ALWiFiScanSingleAccessPoint._isMoving.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10034DF4C(&qword_100432040, sub_10034DFC4);
        PersistentModel.getValue<A>(forKey:)();

        if (v162 == 4)
        {
          v83 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
          (*(*(v83 - 8) + 56))(v149, 1, 1, v83);
        }

        else
        {
          v162 = v78;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          result = v162;
          if (v162 == 4)
          {
            goto LABEL_55;
          }

          ALWiFiScanSingleAccessPoint.Band.init(rawValue:)();
        }

        v84 = v161;
        ALWiFiScanSingleAccessPoint._band.setter();
        v162 = v78;
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        PersistentModel.getValue<A>(forKey:)();

        LOBYTE(v162) = BYTE4(v162);
        ALWiFiScanSingleAccessPoint._frequencyKhz.setter();
        (*v148)(v155, v84, v156);
        v85 = ALWiFiScanResult._accessPoints.modify();
        v87 = v86;
        v88 = *v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v87 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v88 = sub_10035A214(0, v88[2] + 1, 1, v88, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
          *v87 = v88;
        }

        v91 = v88[2];
        v90 = v88[3];
        if (v91 >= v90 >> 1)
        {
          v88 = sub_10035A214(v90 > 1, v91 + 1, 1, v88, &qword_1004311C0, &qword_100399AB0, &type metadata accessor for ALWiFiScanSingleAccessPoint);
          *v87 = v88;
        }

        v88[2] = v91 + 1;
        v92 = v152;
        v93 = v156;
        (*(v152 + 32))(v88 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v91, v155, v156);
        v85(&v162, 0);

        result = (*(v92 + 8))(v161, v93);
        v77 = v154 + 1;
        v94 = v143;
        v68 = v144;
      }

      while (v153 != v143);
      ALTimeStamp.init(cfAbsoluteTimeSec:)();
      result = v94 - 1;
      if (__OFSUB__(v94, 1))
      {
        goto LABEL_52;
      }

      if (v145)
      {
        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (result >= *(v126 + 16))
        {
          goto LABEL_54;
        }

        v95 = *(v112 + 8 * result);
      }

      v162 = v95;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10034F74C();
      PersistentModel.getValue<A>(forKey:)();

      v96 = v137;
      ALTimeStamp._machContinuousTimeSec.setter();
      v97 = v127;
      v98 = v130;
      (*v124)(v127, v96, v130);
      v99 = *v123;
      (*v123)(v97, 0, 1, v98);
      v100 = v151;
      ALWiFiScanResult._scanTimestamp.setter();
      v101 = v131;
      ALWiFiNotification.init()();
      static ALTimeStamp.now()();
      v99(v97, 0, 1, v98);
      ALWiFiNotification._timestamp.setter();
      v102 = v128;
      v103 = v129;
      (*v122)(v128, v100, v129);
      (*v121)(v102, 0, 1, v103);
      ALWiFiNotification._scanResult.setter();
      ALWiFiNotification._available.setter();
      v104 = type metadata accessor for ALWiFiNotification.ScanType();
      v105 = *(v104 - 8);
      v106 = v125;
      (*(v105 + 104))(v125, v120, v104);
      (*(v105 + 56))(v106, 0, 1, v104);
      ALWiFiNotification._scanType.setter();
      (*v119)(v132, v101, v133);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_10035A214(0, v141[2] + 1, 1, v141, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
      }

      v56 = v113;
      v108 = v141[2];
      v107 = v141[3];
      if (v108 >= v107 >> 1)
      {
        v141 = sub_10035A214(v107 > 1, v108 + 1, 1, v141, &qword_10041C7A8, &qword_100374198, &type metadata accessor for ALWiFiNotification);
      }

      v109 = v142;
      v110 = v133;
      (*(v142 + 8))(v131, v133);
      (*v117)(v137, v130);
      (*v116)(v151, v129);
      v111 = v141;
      v141[2] = v108 + 1;
      (*(v109 + 32))(v111 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v108, v132, v110);
      goto LABEL_7;
    }
  }

  while (1)
  {
    v65 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v65 >= v64)
    {

      return v141;
    }

    result = v63[v65];
    ++v57;
    if (result)
    {
      v57 = v65;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100358D00(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  result = (*(*v1 + 128))(v5);
  if (result)
  {
    type metadata accessor for ALWiFiScanRow(0);
    v7 = sub_100024A2C(&qword_100432430, &unk_10039B660);
    v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v7 - 8);
    v10 = &v13 - v9;
    v11 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, a1, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    sub_1000059A8(v10, &qword_100432430, &unk_10039B660);
    dispatch thunk of ModelContext.save()();
  }

  return result;
}

unint64_t sub_100359000(double a1, double a2)
{
  v4 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v12 = a1;
  v13 = a2;
  v14 = type metadata accessor for ALWiFiScanRow(0);
  Predicate.init(_:)();
  v9 = sub_100357550(v8);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_10035911C(double a1, double a2)
{
  v4 = sub_100024A2C(&qword_1004320B8, &qword_10039B078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  v13 = type metadata accessor for ALWiFiScanRow(0);
  Predicate.init(_:)();
  sub_100358D00(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100359230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v64 = a2;
  v57 = *a1;
  v6 = sub_100024A2C(&qword_100432438, &qword_10039B670);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  v62 = *(v7 + 64);
  __chkstk_darwin(v6);
  v63 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v43 - v63;
  v67 = sub_100024A2C(&qword_100432440, &qword_10039B678);
  v70 = *(v67 - 8);
  v60 = *(v70 + 64);
  __chkstk_darwin(v67);
  v61 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v43 - v61;
  v11 = sub_100024A2C(&qword_100432448, &qword_10039B680);
  v12 = *(v11 - 8);
  v58 = *(v12 + 64);
  __chkstk_darwin(v11);
  v59 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v43 - v59;
  v54 = sub_100006E30(&qword_100432450, &qword_100432448, &qword_10039B680);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v15 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v15;
  v15(v14, v11);
  v16 = sub_100024A2C(&qword_100432458, &qword_10039B688);
  v69 = *(v16 - 8);
  v52 = *(v69 + 64);
  __chkstk_darwin(v16);
  v53 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v43 - v53;
  v71 = a3;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v20 = *(v19 - 8);
  v50 = v20[8];
  __chkstk_darwin(v19);
  v51 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v43 - v51;
  v49 = v20[13];
  v49(&v43 - v51, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v19);
  v48 = sub_100006E30(&qword_100432460, &qword_100432440, &qword_10039B678);
  v47 = sub_100006E30(&qword_100432468, &qword_100432458, &qword_10039B688);
  v23 = v67;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v46 = v20[1];
  v46(v22, v19);
  v24 = *(v69 + 8);
  v69 += 8;
  v45 = v24;
  v24(v18, v16);
  v25 = *(v70 + 8);
  v70 += 8;
  v44 = v25;
  v26 = (v25)(v10, v23);
  v27 = __chkstk_darwin(v26);
  v28 = &v43 - v63;
  v29 = __chkstk_darwin(v27);
  v30 = &v43 - v61;
  __chkstk_darwin(v29);
  v31 = &v43 - v59;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v32 = v56(v31, v11);
  __chkstk_darwin(v32);
  v33 = &v43 - v53;
  v71 = a4;
  v34 = static PredicateExpressions.build_Arg<A>(_:)();
  __chkstk_darwin(v34);
  v35 = &v43 - v51;
  v49(&v43 - v51, enum case for PredicateExpressions.ComparisonOperator.lessThanOrEqual(_:), v19);
  v36 = v67;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v46(v35, v19);
  v45(v33, v16);
  v44(v30, v36);
  v37 = sub_100024A2C(&qword_100432470, &unk_10039B690);
  v38 = v64;
  v64[3] = v37;
  v38[4] = sub_10035B848();
  sub_10000DA60(v38);
  sub_100006E30(&qword_1004324A0, &qword_100432438, &qword_10039B670);
  v39 = v68;
  v40 = v65;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v41 = *(v66 + 8);
  v41(v28, v40);
  return (v41)(v39, v40);
}

uint64_t sub_1003599B8()
{
  result = (*(*v0 + 104))();
  if (result)
  {
    dispatch thunk of ModelContainer.erase()();
  }

  return result;
}

uint64_t sub_100359A1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t (*sub_100359AA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 32, v4);
  return sub_10035BF70;
}

void sub_100359B38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_10000D9FC(*a1, v2 + 40);
    swift_beginAccess();
    sub_100002580((v3 + 32));
    sub_10002351C((v2 + 40), v3 + 32);
    swift_endAccess();
    sub_100002580(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100002580((v3 + 32));
    sub_10002351C(v2, v3 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_100359BF0()
{
  v1 = *v0;
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  return PersistentModel.hash(into:)();
}

uint64_t sub_100359C64()
{
  v1 = *v0;
  sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
  return PersistentModel.id.getter();
}

uint64_t sub_100359CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

Swift::Int sub_100359D8C(unint64_t *a1, void (*a2)(uint64_t))
{
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_10034B16C(a1, a2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100359E48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  a4(a1);
  return v9;
}

uint64_t (*sub_100359E98(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10000D9FC(v1 + 16, v4);
  return sub_10035BF74;
}

void sub_100359F28(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_10000D9FC(*a1, v2 + 40);
    swift_beginAccess();
    sub_100002580((v3 + 16));
    sub_10002351C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_100002580(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100002580((v3 + 16));
    sub_10002351C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_100359FE4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10035A048()
{
  v1 = *v0;
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  return PersistentModel.hash(into:)();
}

Swift::Int sub_10035A0C0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10035A120()
{
  v1 = *v0;
  sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);
  return PersistentModel.id.getter();
}

uint64_t sub_10035A194(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10034B16C(&qword_100432090, type metadata accessor for ALBTScanRow);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

size_t sub_10035A214(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024A2C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_10035A3F0(double a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10035A43C(v4, a1);
}

unint64_t sub_10035A43C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10035A4A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024A2C(&qword_1004324B0, &unk_10039B6B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t _s8ALDaemon13ALWiFiScanRowC14schemaMetadataSay9SwiftData6SchemaC08PropertyG0VGvgZ_0()
{
  sub_100024A2C(&qword_1004324B8, &qword_10039B6C0);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003833A0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_10035AB90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100352360();
}

uint64_t sub_10035AC24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1003534CC();
}

uint64_t sub_10035AC64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1003534CC();
}

uint64_t sub_10035ACA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100353BCC();
}

uint64_t _s8ALDaemon11ALBTScanRowC14schemaMetadataSay9SwiftData6SchemaC08PropertyE0VGvgZ_0()
{
  sub_100024A2C(&qword_1004324B8, &qword_10039B6C0);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10036D780;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_10035AEF4()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(41);
  v2._object = 0x80000001003B2670;
  v2._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10035AF94()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(39);
  v2._object = 0x80000001003B2620;
  v2._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_10035B054()
{
  result = qword_1004320D0;
  if (!qword_1004320D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004320D0);
  }

  return result;
}

unint64_t sub_10035B0AC()
{
  result = qword_1004320D8;
  if (!qword_1004320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004320D8);
  }

  return result;
}

uint64_t sub_10035B420()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ALWiFiScanRow.__allocating_init(mac:ssid:rssiDb:mode:channel:ageSec:isAppleHotspot:isMoving:band:frequencyKhz:cfAbsoluteTimeSec:machContinuousTimeSec:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 192);
  v17 = a5 | ((HIDWORD(a5) & 1) << 32);
  v18 = a7 | ((HIDWORD(a7) & 1) << 32);
  v19 = a8 | ((HIDWORD(a8) & 1) << 32);
  LOBYTE(a13) = a13 & 1;
  v22 = a11 | ((HIDWORD(a11) & 1) << 32);
  v20 = a2 & 1;

  return v16(a1, v20, a3, a4, v17, a6, v18, v19, a9, a10, v22, a12, a13, a14);
}

uint64_t sub_10035B5F0()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10035B700()
{
  result = qword_100432420;
  if (!qword_100432420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432420);
  }

  return result;
}

unint64_t sub_10035B754()
{
  result = qword_100432428;
  if (!qword_100432428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432428);
  }

  return result;
}

uint64_t sub_10035B7A8()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(38);
  v2._object = 0x80000001003B25A0;
  v2._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_10035B848()
{
  result = qword_100432478;
  if (!qword_100432478)
  {
    sub_100024BB0(&qword_100432470, &unk_10039B690);
    sub_10035B8C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432478);
  }

  return result;
}

unint64_t sub_10035B8C0()
{
  result = qword_100432480;
  if (!qword_100432480)
  {
    sub_100024BB0(&qword_100432438, &qword_10039B670);
    sub_10035B940();
    sub_10035B9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432480);
  }

  return result;
}

unint64_t sub_10035B940()
{
  result = qword_100432488;
  if (!qword_100432488)
  {
    sub_100024BB0(&qword_100432440, &qword_10039B678);
    sub_100006E30(&qword_100432490, &qword_100432448, &qword_10039B680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432488);
  }

  return result;
}

unint64_t sub_10035B9D8()
{
  result = qword_100432498;
  if (!qword_100432498)
  {
    sub_100024BB0(&qword_100432458, &qword_10039B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100432498);
  }

  return result;
}

uint64_t sub_10035BA50()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(36);
  v2._object = 0x80000001003B25F0;
  v2._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v2);
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void *sub_10035BAF0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v21 = v6;
    swift_getKeyPath();
    sub_10034B16C(&qword_100431FA0, type metadata accessor for ALWiFiScanRow);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_10034B16C(&qword_100431FA8, type metadata accessor for ALWiFiScanRow);
    PersistentModel.getValue<A>(forKey:)();

    v7 = sub_10035A3F0(*&v5);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_21;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10035A4A4(v12, 1);
      v7 = sub_10035A3F0(*&v5);
      if ((v13 & 1) != (v14 & 1))
      {
        break;
      }
    }

    if (v13)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v7);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v15 = v7;
      sub_100024A2C(&qword_1004304E8, &qword_10039A348);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10039A200;
      *(v16 + 32) = v5;
      _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v15) = v5;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v16;
      v17 = _swiftEmptyDictionarySingleton[2];
      v11 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v11)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v18;
    }

    if (v21 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10035BFEC()
{
  ALBtAdvertisement.init()();
  machContTimeNs()();
  ALBtAdvertisement._machContTimeNs.setter();
  sub_10033ED80(0xFFFFFFFFFFFFFFFFLL);
  ALBtAdvertisement._mac.setter();
  result = sub_10033ECF4(61);
  if (__OFSUB__(0, result + 20))
  {
    __break(1u);
  }

  else
  {
    ALBtAdvertisement._rssidB.setter();
    sub_10033ECF4(14);
    ALBtAdvertisement._channel.setter();
    sub_10033ECF4(20);
    return ALBtAdvertisement._antennaIndex.setter();
  }

  return result;
}

uint64_t sub_10035C098@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ALBtAdvertisement();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_100024A2C(&qword_100418C70, qword_10039A8A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v35 = &v34 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  ALBtNotification.init()();
  v18 = sub_10033ED80(0x29uLL);
  corelog.getter(v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v13;
    *v21 = 134217984;
    *(v21 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Simulating BT advertisement count %ld", v21, 0xCu);
    v13 = v40;
  }

  result = (*(v14 + 8))(v17, v13);
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v18;
    if (v18)
    {
      v23 = 0;
      v37 = v3 + 32;
      v38 = (v3 + 16);
      v36 = v3 + 8;
      v39 = v7;
      do
      {
        ALBtAdvertisement.init()();
        machContTimeNs()();
        ALBtAdvertisement._machContTimeNs.setter();
        v42[0] = 0;
        swift_stdlib_random();
        while (!v42[0])
        {
          v42[0] = 0;
          swift_stdlib_random();
        }

        ALBtAdvertisement._mac.setter();
        v42[0] = 0;
        swift_stdlib_random();
        if ((61 * LODWORD(v42[0])) <= 0x38)
        {
          do
          {
            v42[0] = 0;
            swift_stdlib_random();
          }

          while ((61 * LODWORD(v42[0])) < 0x39);
        }

        LOBYTE(v42[0]) = 0;
        ALBtAdvertisement._rssidB.setter();
        do
        {
          v42[0] = 0;
          swift_stdlib_random();
        }

        while (((14 * LODWORD(v42[0])) & 0xFFFFFFFC) == 0);
        LOBYTE(v42[0]) = 0;
        ALBtAdvertisement._channel.setter();
        do
        {
          v42[0] = 0;
          swift_stdlib_random();
        }

        while (((20 * LODWORD(v42[0])) & 0xFFFFFFF0) == 0);
        LOBYTE(v42[0]) = 0;
        ALBtAdvertisement._antennaIndex.setter();
        (*v38)(v7, v9, v2);
        v24 = ALBtNotification._advertisements.modify();
        v26 = v25;
        v27 = *v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_100326598(0, v27[2] + 1, 1, v27);
          *v26 = v27;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_100326598(v29 > 1, v30 + 1, 1, v27);
          *v26 = v27;
        }

        ++v23;
        v27[2] = v30 + 1;
        v31 = v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30;
        v7 = v39;
        (*(v3 + 32))(v31, v39, v2);
        v24(v42, 0);
        (*(v3 + 8))(v9, v2);
      }

      while (v23 != v40);
    }

    v32 = v35;
    static ALTimeStamp.now()();
    v33 = type metadata accessor for ALTimeStamp();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    ALBtNotification._timestamp.setter();
    return ALBtNotification._simulated.setter();
  }

  return result;
}

uint64_t sub_10035C5E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_10035C794(a1, a2, a3);

  return v6;
}

uint64_t sub_10035C648(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10035C794(a1, a2, a3);

  return v3;
}

uint64_t sub_10035C67C()
{
  v1 = type metadata accessor for ALBtNotification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035C098(v5);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v6(v5);
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10035C794(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(**sub_100334FA4() + 104);

  v11(&v19, 0xD000000000000017, 0x80000001003B2720, &type metadata for Double);

  if (v20)
  {
    v12 = 6.0;
  }

  else
  {
    v12 = v19;
  }

  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  corelog.getter(v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "ALBtSimulated,interval,%f,sec", v15, 0xCu);
  }

  (*(v7 + 8))(v10, v6);
  return ALDataGenerationBase.init(queue:interval:)(v18);
}

uint64_t sub_10035CA18()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_10035CA50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *sub_10035CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[5] = 0;
  result[6] = a2;
  result[2] = a1;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *sub_10035CAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = 0;
  v4[6] = a2;
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = a4;
  return v4;
}

uint64_t sub_10035CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if (a1)
  {
    swift_errorRetain();
    kappalog.getter(v13);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "mapAsset cb error: %@", v18, 0xCu);
      sub_1000059A8(v19, &unk_10042F020, &qword_100399AE0);
    }

    else
    {
    }

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    kappalog.getter(&v25 - v14);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "mapAsset cb, updating config", v23, 2u);
    }

    (*(v9 + 8))(v15, v8);
    return sub_10035EE10(a2, a3, a4);
  }
}

uint64_t sub_10035CDC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v75 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = &v73 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v73 - v13;
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  kappalog.getter(&v73 - v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v78 = v6;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v80 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000234C(a1, a2, &v80);
    _os_log_impl(&_mh_execute_header, v17, v18, "rta %s", v20, 0xCu);
    sub_100002580(v21);

    v6 = v78;
  }

  v22 = *(v6 + 8);
  v22(v16, v5);
  v23 = v5;
  kappalog.getter(v14);
  v24 = v75;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v80 = v28;
    *v27 = 136315138;
    v29 = [v24 name];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v14;
    v31 = v5;
    v32 = v30;
    v33 = v22;
    v35 = v34;

    v36 = v32;
    v23 = v31;
    v37 = sub_10000234C(v36, v35, &v80);
    v22 = v33;

    *(v27 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "rta %s", v27, 0xCu);
    sub_100002580(v28);

    v33(v75, v31);
  }

  else
  {

    v22(v14, v5);
  }

  v38 = v76;
  kappalog.getter(v76);
  v39 = v24;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v79 = v23;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v80 = v44;
    *v43 = 136315138;
    v45 = sub_100024A2C(&qword_100430298, &qword_10039A250);
    v75 = &v73;
    v46 = *(*(v45 - 8) + 64);
    __chkstk_darwin(v45 - 8);
    v47 = &v73 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = [v39 location];
    v73 = &v73;
    v49 = __chkstk_darwin(v48);
    v74 = v22;
    if (v49)
    {
      v50 = v49;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v54 = type metadata accessor for URL();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v47, v51, 1, v54);
    sub_100361294(v47, v47);
    if ((*(v55 + 48))(v47, 1, v54) == 1)
    {
      sub_1000059A8(v47, &qword_100430298, &qword_10039A250);
      v56 = 0xE300000000000000;
      v57 = 7104878;
    }

    else
    {
      v58 = URL.absoluteString.getter();
      v56 = v59;
      (*(v55 + 8))(v47, v54);
      v57 = v58;
    }

    v60 = sub_10000234C(v57, v56, &v80);

    *(v43 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v40, v41, "rta %s", v43, 0xCu);
    sub_100002580(v44);

    v53 = v79;
    v52 = v76;
    v22 = v74;
  }

  else
  {

    v52 = v38;
    v53 = v23;
  }

  v22(v52, v53);
  v61 = v77;
  kappalog.getter(v77);
  v62 = v39;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v80 = v66;
    *v65 = 136315138;
    v67 = [v62 metadata];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = Dictionary.description.getter();
    v70 = v69;

    v71 = sub_10000234C(v68, v70, &v80);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "rta %s", v65, 0xCu);
    sub_100002580(v66);

    return (v22)(v77, v79);
  }

  else
  {

    return (v22)(v61, v79);
  }
}

uint64_t sub_10035D598()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  kappalog.getter(&v40 - v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Entered updateKappaConfig()", v18, 2u);
  }

  v19 = *(v3 + 8);
  v20 = v19(v15, v2);
  v21 = (*(*v1 + 112))(v20);
  if (v21)
  {
    v22 = v21;
    v23 = v1[2];
    sub_10035E9C8(v21, v23);
    type metadata accessor for PlatformInfo();
    static PlatformInfo.instance.getter();
    v24 = dispatch thunk of PlatformInfo.hasExclave.getter();

    if (v24)
    {
      v40 = v2;
      v25 = *(**sub_100334FA4() + 104);

      v25(&v41, 0x4D74736554414D53, 0xEB0000000065646FLL, &type metadata for Bool);

      if (v41 != 2 && (v41 & 1) != 0)
      {

        kappalog.getter(v13);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        v28 = os_log_type_enabled(v26, v27);
        v29 = v40;
        if (v28)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "SMATestMode true", v30, 2u);
        }

        v19(v13, v29);
        return sub_10035EE10(v1[6], v1[3], v1[4]);
      }

      kappalog.getter(v10);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v40;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "SMATestMode false", v39, 2u);
      }

      v19(v10, v38);
      sub_100360344(v22, v23, v1[6], v1[3], v1[4]);
    }
  }

  kappalog.getter(v7);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "attempted update before setting assetSetUsages", v34, 2u);
  }

  return v19(v7, v2);
}

uint64_t sub_10035DA0C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  if (!a1)
  {
    kappalog.getter(v7);
    v10 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v10, v15))
    {
      v9 = v7;
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, v15, "subscribe succeeded", v16, 2u);
    v9 = v7;
    goto LABEL_6;
  }

  kappalog.getter(&v18 - v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "subscribe failed: %@", v12, 0xCu);
    sub_1000059A8(v13, &unk_10042F020, &qword_100399AE0);

LABEL_6:
  }

LABEL_8:

  return (*(v3 + 8))(v9, v2);
}

void sub_10035DC50()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024A2C(&qword_100432690, &qword_10039B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100374440;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001003B2740;
  type metadata accessor for ALUAFUsages();
  *(inited + 48) = static ALUAFUsages.getKappaUsages()();
  v8 = sub_10035ED0C(inited);
  swift_setDeallocating();
  sub_1000059A8(inited + 32, &qword_100432698, &qword_10039B728);
  v9 = (*(*v1 + 120))(v8);
  v10 = (*(*v1 + 112))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = v1[4];
    v21 = v1[3];
    v22 = v12;

    v13._countAndFlagsBits = 0x697263736275732ELL;
    v13._object = 0xEB00000000726562;
    String.append(_:)(v13);
    v14 = v21;
    v15 = v22;
    v16 = *(v1[2] + 56);
    sub_100360854(v11, v14, v15, v16);
  }

  else
  {
    kappalog.getter(v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "assetSetUsages is nil", v19, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_10035DEF0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  kappalog.getter(v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering for regulatory domain updates", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, v1, sub_10035E348, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_10035E070(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v13 == a3)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        kappalog.getter(v10);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v24 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_10000234C(a2, a3, &v24);
          _os_log_impl(&_mh_execute_header, v16, v17, "Darwin notification for unknown reason: %s", v18, 0xCu);
          sub_100002580(v19);
        }

        return (*(v6 + 8))(v10, v5);
      }
    }

    sub_10035DC50();
  }

  kappalog.getter(v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "self disappeared in RD callback", v23, 2u);
  }

  return (*(v6 + 8))(v12, v5);
}

void sub_10035E348(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_100360D1C(a2, a3);
}

uint64_t sub_10035E3C8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  kappalog.getter(aBlock - v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Entered initMobileAsset()", v12, 2u);
  }

  v13 = *(v3 + 8);
  v13(v9, v2);
  sub_10035DC50();
  v14 = [objc_opt_self() sharedManager];
  v15 = String._bridgeToObjectiveC()();
  v16 = *(*(v1 + 16) + 56);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100360828;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000025CC;
  aBlock[3] = &unk_100408B40;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  v20 = [v14 observeAssetSet:v15 queue:v19 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  sub_10035DEF0();
  kappalog.getter(v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Completed initMobileAsset()", v23, 2u);
  }

  return (v13)(v7, v2);
}

uint64_t sub_10035E6FC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  kappalog.getter(&v17 - v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Entered observeAssetSet() cb", v10, 2u);
  }

  v11 = *(v1 + 8);
  v11(v7, v0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 144))(Strong);
  }

  else
  {
    kappalog.getter(v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ALMobileAssets self disappeared in observeAssetSet callback", v16, 2u);
    }

    return (v11)(v5, v0);
  }
}

void *sub_10035E940()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_10035E978()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10035E9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  if (*(a1 + 16) && (v10 = sub_10031DC00(0xD000000000000012, 0x80000001003B2740), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 8 * v10);
  }

  else
  {
    v12 = sub_10031E064(&_swiftEmptyArrayStorage);
  }

  kappalog.getter(v9);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending update message to locationd", v15, 2u);
  }

  (*(v5 + 8))(v9, v4);
  sub_100024A2C(&qword_1004326B8, &unk_10039B740);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100374440;
  *(v16 + 32) = v12;
  (*(*a2 + 192))();
}

unint64_t sub_10035ED0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A2C(&qword_1004326B0, &qword_10039B738);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10031DC00(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10035EE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = v26 - v11;
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v15 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if ((v15 & 1) == 0)
  {
    return result;
  }

  if (!a1)
  {
    exlog.getter(v14);
    v24 = 85;
    Logger._fault(_:function:file:line:)(sub_10035CB04, 0, "exReadKappaAsset(ek:bundle:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALMobileAssets.swift", 72, 2);
    return (*(v7 + 8))(v14, v6);
  }

  v26[2] = a2;
  v27 = a3;

  v17._object = 0x80000001003B2850;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v17);
  v18 = v27;
  String.utf8CString.getter();
  v19 = os_transaction_create();

  if (!v19)
  {
    v23 = exlog.getter(v14);
    __chkstk_darwin(v23);
    v25 = v18;
    v24 = 93;
    Logger._fault(_:function:file:line:)(sub_1003611CC, &v26[-4], "exReadKappaAsset(ek:bundle:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/AONLoc/Daemon/ALMobileAssets.swift", 72, 2);

    return (*(v7 + 8))(v14, v6);
  }

  exlog.getter(v12);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "transaction: reading an already mapped asset...", v22, 2u);
  }

  (*(v7 + 8))(v12, v6);
  sub_1003616CC();
  swift_unknownObjectRelease();
}

uint64_t sub_10035F280(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v164 = &v159 - v9;
  v10 = __chkstk_darwin(v8);
  v167 = &v159 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v159 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v159 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v159 - v19;
  v21 = __chkstk_darwin(v18);
  v166 = (&v159 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = &v159 - v24;
  __chkstk_darwin(v23);
  v27 = &v159 - v26;
  v28 = [a1 assets];
  if (v28)
  {
    v29 = v28;
    v161 = v25;
    v162 = v14;
    v170 = a1;
    v171 = v3;
    v165 = v17;
    v168 = v2;
    sub_10000ABCC(0, &qword_1004326C0, UAFAsset_ptr);
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 1 << *(v30 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v30 + 64);
    v34 = (v31 + 63) >> 6;

    v36 = 0;
    if (v33)
    {
      while (1)
      {
        v37 = v36;
LABEL_10:
        v38 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v39 = v38 | (v37 << 6);
        v40 = (*(v30 + 48) + 16 * v39);
        v41 = *v40;
        v42 = v40[1];
        v43 = *(*(v30 + 56) + 8 * v39);

        v44 = v43;
        sub_10035CDC8(v41, v42, v44);

        if (!v33)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_10;
      }
    }

    v45 = String._bridgeToObjectiveC()();
    v46 = v170;
    v47 = [v170 assetNamed:v45];

    v163 = v47;
    if (v47)
    {
      v48 = v47;
      kappalog.getter(v27);
      v49 = v48;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v168;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = v53;
        v56 = swift_slowAlloc();
        v172 = v56;
        *v54 = 136315138;
        v57 = [v49 name];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = sub_10000234C(v58, v60, &v172);

        *(v54 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v50, v51, "allClients %s", v54, 0xCu);
        sub_100002580(v56);
        v53 = v55;
        v46 = v170;
      }

      v62 = *(v171 + 8);
      v62(v27, v53);
      v63 = v161;
      kappalog.getter(v161);
      v64 = v49;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      v67 = os_log_type_enabled(v65, v66);
      v169 = v62;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v172 = v160;
        *v68 = 136315138;
        v69 = sub_100024A2C(&qword_100430298, &qword_10039A250);
        v159 = &v159;
        v70 = *(*(v69 - 8) + 64);
        __chkstk_darwin(v69 - 8);
        v71 = &v159 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        v72 = __chkstk_darwin([v64 location]);
        if (v72)
        {
          v73 = v72;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v74 = 0;
        }

        else
        {
          v74 = 1;
        }

        v85 = type metadata accessor for URL();
        v86 = *(v85 - 8);
        (*(v86 + 56))(v71, v74, 1, v85);
        sub_100361294(v71, v71);
        if ((*(v86 + 48))(v71, 1, v85) == 1)
        {
          v87 = 7104878;
          sub_1000059A8(v71, &qword_100430298, &qword_10039A250);
          v88 = 0xE300000000000000;
        }

        else
        {
          v87 = URL.absoluteString.getter();
          v88 = v89;
          (*(v86 + 8))(v71, v85);
        }

        v46 = v170;
        v90 = sub_10000234C(v87, v88, &v172);

        *(v68 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v65, v66, "allClients %s", v68, 0xCu);
        sub_100002580(v160);

        v84 = v161;
        v53 = v168;
        v62 = v169;
      }

      else
      {

        v84 = v63;
      }

      v62(v84, v53);
      v91 = v166;
      kappalog.getter(v166);
      v92 = v64;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v172 = v96;
        *v95 = 136315138;
        v97 = [v92 metadata];
        v98 = v53;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v99 = Dictionary.description.getter();
        v101 = v100;

        v102 = sub_10000234C(v99, v101, &v172);
        v53 = v98;
        v46 = v170;

        *(v95 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v93, v94, "allClients %s", v95, 0xCu);
        sub_100002580(v96);
        v62 = v169;

        v103 = v166;
      }

      else
      {

        v103 = v91;
      }

      v62(v103, v53);
      v82 = v165;
    }

    else
    {
      kappalog.getter(v20);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      v80 = os_log_type_enabled(v78, v79);
      v53 = v168;
      v81 = v171;
      v82 = v165;
      if (v80)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "allClients missing from set", v83, 2u);
      }

      v62 = *(v81 + 8);
      v62(v20, v53);
    }

    v104 = String._bridgeToObjectiveC()();
    v105 = [v46 assetNamed:v104];

    if (v105)
    {
      v106 = v105;
      kappalog.getter(v82);
      v107 = v106;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();

      v110 = os_log_type_enabled(v108, v109);
      v169 = v62;
      if (v110)
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v172 = v112;
        *v111 = 136315138;
        v113 = [v107 name];
        v114 = v53;
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        v118 = v115;
        v53 = v114;
        v119 = sub_10000234C(v118, v117, &v172);

        *(v111 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v108, v109, "country %s", v111, 0xCu);
        sub_100002580(v112);
        v62 = v169;

        v120 = v165;
        v121 = v114;
      }

      else
      {

        v120 = v82;
        v121 = v53;
      }

      v62(v120, v121);
      v126 = v162;
      kappalog.getter(v162);
      v127 = v107;
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v172 = v131;
        *v130 = 136315138;
        v132 = sub_100024A2C(&qword_100430298, &qword_10039A250);
        v170 = &v159;
        v133 = *(*(v132 - 8) + 64);
        __chkstk_darwin(v132 - 8);
        v134 = &v159 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v135 = [v127 location];
        v166 = &v159;
        v136 = __chkstk_darwin(v135);
        if (v136)
        {
          v137 = v136;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v138 = 0;
        }

        else
        {
          v138 = 1;
        }

        v141 = type metadata accessor for URL();
        v142 = *(v141 - 8);
        (*(v142 + 56))(v134, v138, 1, v141);
        sub_100361294(v134, v134);
        if ((*(v142 + 48))(v134, 1, v141) == 1)
        {
          v143 = 7104878;
          sub_1000059A8(v134, &qword_100430298, &qword_10039A250);
          v144 = 0xE300000000000000;
        }

        else
        {
          v143 = URL.absoluteString.getter();
          v144 = v145;
          (*(v142 + 8))(v134, v141);
        }

        v146 = sub_10000234C(v143, v144, &v172);

        *(v130 + 4) = v146;
        _os_log_impl(&_mh_execute_header, v128, v129, "country %s", v130, 0xCu);
        sub_100002580(v131);

        v139 = v162;
        v53 = v168;
        v62 = v169;
      }

      else
      {

        v139 = v126;
      }

      v62(v139, v53);
      v147 = v167;
      kappalog.getter(v167);
      v148 = v127;
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v172 = v152;
        *v151 = 136315138;
        v153 = [v148 metadata];
        v154 = v53;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v155 = Dictionary.description.getter();
        v157 = v156;

        v158 = sub_10000234C(v155, v157, &v172);

        *(v151 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v149, v150, "country %s", v151, 0xCu);
        sub_100002580(v152);

        return (v169)(v167, v154);
      }

      v140 = v147;
    }

    else
    {
      v122 = v164;
      kappalog.getter(v164);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v123, v124, "country missing from set", v125, 2u);
      }

      else
      {
      }

      v140 = v122;
    }

    return (v62)(v140, v53);
  }

  else
  {
    kappalog.getter(v7);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "No assets in kappaAssetSet", v77, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_100360344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  type metadata accessor for PlatformInfo();
  static PlatformInfo.instance.getter();
  v17 = dispatch thunk of PlatformInfo.hasExclave.getter();

  if (v17)
  {
    v43 = a4;
    v18 = [objc_opt_self() sharedManager];
    v19 = String._bridgeToObjectiveC()();
    v20 = *(a1 + 16);
    v42 = "BTSimulationIntervalSec";
    if (v20 && (v21 = sub_10031DC00(0xD000000000000012, 0x80000001003B2740), (v22 & 1) != 0))
    {
      v23 = *(*(a1 + 56) + 8 * v21);

      v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v24.super.isa = 0;
    }

    v25 = [v18 retrieveAssetSet:v19 usages:v24.super.isa];

    kappalog.getter(v16);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "retrieveAssetSet cb", v28, 2u);
    }

    v29 = *(v10 + 8);
    v29(v16, v9);
    if (v25)
    {
      v30 = v25;
      v31 = *(**sub_100334FA4() + 104);

      v31(aBlock, 0xD000000000000013, 0x80000001003B28C0, &type metadata for Bool);

      if (LOBYTE(aBlock[0]) == 2)
      {
        v32 = v43;
      }

      else
      {
        v32 = v43;
        if (aBlock[0])
        {
          sub_10035F280(v30);
        }
      }

      v37 = String._bridgeToObjectiveC()();
      v38 = *(v44 + 56);
      v39 = swift_allocObject();
      v39[2] = a3;
      v39[3] = v32;
      v39[4] = a5;
      aBlock[4] = sub_100361288;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003367F8;
      aBlock[3] = &unk_100408C08;
      v40 = _Block_copy(aBlock);

      [v30 mapAsset:v37 queue:v38 completion:v40];
      _Block_release(v40);
    }

    else
    {
      kappalog.getter(v14);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_10000234C(0xD000000000000012, v42 | 0x8000000000000000, aBlock);
        _os_log_impl(&_mh_execute_header, v33, v34, "kappaAssetSet is nil, name: %s", v35, 0xCu);
        sub_100002580(v36);
      }

      v29(v14, v9);
    }
  }
}

void sub_100360854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v41 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  kappalog.getter(v39 - v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v40 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[1] = a2;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    sub_100024A2C(&qword_1004326A0, &qword_10039B730);
    v18 = Dictionary.description.getter();
    v20 = sub_10000234C(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "subscribing with usages %s", v15, 0xCu);
    sub_100002580(v17);
  }

  v21 = *(v6 + 8);
  v21(v11, v5);
  sub_10031E064(&_swiftEmptyArrayStorage);
  v22 = objc_allocWithZone(UAFAssetSetSubscription);
  v23 = String._bridgeToObjectiveC()();
  sub_100024A2C(&qword_1004326A0, &qword_10039B730);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v22 initWithName:v23 assetSets:isa usageAliases:v25];

  if (v26)
  {
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 sharedManager];
    v30 = String._bridgeToObjectiveC()();
    sub_100024A2C(&qword_1004304E8, &qword_10039A348);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10039A200;
    *(v31 + 32) = v28;
    sub_10000ABCC(0, &qword_1004326A8, UAFAssetSetSubscription_ptr);
    v32 = v28;
    v33 = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = sub_10035DA0C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003367F8;
    aBlock[3] = &unk_100408BB8;
    v34 = _Block_copy(aBlock);
    [v29 subscribe:v30 subscriptions:v33 queue:v42 completion:v34];
    _Block_release(v34);
  }

  else
  {
    v35 = v41;
    kappalog.getter(v41);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "failed to initialize subscription", v38, 2u);
    }

    v21(v35, v40);
  }
}

uint64_t sub_100360D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  kappalog.getter(&v36 - v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received RD darwin notification", v20, 2u);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  if (a1 && a2)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    v25 = *(*(a1 + 16) + 56);
    v26 = swift_allocObject();

    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v22;
    v27[4] = v24;
    aBlock[4] = sub_1003611C0;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003EE4;
    aBlock[3] = &unk_100408B90;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    static DispatchQoS.unspecified.getter();
    v41 = &_swiftEmptyArrayStorage;
    sub_100006D84();
    sub_100024A2C(&unk_10042F300, &qword_10039A520);
    sub_100005EB8();
    v30 = v37;
    v31 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v9, v38);
  }

  else
  {
    kappalog.getter(v15);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Darwin callback param nil", v35, 2u);
    }

    return (v21)(v15, v10);
  }
}

unint64_t sub_1003611CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(31);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD00000000000001DLL;
}

uint64_t sub_100361248()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100361294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024A2C(&qword_100430298, &qword_10039A250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100361340()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(-v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003613B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(-v1);
  return Hasher._finalize()();
}

uint64_t sub_1003613FC@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100362488(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100361438(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003627BC();
  v5 = sub_100362810();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100361490(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v7 + 16) = v11;
  return v7;
}

uint64_t sub_1003615B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v11;
  return v2;
}

uint64_t sub_1003616CC()
{
  v1 = type metadata accessor for TightbeamDecoder();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TightbeamEncoder();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for TightbeamMessage();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = *(v0 + 16);
  v19 = v38;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v19)
  {
    v21 = v41;
    type metadata accessor for TransportError();
    sub_100362590(&qword_10042FA08, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v23 = v21;
    return result;
  }

  v34 = v4;
  v38 = v1;
  v20 = *(v36 + 32);
  v20(v15, v17, v37);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(0x2D6BD2AE3072EDDAuLL);
  TightbeamEncoder.complete()();
  _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
  v20(v15, v12, v37);
  v24 = v34;
  TightbeamDecoder.init(message:)();
  v25 = TightbeamDecoder.decode(as:)();
  if (!v25)
  {
    return (*(v35 + 8))(v24, v38);
  }

  v26 = v38;
  v27 = v35;
  if (v25 == 1)
  {
    v28 = TightbeamDecoder.decode(as:)();
    v29 = sub_100362488(v28);
    if (v29 != 11)
    {
      LOBYTE(v39) = v29;
      v30 = v29;
      sub_10036249C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v31 = v30;
      return (*(v27 + 8))(v24, v26);
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v39 = 0xD000000000000021;
    v40 = 0x80000001003B2A90;
    v42 = v28;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100361BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = type metadata accessor for ClientConnection();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t sub_100361D20(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  sub_10000D9FC(a2, v9 + 24);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_100024A2C(&qword_1004326D0, &qword_10039B750);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v9 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t sub_100361E7C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TightbeamEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D9FC(a2, v3 + 24);
  (*(v7 + 16))(v10, a1, v6);
  v11 = sub_100024A2C(&qword_1004326D0, &qword_10039B750);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  sub_100002580(a2);
  (*(v7 + 8))(a1, v6);
  return v3;
}

uint64_t sub_100361FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a2;
  v5 = v3;
  v7 = sub_100024A2C(&qword_10042FA18, &qword_100399B78);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for TightbeamEncoder();
  v14 = *(v13 - 8);
  v29 = *(v14 + 56);
  v29(v12, 1, 1, v13);
  v32 = a1;
  v15 = TightbeamDecoder.decode(as:)();
  if (v15 != 0x2D6BD2AE3072EDDALL)
  {
    v27 = v15;
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v34 = 0xD00000000000002ELL;
    v35 = 0x80000001003B2A60;
    v36 = v27;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v16 = v5[6];
  v17 = v5[7];
  sub_10000D9B8(v5 + 3, v16);
  (*(v17 + 8))(v16, v17);
  if (!v4)
  {
    v20 = 11;
    v19 = v33;
    goto LABEL_6;
  }

  v34 = v4;
  swift_errorRetain();
  sub_100024A2C(&qword_100418350, &unk_10039AB80);
  v18 = swift_dynamicCast();
  v19 = v33;
  if (!v18)
  {

    goto LABEL_20;
  }

  v20 = v36;

LABEL_6:
  _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
  v29(v19, 0, 1, v13);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) != 1)
  {
    sub_1003188C4(v12);
  }

  sub_10031892C(v19, v12);
  if (!v21(v12, 1, v13))
  {
    if (v20 == 11)
    {
      TightbeamEncoder.encode(_:)(0);
    }

    else
    {
      TightbeamEncoder.encode(_:)(1u);
      TightbeamEncoder.encode(_:)(-v20);
    }
  }

  v22 = (v21)(v12, 1, v13);
  v23 = v22;
  if (v22 == 1)
  {
    v24 = v30;
  }

  else
  {
    v24 = v30;
    if (v22)
    {
      sub_1003188C4(v12);
      v23 = 1;
    }

    else
    {
      TightbeamEncoder.complete()();
    }
  }

  v25 = type metadata accessor for TightbeamMessage();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_100362444@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_100361FC4(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100362488(int a1)
{
  if ((a1 + 10) < 0xB)
  {
    return -a1;
  }

  else
  {
    return 11;
  }
}

unint64_t sub_10036249C()
{
  result = qword_1004326C8;
  if (!qword_1004326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004326C8);
  }

  return result;
}

unint64_t sub_1003624F4()
{
  result = qword_1004326D8;
  if (!qword_1004326D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004326D8);
  }

  return result;
}

uint64_t sub_100362590(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AssetError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003627BC()
{
  result = qword_1004328D0;
  if (!qword_1004328D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004328D0);
  }

  return result;
}

unint64_t sub_100362810()
{
  result = qword_1004328D8;
  if (!qword_1004328D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004328D8);
  }

  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall ALBtNotifications.description()()
{
  v0 = ALBtNotifications.description()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t TightbeamDecoder.decode(as:)()
{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

{
  return TightbeamDecoder.decode(as:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}