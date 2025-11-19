uint64_t AppStoreModule.__deallocating_deinit()
{
  AppStoreModule.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A061D0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  *(a5 + 64) = 0;
}

uint64_t sub_1C1A06214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 locationEnabled];

  if (v10)
  {
    [*(v4 + 48) willAccessLocation];
    [*(v4 + 48) willTransmitLocationFor_];
  }

  v12 = a2[5];
  v11 = a2[6];
  v14 = a2[7];
  v13 = a2[8];
  v15 = *(v4 + 96);
  type metadata accessor for AppStoreDynamicDataProvider();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v11;
  v16[4] = v14;
  v16[5] = v13;
  v16[6] = 0;
  v16[7] = v15;

  v17 = sub_1C1A3CBC8(2, a1, 0, 0, a3, a4);

  return v17;
}

void sub_1C1A06338(uint64_t a1)
{
  if (v1[4] || (sub_1C1A068B4(), v1[4]))
  {
    v3 = v1[5];
    v4 = v1[2];
    swift_unknownObjectRetain();
    [v4 lock];
    ObjectType = swift_getObjectType();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 16);
    (*(v3 + 16))(v6, v7, v8, v9, v10, v11, ObjectType, v3);
    [v4 unlock];
    if (v11 == 1)
    {
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v12 = sub_1C1A6F8EC();
      sub_1C1A6F18C();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v13 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

uint64_t sub_1C1A06554(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(sub_1C1A039B4() + 16);

  if (v7)
  {
    if (*(a1 + 17) == 1)
    {
      sub_1C1A6F67C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v9 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      sub_1C19A9E58(&qword_1EBF047C0);
      v10 = swift_allocObject();
      *(v10 + 3) = 0;
      v11 = *(*v10 + 104);
      v12 = sub_1C1A6D5DC();
      v22 = *(*(v12 - 8) + 56);
      v22(&v10[v11], 1, 1, v12);
      v13 = &v10[*(*v10 + 112)];
      *v13 = 0;
      *(v13 + 1) = 0;
      v14 = *(*v10 + 120);
      v15 = objc_allocWithZone(MEMORY[0x1E69861E0]);

      *&v10[v14] = [v15 init];
      *&v10[*(*v10 + 128)] = 0;
      v16 = &v10[*(*v10 + 136)];
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v10 + 2) = v7;
      v17 = *(v7 + 16);

      v18 = sub_1C1A034DC();
      v20 = sub_1C1A06214(v17, a1, v18, v19);

      *(v10 + 3) = v20;

      sub_1C1A6D5AC();

      v22(v6, 0, 1, v12);
      v21 = *(*v10 + 104);
      swift_beginAccess();
      sub_1C19B40BC(v6, &v10[v21]);
      swift_endAccess();
      *(v2 + 64) = v10;
    }
  }

  if ((*(a1 + 17) & 1) == 0)
  {

    sub_1C1A27FDC(0);
  }

  return result;
}

uint64_t sub_1C1A068B4()
{
  v1 = v0;
  v2 = sub_1C1A6EBFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  sub_1C19992F8(v6 + 408, &v32);
  sub_1C1994048(&v32, v33);
  (*(v3 + 104))(v5, *MEMORY[0x1E6989CE8], v2);
  v7 = sub_1C1A6EC3C();
  (*(v3 + 8))(v5, v2);
  sub_1C199935C(&v32);
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v8 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  if (v7)
  {
    v9 = sub_1C1A2B284();
    v11 = *(v6 + 448);
    v10 = *(v6 + 456);
    v33 = sub_1C1A6EFCC();
    v34 = MEMORY[0x1E6989E48];
    *&v32 = v11;
    v12 = type metadata accessor for AppRequestMetaFieldsSource();
    v31[3] = v12;
    v31[4] = &off_1F413FB58;
    v31[0] = v10;
    type metadata accessor for HumbleSLPDataProvider();
    v13 = swift_allocObject();
    v14 = sub_1C199E1C0(v31, v12);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[11] = v12;
    v13[12] = &off_1F413FB58;
    v13[8] = v19;
    v13[2] = v9;
    sub_1C199274C(&v32, (v13 + 3));

    sub_1C199935C(v31);
    type metadata accessor for NullAppLifecycleNotificationDelegate();
    swift_allocObject();
    v20 = &off_1F4142F00;
    v21 = &off_1F41414E0;
  }

  else
  {
    v22 = *(v1 + 96);
    v23 = *(v1 + 48);

    sub_1C19F5714(v23, v22);
    v20 = &off_1F4140EF0;
    v21 = &off_1F4140ED0;
  }

  v24 = *(v1 + 16);
  type metadata accessor for AppStoreNotificationListener();
  v25 = swift_allocObject();
  *(v25 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 16) = v24;
  *(v25 + 32) = v21;
  swift_unknownObjectWeakAssign();
  v26 = objc_opt_self();
  v27 = v24;
  v28 = [v26 defaultCenter];
  [v28 addObserver:v25 selector:sel_becameActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  v29 = [v26 defaultCenter];
  [v29 addObserver:v25 selector:sel_resignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  swift_unknownObjectRelease();

  *(v1 + 32) = v13;
  *(v1 + 40) = v20;
  swift_unknownObjectRelease();
  *(v1 + 56) = v25;
}

uint64_t sub_1C1A06D94@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1C1A06E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1C1A6EC1C();
    v17 = *(v10 - 8);
    (*(v17 + 16))(a3, v9 + *(v17 + 72) * v8, v10);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = sub_1C1A6EC1C();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1C1A06F5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v8 = sub_1C1A6E4BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - v12;
  v13 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = v9;
  v19 = *(v9 + 56);
  v52 = &v43 - v20;
  v21 = v8;
  v19(v17);
  type metadata accessor for AppStoreAd();
  v22 = swift_allocObject();
  *(v22 + 80) = 0;
  *(v22 + 88) = 0;
  *(v22 + 96) = 4;
  *(v22 + 104) = 0;
  *(v22 + 112) = 0;
  *(v22 + 16) = a1;
  v51 = a1;
  v23 = sub_1C19E93F8();
  *(v22 + 24) = v23;
  swift_beginAccess();
  *(v22 + 96) = a6;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C1A6E7EC();
    *(v22 + 32) = v25;
    *(v22 + 40) = v26;
    v27 = v26;
    v28 = sub_1C1A6E80C();
    v30 = v29;

    if (v30)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0xE000000000000000;
    v27 = 0xE000000000000000;
  }

  v28 = 0;
  v30 = 0xE000000000000000;
LABEL_6:
  v44 = v28;
  *(v22 + 48) = v28;
  *(v22 + 56) = v30;
  swift_beginAccess();
  v31 = v48;
  *(v22 + 80) = v47;
  *(v22 + 88) = v31;
  v32 = v50;
  *(v22 + 64) = v49;
  *(v22 + 72) = v32;
  v33 = v52;
  sub_1C1990FA8(v52, v22 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType, &qword_1EBF03E48);
  sub_1C1990FA8(v33, v15, &qword_1EBF03E48);
  v34 = v18;
  if ((*(v18 + 48))(v15, 1, v21) == 1)
  {
    v35 = v51;

    sub_1C1991140(v15, &qword_1EBF03E48);
  }

  else
  {
    v36 = *(v18 + 32);
    v50 = v25;
    v37 = v46;
    v36(v46, v15, v21);
    v49 = type metadata accessor for VisibilityTimingTracker();

    v35 = v51;
    v38 = [v51 metricsHelper];
    swift_getObjectType();
    v39 = v45;
    (*(v34 + 16))(v45, v37, v21);
    v40 = sub_1C19E5124(v50, v27, v44, v30, v38, v39);

    (*(v34 + 8))(v37, v21);
    *(v22 + 104) = v40;
  }

  sub_1C1A6E73C();
  sub_1C1A6E72C();
  sub_1C1A69A38();
  v41 = [v35 journeyIdentifier];
  sub_1C1A6F3CC();

  sub_1C1A6E70C();

  sub_1C1991140(v52, &qword_1EBF03E48);
  return v22;
}

unint64_t sub_1C1A073E4()
{
  result = qword_1EBF04740;
  if (!qword_1EBF04740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04740);
  }

  return result;
}

unint64_t sub_1C1A0743C()
{
  result = qword_1EBF04748;
  if (!qword_1EBF04748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreAdUnfilledReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreAdUnfilledReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RunMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RunMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1A077C8()
{
  result = qword_1EBF047B0;
  if (!qword_1EBF047B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF047B0);
  }

  return result;
}

uint64_t sub_1C1A0781C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  *(v1 + 64) = 0;
}

id sub_1C1A078A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ready];
  *a2 = result;
  return result;
}

uint64_t sub_1C1A078E8(char *a1, id a2)
{
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *&a1[OBJC_IVAR___APPCMetricsView_promotedContent];
    v9 = [swift_unknownObjectRetain() identifier];
    v10 = a2;
    v11 = sub_1C1A6F3CC();
    v13 = v12;

    v53 = v10;
    v14 = [v10 identifier];
    v15 = sub_1C1A6F3CC();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = sub_1C1A6FCEC();

      if ((v19 & 1) == 0)
      {
        v52[3] = sub_1C1A6F65C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v32 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C1A74920;
        sub_1C1A6DD2C();
        v34 = sub_1C1A6D5EC();
        v36 = v35;
        (*(v5 + 8))(v7, v4);
        v37 = MEMORY[0x1E69E6158];
        *(v33 + 56) = MEMORY[0x1E69E6158];
        v38 = sub_1C199E518();
        *(v33 + 64) = v38;
        *(v33 + 32) = v34;
        *(v33 + 40) = v36;
        v39 = [v8 identifier];
        v40 = sub_1C1A6F3CC();
        v42 = v41;

        *(v33 + 96) = v37;
        *(v33 + 104) = v38;
        *(v33 + 72) = v40;
        *(v33 + 80) = v42;
        v43 = v53;
        v44 = [v53 identifier];
        v45 = sub_1C1A6F3CC();
        v47 = v46;

        *(v33 + 136) = v37;
        *(v33 + 144) = v38;
        *(v33 + 112) = v45;
        *(v33 + 120) = v47;
        sub_1C1A6F18C();
        swift_unknownObjectRelease();

        a2 = v43;

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    a2 = v53;
  }

  LODWORD(v53) = sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v20 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1A73CD0;
  sub_1C1A6DD2C();
  v22 = sub_1C1A6D5EC();
  v24 = v23;
  (*(v5 + 8))(v7, v4);
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1C199E518();
  *(v21 + 64) = v26;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v27 = [a2 identifier];
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  *(v21 + 72) = v28;
  *(v21 + 80) = v30;
  sub_1C1A6F18C();

  if (a1)
  {
LABEL_13:
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    sub_1C198FB8C(0, &qword_1EDE63F38);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v50[2] = a2;
    v50[3] = v48;
    v50[4] = a1;
    v50[5] = v49;
    v51 = a1;
    swift_unknownObjectRetain();

    sub_1C1A6F6BC();
  }

  return result;
}

void sub_1C1A07E4C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C1A6D62C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 adType];
  if (v11 > 8)
  {
    LODWORD(v65) = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v21 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C1A73CD0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1C1A6DD2C();

      Strong = sub_1C1A6D5EC();
      v25 = v24;
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v25 = 0;
    }

    v42 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v43 = sub_1C199E518();
    *(v22 + 64) = v43;
    v44 = 0x204E574F4E4B4E55;
    if (v25)
    {
      v44 = Strong;
    }

    v45 = 0xEA00000000004449;
    if (v25)
    {
      v45 = v25;
    }

    *(v22 + 32) = v44;
    *(v22 + 40) = v45;
    v46 = [a1 identifier];
    v47 = sub_1C1A6F3CC();
    v49 = v48;

    *(v22 + 96) = v42;
    *(v22 + 104) = v43;
    *(v22 + 72) = v47;
    *(v22 + 80) = v49;
    sub_1C1A6F18C();
  }

  else if (((1 << v11) & 0xF7) == 0)
  {
    if (v11 == 3)
    {
      type metadata accessor for MetricsVideoView();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR___APPCMetricsVideoView_privacyMarker);
        v17 = v16;
      }

      else
      {
        v16 = 0;
      }

      swift_beginAccess();
      v26 = *(a2 + 16);
      *(a2 + 16) = v16;
    }

    else
    {
      v65 = v7;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_1C1A6FACC();
      v69 = v71;
      v70 = v72;
      MEMORY[0x1C6904F50](0x20747865746E6F43, 0xE800000000000000);
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        sub_1C1A6DD2C();

        v18 = sub_1C1A6D5EC();
        v20 = v19;
        (*(v65 + 8))(v10, v6);
      }

      else
      {
        v20 = 0;
      }

      v66 = v18;
      v67 = v20;
      v64 = sub_1C19A9E58(&qword_1EBF03758);
      v27 = sub_1C1A6F41C();
      MEMORY[0x1C6904F50](v27);

      MEMORY[0x1C6904F50](0xD000000000000029, 0x80000001C1A80080);
      [a1 adType];
      v28 = sub_1C1A6DE8C();
      MEMORY[0x1C6904F50](v28);

      MEMORY[0x1C6904F50](0xD000000000000016, 0x80000001C1A800B0);
      v29 = [a1 identifier];
      v30 = sub_1C1A6F3CC();
      v32 = v31;

      MEMORY[0x1C6904F50](v30, v32);

      v33 = sub_1C1A6F39C();

      v34 = sub_1C1A6F39C();
      CreateDiagnosticReport();

      if (qword_1EDE63990 != -1)
      {
        swift_once();
      }

      v35 = sub_1C1A6F1BC();
      sub_1C1994600(v35, qword_1EDE665F0);
      swift_unknownObjectRetain();

      v36 = sub_1C1A6F19C();
      v37 = sub_1C1A6F66C();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v36, v37))
      {
        v63 = v37;
        v38 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v68 = v62;
        *v38 = 136315650;
        swift_beginAccess();
        v39 = swift_unknownObjectWeakLoadStrong();
        if (v39)
        {
          sub_1C1A6DD2C();

          v39 = sub_1C1A6D5EC();
          v41 = v40;
          (*(v65 + 8))(v10, v6);
        }

        else
        {
          v41 = 0;
        }

        v69 = v39;
        v70 = v41;
        v50 = sub_1C1A6F41C();
        v52 = sub_1C19A1884(v50, v51, &v68);

        *(v38 + 4) = v52;
        *(v38 + 12) = 2080;
        [a1 adType];
        v53 = sub_1C1A6DE8C();
        v55 = sub_1C19A1884(v53, v54, &v68);

        *(v38 + 14) = v55;
        *(v38 + 22) = 2080;
        v56 = [a1 identifier];
        v57 = sub_1C1A6F3CC();
        v59 = v58;

        v60 = sub_1C19A1884(v57, v59, &v68);

        *(v38 + 24) = v60;
        _os_log_impl(&dword_1C198D000, v36, v63, "Context %s should not be creating views for adType %s for promoted content %s", v38, 0x20u);
        v61 = v62;
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v61, -1, -1);
        MEMORY[0x1C6906260](v38, -1, -1);
      }
    }
  }

  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = v12;
  v14 = sub_1C1A60F44(a1, v12);

  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x5B0))(v14);
}

_BYTE *sub_1C1A085CC(double a1, double a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  [v9 lock];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;

  v12 = v9;
  v13 = sub_1C1A6E97C();

  v14 = objc_allocWithZone(type metadata accessor for MetricsView());
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = v4;
  v16 = sub_1C19E2FC4(v15, v13, a4, v14, 0.0, 0.0, a1, a2);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C1A078E8(Strong, v13);

  [v12 unlock];

  swift_unknownObjectRelease();
  return v16;
}

void sub_1C1A087BC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  [a1 setVended_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    sub_1C1A08864(v8, a1, a4);
  }
}

void sub_1C1A08864(void *a1, void *a2, char *a3)
{
  v4 = v3;
  v100 = sub_1C1A6D62C();
  v8 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v88 - v16;
  if (a1)
  {
    v93 = v15;
    v94 = v14;
    v98 = a2;
    v18 = qword_1EDE63C40;
    v99 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDE66608;

    sub_1C1A6DD2C();
    v20 = sub_1C1A6D5EC();
    v97 = v4;
    v22 = v21;
    v23 = *(v8 + 8);
    v24 = v17;
    v25 = v100;
    v23(v24, v100);
    v26 = sub_1C1A40BAC(v20, v22);

    if (v26)
    {
      v95 = a1;
      v96 = v26;
      v92 = a3;
      [v26 lock];
      sub_1C1A6DD2C();
      v27 = sub_1C1A6D5EC();
      v29 = v28;
      v23(v12, v25);
      v30 = [v98 identifier];
      v31 = v25;
      v32 = sub_1C1A6F3CC();
      v34 = v33;

      v35 = sub_1C1A3F7B4(v27, v29, v32, v34);

      v36 = v23;
      v37 = &unk_1E8148000;
      if (v35)
      {
      }

      else
      {
        sub_1C1A6DD2C();
        v39 = sub_1C1A6D5EC();
        v41 = v40;
        v36(v12, v31);
        v90 = OBJC_IVAR___APPCMetricsView_promotedContent;
        v42 = [*&v99[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
        v43 = sub_1C1A6F3CC();
        v45 = v44;

        v46 = sub_1C1A3EF20(v39, v41, v43, v45);

        v47 = v31;

        v48 = v95;
        v49 = v36;
        v91 = v36;
        if (v46)
        {

          v50 = v93;
          sub_1C1A6DD2C();
          v89 = sub_1C1A6D5EC();
          v52 = v51;
          v49(v50, v47);
          v53 = [*&v99[v90] identifier];
          v93 = sub_1C1A6F3CC();
          v55 = v54;

          v56 = sub_1C1A6E94C();
          if (v56)
          {
            v57 = v56;
            v58 = sub_1C1A6E4CC();
            v60 = v59;
          }

          else
          {
            v58 = 0;
            v60 = 0;
          }

          sub_1C1A3F034(0, v89, v52, v93, v55, v58, v60);

          v47 = v100;
          v49 = v91;
          v48 = v95;
        }

        sub_1C1A6DD2C();
        v61 = sub_1C1A6D5EC();
        v63 = v62;
        v49(v12, v47);
        v64 = [v98 identifier];
        v65 = sub_1C1A6F3CC();
        v67 = v66;

        v93 = v19;
        v68 = sub_1C1A3EF20(v61, v63, v65, v67);

        if (v68)
        {
          v69 = *(v68 + 16);
        }

        else
        {
          type metadata accessor for PreloadingMetricView();
          v68 = swift_allocObject();
          v69 = 0;
          *(v68 + 16) = 0u;
          *(v68 + 32) = 0u;
        }

        v70 = v92;
        *(v68 + 16) = v48;
        v71 = v99;

        v72 = *(v68 + 16);
        v73 = v71;
        if (v72)
        {
          v101 = *(v68 + 16);
          swift_getKeyPath();
          swift_allocObject();
          swift_weakInit();
          v74 = v72;
          v75 = sub_1C1A6D3EC();

          v70 = v92;

          v73 = *(v68 + 40);
          *(v68 + 40) = v75;
        }

        v92 = v71;

        v76 = v94;
        sub_1C1A6DD2C();
        v90 = sub_1C1A6D5EC();
        v78 = v77;
        v91(v76, v100);
        v79 = [v98 identifier];
        v80 = sub_1C1A6F3CC();
        v82 = v81;

        v83 = sub_1C1A6E94C();
        if (v83)
        {
          v84 = v83;
          v85 = sub_1C1A6E4CC();
          v87 = v86;
        }

        else
        {
          v85 = 0;
          v87 = 0;
        }

        sub_1C1A3F034(v68, v90, v78, v80, v82, v85, v87);

        [v70 lock];
        sub_1C1A078E8(v95, v98);

        v37 = &unk_1E8148000;
        [v70 unlock];
      }

      v38 = v96;
      [v96 v37[185]];
    }

    else
    {
      v38 = v99;
    }
  }
}

id Context.promotedContentView(ofType:size:)(uint64_t a1)
{
  v2 = [v1 promotedContentViewOfType:a1 size:0 startsCollapsed:?];

  return v2;
}

id sub_1C1A08FB0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 promotedContentViewOfType:a3 size:0 startsCollapsed:?];

  return v3;
}

id Context.promotedContentView(ofType:size:startsCollapsed:)(uint64_t a1, char a2, double a3, double a4)
{
  v5 = [v4 promotedContentViewOfType:a1 size:a2 & 1 startsCollapsed:a3 position:{a4, 0.0, 0.0, 0.0, 0.0}];

  return v5;
}

id sub_1C1A09040(void *a1, double a2, double a3)
{
  v3 = [a1 promotedContentViewOfType:a2 size:a3 startsCollapsed:0.0 position:{0.0, 0.0, 0.0}];

  return v3;
}

char *Context.promotedContentView(ofType:size:startsCollapsed:position:)(void *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v78 = a2;
  v79 = a1;
  v16 = sub_1C1A6D62C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v75 - v21;
  sub_1C1A6F67C();
  v23 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v75[2] = " from a non-main thread.";
  v75[3] = "n>16@0:8";
  v75[4] = v23;
  v24 = sub_1C1A6F8EC();
  v75[1] = sub_1C19A9E58(&unk_1EBF03FD0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v26 = sub_1C1A6D5EC();
  v28 = v27;
  v29 = *(v17 + 8);
  v77 = v16;
  v30 = v16;
  v31 = v29;
  v29(v22, v30);
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v76 = sub_1C199E518();
  *(v25 + 64) = v76;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v32 = v79;
  sub_1C1A6F18C();

  v80 = sub_1C1A6E99C();
  if (!v80)
  {
    return sub_1C1A085CC(a3, a4, v32, v78 & 1);
  }

  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v33 = sub_1C1A6D5EC();
  v35 = v34;
  v36 = v19;
  v37 = v9;
  v38 = v77;
  v39 = v31;
  v31(v36, v77);
  v40 = sub_1C1A40BAC(v33, v35);

  if (v40)
  {
    [v40 lock];
    v41 = v40;
    v75[0] = v37;
    sub_1C1A6DD2C();
    v42 = sub_1C1A6D5EC();
    v44 = v43;
    v39(v22, v38);
    v45 = sub_1C1A6DCCC();
    v47 = sub_1C1A3F7B4(v42, v44, v45, v46);

    if (v47)
    {
      v48 = &v47[OBJC_IVAR___APPCMetricsView_slotPosition];
      *v48 = a5;
      v48[1] = a6;
      v48[2] = a7;
      v48[3] = a8;
      sub_1C1A6DD2C();
      v49 = sub_1C1A6D5EC();
      v79 = v40;
      v51 = v50;
      v39(v22, v38);
      v52 = sub_1C1A6DCCC();
      sub_1C199EEB0(v47, v49, v51, v52, v53);

      sub_1C1A6F67C();
      v54 = sub_1C1A6F8EC();
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1C1A74920;
      sub_1C1A6DD2C();
      v56 = sub_1C1A6D5EC();
      v57 = v39;
      v59 = v58;
      v57(v22, v38);
      v60 = MEMORY[0x1E69E6158];
      v61 = v76;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v61;
      *(v55 + 32) = v56;
      *(v55 + 40) = v59;
      v62 = [*&v47[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v63 = sub_1C1A6F3CC();
      v65 = v64;

      *(v55 + 96) = v60;
      *(v55 + 104) = v61;
      *(v55 + 72) = v63;
      *(v55 + 80) = v65;
      v66 = [v47 ready];
      v67 = MEMORY[0x1E69E63A8];
      *(v55 + 136) = MEMORY[0x1E69E6370];
      *(v55 + 144) = v67;
      *(v55 + 112) = v66;
      sub_1C1A6F18C();

      v68 = v79;
      [v79 unlock];
    }

    else
    {
      sub_1C1A6DCCC();
      v69 = v75[0];
      v70 = sub_1C1A6E92C();

      if (v70)
      {
        v71 = objc_allocWithZone(type metadata accessor for MetricsView());
        swift_getObjectType();
        v72 = v69;
        swift_unknownObjectRetain();
        v73 = sub_1C19E2FC4(v72, v70, v78 & 1, v71, 0.0, 0.0, a3, a4);

        v47 = v73;
        sub_1C1A078E8(v73, v70);
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = sub_1C1A085CC(a3, a4, v79, v78 & 1);
      }

      v68 = v41;
      [v41 unlock];
    }
  }

  else
  {
    v47 = sub_1C1A085CC(a3, a4, v79, v78 & 1);
  }

  return v47;
}

char *sub_1C1A09730(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, void *a9, int a10)
{
  v18 = a1;
  v19 = Context.promotedContentView(ofType:size:startsCollapsed:position:)(a9, a10, a2, a3, a4, a5, a6, a7);

  return v19;
}

_BYTE *Context.promotedContentVideo()()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v8 = sub_1C1A6D5EC();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C199E518();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C1A6F18C();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  [v12 lock];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;
  v15 = v12;

  v16 = sub_1C1A6E97C();

  v17 = objc_allocWithZone(type metadata accessor for MetricsVideoView());
  v18 = OBJC_IVAR___APPCMetricsVideoView_privacyMarker;
  v19 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
  swift_unknownObjectRetain();
  *&v17[v18] = [v19 init];
  v17[OBJC_IVAR___APPCMetricsVideoView_isFullScreen] = 0;
  *&v17[OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton] = 0;
  v20 = &v17[OBJC_IVAR___APPCMetricsVideoView_representationFetched];
  *v20 = 0;
  v20[1] = 0;
  *&v17[OBJC_IVAR___APPCMetricsVideoView_videoView] = 0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v21 = v1;
  v22 = sub_1C19E2FC4(v21, v16, 0, v17, 0.0, 0.0, 0.0, 0.0);

  v23 = v22;
  [v23 setReady_];

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C1A078E8(Strong, v16);

  [v15 unlock];

  swift_unknownObjectRelease();
  return v23;
}

id sub_1C1A09BD8(void *a1, id a2)
{
  [a2 lock];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_1C1A078E8(v6, a1);
  }

  return [a2 unlock];
}

_BYTE *sub_1C1A09C8C(void *a1)
{
  v1 = a1;
  v2 = Context.promotedContentVideo()();

  return v2;
}

_BYTE *Context.nativePromotedContentView(info:contentView:size:)(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = v4;
  v51 = a2;
  v58 = a1;
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C1A6F67C();
  v54 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v12 = sub_1C1A6F8EC();
  v53 = sub_1C19A9E58(&unk_1EBF03FD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v14 = sub_1C1A6D5EC();
  v16 = v15;
  v17 = *(v9 + 8);
  v56 = v9 + 8;
  v57 = v8;
  v55 = v17;
  v17(v11, v8);
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C199E518();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1C1A6F18C();

  v19 = sub_1C1A6DCCC();
  v20 = v5;
  v22 = sub_1C1A0A2D8(v19, v21);

  if (v22)
  {
    sub_1C1A6F65C();
    v23 = sub_1C1A6F8EC();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v25 = sub_1C1A6D5EC();
    v27 = v26;
    v55(v11, v57);
    v28 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = v18;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v29 = sub_1C1A6DCCC();
    *(v24 + 96) = v28;
    *(v24 + 104) = v18;
    *(v24 + 72) = v29;
    *(v24 + 80) = v30;
    sub_1C1A6F18C();

    type metadata accessor for MetricsView();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v31 = v20;
    v32 = sub_1C19E3598(v31, v22, 0, 0.0, 0.0, a3, a4);

    v33 = objc_opt_self();
    swift_unknownObjectRetain();
    v34 = [v33 sharedApplication];
    v35 = objc_allocWithZone(type metadata accessor for NewsAdView());
    *&v35[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] = 0;
    v35[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay] = 0;
    v36 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
    v37 = sub_1C1A6F25C();
    v38 = *(*(v37 - 8) + 56);
    v38(&v35[v36], 1, 1, v37);
    v38(&v35[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp], 1, 1, v37);
    v39 = sub_1C19F6E34(v22, 0, 0, v34, v35);
    swift_unknownObjectRelease();
    sub_1C19D3808(v51);
    (*((*MEMORY[0x1E69E7D40] & *v32) + 0x5B0))(v39);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    v40 = sub_1C1A6F8EC();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v42 = sub_1C1A6D5EC();
    v44 = v43;
    v55(v11, v57);
    v45 = MEMORY[0x1E69E6158];
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = v18;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    v46 = sub_1C1A6DCCC();
    *(v41 + 96) = v45;
    *(v41 + 104) = v18;
    *(v41 + 72) = v46;
    *(v41 + 80) = v47;
    sub_1C1A6F18C();

    sub_1C1A6EB6C();
    swift_unknownObjectRetain();
    v48 = sub_1C1A6EA3C();
    v49 = objc_allocWithZone(type metadata accessor for MetricsView());
    v39 = v20;
    v32 = sub_1C199AD38(v39, v48, 0, v49, 0.0, 0.0, a3, a4);
  }

  return v32;
}

void *sub_1C1A0A2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A0BC70();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_20:
    v6 = sub_1C1A6F9EC();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v17 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C69055B0](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            return v8;
          }
        }

        else
        {
          if (v7 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        v10 = [v8 identifier];
        v11 = sub_1C1A6F3CC();
        v13 = v12;

        if (v11 == a1 && v13 == a2)
        {
          goto LABEL_17;
        }

        v15 = sub_1C1A6FCEC();

        if (v15)
        {

          return v8;
        }

        swift_unknownObjectRelease();
        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

_BYTE *sub_1C1A0A460(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = Context.nativePromotedContentView(info:contentView:size:)(v10, v11, a2, a3);

  return v13;
}

id Context.nativePromotedContentView(info:contentView:size:position:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = [v4 nativePromotedContentViewWithInfo:a1 contentView:a2 size:a3 position:{a4, 0.0, 0.0, 0.0, 0.0}];

  return v5;
}

id sub_1C1A0A53C(void *a1, double a2, double a3)
{
  v3 = [a1 nativePromotedContentViewWithInfo:a2 contentView:a3 size:0.0 position:{0.0, 0.0, 0.0}];

  return v3;
}

char *Context.nativePromotedContentView(info:contentView:)(uint64_t a1, void *a2)
{
  v119 = a2;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F67C();
  v8 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v115 = " from a non-main thread.";
  v117 = v8;
  v9 = sub_1C1A6F8EC();
  v116 = sub_1C19A9E58(&unk_1EBF03FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1A73A30;
  v122 = v2;
  sub_1C1A6DD2C();
  v11 = sub_1C1A6D5EC();
  v13 = v12;
  v14 = *(v5 + 8);
  v118 = v7;
  v123 = v4;
  v120 = v14;
  v121 = v5 + 8;
  v14(v7, v4);
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1C199E518();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v16 = a1;
  sub_1C1A6F18C();

  v17 = sub_1C1A6DCAC();
  if (v17)
  {
    v18 = v17;
    sub_1C1A6DB3C();
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v20 = 0.0;
    v22 = 0.0;
  }

  v23 = sub_1C1A6DCCC();
  v24 = v122;
  v26 = sub_1C1A0A2D8(v23, v25);

  if (v26)
  {
    ObjectType = swift_getObjectType();
    v114 = v26;
    [objc_msgSend(v26 metricsHelper)];
    swift_unknownObjectRelease();
    v112[3] = sub_1C1A6F65C();
    v27 = sub_1C1A6F8EC();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C1A73CD0;
    v29 = v118;
    sub_1C1A6DD2C();
    v30 = sub_1C1A6D5EC();
    v32 = v31;
    v33 = v120;
    v120(v29, v123);
    v34 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v15;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v35 = sub_1C1A6DCCC();
    *(v28 + 96) = v34;
    *(v28 + 104) = v15;
    *(v28 + 72) = v35;
    *(v28 + 80) = v36;
    sub_1C1A6F18C();

    if (qword_1EDE63C40 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDE66608;
    v38 = v122;
    sub_1C1A6DD2C();
    v39 = sub_1C1A6D5EC();
    v41 = v40;
    v33(v29, v123);
    v117 = v16;
    v42 = sub_1C1A6DCCC();
    v116 = v37;
    v44 = sub_1C1A3F7B4(v39, v41, v42, v43);

    v45 = v119;
    if (v44)
    {
      v46 = v114;
      *&v44[OBJC_IVAR___APPCMetricsView_promotedContent] = v114;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v47 = v44;
      [v45 bounds];
      [v47 setBounds_];

      v48 = v47;
    }

    else
    {
      type metadata accessor for MetricsView();
      [v45 bounds];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v46 = v114;
      swift_unknownObjectRetain();
      v80 = v38;
      v81 = sub_1C19E3598(v80, v46, 0, v73, v75, v77, v79);

      v48 = v81;
      v47 = 0;
    }

    v82 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
    v83 = v47;
    v84 = [v82 init];
    v84[OBJC_IVAR___APPrivacyMarker_privacyMarkerType] = 1;
    sub_1C19970C4();
    v85 = objc_opt_self();
    swift_unknownObjectRetain();
    v86 = v84;
    v87 = [v85 sharedApplication];
    v88 = objc_allocWithZone(type metadata accessor for NewsAdView());
    *&v88[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] = 0;
    v88[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay] = 0;
    v89 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
    v90 = sub_1C1A6F25C();
    v91 = *(*(v90 - 8) + 56);
    v91(&v88[v89], 1, 1, v90);
    v91(&v88[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp], 1, 1, v90);
    v92 = sub_1C19F6E34(v46, 0, v84, v87, v88);
    swift_unknownObjectRelease();
    v115 = v86;

    v93 = v119;
    v94 = [v119 privacyMarkerPosition];
    v95 = v92 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition;
    v96 = *(v92 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8);
    *v95 = v94;
    v95[8] = 0;
    if ((v96 & 1) != 0 || (v97 = sub_1C1A6E45C(), v97 != sub_1C1A6E45C()))
    {
      sub_1C1999C50();
    }

    (*((*MEMORY[0x1E69E7D40] & *v48) + 0x5B0))(v92);

    [v46 serverUnfilledReason];
    v98 = sub_1C1A6DF6C();
    v99 = sub_1C1A6DF6C();
    v100 = v123;
    if (v98 == v99)
    {
      v124 = v93;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v101 = sub_1C1A6D3EC();

      v102 = *(v48 + OBJC_IVAR___APPCMetricsView_frameObserver);
      *(v48 + OBJC_IVAR___APPCMetricsView_frameObserver) = v101;

      [v93 frame];
    }

    else
    {
      [v93 bounds];
      Width = CGRectGetWidth(v125);
      v104 = 0.0;
    }

    [v48 setFrame_];
    v64 = v48;
    v105 = v118;
    sub_1C1A6DD2C();
    v106 = sub_1C1A6D5EC();
    v108 = v107;
    v120(v105, v100);
    v109 = sub_1C1A6DCCC();
    sub_1C199EEB0(v64, v106, v108, v109, v110);

    [v93 addSubview_];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    v49 = sub_1C1A6F8EC();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C1A73CD0;
    v51 = v118;
    sub_1C1A6DD2C();
    v52 = sub_1C1A6D5EC();
    v54 = v53;
    v120(v51, v123);
    v55 = MEMORY[0x1E69E6158];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = v15;
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v56 = sub_1C1A6DCCC();
    *(v50 + 96) = v55;
    *(v50 + 104) = v15;
    *(v50 + 72) = v56;
    *(v50 + 80) = v57;
    sub_1C1A6F18C();

    sub_1C1A6EB6C();
    swift_unknownObjectRetain();
    v58 = sub_1C1A6EA3C();
    v59 = objc_allocWithZone(type metadata accessor for MetricsView());
    v60 = v24;
    v61 = v58;
    v62 = sub_1C199AD38(v60, v61, 0, v59, 0.0, 0.0, v20, v22);

    type metadata accessor for PreloadingMetricView();
    v63 = swift_allocObject();
    v63[4] = 0;
    v63[5] = 0;
    v63[2] = v62;
    v63[3] = 0;
    v124 = v62;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v64 = v62;
    v65 = sub_1C1A6D3EC();

    v66 = v63[5];
    v63[5] = v65;

    if (qword_1EDE63C40 != -1)
    {
      swift_once();
    }

    sub_1C1A6DD2C();
    v67 = sub_1C1A6D5EC();
    v69 = v68;
    v120(v51, v123);
    v70 = sub_1C1A6DCCC();
    sub_1C199EEB0(v64, v67, v69, v70, v71);

    [v119 addSubview_];
  }

  return v64;
}

char *sub_1C1A0B114(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = Context.nativePromotedContentView(info:contentView:)(v6, v7);

  return v9;
}

char *Context.promotedContentInterstitialView(info:)(uint64_t a1)
{
  v43 = a1;
  v1 = sub_1C1A6D62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F67C();
  v5 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v40[1] = "n>16@0:8";
  v40[2] = " from a non-main thread.";
  v40[4] = v5;
  v6 = sub_1C1A6F8EC();
  v40[3] = sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73A30;
  sub_1C1A6DD2C();
  v8 = sub_1C1A6D5EC();
  v10 = v9;
  v13 = *(v2 + 8);
  v11 = v2 + 8;
  v12 = v13;
  v42 = v1;
  v13(v4, v1);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1C199E518();
  *(v7 + 64) = v41;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1C1A6F18C();

  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v14 = sub_1C1A6D5EC();
  v16 = v15;
  v12(v4, v42);
  v17 = sub_1C1A6DCCC();
  v19 = sub_1C1A3F7B4(v14, v16, v17, v18);

  if (v19)
  {
    sub_1C1A6DD2C();
    v20 = sub_1C1A6D5EC();
    v22 = v21;
    v40[0] = v11;
    v23 = v12;
    v24 = v19;
    v25 = v42;
    v23(v4, v42);
    v26 = sub_1C1A6DCCC();
    sub_1C199EEB0(v24, v20, v22, v26, v27);

    sub_1C1A6F65C();
    v28 = sub_1C1A6F8EC();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v30 = sub_1C1A6D5EC();
    v32 = v31;
    v33 = v25;
    v19 = v24;
    v23(v4, v33);
  }

  else
  {
    sub_1C1A6F66C();
    v28 = sub_1C1A6F8EC();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v30 = sub_1C1A6D5EC();
    v32 = v38;
    v12(v4, v42);
  }

  v34 = MEMORY[0x1E69E6158];
  v35 = v41;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = v35;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v36 = sub_1C1A6DCCC();
  *(v29 + 96) = v34;
  *(v29 + 104) = v35;
  *(v29 + 72) = v36;
  *(v29 + 80) = v37;
  sub_1C1A6F18C();

  return v19;
}

char *sub_1C1A0B654(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = Context.promotedContentInterstitialView(info:)(v4);

  return v6;
}

_BYTE *static Context.sponsorshipAdPreviewView(base64EncodedParameterString:)()
{
  v0 = sub_1C1A6D62C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v7 = sub_1C1A6D49C();
  if (v8 >> 60 == 15)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v9 = sub_1C1A6F1BC();
    sub_1C1994600(v9, qword_1EDE665F0);
    v10 = sub_1C1A6F19C();
    v11 = sub_1C1A6F66C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C198D000, v10, v11, "Failed to decode base64 string.", v12, 2u);
      MEMORY[0x1C6906260](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = v7;
    v14 = v8;
    sub_1C1A6D20C();
    swift_allocObject();
    sub_1C1A6D1FC();
    sub_1C1A0DC0C(&qword_1EBF047D8, type metadata accessor for SponsorshipAdPreviewConfiguration);
    sub_1C1A6D1EC();
    sub_1C1A0DB4C(v6, v3);
    v15 = objc_allocWithZone(type metadata accessor for PromotedMastheadSponsorshipAdView());
    v16 = sub_1C1A1B988(v3);
    sub_1C1A6EB6C();
    v17 = sub_1C1A6EA4C();
    sub_1C1A6D61C();
    v18 = objc_allocWithZone(sub_1C1A6E9EC());
    v19 = sub_1C1A6E98C();
    v20 = objc_allocWithZone(type metadata accessor for MetricsView());
    v21 = v17;
    v22 = sub_1C199AD38(v19, v21, 0, v20, 0.0, 0.0, 120.0, 56.0);
    (*((*MEMORY[0x1E69E7D40] & *v22) + 0x5B0))(v16);

    sub_1C1A0DB38(v13, v14);

    sub_1C1A0DBB0(v6);
  }

  return v22;
}

uint64_t static Context.start()()
{
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1C1A0BBE0()
{
  if (qword_1EDE63FF8 != -1)
  {
    return swift_once();
  }

  return result;
}

id sub_1C1A0BC10()
{
  result = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  qword_1EDE63F88 = result;
  return result;
}

void *sub_1C1A0BC48()
{
  result = sub_1C19B72C0(MEMORY[0x1E69E7CC0]);
  off_1EDE63F78 = result;
  return result;
}

uint64_t sub_1C1A0BC70()
{
  v0 = sub_1C1A6D62C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63F80 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v5 = sub_1C1A6D5EC();
  v7 = v6;
  v8 = *(v1 + 8);
  v1 += 8;
  v8(v3, v0);
  swift_beginAccess();
  v9 = off_1EDE63F78;
  if (!*(off_1EDE63F78 + 2))
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = sub_1C1991010(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_21:
    swift_endAccess();
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v0 = *(v9[7] + 8 * v10);
  swift_endAccess();
  v19 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    v3 = sub_1C1A6F9EC();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v18 = v4;
    v13 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C69055B0](v13, v0);
        v4 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_27;
        }

        v14 = *(v0 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v4 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      [v14 adType];
      v15 = sub_1C1A6DEAC();
      if (v15 == sub_1C1A6DEAC())
      {
        sub_1C1A6FB2C();
        v1 = *(v19 + 16);
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v13;
      if (v4 == v3)
      {
        v4 = v18;
        v16 = v19;
        goto LABEL_24;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_25:
  [v4 unlock];
  return v16;
}

id sub_1C1A0BF78(void *a1)
{
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C1A0E998;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1A0C260;
  aBlock[3] = &unk_1F4141708;
  v7 = _Block_copy(aBlock);

  [a1 registerPromotedContentUsedWithAction_];
  _Block_release(v7);
  v17 = sub_1C1A0BC70();
  v8 = swift_unknownObjectRetain();
  MEMORY[0x1C6904FB0](v8);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1A6F53C();
  }

  sub_1C1A6F55C();
  v9 = v17;
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v11 = sub_1C1A6D5EC();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = off_1EDE63F78;
  off_1EDE63F78 = 0x8000000000000000;
  sub_1C1A49E5C(v9, v11, v13, isUniquelyReferenced_nonNull_native);

  off_1EDE63F78 = v16;
  swift_endAccess();
  return [v10 unlock];
}

uint64_t sub_1C1A0C260(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C1A6F3CC();
  v4 = v3;

  v1(v2, v4);
}

void sub_1C1A0C2CC(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1C1A0BF78(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C1A0C334()
{
  v0 = sub_1C1A6D62C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  sub_1C1A6DD2C();
  v5 = sub_1C1A6D5EC();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  v8 = off_1EDE63F78;
  if (!*(off_1EDE63F78 + 2))
  {

    goto LABEL_9;
  }

  v9 = sub_1C1991010(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v12 = *(v8[7] + 8 * v9);
  swift_endAccess();

LABEL_10:
  [v4 unlock];
  return v12;
}

void sub_1C1A0C520(unint64_t a1)
{
  v2 = sub_1C1A6D62C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = v3;
    v12 = sub_1C1A6F9EC();
    v3 = v11;
    v5 = v12;
    v24 = v11;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v3;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v8 = MEMORY[0x1C69055B0](v6);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    ++v6;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C1A0E898;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1A0C260;
    aBlock[3] = &unk_1F4141690;
    v10 = _Block_copy(aBlock);

    [v8 registerPromotedContentUsedWithAction_];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v3 = v24;
  }

  while (v5 != v6);
LABEL_10:
  v13 = v3;

  v26 = sub_1C1A0C334();
  sub_1C1A51794(v13);
  v14 = v26;
  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  v16 = v21;
  sub_1C1A6DD2C();
  v17 = sub_1C1A6D5EC();
  v19 = v18;
  (*(v22 + 8))(v16, v23);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = off_1EDE63F78;
  off_1EDE63F78 = 0x8000000000000000;
  sub_1C1A49E5C(v14, v17, v19, isUniquelyReferenced_nonNull_native);

  off_1EDE63F78 = v25;
  swift_endAccess();
  [v15 unlock];
  sub_1C1A0C8F8(v24);
}

void sub_1C1A0C88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C1A0E230(a1, a2);
  }
}

void sub_1C1A0C8F8(unint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - v7;
  if (a1 >> 62)
  {
LABEL_35:
    v8 = sub_1C1A6F9EC();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v9 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](v9, a1, v6);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    [v11 adType];
    v13 = sub_1C1A6DEAC();
    if (v13 == sub_1C1A6DEAC())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C1A6FB2C();
      sub_1C1A6FB5C();
      v10 = v36;
      sub_1C1A6FB6C();
      sub_1C1A6FB3C();
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_14;
    }
  }

  if (v9 >= *(v10 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v11 = *(a1 + 8 * v9 + 32);
  swift_unknownObjectRetain();
  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v14 = v43;
  if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
  {
    v31 = v43;
    v15 = sub_1C1A6F9EC();
    v14 = v31;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(v43 + 16);
    if (v15)
    {
LABEL_17:
      v16 = v14;
      v36 = sub_1C1A6F58C();
      if (v15 < 1)
      {
        __break(1u);
      }

      else
      {
        v17 = 0;
        v18 = v16;
        v33 = v16 & 0xC000000000000001;
        v34 = v15;
        v35 = v16;
        do
        {
          if (v33)
          {
            v19 = MEMORY[0x1C69055B0](v17, v18);
          }

          else
          {
            v19 = *(v18 + 8 * v17 + 32);
            swift_unknownObjectRetain();
          }

          v20 = sub_1C1A6F5AC();
          v21 = *(v20 - 8);
          v22 = v38;
          (*(v21 + 56))(v38, 1, 1, v20);
          v23 = v37;
          swift_unknownObjectRetain();
          v24 = sub_1C1A6F57C();
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = MEMORY[0x1E69E85E0];
          v25[4] = v23;
          v25[5] = v19;
          sub_1C1990FA8(v22, v4, &unk_1EBF050D0);
          LODWORD(v24) = (*(v21 + 48))(v4, 1, v20);

          if (v24 == 1)
          {
            sub_1C1991140(v4, &unk_1EBF050D0);
          }

          else
          {
            sub_1C1A6F59C();
            (*(v21 + 8))(v4, v20);
          }

          v26 = v25[2];
          swift_unknownObjectRetain();

          if (v26)
          {
            swift_getObjectType();
            v27 = sub_1C1A6F56C();
            v29 = v28;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          sub_1C1991140(v38, &unk_1EBF050D0);
          v30 = swift_allocObject();
          *(v30 + 16) = &unk_1C1A76960;
          *(v30 + 24) = v25;
          if (v29 | v27)
          {
            v39 = 0;
            v40 = 0;
            v41 = v27;
            v42 = v29;
          }

          ++v17;
          swift_task_create();
          swift_unknownObjectRelease();

          v18 = v35;
        }

        while (v34 != v17);
      }

      return;
    }
  }
}

uint64_t sub_1C1A0CDE4(void *a1)
{
  sub_1C19A9E58(&qword_1EBF04478);
  v2 = sub_1C1A6F51C();
  v3 = a1;
  sub_1C1A0C520(v2);
}

uint64_t sub_1C1A0CE54()
{
  v1 = sub_1C1A6D62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE66608;
  v22[0] = v0;
  sub_1C1A6DD2C();
  v6 = sub_1C1A6D5EC();
  v8 = v7;
  v9 = *(v2 + 8);
  v9(v4, v1);
  v10 = sub_1C1A6DCCC();
  v22[1] = v5;
  v12 = sub_1C1A3EF20(v6, v8, v10, v11);

  if (!v12)
  {
    type metadata accessor for PreloadingMetricView();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
  }

  v13 = sub_1C1A6DCEC();
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;
  *(v12 + 32) = v15;
  sub_1C19A504C(v14);

  sub_1C1A6DD2C();
  v16 = sub_1C1A6D5EC();
  v18 = v17;
  v9(v4, v1);
  v19 = sub_1C1A6DCCC();
  sub_1C1A3F034(v12, v16, v18, v19, v20, 0, 0);
}

void sub_1C1A0D080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C1A0CE54();
}

uint64_t sub_1C1A0D0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1A6F58C();
  v5[4] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();

  return MEMORY[0x1EEE6DFA0](sub_1C1A0D180, v7, v6);
}

uint64_t sub_1C1A0D180()
{
  v1 = *(v0 + 24);

  sub_1C1A0D1EC(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1C1A0D1EC(void *a1)
{
  v2 = v1;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  ObjectType = swift_getObjectType();
  v85 = a1;
  v14 = [a1 bestRepresentation];
  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [v85 representations];
  sub_1C19A9E58(&unk_1EBF04670);
  v16 = sub_1C1A6F51C();

  if (v16 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_4;
    }

LABEL_24:

    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v63 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v64 = v10;
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1C1A73CD0;
    sub_1C1A6DD2C();
    v66 = sub_1C1A6D5EC();
    v68 = v67;
    (*(v5 + 8))(v64, v4);
    v69 = MEMORY[0x1E69E6158];
    *(v65 + 56) = MEMORY[0x1E69E6158];
    v70 = sub_1C199E518();
    *(v65 + 64) = v70;
    *(v65 + 32) = v66;
    *(v65 + 40) = v68;
    v71 = [v85 identifier];
    v72 = sub_1C1A6F3CC();
    v74 = v73;

    *(v65 + 96) = v69;
    *(v65 + 104) = v70;
    *(v65 + 72) = v72;
    *(v65 + 80) = v74;
    sub_1C1A6F18C();

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C69055B0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v16 + 32);
    swift_unknownObjectRetain();
  }

LABEL_8:
  v83 = v10;
  v17 = v4;
  v81 = v7;
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE66608;

  sub_1C1A6DD2C();
  v19 = sub_1C1A6D5EC();
  v21 = v20;
  v22 = *(v5 + 8);
  v22(v13, v17);
  v23 = sub_1C1A40BAC(v19, v21);

  if (v23)
  {
    v84 = v14;
    v80 = v23;
    [v23 lock];
    v24 = v83;
    v79 = v2;
    sub_1C1A6DD2C();
    v25 = sub_1C1A6D5EC();
    v27 = v26;
    v83 = v17;
    v78 = v22;
    v22(v24, v17);
    v28 = v85;
    v29 = [v85 identifier];
    v30 = sub_1C1A6F3CC();
    v32 = v31;

    v33 = sub_1C1A3EF20(v25, v27, v30, v32);

    if (v33)
    {
      v34 = v84;
      if (*(v33 + 16))
      {
        v35 = v80;
        [v80 unlock];

        swift_unknownObjectRelease();

        return;
      }

      v77 = v18;
    }

    else
    {
      v77 = v18;
      type metadata accessor for PreloadingMetricView();
      v33 = swift_allocObject();
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      v34 = v84;
    }

    [v34 adSize];
    v37 = v36;
    v39 = v38;
    type metadata accessor for MetricsView();
    v40 = v79;
    swift_unknownObjectRetain();
    v41 = sub_1C19E3598(v40, v28, 0, 0.0, 0.0, v37, v39);

    v42 = *(v33 + 16);
    *(v33 + 16) = v41;
    v79 = v41;
    v43 = v41;

    v44 = *(v33 + 16);
    v45 = v43;
    v46 = v78;
    if (v44)
    {
      v86 = *(v33 + 16);
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v47 = v44;
      v48 = sub_1C1A6D3EC();

      v45 = *(v33 + 40);
      *(v33 + 40) = v48;
    }

    ObjectType = v43;

    v49 = v81;
    sub_1C1A6DD2C();
    v76 = sub_1C1A6D5EC();
    v51 = v50;
    v46(v49, v83);
    v52 = [v28 identifier];
    v53 = sub_1C1A6F3CC();
    v55 = v54;

    v56 = sub_1C1A6E94C();
    if (v56)
    {
      v57 = v56;
      v58 = sub_1C1A6E4CC();
      v60 = v59;
    }

    else
    {
      v58 = 0;
      v60 = 0;
    }

    sub_1C1A3F034(v33, v76, v51, v53, v55, v58, v60);

    v61 = v80;
    [v80 unlock];
    sub_1C1A078E8(v79, v28);

    swift_unknownObjectRelease();

    v62 = ObjectType;
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C1A0D954()
{
  v0 = sub_1C1A6F3CC();
  sub_1C1A0E6DC(v0, v1);
}

uint64_t sub_1C1A0D994(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1A0DA3C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1C1A0DA3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1A6F9EC();
  }

  return sub_1C1A6FB0C();
}

void sub_1C1A0DAA0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 frame];
    [v3 setFrame_];
  }
}

uint64_t sub_1C1A0DB38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C19CFDE0(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1A0DB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A0DBB0(uint64_t a1)
{
  v2 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1A0DC0C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C1A0DC54(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v30[3] = sub_1C198FB8C(0, &qword_1EDE62708);
  v30[4] = &off_1F4141E80;
  v30[0] = a4;
  v10 = OBJC_IVAR___APPCPromotedContentView_dimmerView;
  type metadata accessor for DimmerView();
  *&a5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer] = 0;
  v11 = &a5[OBJC_IVAR___APPCPromotedContentView_expandedAdFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_visiblePercentage] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_lastPerformedAction] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldBlockNavigation] = 0;
  a5[OBJC_IVAR___APPCPromotedContentView_tapWasRecognized] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_storeProductRequester] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView_interactionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR___APPCPromotedContentView_readiness] = 300;
  *&a5[OBJC_IVAR___APPCPromotedContentView_videoTapAction] = 0;
  v12 = OBJC_IVAR___APPCPromotedContentView_videoActionTimestamp;
  v13 = sub_1C1A6F25C();
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = &a5[OBJC_IVAR___APPCPromotedContentView_videoMoreLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  a5[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation] = 0;
  *&a5[OBJC_IVAR___APPCPromotedContentView____lazy_storage___attributionView] = 0;
  v15 = &a5[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  *v15 = 0;
  v15[8] = 1;
  *&a5[OBJC_IVAR___APPCPromotedContentView_promotedContent] = a1;
  if (a3)
  {
    swift_unknownObjectRetain();
    v16 = a3;
  }

  else
  {
    v17 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
    swift_unknownObjectRetain();
    v16 = [v17 init];
  }

  *&a5[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] = v16;
  a5[OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling] = a3 != 0;
  v18 = objc_allocWithZone(type metadata accessor for TapGestureRecognizer());
  v19 = a3;
  v20 = [v18 init];
  *&a5[OBJC_IVAR___APPCPromotedContentView_tapGestureRecognizer] = v20;
  swift_unknownObjectRetain();
  v21 = sub_1C1A6EB5C();

  *&a5[OBJC_IVAR___APPCPromotedContentView_placement] = v21;
  sub_1C19992F8(v30, &a5[OBJC_IVAR___APPCPromotedContentView_urlOpener]);
  v29.receiver = a5;
  v29.super_class = type metadata accessor for PromotedContentView();
  v22 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 clearColor];
  [v24 setBackgroundColor_];

  v26 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x310))();
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v24 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  (*((*v26 & *v24) + 0x320))();
  sub_1C199935C(v30);
  return v24;
}

void *sub_1C1A0E0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = objc_allocWithZone(type metadata accessor for SponsorshipAdView());
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_adHeight] = 0x4049000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_headlineTrailingMargin] = 0x4028000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_minLogoHeight] = 0x4022000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_maxLogoHeight] = 0x403E000000000000;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_maxLogoWidth] = 0x4056800000000000;
  v11 = OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_textLabel;
  *&v10[v11] = sub_1C19F8F28();
  v12 = OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_imageView;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v13 setContentMode_];
  [v13 setOpaque_];
  [v13 setAccessibilityIgnoresInvertColors_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v10[v12] = v13;
  v14 = &v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_text];
  *v14 = a1;
  v14[1] = a2;
  *&v10[OBJC_IVAR____TtC17PromotedContentUI17SponsorshipAdView_image] = a3;

  return sub_1C1A0DC54(a4, 0, 0, a5, v10);
}

id sub_1C1A0E230(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63F80 != -1)
  {
LABEL_45:
    swift_once();
  }

  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1EDE63F78 + 64;
  v32 = 1;
  v3 = 1 << *(off_1EDE63F78 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_1EDE63F78 + 8);
  v6 = (v3 + 63) >> 6;
  v35 = off_1EDE63F78;

  v30 = 0;
  v31 = 0;
  v37 = 0;
  v7 = 0;
  v33 = v6;
  v34 = v2;
LABEL_9:
  v8 = v7;
  if (!v5)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v8;
LABEL_14:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (v35[6] + 16 * v9);
    v11 = v10[1];
    v36 = *v10;
    v12 = *(v35[7] + 8 * v9);
    if (v12 >> 62)
    {
      v23 = v10[1];
      v41 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = sub_1C1A6F9EC();
      v11 = v23;
    }

    else
    {
      v41 = v12 & 0xFFFFFFFFFFFFFF8;
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    v38 = v11;

    v14 = 0;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C69055B0](v14, v12);
      }

      else
      {
        if (v14 >= *(v41 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v15 = *(v12 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      v17 = sub_1C1A6F3CC();
      v19 = v18;

      if (v17 == a1 && v19 == a2)
      {

        swift_unknownObjectRelease();
LABEL_8:

        v30 = v14;
        v31 = v36;
        v32 = 0;
        v37 = v38;
        v6 = v33;
        v2 = v34;
        goto LABEL_9;
      }

      v21 = sub_1C1A6FCEC();
      swift_unknownObjectRelease();

      if (v21)
      {
        goto LABEL_8;
      }

      if (__OFADD__(v14++, 1))
      {
        goto LABEL_43;
      }
    }

    v8 = v7;
    v6 = v33;
    v2 = v34;
  }

  while (v5);
  while (1)
  {
LABEL_11:
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_44;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v7];
    ++v8;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  if (v32)
  {

LABEL_39:
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v26 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C1A73A30;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1C199E518();
    *(v27 + 32) = a1;
    *(v27 + 40) = a2;

    sub_1C1A6F18C();

    goto LABEL_41;
  }

  if (!v37)
  {
    goto LABEL_39;
  }

  swift_beginAccess();
  v24 = sub_1C1A3ED48(v42, v31, v37);
  if (*v25)
  {
    sub_1C1A0D994(v30);
    (v24)(v42, 0);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    (v24)(v42, 0);
    swift_endAccess();
  }

LABEL_41:

  return [v29 unlock];
}

id sub_1C1A0E6DC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63C40 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1EDE66608 + 24);
  v5 = *(v4 + 16);

  [v5 lock];
  swift_beginAccess();

  sub_1C19B57AC(0, a1, a2);
  swift_endAccess();
  [*(v4 + 16) unlock];

  if (qword_1EDE63F80 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE63F88;
  [qword_1EDE63F88 lock];
  if (qword_1EDE63F70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1EDE63F78;

  sub_1C19B5D38(0, a1, a2);
  off_1EDE63F78 = v8;

  return [v6 unlock];
}

uint64_t sub_1C1A0E8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C1A0D0E8(a1, v4, v5, v7, v6);
}

void sub_1C1A0E99C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  qword_1EBF07670 = CGRectGetHeight(v9);
}

void sub_1C1A0EA28()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  Width = CGRectGetWidth(v15);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = 680.0;
  if (Width / v13 > 815.0)
  {
    v14 = 754.0;
  }

  qword_1EBF07678 = *&v14;
}

void sub_1C1A0EB20(void *a1)
{
  v1 = qword_1EDE63E78;
  v7 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1A6E13C();
  v4 = v3;
  v5 = sub_1C1A6E14C();
  sub_1C1A158BC(v2, v4, v5, v6 & 1);
}

uint64_t sub_1C1A0EBDC()
{
  v1 = v0;
  v2 = [v0 sourceAppAdamId];
  if (!v2)
  {
    sub_1C198FB8C(0, &qword_1EBF04870);
    v2 = sub_1C1A6F79C();
  }

  v3 = [v0 version];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C1A6F3CC();
    v7 = v6;
  }

  else
  {
    v7 = 0xEF6E776F6E6B6E75;
    v5 = 0x206E6F6973726576;
  }

  sub_1C1A6FACC();
  MEMORY[0x1C6904F50](0xD000000000000010, 0x80000001C1A80210);
  v8 = [v1 appAdamId];
  v9 = [v8 description];
  v10 = sub_1C1A6F3CC();
  v12 = v11;

  MEMORY[0x1C6904F50](v10, v12);

  MEMORY[0x1C6904F50](0xD000000000000014, 0x80000001C1A80230);
  v13 = [v1 impressionId];
  v14 = sub_1C1A6F3CC();
  v16 = v15;

  MEMORY[0x1C6904F50](v14, v16);

  MEMORY[0x1C6904F50](0xD000000000000011, 0x80000001C1A80250);
  v17 = [v1 timestamp];
  v18 = [v17 description];
  v19 = sub_1C1A6F3CC();
  v21 = v20;

  MEMORY[0x1C6904F50](v19, v21);

  MEMORY[0x1C6904F50](0xD000000000000013, 0x80000001C1A80270);
  v22 = [v1 adNetworkId];
  v23 = sub_1C1A6F3CC();
  v25 = v24;

  MEMORY[0x1C6904F50](v23, v25);

  MEMORY[0x1C6904F50](0xD000000000000012, 0x80000001C1A80290);
  v26 = [v1 campaignId];
  v27 = [v26 description];
  v28 = sub_1C1A6F3CC();
  v30 = v29;

  MEMORY[0x1C6904F50](v28, v30);

  MEMORY[0x1C6904F50](0xD00000000000001CLL, 0x80000001C1A802B0);
  v31 = [v1 attributionSignature];
  v32 = sub_1C1A6F3CC();
  v34 = v33;

  MEMORY[0x1C6904F50](v32, v34);

  MEMORY[0x1C6904F50](0xD000000000000017, 0x80000001C1A802D0);
  v35 = [v2 description];
  v36 = sub_1C1A6F3CC();
  v38 = v37;

  MEMORY[0x1C6904F50](v36, v38);

  MEMORY[0x1C6904F50](0x726576202020200ALL, 0xEF203D206E6F6973);
  MEMORY[0x1C6904F50](v5, v7);

  return 0;
}

id sub_1C1A0F018(void *a1, void *a2)
{
  result = [a1 isValid];
  if (result)
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v4 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1A73A30;
    v6 = [a2 appAdamId];
    *(v5 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v5 + 64) = sub_1C1A0F564();
    *(v5 + 32) = v6;
    sub_1C1A6F18C();

    sub_1C1A6ECCC();

    v8 = MEMORY[0x1C6903230](v7);

    if (v8)
    {
      v8(result);

      return sub_1C19A504C(v8);
    }
  }

  return result;
}

uint64_t sub_1C1A0F1E0(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v7 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1A73CD0;
    v9 = [a2 appAdamId];
    *(v8 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v8 + 64) = sub_1C1A0F564();
    *(v8 + 32) = v9;
    swift_getErrorValue();
    v10 = sub_1C1A6FD4C();
    v12 = v11;
    *(v8 + 96) = MEMORY[0x1E69E6158];
    *(v8 + 104) = sub_1C199E518();
    *(v8 + 72) = v10;
    *(v8 + 80) = v12;
    sub_1C1A6F18C();

    v13 = sub_1C1A6F39C();
    v14 = sub_1C1A6F39C();
    CreateDiagnosticReport();
  }

  else
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v15 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1A73A30;
    v17 = [a2 appAdamId];
    *(v16 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v16 + 64) = sub_1C1A0F564();
    *(v16 + 32) = v17;
    sub_1C1A6F18C();
  }

  [a3 invalidate];
  sub_1C1A6ECCC();
  sub_1C198FB8C(0, &qword_1EDE63970);
  result = sub_1C19CFE34();
  if ((result & 1) == 0)
  {

    v20 = MEMORY[0x1C6903230](v19);

    if (v20)
    {
      v20(result);
      return sub_1C19A504C(v20);
    }
  }

  return result;
}

unint64_t sub_1C1A0F564()
{
  result = qword_1EBF04B20;
  if (!qword_1EBF04B20)
  {
    sub_1C198FB8C(255, &qword_1EBF04870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04B20);
  }

  return result;
}

uint64_t sub_1C1A0F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a3;
  v64 = a2;
  v62 = a1;
  v9 = sub_1C1A6D62C();
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6D5DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v61 = a4;
  if (!a4 || !a6 || (v19 = sub_1C19E93F8()) == 0)
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v31 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 4;
  }

  v57 = a6;
  v58 = v19;
  v20 = [v6 expirationDate];
  sub_1C1A6D59C();

  sub_1C1A6D5CC();
  v21 = sub_1C1A6D53C();
  v22 = v6;
  v23 = *(v13 + 8);
  v23(v15, v12);
  v23(v18, v12);
  if ((v21 & 1) == 0)
  {
    sub_1C1A6F64C();
    sub_1C199E4CC();
    v33 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C1A73A30;
    v35 = [v22 identifier];
    v36 = sub_1C1A6F3CC();
    v38 = v37;

    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1C199E518();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    sub_1C1A6F18C();

    return 1;
  }

  v24 = v58;
  sub_1C1A6E7DC();
  v25 = sub_1C1A6D5EC();
  v27 = v26;
  (*(v63 + 8))(v11, v9);
  if (!v64)
  {

    goto LABEL_15;
  }

  if (v25 == v62 && v27 == v64)
  {

    v30 = v57;
    goto LABEL_17;
  }

  v29 = sub_1C1A6FCEC();

  v30 = v57;
  if ((v29 & 1) == 0)
  {
LABEL_15:
    sub_1C1A6F64C();
    sub_1C199E4CC();
    v39 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1C1A73A30;
    v41 = [v22 identifier];
    v42 = sub_1C1A6F3CC();
    v44 = v43;

    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1C199E518();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    sub_1C1A6F18C();

    return 2;
  }

LABEL_17:
  v45 = sub_1C1A6E75C();
  if (v46)
  {
    if (v45 == v60 && v46 == v61)
    {
    }

    else
    {
      v47 = sub_1C1A6FCEC();

      if ((v47 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v48 = sub_1C1A6E7AC();
    if (v49)
    {
      if (v48 == v59 && v49 == v30)
      {

        return 0;
      }

      v50 = sub_1C1A6FCEC();

      if (v50)
      {

        return 0;
      }
    }
  }

LABEL_28:
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v51 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C1A73A30;
  v53 = [v22 identifier];
  v54 = sub_1C1A6F3CC();
  v56 = v55;

  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1C199E518();
  *(v52 + 32) = v54;
  *(v52 + 40) = v56;
  sub_1C1A6F18C();

  return 3;
}

uint64_t sub_1C1A0FD20(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *&a1 * 100.0;
    if (a2)
    {
      v8 = 0.0;
    }

    v9 = ceil(v8);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        v10 = result;
        result = a4(v9);
        v11 = *(v10 + 32);
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (!v12)
        {
          *(v10 + 32) = v13;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C1A0FE18()
{

  return swift_deallocClassInstance();
}

void sub_1C1A0FE50(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v55.size.height = a4;
  v55.origin.y = a2;
  v55.origin.x = a1;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v32 = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  v55.size.width = a3;
  v38 = a3;
  v41 = CGRectUnion(v40, v55);
  x = v41.origin.x;
  y = v41.origin.y;
  rect_16 = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v41.origin.x = a5;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v17 = MaxY - CGRectGetMaxY(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v18 = CGRectGetHeight(v43);
  if (v17 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + v17;
  }

  v44.origin.x = x;
  v44.origin.y = rect_16;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = a5;
  v45.origin.y = v32;
  v45.size.width = a7;
  v45.size.height = a8;
  v21 = MinY - CGRectGetMinY(v45);
  if (v21 >= 0.0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + v21;
  }

  v30 = v22;
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = v38;
  v46.size.height = a4;
  v23 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.size.height = height;
  v47.origin.y = rect_16;
  v47.size.width = width;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = a5;
  v48.origin.y = v32;
  v48.size.width = a7;
  v48.size.height = a8;
  v25 = MinX - CGRectGetMinX(v48);
  if (v25 >= 0.0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v23 + v25;
  }

  v49.origin.x = a5;
  v49.origin.y = v32;
  v49.size.width = a7;
  v49.size.height = a8;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = x;
  v50.origin.y = rect_16;
  v50.size.width = width;
  v50.size.height = height;
  v28 = MaxX - CGRectGetMaxX(v50);
  if (v28 < 0.0)
  {
    v26 = v26 + v28;
  }

  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = v38;
  v51.size.height = a4;
  v29 = CGRectGetWidth(v51);
  v52.origin.x = a1;
  v52.origin.y = a2;
  v52.size.width = v38;
  v52.size.height = a4;
  if (v29 * CGRectGetHeight(v52) != 0.0 && v30 >= 0.0 && v26 >= 0.0)
  {
    v53.origin.x = a1;
    v53.origin.y = a2;
    v53.size.width = v38;
    v53.size.height = a4;
    CGRectGetWidth(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = v38;
    v54.size.height = a4;
    CGRectGetHeight(v54);
  }
}

void sub_1C1A100D0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent;
  if ((*(v0 + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) & 1) == 0)
  {
    v2 = [v0 superview];
    if (v2)
    {
      v3 = v2;
      *(v0 + v1) = 1;
      [v0 setTranslatesAutoresizingMaskIntoConstraints_];
      v4 = objc_opt_self();
      sub_1C19A9E58(&qword_1EBF03E88);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1C1A74A20;
      v6 = [v0 heightAnchor];
      v7 = [v6 constraintEqualToConstant_];

      *(v5 + 32) = v7;
      v8 = [v0 widthAnchor];
      v9 = [v8 constraintEqualToConstant_];

      *(v5 + 40) = v9;
      v10 = [v0 trailingAnchor];
      v11 = [v3 trailingAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v5 + 48) = v12;
      v13 = [v0 bottomAnchor];
      v14 = [v3 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v5 + 56) = v15;
      sub_1C19C2864();
      v16 = sub_1C1A6F50C();

      [v4 activateConstraints_];

      v17 = [v0 layer];
      [v17 setCornerRadius_];

      v18 = [objc_opt_self() redColor];
      [v0 setBackgroundColor_];
    }
  }
}

id sub_1C1A10434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImpressionSent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1A10468(uint64_t a1)
{
  v32 = sub_1C1A6D27C();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1C19AA328(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_1C1A6F95C();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_1C1A6D26C();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1C19AA328(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1C19B07E4(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1C19B07E4(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1C1A10A30()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  type metadata accessor for MetricsView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  if ([v4 ready])
  {
    goto LABEL_12;
  }

  v6 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if (![*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    goto LABEL_12;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v7 = sub_1C1A6E2EC();
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_12:

LABEL_13:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A73A30;
    v22 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v23 = sub_1C1A6F3CC();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C199E518();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    sub_1C1A6F18C();

    goto LABEL_14;
  }

  v8 = sub_1C1A3A138();
  [v8 intrinsicContentSize];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = [*&v1[v6] bestRepresentation];
    if (v11 && ([v11 adSize], v13 = v12, swift_unknownObjectRelease(), v10 <= v13))
    {
      [*&v1[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] layoutIfNeeded];
      [v1 layoutIfNeeded];
      v73 = v5;
      [v5 layoutIfNeeded];
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v72 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1C1A74920;
      v43 = sub_1C1A6F77C();
      v45 = v44;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v46 = sub_1C199E518();
      *(v42 + 64) = v46;
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      v71 = sub_1C198FB8C(0, &qword_1EBF04870);
      *(v42 + 96) = v71;
      v47 = sub_1C1A0F564();
      *(v42 + 104) = v47;
      *(v42 + 72) = v7;
      v48 = *&v1[v6];
      v70 = v7;
      v49 = [v48 identifier];
      v50 = sub_1C1A6F3CC();
      v52 = v51;

      *(v42 + 136) = MEMORY[0x1E69E6158];
      *(v42 + 144) = v46;
      *(v42 + 112) = v50;
      *(v42 + 120) = v52;
      sub_1C1A6F18C();

      sub_1C1A6F64C();
      v53 = sub_1C1A6F8EC();
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1C1A73CD0;
      *(v54 + 56) = v71;
      *(v54 + 64) = v47;
      *(v54 + 32) = v70;
      v55 = *&v1[v6];
      v76 = v70;
      v56 = [v55 identifier];
      v57 = sub_1C1A6F3CC();
      v59 = v58;

      *(v54 + 96) = MEMORY[0x1E69E6158];
      *(v54 + 104) = v46;
      *(v54 + 72) = v57;
      *(v54 + 80) = v59;
      sub_1C1A6F18C();

      [v1 setReadiness_];
      [v73 setReady_];
    }

    else
    {
      v75 = v7;
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v74 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C1A74AF0;
      v15 = sub_1C1A6F77C();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1C199E518();
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v19 = [*&v1[v6] bestRepresentation];
      if (v19)
      {
        [v19 adSize];
        swift_unknownObjectRelease();
      }

      v60 = sub_1C1A6F77C();
      v61 = MEMORY[0x1E69E6158];
      *(v14 + 96) = MEMORY[0x1E69E6158];
      *(v14 + 104) = v18;
      *(v14 + 72) = v60;
      *(v14 + 80) = v62;
      *(v14 + 136) = sub_1C198FB8C(0, &qword_1EBF04870);
      *(v14 + 144) = sub_1C1A0F564();
      *(v14 + 112) = v75;
      v63 = *&v1[v6];
      v77 = v75;
      v64 = [v63 identifier];
      v65 = sub_1C1A6F3CC();
      v67 = v66;

      *(v14 + 176) = v61;
      *(v14 + 184) = v18;
      *(v14 + 152) = v65;
      *(v14 + 160) = v67;
      sub_1C1A6F18C();

      [objc_msgSend(*&v1[v6] metricsHelper)];
      swift_unknownObjectRelease();
      [v5 setReady_];
      v68 = [v5 promotedContentInfo];
      if (v68)
      {
        v69 = v68;
        [v68 setUnfilledReason_];
      }

      [objc_msgSend(*&v1[v6] metricsHelper)];

      swift_unknownObjectRelease();
    }

    return;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v26 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C1A74AF0;
  v28 = sub_1C1A6F77C();
  v29 = v7;
  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v33 = sub_1C199E518();
  *(v27 + 64) = v33;
  *(v27 + 32) = v28;
  *(v27 + 40) = v31;
  [v1 frame];
  v34 = sub_1C1A6F77C();
  *(v27 + 96) = v32;
  *(v27 + 104) = v33;
  *(v27 + 72) = v34;
  *(v27 + 80) = v35;
  *(v27 + 136) = sub_1C198FB8C(0, &qword_1EBF04870);
  *(v27 + 144) = sub_1C1A0F564();
  *(v27 + 112) = v29;
  v36 = *&v1[v6];
  v37 = v29;
  v38 = [v36 identifier];
  v39 = sub_1C1A6F3CC();
  v41 = v40;

  *(v27 + 176) = v32;
  *(v27 + 184) = v33;
  *(v27 + 152) = v39;
  *(v27 + 160) = v41;
  sub_1C1A6F18C();

LABEL_14:
}

uint64_t sub_1C1A114B8()
{
  v1 = sub_1C1A3A138();
  v2 = [v1 lockup];

  if (v2 && (v3 = [v2 offer], v2, v3))
  {
    v4 = [v3 flags];
    swift_unknownObjectRelease();
    v5 = (v4 >> 2) & 1;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView;
  v7 = [*(v0 + OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView) lockup];
  if (v7 && (v8 = v7, v9 = [v7 offer], v8, v9))
  {
    v10 = [v9 flags];
    swift_unknownObjectRelease();
    v11 = (v10 >> 8) & 1;
  }

  else
  {
    LODWORD(v11) = 1;
  }

  v12 = [*(v0 + v6) lockup];
  if (!v12 || (v13 = v12, v14 = [v12 offer], v13, !v14))
  {
    if (!v5)
    {
LABEL_19:
      if (v11)
      {
        return 10;
      }

      return 11;
    }

    if ((v11 & 1) == 0)
    {
      return 11;
    }

    return 12;
  }

  v15 = [v14 flags];
  swift_unknownObjectRelease();
  if (v5 & v11)
  {
    return 12;
  }

  if ((v15 & 8) == 0)
  {
    goto LABEL_19;
  }

  if (v11)
  {
    return 13;
  }

  else
  {
    return 14;
  }
}

uint64_t AppAdView.adLockupView(_:preprocessOffer:inState:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_1C1A6F3CC();
  v9 = v8;
  if (v7 == sub_1C1A6F3CC() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1C1A6FCEC();

    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E69E6158];
      goto LABEL_9;
    }
  }

  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v14 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1A73A30;
  v16 = [*&v30[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v17 = sub_1C1A6F3CC();
  v19 = v18;

  v13 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1C199E518();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  sub_1C1A6F18C();

  a4(v20);
LABEL_9:
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v21 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C1A73A30;
  v23 = [*&v30[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v24 = sub_1C1A6F3CC();
  v26 = v25;

  *(v22 + 56) = v13;
  *(v22 + 64) = sub_1C199E518();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  sub_1C1A6F18C();

  v27 = a3;

  sub_1C1A13854(v30, v27, a4, a5);
}

id sub_1C1A11B8C()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  v34 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v4 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v5 = sub_1C1A6F3CC();
  v7 = v6;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C199E518();
  *(v3 + 64) = v8;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1C1A6F18C();

  v9 = sub_1C1A120FC();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    sub_1C1A6F64C();
    v13 = sub_1C1A6F8EC();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1A73CD0;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = v8;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    v16 = *(v1 + v34);

    v17 = [v16 identifier];
    v18 = sub_1C1A6F3CC();
    v20 = v19;

    *(v14 + 96) = v15;
    *(v14 + 104) = v8;
    *(v14 + 72) = v18;
    *(v14 + 80) = v20;
    sub_1C1A6F18C();

    sub_1C19A9E58(&qword_1EBF04858);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A73A30;
    *(inited + 32) = sub_1C1A6F3CC();
    *(inited + 40) = v22;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    sub_1C19B7074(inited);
    swift_setDeallocating();
    sub_1C1A153F4(inited + 32);
    v23 = objc_allocWithZone(MEMORY[0x1E698B3D8]);
    v24 = sub_1C1A6F2FC();

    v25 = [v23 initWithFields_];

    return v25;
  }

  else
  {
    sub_1C1A6F66C();
    v27 = sub_1C1A6F8EC();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C1A73A30;
    v29 = [*(v1 + v34) identifier];
    v30 = sub_1C1A6F3CC();
    v32 = v31;

    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v8;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    sub_1C1A6F18C();

    v33 = objc_allocWithZone(MEMORY[0x1E698B3D8]);

    return [v33 init];
  }
}

id AppAdView.metricsActivity(for:toPerformActionOf:inState:)()
{
  [objc_msgSend(*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper)];
  swift_unknownObjectRelease();

  return sub_1C1A11B8C();
}

id sub_1C1A120FC()
{
  v1 = sub_1C1A6D2BC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (result)
  {
    v7 = [result tapAction];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_1C1A6DF1C();
      if (swift_dynamicCastClass())
      {
        sub_1C1A6D2AC();
        v8 = sub_1C1A6DF0C();
        sub_1C1A10468(v8);

        sub_1C1A6D28C();
        v9 = sub_1C1A6D29C();

        (*(v2 + 8))(v5, v1);
        return v9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1A12284(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v7 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1A74920;
    v9 = [a2 adamId];
    v10 = MEMORY[0x1E69E7738];
    *(v8 + 56) = MEMORY[0x1E69E76D8];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v11 = [*(a3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v12 = sub_1C1A6F3CC();
    v14 = v13;

    v15 = a4;
    v16 = MEMORY[0x1E69E6158];
    *(v8 + 96) = MEMORY[0x1E69E6158];
    v17 = sub_1C199E518();
    *(v8 + 104) = v17;
    *(v8 + 72) = v12;
    *(v8 + 80) = v14;
    swift_getErrorValue();
    v18 = sub_1C1A6FD4C();
    *(v8 + 136) = v16;
    *(v8 + 144) = v17;
    *(v8 + 112) = v18;
    *(v8 + 120) = v19;
    sub_1C1A6F18C();

    return v15(0);
  }

  else
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v21 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C1A73CD0;
    v23 = [a2 adamId];
    v24 = MEMORY[0x1E69E7738];
    *(v22 + 56) = MEMORY[0x1E69E76D8];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    v25 = [*(a3 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v26 = sub_1C1A6F3CC();
    v28 = v27;

    *(v22 + 96) = MEMORY[0x1E69E6158];
    *(v22 + 104) = sub_1C199E518();
    *(v22 + 72) = v26;
    *(v22 + 80) = v28;
    sub_1C1A6F18C();

    return a4(1);
  }
}

id sub_1C1A12588(void (*a1)(id))
{
  v3 = v1;
  v4 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  result = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
  if (result)
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      v6 = sub_1C1A6E2EC();
      result = swift_unknownObjectRelease();
      if (v6)
      {
        a1(result);
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v7 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1C1A73CD0;
        *(v8 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
        *(v8 + 64) = sub_1C1A0F564();
        *(v8 + 32) = v6;
        v9 = *(v3 + v4);
        v10 = v6;
        v11 = [v9 identifier];
        v12 = sub_1C1A6F3CC();
        v14 = v13;

        *(v8 + 96) = MEMORY[0x1E69E6158];
        *(v8 + 104) = sub_1C199E518();
        *(v8 + 72) = v12;
        *(v8 + 80) = v14;
        sub_1C1A6F18C();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void _s17PromotedContentUI9AppAdViewC08adLockupF16DidFinishRequestyySo05ASCAdhF0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if ([*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1C1A6E2EC();
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v4 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1C1A73CD0;
        *(v5 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
        *(v5 + 64) = sub_1C1A0F564();
        *(v5 + 32) = v3;
        v6 = *(v1 + v2);
        v11 = v3;
        v7 = [v6 identifier];
        v8 = sub_1C1A6F3CC();
        v10 = v9;

        *(v5 + 96) = MEMORY[0x1E69E6158];
        *(v5 + 104) = sub_1C199E518();
        *(v5 + 72) = v8;
        *(v5 + 80) = v10;
        sub_1C1A6F18C();

        sub_1C1A10A30();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C1A12A08()
{
  v1 = v0;
  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v2 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C1A6F66C();
  v3 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A73CD0;
  swift_getErrorValue();
  v5 = sub_1C1A6FD4C();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C199E518();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v11 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v12;
  *(v4 + 80) = v14;
  sub_1C1A6F18C();

  v15 = [v1 superview];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for MetricsView();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      [objc_msgSend(*(v17 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper)];

      return swift_unknownObjectRelease();
    }
  }

  sub_1C1A6F66C();
  v19 = sub_1C1A6F8EC();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C1A73A30;
  v21 = [*&v1[v10] identifier];
  v22 = sub_1C1A6F3CC();
  v24 = v23;

  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = v9;
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_1C1A6F18C();
}

uint64_t sub_1C1A12D40()
{
  v1 = v0;
  v2 = sub_1C1A6F3CC();
  v4 = v3;
  if (v2 == sub_1C1A6F3CC() && v4 == v5)
  {

    v8 = 40;
    goto LABEL_20;
  }

  v7 = sub_1C1A6FCEC();

  if (v7)
  {
    v8 = 40;
    goto LABEL_20;
  }

  v9 = sub_1C1A6F3CC();
  v11 = v10;
  if (v9 == sub_1C1A6F3CC() && v11 == v12)
  {

LABEL_17:
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    if ([objc_opt_self() isAppleInternalInstall])
    {
      v20 = sub_1C1A6F39C();
      APSimulateCrash();
    }

    goto LABEL_19;
  }

  v14 = sub_1C1A6FCEC();

  if (v14)
  {
    goto LABEL_17;
  }

  v15 = sub_1C1A6F3CC();
  v17 = v16;
  if (v15 == sub_1C1A6F3CC() && v17 == v18)
  {

LABEL_19:
    v8 = sub_1C1A114B8();
    goto LABEL_20;
  }

  v23 = sub_1C1A6FCEC();

  if (v23)
  {
    goto LABEL_19;
  }

  v24 = sub_1C1A6F3CC();
  v26 = v25;
  if (v24 == sub_1C1A6F3CC() && v26 == v27)
  {

    v8 = 20;
  }

  else
  {
    v28 = sub_1C1A6FCEC();

    if (v28)
    {
      v8 = 20;
    }

    else
    {
      v29 = sub_1C1A6F3CC();
      v31 = v30;
      if (v29 == sub_1C1A6F3CC() && v31 == v32)
      {
      }

      else
      {
        v33 = sub_1C1A6FCEC();

        if ((v33 & 1) == 0)
        {
          return result;
        }
      }

      v8 = 30;
    }
  }

LABEL_20:
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v21 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  [objc_msgSend(*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper)];

  return swift_unknownObjectRelease();
}

void _s17PromotedContentUI9AppAdViewC08adLockupf9DidSelectE6MarkeryySo05ASCAdhF0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if (![*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation])
  {
    goto LABEL_10;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v3 = sub_1C1A6E2EC();
  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_10:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v29 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    goto LABEL_11;
  }

  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v4 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A73CD0;
  *(v5 + 56) = sub_1C198FB8C(0, &qword_1EBF04870);
  *(v5 + 64) = sub_1C1A0F564();
  *(v5 + 32) = v3;
  v6 = *(v1 + v2);
  v7 = v3;
  v8 = [v6 identifier];
  v9 = sub_1C1A6F3CC();
  v11 = v10;

  *(v5 + 96) = MEMORY[0x1E69E6158];
  *(v5 + 104) = sub_1C199E518();
  *(v5 + 72) = v9;
  *(v5 + 80) = v11;
  sub_1C1A6F18C();

  v12 = v1 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(0, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = [*(v1 + v2) transparencyDetailsDictionary];
  v16 = sub_1C1A6F31C();

  sub_1C1A1DC74(v16);

  v17 = objc_allocWithZone(MEMORY[0x1E69DB510]);
  v18 = sub_1C1A6F2FC();

  v19 = [v17 initWithNewsTransparencyDetailsDictionary_];

  [v19 setDelegate_];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v20 = [v29 view];
  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [objc_opt_self() systemBackgroundColor];
  [v21 setBackgroundColor_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = [Strong viewControllerToPresentFrom];
    swift_unknownObjectRelease();
LABEL_16:
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C19FDA5C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F41419E0;
    v28 = _Block_copy(aBlock);

    [v24 presentViewController:v29 animated:!IsReduceMotionEnabled completion:v28];
    _Block_release(v28);

    return;
  }

  v25 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
  if (v25)
  {
    v24 = v25;
    goto LABEL_16;
  }

LABEL_11:
}

uint64_t sub_1C1A13708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1A6F3CC();
  v7 = v6;
  if (v5 == sub_1C1A6F3CC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1C1A6FCEC();

    if ((v10 & 1) == 0)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38);
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a3;

      sub_1C1A6F6BC();
    }
  }

  return result;
}

void sub_1C1A13854(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v13 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v14 = *&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  v15 = a2;

  v16 = [v14 installAttribution];
  if (v16)
  {
    v17 = v16;
    v93 = v13;
    v94 = a1;
    v95 = v12;
    v18 = [objc_allocWithZone(MEMORY[0x1E698B4E8]) init];
    [v17 adamId];
    v19 = sub_1C1A6FDEC();
    [v18 setAppAdamId_];

    v20 = [v17 contextIdentifier];
    sub_1C1A6D60C();

    sub_1C1A6D5EC();
    (*(v9 + 8))(v11, v8);
    v21 = sub_1C1A6F39C();

    [v18 setImpressionId_];

    [v17 timestamp];
    v22 = sub_1C1A6FDEC();
    [v18 setTimestamp_];

    v23 = [v17 adNetworkId];
    v24 = v17;
    if (!v23)
    {
      sub_1C1A6F3CC();
      v23 = sub_1C1A6F39C();
    }

    [v18 setAdNetworkId_];

    v25 = [v17 attributionSignature];
    if (!v25)
    {
      sub_1C1A6F3CC();
      v25 = sub_1C1A6F39C();
    }

    [v18 setAttributionSignature_];

    [v17 campaignId];
    v26 = sub_1C1A6FDEC();
    [v18 setCampaignId_];

    [v18 setSourceAppBundleId_];
    [v17 sourceAppAdamId];
    v27 = sub_1C1A6FDEC();
    [v18 setSourceAppAdamId_];

    [v18 setOverrideCampaignLimit_];
    v28 = [v17 version];
    if (!v28)
    {
      sub_1C1A6F3CC();
      v28 = sub_1C1A6F39C();
    }

    [v18 setVersion_];

    v92 = sub_1C19A9E58(&unk_1EBF03FD0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1A76A30;
    v30 = [v17 adamId];
    v31 = MEMORY[0x1E69E7738];
    *(v29 + 56) = MEMORY[0x1E69E76D8];
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    v32 = [v18 impressionId];
    v33 = sub_1C1A6F3CC();
    v35 = v34;

    v36 = MEMORY[0x1E69E6158];
    *(v29 + 96) = MEMORY[0x1E69E6158];
    v37 = sub_1C199E518();
    *(v29 + 104) = v37;
    *(v29 + 72) = v33;
    *(v29 + 80) = v35;
    v38 = [v18 timestamp];
    v39 = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v29 + 136) = v39;
    v40 = sub_1C1A0F564();
    *(v29 + 144) = v40;
    *(v29 + 112) = v38;
    v41 = [v18 adNetworkId];
    v42 = sub_1C1A6F3CC();
    v44 = v43;

    *(v29 + 176) = v36;
    *(v29 + 184) = v37;
    *(v29 + 152) = v42;
    *(v29 + 160) = v44;
    v45 = [v18 attributionSignature];
    v46 = sub_1C1A6F3CC();
    v48 = v47;

    *(v29 + 216) = v36;
    *(v29 + 224) = v37;
    *(v29 + 192) = v46;
    *(v29 + 200) = v48;
    v49 = [v18 campaignId];
    *(v29 + 256) = v39;
    *(v29 + 264) = v40;
    *(v29 + 232) = v49;
    v50 = [v18 sourceAppBundleId];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1C1A6F3CC();
      v54 = v53;

      v55 = (v29 + 272);
      *(v29 + 296) = v36;
      *(v29 + 304) = v37;
      if (v54)
      {
        *v55 = v52;
        goto LABEL_16;
      }
    }

    else
    {
      v55 = (v29 + 272);
      *(v29 + 296) = v36;
      *(v29 + 304) = v37;
    }

    *v55 = 0x6E776F6E6B6E75;
    v54 = 0xE700000000000000;
LABEL_16:
    *(v29 + 280) = v54;
    v63 = [v18 sourceAppAdamId];
    if (v63)
    {
      v98 = v39;
      v99 = v40;
      *&aBlock = v63;
      sub_1C199274C(&aBlock, v29 + 312);
    }

    else
    {
      *(v29 + 336) = v36;
      *(v29 + 344) = v37;
      *(v29 + 312) = 0x6E776F6E6B6E75;
      *(v29 + 320) = 0xE700000000000000;
    }

    v64 = [v18 overrideCampaignLimit];
    v65 = MEMORY[0x1E69E63A8];
    *(v29 + 376) = MEMORY[0x1E69E6370];
    *(v29 + 384) = v65;
    *(v29 + 352) = v64;
    v66 = [v18 version];
    if (v66)
    {
      v67 = v66;
      v68 = sub_1C1A6F3CC();
      v70 = v69;

      v71 = (v29 + 392);
      *(v29 + 416) = v36;
      *(v29 + 424) = v37;
      if (v70)
      {
        *v71 = v68;
LABEL_24:
        *(v29 + 400) = v70;
        v90 = sub_1C1A6F3EC();
        v73 = v72;
        v91 = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v74 = sub_1C1A6F8EC();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1C1A74920;
        v76 = [v24 adamId];
        *(v75 + 56) = MEMORY[0x1E69E76D8];
        *(v75 + 64) = MEMORY[0x1E69E7738];
        *(v75 + 32) = v76;
        v77 = v94;
        v78 = [*&v94[v93] identifier];
        v79 = v24;
        v80 = sub_1C1A6F3CC();
        v82 = v81;

        v83 = MEMORY[0x1E69E6158];
        *(v75 + 96) = MEMORY[0x1E69E6158];
        *(v75 + 104) = v37;
        *(v75 + 72) = v80;
        *(v75 + 80) = v82;
        *(v75 + 136) = v83;
        *(v75 + 144) = v37;
        *(v75 + 112) = v90;
        *(v75 + 120) = v73;
        sub_1C1A6F18C();

        v84 = [objc_opt_self() sharedInstance];
        v85 = swift_allocObject();
        v85[2] = v79;
        v85[3] = v77;
        v86 = v95;
        v85[4] = sub_1C1A15504;
        v85[5] = v86;
        v99 = sub_1C1A15564;
        v100 = v85;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v97 = sub_1C19E7330;
        v98 = &unk_1F4141968;
        v87 = _Block_copy(&aBlock);
        v88 = v79;
        v89 = v77;

        [v84 addInstallAttributionParamsWithConfig:v18 completionHandler:v87];
        _Block_release(v87);

        return;
      }
    }

    else
    {
      v71 = (v29 + 392);
      *(v29 + 416) = v36;
      *(v29 + 424) = v37;
    }

    *v71 = 0x6E776F6E6B6E75;
    v70 = 0xE700000000000000;
    goto LABEL_24;
  }

  LODWORD(v95) = sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v56 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v57 = v15;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C1A73A30;
  v59 = [*&a1[v13] identifier];
  v60 = sub_1C1A6F3CC();
  v62 = v61;

  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1C199E518();
  *(v58 + 32) = v60;
  *(v58 + 40) = v62;
  sub_1C1A6F18C();

  sub_1C1A13708(v57, a3, a4);
}

uint64_t sub_1C1A14268(void *a1, char *a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = sub_1C1A6F3CC();
  v9 = v8;
  v11 = v7 == sub_1C1A6F3CC() && v9 == v10;
  v12 = MEMORY[0x1E69E6158];
  if (v11)
  {
    _Block_copy(a3);

    goto LABEL_8;
  }

  v13 = sub_1C1A6FCEC();
  _Block_copy(a3);

  if (v13)
  {
LABEL_8:
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v15 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1A73A30;
    v17 = v6;
    v18 = a1;
    v19 = a2;
    v20 = [*&a2[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v21 = sub_1C1A6F3CC();
    v23 = v22;

    a2 = v19;
    a1 = v18;
    v6 = v17;
    v14 = &unk_1E8148000;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C199E518();
    *(v16 + 32) = v21;
    *(v16 + 40) = v23;
    sub_1C1A6F18C();

    v12 = MEMORY[0x1E69E6158];

    a3[2]();
    goto LABEL_9;
  }

  v14 = &unk_1E8148000;
LABEL_9:
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v24 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C1A73A30;
  v26 = [*&a2[OBJC_IVAR___APPCPromotedContentView_promotedContent] v14[288]];
  v27 = sub_1C1A6F3CC();
  v29 = v28;

  *(v25 + 56) = v12;
  *(v25 + 64) = sub_1C199E518();
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  sub_1C1A6F18C();

  v30 = a1;

  sub_1C1A13854(a2, v30, sub_1C1A153E4, v6);
}

void sub_1C1A14618(char *a1, void *a2)
{
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v10 = *&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  a2;
  v11 = [v10 installAttribution];
  if (v11)
  {
    v12 = v11;
    v88 = v9;
    v13 = [objc_allocWithZone(MEMORY[0x1E698B4E8]) init];
    [v12 adamId];
    v14 = sub_1C1A6FDEC();
    [v13 setAppAdamId_];

    v15 = [v12 contextIdentifier];
    sub_1C1A6D60C();

    sub_1C1A6D5EC();
    v91 = v12;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1C1A6F39C();
    v17 = v91;

    [v13 setImpressionId_];

    [v17 timestamp];
    v18 = sub_1C1A6FDEC();
    [v13 setTimestamp_];

    v19 = [v17 adNetworkId];
    if (!v19)
    {
      sub_1C1A6F3CC();
      v19 = sub_1C1A6F39C();
    }

    [v13 setAdNetworkId_];

    v20 = [v17 attributionSignature];
    if (!v20)
    {
      sub_1C1A6F3CC();
      v20 = sub_1C1A6F39C();
    }

    v89 = a1;
    v90 = v8;
    [v13 setAttributionSignature_];

    [v17 campaignId];
    v21 = sub_1C1A6FDEC();
    [v13 setCampaignId_];

    [v13 setSourceAppBundleId_];
    [v17 sourceAppAdamId];
    v22 = sub_1C1A6FDEC();
    [v13 setSourceAppAdamId_];

    [v13 setOverrideCampaignLimit_];
    v23 = [v17 version];
    if (!v23)
    {
      sub_1C1A6F3CC();
      v23 = sub_1C1A6F39C();
    }

    [v13 setVersion_];

    sub_1C19A9E58(&unk_1EBF03FD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1A76A30;
    v25 = [v17 adamId];
    v26 = MEMORY[0x1E69E7738];
    *(v24 + 56) = MEMORY[0x1E69E76D8];
    *(v24 + 64) = v26;
    *(v24 + 32) = v25;
    v27 = [v13 impressionId];
    v28 = sub_1C1A6F3CC();
    v30 = v29;

    v31 = MEMORY[0x1E69E6158];
    *(v24 + 96) = MEMORY[0x1E69E6158];
    v32 = sub_1C199E518();
    *(v24 + 104) = v32;
    *(v24 + 72) = v28;
    *(v24 + 80) = v30;
    v33 = [v13 timestamp];
    v34 = sub_1C198FB8C(0, &qword_1EBF04870);
    *(v24 + 136) = v34;
    v35 = sub_1C1A0F564();
    *(v24 + 144) = v35;
    *(v24 + 112) = v33;
    v36 = [v13 adNetworkId];
    v37 = sub_1C1A6F3CC();
    v39 = v38;

    *(v24 + 176) = v31;
    *(v24 + 184) = v32;
    *(v24 + 152) = v37;
    *(v24 + 160) = v39;
    v40 = [v13 attributionSignature];
    v41 = sub_1C1A6F3CC();
    v43 = v42;

    *(v24 + 216) = v31;
    *(v24 + 224) = v32;
    *(v24 + 192) = v41;
    *(v24 + 200) = v43;
    v44 = [v13 campaignId];
    *(v24 + 256) = v34;
    *(v24 + 264) = v35;
    *(v24 + 232) = v44;
    v45 = [v13 sourceAppBundleId];
    if (v45)
    {
      v46 = v45;
      v47 = sub_1C1A6F3CC();
      v49 = v48;

      v50 = (v24 + 272);
      *(v24 + 296) = v31;
      *(v24 + 304) = v32;
      v51 = v31;
      if (v49)
      {
        *v50 = v47;
        goto LABEL_16;
      }
    }

    else
    {
      v50 = (v24 + 272);
      *(v24 + 296) = v31;
      *(v24 + 304) = v32;
      v51 = v31;
    }

    *v50 = 0x6E776F6E6B6E75;
    v49 = 0xE700000000000000;
LABEL_16:
    *(v24 + 280) = v49;
    v58 = [v13 sourceAppAdamId];
    if (v58)
    {
      v94 = v34;
      v95 = v35;
      *&aBlock = v58;
      sub_1C199274C(&aBlock, v24 + 312);
    }

    else
    {
      *(v24 + 336) = v51;
      *(v24 + 344) = v32;
      *(v24 + 312) = 0x6E776F6E6B6E75;
      *(v24 + 320) = 0xE700000000000000;
    }

    v59 = v88;
    v60 = [v13 overrideCampaignLimit];
    v61 = MEMORY[0x1E69E63A8];
    *(v24 + 376) = MEMORY[0x1E69E6370];
    *(v24 + 384) = v61;
    *(v24 + 352) = v60;
    v62 = [v13 version];
    if (v62)
    {
      v63 = v62;
      v64 = v51;
      v65 = sub_1C1A6F3CC();
      v67 = v66;

      v68 = (v24 + 392);
      *(v24 + 416) = v64;
      *(v24 + 424) = v32;
      if (v67)
      {
        *v68 = v65;
        v69 = v91;
LABEL_24:
        *(v24 + 400) = v67;
        v88 = sub_1C1A6F3EC();
        v71 = v70;
        LODWORD(v91) = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v72 = sub_1C1A6F8EC();
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1C1A74920;
        v74 = [v69 adamId];
        *(v73 + 56) = MEMORY[0x1E69E76D8];
        *(v73 + 64) = MEMORY[0x1E69E7738];
        *(v73 + 32) = v74;
        v75 = v89;
        v76 = [*&v89[v59] identifier];
        v77 = v69;
        v78 = sub_1C1A6F3CC();
        v80 = v79;

        v81 = MEMORY[0x1E69E6158];
        *(v73 + 96) = MEMORY[0x1E69E6158];
        *(v73 + 104) = v32;
        *(v73 + 72) = v78;
        *(v73 + 80) = v80;
        *(v73 + 136) = v81;
        *(v73 + 144) = v32;
        *(v73 + 112) = v88;
        *(v73 + 120) = v71;
        sub_1C1A6F18C();

        v82 = [objc_opt_self() sharedInstance];
        v83 = swift_allocObject();
        v83[2] = v77;
        v83[3] = v75;
        v84 = v90;
        v83[4] = sub_1C1A154D4;
        v83[5] = v84;
        v95 = sub_1C1A154F8;
        v96 = v83;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v93 = sub_1C19E7330;
        v94 = &unk_1F41418F0;
        v85 = _Block_copy(&aBlock);
        v86 = v77;
        v87 = v75;

        [v82 addInstallAttributionParamsWithConfig:v13 completionHandler:v85];
        _Block_release(v85);

        return;
      }
    }

    else
    {
      v68 = (v24 + 392);
      *(v24 + 416) = v51;
      *(v24 + 424) = v32;
    }

    v69 = v91;
    *v68 = 0x6E776F6E6B6E75;
    v67 = 0xE700000000000000;
    goto LABEL_24;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v52 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C1A73A30;
  v54 = [*&a1[v9] identifier];
  v55 = sub_1C1A6F3CC();
  v57 = v56;

  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = sub_1C199E518();
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  sub_1C1A6F18C();

  sub_1C1A6F74C();
}

uint64_t _s17PromotedContentUI9AppAdViewC42metricsActivityForPresentingProductDetails2of7inStateSo010ASCMetricsH0CSo011ASCAdLockupF0C_So06ASCAppO0atF_0()
{
  v1 = v0;
  v2 = sub_1C1A6F20C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  [objc_msgSend(*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
  swift_unknownObjectRelease();
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v8 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1A73A30;
  v10 = [*&v1[v7] identifier];
  v11 = sub_1C1A6F3CC();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C199E518();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1C1A6F18C();

  v14 = dispatch_semaphore_create(1);
  sub_1C198FB8C(0, &qword_1EDE63F38);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7F98], v2);
  v15 = sub_1C1A6F72C();
  (*(v3 + 8))(v6, v2);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C1A1545C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1C1A154AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1A11B64;
  aBlock[3] = &unk_1F4141878;
  v18 = _Block_copy(aBlock);
  v1;
  v19 = v14;

  dispatch_sync(v15, v18);

  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_1C1A6F73C();
    v21 = sub_1C1A11B8C();

    return v21;
  }

  return result;
}

uint64_t sub_1C1A153F4(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF04860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1A1545C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C1A14618(v1, v2);
}

uint64_t sub_1C1A15510()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1C1A15574(void *a1, double a2, double a3)
{
  v7 = sub_1C1A6F1FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1A6F22C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 bestRepresentation];
  if (result)
  {
    swift_unknownObjectRelease();
    v21[1] = *(v3 + 224);
    v17 = swift_allocObject();
    v21[0] = v8;
    v22 = v11;
    v18 = v17;
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;
    aBlock[4] = sub_1C1A1B298;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F4141AA8;
    v20 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_1C1A6F21C();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
    sub_1C19A9E58(&qword_1EBF03E28);
    sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28);
    sub_1C1A6F94C();
    MEMORY[0x1C69051C0](0, v15, v10, v20);
    _Block_release(v20);
    (*(v21[0] + 8))(v10, v7);
    (*(v12 + 8))(v15, v22);
  }

  return result;
}

uint64_t sub_1C1A158BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1C1A6F1FC();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1A6F22C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 224);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4 & 1;
  aBlock[4] = sub_1C1A1B288;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F4141A58;
  v17 = _Block_copy(aBlock);

  sub_1C1A6F21C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
  sub_1C19A9E58(&qword_1EBF03E28);
  sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28);
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1C1A15BE0(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = result + 32;
      v5 = a2[9];
      v36 = a2[8];
      do
      {
        v6 = *v4;
        v7 = *(*v4 + 16);

        if (v7 && (v8 = sub_1C1991010(0x7461745372657375, 0xEA00000000007375), (v9 & 1) != 0))
        {
          v10 = *(*(v6 + 56) + 8 * v8);
          v11 = v10;
        }

        else
        {
          v10 = 0;
        }

        v12 = a2[23];
        v13 = a2[22] & 0xFFFFFFFFFFFFLL;
        if ((v12 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(v12) & 0xF;
        }

        if (!v13)
        {
          if (!v10)
          {
            goto LABEL_15;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v37 = 0;
            v38 = 0;
            sub_1C1A6F3BC();
          }
        }

LABEL_15:
        if (*(v6 + 16) && (v14 = sub_1C1991010(v36, v5), (v15 & 1) != 0))
        {
          v16 = *(*(v6 + 56) + 8 * v14);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v37 = 0;
            v38 = 0;
            v17 = v16;
            sub_1C1A6F3BC();
          }
        }

        else
        {
          swift_beginAccess();
          v18 = a2[21];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a2[21] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_1C19CB25C(0, v18[2] + 1, 1, v18);
            a2[21] = v18;
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_1C19CB25C((v20 > 1), v21 + 1, 1, v18);
          }

          v18[2] = v21 + 1;
          v18[v21 + 4] = v6;
          a2[21] = v18;
          swift_endAccess();
        }

        if (*(v6 + 16))
        {
          v22 = sub_1C1991010(0x6D726F464C587369, 0xEA00000000007461);
          if (v23)
          {
            v24 = *(*(v6 + 56) + 8 * v22);
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (v25)
            {
              v26 = v25;
              v27 = v24;
              if ([v26 integerValue] == 1)
              {
                if (*(v6 + 16) && (v28 = sub_1C1991010(0x74616D726F466461, 0xEC00000065707954), (v29 & 1) != 0))
                {
                  v30 = *(*(v6 + 56) + 8 * v28);

                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v37 = 0;
                    v38 = 0;
                    sub_1C1A6F3BC();
                  }

                  else
                  {
                  }
                }

                else
                {
                }

                goto LABEL_6;
              }
            }
          }
        }

LABEL_6:
        v4 += 8;
        --v3;
      }

      while (v3);
    }

    swift_beginAccess();

    v32 = sub_1C19F2518(v31);

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = sub_1C19E89A8(*(v32 + 16), 0);
      v35 = sub_1C1A5FBC8(&v37, v34 + 4, v33, v32);
      sub_1C19A93FC();
      if (v35 == v33)
      {
LABEL_41:
        a2[27] = v34;
      }

      __break(1u);
    }

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1C1A16158(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1C19A9E58(&qword_1EBF037B0);
    v2 = sub_1C1A6F51C();
  }

  v3(v2);
}

void sub_1C1A161DC(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for ImpressionInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v74 - v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v83 = v8;
  v16 = sub_1C1A1B2A4(a4);
  v84 = v17;
  v85 = v18;
  sub_1C1A16958(v16, v17, v18);
  v86 = sub_1C1A1B4E4(a4);
  v87 = v19;
  v92 = v20;
  v90 = v21;
  v22 = [a4 context];
  v81 = v7;
  v82 = v10;
  if (v22 && (v23 = [v22 current], swift_unknownObjectRelease(), v23))
  {
    v24 = [v23 placement];
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
  }

  sub_1C1A6F65C();
  v25 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v79 = "n>16@0:8";
  v78 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v80 = v25;
  v26 = sub_1C1A6F8EC();
  v77 = sub_1C19A9E58(&unk_1EBF03FD0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C1A73A30;
  v28 = [a4 identifier];
  v29 = sub_1C1A6F3CC();
  v91 = a4;
  v30 = v29;
  v32 = v31;

  *(v27 + 56) = MEMORY[0x1E69E6158];
  v76 = sub_1C199E518();
  *(v27 + 64) = v76;
  *(v27 + 32) = v30;
  *(v27 + 40) = v32;
  v33 = v91;
  sub_1C1A6F18C();

  if ([v33 feedMetadataContentProviderID] == 1)
  {
    v34 = 13;
    v35 = 12;
  }

  else
  {
    v36 = [v33 feedMetadataContentProviderID];
    v35 = 14;
    if (v36 == 1)
    {
      v35 = 10;
    }

    v34 = 15;
    if (v36 == 1)
    {
      v34 = 11;
    }
  }

  v74 = v15[v35];
  v37 = v15[v34];

  v38 = 0xE700000000000000;
  v39 = 0xEC0000006C616974;
  v40 = 0x6974737265746E69;
  v41 = 0xE500000000000000;
  v42 = 0x6F65646976;
  v43 = 0xE500000000000000;
  v44 = 0x6F69647561;
  if (v24 != 105)
  {
    v44 = 0x6E776F6E6B6E75;
    v43 = 0xE700000000000000;
  }

  if (v24 != 104)
  {
    v42 = v44;
    v41 = v43;
  }

  if (v24 != 103)
  {
    v40 = v42;
    v39 = v41;
  }

  v45 = 0x746E65746E6F63;
  v46 = 1953720684;
  v47 = 1684632167;
  if (v24 == 102)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v47 = 0x6E776F6E6B6E75;
  }

  if (v24 == 101)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v46 = v47;
  }

  if (v24 == 100)
  {
    v38 = 0xE700000000000000;
  }

  else
  {
    v45 = v46;
  }

  if (v24 > 102)
  {
    v38 = v39;
  }

  else
  {
    v40 = v45;
  }

  v88 = v38;
  v89 = v40;
  if (!v92)
  {
    v48 = v15[10];
    v49 = v15[11];

    v50 = v90;
    if (v90)
    {
      goto LABEL_32;
    }

LABEL_34:
    v51 = v15[10];
    v50 = v15[11];

    v75 = 0xE700000000000000;
    goto LABEL_35;
  }

  v48 = v86;
  v49 = v92;
  v50 = v90;
  if (!v90)
  {
    goto LABEL_34;
  }

LABEL_32:
  v75 = v50;
  v51 = v87;
LABEL_35:
  v52 = v81;

  sub_1C1A6D5CC();
  *v13 = v48;
  v13[1] = v49;
  v13[2] = v51;
  v13[3] = v50;
  v53 = v88;
  v13[4] = v89;
  v13[5] = v53;
  v54 = (v13 + *(v52 + 32));
  *v54 = a1;
  v54[1] = a2;
  v55 = (v13 + *(v52 + 36));
  *v55 = v74;
  v55[1] = v37;
  v56 = v82;
  sub_1C1A1B65C(v13, v82, type metadata accessor for ImpressionInfo);
  swift_beginAccess();
  v57 = v15[24];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[24] = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_1C19CB390(0, v57[2] + 1, 1, v57);
    v15[24] = v57;
  }

  v60 = v57[2];
  v59 = v57[3];
  if (v60 >= v59 >> 1)
  {
    v57 = sub_1C19CB390(v59 > 1, v60 + 1, 1, v57);
  }

  v57[2] = v60 + 1;
  sub_1C1A1B6C4(v56, v57 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for ImpressionInfo);
  v15[24] = v57;
  swift_endAccess();
  sub_1C1A6F65C();
  v61 = sub_1C1A6F8EC();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C1A74920;
  v63 = MEMORY[0x1E69E6158];
  v64 = v76;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = v64;
  v65 = v86;
  if (!v92)
  {
    v65 = 0x6E776F6E6B6E75;
  }

  v66 = 0xE700000000000000;
  if (v92)
  {
    v66 = v92;
  }

  *(v62 + 32) = v65;
  *(v62 + 40) = v66;
  *(v62 + 96) = v63;
  *(v62 + 104) = v64;
  if (v90)
  {
    v67 = v87;
  }

  else
  {
    v67 = 0x6E776F6E6B6E75;
  }

  v68 = v75;
  *(v62 + 72) = v67;
  *(v62 + 80) = v68;
  *(v62 + 136) = v63;
  *(v62 + 144) = v64;
  v69 = v88;
  *(v62 + 112) = v89;
  *(v62 + 120) = v69;

  sub_1C1A6F18C();

  sub_1C1A1B72C(v13, type metadata accessor for ImpressionInfo);
  v70 = [v91 bestRepresentation];
  if (v70)
  {
    v71 = [v70 adPolicyData];
    if (v71)
    {
      v72 = v71;
      v73 = sub_1C1A6DE0C();
    }

    else
    {
      v73 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0;
  }

  sub_1C1A16D78(v73);
}

void sub_1C1A16958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for FrequencyCapInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {

    v12 = a3;
    sub_1C1A6E03C();
    v13 = sub_1C1A6E47C();
    swift_beginAccess();
    v14 = *(v4 + 160);
    if (!*(v14 + 16) || (v15 = sub_1C19A30DC(v13), (v16 & 1) == 0))
    {
      swift_endAccess();
      v21 = 1;
LABEL_15:
      sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v23 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1A73CD0;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      v25 = sub_1C199E518();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      v26 = MEMORY[0x1E69E65A8];
      *(v24 + 96) = MEMORY[0x1E69E6530];
      *(v24 + 104) = v26;
      *(v24 + 64) = v25;
      *(v24 + 72) = v21;

      sub_1C1A6F18C();

      sub_1C1A6E03C();
      v27 = sub_1C1A6E47C();
      sub_1C19A9E58(&qword_1EBF04878);
      v28 = (sub_1C19A9E58(&qword_1EBF03C48) - 8);
      v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1C1A73A30;
      v31 = (v30 + v29);
      v32 = v31 + v28[14];
      *v31 = a1;
      v31[1] = a2;
      sub_1C1A6D5CC();
      *&v32[*(v8 + 20)] = v21;
      v33 = sub_1C19B7410(v30);
      swift_setDeallocating();
      sub_1C1A1B78C(v31);
      swift_deallocClassInstance();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v4 + 160);
      *(v4 + 160) = 0x8000000000000000;
      sub_1C1A49E70(v33, v27, isUniquelyReferenced_nonNull_native);
      *(v4 + 160) = v35;
      swift_endAccess();

      return;
    }

    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    if (*(v17 + 16))
    {

      v18 = sub_1C1991010(a1, a2);
      if (v19)
      {
        sub_1C1A1B65C(*(v17 + 56) + *(v9 + 72) * v18, v11, type metadata accessor for FrequencyCapInfo);

        v20 = *&v11[*(v8 + 20)];
        sub_1C1A1B72C(v11, type metadata accessor for FrequencyCapInfo);
LABEL_11:
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          return;
        }

        v22 = sub_1C1A6E01C();
        if (v21 >= 1 && v22 < v21)
        {
          v21 = 1;
        }

        goto LABEL_15;
      }
    }

    v20 = 0;
    goto LABEL_11;
  }
}

void sub_1C1A16D78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CreativeImpressionInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - v9);
  if (a1)
  {
    v11 = sub_1C1A6DD1C();
    v13 = v12;

    sub_1C1A6D5CC();
    *v10 = v11;
    v10[1] = v13;
    sub_1C1A1B65C(v10, v7, type metadata accessor for CreativeImpressionInfo);
    swift_beginAccess();
    v14 = *(v2 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 200) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1C19CB3B8(0, v14[2] + 1, 1, v14);
      *(v2 + 200) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1C19CB3B8(v16 > 1, v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    sub_1C1A1B6C4(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for CreativeImpressionInfo);
    *(v2 + 200) = v14;
    swift_endAccess();
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v18 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1A73A30;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C199E518();
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    sub_1C1A6F18C();

    sub_1C1A1B72C(v10, type metadata accessor for CreativeImpressionInfo);
  }
}

uint64_t sub_1C1A17050(double a1, double a2, uint64_t a3, void *a4, void (*a5)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v50 = a5;
    v48 = sub_1C1A175A4(a4);
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73A30;
    v13 = [a4 identifier];
    v14 = sub_1C1A6F3CC();
    v15 = v10;
    v17 = v16;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C199E518();
    *(v12 + 64) = v18;
    *(v12 + 32) = v14;
    *(v12 + 40) = v17;
    v51 = v15;
    v49 = v18;
    if (v48)
    {
      v19 = v18;
      sub_1C1A6F18C();

      v20 = sub_1C1A17B28(a4);
      sub_1C1A6F66C();
      v21 = sub_1C1A6F8EC();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C1A73A30;
      v23 = [a4 identifier];
      v24 = sub_1C1A6F3CC();
      v26 = v25;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = v19;
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      v27 = a4;
      v28 = &unk_1E8148000;
      if (v20)
      {
        sub_1C1A6F18C();

        v47 = a4;
        v29 = sub_1C1A1B4E4(a4);
        v32 = v31;
        v34 = v33;
        if (v30)
        {
          v35 = v29;
          v36 = v30;
          v37 = v51;
        }

        else
        {
          v37 = v51;
          v35 = *(v51 + 80);
          v36 = *(v51 + 88);
        }

        if (!v34)
        {
          v32 = *(v37 + 80);
          v34 = *(v37 + 88);
        }

        v39 = v35;
        v27 = v47;
        v38 = sub_1C1A17FE8(v47, v39, v36, v32, v34, a1, a2);
      }

      else
      {
        sub_1C1A6F18C();

        [objc_msgSend(a4 metricsHelper)];
        swift_unknownObjectRelease();
        v38 = 0;
      }
    }

    else
    {
      v28 = &unk_1E8148000;
      sub_1C1A6F18C();

      [objc_msgSend(a4 metricsHelper)];
      swift_unknownObjectRelease();
      v38 = 0;
      v27 = a4;
    }

    sub_1C1A6F66C();
    v40 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1C1A73CD0;
    v42 = [v27 v28[288]];
    v43 = sub_1C1A6F3CC();
    v45 = v44;

    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = v49;
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    v46 = MEMORY[0x1E69E63A8];
    *(v41 + 96) = MEMORY[0x1E69E6370];
    *(v41 + 104) = v46;
    *(v41 + 72) = v38 & 1;
    sub_1C1A6F18C();

    [v27 setDiscardedDueToPolicy_];
    v50(v38 & 1);
  }

  return result;
}

uint64_t sub_1C1A175A4(void *a1)
{
  v2 = v1;
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FrequencyCapInfo(0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v54 = a1;
  v14 = sub_1C1A1B2A4(a1);
  v17 = v16;
  if (!v15)
  {
    goto LABEL_16;
  }

  v18 = v15;
  if (!v16)
  {

LABEL_16:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v41 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C1A73A30;
    v43 = v17;
    v44 = [v54 identifier];
    v45 = sub_1C1A6F3CC();
    v47 = v46;

    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1C199E518();
    *(v42 + 32) = v45;
    *(v42 + 40) = v47;
    sub_1C1A6F18C();

    return 1;
  }

  v19 = v14;
  v51 = v5;
  v52 = v16;
  sub_1C1A6E03C();
  v20 = sub_1C1A6E47C();
  swift_beginAccess();
  v21 = *(v2 + 160);
  if (!*(v21 + 16) || (v22 = sub_1C19A30DC(v20), (v23 & 1) == 0))
  {
    swift_endAccess();
LABEL_14:

    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v35 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C1A73A30;
    v37 = [v54 identifier];
    v38 = sub_1C1A6F3CC();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1C199E518();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1C1A6F18C();

    return 1;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  if (!*(v24 + 16))
  {
    goto LABEL_14;
  }

  v25 = sub_1C1991010(v19, v18);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C1A1B65C(*(v24 + 56) + *(v53 + 72) * v25, v10, type metadata accessor for FrequencyCapInfo);

  sub_1C1A1B6C4(v10, v13, type metadata accessor for FrequencyCapInfo);
  sub_1C1A6D5CC();
  sub_1C1A6D50C();
  v29 = v28;
  v30 = v28;
  result = (*(v51 + 8))(v7, v4);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v32 = v52;
  if (v29 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v33 = *&v13[*(v8 + 20)];
  v34 = sub_1C1A6E01C();
  if ((v33 & 0x8000000000000000) != 0 || v33 < v34)
  {
    sub_1C1A1B72C(v13, type metadata accessor for FrequencyCapInfo);

    return 1;
  }

  v48 = sub_1C1A6E02C();

  sub_1C1A1B72C(v13, type metadata accessor for FrequencyCapInfo);
  return v29 > 0 && v48 < v29;
}

uint64_t sub_1C1A17B28(void *a1)
{
  v2 = v1;
  v40 = sub_1C1A6D5DC();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CreativeImpressionInfo(0);
  v41 = *(v39 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 bestRepresentation];
  if (!v10)
  {
LABEL_8:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73A30;
    v21 = [a1 identifier];
    v22 = sub_1C1A6F3CC();
    v24 = v23;

    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C199E518();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_1C1A6F18C();

LABEL_9:

    return 1;
  }

  v11 = [v10 adPolicyData];
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1C1A6DE0C();

  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = sub_1C1A6DD0C();
  if (*(v14 + 16) && (v15 = v2[22], v16 = v2[23], , v17 = sub_1C1991010(v15, v16), LOBYTE(v15) = v18, , (v15 & 1) != 0))
  {
    v38 = *(*(v14 + 56) + 8 * v17);
  }

  else
  {
    v38 = 0;
  }

  swift_beginAccess();
  v26 = v2[25];
  v27 = *(v26 + 16);
  if (!v27)
  {

    return 1;
  }

  v28 = v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v29 = (v4 + 8);

  v30 = 0;
  while (v30 < *(v26 + 16))
  {
    sub_1C1A1B65C(v28 + *(v41 + 72) * v30, v9, type metadata accessor for CreativeImpressionInfo);
    if (sub_1C1A6DD1C() == *v9 && v31 == v9[1])
    {
    }

    else
    {
      v33 = sub_1C1A6FCEC();

      if ((v33 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1C1A6D5CC();
    sub_1C1A6D50C();
    v35 = v34;
    v36 = v34;
    result = (*v29)(v6, v40);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    if (v35 <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v35 >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    if (v38 > v35)
    {

      sub_1C1A1B72C(v9, type metadata accessor for CreativeImpressionInfo);
      return 0;
    }

LABEL_14:
    ++v30;
    result = sub_1C1A1B72C(v9, type metadata accessor for CreativeImpressionInfo);
    if (v27 == v30)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C1A17FE8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = 0x6E776F6E6B6E75;
  v12 = [a1 context];
  if (v12 && (v13 = [v12 current], swift_unknownObjectRelease(), v13))
  {
    v14 = [v13 placement];
    swift_unknownObjectRelease();
    v15 = 0xE700000000000000;
    v16 = 0xEC0000006C616974;
    v17 = 0x6974737265746E69;
    v18 = 0xE500000000000000;
    v19 = 0x6F65646976;
    v20 = 0xE500000000000000;
    v21 = 0x6F69647561;
    if (v14 != 105)
    {
      v21 = 0x6E776F6E6B6E75;
      v20 = 0xE700000000000000;
    }

    if (v14 != 104)
    {
      v19 = v21;
      v18 = v20;
    }

    if (v14 != 103)
    {
      v17 = v19;
      v16 = v18;
    }

    v22 = 0x746E65746E6F63;
    v23 = 1953720684;
    v24 = 1684632167;
    if (v14 == 102)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    if (v14 == 101)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v23 = v24;
    }

    if (v14 == 100)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v22 = v23;
    }

    if (v14 <= 102)
    {
      v11 = v22;
    }

    else
    {
      v11 = v17;
    }

    if (v14 > 102)
    {
      v15 = v16;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v58 = v15;
  if ([a1 feedMetadataContentProviderID] == 1)
  {
    v25 = 104;
    v26 = 96;
  }

  else
  {
    v27 = [a1 feedMetadataContentProviderID];
    v26 = 112;
    if (v27 == 1)
    {
      v26 = 80;
    }

    v25 = 120;
    if (v27 == 1)
    {
      v25 = 88;
    }
  }

  v28 = *(v7 + v26);
  v29 = *(v7 + v25);

  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v55 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1A76A50;
  v31 = [a1 identifier];
  v32 = sub_1C1A6F3CC();
  v34 = v33;

  v35 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1C199E518();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 96) = v35;
  *(v30 + 104) = v36;
  *(v30 + 64) = v36;
  *(v30 + 72) = a2;
  *(v30 + 80) = a3;
  *(v30 + 136) = v35;
  *(v30 + 144) = v36;
  *(v30 + 112) = a4;
  *(v30 + 120) = a5;
  *(v30 + 176) = v35;
  *(v30 + 184) = v36;
  *(v30 + 152) = v11;
  *(v30 + 160) = v58;
  *(v30 + 216) = v35;
  *(v30 + 224) = v36;
  *(v30 + 192) = v28;
  *(v30 + 200) = v29;

  v56 = v29;

  sub_1C1A6F18C();

  v57 = sub_1C1A190F8(a2, a3, a4, a5, v11, v58, v28, v29);
  sub_1C1A6F64C();
  v54 = sub_1C1A6F8EC();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C1A76A60;
  v38 = [a1 identifier];
  v39 = sub_1C1A6F3CC();
  v41 = v40;

  v42 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = v36;
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  *(v37 + 96) = v42;
  *(v37 + 104) = v36;
  *(v37 + 72) = a2;
  *(v37 + 80) = a3;
  *(v37 + 136) = v42;
  *(v37 + 144) = v36;
  *(v37 + 112) = a4;
  *(v37 + 120) = a5;
  *(v37 + 176) = v42;
  *(v37 + 184) = v36;
  *(v37 + 152) = v11;
  *(v37 + 160) = v58;
  *(v37 + 216) = v42;
  *(v37 + 224) = v36;
  v53 = v28;
  *(v37 + 192) = v28;
  *(v37 + 200) = v56;
  *(v37 + 256) = sub_1C19A9E58(&qword_1EBF04880);
  *(v37 + 264) = sub_1C198FE5C(&qword_1EDE62730, &qword_1EBF04880);
  *(v37 + 232) = v57;

  sub_1C1A6F18C();

  v43 = sub_1C1A198FC();
  sub_1C1A6F64C();
  v44 = sub_1C1A6F8EC();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C1A76A60;
  v46 = [a1 identifier];
  v47 = sub_1C1A6F3CC();
  v49 = v48;

  v50 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = v36;
  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  *(v45 + 96) = v50;
  *(v45 + 104) = v36;
  *(v45 + 72) = a2;
  *(v45 + 80) = a3;
  *(v45 + 136) = v50;
  *(v45 + 144) = v36;
  *(v45 + 112) = a4;
  *(v45 + 120) = a5;
  *(v45 + 176) = v50;
  *(v45 + 184) = v36;
  *(v45 + 152) = v11;
  *(v45 + 160) = v58;
  *(v45 + 216) = v50;
  *(v45 + 224) = v36;
  *(v45 + 192) = v53;
  *(v45 + 200) = v56;
  *(v45 + 256) = sub_1C19A9E58(&qword_1EBF04888);
  *(v45 + 264) = sub_1C198FE5C(&qword_1EDE62728, &qword_1EBF04888);
  *(v45 + 232) = v43;

  sub_1C1A6F18C();

  v51 = sub_1C1A51D3C(v43);

  LOBYTE(v44) = sub_1C1A19D30(v51, v57, a4, a5, v11, v58, a1, a6, a7);

  return v44 & 1;
}

uint64_t sub_1C1A186F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1A6F1FC();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1A6F22C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 224);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1C1A1B944;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F4141AF8;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1C1A6F21C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C198FE14(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
  sub_1C19A9E58(&qword_1EBF03E28);
  sub_1C198FE5C(&qword_1EDE63F50, &qword_1EBF03E28);
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1C1A18A14(uint64_t a1, void *a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_1C1A17FE8(a2, 0x6F65646976, 0xE500000000000000, 0x6F65646976uLL, 0xE500000000000000, 0.0, 0.0);
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v7 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1A73CD0;
    v9 = [a2 identifier];
    v10 = sub_1C1A6F3CC();
    v12 = v11;

    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C199E518();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v13 = MEMORY[0x1E69E63A8];
    *(v8 + 96) = MEMORY[0x1E69E6370];
    *(v8 + 104) = v13;
    *(v8 + 72) = v6 & 1;
    sub_1C1A6F18C();

    a3(v6 & 1);
  }

  return result;
}

uint64_t sub_1C1A18BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for ImpressionInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v35 - v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v36 = a4;
  v41 = v10;
  v17 = a5;
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v39 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v40 = "n>16@0:8";
  v18 = sub_1C1A6F8EC();
  v38 = sub_1C19A9E58(&unk_1EBF03FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C1A73A30;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1C199E518();
  *(v19 + 64) = v37;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;

  sub_1C1A6F18C();

  if ((v17 & 1) == 0)
  {
    if (v36 <= 101)
    {
      if (v36)
      {
        if (v36 == 100)
        {
          v20 = 0xE700000000000000;
          v21 = 0x746E65746E6F63;
          goto LABEL_4;
        }

        if (v36 == 101)
        {
          v20 = 0xE400000000000000;
          v21 = 1953720684;
          goto LABEL_4;
        }
      }
    }

    else
    {
      if (v36 <= 103)
      {
        if (v36 == 102)
        {
          v20 = 0xE400000000000000;
          v21 = 1684632167;
        }

        else
        {
          v20 = 0xEC0000006C616974;
          v21 = 0x6974737265746E69;
        }

        goto LABEL_4;
      }

      if (v36 == 104)
      {
        v20 = 0xE500000000000000;
        v21 = 0x6F65646976;
        goto LABEL_4;
      }

      if (v36 == 105)
      {
        v20 = 0xE500000000000000;
        v21 = 0x6F69647561;
        goto LABEL_4;
      }
    }
  }

  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
LABEL_4:
  sub_1C1A6D5CC();
  v23 = v16[10];
  v22 = v16[11];

  *v14 = 0x6F65646976;
  v14[1] = 0xE500000000000000;
  v14[2] = 0x6F65646976;
  v14[3] = 0xE500000000000000;
  v14[4] = v21;
  v14[5] = v20;
  v24 = (v14 + *(v9 + 32));
  *v24 = 0;
  v24[1] = 0;
  v25 = (v14 + *(v9 + 36));
  *v25 = v23;
  v25[1] = v22;
  v26 = v42;
  sub_1C1A1B65C(v14, v42, type metadata accessor for ImpressionInfo);
  swift_beginAccess();
  v27 = v16[24];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[24] = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_1C19CB390(0, v27[2] + 1, 1, v27);
    v16[24] = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_1C19CB390(v29 > 1, v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  sub_1C1A1B6C4(v26, v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, type metadata accessor for ImpressionInfo);
  v16[24] = v27;
  swift_endAccess();
  sub_1C1A6F65C();
  v31 = sub_1C1A6F8EC();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C1A74920;
  v33 = MEMORY[0x1E69E6158];
  v34 = v37;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = v34;
  *(v32 + 32) = 0x6F65646976;
  *(v32 + 40) = 0xE500000000000000;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 72) = 0x6F65646976;
  *(v32 + 80) = 0xE500000000000000;
  *(v32 + 136) = v33;
  *(v32 + 144) = v34;
  *(v32 + 112) = v21;
  *(v32 + 120) = v20;
  sub_1C1A6F18C();

  sub_1C1A1B72C(v14, type metadata accessor for ImpressionInfo);
}

uint64_t sub_1C1A190F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v77 = a7;
  v78 = a8;
  v76 = a6;
  v79 = a5;
  v81 = a1;
  v82 = a2;
  v74 = type metadata accessor for ImpressionInfo(0);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v69 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v69 - v20);
  swift_beginAccess();
  v22 = v8[27];
  v73 = a3;
  v87[0] = a3;
  v87[1] = a4;
  v72 = a4;
  v84 = v87;

  v23 = sub_1C1A3B838(sub_1C1A1B924, v83, v22);

  v80 = v9;
  if ((v23 & 1) == 0)
  {
    swift_beginAccess();
    v50 = v9[24];
    v51 = *(v50 + 16);

    if (v51)
    {
      v52 = 0;
      v28 = MEMORY[0x1E69E7CC0];
      while (v52 < *(v50 + 16))
      {
        v53 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v54 = *(v75 + 72);
        sub_1C1A1B65C(v50 + v53 + v54 * v52, v16, type metadata accessor for ImpressionInfo);
        v55 = *v16;
        v56 = v16[1];
        v57 = *v16 == v81 && v56 == v82;
        if (v57 || (sub_1C1A6FCEC() & 1) != 0 || v55 == v80[10] && v56 == v80[11] || (sub_1C1A6FCEC()) && ((v58 = v16[2], v59 = v16[3], v58 == v73) && v59 == v72 || (sub_1C1A6FCEC() & 1) != 0 || v58 == v80[10] && v59 == v80[11] || (sub_1C1A6FCEC()) && ((v60 = v16[4], v61 = v16[5], v60 == v79) && v61 == v76 || (sub_1C1A6FCEC() & 1) != 0 || v60 == v80[10] && v61 == v80[11] || (sub_1C1A6FCEC()) && ((v62 = (v16 + *(v74 + 36)), v63 = *v62, v64 = v62[1], *v62 == v77) ? (v65 = v64 == v78) : (v65 = 0), v65 || (sub_1C1A6FCEC() & 1) != 0 || v63 == v80[10] && v64 == v80[11] || (sub_1C1A6FCEC()))
        {
          sub_1C1A1B6C4(v16, v13, type metadata accessor for ImpressionInfo);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C19AA36C(0, *(v28 + 16) + 1, 1);
            v28 = v85[0];
          }

          v68 = *(v28 + 16);
          v67 = *(v28 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1C19AA36C(v67 > 1, v68 + 1, 1);
            v28 = v85[0];
          }

          *(v28 + 16) = v68 + 1;
          result = sub_1C1A1B6C4(v13, v28 + v53 + v68 * v54, type metadata accessor for ImpressionInfo);
        }

        else
        {
          result = sub_1C1A1B72C(v16, type metadata accessor for ImpressionInfo);
        }

        if (v51 == ++v52)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_81;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_79:

    return v28;
  }

  swift_beginAccess();
  v24 = v9[24];
  v25 = *(v24 + 16);

  v70 = v25;
  if (!v25)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_79;
  }

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v27 < *(v24 + 16))
  {
    v29 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v30 = *(v75 + 72);
    v31 = sub_1C1A1B65C(v24 + v29 + v30 * v27, v21, type metadata accessor for ImpressionInfo);
    v32 = *v21;
    v33 = v21[1];
    v34 = *v21 == v81 && v33 == v82;
    if (v34 || (v31 = sub_1C1A6FCEC(), (v31) || v32 == v9[10] && v33 == v9[11] || (v31 = sub_1C1A6FCEC(), (v31)) && ((v72 = v30, v73 = v29, v35 = v80[27], v37 = v21[2], v36 = v21[3], v85[0] = v37, v85[1] = v36, MEMORY[0x1EEE9AC00](v31), *(&v69 - 2) = v85, , v38 = sub_1C1A3B838(sub_1C1A1B960, (&v69 - 4), v35), v9 = v80, , (v38) || v37 == v9[10] && v36 == v9[11] || (sub_1C1A6FCEC()) && ((v39 = v21[4], v40 = v21[5], v39 == v79) && v40 == v76 || (sub_1C1A6FCEC() & 1) != 0 || v39 == v9[10] && v40 == v9[11] || (sub_1C1A6FCEC()) && ((v41 = (v21 + *(v74 + 36)), v42 = *v41, v43 = v41[1], *v41 == v77) ? (v44 = v43 == v78) : (v44 = 0), v44 || (sub_1C1A6FCEC() & 1) != 0 || v42 == v9[10] && v43 == v9[11] || (sub_1C1A6FCEC()))
    {
      sub_1C1A1B6C4(v21, v71, type metadata accessor for ImpressionInfo);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v28;
      if ((v45 & 1) == 0)
      {
        sub_1C19AA36C(0, *(v28 + 16) + 1, 1);
        v28 = v86;
      }

      v46 = v73;
      v47 = v72;
      v49 = *(v28 + 16);
      v48 = *(v28 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1C19AA36C(v48 > 1, v49 + 1, 1);
        v28 = v86;
      }

      *(v28 + 16) = v49 + 1;
      result = sub_1C1A1B6C4(v71, v28 + v46 + v49 * v47, type metadata accessor for ImpressionInfo);
    }

    else
    {
      result = sub_1C1A1B72C(v21, type metadata accessor for ImpressionInfo);
    }

    if (v70 == ++v27)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1C1A198FC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[21];
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v29 = v3 - 1;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5;
      if (v5 >= *(v2 + 16))
      {
        break;
      }

      v8 = *(v2 + 32 + 8 * v5);
      if (*(v8 + 16))
      {
        v10 = v1[2];
        v9 = v1[3];

        v11 = sub_1C1991010(v10, v9);
        if (v12)
        {
          v13 = *(*(v8 + 56) + 8 * v11);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v14 = v13;
            sub_1C1A6F3BC();
          }
        }

        if (*(v8 + 16))
        {
          v15 = sub_1C1991010(v1[4], v1[5]);
          if (v16)
          {
            v17 = *(*(v8 + 56) + 8 * v15);
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v18 = v17;
              sub_1C1A6F3BC();
            }
          }

          if (*(v8 + 16))
          {
            v19 = sub_1C1991010(v1[6], v1[7]);
            if (v20)
            {
              v21 = *(*(v8 + 56) + 8 * v19);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v22 = v21;
                sub_1C1A6F3BC();
              }
            }

            if (*(v8 + 16))
            {
              v23 = sub_1C1991010(v1[8], v1[9]);
              if (v24)
              {
                v25 = *(*(v8 + 56) + 8 * v23);
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v26 = v25;
                  sub_1C1A6F3BC();
                }
              }
            }
          }
        }
      }

      else
      {
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C19AA3B0(0, *(v6 + 16) + 1, 1);
      }

      v28 = *(v6 + 16);
      v27 = *(v6 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_1C19AA3B0((v27 > 1), v28 + 1, 1);
      }

      v5 = v7 + 1;
      *(v6 + 16) = v28 + 1;
      *(v6 + 8 * v28 + 32) = v8;
      if (v29 == v7)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_28:

    return v6;
  }

  return result;
}

uint64_t sub_1C1A19D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v117 = a2;
  v112 = type metadata accessor for ImpressionInfo(0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1C1A6D5DC();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v124 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D5CC();
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_65:
    v90 = 1;
    goto LABEL_79;
  }

  v127 = a1 + 32;
  v122 = v9;
  swift_beginAccess();
  v115 = 0;
  v20 = 0;
  v132 = "n>16@0:8";
  v133 = &OBJC_IVAR____TtC17PromotedContentUI15AdPolicyManager_launchTimestamps;
  v108 = a3;
  v109 = a4;
  v22 = a3 == 0x6974737265746E69 && a4 == 0xEC0000006C616974;
  v113 = v22;
  v105 = a5;
  v106 = a6;
  v24 = a5 == 0x6974737265746E69 && a6 == 0xEC0000006C616974;
  v107 = v24;
  v110 = 1;
  v126 = xmmword_1C1A73CD0;
  v123 = xmmword_1C1A73A30;
  v114 = 1;
  v116 = 1;
  v121 = 1;
  v125 = v19;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v25 = v20;
        while (1)
        {
          if (v25 >= v19)
          {
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v20 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_81;
          }

          v26 = *(v127 + 8 * v25);
          if (!*(v26 + 16))
          {
            goto LABEL_16;
          }

          v27 = sub_1C1991010(0x79547963696C6F70, 0xEA00000000006570);
          if ((v28 & 1) == 0 || (v135 = *(*(v26 + 56) + 8 * v27), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || !*(v26 + 16) || (v29 = v134, v30 = sub_1C1991010(0x61567963696C6F70, 0xEB0000000065756CLL), (v31 & 1) == 0))
          {

            goto LABEL_16;
          }

          v32 = *(*(v26 + 56) + 8 * v30);
          swift_unknownObjectRetain();

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (!v33)
          {
            swift_unknownObjectRelease();
            goto LABEL_16;
          }

          v34 = v33;
          v130 = v32;
          v131 = v25 + 1;
          sub_1C1A6F65C();
          v128 = sub_1C198FB8C(0, &qword_1EDE63F30);
          v35 = sub_1C1A6F8EC();
          v129 = sub_1C19A9E58(&unk_1EBF03FD0);
          v36 = swift_allocObject();
          *(v36 + 16) = v126;
          v37 = a7;
          v38 = [a7 identifier];
          v39 = sub_1C1A6F3CC();
          v41 = v40;

          *(v36 + 56) = MEMORY[0x1E69E6158];
          v42 = sub_1C199E518();
          *(v36 + 32) = v39;
          *(v36 + 40) = v41;
          *(v36 + 96) = MEMORY[0x1E69E6530];
          *(v36 + 104) = MEMORY[0x1E69E65A8];
          *(v36 + 64) = v42;
          *(v36 + 72) = v29;
          sub_1C1A6F18C();

          if (v29 != 3)
          {
            break;
          }

          a7 = v37;
          if (sub_1C1A1AD2C(v124, v34))
          {
            goto LABEL_58;
          }

          sub_1C1A6F65C();
          v43 = sub_1C1A6F8EC();
          v44 = swift_allocObject();
          *(v44 + 16) = v123;
          v45 = [v37 identifier];
          v46 = sub_1C1A6F3CC();
          v48 = v47;

          *(v44 + 56) = MEMORY[0x1E69E6158];
          *(v44 + 64) = v42;
          *(v44 + 32) = v46;
          *(v44 + 40) = v48;
          sub_1C1A6F18C();

          swift_unknownObjectRelease();
          v121 = 0;
          ++v25;
          v19 = v125;
          if (v131 == v125)
          {
            goto LABEL_76;
          }
        }

        if (v29 > 3)
        {
          a7 = v37;
          if (v29 == 4)
          {
            v68 = *(*(v122 + 192) + 16);
            if (v68 >= [v34 integerValue])
            {
              goto LABEL_58;
            }

            sub_1C1A6F65C();
            v69 = sub_1C1A6F8EC();
            v70 = swift_allocObject();
            *(v70 + 16) = v123;
            v71 = [v37 identifier];
            v72 = sub_1C1A6F3CC();
            v74 = v73;

            *(v70 + 56) = MEMORY[0x1E69E6158];
            *(v70 + 64) = v42;
            *(v70 + 32) = v72;
            *(v70 + 40) = v74;
            sub_1C1A6F18C();

            swift_unknownObjectRelease();
            v116 = 0;
            v19 = v125;
            v20 = v131;
            if (v131 != v125)
            {
              continue;
            }
          }

          else
          {
            if (v29 != 7)
            {
              goto LABEL_58;
            }

            sub_1C1A6F65C();
            v56 = sub_1C1A6F8EC();
            v57 = swift_allocObject();
            *(v57 + 16) = v123;
            v58 = [v37 identifier];
            v59 = sub_1C1A6F3CC();
            v61 = v60;

            *(v57 + 56) = MEMORY[0x1E69E6158];
            *(v57 + 64) = v42;
            *(v57 + 32) = v59;
            *(v57 + 40) = v61;
            sub_1C1A6F18C();

            swift_unknownObjectRelease();
            v115 = 1;
            v19 = v125;
            v20 = v131;
            if (v131 != v125)
            {
              continue;
            }

            if (v121 & v116)
            {
LABEL_62:
              if ((v114 | v110))
              {
                goto LABEL_65;
              }

LABEL_63:
              [objc_msgSend(a7 metricsHelper];
              swift_unknownObjectRelease();
              sub_1C1A6F65C();
              sub_1C198FB8C(0, &qword_1EDE63F30);
              v84 = sub_1C1A6F8EC();
              sub_1C19A9E58(&unk_1EBF03FD0);
              v85 = swift_allocObject();
              *(v85 + 16) = v123;
              v86 = [a7 identifier];
              v87 = sub_1C1A6F3CC();
              v89 = v88;

              *(v85 + 56) = MEMORY[0x1E69E6158];
              *(v85 + 64) = sub_1C199E518();
              *(v85 + 32) = v87;
              *(v85 + 40) = v89;
              sub_1C1A6F18C();

              goto LABEL_78;
            }
          }

          goto LABEL_76;
        }

        break;
      }

      a7 = v37;
      if (!v29)
      {
        if (sub_1C1A1B7F4(v124, v117, v34))
        {
          goto LABEL_58;
        }

        sub_1C1A6F65C();
        v62 = sub_1C1A6F8EC();
        v63 = swift_allocObject();
        *(v63 + 16) = v123;
        v64 = [v37 identifier];
        v65 = sub_1C1A6F3CC();
        v67 = v66;

        *(v63 + 56) = MEMORY[0x1E69E6158];
        *(v63 + 64) = v42;
        *(v63 + 32) = v65;
        *(v63 + 40) = v67;
        sub_1C1A6F18C();

        swift_unknownObjectRelease();
        v114 = 0;
        v19 = v125;
        v20 = v131;
        if (v131 != v125)
        {
          continue;
        }

        if (v121 & v116)
        {
          if (v115)
          {
            if (v110)
            {
              goto LABEL_65;
            }

            goto LABEL_63;
          }

LABEL_82:
          v91 = 9001;
          goto LABEL_69;
        }

LABEL_76:
        sub_1C1A6F65C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v98 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v99 = swift_allocObject();
        *(v99 + 16) = v123;
        v100 = [a7 identifier];
        v101 = sub_1C1A6F3CC();
        v103 = v102;

        *(v99 + 56) = MEMORY[0x1E69E6158];
        *(v99 + 64) = sub_1C199E518();
        *(v99 + 32) = v101;
        *(v99 + 40) = v103;
        sub_1C1A6F18C();

        [objc_msgSend(a7 metricsHelper)];
        goto LABEL_77;
      }

      break;
    }

    if (v29 != 1)
    {
      goto LABEL_58;
    }

    if (v113 || ((sub_1C1A6FCEC() | v107) & 1) != 0 || (sub_1C1A6FCEC() & 1) != 0)
    {
      v49 = [v37 numOfArticlesSinceInterstitial];
      if (v49 < [v34 integerValue])
      {
        goto LABEL_37;
      }

LABEL_58:
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = *(v117 + 16);
      if (!v75)
      {
        goto LABEL_58;
      }

      v76 = (v118 + *(v112 + 32));
      v77 = v117 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v78 = *(v111 + 72);
      while (1)
      {
        v79 = v118;
        sub_1C1A1B65C(v77, v118, type metadata accessor for ImpressionInfo);
        v81 = *v76;
        v80 = v76[1];
        sub_1C1A1B72C(v79, type metadata accessor for ImpressionInfo);
        if (v81 != 0.0 || v80 != 0.0)
        {
          if (qword_1EBF035A0 != -1)
          {
            swift_once();
          }

          v82 = vabdd_f64(v80, a9) / *&qword_1EBF07670;
          [v34 floatValue];
          if (v83 > v82)
          {
            break;
          }
        }

        v77 += v78;
        if (!--v75)
        {
          goto LABEL_58;
        }
      }

LABEL_37:
      sub_1C1A6F65C();
      v50 = sub_1C1A6F8EC();
      v51 = swift_allocObject();
      *(v51 + 16) = v123;
      v52 = [a7 identifier];
      v53 = sub_1C1A6F3CC();
      v55 = v54;

      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = v42;
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      sub_1C1A6F18C();

      swift_unknownObjectRelease();
      v110 = 0;
    }

    v19 = v125;
    v20 = v131;
LABEL_16:
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

  if ((v121 & v116 & 1) == 0)
  {
    goto LABEL_76;
  }

  if (v115)
  {
    goto LABEL_62;
  }

  if (v114 & v110)
  {
    goto LABEL_65;
  }

  if (v114)
  {
    v91 = 9002;
  }

  else
  {
    v91 = 9001;
  }

LABEL_69:
  sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v92 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v93 = swift_allocObject();
  *(v93 + 16) = v123;
  v94 = [a7 identifier];
  v95 = sub_1C1A6F3CC();
  v97 = v96;

  *(v93 + 56) = MEMORY[0x1E69E6158];
  *(v93 + 64) = sub_1C199E518();
  *(v93 + 32) = v95;
  *(v93 + 40) = v97;
  sub_1C1A6F18C();

  [objc_msgSend(a7 metricsHelper)];
LABEL_77:
  swift_unknownObjectRelease();
LABEL_78:
  v90 = 0;
LABEL_79:
  (*(v119 + 8))(v124, v120);
  return v90;
}

uint64_t sub_1C1A1AD2C(uint64_t a1, void *a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_1C1A6F3CC();
    v15 = v14;

    swift_beginAccess();
    v16 = *(v2 + 208);
    if (*(v16 + 16))
    {
      v17 = sub_1C1991010(v13, v15);
      if (v18)
      {
        (*(v5 + 16))(v7, *(v16 + 56) + *(v5 + 72) * v17, v4);
        (*(v5 + 32))(v10, v7, v4);
        swift_endAccess();

        result = sub_1C1A6D50C();
        if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v20 > -9.22337204e18)
        {
          if (v20 < 9.22337204e18)
          {
            v21 = v20;
            v22 = [a2 integerValue];
            (*(v5 + 8))(v10, v4);
            return v22 <= v21;
          }

LABEL_14:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_14;
      }
    }

    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1C1A1AF94()
{

  return v0;
}

uint64_t sub_1C1A1B034()
{
  sub_1C1A1AF94();

  return swift_deallocClassInstance();
}

void sub_1C1A1B0F8()
{
  sub_1C1A6D5DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1A1B1DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1A1B214()
{
  result = sub_1C1A6D5DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1C1A1B2A4(void *a1)
{
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 bestRepresentation];
  if (result)
  {
    v8 = result;
    v9 = [result adPolicyData];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1C1A6DDDC();

      if (!v11)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return 0;
      }

      v12 = sub_1C1A6E03C();
      if (v12 == 15001)
      {
        v16 = [v8 id];
        sub_1C1A6D60C();

        v17 = sub_1C1A6D5EC();
        swift_unknownObjectRelease();
        (*(v3 + 8))(v6, v2);
        return v17;
      }

      if (v12 == 15005)
      {
        sub_1C1A6E33C();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
          v13 = sub_1C1A6E2EC();
          swift_unknownObjectRelease();
          if (v13)
          {
            v14 = [v13 stringValue];

            v15 = sub_1C1A6F3CC();
            swift_unknownObjectRelease();
            return v15;
          }
        }

        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1A1B4E4(void *a1)
{
  v1 = [a1 bestRepresentation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 adPolicyData];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1C1A6DDFC();
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 adPolicyData];
    if (v7)
    {
      v8 = v7;
      sub_1C1A6DDEC();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v6 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 0;
  }

  return v5;
}

uint64_t sub_1C1A1B65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A1B6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1A1B72C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1A1B78C(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1A1B7F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v5 = *(a2 + 16);
  while (1)
  {
    v6 = v4;
    if (v5 == v4)
    {
      return v5 == v6;
    }

    type metadata accessor for ImpressionInfo(0);
    result = sub_1C1A6D50C();
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v8 <= -9.22337204e18)
    {
      goto LABEL_9;
    }

    if (v8 >= 9.22337204e18)
    {
      goto LABEL_10;
    }

    v9 = v8;
    v10 = [a3 integerValue];
    v4 = v6 + 1;
    if (v10 > v9)
    {
      return v5 == v6;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void *sub_1C1A1B988(uint64_t a1)
{
  v24 = a1;
  v2 = sub_1C1A6D48C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SponsorshipAdPreviewConfiguration();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6EB6C();
  v13 = sub_1C1A6EA4C();
  sub_1C1A6EB0C();
  v23 = [objc_opt_self() sharedApplication];
  sub_1C1A0DB4C(a1, v12);
  v14 = &v12[v10[13]];
  v16 = *v14;
  v15 = v14[1];
  v17 = *(v3 + 16);
  v17(v8, &v12[v10[14]], v2);
  v17(v5, &v12[v10[15]], v2);
  objc_allocWithZone(type metadata accessor for MastheadSponsorshipAdView());

  v18 = sub_1C19D00B0(v16, v15, v8, v5);
  sub_1C1A0DBB0(v12);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = v25;
  *&v25[OBJC_IVAR____TtC17PromotedContentUI33PromotedMastheadSponsorshipAdView_mastheadSponsorshipLockupView] = v18;
  v20 = sub_1C1A0DC54(v13, 0, 0, v23, v19);

  sub_1C1A0DBB0(v24);
  return v20;
}

uint64_t sub_1C1A1BC24()
{
  sub_1C198FB8C(0, &qword_1EDE63970);
  v0 = sub_1C19CEFB8();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_context) promotedContentWithoutFetchWithType:6 size:{0.0, 0.0}];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  sub_1C1A6E9EC();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  type metadata accessor for AppStoreDataProviderSession();
  v6 = swift_allocObject();
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
  swift_unknownObjectRetain_n();
  sub_1C1A6D4FC();
  *(v6 + 2) = v5;
  v8 = *&v1[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_apContentData];
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  result = sub_1C1A6F9EC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v19 = v7;
    v18 = MEMORY[0x1C69055B0](0, v8);

    v10 = v18;
    v7 = v19;
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_9:
    *(v6 + 3) = v10;
    v11 = v10 != 0;
LABEL_15:
    *(v6 + 4) = v3;
    v12 = OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start;
    swift_beginAccess();
    v13 = sub_1C1A6D5DC();
    (*(*(v13 - 8) + 24))(&v6[v7], &v1[v12], v13);
    swift_endAccess();
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v14 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E6530];
    *(v15 + 16) = xmmword_1C1A73A30;
    v17 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v11;
    sub_1C1A6F18C();

    swift_unknownObjectRelease();

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1C1A1BF34(uint64_t a1)
{
  v2 = sub_1C1A6D5DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = v4;

    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v8 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1A73A30;
    v10 = *(a1 + 24) != 0;
    v11 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = MEMORY[0x1E69E6530];
    *(v9 + 64) = v11;
    *(v9 + 32) = v10;
    sub_1C1A6F18C();

    v12 = *(a1 + 24);
    v23 = v12;
    if (v12)
    {
      sub_1C19A9E58(&qword_1EBF03E88);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C1A74830;
      *(v13 + 32) = v12;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(a1 + 16);
    v16 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
    swift_beginAccess();
    v17 = *(v3 + 16);
    v17(v6, a1 + v16, v7);
    v18 = type metadata accessor for AppStoreSession();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_context] = v15;
    *&v19[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_apContentData] = v13;
    v17(&v19[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start], v6, v7);
    v24.receiver = v19;
    v24.super_class = v18;
    v20 = v23;
    v21 = v15;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    (*(v3 + 8))(v6, v7);
    sub_1C198FB8C(0, &qword_1EDE63970);
    sub_1C19CF178(v22);
  }

  else
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v14 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C198FB8C(0, &qword_1EDE63970);
    sub_1C19CF178(0);
  }
}

id sub_1C1A1C3FC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69C6140]) init];
  qword_1EDE63550 = result;
  return result;
}

id sub_1C1A1C434(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1C1A6F39C();
  }

  else
  {
    v4 = 0;
  }

  [objc_opt_self() setProxyURL_];

  sub_1C198FB8C(0, &qword_1EDE63F38);
  sub_1C1A6F6BC();

  return [a3 endRequests];
}

void sub_1C1A1C4DC()
{
  if ((byte_1EDE63538 & 1) == 0)
  {
    [objc_opt_self() start];
    byte_1EDE63538 = 1;
  }
}

uint64_t sub_1C1A1C524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1C1A6F3CC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_1C1A1C5A0(uint64_t result)
{
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v1 = result;
      swift_unknownObjectRetain();
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v2 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      v3 = [v1 sendWebIdentifier];
      LOBYTE(v1) = [v3 BOOLValue];

      byte_1EDE63529 = v1;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1C1A1C6E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE63540 != -1)
  {
    swift_once();
  }

  v4 = [qword_1EDE63550 webProcessConfigurationWithBackgroundPriority];
  v5 = type metadata accessor for PromotedContentWebView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = 0;
  v7 = &v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface];
  *v7 = 0u;
  v7[1] = 0u;
  v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad] = 0;
  v8 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  v9 = objc_allocWithZone(MEMORY[0x1E69861D8]);
  v10 = v4;
  *&v6[v8] = [v9 initWithOptions_];
  v11 = &v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_adIdentifier];
  *v11 = a1;
  v11[1] = a2;
  *&v6[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_maxRequestCount] = 100;
  v23.receiver = v6;
  v23.super_class = v5;

  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_configuration_, v10, 0.0, 0.0, 0.0, 0.0);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  v16 = sub_1C1A6F39C();
  [v14 setAccessibilityIdentifier_];

  [v14 setAccessibilityIgnoresInvertColors_];
  v17 = [v14 scrollView];
  [v17 setScrollEnabled_];

  v18 = [v14 scrollView];
  [v18 setContentInsetAdjustmentBehavior_];

  [v14 setAllowsLinkPreview_];
  if (byte_1EDE63529 == 1)
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73A30;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C199E518();
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;

    sub_1C1A6F18C();

    v21 = sub_1C1A6F39C();
    [v14 updateUserAgentWithAdIdentifier:v21 andMaxRequestCount:100];
  }

  sub_1C1A65AA0();

  return v14;
}

id sub_1C1A1CAB4(void *a1, char a2)
{
  v72 = sub_1C1A6D62C();
  v4 = *(v72 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v72).n128_u64[0];
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_1EDE63538 & 1) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E698A048]) initWithDeliveryBlock_];
    v9 = [v8 proxyURL];
    [v8 endRequests];
    v10 = objc_opt_self();
    [v10 setProxyURL_];

    [v10 start];
    byte_1EDE63538 = 1;
  }

  v73 = [a1 bestRepresentation];
  if (qword_1EDE63540 != -1)
  {
    swift_once();
  }

  v11 = &selRef_webProcessConfigurationWithBackgroundPriority;
  if (a2)
  {
    v11 = &selRef_videoConfiguration;
    v12 = -1;
  }

  else
  {
    v12 = 100;
  }

  v13 = [qword_1EDE63550 *v11];
  sub_1C1A6F67C();
  v14 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v75 = "n>16@0:8";
  v76 = "iderSessionPersistence";
  v78 = v14;
  v15 = sub_1C1A6F8EC();
  v77 = sub_1C19A9E58(&unk_1EBF03FD0);
  v16 = swift_allocObject();
  v74 = xmmword_1C1A73A30;
  *(v16 + 16) = xmmword_1C1A73A30;
  v80 = a1;
  v17 = [a1 identifier];
  v18 = sub_1C1A6F3CC();
  v20 = v19;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  v79 = sub_1C199E518();
  *(v16 + 64) = v79;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_1C1A6F18C();

  v21 = [objc_opt_self() nonPersistentDataStore];
  [v13 setWebsiteDataStore_];

  sub_1C1A6D61C();
  v22 = sub_1C1A6D5EC();
  v24 = v23;
  (*(v4 + 8))(v7, v72);
  v25 = type metadata accessor for PromotedContentWebView();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = 0;
  v27 = &v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface];
  *v27 = 0u;
  v27[1] = 0u;
  v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad] = 0;
  v28 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  v29 = objc_allocWithZone(MEMORY[0x1E69861D8]);

  *&v26[v28] = [v29 initWithOptions_];
  v30 = &v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_adIdentifier];
  *v30 = v22;
  v30[1] = v24;
  v71 = v25;
  v72 = v12;
  *&v26[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_maxRequestCount] = v12;
  v81.receiver = v26;
  v81.super_class = v25;
  v31 = objc_msgSendSuper2(&v81, sel_initWithFrame_configuration_, v13, 0.0, 0.0, 0.0, 0.0);
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  [v33 setBackgroundColor_];

  v35 = sub_1C1A6F39C();
  [v33 setAccessibilityIdentifier_];

  [v33 setAccessibilityIgnoresInvertColors_];
  v36 = [v33 scrollView];
  [v36 setScrollEnabled_];

  v37 = [v33 scrollView];
  [v37 setContentInsetAdjustmentBehavior_];

  [v33 setAllowsLinkPreview_];
  [v33 setupInternalProperties];
  if (byte_1EDE63529 == 1)
  {
    sub_1C1A6F64C();
    v38 = sub_1C1A6F8EC();
    v39 = v22;
    v40 = swift_allocObject();
    *(v40 + 16) = v74;
    v41 = [v80 identifier];
    v42 = sub_1C1A6F3CC();
    v44 = v43;

    v45 = v79;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v45;
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    sub_1C1A6F18C();

    v22 = v39;

    v46 = sub_1C1A6F39C();
    [v33 updateUserAgentWithAdIdentifier:v46 andMaxRequestCount:v72];
  }

  if (!v73)
  {
    goto LABEL_19;
  }

  sub_1C1A6E33C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  v47 = sub_1C1A6E32C();
  if (!v48)
  {
    swift_unknownObjectRelease();
LABEL_19:

    sub_1C1A6F66C();
    v62 = sub_1C1A6F8EC();
    v63 = swift_allocObject();
    *(v63 + 16) = v74;
    v64 = [v80 identifier];
    v65 = sub_1C1A6F3CC();
    v67 = v66;

    v68 = v79;
    *(v63 + 56) = MEMORY[0x1E69E6158];
    *(v63 + 64) = v68;
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    sub_1C1A6F18C();

    goto LABEL_20;
  }

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    swift_unknownObjectRelease();

    goto LABEL_19;
  }

  LODWORD(v74) = sub_1C1A6F67C();
  v78 = sub_1C1A6F8EC();
  v50 = v22;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C1A74920;
  v52 = [v80 identifier];
  v53 = sub_1C1A6F3CC();
  v55 = v54;

  v56 = MEMORY[0x1E69E6158];
  v57 = v79;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = v57;
  *(v51 + 32) = v53;
  *(v51 + 40) = v55;
  *(v51 + 96) = v56;
  *(v51 + 104) = v57;
  *(v51 + 72) = v50;
  *(v51 + 80) = v24;
  *(v51 + 136) = v71;
  *(v51 + 144) = sub_1C1A1D3D0();
  *(v51 + 112) = v33;
  v58 = v33;
  v59 = v78;
  sub_1C1A6F18C();

  v60 = sub_1C1A6F39C();

  v61 = [v58 loadHTMLString:v60 baseURL:0];
  swift_unknownObjectRelease();

LABEL_20:
  sub_1C1A65AA0();

  return v33;
}

unint64_t sub_1C1A1D3D0()
{
  result = qword_1EDE637F8;
  if (!qword_1EDE637F8)
  {
    type metadata accessor for PromotedContentWebView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE637F8);
  }

  return result;
}

id sub_1C1A1D434()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C1A1D500()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setClipsToBounds_];
    [v4 setContentMode_];
    [v4 setAccessibilityIgnoresInvertColors_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C1A1D660(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView] = 0;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_style] = a1;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_imageViewContentMode] = a2;
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_aspectRatio] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BlurImageView();
  v4 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setClipsToBounds_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setOpaque_];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity_];

  v6 = sub_1C1A1D500();
  [v4 addSubview_];

  v7 = sub_1C1A1D434();
  [v4 addSubview_];

  sub_1C1A1D7B8();
  return v4;
}

void sub_1C1A1D7B8()
{
  v1 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1A76CA0;
  v3 = sub_1C1A1D434();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView;
  v8 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___visualEffectView] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v2 + 48) = v13;
  v14 = [*&v0[v7] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 56) = v16;
  v17 = sub_1C1A1D500();
  v18 = [v17 leadingAnchor];

  v19 = [v0 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v2 + 64) = v20;
  v21 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView;
  v22 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView____lazy_storage___blurImageView] trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v2 + 72) = v24;
  v25 = [*&v0[v21] bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v2 + 80) = v27;
  v28 = [*&v0[v21] heightAnchor];
  v29 = [*&v0[v21] widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 multiplier:*&v0[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_aspectRatio]];

  *(v2 + 88) = v30;
  sub_1C19C2864();
  v31 = sub_1C1A6F50C();

  [v1 activateConstraints_];
}

id sub_1C1A1DBC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1A1DC74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03C60);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C19A1A5C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C19916E4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C19916E4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C19916E4(v31, v32);
    result = sub_1C1A6FA4C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C19916E4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

unint64_t sub_1C1A1DF3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03D08);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1C19916E4(&v22, v24);
        sub_1C19916E4(v24, v25);
        sub_1C19916E4(v25, &v23);
        result = sub_1C1991010(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1C199935C(v11);
          result = sub_1C19916E4(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1C19916E4(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

uint64_t sub_1C1A1E190(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03C60);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C19916E4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C19916E4(v29, v30);
    result = sub_1C1A6FA4C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1C19916E4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

unint64_t sub_1C1A1E458(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03D08);
    v2 = sub_1C1A6FBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1C19916E4(&v22, v24);
        sub_1C19916E4(v24, v25);
        sub_1C19916E4(v25, &v23);
        result = sub_1C1991010(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1C199935C(v11);
          result = sub_1C19916E4(&v23, v11);
          v8 = v12;
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1C19916E4(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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