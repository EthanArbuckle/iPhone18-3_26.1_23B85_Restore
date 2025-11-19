uint64_t variable initialization expression of TimerConfirmation._context()
{
  sub_12E7C();
  sub_25E4(&qword_1C1B8, &type metadata accessor for Context);

  return sub_128AC();
}

uint64_t TimerConfirmation.init(snippetModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_12E7C();
  sub_25E4(&qword_1C1B8, &type metadata accessor for Context);
  *a2 = sub_128AC();
  a2[1] = v4;
  v5 = *(type metadata accessor for TimerConfirmation() + 20);
  v6 = sub_1275C();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t type metadata accessor for TimerConfirmation()
{
  result = qword_1C220;
  if (!qword_1C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B44(&qword_1C290, &qword_13690);
    v2 = sub_1303C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2DE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2E40(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2E40(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2E40(v31, v32);
    result = sub_12FDC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2E40(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1B90(uint64_t a1)
{
  v2 = sub_1273C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (*a1)
  {
    (*(v3 + 104))(v6, enum case for DirectInvocationUtils.Timer.URI.buttonPress(_:), v2);
    v8 = v7;
    sub_1272C();
    (*(v3 + 8))(v6, v2);
    v9 = a1 + *(type metadata accessor for TimerConfirmation() + 20);
    sub_1274C();
    v10 = sub_1271C();

    sub_18C8(v10);

    sub_12E6C();
  }

  else
  {
    v11 = *(a1 + 8);
    sub_12E7C();
    sub_25E4(&qword_1C1B8, &type metadata accessor for Context);
    sub_1289C();
    __break(1u);
  }
}

uint64_t sub_1D68@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TimerConfirmation() + 20);
  a1();
  sub_2D90();
  result = sub_12AFC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t TimerConfirmation.body.getter()
{
  v1 = *(type metadata accessor for TimerConfirmation() - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  sub_2514(v0, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  sub_257C(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3);
  sub_12DBC();
  sub_25E4(&qword_1C1C0, &type metadata accessor for BinaryButtonView);
  return sub_12D8C();
}

uint64_t sub_1F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_12D7C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for TimerConfirmation() - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v45 = v9;
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B44(&qword_1C270, &qword_13680);
  v49 = *(v11 - 8);
  v12 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v36 - v13;
  v46 = sub_2B44(&qword_1C278, &qword_13688);
  v50 = *(v46 - 8);
  v15 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = v36 - v16;
  v39 = a1;
  v42 = v10;
  sub_2514(a1, v10);
  v18 = *(v7 + 80);
  v44 = (v18 + 16) & ~v18;
  v19 = swift_allocObject();
  sub_257C(v10, v19 + ((v18 + 16) & ~v18));
  v52 = a1;
  sub_12CFC();
  v20 = v3;
  v43 = *(v3 + 104);
  v37 = v6;
  v21 = v48;
  v43(v6, enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:), v48);
  v22 = sub_2BC4(&qword_1C280, &qword_1C270, &qword_13680);
  v23 = v11;
  sub_12B1C();
  v24 = *(v20 + 8);
  v40 = v20 + 8;
  v41 = v24;
  v24(v6, v21);
  v38 = *(v49 + 8);
  v49 += 8;
  v38(v14, v11);
  v56 = v11;
  v57 = v22;
  v36[1] = swift_getOpaqueTypeConformance2();
  v25 = v46;
  v26 = sub_12B0C();
  v27 = *(v50 + 8);
  v50 += 8;
  v36[0] = v27;
  v27(v17, v25);
  v58 = &type metadata for AnyView;
  v59 = &protocol witness table for AnyView;
  v56 = v26;
  v28 = v39;
  v29 = v42;
  sub_2514(v39, v42);
  v30 = v44;
  v31 = swift_allocObject();
  sub_257C(v29, v31 + v30);
  v51 = v28;
  sub_12CFC();
  v32 = v37;
  v33 = v48;
  v43(v37, enum case for ButtonItemButtonStyle.Role.standard(_:), v48);
  sub_12B1C();
  v41(v32, v33);
  v38(v14, v23);
  v34 = sub_12B0C();
  (v36[0])(v17, v25);
  v55 = &protocol witness table for AnyView;
  v54 = &type metadata for AnyView;
  v53 = v34;
  return sub_12DAC();
}

uint64_t sub_2514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerConfirmation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerConfirmation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  sub_2514(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_257C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_12DBC();
  sub_25E4(&qword_1C1C0, &type metadata accessor for BinaryButtonView);
  return sub_12D8C();
}

uint64_t sub_27C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1275C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_288C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1275C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2930()
{
  sub_29B4();
  if (v0 <= 0x3F)
  {
    sub_1275C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29B4()
{
  if (!qword_1C230)
  {
    sub_12E7C();
    sub_25E4(&qword_1C1B8, &type metadata accessor for Context);
    v0 = sub_128BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C230);
    }
  }
}

uint64_t sub_2A8C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimerConfirmation() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1F2C(v4, a1);
}

uint64_t sub_2B44(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2A8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C0C()
{
  v1 = (type metadata accessor for TimerConfirmation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1275C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_2D90()
{
  result = qword_1C288;
  if (!qword_1C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C288);
  }

  return result;
}

uint64_t sub_2DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2E40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_2E50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_2EA8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2F04()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C2A8);
  sub_32B4(v0, qword_1C2A8);
  return sub_1278C();
}

void sub_2F7C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1270C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12E7C();
  sub_5B30(&qword_1C1B8, &type metadata accessor for Context);
  *a2 = sub_128AC();
  a2[1] = v9;
  v28 = type metadata accessor for TimerSelector(0);
  v10 = *(v28 + 28);
  v11 = [objc_allocWithZone(MTTimerManager) init];
  *(a2 + v10) = v11;
  v12 = qword_1C178;
  v27 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_1279C();
  sub_32B4(v13, qword_1C2A8);
  v14 = v5[2];
  v29 = a1;
  v14(v8, a1, v4);
  v15 = sub_1277C();
  v16 = sub_12F6C();
  v17 = os_log_type_enabled(v15, v16);
  v26 = v5;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = *(sub_126FC() + 16);

    v20 = v5[1];
    v20(v8, v4);
    *(v18 + 4) = v19;
    _os_log_impl(&dword_0, v15, v16, "[TimerSelector.init] Initializing for %ld timers.", v18, 0xCu);
  }

  else
  {
    v20 = v5[1];
    v20(v8, v4);
  }

  v22 = v28;
  v21 = v29;
  v14(a2 + *(v28 + 20), v29, v4);
  v23 = v27;
  v24 = [v27 timersSync];

  if (v24)
  {
    sub_5FBC(0, &qword_1C2C0, MTTimer_ptr);
    v25 = sub_12F0C();

    v20(v21, v4);
    *(a2 + *(v22 + 24)) = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_32B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_32EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_12E4C();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B44(&qword_1C370, &qword_137D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v35 - v8);
  v10 = type metadata accessor for TimerSelector(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_2B44(&qword_1C378, &qword_137E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v36 = sub_2B44(&qword_1C380, &qword_137E8);
  v18 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v20 = &v35 - v19;
  sub_6A50(v2, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_6064(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for TimerSelector);
  sub_2B44(&qword_1C388, &qword_137F0);
  sub_2BC4(&qword_1C390, &qword_1C388, &qword_137F0);
  sub_12D8C();
  *v9 = sub_12BEC();
  v23 = enum case for HostBackground.color(_:);
  v24 = sub_12D9C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v9, v23, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  sub_2BC4(&qword_1C398, &qword_1C378, &qword_137E0);
  sub_12B4C();
  sub_6004(v9, &qword_1C370, &qword_137D8);
  (*(v14 + 8))(v17, v13);
  KeyPath = swift_getKeyPath();
  v27 = &v20[*(v36 + 36)];
  v28 = *(sub_2B44(&qword_1C3A0, &qword_13828) + 28);
  v29 = enum case for ColorScheme.dark(_:);
  v30 = sub_127FC();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = KeyPath;
  v32 = v37;
  v31 = v38;
  v33 = v39;
  (*(v38 + 104))(v37, enum case for ComponentStackBottomSpacing.none(_:), v39);
  sub_56C0();
  sub_12B5C();
  (*(v31 + 8))(v32, v33);
  return sub_57E8(v20);
}

uint64_t sub_37F4(uint64_t a1)
{
  v2 = type metadata accessor for TimerSelector(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_12E1C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a1 + *(v3 + 28);
  v17 = &type metadata for String;
  v18 = &protocol witness table for String;
  v15 = sub_126EC();
  v16 = v9;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_12E0C();
  sub_6A50(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_6064(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TimerSelector);
  sub_2B44(&qword_1C3B8, &qword_13830);
  sub_59F4();
  return sub_12DFC();
}

uint64_t sub_39D0(uint64_t a1)
{
  v2 = type metadata accessor for TimerSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(__chkstk_darwin(v2 - 8) + 28);
  v6 = sub_126FC();
  v7 = sub_5B78(v6);

  v14[3] = v7;
  swift_getKeyPath();
  sub_6A50(a1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_6064(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TimerSelector);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5E74;
  *(v10 + 24) = v9;
  sub_2B44(&qword_1C3D0, &qword_13858);
  sub_2B44(&qword_1C3D8, &qword_13860);
  sub_2BC4(&qword_1C3E0, &qword_1C3D0, &qword_13858);
  v11 = type metadata accessor for TimerItemView(255);
  v12 = sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView);
  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_12D3C();
}

uint64_t sub_3C48@<X0>(char *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = type metadata accessor for TimerSelector(0);
  v6 = v5 - 8;
  v98 = *(v5 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v5);
  v99 = v8;
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2B44(&qword_1C3F0, &unk_14000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v91 = &v85 - v11;
  v12 = sub_126AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v94 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v85 - v17;
  __chkstk_darwin(v16);
  v20 = &v85 - v19;
  v103 = type metadata accessor for TimerItemView(0);
  v21 = *(*(v103 - 8) + 64);
  v22 = __chkstk_darwin(v103);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v85 - v25;
  v101 = v13;
  v102 = v20;
  v27 = *(v13 + 16);
  v105 = v13 + 16;
  v106 = v12;
  v104 = v27;
  v27(v20, a1, v12);
  v28 = *(a2 + *(v6 + 32));
  v97 = a1;
  v108 = a1;
  v29 = sub_46D4(sub_5F9C, v107, v28);
  v30 = *(a2 + *(v6 + 36));
  v92 = a2;
  v31 = *a2;
  if (*a2)
  {
    v32 = v29;
    v109 = 0;
    v89 = v30;
    v88 = v31;
    sub_2B44(&qword_1C3F8, &qword_13870);
    sub_12CAC();
    v86 = v111;
    v87 = v112;
    sub_F130();
    v109 = v33;
    v110 = v34;
    sub_2B44(&qword_1C400, &qword_13AC0);
    sub_12CAC();
    v90 = v112;
    if (qword_1C178 != -1)
    {
      swift_once();
    }

    v35 = sub_1279C();
    sub_32B4(v35, qword_1C2A8);
    v36 = v106;
    v104(v18, v102, v106);
    v37 = sub_1277C();
    v38 = sub_12F6C();
    v39 = os_log_type_enabled(v37, v38);
    v95 = v26;
    v93 = v14;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v111 = v41;
      *v40 = 136315138;
      v42 = sub_1264C();
      v44 = v43;
      v85 = v32;
      v45 = *(v101 + 8);
      v45(v18, v106);
      v46 = sub_114DC(v42, v44, &v111);
      v36 = v106;

      *(v40 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "[TimerItemView.init] Initializing for timer with ID %s.", v40, 0xCu);
      sub_64C0(v41);
      v47 = v45;
      v32 = v85;
    }

    else
    {

      v47 = *(v101 + 8);
      v47(v18, v36);
    }

    v49 = v102;
    v48 = v103;
    v104(&v24[*(v103 + 28)], v102, v36);
    v50 = &v24[v48[8]];
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    *&v24[v48[10]] = v89;
    *&v24[v48[9]] = v88;
    *v24 = v32;
    *(v24 + 1) = 0;
    v51 = v32;

    if (v32)
    {
      [v51 remainingTime];
      v53 = v52;
      [v51 duration];
      *(v24 + 5) = v53 / v54;
      *(v24 + 6) = 0;
      sub_6378(v32);
      v56 = v55;
      v58 = v57;
    }

    else
    {
      v59 = COERCE_DOUBLE(sub_1262C());
      if (v60)
      {
        v61 = 0.0;
      }

      else
      {
        v61 = v59;
      }

      v62 = COERCE_DOUBLE(sub_1269C());
      if (v63)
      {
        v62 = 1.0;
      }

      *(v24 + 5) = v61 / v62;
      *(v24 + 6) = 0;
      sub_1262C();
      if (v64)
      {

        v56 = 0;
        v58 = 0;
LABEL_18:

        *(v24 + 2) = v56;
        *(v24 + 3) = v58;
        *(v24 + 4) = 0;
        v67 = [objc_opt_self() mainRunLoop];
        sub_5FBC(0, &qword_1C408, NSTimer_ptr);
        v68 = sub_12F9C();
        v69 = v91;
        (*(*(v68 - 8) + 56))(v91, 1, 1, v68);
        v70 = sub_12F8C();
        sub_6004(v69, &qword_1C3F0, &unk_14000);
        v111 = v70;
        sub_12F7C();
        sub_5B30(&qword_1C410, &type metadata accessor for NSTimer.TimerPublisher);
        v71 = sub_127BC();

        v111 = v71;
        sub_2B44(&qword_1C418, &qword_13878);
        sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878);
        v72 = sub_127CC();

        v73 = v101;
        v74 = v106;
        v47(v49, v106);

        *&v24[*(v103 + 44)] = v72;
        v75 = v24;
        v76 = v95;
        sub_6064(v75, v95, type metadata accessor for TimerItemView);
        v77 = v94;
        v104(v94, v97, v74);
        v78 = v100;
        sub_6A50(v92, v100, type metadata accessor for TimerSelector);
        v79 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v80 = (v93 + *(v98 + 80) + v79) & ~*(v98 + 80);
        v81 = swift_allocObject();
        (*(v73 + 32))(v81 + v79, v77, v74);
        sub_6064(v78, v81 + v80, type metadata accessor for TimerSelector);
        sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView);
        sub_12B3C();

        return sub_631C(v76);
      }

      sub_F130();
      v56 = v65;
      v58 = v66;
    }

    goto LABEL_18;
  }

  v83 = v92[1];
  sub_12E7C();
  sub_5B30(&qword_1C1B8, &type metadata accessor for Context);
  v84 = v30;
  result = sub_1289C();
  __break(1u);
  return result;
}

uint64_t sub_4624(id *a1)
{
  v1 = [*a1 timerIDString];
  v2 = sub_12ECC();
  v4 = v3;

  if (v2 == sub_1264C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1307C();
  }

  return v7 & 1;
}

void *sub_46D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1302C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1300C();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_47E8(uint64_t a1, uint64_t a2)
{
  result = sub_1265C();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_1266C();
    if (v7)
    {
      v8 = v7;
      if (qword_1C178 != -1)
      {
        swift_once();
      }

      v9 = sub_1279C();
      sub_32B4(v9, qword_1C2A8);

      v10 = sub_1277C();
      v11 = sub_12F6C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_114DC(v5, v6, &v18);
        *(v12 + 12) = 2080;
        v13 = sub_12E8C();
        v15 = sub_114DC(v13, v14, &v18);

        *(v12 + 14) = v15;
        _os_log_impl(&dword_0, v10, v11, "[TimerItemView.componentTapped]: Performing direct invocation with ID = %s, payload = %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      if (!*a2)
      {
        v17 = *(a2 + 8);
        sub_12E7C();
        sub_5B30(&qword_1C1B8, &type metadata accessor for Context);
        result = sub_1289C();
        __break(1u);
        return result;
      }

      v16 = *a2;
      sub_18C8(v8);

      sub_12E6C();
    }
  }

  return result;
}

uint64_t sub_4AC0(uint64_t a1)
{
  v2 = sub_127FC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_128DC();
}

uint64_t sub_4B8C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v61 = type metadata accessor for TimerItemView(0);
  v55 = *(v61 - 8);
  v2 = *(v55 + 64);
  __chkstk_darwin(v61);
  v57 = v3;
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_12E3C();
  v56 = *(v59 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v59);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  v78 = *(v1 + 16);
  v79 = v6;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CBC();
  v7 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
    v8 = v75;
  }

  else
  {
    sub_F130();
  }

  *&v78 = v8;
  *(&v78 + 1) = v7;
  v53 = sub_2D90();
  v9 = sub_12AFC();
  v11 = v10;
  v13 = v12;
  sub_12C1C();
  v14 = sub_12ACC();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_69FC(v9, v11, v13 & 1);

  v80 = &type metadata for Text;
  v81 = &protocol witness table for Text;
  v21 = swift_allocObject();
  *&v78 = v21;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18 & 1;
  *(v21 + 40) = v20;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v22 = v62;
  v72 = *v62;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  v23 = v69;
  if (v69)
  {
    v24 = [v69 displayTitle];

    v25 = sub_12ECC();
    v27 = v26;
  }

  else
  {
    v28 = v22 + *(v61 + 28);
    v29 = sub_1267C();
    if (v30)
    {
      v25 = v29;
      v27 = v30;
    }

    else
    {
      v27 = 0xE500000000000000;
      v25 = 0x72656D6954;
    }
  }

  *&v72 = v25;
  *(&v72 + 1) = v27;
  v31 = sub_12AFC();
  v33 = v32;
  v35 = v34;
  sub_12C1C();
  v36 = sub_12ACC();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_69FC(v31, v33, v35 & 1);

  v73 = &type metadata for Text;
  v74 = &protocol witness table for Text;
  v43 = swift_allocObject();
  *&v72 = v43;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40 & 1;
  *(v43 + 40) = v42;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v44 = v54;
  sub_12E2C();
  v45 = *(v62 + *(v61 + 44));
  v46 = v58;
  sub_6A50(v62, v58, type metadata accessor for TimerItemView);
  v47 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v48 = swift_allocObject();
  sub_6064(v46, v48 + v47, type metadata accessor for TimerItemView);
  v49 = v60;
  (*(v56 + 32))(v60, v44, v59);
  v50 = sub_2B44(&qword_1C508, &qword_138F8);
  *(v49 + *(v50 + 52)) = v45;
  v51 = (v49 + *(v50 + 56));
  *v51 = sub_6BFC;
  v51[1] = v48;
}

uint64_t sub_503C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v12)
  {

    sub_12CBC();
    sub_6378(v12);
    v5 = v4;
  }

  else
  {
    v6 = v0 + *(type metadata accessor for TimerItemView(0) + 28);
    sub_1262C();
    v5 = 0;
    if ((v7 & 1) == 0)
    {
      sub_F130();
      v5 = v8;
    }
  }

  v14 = *(v1 + 1);
  v19 = v1[4];
  v13 = v5;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CCC();
  if (sub_5270() == &dword_0 + 1)
  {
    v15 = v1[5];
    v17 = v1[6];
  }

  else
  {
    sub_12CBC();
    if (v5)
    {
      [v5 remainingTime];
    }

    else
    {
      v9 = v1 + *(type metadata accessor for TimerItemView(0) + 28);
      sub_1262C();
    }

    sub_12CBC();
    if (v13)
    {
      [v13 duration];
    }

    else
    {
      v10 = v1 + *(type metadata accessor for TimerItemView(0) + 28);
      sub_1269C();
    }

    v16 = v1[5];
    v18 = v1[6];
  }

  sub_2B44(&qword_1C510, &qword_13900);
  return sub_12CCC();
}

id sub_5270()
{
  v9 = *v0;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v8)
  {
    v1 = [v8 state];
  }

  else
  {
    v2 = v0 + *(type metadata accessor for TimerItemView(0) + 28);
    sub_1268C();
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      v4 = sub_1276C();
      v6 = 2 * (v4 == 2);
      if (v4 == 1)
      {
        v6 = 3;
      }

      if (v5)
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }
  }

  return v1;
}

uint64_t *sub_532C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_53A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1270C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_5478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1270C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_5534()
{
  sub_29B4();
  if (v0 <= 0x3F)
  {
    sub_1270C();
    if (v1 <= 0x3F)
    {
      sub_55F8();
      if (v2 <= 0x3F)
      {
        sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_55F8()
{
  if (!qword_1C330)
  {
    sub_5FBC(255, &qword_1C2C0, MTTimer_ptr);
    v0 = sub_12F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C330);
    }
  }
}

unint64_t sub_56C0()
{
  result = qword_1C3A8;
  if (!qword_1C3A8)
  {
    sub_2A8C(&qword_1C380, &qword_137E8);
    sub_2A8C(&qword_1C378, &qword_137E0);
    sub_2BC4(&qword_1C398, &qword_1C378, &qword_137E0);
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C3B0, &qword_1C3A0, &qword_13828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3A8);
  }

  return result;
}

uint64_t sub_57E8(uint64_t a1)
{
  v2 = sub_2B44(&qword_1C380, &qword_137E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5850()
{
  v1 = (type metadata accessor for TimerSelector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1270C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5970(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TimerSelector(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_59F4()
{
  result = qword_1C3C0;
  if (!qword_1C3C0)
  {
    sub_2A8C(&qword_1C3B8, &qword_13830);
    type metadata accessor for TimerItemView(255);
    sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C0);
  }

  return result;
}

uint64_t sub_5AF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5B78(uint64_t a1)
{
  v49 = sub_2B44(&qword_1C3E8, &qword_13868);
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v40 - v8;
  v10 = *(a1 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = *(v2 + 80);
    v43 = v12;
    v44 = (v12 + 32) & ~v12;
    v13 = &_swiftEmptyArrayStorage + v44;
    v14 = 0;
    v15 = 0;
    v48 = sub_126AC();
    v16 = *(v48 - 8);
    v17 = *(v16 + 16);
    v46 = v16 + 16;
    v47 = v17;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v45 = *(v16 + 72);
    v19 = &_swiftEmptyArrayStorage;
    v41 = v10;
    v42 = v2;
    while (1)
    {
      v21 = v48;
      v22 = *(v49 + 48);
      *v6 = v14;
      v47(&v6[v22], v18, v21);
      result = sub_650C(v6, v9);
      if (v15)
      {
        v11 = v19;
        v20 = __OFSUB__(v15--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v19[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v9;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_2B44(&qword_1C428, &qword_13880);
        v27 = *(v2 + 72);
        v28 = v44;
        v11 = swift_allocObject();
        result = j__malloc_size(v11);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v11[2] = v26;
        v11[3] = 2 * (v29 / v27);
        v32 = v11 + v28;
        v33 = v19[3] >> 1;
        v34 = v33 * v27;
        if (v19[2])
        {
          if (v11 < v19 || v32 >= v19 + v44 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v13 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v9 = v24;
        v10 = v41;
        v2 = v42;
        v20 = __OFSUB__(v36, 1);
        v15 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v14;
      result = sub_650C(v9, v13);
      v13 += *(v2 + 72);
      v18 += v45;
      v19 = v11;
      if (v10 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
LABEL_29:
  v37 = v11[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v15);
    v39 = v38 - v15;
    if (v20)
    {
      goto LABEL_36;
    }

    v11[2] = v39;
  }

  return v11;
}

uint64_t sub_5E74@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimerSelector(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_3C48(a1, v6, a2);
}

uint64_t sub_5EFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F34(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_2B44(&qword_1C3E8, &qword_13868);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_5FBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_6004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_60CC()
{
  v1 = sub_126AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TimerSelector(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_1270C();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = *(v0 + v8 + v6[8]);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_6250()
{
  v1 = *(sub_126AC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TimerSelector(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_47E8(v0 + v2, v5);
}

uint64_t sub_631C(uint64_t a1)
{
  v2 = type metadata accessor for TimerItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_6378(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 state] != &dword_0 + 1)
    {
      [v1 remainingTime];
    }

    sub_F130();
  }

  else
  {
    if (qword_1C178 != -1)
    {
      swift_once();
    }

    v2 = sub_1279C();
    sub_32B4(v2, qword_1C2A8);
    v3 = sub_1277C();
    v4 = sub_12F5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "TimerItemView: MTTimer missing in call for durationString(for:)", v5, 2u);
    }

    sub_F130();
  }
}

uint64_t sub_64C0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_650C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C3E8, &qword_13868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_666C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_672C()
{
  sub_6870(319, &qword_1C498, &qword_1C3F8, &qword_13870);
  if (v0 <= 0x3F)
  {
    sub_6870(319, &qword_1C4A0, &qword_1C400, &qword_13AC0);
    if (v1 <= 0x3F)
    {
      sub_68C4();
      if (v2 <= 0x3F)
      {
        sub_126AC();
        if (v3 <= 0x3F)
        {
          sub_12E7C();
          if (v4 <= 0x3F)
          {
            sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
            if (v5 <= 0x3F)
            {
              sub_6914();
              if (v6 <= 0x3F)
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

void sub_6870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2A8C(a3, a4);
    v5 = sub_12CEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_68C4()
{
  if (!qword_1C4A8)
  {
    v0 = sub_12CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4A8);
    }
  }
}

void sub_6914()
{
  if (!qword_1C4B0)
  {
    sub_1250C();
    v0 = sub_127AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4B0);
    }
  }
}

uint64_t sub_697C()
{
  sub_2A8C(&qword_1C380, &qword_137E8);
  sub_56C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_69FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_6A0C()
{
  sub_69FC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6AB8()
{
  v1 = (type metadata accessor for TimerItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = v1[9];
  v10 = sub_126AC();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[10] + 8);

  v12 = *(v0 + v3 + v1[13]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6BFC()
{
  v1 = *(type metadata accessor for TimerItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_503C();
}

uint64_t sub_6CB0()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C520);
  sub_32B4(v0, qword_1C520);
  return sub_1278C();
}

uint64_t sub_6D28()
{
  result = sub_12C1C();
  qword_1C538 = result;
  return result;
}

uint64_t sub_6D48()
{
  v0 = [objc_opt_self() systemGray2Color];
  result = sub_12BCC();
  qword_1C540 = result;
  return result;
}

__n128 sub_6D88(uint64_t a1, uint64_t a2)
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

uint64_t sub_6D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_6DE4(uint64_t result, int a2, int a3)
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

uint64_t sub_6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v82 = sub_1286C();
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v82);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2B44(&qword_1C550, &qword_139E0);
  v77 = *(v78 - 8);
  v5 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v75 - v6;
  v7 = sub_2B44(&qword_1C558, &qword_139E8);
  v86 = *(v7 - 8);
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v80 = &v75 - v9;
  v10 = sub_2B44(&qword_1C560, &qword_139F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v93 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = sub_2B44(&qword_1C568, &qword_139F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v91 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  if (qword_1C190 != -1)
  {
    swift_once();
  }

  v87 = v7;
  v92 = v15;
  v97 = qword_1C540;

  sub_1280C();
  v22 = v115;
  v88 = v116;
  v96 = v117;
  v23 = v118;
  v95 = v119;
  v24 = v120;
  v90 = sub_12D4C();
  v89 = v25;
  v26 = *(a1 + 40);
  if (qword_1C188 != -1)
  {
    swift_once();
  }

  v27 = qword_1C538;
  v84 = *(a1 + 48);
  swift_retain_n();
  *&v98 = sub_12C1C();
  sub_12CAC();
  v83 = v103;
  v28 = v104;
  sub_12E7C();
  sub_9118(&qword_1C1B8, &type metadata accessor for Context);
  v29 = sub_128AC();
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v33 = a1;
  v34 = &v21[*(v16 + 36)];
  v35 = *(sub_2B44(&qword_1C570, &qword_13A30) + 28);
  v36 = enum case for LayoutDirection.leftToRight(_:);
  v37 = sub_1284C();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = KeyPath;
  *v21 = v26;
  *(v21 + 1) = 0x4008000000000000;
  *(v21 + 2) = v27;
  v85 = v27;
  v21[24] = v84;
  *(v21 + 4) = v83;
  *(v21 + 5) = v28;
  *(v21 + 6) = v29;
  *(v21 + 7) = v31;
  if (sub_7A64())
  {
    v38 = 1;
    v39 = v92;
    v40 = v87;
  }

  else
  {
    v41 = swift_allocObject();
    v42 = v33[1];
    v41[1] = *v33;
    v41[2] = v42;
    v43 = v33[3];
    v41[3] = v33[2];
    v41[4] = v43;
    __chkstk_darwin(v41);
    *(&v75 - 2) = v33;
    sub_89C4(v33, &v103);
    sub_2B44(&qword_1C578, &qword_13A38);
    v44 = COERCE_DOUBLE(sub_2A8C(&qword_1C580, &qword_13A40));
    *&v45 = COERCE_DOUBLE(sub_2A8C(&qword_1C588, &qword_13A48));
    v46 = sub_89FC();
    v47 = sub_2BC4(&qword_1C5B8, &qword_1C588, &qword_13A48);
    v103 = v44;
    v104 = *&v45;
    v105 = v46;
    v106 = v47;
    swift_getOpaqueTypeConformance2();
    v48 = v76;
    sub_12CFC();
    v49 = v79;
    sub_1285C();
    sub_2BC4(&qword_1C5C0, &qword_1C550, &qword_139E0);
    sub_9118(&qword_1C5C8, &type metadata accessor for PlainButtonStyle);
    v50 = v80;
    v51 = v78;
    v52 = v82;
    sub_12B8C();
    (*(v81 + 8))(v49, v52);
    (*(v77 + 8))(v48, v51);
    *(v50 + *(sub_2B44(&qword_1C5D0, &qword_13A60) + 36)) = 0;
    v40 = v87;
    v53 = (v50 + *(v87 + 36));
    v54 = *(sub_1287C() + 20);
    v55 = enum case for RoundedCornerStyle.continuous(_:);
    v56 = sub_1297C();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    __asm { FMOV            V0.2D, #25.0 }

    *v53 = _Q0;
    *&v53[*(sub_2B44(&qword_1C5D8, &qword_13A68) + 36)] = 256;
    v39 = v92;
    sub_8B40(v50, v92);
    v38 = 0;
  }

  (*(v86 + 56))(v39, v38, 1, v40);
  v62 = v91;
  sub_8BB0(v21, v91, &qword_1C568, &qword_139F8);
  v63 = v93;
  sub_8BB0(v39, v93, &qword_1C560, &qword_139F0);
  *&v98 = v22 * 0.5;
  *(&v98 + 1) = v22;
  v64 = v88;
  *&v99 = __PAIR64__(v96, v88);
  v92 = v21;
  *(&v99 + 1) = v23;
  *&v100 = v95;
  *(&v100 + 1) = v24;
  *&v101 = v97;
  WORD4(v101) = 256;
  HIWORD(v101) = v122;
  *(&v101 + 10) = v121;
  v65 = v90;
  *&v102 = v90;
  v66 = v89;
  *(&v102 + 1) = v89;
  v67 = v98;
  v68 = v99;
  v69 = v102;
  v70 = v94;
  v71 = v100;
  *(v94 + 48) = v101;
  *(v70 + 64) = v69;
  *(v70 + 16) = v68;
  *(v70 + 32) = v71;
  *v70 = v67;
  *(v70 + 80) = v26;
  v72 = v85;
  *(v70 + 88) = 0x4008000000000000;
  *(v70 + 96) = v72;
  *(v70 + 104) = 256;
  v73 = sub_2B44(&qword_1C5E0, &qword_13A70);
  sub_8BB0(v62, v70 + *(v73 + 64), &qword_1C568, &qword_139F8);
  sub_8BB0(v63, v70 + *(v73 + 80), &qword_1C560, &qword_139F0);
  sub_8BB0(&v98, &v103, &qword_1C5E8, &qword_13A78);

  sub_6004(v39, &qword_1C560, &qword_139F0);
  sub_6004(v92, &qword_1C568, &qword_139F8);
  sub_6004(v63, &qword_1C560, &qword_139F0);
  sub_6004(v62, &qword_1C568, &qword_139F8);

  v103 = v22 * 0.5;
  v104 = v22;
  v105 = __PAIR64__(v96, v64);
  v106 = v23;
  v107 = v95;
  v108 = v24;
  v109 = v97;
  v110 = 256;
  v111 = v121;
  v112 = v122;
  v113 = v65;
  v114 = v66;
  return sub_6004(&v103, &qword_1C5E8, &qword_13A78);
}

uint64_t sub_799C(uint64_t a1)
{
  v2 = sub_1284C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1291C();
}

BOOL sub_7A64()
{
  v6 = *v0;
  v8 = *(v0 + 2);
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  if (v5)
  {
    [v5 remainingTime];
    v2 = v1;

    if (v2 == 0.0)
    {
      return 1;
    }
  }

  v7 = *v0;
  v9 = *(v0 + 2);
  sub_12D1C();
  if (!v5)
  {
    return 0;
  }

  v4 = [v5 state];

  return v4 == &dword_0 + 1;
}

void sub_7B50()
{
  v1 = v0;
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v2 = sub_1279C();
  sub_32B4(v2, qword_1C520);
  sub_89C4(v0, &aBlock);
  v3 = sub_1277C();
  v4 = sub_12F6C();
  sub_9160(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43[0] = v6;
    *v5 = 136315138;
    aBlock = *v0;
    v45 = *(v0 + 16);
    sub_2B44(&qword_1C5F0, &qword_13A80);
    sub_12D1C();
    v7 = v50[0];
    if (v50[0])
    {
      v8 = [v50[0] timerIDString];

      v7 = sub_12ECC();
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *&aBlock = v7;
    *(&aBlock + 1) = v10;
    sub_2B44(&qword_1C400, &qword_13AC0);
    v11 = sub_12EEC();
    v13 = sub_114DC(v11, v12, v43);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "[TimerProgressView.onButtonTap] Button tap detected for timer %s", v5, 0xCu);
    sub_64C0(v6);
  }

  v15 = *v1;
  v14 = *(v1 + 8);
  v16 = *(v1 + 16);
  v49 = v16;
  v50[0] = v15;
  v43[0] = v15;
  v43[1] = v14;
  v43[2] = v16;

  sub_9190(v50, &v42);
  sub_8BB0(&v49, &v42, &qword_1C3F8, &qword_13870);
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  v17 = v42;
  if (v42 && ([v42 mutableCopy], v17, sub_12FCC(), swift_unknownObjectRelease(), sub_91EC(), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v43[0];
    v19 = [v43[0] state];
    if (v19 == &dword_0 + 2)
    {
      [v18 setState:3];
    }

    else if (v19 == &dword_0 + 3)
    {
      [v18 setState:2];
    }

    else
    {
      v23 = sub_1277C();
      v24 = sub_12F6C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "[TimerProgressView.onButtonTap] Timer is in Stopped or Unknown state, so it must be firing! Taking no action.", v25, 2u);
      }
    }

    v26 = v18;
    v27 = sub_1277C();
    v28 = sub_12F5C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v29 = 136315138;
      v43[0] = [v26 state];
      type metadata accessor for MTTimerState(0);
      v30 = sub_12EEC();
      v32 = sub_114DC(v30, v31, &aBlock);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_0, v27, v28, "[TimerProgressView.onButtonTap] Updating timer to new state: %s", v29, 0xCu);
      sub_64C0(v41);
    }

    v33 = [*(v1 + 32) updateTimer:v26];
    if (v33)
    {
      v34 = v33;
      v47 = sub_85FC;
      v48 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v45 = sub_86E4;
      v46 = &unk_19470;
      v35 = _Block_copy(&aBlock);
      v36 = [v34 addSuccessBlock:v35];
      _Block_release(v35);

      v47 = sub_86EC;
      v48 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v45 = sub_8840;
      v46 = &unk_19498;
      v37 = _Block_copy(&aBlock);
      v38 = [v34 addFailureBlock:v37];
      _Block_release(v37);
    }

    else
    {
      v38 = sub_1277C();
      v39 = sub_12F5C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "[TimerProgressView.onButtonTap] No timerUpdateFuture created. Unclear if timer got updated!", v40, 2u);
      }
    }

    *&aBlock = v15;
    *(&aBlock + 1) = v14;
    v45 = v16;
    v43[0] = v26;
    sub_12D2C();
    sub_9238(v50);

    sub_6004(&v49, &qword_1C3F8, &qword_13870);
  }

  else
  {
    sub_9238(v50);

    sub_6004(&v49, &qword_1C3F8, &qword_13870);
    v20 = sub_1277C();
    v21 = sub_12F5C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "[TimerProgressView.onButtonTap] Failed to get mutable timer from MT - Cannot update timer!", v22, 2u);
    }
  }
}

uint64_t sub_8290(__int128 *a1)
{
  v2 = sub_2B44(&qword_1C588, &qword_13A48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v24 = *a1;
  *&v25 = *(a1 + 2);
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  v6 = v15;
  if (v15)
  {
    [v15 state];
  }

  else
  {
    v7 = *(a1 + 3);
  }

  v8 = sub_12C3C();
  if (qword_1C188 != -1)
  {
    swift_once();
  }

  v9 = qword_1C538;
  KeyPath = swift_getKeyPath();

  sub_12D4C();
  sub_1288C();
  *&v15 = v8;
  *(&v15 + 1) = KeyPath;
  *&v16 = v9;
  v11 = enum case for DynamicTypeSize.accessibility3(_:);
  v12 = sub_1283C();
  (*(*(v12 - 8) + 104))(v5, v11, v12);
  sub_9118(&qword_1C5F8, &type metadata accessor for DynamicTypeSize);
  result = sub_12EAC();
  if (result)
  {
    sub_2B44(&qword_1C580, &qword_13A40);
    sub_89FC();
    sub_2BC4(&qword_1C5B8, &qword_1C588, &qword_13A48);
    sub_12BBC();
    sub_6004(v5, &qword_1C588, &qword_13A48);
    v30 = v21;
    v31 = v22;
    v32 = v23;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v24 = v15;
    v25 = v16;
    return sub_6004(&v24, &qword_1C580, &qword_13A40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_85FC()
{
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v0 = sub_1279C();
  sub_32B4(v0, qword_1C520);
  oslog = sub_1277C();
  v1 = sub_12F6C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "[TimerProgressView.onButtonTap] timerUpdateFuture success block called.", v2, 2u);
  }
}

void sub_86EC()
{
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v0 = sub_1279C();
  sub_32B4(v0, qword_1C520);
  swift_errorRetain();
  oslog = sub_1277C();
  v1 = sub_12F5C();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    v4 = sub_124CC();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&dword_0, oslog, v1, "[TimerProgressView.onButtonTap] timerUpdateFuture failure block called with error: %@", v2, 0xCu);
    sub_6004(v3, &qword_1C608, &qword_13AC8);
  }
}

void sub_8848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_88B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  *a1 = sub_12D4C();
  a1[1] = v5;
  v6 = sub_2B44(&qword_1C548, &qword_139D8);
  return sub_6E60(v8, a1 + *(v6 + 44));
}

uint64_t sub_8940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_89FC()
{
  result = qword_1C590;
  if (!qword_1C590)
  {
    sub_2A8C(&qword_1C580, &qword_13A40);
    sub_8A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C590);
  }

  return result;
}

unint64_t sub_8A88()
{
  result = qword_1C598;
  if (!qword_1C598)
  {
    sub_2A8C(&qword_1C5A0, &qword_13A50);
    sub_2BC4(&qword_1C5A8, &qword_1C5B0, &qword_13A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C598);
  }

  return result;
}

uint64_t sub_8B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C558, &qword_139E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B44(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_8C18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1282C();
  v6 = v5 * 0.5;
  v7 = v4 * 0.5;
  if (v4 * 0.5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4 * 0.5;
  }

  v9 = v1[1];
  v10 = v7 - v8;
  v11 = sub_12C1C();
  v12 = *v2 * 3.14159265 + *v2 * 3.14159265;
  result = sub_12D6C();
  *a1 = v9;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 - v9 * 0.5;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 256;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = v6;
  *(a1 + 72) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = v12;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  return result;
}

uint64_t sub_8CD0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_959C;
  a1[1] = v5;
  return sub_95C0(v10, &v9);
}

double sub_8D4C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_12AAC();
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetWidth(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  sub_12A9C();
  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  sub_1280C();
  sub_12A8C();
  sub_95F8(v15);
  sub_964C(v19);
  result = *&v16;
  v11 = v17;
  *a1 = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v18;
  return result;
}

double sub_8EEC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = v5[1];
  sub_8D4C(v11, a2, a3, a4, a5);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

__n128 sub_8F54@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_8F60(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_8F6C(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_8F98;
}

__n128 sub_8F98(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

uint64_t sub_8FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_96A0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_9010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_96A0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_9074(uint64_t a1)
{
  v2 = sub_96A0();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_90C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_128EC();
  *a1 = result;
  return result;
}

uint64_t sub_90EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_128FC();
}

uint64_t sub_9118(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_91EC()
{
  result = qword_1C600;
  if (!qword_1C600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C600);
  }

  return result;
}

uint64_t sub_928C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_92A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_92EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for RingArc(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RingArc(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RingArc(uint64_t result, int a2, int a3)
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

unint64_t sub_9484()
{
  result = qword_1C640;
  if (!qword_1C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C640);
  }

  return result;
}

unint64_t sub_94DC()
{
  result = qword_1C648;
  if (!qword_1C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C648);
  }

  return result;
}

uint64_t sub_954C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_96A0()
{
  result = qword_1C650;
  if (!qword_1C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C650);
  }

  return result;
}

Swift::Int sub_9754()
{
  v1 = *v0;
  sub_130CC();
  sub_130DC(v1);
  return sub_130EC();
}

Swift::Int sub_97C8()
{
  v1 = *v0;
  sub_130CC();
  sub_130DC(v1);
  return sub_130EC();
}

uint64_t sub_981C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_98C0(uint64_t a1, void *a2)
{
  v10._object = a2;
  v10._countAndFlagsBits = a1;
  v3 = *v2;
  v4._rawValue = &off_19178;
  if (sub_1304C(v4, v10))
  {
    sub_99E0();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  else
  {
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);

    sub_11CA0(v8, v7, v9);
    sub_9A34();
    return sub_12D0C();
  }
}

uint64_t sub_996C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000015;
  *(result + 24) = 0x8000000000014230;
  *a1 = result;
  return result;
}

unint64_t sub_99E0()
{
  result = qword_1C710;
  if (!qword_1C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C710);
  }

  return result;
}

unint64_t sub_9A34()
{
  result = qword_1C718;
  if (!qword_1C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C718);
  }

  return result;
}

uint64_t sub_9A88(uint64_t a1)
{
  v55 = a1;
  v52 = type metadata accessor for TimerConfirmation();
  v1 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v50 = (&v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1275C();
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TimerSelector(0);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1270C();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  v8 = __chkstk_darwin(v46);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v42 - v11;
  v53 = type metadata accessor for TimerSnippet(0);
  v12 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_126DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  v23 = sub_126BC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v55, v23);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for SiriTimePluginModel.timerMulti(_:))
  {
    (*(v24 + 96))(v27, v23);
    (*(v16 + 32))(v22, v27, v15);
    (*(v16 + 16))(v20, v22, v15);
    v30 = *(v54 + 16);
    v29 = *(v54 + 24);

    sub_A408(v20, v30, v29, v14);
    sub_A194(&qword_1C730, type metadata accessor for TimerSnippet);
    v31 = sub_12B0C();
    sub_A1DC(v14, type metadata accessor for TimerSnippet);
    (*(v16 + 8))(v22, v15);
    return v31;
  }

  if (v28 == enum case for SiriTimePluginModel.timerSelector(_:))
  {
    (*(v24 + 96))(v27, v23);
    v33 = v43;
    v32 = v44;
    v34 = v46;
    (*(v44 + 32))(v43, v27, v46);
    (*(v32 + 16))(v10, v33, v34);
    v35 = v45;
    sub_2F7C(v10, v45);
    sub_A194(&qword_1C728, type metadata accessor for TimerSelector);
    v31 = sub_12B0C();
    sub_A1DC(v35, type metadata accessor for TimerSelector);
    (*(v32 + 8))(v33, v34);
    return v31;
  }

  if (v28 == enum case for SiriTimePluginModel.timerConfirmation(_:))
  {
    (*(v24 + 96))(v27, v23);
    v37 = v48;
    v36 = v49;
    v38 = v51;
    (*(v49 + 32))(v48, v27, v51);
    v39 = v50;
    (*(v36 + 16))(v50 + *(v52 + 20), v37, v38);
    sub_12E7C();
    sub_A194(&qword_1C1B8, &type metadata accessor for Context);
    *v39 = sub_128AC();
    v39[1] = v40;
    sub_A194(&qword_1C720, type metadata accessor for TimerConfirmation);
    v31 = sub_12B0C();
    sub_A1DC(v39, type metadata accessor for TimerConfirmation);
    (*(v36 + 8))(v37, v38);
    return v31;
  }

  result = sub_1306C();
  __break(1u);
  return result;
}

uint64_t sub_A194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A1DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimerUIPlugin.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerUIPlugin.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_A3B0()
{
  result = qword_1C738;
  if (!qword_1C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C738);
  }

  return result;
}

uint64_t sub_A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_12E7C();
  sub_E34C(&qword_1C1B8, &type metadata accessor for Context);
  *a4 = sub_128AC();
  a4[1] = v8;
  v9 = type metadata accessor for TimerSnippet(0);
  v10 = v9[8];
  v11 = [objc_allocWithZone(MTTimerManager) init];
  *(a4 + v10) = v11;
  v12 = v11;
  v13 = *(sub_126CC() + 16);

  if (qword_1C198 != -1)
  {
    swift_once();
  }

  v14 = sub_1279C();
  sub_32B4(v14, qword_1C740);
  v15 = sub_1277C();
  v16 = sub_12F6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_0, v15, v16, "[TimerSnippet.init] Initializing for %ld timers.", v17, 0xCu);
  }

  v18 = v9[5];
  v19 = sub_126DC();
  v25 = *(v19 - 8);
  (*(v25 + 16))(a4 + v18, a1, v19);
  v20 = (a4 + v9[6]);
  *v20 = a2;
  v20[1] = a3;
  v21 = [v12 timersSync];

  if (v21)
  {
    sub_5FBC(0, &qword_1C2C0, MTTimer_ptr);
    v22 = sub_12F0C();
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
  }

  *(a4 + v9[7]) = v22;
  sub_A744(v13);
  v23 = *(v25 + 8);

  return v23(a1, v19);
}

uint64_t sub_A6CC()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C740);
  sub_32B4(v0, qword_1C740);
  return sub_1278C();
}

void sub_A744(uint64_t a1)
{
  v3 = type metadata accessor for TimerSnippet(0);
  v4 = *(v1 + *(v3 + 28));
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5 == a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v4 < 0)
  {
    v6 = *(v1 + *(v3 + 28));
  }

  v5 = sub_1302C();
  if (v5 != a1)
  {
LABEL_7:
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v7 = sub_1279C();
    sub_32B4(v7, qword_1C740);
    oslog = sub_1277C();
    v8 = sub_12F5C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v5;
      *(v9 + 12) = 2048;
      *(v9 + 14) = a1;
      _os_log_impl(&dword_0, oslog, v8, "[TimerSnippet.init] timerManager %ld timers != %ld", v9, 0x16u);
    }
  }
}

uint64_t sub_A8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v86 = sub_2B44(&qword_1C7F8, &qword_13E40);
  v3 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v80 = &v69 - v4;
  v76 = sub_12DDC();
  v78 = *(v76 - 8);
  v5 = v78[8];
  v6 = __chkstk_darwin(v76);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v69 - v8;
  v84 = sub_2B44(&qword_1C800, &qword_13E48);
  v9 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v69 - v10;
  v11 = sub_12E4C();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  __chkstk_darwin(v11);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B44(&qword_1C370, &qword_137D8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (&v69 - v16);
  v18 = type metadata accessor for TimerSnippet(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v81 = sub_2B44(&qword_1C808, &qword_13E50);
  v79 = *(v81 - 8);
  v21 = *(v79 + 64);
  v22 = __chkstk_darwin(v81);
  v70 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  v82 = sub_2B44(&qword_1C810, &qword_13E58);
  v26 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v28 = &v69 - v27;
  v83 = sub_2B44(&qword_1C818, &qword_13E60);
  v72 = *(v83 - 8);
  v29 = *(v72 + 64);
  __chkstk_darwin(v83);
  v31 = &v69 - v30;
  if (sub_125DC())
  {
    sub_ECE0(v2, &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
    v32 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v33 = swift_allocObject();
    sub_E770(&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for TimerSnippet);
    sub_2B44(&qword_1C820, &qword_13E68);
    sub_E248();
    sub_12D8C();
    *v17 = sub_12BEC();
    v34 = enum case for HostBackground.color(_:);
    v35 = sub_12D9C();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v17, v34, v35);
    (*(v36 + 56))(v17, 0, 1, v35);
    sub_2BC4(&qword_1C848, &qword_1C808, &qword_13E50);
    v37 = v81;
    sub_12B4C();
    sub_6004(v17, &qword_1C370, &qword_137D8);
    (*(v79 + 8))(v25, v37);
    KeyPath = swift_getKeyPath();
    v39 = v82;
    v40 = &v28[*(v82 + 36)];
    v41 = *(sub_2B44(&qword_1C3A0, &qword_13828) + 28);
    v42 = enum case for ColorScheme.dark(_:);
    v43 = sub_127FC();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = KeyPath;
    v45 = v73;
    v44 = v74;
    v46 = v75;
    (*(v74 + 104))(v73, enum case for ComponentStackBottomSpacing.none(_:), v75);
    v47 = sub_E404();
    sub_12B5C();
    (*(v44 + 8))(v45, v46);
    sub_6004(v28, &qword_1C810, &qword_13E58);
    v48 = v72;
    v49 = v83;
    (*(v72 + 16))(v85, v31, v83);
    swift_storeEnumTagMultiPayload();
    v88 = v39;
    v89 = v47;
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40);
    sub_129AC();
    return (*(v48 + 8))(v31, v49);
  }

  else
  {
    v51 = (v2 + *(v18 + 24));
    v52 = *v51;
    v53 = v51[1];

    v54 = v77;
    sub_12DEC();
    sub_ECE0(v2, &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
    v55 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v56 = swift_allocObject();
    sub_E770(&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55, type metadata accessor for TimerSnippet);
    sub_2B44(&qword_1C820, &qword_13E68);
    sub_E248();
    v57 = v25;
    v69 = v25;
    sub_12D8C();
    v58 = v78[2];
    v59 = v71;
    v60 = v76;
    v58(v71, v54, v76);
    v61 = v79;
    v62 = *(v79 + 16);
    v63 = v70;
    v64 = v81;
    v62(v70, v57, v81);
    v58(v80, v59, v60);
    v65 = sub_2B44(&qword_1C838, &qword_13E70);
    v66 = v80;
    v62(&v80[*(v65 + 48)], v63, v64);
    v79 = *(v61 + 8);
    (v79)(v63, v64);
    v67 = v78[1];
    v67(v59, v60);
    sub_E394(v66, v85);
    swift_storeEnumTagMultiPayload();
    v68 = sub_E404();
    v88 = v82;
    v89 = v68;
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40);
    sub_129AC();
    sub_6004(v66, &qword_1C7F8, &qword_13E40);
    (v79)(v69, v64);
    return (v67)(v77, v60);
  }
}

uint64_t sub_B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a5;
  v7 = type metadata accessor for TimerSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = a1 + *(__chkstk_darwin(v7 - 8) + 28);
  v11 = sub_126CC();
  v12 = sub_5B78(v11);

  v19[3] = v12;
  swift_getKeyPath();
  sub_ECE0(a1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_E770(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for TimerSnippet);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = v14;
  sub_2B44(&qword_1C3D0, &qword_13858);
  sub_2B44(&qword_1C858, &qword_13EC8);
  sub_2BC4(&qword_1C3E0, &qword_1C3D0, &qword_13858);
  v16 = type metadata accessor for TimerView(255);
  v17 = sub_E34C(&qword_1C830, type metadata accessor for TimerView);
  v19[1] = v16;
  v19[2] = v17;
  swift_getOpaqueTypeConformance2();
  return sub_12D3C();
}

uint64_t sub_B570@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(id *)@<X3>, uint64_t a4@<X8>)
{
  v93 = a4;
  v7 = sub_125EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B44(&qword_1C3F0, &unk_14000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v92 = &v82 - v13;
  v14 = sub_126AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v82 - v20;
  v95 = type metadata accessor for TimerView(0);
  v22 = *(*(v95 - 8) + 64);
  v23 = __chkstk_darwin(v95);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v94 = &v82 - v26;
  v99 = v15;
  v100 = v21;
  v27 = *(v15 + 16);
  v101 = v14;
  v98 = v27;
  v27(v21, a1, v14);
  v28 = type metadata accessor for TimerSnippet(0);
  v29 = *(a2 + v28[7]);
  v103 = a1;
  v90 = sub_46D4(a3, v102, v29);
  v30 = *(a2 + v28[8]);
  v31 = (a2 + v28[6]);
  v32 = v31[1];
  v33 = *a2;
  if (*a2)
  {
    v97 = v8;
    v87 = *v31;
    v104 = 0;
    v86 = v30;

    v85 = v33;
    sub_2B44(&qword_1C3F8, &qword_13870);
    sub_12CAC();
    v83 = v106;
    v84 = v107;
    sub_F130();
    v104 = v34;
    v105 = v35;
    sub_2B44(&qword_1C400, &qword_13AC0);
    sub_12CAC();
    v89 = v107;
    v91 = v108;
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v88 = v32;
    v36 = sub_1279C();
    sub_32B4(v36, qword_1C740);
    v38 = v100;
    v37 = v101;
    v98(v19, v100, v101);
    v39 = sub_1277C();
    v40 = sub_12F6C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82 = v7;
      v43 = v42;
      v106 = v42;
      *v41 = 136315138;
      v44 = sub_1264C();
      v46 = v45;
      v47 = *(v99 + 8);
      v47(v19, v101);
      v48 = sub_114DC(v44, v46, &v106);
      v49 = v47;
      v38 = v100;

      *(v41 + 4) = v48;
      _os_log_impl(&dword_0, v39, v40, "[TimerSnippet.init] Initializing for timer with ID %s.", v41, 0xCu);
      sub_64C0(v43);
      v7 = v82;

      v37 = v101;
    }

    else
    {

      v49 = *(v99 + 8);
      v49(v19, v37);
    }

    v50 = v90;
    v51 = v95;
    v98(&v25[*(v95 + 28)], v38, v37);
    v52 = &v25[v51[8]];
    v53 = v88;
    *v52 = v87;
    *(v52 + 1) = v53;
    *&v25[v51[10]] = v86;
    *&v25[v51[9]] = v85;
    *v25 = v50;
    *(v25 + 1) = 0;
    v54 = v50;

    v55 = v97;
    if (v50)
    {
      [v54 remainingTime];
      v57 = v56;
      [v54 duration];
      *(v25 + 5) = v57 / v58;
      *(v25 + 6) = 0;
      sub_E834(v50);
      v60 = v59;
      v62 = v61;
    }

    else
    {
      v63 = COERCE_DOUBLE(sub_1262C());
      if (v64)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v63;
      }

      v66 = COERCE_DOUBLE(sub_1269C());
      if (v67)
      {
        v66 = 1.0;
      }

      *(v25 + 5) = v65 / v66;
      *(v25 + 6) = 0;
      sub_1262C();
      if (v68)
      {

        v60 = 0;
        v62 = 0;
LABEL_18:

        *(v25 + 2) = v60;
        *(v25 + 3) = v62;
        *(v25 + 4) = 0;
        v71 = [objc_opt_self() mainRunLoop];
        sub_5FBC(0, &qword_1C408, NSTimer_ptr);
        v72 = sub_12F9C();
        v73 = v92;
        (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
        v74 = sub_12F8C();
        sub_6004(v73, &qword_1C3F0, &unk_14000);
        v106 = v74;
        sub_12F7C();
        sub_E34C(&qword_1C410, &type metadata accessor for NSTimer.TimerPublisher);
        v75 = sub_127BC();

        v106 = v75;
        sub_2B44(&qword_1C418, &qword_13878);
        sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878);
        v76 = sub_127CC();

        v49(v100, v101);

        *&v25[v51[11]] = v76;
        v77 = v94;
        sub_E770(v25, v94, type metadata accessor for TimerView);
        v78 = v96;
        (*(v55 + 104))(v96, enum case for SeparatorStyle.edgeToEdge(_:), v7);
        sub_E34C(&qword_1C830, type metadata accessor for TimerView);
        sub_12B2C();
        (*(v55 + 8))(v78, v7);
        return sub_E7D8(v77);
      }

      sub_F130();
      v60 = v69;
      v62 = v70;
    }

    goto LABEL_18;
  }

  v80 = *(a2 + 8);
  sub_12E7C();
  sub_E34C(&qword_1C1B8, &type metadata accessor for Context);
  v81 = v30;

  result = sub_1289C();
  __break(1u);
  return result;
}

uint64_t sub_BEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = type metadata accessor for TimerView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2B44(&qword_1C918, &qword_13F38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  *v10 = sub_1296C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_2B44(&qword_1C920, &qword_13F40);
  sub_C128(v2, &v10[*(v11 + 44)]);
  v12 = *(v2 + *(v4 + 52));
  sub_ECE0(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_E770(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for TimerView);
  v15 = sub_2B44(&qword_1C928, &qword_13F48);
  *&v10[*(v15 + 52)] = v12;
  v16 = &v10[*(v15 + 56)];
  *v16 = sub_ED4C;
  v16[1] = v14;
  v10[*(v7 + 36)] = 0;
  sub_ECE0(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerView);
  v17 = swift_allocObject();
  sub_E770(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13, type metadata accessor for TimerView);
  sub_EF48();

  sub_12B9C();

  return sub_6004(v10, &qword_1C918, &qword_13F38);
}

uint64_t sub_C128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_12E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B44(&qword_1C968, &qword_13F68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v113 - v10;
  v12 = sub_2B44(&qword_1C970, &qword_13F70);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v123 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v113 - v16;
  v18 = sub_125DC();
  v124 = v17;
  if (v18)
  {
    v19 = sub_1299C();
    LOBYTE(v143) = 1;
    sub_CDC0(a1, &v129);
    *&v128[7] = v129;
    *&v128[23] = v130;
    *&v128[39] = v131;
    *&v128[55] = v132;
    v20 = v143;
    v21 = sub_129EC();
    *v133 = v19;
    v133[16] = v20;
    *&v133[17] = *v128;
    *&v133[80] = *&v128[63];
    *&v133[65] = *&v128[48];
    *&v133[33] = *&v128[16];
    *&v133[49] = *&v128[32];
    v133[88] = v21;
    memset(&v133[96], 0, 32);
    v149 = 0u;
    v150 = 0u;
    v145 = *&v133[32];
    v146 = *&v133[48];
    v147 = *&v133[64];
    v148 = *&v133[80];
    v143 = v19;
    v144 = *&v133[16];
    v140 = 0u;
    v141 = 0u;
    v136 = *&v133[32];
    v137 = *&v133[48];
    v138 = *&v133[64];
    v139 = *&v133[80];
    v134 = v19;
    v135 = *&v133[16];
    v158 = 0u;
    v159 = 0u;
    v154 = *&v133[32];
    v155 = *&v133[48];
    v156 = *&v133[64];
    v157 = *&v133[80];
    v133[128] = 1;
    LOBYTE(v151[0]) = 1;
    v142 = 1;
    LOBYTE(v160) = 1;
    v152 = v19;
    v153 = *&v133[16];
    v127 = 1;
    sub_8BB0(v133, v125, &qword_1C9A0, &qword_13F90);
    sub_8BB0(&v134, v125, &qword_1C9A0, &qword_13F90);
    sub_6004(&v143, &qword_1C9A0, &qword_13F90);
    v22 = v159;
    *(v11 + 6) = v158;
    *(v11 + 7) = v22;
    v23 = v160;
    v24 = v155;
    *(v11 + 2) = v154;
    *(v11 + 3) = v24;
    v25 = v157;
    *(v11 + 4) = v156;
    *(v11 + 5) = v25;
    v26 = v153;
    *v11 = v152;
    *(v11 + 1) = v26;
    *(v11 + 16) = v23;
    *(v11 + 17) = 0;
    v11[144] = 1;
    swift_storeEnumTagMultiPayload();
    sub_2B44(&qword_1C978, &qword_13F78);
    sub_2BC4(&qword_1C980, &qword_1C978, &qword_13F78);
    sub_E34C(&qword_1C988, &type metadata accessor for FactItemHeroNumberView);
    sub_129AC();
    sub_6004(v133, &qword_1C9A0, &qword_13F90);
  }

  else
  {
    v118 = v4;
    v27 = *(a1 + 32);
    v152 = *(a1 + 16);
    *&v153 = v27;
    sub_2B44(&qword_1C4F8, &qword_138E8);
    sub_12CBC();
    v28 = *(&v143 + 1);
    v121 = v3;
    v119 = v8;
    if (*(&v143 + 1))
    {
      v29 = v143;
    }

    else
    {
      sub_F130();
    }

    *&v152 = v29;
    *(&v152 + 1) = v28;
    v116 = sub_2D90();
    v30 = sub_12AFC();
    v32 = v31;
    v34 = v33;
    v35 = sub_D240();
    v122 = a1;
    v117 = v7;
    if (v35 == &dword_0 + 2)
    {
      v36 = sub_129DC();
    }

    else
    {
      v36 = sub_129BC();
    }

    LODWORD(v152) = v36;
    v37 = sub_12ADC();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_69FC(v30, v32, v34 & 1);

    *(&v153 + 1) = &type metadata for Text;
    *&v154 = &protocol witness table for Text;
    v44 = swift_allocObject();
    *&v152 = v44;
    *(v44 + 16) = v37;
    *(v44 + 24) = v39;
    *(v44 + 32) = v41 & 1;
    *(v44 + 40) = v43;
    *&v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v45 = v122;
    v134 = *v122;
    sub_2B44(&qword_1C500, &qword_138F0);
    sub_12CBC();
    v46 = *v133;
    if (*v133)
    {
      v47 = [*v133 displayTitle];

      v48 = sub_12ECC();
      v50 = v49;
    }

    else
    {
      v51 = v45 + *(type metadata accessor for TimerView(0) + 28);
      v52 = sub_1267C();
      if (v53)
      {
        v48 = v52;
        v50 = v53;
      }

      else
      {
        v50 = 0xE500000000000000;
        v48 = 0x72656D6954;
      }
    }

    *&v134 = v48;
    *(&v134 + 1) = v50;
    v54 = sub_12AFC();
    v56 = v55;
    v58 = v57;
    if (sub_D240() == &dword_0 + 2)
    {
      v59 = sub_129CC();
    }

    else
    {
      v59 = sub_129BC();
    }

    LODWORD(v134) = v59;
    v60 = sub_12ADC();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_69FC(v54, v56, v58 & 1);

    *(&v135 + 1) = &type metadata for Text;
    *&v136 = &protocol witness table for Text;
    v67 = swift_allocObject();
    *&v134 = v67;
    *(v67 + 16) = v60;
    *(v67 + 24) = v62;
    *(v67 + 32) = v64 & 1;
    *(v67 + 40) = v66;
    memset(v133, 0, 40);
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    *&v131 = 0;
    v129 = 0u;
    v130 = 0u;
    v68 = v117;
    sub_12E2C();
    v69 = v118;
    v70 = v121;
    (*(v118 + 16))(v11, v68, v121);
    swift_storeEnumTagMultiPayload();
    sub_2B44(&qword_1C978, &qword_13F78);
    sub_2BC4(&qword_1C980, &qword_1C978, &qword_13F78);
    sub_E34C(&qword_1C988, &type metadata accessor for FactItemHeroNumberView);
    sub_129AC();
    (*(v69 + 8))(v68, v70);
    a1 = v122;
  }

  v72 = *(a1 + 8);
  *&v143 = *a1;
  v71 = v143;
  *(&v143 + 1) = v72;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CDC();
  v122 = v152;
  v118 = v153;
  v119 = *(&v152 + 1);
  v117 = sub_D240();
  v73 = *(a1 + 48);
  *&v152 = *(a1 + 40);
  *(&v152 + 1) = v73;
  sub_2B44(&qword_1C510, &qword_13900);
  sub_12CBC();
  v74 = v143;
  v75 = type metadata accessor for TimerView(0);
  v76 = *(a1 + v75[10]);
  *&v152 = v71;
  *(&v152 + 1) = v72;
  v116 = v76;
  sub_12CBC();
  v77 = v143;
  if (v143)
  {
    v78 = [v143 sound];

    v115 = [v78 isSilent];
  }

  else
  {
    v115 = 0;
  }

  v79 = qword_1C190;
  v121 = *(a1 + v75[9]);
  if (v79 != -1)
  {
    swift_once();
  }

  v80 = [objc_opt_self() orangeColor];
  sub_12BCC();
  v81 = sub_12C2C();

  qword_1C540 = v81;

  if (qword_1C188 != -1)
  {
    swift_once();
  }

  qword_1C538 = sub_12C1C();

  v114 = sub_12D5C();
  *&v152 = v71;
  *(&v152 + 1) = v72;
  sub_12CBC();
  v82 = v143;
  if (v143)
  {
    [v143 remainingTime];
    v84 = v83;
  }

  else
  {
    v85 = a1 + v75[7];
    *&v86 = COERCE_DOUBLE(sub_1262C());
    v84 = 0.0;
    if ((v87 & 1) == 0)
    {
      v84 = *&v86;
    }
  }

  *&v152 = v71;
  *(&v152 + 1) = v72;
  sub_12CBC();
  v88 = v143;
  if (v143)
  {
    [v143 duration];
    v90 = v89;
  }

  else
  {
    v91 = a1 + v75[7];
    *&v92 = COERCE_DOUBLE(sub_1269C());
    v90 = 1.0;
    if ((v93 & 1) == 0)
    {
      v90 = *&v92;
    }
  }

  v94 = v84 / v90;
  sub_12D4C();
  sub_1281C();
  v95 = sub_129EC();
  v133[0] = 1;
  v96 = v123;
  sub_8BB0(v124, v123, &qword_1C970, &qword_13F70);
  v97 = v120;
  sub_8BB0(v96, v120, &qword_1C970, &qword_13F70);
  v98 = (v97 + *(sub_2B44(&qword_1C990, &qword_13F80) + 48));
  *&v143 = v122;
  v100 = v118;
  v99 = v119;
  *(&v143 + 1) = v119;
  *&v144 = v118;
  v102 = v116;
  v101 = v117;
  *(&v144 + 1) = v117;
  *&v145 = v116;
  *(&v145 + 1) = v74;
  v103 = v115;
  LOBYTE(v146) = v115;
  *(&v146 + 1) = *v164;
  DWORD1(v146) = *&v164[3];
  *(&v146 + 1) = v121;
  v104 = v114;
  *&v147 = v114;
  *(&v147 + 1) = v94;
  v149 = v135;
  v150 = v136;
  v148 = v134;
  LOBYTE(v151[0]) = v95;
  DWORD1(v151[0]) = *(v165 + 3);
  *(v151 + 1) = v165[0];
  *(&v151[1] + 8) = 0u;
  *(v151 + 8) = 0u;
  BYTE8(v151[2]) = 1;
  v105 = v144;
  *v98 = v143;
  v98[1] = v105;
  v106 = v145;
  v107 = v146;
  v108 = v148;
  v98[4] = v147;
  v98[5] = v108;
  v98[2] = v106;
  v98[3] = v107;
  v109 = v149;
  v110 = v150;
  *(v98 + 153) = *(&v151[1] + 9);
  v111 = v151[1];
  v98[8] = v151[0];
  v98[9] = v111;
  v98[6] = v109;
  v98[7] = v110;
  sub_8BB0(&v143, &v152, &qword_1C998, &qword_13F88);
  sub_6004(v124, &qword_1C970, &qword_13F70);
  *&v152 = v122;
  *(&v152 + 1) = v99;
  *&v153 = v100;
  *(&v153 + 1) = v101;
  *&v154 = v102;
  *(&v154 + 1) = v74;
  LOBYTE(v155) = v103;
  *(&v155 + 1) = *v164;
  DWORD1(v155) = *&v164[3];
  *(&v155 + 1) = v121;
  *&v156 = v104;
  *(&v156 + 1) = v94;
  v158 = v135;
  v159 = v136;
  v157 = v134;
  LOBYTE(v160) = v95;
  *(&v160 + 1) = v165[0];
  HIDWORD(v160) = *(v165 + 3);
  v161 = 0u;
  v162 = 0u;
  v163 = 1;
  sub_6004(&v152, &qword_1C998, &qword_13F88);
  return sub_6004(v123, &qword_1C970, &qword_13F70);
}

uint64_t sub_CDC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v67 = a1;
  v3 = sub_2B44(&qword_1C9A8, &qword_13F98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v62 - v5;
  v7 = *(a1 + 32);
  v71 = *(a1 + 16);
  v72 = v7;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CBC();
  v8 = v70;
  if (v70)
  {
    v9 = v69;
  }

  else
  {
    sub_F130();
  }

  *&v71 = v9;
  *(&v71 + 1) = v8;
  v65 = sub_2D90();
  v10 = sub_12AFC();
  v12 = v11;
  v14 = v13;
  v15 = sub_12A2C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_12A5C();
  sub_6004(v6, &qword_1C9A8, &qword_13F98);
  v16 = sub_12AEC();
  v18 = v17;
  v20 = v19;

  sub_69FC(v10, v12, v14 & 1);

  sub_12A3C();
  v21 = sub_12ABC();
  v23 = v22;
  v25 = v24;
  sub_69FC(v16, v18, v20 & 1);

  v26 = v67;
  if (sub_D240() == &dword_0 + 2)
  {
    sub_12BDC();
  }

  else
  {
    sub_12C0C();
  }

  v63 = sub_12ACC();
  v64 = v27;
  v29 = v28;
  HIDWORD(v62) = v30;

  sub_69FC(v21, v23, v25 & 1);

  v71 = *v26;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  v31 = v69;
  if (v69)
  {
    v32 = [v69 displayTitle];

    v33 = sub_12ECC();
    v35 = v34;
  }

  else
  {
    v36 = v26 + *(type metadata accessor for TimerView(0) + 28);
    v37 = sub_1267C();
    if (v38)
    {
      v33 = v37;
      v35 = v38;
    }

    else
    {
      v35 = 0xE500000000000000;
      v33 = 0x72656D6954;
    }
  }

  *&v71 = v33;
  *(&v71 + 1) = v35;
  v39 = sub_12AFC();
  v41 = v40;
  v43 = v42;
  sub_12A7C();
  v44 = sub_12AEC();
  v46 = v45;
  v48 = v47;

  sub_69FC(v39, v41, v43 & 1);

  if (sub_D240() == &dword_0 + 2)
  {
    sub_12BDC();
  }

  else
  {
    sub_12C0C();
  }

  v49 = sub_12ACC();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_69FC(v44, v46, v48 & 1);

  v56 = BYTE4(v62) & 1;
  v68 = BYTE4(v62) & 1;
  LOBYTE(v71) = BYTE4(v62) & 1;
  v57 = v53 & 1;
  LOBYTE(v69) = v53 & 1;
  v58 = v66;
  v60 = v63;
  v59 = v64;
  *v66 = v63;
  v58[1] = v29;
  *(v58 + 16) = v56;
  v58[3] = v59;
  v58[4] = v49;
  v58[5] = v51;
  *(v58 + 48) = v57;
  v58[7] = v55;
  sub_F088(v60, v29, v56);

  sub_F088(v49, v51, v57);

  sub_69FC(v49, v51, v57);

  sub_69FC(v60, v29, v68);
}

id sub_D240()
{
  v9 = *v0;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v8)
  {
    v1 = [v8 state];
  }

  else
  {
    v2 = v0 + *(type metadata accessor for TimerView(0) + 28);
    sub_1268C();
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      v4 = sub_1276C();
      v6 = 2 * (v4 == 2);
      if (v4 == 1)
      {
        v6 = 3;
      }

      if (v5)
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }
  }

  return v1;
}

uint64_t sub_D2F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v12)
  {

    sub_12CBC();
    sub_E834(v12);
    v5 = v4;
  }

  else
  {
    v6 = v0 + *(type metadata accessor for TimerView(0) + 28);
    sub_1262C();
    v5 = 0;
    if ((v7 & 1) == 0)
    {
      sub_F130();
      v5 = v8;
    }
  }

  v14 = *(v1 + 1);
  v19 = v1[4];
  v13 = v5;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CCC();
  if (sub_D240() == &dword_0 + 1)
  {
    v15 = v1[5];
    v17 = v1[6];
  }

  else
  {
    sub_12CBC();
    if (v5)
    {
      [v5 remainingTime];
    }

    else
    {
      v9 = v1 + *(type metadata accessor for TimerView(0) + 28);
      sub_1262C();
    }

    sub_12CBC();
    if (v13)
    {
      [v13 duration];
    }

    else
    {
      v10 = v1 + *(type metadata accessor for TimerView(0) + 28);
      sub_1269C();
    }

    v16 = v1[5];
    v18 = v1[6];
  }

  sub_2B44(&qword_1C510, &qword_13900);
  return sub_12CCC();
}

void sub_D52C()
{
  v1 = v0;
  v2 = sub_1259C();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B44(&qword_1C950, &qword_13F58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v57 - v7;
  v9 = sub_124EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v63 = type metadata accessor for TimerView(0);
  v17 = v63[7];
  v18 = sub_1265C();
  v64 = v0;
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = sub_1266C();
    if (v22)
    {
      v23 = v22;
      if (qword_1C198 != -1)
      {
        swift_once();
      }

      v24 = sub_1279C();
      sub_32B4(v24, qword_1C740);

      v25 = sub_1277C();
      v26 = sub_12F6C();

      v27 = v20;
      if (os_log_type_enabled(v25, v26))
      {
        v28 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v28 = 136315394;
        *(v28 + 4) = sub_114DC(v27, v21, aBlock);
        *(v28 + 12) = 2080;
        v29 = sub_12E8C();
        v31 = sub_114DC(v29, v30, aBlock);

        *(v28 + 14) = v31;
        _os_log_impl(&dword_0, v25, v26, "[TimerView.onSnippetTapped]: Performing direct invocation with ID = %s, payload = %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      v32 = *(v64 + v63[9]);
      sub_18C8(v23);

      sub_12E6C();

      return;
    }

    v1 = v64;
  }

  sub_1263C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v33 = v1;
    sub_6004(v8, &qword_1C950, &qword_13F58);
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v34 = sub_1279C();
    sub_32B4(v34, qword_1C740);
    v35 = sub_1277C();
    v36 = sub_12F6C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "[TimerView.onSnippetTapped]: Nil direct invocation parameters detected; punching out instead.", v37, 2u);
    }

    v38 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v38)
    {
      v39 = (v33 + v63[8]);
      v40 = *v39;
      v41 = v39[1];
      v42 = v38;
      v43 = sub_12EBC();
      aBlock[4] = sub_DD20;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_DEE4;
      aBlock[3] = &unk_197C8;
      v44 = _Block_copy(aBlock);
      [v42 openApplication:v43 withOptions:0 completion:v44];

      _Block_release(v44);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v45 = sub_1279C();
    sub_32B4(v45, qword_1C740);
    (*(v10 + 16))(v14, v16, v9);
    v46 = sub_1277C();
    v47 = sub_12F6C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v58 = v48;
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v48 = 136315138;
      sub_E34C(&qword_1C958, &type metadata accessor for URL);
      v49 = sub_1305C();
      v51 = v50;
      v52 = *(v10 + 8);
      v52(v14, v9);
      v53 = sub_114DC(v49, v51, aBlock);

      v54 = v58;
      *(v58 + 1) = v53;
      _os_log_impl(&dword_0, v46, v47, "[TimerView.onSnippetTapped]: Performing punchout URL = %s", v54, 0xCu);
      sub_64C0(v59);
    }

    else
    {

      v52 = *(v10 + 8);
      v52(v14, v9);
    }

    v55 = *(v64 + v63[9]);
    sub_124DC();
    v56 = v60;
    sub_1258C();
    sub_12E5C();
    (*(v61 + 8))(v56, v62);
    v52(v16, v9);
  }
}

void sub_DD20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v2 = sub_1279C();
    sub_32B4(v2, qword_1C740);
    swift_errorRetain();
    v3 = sub_1277C();
    v4 = sub_12F5C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_2B44(&qword_1C960, &qword_13F60);
      v7 = sub_12EEC();
      v9 = sub_114DC(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_0, v3, v4, "[TimerView.onSnippetTapped]: Failed to launch clock app! %s", v5, 0xCu);
      sub_64C0(v6);
    }

    else
    {
    }
  }
}

void sub_DEE4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_E060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_E120()
{
  sub_29B4();
  if (v0 <= 0x3F)
  {
    sub_126DC();
    if (v1 <= 0x3F)
    {
      sub_55F8();
      if (v2 <= 0x3F)
      {
        sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_E248()
{
  result = qword_1C828;
  if (!qword_1C828)
  {
    sub_2A8C(&qword_1C820, &qword_13E68);
    type metadata accessor for TimerView(255);
    sub_E34C(&qword_1C830, type metadata accessor for TimerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C828);
  }

  return result;
}

uint64_t sub_E34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E394(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C7F8, &qword_13E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E404()
{
  result = qword_1C840;
  if (!qword_1C840)
  {
    sub_2A8C(&qword_1C810, &qword_13E58);
    sub_2A8C(&qword_1C808, &qword_13E50);
    sub_2BC4(&qword_1C848, &qword_1C808, &qword_13E50);
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C3B0, &qword_1C3A0, &qword_13828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C840);
  }

  return result;
}

uint64_t sub_E52C()
{
  v1 = (type metadata accessor for TimerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_126DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[8] + 8);

  v8 = *(v0 + v3 + v1[9]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E734()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E7D8(uint64_t a1)
{
  v2 = type metadata accessor for TimerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_E834(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 state] != &dword_0 + 1)
    {
      [v1 remainingTime];
    }

    sub_F130();
  }

  else
  {
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v2 = sub_1279C();
    sub_32B4(v2, qword_1C740);
    v3 = sub_1277C();
    v4 = sub_12F5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "TimerView: MTTimer missing in call for durationString(for:)", v5, 2u);
    }

    sub_F130();
  }
}

uint64_t sub_EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_EB0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_EBD0()
{
  result = qword_1C908;
  if (!qword_1C908)
  {
    sub_2A8C(&qword_1C910, "h\r");
    sub_2A8C(&qword_1C810, &qword_13E58);
    sub_E404();
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C908);
  }

  return result;
}

uint64_t sub_ECE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_ED4C()
{
  v1 = *(type metadata accessor for TimerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_D2F8();
}

uint64_t sub_EDA8()
{
  v1 = (type metadata accessor for TimerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = v1[9];
  v10 = sub_126AC();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[10] + 8);

  v12 = *(v0 + v3 + v1[13]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_EEEC()
{
  v1 = *(type metadata accessor for TimerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_D52C();
}

unint64_t sub_EF48()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    sub_2A8C(&qword_1C918, &qword_13F38);
    sub_2BC4(&qword_1C938, &qword_1C928, &qword_13F48);
    sub_2BC4(&qword_1C940, &qword_1C948, &qword_13F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

uint64_t sub_F02C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_F044()
{
  sub_69FC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_F088(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F098()
{
  sub_2A8C(&qword_1C918, &qword_13F38);
  sub_EF48();
  return swift_getOpaqueTypeConformance2();
}

void sub_F130()
{
  v0 = sub_1253C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FB70(&v88);
  sub_1252C();
  v5.super.isa = sub_1251C().super.isa;
  (*(v1 + 8))(v4, v0);
  if (qword_1C1A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1279C();
  v7 = sub_32B4(v6, qword_1C9B0);
  v8 = v5.super.isa;
  v80 = v7;
  v9 = sub_1277C();
  v10 = sub_12F4C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v86 = v12;
    *v11 = 136315138;
    v84 = v8;
    type metadata accessor for CFLocale(0);
    v13 = v8;
    v14 = sub_12EEC();
    v16 = sub_114DC(v14, v15, &v86);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "TimeInterval.intervalTextString formatting time components using locale %s", v11, 0xCu);
    sub_64C0(v12);
  }

  v17 = v88;
  v81 = v89;
  if (v89)
  {
    v78 = v88;
    v18 = sub_12EBC();
    v79 = v8;
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v18, 0, v8);

    if (DateFormatFromTemplate)
    {
      v20 = sub_12ECC();
      v22 = v21;

      v86 = v20;
      v87 = v22;
      v84 = 18504;
      v85 = 0xE200000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      sub_2D90();
      v23 = sub_12FBC();
      v25 = v24;

      v86 = v23;
      v87 = v25;
      v84 = 72;
      v85 = 0xE100000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v26 = sub_12FBC();
      v28 = v27;

      v86 = v26;
      v87 = v28;
      v84 = 26728;
      v85 = 0xE200000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v29 = sub_12FBC();
      v31 = v30;

      v86 = v29;
      v87 = v31;
      v84 = 104;
      v85 = 0xE100000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v32 = sub_12FBC();
      v34 = v33;

      v86 = v32;
      v87 = v34;
      v84 = 28013;
      v85 = 0xE200000000000000;
      v82 = 1076113957;
      v83 = 0xE400000000000000;
      v35 = sub_12FBC();
      v37 = v36;

      v86 = v35;
      v87 = v37;
      v84 = 109;
      v85 = 0xE100000000000000;
      v82 = 1076113957;
      v83 = 0xE400000000000000;
      v38 = sub_12FBC();
      v40 = v39;

      v86 = v38;
      v87 = v40;
      v84 = 29555;
      v85 = 0xE200000000000000;
      v82 = 1076114213;
      v83 = 0xE400000000000000;
      v41 = sub_12FBC();
      v43 = v42;

      v86 = v41;
      v87 = v43;
      v84 = 21331;
      v85 = 0xE200000000000000;
      v82 = 1076114469;
      v83 = 0xE400000000000000;
      v44 = sub_12FBC();
      v46 = v45;

      v86 = v44;
      v87 = v46;
      if (qword_1C1A8 != -1)
      {
        swift_once();
      }

      v47 = sub_1247C();
      sub_32B4(v47, qword_1C9C8);
      v48 = sub_12FAC();
      v50 = v49;

      v17 = v78;
      v8 = v79;
      goto LABEL_12;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v51 = sub_12EBC();
  v52 = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v51, 0, v8);

  if (!v52)
  {
    goto LABEL_20;
  }

  v53 = sub_12ECC();
  v55 = v54;

  v86 = v53;
  v87 = v55;
  v84 = 28013;
  v85 = 0xE200000000000000;
  v82 = 1076113701;
  v83 = 0xE400000000000000;
  sub_2D90();
  v56 = sub_12FBC();
  v58 = v57;

  v86 = v56;
  v87 = v58;
  v84 = 109;
  v85 = 0xE100000000000000;
  v82 = 1076113701;
  v83 = 0xE400000000000000;
  v59 = sub_12FBC();
  v61 = v60;

  v86 = v59;
  v87 = v61;
  v84 = 29555;
  v85 = 0xE200000000000000;
  v82 = 1076113957;
  v83 = 0xE400000000000000;
  v62 = sub_12FBC();
  v64 = v63;

  v86 = v62;
  v87 = v64;
  v84 = 21331;
  v85 = 0xE200000000000000;
  v82 = 1076114213;
  v83 = 0xE400000000000000;
  v48 = sub_12FBC();
  v50 = v65;

LABEL_12:
  swift_bridgeObjectRetain_n();
  v66 = sub_1277C();
  v67 = sub_12F4C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v86 = v69;
    *v68 = 136315138;
    v70 = sub_114DC(v48, v50, &v86);

    *(v68 + 4) = v70;
    _os_log_impl(&dword_0, v66, v67, "TimeInterval.intervalTextString formatString: %s", v68, 0xCu);
    sub_64C0(v69);
  }

  else
  {
  }

  sub_2B44(&qword_1C9E0, &qword_13FD0);
  v71 = v81;
  if (v81)
  {
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_13FB0;
    *(v72 + 56) = &type metadata for String;
    v73 = sub_103B4();
    *(v72 + 64) = v73;
    *(v72 + 32) = v17;
    *(v72 + 40) = v71;
    *(v72 + 96) = &type metadata for String;
    *(v72 + 104) = v73;
    v74 = v91;
    *(v72 + 72) = v90;
    *(v72 + 136) = &type metadata for String;
    *(v72 + 144) = v73;
    *(v72 + 112) = v74;
  }

  else
  {
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_13FC0;
    *(v75 + 56) = &type metadata for String;
    v76 = sub_103B4();
    *(v75 + 64) = v76;
    v77 = v91;
    *(v75 + 32) = v90;
    *(v75 + 96) = &type metadata for String;
    *(v75 + 104) = v76;
    *(v75 + 72) = v77;
  }

  sub_12EDC();
}

uint64_t sub_FAAC()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C9B0);
  sub_32B4(v0, qword_1C9B0);
  return sub_1278C();
}

uint64_t sub_FB24()
{
  v0 = sub_1247C();
  sub_532C(v0, qword_1C9C8);
  sub_32B4(v0, qword_1C9C8);
  return sub_1246C();
}

uint64_t sub_FB70@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_1257C();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  __chkstk_darwin(v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_124BC();
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v71);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1250C();
  v68 = *(v70 - 8);
  v7 = *(v68 + 64);
  v8 = __chkstk_darwin(v70);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v75 = [objc_allocWithZone(NSNumberFormatter) init];
  [v75 setNumberStyle:0];
  sub_1261C();
  sub_124FC();
  sub_1255C();
  sub_2B44(&qword_1C9F0, &qword_13FD8);
  v13 = sub_1256C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_13FB0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for Calendar.Component.hour(_:), v13);
  v19(v18 + v15, enum case for Calendar.Component.minute(_:), v13);
  v19(v18 + 2 * v15, enum case for Calendar.Component.second(_:), v13);
  sub_10408(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v66 = v10;
  v67 = v12;
  sub_1254C();

  (*(v73 + 8))(v4, v74);
  v20 = sub_1248C();
  v21 = 0;
  v22 = 0;
  if (v23)
  {
    v24 = v75;
  }

  else
  {
    v24 = v75;
    if (v20 >= 1)
    {
      v25 = sub_12EBC();
      [v24 setPositiveFormat:v25];

      isa = sub_12F3C().super.super.isa;
      v27 = [v24 stringFromNumber:isa];

      if (v27)
      {
        v21 = sub_12ECC();
        v22 = v28;
      }

      else
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }
    }
  }

  v74 = v21;
  v29 = 12336;
  v30 = 0xE200000000000000;
  v31 = sub_12EBC();
  [v24 setPositiveFormat:v31];

  v32 = sub_1249C();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = [objc_allocWithZone(NSNumber) initWithInteger:v34];
  v36 = [v24 stringFromNumber:v35];

  if (v36)
  {
    v29 = sub_12ECC();
    v30 = v37;
  }

  v73 = v29;
  v38 = sub_124AC();
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  v41 = [objc_allocWithZone(NSNumber) initWithInteger:v40];
  v42 = [v24 stringFromNumber:v41];

  if (v42)
  {
    v43 = sub_12ECC();
    v45 = v44;
  }

  else
  {
    v45 = 0xE200000000000000;
    v43 = 12336;
  }

  if (qword_1C1A0 != -1)
  {
    swift_once();
  }

  v46 = sub_1279C();
  sub_32B4(v46, qword_1C9B0);
  swift_bridgeObjectRetain_n();

  v47 = sub_1277C();
  v48 = sub_12F4C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78 = v22;
    v79 = v50;
    *v49 = 136315650;
    v77 = v74;

    sub_2B44(&qword_1C400, &qword_13AC0);
    v51 = sub_12EEC();
    v53 = sub_114DC(v51, v52, &v79);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;

    v54 = sub_114DC(v73, v30, &v79);

    *(v49 + 14) = v54;
    *(v49 + 22) = 2080;

    v55 = sub_114DC(v43, v45, &v79);

    *(v49 + 24) = v55;
    _os_log_impl(&dword_0, v47, v48, "TimeInterval.getTimeComponents: hours %s, minutes %s, seconds %s", v49, 0x20u);
    swift_arrayDestroy();
  }

  v56 = v75;
  if (v22)
  {
    v57 = v74;
    if (v74 == 48 && v22 == 0xE100000000000000)
    {
      v58 = 1;
    }

    else
    {
      v58 = sub_1307C();
    }

    (*(v69 + 8))(v76, v71);
    v62 = *(v68 + 8);
    v63 = v70;
    v62(v66, v70);
    result = (v62)(v67, v63);
    if (v58)
    {

      v57 = 0;
      v22 = 0;
    }
  }

  else
  {

    (*(v69 + 8))(v76, v71);
    v59 = *(v68 + 8);
    v60 = v70;
    v59(v66, v70);
    result = (v59)(v67, v60);
    v57 = v74;
  }

  v64 = v72;
  v65 = v73;
  *v72 = v57;
  v64[1] = v22;
  v64[2] = v65;
  v64[3] = v30;
  v64[4] = v43;
  v64[5] = v45;
  return result;
}

unint64_t sub_103B4()
{
  result = qword_1C9E8;
  if (!qword_1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E8);
  }

  return result;
}

void *sub_10408(uint64_t a1)
{
  v2 = sub_1256C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2B44(&qword_1C9F8, &unk_13FE0);
    v10 = sub_12FEC();
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
      sub_10700(&qword_1CA00);
      v18 = sub_12E9C();
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
          sub_10700(&qword_1CA08);
          v25 = sub_12EAC();
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

uint64_t sub_10700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1256C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10744()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1CA10);
  sub_32B4(v0, qword_1CA10);
  return sub_1278C();
}

uint64_t sub_107BC@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = sub_2B44(&qword_1CA30, &qword_140C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v29 - v4;
  v6 = sub_2B44(&qword_1CA38, &qword_140D0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = sub_2B44(&qword_1CA40, &qword_140D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v29 - v13;
  *v5 = sub_1298C();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v15 = sub_2B44(&qword_1CA48, &qword_140E0);
  sub_10B08(v1, &v5[*(v15 + 44)]);
  sub_12D4C();
  sub_1288C();
  sub_1222C(v5, v10, &qword_1CA30, &qword_140C8);
  v16 = &v10[*(v7 + 44)];
  v17 = v36;
  *(v16 + 4) = v35;
  *(v16 + 5) = v17;
  *(v16 + 6) = v37;
  v18 = v32;
  *v16 = v31;
  *(v16 + 1) = v18;
  v19 = v34;
  *(v16 + 2) = v33;
  *(v16 + 3) = v19;
  v38 = *(v1 + 48);
  v20 = v38;
  v21 = swift_allocObject();
  v22 = *(v1 + 16);
  *(v21 + 1) = *v1;
  *(v21 + 2) = v22;
  v23 = *(v1 + 48);
  *(v21 + 3) = *(v1 + 32);
  *(v21 + 4) = v23;
  sub_1222C(v10, v14, &qword_1CA38, &qword_140D0);
  *&v14[*(v11 + 52)] = v20;
  v24 = &v14[*(v11 + 56)];
  *v24 = sub_12224;
  v24[1] = v21;
  v25 = swift_allocObject();
  v26 = *(v1 + 16);
  v25[1] = *v1;
  v25[2] = v26;
  v27 = *(v1 + 48);
  v25[3] = *(v1 + 32);
  v25[4] = v27;
  sub_1218C(v1, v30);
  sub_1218C(v1, v30);
  sub_8BB0(&v38, v30, &qword_1CA50, &qword_140E8);
  sub_2BC4(&qword_1CA58, &qword_1CA40, &qword_140D8);
  sub_12B9C();

  return sub_6004(v14, &qword_1CA40, &qword_140D8);
}

uint64_t sub_10B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v75 = a2;
  v3 = sub_2B44(&qword_1C9A8, &qword_13F98);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v78 = &v68 - v5;
  v6 = sub_2B44(&qword_1CA68, &qword_14100);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  KeyPath = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  v12 = sub_2B44(&qword_1CA70, &qword_14108);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v68 - v14;
  v72 = &v68 - v14;
  v16 = sub_125AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_125CC();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_12DDC();
  v73 = *(v23 - 8);
  v74 = v23;
  v24 = *(v73 + 64);
  v25 = __chkstk_darwin(v23);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  v76 = a1;
  v29 = *(a1 + 32);
  *v20 = *(a1 + 24);
  v20[1] = v29;
  (*(v17 + 104))(v20, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v16);
  v30 = sub_125FC();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  v31 = sub_1260C();
  v32 = *(*(v31 - 8) + 56);
  v32(v11, 1, 1, v31);
  v32(KeyPath, 1, 1, v31);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;

  sub_125BC();
  v33 = v28;
  sub_12DCC();
  v88 = *v76;
  *&v89 = *(v76 + 16);
  sub_2B44(&qword_1CA60, &unk_140F0);
  sub_12CBC();
  v34 = sub_12A2C();
  v35 = v78;
  (*(*(v34 - 8) + 56))(v78, 1, 1, v34);
  sub_12A5C();
  sub_6004(v35, &qword_1C9A8, &qword_13F98);
  sub_12A4C();
  sub_12A6C();

  sub_12A1C();

  v76 = sub_12AEC();
  v78 = v36;
  LOBYTE(v35) = v37;
  v72 = v38;

  KeyPath = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v39 = v35 & 1;
  LOBYTE(v88) = v35 & 1;
  LOBYTE(v80) = 0;
  LOBYTE(v29) = sub_129FC();
  v40 = sub_12A0C();
  sub_12A0C();
  if (sub_12A0C() != v29)
  {
    v40 = sub_12A0C();
  }

  sub_127EC();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v108 = 0;
  v49 = sub_12BFC();
  v68 = sub_129EC();
  v50 = v73;
  v51 = v74;
  v52 = *(v73 + 16);
  v53 = v79;
  v70 = v33;
  v52(v79, v33, v74);
  v54 = v75;
  v55 = v53;
  v56 = v51;
  v52(v75, v55, v51);
  v57 = (v54 + *(sub_2B44(&qword_1CA78, &qword_14170) + 48));
  *&v80 = v76;
  *(&v80 + 1) = v78;
  LOBYTE(v81) = v39;
  *(&v81 + 1) = *v107;
  DWORD1(v81) = *&v107[3];
  v58 = v72;
  *(&v81 + 1) = v72;
  *&v82 = KeyPath;
  *(&v82 + 1) = 1;
  LOBYTE(v83) = 0;
  *(&v83 + 1) = *v106;
  DWORD1(v83) = *&v106[3];
  v69 = v39;
  v59 = v71;
  *(&v83 + 1) = v71;
  v75 = xmmword_13FF0;
  v84 = xmmword_13FF0;
  LOBYTE(v85) = v40;
  DWORD1(v85) = *&v109[3];
  *(&v85 + 1) = *v109;
  *(&v85 + 1) = v42;
  *&v86 = v44;
  *(&v86 + 1) = v46;
  *&v87[0] = v48;
  BYTE8(v87[0]) = 0;
  *(v87 + 9) = v110[0];
  HIDWORD(v87[0]) = *(v110 + 3);
  *&v87[1] = v49;
  LOBYTE(v52) = v68;
  BYTE8(v87[1]) = v68;
  v60 = v80;
  v61 = v81;
  v62 = v83;
  v57[2] = v82;
  v57[3] = v62;
  *v57 = v60;
  v57[1] = v61;
  v63 = v84;
  v64 = v85;
  *(v57 + 121) = *(v87 + 9);
  v65 = v87[0];
  v57[6] = v86;
  v57[7] = v65;
  v57[4] = v63;
  v57[5] = v64;
  sub_8BB0(&v80, &v88, &unk_1CA80, &qword_14178);
  v66 = *(v50 + 8);
  v66(v70, v56);
  *&v88 = v76;
  *(&v88 + 1) = v78;
  LOBYTE(v89) = v69;
  *(&v89 + 1) = *v107;
  DWORD1(v89) = *&v107[3];
  *(&v89 + 1) = v58;
  v90 = KeyPath;
  v91 = 1;
  v92 = 0;
  *v93 = *v106;
  *&v93[3] = *&v106[3];
  v94 = v59;
  v95 = v75;
  v96 = v40;
  *&v97[3] = *&v109[3];
  *v97 = *v109;
  v98 = v42;
  v99 = v44;
  v100 = v46;
  v101 = v48;
  v102 = 0;
  *v103 = v110[0];
  *&v103[3] = *(v110 + 3);
  v104 = v49;
  v105 = v52;
  sub_6004(&v88, &unk_1CA80, &qword_14178);
  return (v66)(v79, v56);
}

uint64_t sub_112C0(uint64_t a1, void **a2)
{
  sub_11A84(a2[7]);
  v4 = *a2;
  v5 = a2[2];
  sub_2B44(&qword_1CA60, &unk_140F0);
  return sub_12CCC();
}

void sub_11328()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = v1;
    v5 = sub_12EBC();
    oslog = [objc_allocWithZone(FBSOpenApplicationOptions) init];
    [v4 openApplication:v5 withOptions:? completion:?];
  }

  else
  {
    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v6 = sub_1279C();
    sub_32B4(v6, qword_1CA10);
    oslog = sub_1277C();
    v7 = sub_12F5C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v7, "TimerDurationViewLegacy: Failed to launch clock app!", v8, 2u);
    }
  }
}

uint64_t sub_114A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_107BC(a1);
}

uint64_t sub_114DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_115A8(v11, 0, 0, 1, a1, a2);
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
    sub_2DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_64C0(v11);
  return v7;
}

unint64_t sub_115A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_116B4(a5, a6);
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
    result = sub_1301C();
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

char *sub_116B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_11700(a1, a2);
  sub_11830(&off_19150);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_11700(uint64_t a1, unint64_t a2)
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

  v6 = sub_1191C(v5, 0);
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

  result = sub_1301C();
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
        v10 = sub_12EFC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1191C(v10, 0);
        result = sub_12FFC();
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

uint64_t sub_11830(uint64_t result)
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

  result = sub_11990(result, v12, 1, v3);
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

void *sub_1191C(uint64_t a1, uint64_t a2)
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

  sub_2B44(&qword_1CA28, &qword_14010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11990(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B44(&qword_1CA28, &qword_14010);
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

void sub_11A84(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 0;
    if ([v1 state] != &dword_0 + 1)
    {
      [v1 remainingTime];
      v2 = v3;
    }

    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1279C();
    sub_32B4(v4, qword_1CA10);
    v5 = sub_1277C();
    v6 = sub_12F6C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_0, v5, v6, "TimerDurationViewLegacy: timeRemaining %f", v7, 0xCu);
    }

    sub_F130();
  }

  else
  {
    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1279C();
    sub_32B4(v8, qword_1CA10);
    v9 = sub_1277C();
    v10 = sub_12F5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "TimerUIPlugin (Legacy): MTTimer missing in call for durationString(for:)", v11, 2u);
    }

    sub_F130();
  }
}

double sub_11CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v4 = sub_2B44(&qword_1C3F0, &unk_14000);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  sub_F130();
  *&v42 = v8;
  *(&v42 + 1) = v9;
  sub_12CAC();
  v38 = [objc_allocWithZone(MTTimerManager) init];
  v10 = [v38 getCurrentTimerSync];
  v11 = v10;
  if (v10)
  {
    [v10 remainingTime];
  }

  if (qword_1C1B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1279C();
  sub_32B4(v12, qword_1CA10);
  v13 = sub_1277C();
  v14 = sub_12F6C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = a3;
    v17 = v16;
    v46 = v16;
    *v15 = 136315138;
    v18 = sub_12F2C();
    v20 = sub_114DC(v18, v19, &v46);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v13, v14, "TimerDurationViewLegacy: Timer initial remaining time: %s", v15, 0xCu);
    sub_64C0(v17);
    a3 = v37;
  }

  sub_11A84(v11);
  v22 = v21;
  v24 = v23;

  *&v42 = v22;
  *(&v42 + 1) = v24;
  sub_12CAC();

  v25 = v46;
  v26 = v47;
  v27 = v48;
  v28 = [objc_opt_self() mainRunLoop];
  sub_120E8();
  v29 = sub_12F9C();
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = sub_12F8C();
  sub_6004(v7, &qword_1C3F0, &unk_14000);
  v46 = v30;
  sub_12F7C();
  sub_12134();
  v31 = sub_127BC();

  v46 = v31;
  sub_2B44(&qword_1C418, &qword_13878);
  sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878);
  v32 = sub_127CC();

  *&v42 = v25;
  *(&v42 + 1) = v26;
  *&v43 = v27;
  *(&v43 + 1) = v39;
  *&v44 = v40;
  *(&v44 + 1) = v38;
  *&v45 = v32;
  *(&v45 + 1) = v11;
  v46 = v25;
  v47 = v26;
  v48 = v27;
  v49 = v39;
  v50 = v40;
  v51 = v38;
  v52 = v32;
  v53 = v11;
  sub_1218C(&v42, v41);
  sub_121C4(&v46);
  v33 = v43;
  *a3 = v42;
  a3[1] = v33;
  result = *&v44;
  v35 = v45;
  a3[2] = v44;
  a3[3] = v35;
  return result;
}

unint64_t sub_120E8()
{
  result = qword_1C408;
  if (!qword_1C408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C408);
  }

  return result;
}

unint64_t sub_12134()
{
  result = qword_1C410;
  if (!qword_1C410)
  {
    sub_12F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C410);
  }

  return result;
}

uint64_t sub_1222C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B44(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_12294()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_12318@<X0>(uint64_t a1@<X8>)
{
  result = sub_1294C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1234C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1295C();
}

uint64_t sub_1237C@<X0>(void *a1@<X8>)
{
  result = sub_1292C();
  *a1 = v3;
  return result;
}

uint64_t sub_123D0()
{
  sub_2A8C(&qword_1CA40, &qword_140D8);
  sub_2BC4(&qword_1CA58, &qword_1CA40, &qword_140D8);
  return swift_getOpaqueTypeConformance2();
}