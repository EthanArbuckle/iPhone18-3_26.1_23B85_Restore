uint64_t sub_1760@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriVideoUIError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriVideoUIError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1880);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18C8()
{
  result = qword_18248;
  if (!qword_18248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18248);
  }

  return result;
}

Swift::Int sub_1968()
{
  sub_E040();
  sub_E050(0);
  return sub_E060();
}

Swift::Int sub_19B4()
{
  sub_E040();
  sub_E050(0);
  return sub_E060();
}

unint64_t sub_1A24()
{
  result = qword_18250;
  if (!qword_18250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18250);
  }

  return result;
}

uint64_t sub_1A88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D800();

  return v1;
}

uint64_t sub_1AFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D810();
}

uint64_t sub_1B6C()
{
  v10 = sub_DF00();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_DEE0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_DDC0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_2F68(0, &qword_183D0, OS_dispatch_queue_ptr);
  sub_DDB0();
  v11 = &_swiftEmptyArrayStorage;
  sub_2ED8(&qword_183F8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2C20(&qword_18400, &qword_FB80);
  sub_2F20(&qword_18408, &qword_18400, &qword_FB80);
  sub_DF60();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_DF20();
  qword_18258 = result;
  return result;
}

id sub_1DE0()
{
  v0 = [objc_allocWithZone(NSCache) init];
  [v0 setCountLimit:40];
  result = [v0 setTotalCostLimit:52428800];
  qword_18260 = v0;
  return result;
}

uint64_t sub_1E44()
{
  sub_29D0();
  v1 = OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader__image;
  v2 = sub_2C20(&qword_18418, &unk_FBD0);
  sub_30D8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader_cancellable);

  return v0;
}

uint64_t sub_1EB8()
{
  sub_1E44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ImageLoader()
{
  result = qword_182A0;
  if (!qword_182A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F64()
{
  sub_2A28();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1FFC(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v91 = v2;
  v89 = v4;
  v5 = sub_D6C0();
  v6 = sub_30B8(v5);
  v87 = v7;
  v88 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v85 = v10;
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_2C20(&qword_18398, &qword_FB58) - 8) + 64);
  sub_30CC();
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = sub_DE80();
  v16 = sub_30B8(v15);
  v76 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2C20(&qword_183A0, &qword_FB60);
  sub_30B8(v22);
  v77 = v23;
  v25 = *(v24 + 64);
  sub_30CC();
  __chkstk_darwin(v26);
  v28 = &v75 - v27;
  v29 = sub_2C20(&qword_183A8, &qword_FB68);
  v30 = sub_30B8(v29);
  v78 = v31;
  v79 = v30;
  v33 = *(v32 + 64);
  sub_30CC();
  __chkstk_darwin(v34);
  v36 = &v75 - v35;
  v37 = sub_2C20(&qword_183B0, &qword_FB70);
  v38 = sub_30B8(v37);
  v80 = v39;
  v81 = v38;
  v41 = *(v40 + 64);
  sub_30CC();
  __chkstk_darwin(v42);
  v44 = &v75 - v43;
  v45 = sub_2C20(&qword_183B8, &qword_FB78);
  v46 = sub_30B8(v45);
  v83 = v47;
  v84 = v46;
  v49 = *(v48 + 64);
  sub_30CC();
  __chkstk_darwin(v50);
  v82 = &v75 - v51;
  if (qword_18208 != -1)
  {
    swift_once();
  }

  v52 = qword_18260;
  v90 = a1;
  sub_D6A0(&ImageLoader);
  v54 = v53;
  v55 = [v52 objectForKey:v53];

  if (v55)
  {
    v90 = v55;
    sub_1AFC();
    v56 = v90;
  }

  else
  {
    v57 = [objc_opt_self() sharedSession];
    sub_DE90();

    sub_2C20(&unk_182B8, &qword_FB00);
    sub_2ED8(&qword_183C0, &type metadata accessor for NSURLSession.DataTaskPublisher);
    sub_D840();
    (*(v76 + 8))(v21, v15);
    v92 = 0;
    sub_2F20(&qword_183C8, &qword_183A0, &qword_FB60);
    sub_D830();
    (*(v77 + 8))(v28, v22);
    if (qword_18200 != -1)
    {
      swift_once();
    }

    v58 = qword_18258;
    v92 = qword_18258;
    sub_DEF0();
    sub_30EC();
    sub_2F68(0, &qword_183D0, OS_dispatch_queue_ptr);
    sub_2F20(&qword_183D8, &qword_183A8, &qword_FB68);
    sub_2C90();
    v59 = v58;
    v60 = v79;
    sub_D860();
    sub_2CF8(v14);

    (*(v78 + 8))(v36, v60);
    v61 = sub_DF10();
    v92 = v61;
    sub_30EC();
    sub_2F20(&qword_183E8, &qword_183B0, &qword_FB70);
    v62 = v81;
    v63 = v82;
    sub_D850();
    sub_2CF8(v14);

    (*(v80 + 8))(v44, v62);
    v64 = swift_allocObject();
    v65 = v91;
    swift_weakInit();
    v67 = v86;
    v66 = v87;
    v68 = v88;
    (*(v87 + 16))(v86, v90, v88);
    v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v70 = (v85 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    (*(v66 + 32))(v71 + v69, v67, v68);
    *(v71 + v70) = v64;
    *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
    sub_2F20(&qword_183F0, &qword_183B8, &qword_FB78);
    v72 = v84;
    v73 = sub_D870();

    (*(v83 + 8))(v63, v72);
    v74 = *(v65 + OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader_cancellable);
    *(v65 + OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader_cancellable) = v73;
  }
}

id sub_280C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2F68(0, &qword_18410, UIImage_ptr);
  sub_2FA8(v3, v4);
  result = sub_2874(v3, v4);
  *a2 = result;
  return result;
}

id sub_2874(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_D6D0().super.isa;
  v6 = [v4 initWithData:isa];

  sub_3000(a1, a2);
  return v6;
}

void sub_28EC(id *a1)
{
  if (*a1)
  {
    v1 = qword_18208;
    v2 = *a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = qword_18260;
    sub_D6A0(&ImageLoader);
    v5 = v4;
    [v3 setObject:v2 forKey:v4];

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = v2;
      sub_1AFC();
    }
  }
}

uint64_t sub_29D0()
{
  if (*(v0 + OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader_cancellable))
  {

    sub_D7D0();
  }

  return result;
}

void sub_2A28()
{
  if (!qword_182B0)
  {
    sub_2A8C(&unk_182B8, &qword_FB00);
    v0 = sub_D820();
    if (!v1)
    {
      atomic_store(v0, &qword_182B0);
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

uint64_t sub_2AE0()
{
  v1 = sub_2C20(&qword_18418, &unk_FBD0);
  sub_30B8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_30CC();
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader__image;
  v11[1] = 0;
  sub_2C20(&unk_182B8, &qword_FB00);
  sub_D7F0();
  (*(v3 + 32))(v0 + v9, v8, v1);
  *(v0 + OBJC_IVAR____TtC17SiriVideoUIPlugin11ImageLoader_cancellable) = 0;
  return v0;
}

uint64_t sub_2BE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageLoader();
  result = sub_D7E0();
  *a1 = result;
  return result;
}

uint64_t sub_2C20(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2C90()
{
  result = qword_183E0;
  if (!qword_183E0)
  {
    sub_2F68(255, &qword_183D0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183E0);
  }

  return result;
}

uint64_t sub_2CF8(uint64_t a1)
{
  v2 = sub_2C20(&qword_18398, &qword_FB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2D98()
{
  v1 = sub_D6C0();
  sub_30D8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_2E30(id *a1)
{
  v3 = *(sub_D6C0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_28EC(a1);
}

uint64_t sub_2ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2F20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2F68(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2FA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_3000(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_3058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1A88();
  *a2 = result;
  return result;
}

uint64_t sub_3084(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1AFC();
}

uint64_t sub_30EC()
{

  return sub_2C68(v1, 1, 1, v0);
}

__n128 sub_310C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3120(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_3160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_31D4()
{
  v1 = v0;
  v2 = sub_DAB0();
  v6 = 0;
  sub_337C(v1, __src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v10, __src, 0x59uLL);
  sub_3678(__dst, v4, &qword_18420, &qword_FC98);
  sub_36E0(v10, &qword_18420, &qword_FC98);
  memcpy(&v5[7], __dst, 0x59uLL);
  LOBYTE(v1) = v6;
  sub_DD40();
  sub_D970();
  memcpy(&v7[7], v8, 0x70uLL);
  v4[0] = v2;
  v4[1] = 0;
  LOBYTE(v4[2]) = v1;
  memcpy(&v4[2] + 1, v5, 0x60uLL);
  memcpy(&v4[14] + 1, v7, 0x77uLL);
  sub_2C20(&qword_18428, &qword_FCA0);
  sub_3558();
  sub_DC00();
  memcpy(__src, v4, sizeof(__src));
  return sub_36E0(__src, &qword_18428, &qword_FCA0);
}

uint64_t sub_337C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];

  sub_79B8(v8, &v17);
  KeyPath = swift_getKeyPath();
  v10 = v17;
  v11 = v18;
  v12 = v18;
  v20[0] = v17;
  v20[1] = v18;
  v13 = v19;
  *&v21 = v19;
  *(&v21 + 1) = KeyPath;
  *&v22 = v4;
  *(&v22 + 1) = v3;
  *(a2 + 16) = v17;
  *(a2 + 32) = v11;
  v14 = v22;
  *(a2 + 48) = v21;
  *(a2 + 64) = v14;
  v16[64] = 1;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v23[0] = v10;
  v23[1] = v12;
  v24 = v13;
  v25 = KeyPath;
  v26 = v4;
  v27 = v3;

  sub_3678(v20, v16, &qword_18448, &unk_FCD8);
  sub_36E0(v23, &qword_18448, &unk_FCD8);
}

uint64_t sub_348C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_9664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_34B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_96A0();
}

uint64_t sub_351C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_31D4();
}

unint64_t sub_3558()
{
  result = qword_18430;
  if (!qword_18430)
  {
    sub_2A8C(&qword_18428, &qword_FCA0);
    sub_35E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18430);
  }

  return result;
}

unint64_t sub_35E4()
{
  result = qword_18438;
  if (!qword_18438)
  {
    sub_2A8C(&qword_18440, &qword_FCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18438);
  }

  return result;
}

uint64_t sub_3648@<X0>(uint64_t *a1@<X8>)
{
  result = sub_9664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3678(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2C20(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_36E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2C20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3740()
{
  sub_2A8C(&qword_18428, &qword_FCA0);
  sub_3558();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_37B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_37F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_387C()
{
  v2 = sub_DA60();
  v3 = sub_30B8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_7904();
  v13 = *(v0 + 8);
  v8 = *v0;
  v12 = *v0;
  if (v13 != 1)
  {

    sub_DEC0();
    v9 = sub_DB10();
    sub_7960();

    sub_DA50();
    swift_getAtKeyPath();
    sub_680C(&v12, &unk_18680);
    (*(v5 + 8))(v1, v2);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

uint64_t sub_39B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(sub_2C20(&qword_185C0, &qword_10108) - 8) + 64);
  sub_30CC();
  __chkstk_darwin(v5);
  v7 = &v74 - v6;
  v78 = sub_2C20(&qword_185C8, &qword_10110);
  sub_78F4(v78);
  v9 = *(v8 + 64);
  sub_30CC();
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  v76 = sub_2C20(&qword_185D0, &qword_10118);
  sub_78F4(v76);
  v14 = *(v13 + 64);
  sub_30CC();
  __chkstk_darwin(v15);
  v77 = &v74 - v16;
  v17 = sub_2C20(&qword_185D8, &qword_10120);
  sub_78F4(v17);
  v19 = *(v18 + 64);
  sub_30CC();
  __chkstk_darwin(v20);
  v79 = &v74 - v21;
  v22 = sub_2C20(&qword_185E0, &qword_10128);
  sub_30B8(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_30CC();
  __chkstk_darwin(v27);
  v29 = &v74 - v28;
  v30 = v1[9];
  if (v30)
  {
    v31 = v30;
    v32 = sub_D760();
    v34 = *v32;
    v33 = v32[1];
    v86 = v34;
    v87 = v33;

    sub_DF90();
    v35 = sub_DDE0();

    sub_7C4C(v85, v35, &v88);

    sub_70E0(v85);
    v84 = a1;
    v83 = v22;
    v82 = v24;
    v81 = v29;
    v80 = v17;
    if (v89)
    {
      if (swift_dynamicCast())
      {
        if (v86)
        {
          v36 = 0.0;
          if ((sub_387C() & 1) == 0)
          {
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
      sub_680C(&v88, &qword_185E8);
    }

    v36 = 1.0;
LABEL_9:
    v37 = v2[3];
    v85[0] = v2[2];
    v85[1] = v37;
    sub_6A38();

    v38 = sub_DBB0();
    v40 = v39;
    v42 = v41;
    sub_DB50();
    v43 = sub_DB40();
    sub_2C68(v7, 1, 1, v43);
    sub_DB60();
    sub_680C(v7, &qword_185C0);
    v44 = sub_DBA0();
    v75 = v45;
    v46 = v2;
    v48 = v47;
    v50 = v49;

    sub_7134(v38, v40, v42 & 1);

    KeyPath = swift_getKeyPath();
    v52 = swift_getKeyPath();
    LOBYTE(v40) = v48 & 1;
    LOBYTE(v85[0]) = v48 & 1;
    LOBYTE(v88) = 0;
    v53 = &v12[*(sub_2C20(&qword_185F0, &qword_10198) + 36)];
    v54 = *(sub_2C20(&qword_185F8, &qword_101A0) + 28);
    v55 = enum case for Text.TruncationMode.tail(_:);
    v56 = sub_DB80();
    sub_78F4(v56);
    (*(v57 + 104))(v53 + v54, v55);
    *v53 = swift_getKeyPath();
    v58 = v75;
    *v12 = v44;
    *(v12 + 1) = v58;
    v12[16] = v40;
    *(v12 + 3) = v50;
    *(v12 + 4) = KeyPath;
    *(v12 + 5) = 2;
    v12[48] = 0;
    *(v12 + 7) = v52;
    v12[64] = 1;
    v59 = sub_DC40();
    v60 = swift_getKeyPath();
    v61 = &v12[*(v78 + 36)];
    *v61 = v60;
    v61[1] = v59;
    v62 = v77;
    sub_723C(v12, v77, &qword_185C8, &qword_10110);
    *(v62 + *(v76 + 36)) = v36;
    v63 = sub_DD60();
    LOBYTE(v44) = sub_387C();
    v64 = v79;
    sub_723C(v62, v79, &qword_185D0, &qword_10118);
    v65 = v64 + *(v80 + 36);
    *v65 = v63;
    *(v65 + 8) = v44 & 1;
    sub_729C();
    v66 = v81;
    sub_DC00();
    sub_680C(v64, &qword_185D8);
    LOBYTE(v63) = sub_387C();
    v67 = swift_allocObject();
    memcpy((v67 + 16), v46, 0x58uLL);
    v68 = v84;
    (*(v82 + 32))(v84, v66, v83);
    v69 = v68 + *(sub_2C20(&qword_18678, &qword_10230) + 36);
    *v69 = v63 & 1;
    *(v69 + 8) = sub_771C;
    *(v69 + 16) = v67;
    return sub_6714(v46, v85);
  }

  v71 = v1[10];
  sub_DE10();
  sub_791C();
  sub_7098(v72, v73);
  result = sub_7980();
  __break(1u);
  return result;
}

void sub_4030(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v3 = a2[9];
    if (v3)
    {
      v4 = v3;
      v5 = sub_D750();
      v7 = *v5;
      v6 = v5[1];
      v12[0] = v7;
      v12[1] = v6;

      sub_DF90();
      v8 = a2[8];
      v12[3] = &type metadata for Int;
      v12[0] = v8;
      v9 = sub_DDD0();
      sub_7CB0(v12, v13);
      v9(v11, 0);
    }

    else
    {
      v10 = a2[10];
      sub_DE10();
      sub_7098(&qword_18520, &type metadata accessor for Context);
      sub_D980();
      __break(1u);
    }
  }
}

uint64_t sub_4154()
{
  v2 = sub_DA60();
  v3 = sub_30B8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_7904();
  v13 = *(v0 + 16);
  v12 = *v0;
  v8 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    sub_DEC0();
    v9 = sub_DB10();
    sub_7960();

    sub_DA50();
    swift_getAtKeyPath();
    sub_680C(&v12, &unk_18578);
    (*(v5 + 8))(v1, v2);
    return v11;
  }

  return v8;
}

uint64_t sub_42E4()
{
  v1 = v0;
  v2 = sub_2C20(&qword_18450, &qword_FE30);
  sub_30B8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_30CC();
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = sub_2C20(&qword_18458, &qword_FE38);
  sub_78F4(v10);
  v12 = *(v11 + 64);
  sub_30CC();
  __chkstk_darwin(v13);
  v15 = &v21[-v14];
  v16 = swift_allocObject();
  memcpy((v16 + 16), v1, 0x60uLL);
  v22 = v1;
  sub_5D6C(v1, &KeyPath);
  sub_2C20(&qword_18460, &qword_FE40);
  sub_5DA4();
  sub_DCC0();
  KeyPath = swift_getKeyPath();
  v24 = 0;
  sub_78A4(&qword_18480, &qword_18450);
  sub_6290();
  sub_DBE0();

  (*(v4 + 8))(v9, v2);
  v17 = sub_DC30();
  v18 = sub_DB30();
  v19 = &v15[*(v10 + 36)];
  *v19 = v17;
  v19[8] = v18;
  sub_62E4();
  sub_DC00();
  return sub_680C(v15, &qword_18458);
}

uint64_t sub_455C()
{
  v2 = v0;
  v3 = sub_D7B0();
  v4 = sub_30B8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v52 - v12;
  v13 = sub_D710();
  v14 = sub_30B8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_7904();
  v19 = *(v0 + 40);
  v57 = *(v0 + 48);
  v20 = sub_59AC(v19, v57);
  if (v21 >> 60 != 15)
  {
    v22 = v21;
    v56 = v20;
    v54 = v19;
    v23 = sub_4154();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      v52 = v3;
      v27 = [objc_allocWithZone(SARemoteDevice) init];
      sub_6C44(v25, v26, v27);

      v28 = [objc_allocWithZone(SAExecuteOnRemoteRequest) init];
      sub_D700();
      v29 = sub_D6F0();
      v31 = v30;
      (*(v16 + 8))(v1, v13);
      sub_6C9C(v29, v31, v28);

      v53 = v27;
      [v28 setRemoteDevice:v27];
      v32 = v22;
      sub_6D00(v56, v22, v28);
      if (qword_18240 != -1)
      {
        sub_7934();
      }

      v33 = v52;
      v34 = sub_6A8C(v52, qword_19318);
      v35 = v55;
      (*(v6 + 16))(v55, v34, v33);
      sub_5D6C(v2, v58);
      v36 = sub_D7A0();
      v37 = sub_DEA0();
      sub_6AC4(v2);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v58[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_CEFC(v54, v57, v58);
        _os_log_impl(&dword_0, v36, v37, "Sending Direct Invocation command for item: %s", v38, 0xCu);
        sub_6AF4(v39);
        sub_79A0();
        sub_79A0();
      }

      (*(v6 + 8))(v35, v33);
      v40 = *(v2 + 80);
      if (v40)
      {
        v41 = v28;
        v42 = v40;
        sub_DE00();

        return sub_6B40(v56, v32);
      }

      else
      {
        v49 = *(v2 + 88);
        sub_DE10();
        sub_791C();
        sub_7098(v50, v51);
        result = sub_7980();
        __break(1u);
      }

      return result;
    }

    sub_6B40(v56, v22);
    v19 = v54;
  }

  if (qword_18240 != -1)
  {
    sub_7934();
  }

  v44 = sub_6A8C(v3, qword_19318);
  (*(v6 + 16))(v11, v44, v3);
  sub_5D6C(v0, v58);
  v45 = sub_D7A0();
  v46 = sub_DEB0();
  sub_6AC4(v2);
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_CEFC(v19, v57, v58);
    _os_log_impl(&dword_0, v45, v46, "Error while creating direct invocation command from item: %s", v47, 0xCu);
    sub_6AF4(v48);
    sub_79A0();
    sub_79A0();
  }

  return (*(v6 + 8))(v11, v3);
}

double sub_4A74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_DAB0();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_2C20(&qword_184A8, &qword_FE88);
  sub_4B2C(a1, (a2 + *(v4 + 44)));
  sub_DD40();
  sub_D8F0();
  v5 = (a2 + *(sub_2C20(&qword_18460, &qword_FE40) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_4B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = sub_2C20(&qword_184B0, &qword_FE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v33[-v5];
  v49 = sub_2C20(&qword_184B8, &qword_FE98);
  v46 = *(v49 - 8);
  v7 = v46[8];
  v8 = __chkstk_darwin(v49);
  v48 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v33[-v10];
  sub_4F98(a1, v6);
  sub_6420();
  v39 = v11;
  sub_DC00();
  sub_680C(v6, &qword_184B0);
  v12 = *(a1 + 32);
  v43 = *(a1 + 24);
  v13 = *(a1 + 48);
  v42 = *(a1 + 40);
  v38 = v13;
  v41 = *(a1 + 56);
  v47 = *(a1 + 64);
  v44 = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  sub_DE10();
  sub_7098(&qword_18520, &type metadata accessor for Context);
  v36 = v12;

  v14 = sub_D990();
  v35 = v14;
  v37 = v15;
  v52 = 0;
  v16 = v46[2];
  v17 = v48;
  v18 = v11;
  v19 = v49;
  v16(v48, v18, v49);
  v20 = v52;
  v34 = v52;
  v21 = v45;
  v16(v45, v17, v19);
  v22 = *(sub_2C20(&qword_18528, &qword_FEC8) + 48);
  v23 = KeyPath;
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = v20;
  *(&__src[1] + 1) = *v51;
  HIDWORD(__src[1]) = *&v51[3];
  v24 = v43;
  __src[2] = v43;
  __src[3] = v12;
  v25 = v42;
  v26 = v38;
  __src[4] = v42;
  __src[5] = v38;
  v27 = v41;
  LOBYTE(__src[6]) = v41;
  *(&__src[6] + 1) = *v50;
  HIDWORD(__src[6]) = *&v50[3];
  v28 = v44;
  __src[7] = v47;
  __src[8] = v44;
  v29 = v37;
  __src[9] = v14;
  __src[10] = v37;
  memcpy(&v21[v22], __src, 0x58uLL);
  sub_6714(__src, &v54);
  v30 = v46[1];
  v31 = v49;
  v30(v39, v49);
  v54 = v23;
  v55 = v34;
  *v56 = *v51;
  *&v56[3] = *&v51[3];
  v57 = v24;
  v58 = v36;
  v59 = v25;
  v60 = v26;
  v61 = v27;
  *v62 = *v50;
  *&v62[3] = *&v50[3];
  v63 = v47;
  v64 = v28;
  v65 = v35;
  v66 = v29;
  sub_674C(&v54);
  return (v30)(v48, v31);
}

uint64_t sub_4F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = sub_2C20(&qword_184E0, &qword_FEA8);
  v3 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v5 = &v42 - v4;
  v42 = sub_2C20(&qword_18530, &qword_FED0);
  v6 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v8 = &v42 - v7;
  v43 = sub_2C20(&qword_18538, &qword_FED8);
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = &v42 - v11;
  v13 = sub_2C20(&qword_18540, &qword_FEE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = sub_D6C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[10];
  if (v22)
  {
    v23 = v22;
    sub_DDF0();

    sub_550C(a1[8], v16, 1000.0, 679.0);
    if (sub_677C(v16, 1, v17) == 1)
    {
      sub_680C(v16, &qword_18540);
      sub_57F0();
      v24 = v43;
      (*(v9 + 16))(v8, v12, v43);
      swift_storeEnumTagMultiPayload();
      sub_6574();
      v25 = sub_2A8C(&qword_18508, &qword_FEC0);
      v26 = sub_6658();
      v46 = v25;
      v47 = v26;
      swift_getOpaqueTypeConformance2();
      sub_DAC0();
      return (*(v9 + 8))(v12, v24);
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      v28 = sub_2C20(&qword_184F0, &qword_FEB0);
      (*(v18 + 16))(&v5[*(v28 + 40)], v21, v17);
      *v5 = sub_A454;
      *(v5 + 1) = 0;
      v5[16] = 0;
      v29 = &v5[*(v28 + 36)];
      sub_57F0();
      v30 = &v5[*(v44 + 36)];
      v31 = *(sub_D960() + 20);
      v32 = enum case for RoundedCornerStyle.continuous(_:);
      v33 = sub_DAA0();
      (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
      __asm { FMOV            V0.2D, #15.0 }

      *v30 = _Q0;
      *&v30[*(sub_2C20(&qword_18500, &qword_FEB8) + 36)] = 256;
      sub_67A4(v5, v8);
      swift_storeEnumTagMultiPayload();
      sub_6574();
      v39 = sub_2A8C(&qword_18508, &qword_FEC0);
      v40 = sub_6658();
      v46 = v39;
      v47 = v40;
      swift_getOpaqueTypeConformance2();
      sub_DAC0();
      sub_680C(v5, &qword_184E0);
      return (*(v18 + 8))(v21, v17);
    }
  }

  else
  {
    v41 = a1[11];
    sub_DE10();
    sub_7098(&qword_18520, &type metadata accessor for Context);
    result = sub_D980();
    __break(1u);
  }

  return result;
}

uint64_t sub_550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *(a1 + 16);
  v8 = (a1 + 48);
  if (v7)
  {
    while (1)
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v16 = *v8;
      sub_6990();

      sub_DE70();
      sub_DE70();
      if (v18 == v17)
      {
        break;
      }

      v8 += 40;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }

    sub_2C20(&qword_18560, &qword_FF28);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_FD20;
    *(v13 + 56) = &type metadata for CGFloat;
    v14 = sub_69E4();
    *(v13 + 64) = v14;
    *(v13 + 32) = a3;
    sub_DE40();
    sub_6A38();
    sub_DF50();

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_FD20;
    *(v15 + 56) = &type metadata for CGFloat;
    *(v15 + 64) = v14;
    *(v15 + 32) = a4;
    sub_DE40();
    sub_DF50();

    sub_DF50();

    sub_D6B0();
  }

  else
  {
LABEL_4:
    v11 = sub_D6C0();
    return sub_2C68(a2, 1, 1, v11);
  }
}

uint64_t sub_57F0()
{
  v1 = sub_2C20(&qword_18508, &qword_FEC0);
  sub_78F4(v1);
  v3 = *(v2 + 64);
  sub_30CC();
  __chkstk_darwin(v4);
  v6 = &__src[-v5 - 8];
  v7 = *(v0 + 64);
  v8 = *(v0 + 24);
  v15 = *(v0 + 40);
  v16 = v8;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  *&v6[*(type metadata accessor for PlaceHolder() + 20)] = KeyPath;
  sub_2C20(&qword_18548, &qword_105E0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v0 + 40);
  *v6 = *(v0 + 24);
  *(v6 + 1) = v10;
  *(v6 + 4) = *(v0 + 56);
  *(v6 + 5) = v7;
  sub_68C4(&v16, __src);
  sub_68C4(&v15, __src);
  sub_6920(&v14, __src);
  sub_DD40();
  sub_D970();
  memcpy(&v6[*(v1 + 36)], __src, 0x70uLL);
  sub_6658();
  sub_DC00();
  return sub_680C(v6, &qword_18508);
}

uint64_t sub_59AC(uint64_t a1, uint64_t a2)
{
  sub_2C20(&qword_18580, &qword_FF38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_FD20;
  v18[0] = 0x696669746E656469;
  v18[1] = 0xEA00000000007265;
  sub_DF90();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_DE20();
  v5 = sub_DF30();

  v6 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v6 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v6 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  v7 = objc_opt_self();
  v8 = [v7 runSiriKitExecutorCommandWithContext:v6 payload:v5];
  v9 = [v7 wrapCommandInStartLocalRequest:v8];
  v10 = [objc_allocWithZone(SAStartUIRequest) init];
  [v10 setStartLocalRequest:v9];
  v11 = [v10 dictionary];
  if (!v11)
  {

LABEL_6:
    return 0;
  }

  v12 = v11;
  v18[0] = 0;
  v13 = [objc_opt_self() dataWithPropertyList:v11 format:200 options:0 error:v18];
  v14 = v18[0];
  if (!v13)
  {
    v16 = v14;
    sub_D690();

    swift_willThrow();

    goto LABEL_6;
  }

  v15 = sub_D6E0();

  return v15;
}

uint64_t sub_5CD4()
{
  sub_5D30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_5D30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_5DA4()
{
  result = qword_18468;
  if (!qword_18468)
  {
    sub_2A8C(&qword_18460, &qword_FE40);
    sub_78A4(&qword_18470, &unk_18478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18468);
  }

  return result;
}

uint64_t sub_5E5C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_DA60();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_DAE0();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2C20(&qword_18588, &qword_100F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v34[-v15];
  v17 = sub_2C20(&qword_18590, &qword_100F8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v34[-v19];
  sub_DAF0();
  v21 = a2;
  v22 = 1.0;
  if ((sub_DB00() & 1) == 0)
  {
    if (a2)
    {
      v23 = a1;
    }

    else
    {

      sub_DEC0();
      v35 = a2;
      v24 = sub_DB10();
      v21 = v35;
      sub_D790();

      sub_DA50();
      swift_getAtKeyPath();
      sub_6F18(a1, 0);
      (*(v36 + 8))(v8, v37);
      v23 = v41;
    }

    if (v23)
    {
      v22 = 1.2;
    }

    else
    {
      v22 = 1.0;
    }
  }

  sub_DD90();
  v26 = v25;
  v28 = v27;
  (*(v9 + 32))(v16, v12, v38);
  v29 = &v16[*(v13 + 36)];
  *v29 = v22;
  v29[1] = v22;
  *(v29 + 2) = v26;
  *(v29 + 3) = v28;
  v30 = sub_DD60();
  if ((v21 & 1) == 0)
  {

    sub_DEC0();
    v31 = sub_DB10();
    sub_D790();

    sub_DA50();
    swift_getAtKeyPath();
    sub_6F18(a1, 0);
    (*(v36 + 8))(v8, v37);
    LOBYTE(a1) = v40;
  }

  sub_723C(v16, v20, &qword_18588, &qword_100F0);
  v32 = &v20[*(v17 + 36)];
  *v32 = v30;
  v32[8] = a1 & 1;
  sub_6F24();
  sub_DC00();
  return sub_680C(v20, &qword_18590);
}

uint64_t sub_6260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_DA20();
  *a1 = result & 1;
  return result;
}

unint64_t sub_6290()
{
  result = qword_18488;
  if (!qword_18488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18488);
  }

  return result;
}

unint64_t sub_62E4()
{
  result = qword_18490;
  if (!qword_18490)
  {
    sub_2A8C(&qword_18458, &qword_FE38);
    sub_2A8C(&qword_18450, &qword_FE30);
    sub_78A4(&qword_18480, &qword_18450);
    sub_6290();
    swift_getOpaqueTypeConformance2();
    sub_78A4(&qword_18498, &unk_184A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18490);
  }

  return result;
}

unint64_t sub_6420()
{
  result = qword_184C0;
  if (!qword_184C0)
  {
    sub_2A8C(&qword_184B0, &qword_FE90);
    sub_64A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184C0);
  }

  return result;
}

unint64_t sub_64A4()
{
  result = qword_184C8;
  if (!qword_184C8)
  {
    sub_2A8C(&qword_184D0, &qword_FEA0);
    sub_6574();
    sub_2A8C(&qword_18508, &qword_FEC0);
    sub_6658();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184C8);
  }

  return result;
}

unint64_t sub_6574()
{
  result = qword_184D8;
  if (!qword_184D8)
  {
    sub_2A8C(&qword_184E0, &qword_FEA8);
    sub_78A4(&qword_184E8, &unk_184F0);
    sub_78A4(&qword_184F8, &unk_18500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D8);
  }

  return result;
}

unint64_t sub_6658()
{
  result = qword_18510;
  if (!qword_18510)
  {
    sub_2A8C(&qword_18508, &qword_FEC0);
    sub_7098(&qword_18518, type metadata accessor for PlaceHolder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18510);
  }

  return result;
}

uint64_t sub_67A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C20(&qword_184E0, &qword_FEA8);
  sub_78F4(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_680C(uint64_t a1, uint64_t a2)
{
  v3 = sub_7954(a1, a2);
  v5 = sub_2C20(v3, v4);
  sub_78F4(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_6920(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C20(&qword_18550, &qword_FF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6990()
{
  result = qword_18558;
  if (!qword_18558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18558);
  }

  return result;
}

unint64_t sub_69E4()
{
  result = qword_18568;
  if (!qword_18568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18568);
  }

  return result;
}

unint64_t sub_6A38()
{
  result = qword_18570;
  if (!qword_18570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18570);
  }

  return result;
}

uint64_t sub_6A8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_6AF4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_6B40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_3000(a1, a2);
  }

  return a1;
}

uint64_t sub_6B54(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_DA40();
}

uint64_t sub_6B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  sub_30B8(v8);
  v10 = *(v9 + 64);
  sub_30CC();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

void sub_6C44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_DE30();
  [a3 setAssistantId:v4];
}

void sub_6C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_DE30();

  [a3 setAceId:v4];
}

void sub_6D00(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_D6D0().super.isa;
  [a3 setSerializedCommand:isa];
}

uint64_t sub_6D64(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_6D78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_6E14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_6E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6F18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_6F24()
{
  result = qword_18598;
  if (!qword_18598)
  {
    sub_2A8C(&qword_18590, &qword_100F8);
    sub_6FDC();
    sub_78A4(&qword_185B0, &unk_185B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18598);
  }

  return result;
}

unint64_t sub_6FDC()
{
  result = qword_185A0;
  if (!qword_185A0)
  {
    sub_2A8C(&qword_18588, &qword_100F0);
    sub_7098(&qword_185A8, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A0);
  }

  return result;
}

uint64_t sub_7098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7134(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_7144@<X0>(uint64_t a1@<X8>)
{
  result = sub_DA30();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_717C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D9E0();
  *a1 = result;
  return result;
}

uint64_t sub_723C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2C20(a3, a4);
  sub_78F4(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_729C()
{
  result = qword_18600;
  if (!qword_18600)
  {
    sub_2A8C(&qword_185D8, &qword_10120);
    sub_7354();
    sub_78A4(&qword_185B0, &unk_185B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18600);
  }

  return result;
}

unint64_t sub_7354()
{
  result = qword_18608;
  if (!qword_18608)
  {
    sub_2A8C(&qword_185D0, &qword_10118);
    sub_73E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18608);
  }

  return result;
}

unint64_t sub_73E0()
{
  result = qword_18610;
  if (!qword_18610)
  {
    sub_2A8C(&qword_185C8, &qword_10110);
    sub_7498();
    sub_78A4(&qword_18668, &unk_18670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18610);
  }

  return result;
}

unint64_t sub_7498()
{
  result = qword_18618;
  if (!qword_18618)
  {
    sub_2A8C(&qword_185F0, &qword_10198);
    sub_7550();
    sub_78A4(&qword_18660, &unk_185F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18618);
  }

  return result;
}

unint64_t sub_7550()
{
  result = qword_18620;
  if (!qword_18620)
  {
    sub_2A8C(&qword_18628, &qword_10208);
    sub_7608();
    sub_78A4(&qword_18650, &unk_18658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18620);
  }

  return result;
}

unint64_t sub_7608()
{
  result = qword_18630;
  if (!qword_18630)
  {
    sub_2A8C(&qword_18638, &qword_10210);
    sub_78A4(&qword_18640, &unk_18648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18630);
  }

  return result;
}

uint64_t sub_76C0()
{
  sub_6F18(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_774C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = sub_7954(a1, a2);
  sub_2A8C(v5, v6);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_77B0()
{
  result = qword_18688;
  if (!qword_18688)
  {
    sub_2A8C(&qword_18678, &qword_10230);
    sub_2A8C(&qword_185D8, &qword_10120);
    sub_729C();
    swift_getOpaqueTypeConformance2();
    sub_78A4(&qword_18690, &unk_18698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18688);
  }

  return result;
}

uint64_t sub_78A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_7954(0, a2);
    sub_2A8C(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7934()
{

  return swift_once();
}

uint64_t sub_7960()
{

  return sub_D790();
}

uint64_t sub_7980()
{

  return sub_D980();
}

uint64_t sub_79A0()
{
}

uint64_t sub_79B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_DD10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2C20(&qword_186A0, &qword_10250);
  v9 = *(sub_DD20() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_FD20;
  *v8 = 0x4074200000000000;
  (*(v5 + 104))(v8, enum case for GridItem.Size.fixed(_:), v4);
  sub_DD50();
  sub_DD30();
  sub_DE10();
  sub_962C();
  sub_942C(v13, v14);
  result = sub_D990();
  *a2 = v12;
  a2[1] = a1;
  a2[2] = 0;
  a2[3] = result;
  a2[4] = v16;
  return result;
}

uint64_t sub_7B98(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_7BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_7C4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_900C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_9588(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_7CB0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_91FC(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_920C(v8, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v7;
    return sub_70E0(a2);
  }

  else
  {
    sub_8D5C(a1);
    sub_9114(a2, v8);
    sub_70E0(a2);
    return sub_8D5C(v8);
  }
}

uint64_t sub_7D50@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = v4;
    v6 = sub_D740();
    v8 = *v6;
    v7 = v6[1];
    *&v21 = v8;
    *(&v21 + 1) = v7;

    sub_DF90();
    v9 = sub_DDE0();

    sub_7C4C(v20, v9, &v21);

    sub_70E0(v20);
    if (v22)
    {
      if (swift_dynamicCast())
      {
        v10 = v19;
LABEL_7:
        v11 = *(v2 + 8);
        v20[0] = *v2;
        *&v21 = v11;
        v12 = swift_allocObject();
        v13 = *(v2 + 16);
        *(v12 + 16) = *v2;
        *(v12 + 32) = v13;
        *(v12 + 48) = *(v2 + 32);
        *(v12 + 56) = v10;
        *a1 = sub_8DCC;
        a1[1] = v12;
        v14 = v5;
        sub_8FA0(v20, &v19, &qword_186A8, &qword_10320);
        return sub_8FA0(&v21, &v19, &qword_186B0, &qword_10328);
      }
    }

    else
    {
      sub_8D5C(&v21);
    }

    v10 = 0;
    goto LABEL_7;
  }

  v16 = *(v1 + 32);
  sub_DE10();
  sub_962C();
  sub_942C(v17, v18);
  result = sub_D980();
  __break(1u);
  return result;
}

uint64_t sub_7EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v59 = a1;
  v61 = a4;
  v58 = sub_D950();
  v56 = *(v58 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2C20(&qword_186B8, &qword_10330);
  v51 = *(v50 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v50);
  v8 = &v48 - v7;
  v9 = sub_2C20(&qword_186C0, &qword_10338);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = sub_2C20(&qword_186C8, &qword_10340);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v49 = &v48 - v17;
  v18 = sub_2C20(&qword_186D0, &qword_10348);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v52 = &v48 - v21;
  v22 = sub_2C20(&qword_186D8, &qword_10350);
  v23 = *(v22 - 8);
  v54 = v22 - 8;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22 - 8);
  v53 = &v48 - v25;
  sub_DB20();
  v62 = a2;
  sub_2C20(&qword_186E0, &qword_10358);
  sub_2F20(&qword_186E8, &qword_186E0, &qword_10358);
  sub_D890();
  sub_2F20(&qword_186F0, &qword_186B8, &qword_10330);
  v26 = v50;
  sub_DC00();
  (*(v51 + 8))(v8, v26);
  v27 = sub_DC30();
  v28 = sub_DB30();
  v29 = &v13[*(v10 + 44)];
  *v29 = v27;
  v29[8] = v28;
  sub_DD40();
  sub_D970();
  v30 = v49;
  sub_8F50(v13, v49, &qword_186C0, &qword_10338);
  memcpy((v30 + *(v15 + 44)), __src, 0x70uLL);
  v31 = *a2;
  v66 = a2[1];
  v67 = v31;
  v65 = *(a2 + 3);
  v32 = swift_allocObject();
  v33 = *(a2 + 1);
  *(v32 + 16) = *a2;
  *(v32 + 32) = v33;
  *(v32 + 48) = a2[4];
  v34 = v52;
  sub_8F50(v30, v52, &qword_186C8, &qword_10340);
  v35 = (v34 + *(v19 + 44));
  *v35 = sub_8DE8;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v56;
  v37 = v55;
  v38 = v58;
  (*(v56 + 16))(v55, v59, v58);
  v39 = v36;
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v39 + 32))(v42 + v40, v37, v38);
  v43 = v42 + v41;
  v44 = *(a2 + 1);
  *v43 = *a2;
  *(v43 + 16) = v44;
  *(v43 + 32) = a2[4];
  v45 = v53;
  sub_8F50(v34, v53, &qword_186D0, &qword_10348);
  v46 = (v45 + *(v54 + 44));
  *v46 = v60;
  v46[1] = sub_8EB4;
  v46[2] = v42;
  sub_8F50(v45, v61, &qword_186D8, &qword_10350);
  sub_8FA0(&v67, v63, &qword_186A8, &qword_10320);
  sub_8FA0(&v66, v63, &qword_186B0, &qword_10328);
  sub_8FA0(&v65, v63, &qword_186F8, &qword_10360);
  sub_8FA0(&v67, v63, &qword_186A8, &qword_10320);
  sub_8FA0(&v66, v63, &qword_186B0, &qword_10328);
  return sub_8FA0(&v65, v63, &qword_186F8, &qword_10360);
}

uint64_t sub_85A8()
{
  v0 = sub_DAD0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_DA90();
  sub_942C(&qword_18708, &type metadata accessor for PinnedScrollableViews);
  sub_E070();
  sub_2C20(&qword_18710, &qword_10370);
  sub_9474();
  return sub_D880();
}

uint64_t sub_86E0(uint64_t *a1)
{
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v3 = *(v2 + 16);
  v8 = *(a1 + 3);
  v4 = swift_allocObject();
  v5 = *(a1 + 1);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = a1[4];
  sub_8FA0(&v9, v7, &qword_186A8, &qword_10320);
  sub_8FA0(&v10, v7, &qword_186B0, &qword_10328);
  sub_8FA0(&v8, v7, &qword_186F8, &qword_10360);
  sub_2C20(&qword_18728, &qword_10378);
  sub_2F20(&qword_18720, &qword_18728, &qword_10378);
  return sub_DD00();
}

unint64_t sub_8824@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(a2 + 8);
    if (*(v5 + 16) > result)
    {
      v6 = v5 + 48 * result;
      v7 = *(v6 + 40);
      v8 = *(v6 + 56);
      v15 = *(v6 + 48);
      v16 = *(v6 + 32);
      v14 = *(v6 + 64);
      v9 = *(v6 + 72);
      KeyPath = swift_getKeyPath();
      sub_DE10();
      sub_942C(&qword_18520, &type metadata accessor for Context);

      v11 = sub_D990();
      v13 = v12;
      sub_DD40();
      __src[112] = 0;
      sub_D970();
      sub_DD40();
      sub_D970();
      *a3 = KeyPath;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = v16;
      *(a3 + 32) = v7;
      *(a3 + 40) = v15;
      *(a3 + 48) = v8;
      *(a3 + 56) = v14;
      *(a3 + 64) = v9;
      *(a3 + 72) = v3;
      *(a3 + 80) = v11;
      *(a3 + 88) = v13;
      memcpy((a3 + 96), __src, 0x70uLL);
      result = memcpy((a3 + 208), v17, 0x70uLL);
      *(a3 + 320) = v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_8A08()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    v4 = sub_D730();
    v5 = v4[1];
    *&v13 = *v4;
    *(&v13 + 1) = v5;

    sub_DF90();
    v6 = sub_DDE0();

    sub_7C4C(v15, v6, &v13);

    sub_70E0(v15);
    v7 = v14;
    sub_8D5C(&v13);
    if (!v7)
    {
      v8 = v4[1];
      *&v13 = *v4;
      *(&v13 + 1) = v8;

      sub_DF90();
      v9 = *(*(v1 + 8) + 16);
      v14 = &type metadata for Int;
      *&v13 = v9;
      v10 = sub_DDD0();
      sub_7CB0(&v13, v15);
      v10(v12, 0);
    }
  }

  else
  {
    v11 = *(v0 + 32);
    sub_DE10();
    sub_942C(&qword_18520, &type metadata accessor for Context);
    sub_D980();
    __break(1u);
  }
}

void sub_8B94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_DD60();
  sub_D900();

  v5 = *(a3 + 24);
  if (v5)
  {
    v6 = v5;
    v7 = sub_D750();
    v8 = *v7;
    v12[1] = v7[1];

    sub_DF90();
    v12[3] = &type metadata for Int;
    v12[0] = v4;
    v9 = sub_DDD0();
    sub_7CB0(v12, v13);
    v9(v11, 0);
  }

  else
  {
    v10 = *(a3 + 32);
    sub_DE10();
    sub_942C(&qword_18520, &type metadata accessor for Context);
    sub_D980();
    __break(1u);
  }
}

uint64_t sub_8D5C(uint64_t a1)
{
  v2 = sub_2C20(&qword_185E8, &qword_10130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8E0C()
{
  v1 = sub_D950();
  sub_78F4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

void sub_8EB4(uint64_t *a1)
{
  v3 = *(sub_D950() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_8B94(a1, v1 + v4, v5);
}

uint64_t sub_8F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_9644(a1, a2, a3, a4);
  sub_78F4(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_8FA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_9644(a1, a2, a3, a4);
  sub_78F4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_8FF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_8CFC();
}

unint64_t sub_900C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_DF70(*(v2 + 40));

  return sub_9050(a1, v4);
}

unint64_t sub_9050(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_934C(*(v2 + 48) + 40 * i, v7);
    v5 = sub_DF80();
    sub_70E0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

double sub_9114@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_900C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v11 = *(*v3 + 24);
    sub_2C20(&qword_18700, &qword_10368);
    sub_DFC0(isUniquelyReferenced_nonNull_native, v11);
    sub_70E0(*(v13 + 48) + 40 * v8);
    sub_91FC((*(v13 + 56) + 32 * v8), a2);
    sub_DFD0();
    *v3 = v13;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_91FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_920C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_900C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_2C20(&qword_18700, &qword_10368);
  if (!sub_DFC0(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_900C(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_DFF0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    sub_6AF4(v20);

    return sub_91FC(a1, v20);
  }

  else
  {
    sub_934C(a2, v22);
    return sub_93A8(v14, v22, a1, v19);
  }
}

_OWORD *sub_93A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_91FC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_942C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_9474()
{
  result = qword_18718;
  if (!qword_18718)
  {
    sub_2A8C(&qword_18710, &qword_10370);
    sub_2F20(&qword_18720, &qword_18728, &qword_10378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18718);
  }

  return result;
}

uint64_t sub_9524(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_9588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2C20(a3, a4);
}

uint64_t sub_9664()
{
  sub_96DC();
  sub_DA70();
  return v1;
}

unint64_t sub_96DC()
{
  result = qword_18740;
  if (!qword_18740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18740);
  }

  return result;
}

uint64_t sub_9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_97AC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_97AC()
{
  result = qword_18748;
  if (!qword_18748)
  {
    sub_2A8C(&qword_18750, &qword_10420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18748);
  }

  return result;
}

uint64_t sub_9828(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_DD80();
}

uint64_t sub_99A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_DA60();
  v4 = sub_30B8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_C574();
  v11 = v10 - v9;
  v12 = sub_2C20(&qword_18548, &qword_105E0);
  sub_78F4(v12);
  v14 = *(v13 + 64);
  sub_30CC();
  __chkstk_darwin(v15);
  v17 = (&v24 - v16);
  v18 = type metadata accessor for PlaceHolder();
  sub_C050(v1 + *(v18 + 20), v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_D8B0();
    sub_78F4(v19);
    return (*(v20 + 32))(a1, v17);
  }

  else
  {
    v22 = *v17;
    sub_DEC0();
    v23 = sub_DB10();
    sub_D790();

    sub_DA50();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v11, v3);
  }
}

uint64_t sub_9B6C()
{
  v0 = sub_2C20(&qword_188B8, &qword_10538);
  sub_78F4(v0);
  v2 = *(v1 + 64);
  sub_30CC();
  __chkstk_darwin(v3);
  v5 = (&v10 - v4);
  *v5 = sub_DD40();
  v5[1] = v6;
  v7 = sub_2C20(&qword_188C0, &qword_10540);
  sub_9C54((v5 + *(v7 + 44)));
  sub_C4DC();
  sub_2F20(v8, &qword_188B8, &qword_10538);
  sub_DC00();
  return sub_BD34(v5);
}

uint64_t sub_9C54@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v1 = sub_2C20(&qword_188D0, &qword_10548);
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_D8B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_99A4(&v26 - v14);
  (*(v9 + 104))(v13, enum case for ColorScheme.light(_:), v8);
  v16 = sub_D8A0();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  if (v16)
  {
    if (qword_18218 != -1)
    {
      swift_once();
    }

    v18 = &qword_18760;
  }

  else
  {
    if (qword_18220 != -1)
    {
      swift_once();
    }

    v18 = &qword_18768;
  }

  v19 = *v18;

  sub_9F70();
  v20 = v2[2];
  v21 = v26;
  v20(v26, v7, v1);
  v22 = v27;
  *v27 = v19;
  v23 = sub_2C20(&qword_188D8, &qword_10550);
  v20(v22 + *(v23 + 48), v21, v1);
  v24 = v2[1];

  v24(v7, v1);
  v24(v21, v1);
}

uint64_t sub_9F70()
{
  v1 = sub_D8B0();
  v2 = sub_30B8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  *(v0 + 32);
  v12 = sub_DC90();
  if (qword_18210 != -1)
  {
    swift_once();
  }

  v13 = qword_18758;
  KeyPath = swift_getKeyPath();

  sub_99A4(v11);
  (*(v4 + 104))(v9, enum case for ColorScheme.light(_:), v1);
  v15 = sub_D8A0();
  v16 = *(v4 + 8);
  v16(v9, v1);
  v16(v11, v1);
  if (v15)
  {
    if (qword_18228 != -1)
    {
      swift_once();
    }

    v17 = &qword_18770;
  }

  else
  {
    if (qword_18230 != -1)
    {
      swift_once();
    }

    v17 = &qword_18778;
  }

  v18 = *v17;

  v19 = swift_getKeyPath();
  v21[1] = v12;
  v21[2] = KeyPath;
  v21[3] = v13;
  v21[4] = v19;
  v21[5] = v18;
  sub_2C20(&qword_188E0, &qword_105B8);
  sub_BE78();
  sub_DC00();
}

uint64_t sub_A280()
{
  v0 = sub_2C20(&qword_185C0, &qword_10108);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_DB40();
  sub_2C68(v3, 1, 1, v4);
  v5 = sub_DB60();
  result = sub_BFE8(v3);
  qword_18758 = v5;
  return result;
}

uint64_t sub_A384(uint64_t a1, uint64_t *a2)
{
  v3 = sub_DC20();
  v4 = sub_30B8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_C574();
  (*(v9 + 104))(v8 - v7, enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_DC50();
  *a2 = result;
  return result;
}

uint64_t sub_A454()
{
  v0 = type metadata accessor for ImageLoader();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2AE0();
}

uint64_t sub_A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2C20(&qword_18780, qword_10450);
    v9 = a1 + *(a3 + 20);

    return sub_677C(v9, a2, v8);
  }
}

uint64_t sub_A548(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2C20(&qword_18780, qword_10450);
    v8 = v5 + *(a4 + 20);

    return sub_2C68(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlaceHolder()
{
  result = qword_187E0;
  if (!qword_187E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A620()
{
  sub_A69C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_A69C()
{
  if (!qword_187F0)
  {
    sub_D8B0();
    v0 = sub_D8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_187F0);
    }
  }
}

void sub_A6FC(uint64_t a1)
{
  sub_AD5C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_D6C0();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_A79C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_D6C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v17 = ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_26:
      if (v11 > 0xFE)
      {
        v24 = (a1 + v13 + 17) & ~v13;
        if (v7 == v12)
        {
          v10 = v7;
          v16 = v5;
        }

        else
        {
          v24 = (v24 + v14 + v15) & ~v15;
        }

        return sub_677C(v24, v10, v16);
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_26;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    switch(v17)
    {
      case 2:
        LODWORD(v17) = *a1;
        break;
      case 3:
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v17) = *a1;
        break;
      default:
        LODWORD(v17) = *a1;
        break;
    }
  }

  return v12 + (v17 | v22) + 1;
}

void sub_AA18(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_D6C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          *(a1 + 2) = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v18) = v22;
        return;
      case 2:
        *(a1 + v18) = v22;
        return;
      case 3:
        goto LABEL_50;
      case 4:
        *(a1 + v18) = v22;
        return;
      default:
        return;
    }
  }

  switch(v20)
  {
    case 1:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_50:
      __break(1u);
      JUMPOUT(0xAD1CLL);
    case 4:
      *(a1 + v18) = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (a2)
      {
LABEL_30:
        if (v13 > 0xFE)
        {
          v26 = (a1 + v15 + 17) & ~v15;
          if (v9 == v14)
          {
            v27 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v26 = (v26 + v16 + v17) & ~v17;
            v27 = a2;
          }

          sub_2C68(v26, v27, v12, v10);
        }

        else if (a2 > 0xFE)
        {
          *(a1 + 16) = 0;
          *a1 = (a2 - 255);
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 16) = -a2;
        }
      }

      return;
  }
}

void sub_AD5C()
{
  if (!qword_188A0)
  {
    type metadata accessor for ImageLoader();
    sub_ADC0();
    v0 = sub_D8E0();
    if (!v1)
    {
      atomic_store(v0, &qword_188A0);
    }
  }
}

unint64_t sub_ADC0()
{
  result = qword_188A8;
  if (!qword_188A8)
  {
    type metadata accessor for ImageLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188A8);
  }

  return result;
}

uint64_t sub_AE78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v4 = sub_30B8(a1);
  v52 = v5;
  v54 = *(v6 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v7 + 16);
  swift_getTupleTypeMetadata2();
  sub_DD70();
  sub_C4F4();
  sub_C584();
  sub_DCE0();
  sub_C584();
  v10 = sub_DC70();
  v60 = sub_C54C();
  sub_C4AC();
  WitnessTable = swift_getWitnessTable();
  v58 = v10;
  v59 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v51 + 64);
  sub_30CC();
  __chkstk_darwin(v13);
  v45 = &v45 - v14;
  v15 = sub_D930();
  sub_30B8(v15);
  v50 = v16;
  v18 = *(v17 + 64);
  sub_30CC();
  __chkstk_darwin(v19);
  v48 = &v45 - v20;
  v58 = v10;
  v59 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeConformance2;
  v57 = &protocol witness table for _AppearanceActionModifier;
  sub_C4C4();
  v47 = swift_getWitnessTable();
  v58 = v15;
  v59 = v47;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = sub_30B8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v22);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v45 - v30;
  v32 = a1;
  v33 = v2;
  sub_B2EC(a1);
  v34 = v52;
  v35 = v9;
  (*(v52 + 16))(v9, v33, v32);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v38 = *(v32 + 24);
  *(v37 + 16) = v53;
  *(v37 + 24) = v38;
  (*(v34 + 32))(v37 + v36, v35, v32);
  v40 = v48;
  v39 = OpaqueTypeMetadata2;
  v41 = v45;
  sub_DC10();

  (*(v51 + 8))(v41, v39);
  sub_DC00();
  (*(v50 + 8))(v40, v15);
  v42 = *(v24 + 16);
  v42(v31, v29, v21);
  v43 = *(v24 + 8);
  v43(v29, v21);
  v42(v55, v31, v21);
  return (v43)(v31, v21);
}

uint64_t sub_B2EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_DD70();
  swift_getWitnessTable();
  sub_DCE0();
  v4 = sub_DC70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = *(a1 + 24);
  v13 = v3;
  v14 = v9;
  v15 = v1;
  WitnessTable = swift_getWitnessTable();
  sub_DC60();
  v16 = WitnessTable;
  swift_getWitnessTable();
  sub_DC00();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_B4B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for ImageLoader();
  sub_ADC0();
  sub_D8D0();
  v5 = type metadata accessor for Thumbnail();
  sub_1FFC(a1 + *(v5 + 40));
}

uint64_t sub_B558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getTupleTypeMetadata2();
  sub_DD70();
  swift_getWitnessTable();
  v8 = sub_DCE0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v19[-v14];
  v20 = a2;
  v21 = a3;
  v22 = a1;
  sub_DD40();
  sub_DCD0();
  swift_getWitnessTable();
  v16 = v9[2];
  v16(v15, v13, v8);
  v17 = v9[1];
  v17(v13, v8);
  v16(a4, v15, v8);
  return (v17)(v15, v8);
}

uint64_t sub_B748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(a1);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for Thumbnail();
  v13 = v6[2];
  v13(v11, a1 + *(v12 + 36), a2);
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  type metadata accessor for ImageLoader();
  sub_ADC0();
  sub_D8D0();
  v17 = sub_D920();
  v19 = v18;
  v20 = v24;
  v13(v24, v11, a2);
  v30[0] = v17;
  v30[1] = v19;
  v31[0] = v20;
  v31[1] = v30;

  v29[0] = a2;
  v29[1] = &type metadata for ThumbnailImageView;
  v27 = v25;
  v28 = sub_BB0C();
  sub_9828(v31, 2, v29);

  v21 = v6[1];
  v21(v11, a2);

  return (v21)(v20, a2);
}

uint64_t sub_B940()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for Thumbnail() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + v5 + 16);
  sub_BA68();
  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v10 = v3[12];
  v11 = sub_D6C0();
  sub_78F4(v11);
  (*(v12 + 8))(v0 + v5 + v10);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_BA70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Thumbnail() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_B4B0(v4);
}

unint64_t sub_BB0C()
{
  result = qword_188B0;
  if (!qword_188B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188B0);
  }

  return result;
}

void sub_BB60()
{
  v0 = sub_DCA0();
  v1 = sub_30B8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_C574();
  v8 = v7 - v6;
  v9 = sub_1A88();
  if (!v9)
  {
    v9 = [objc_allocWithZone(UIImage) init];
  }

  v10 = v9;
  sub_DC80();
  (*(v3 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v0);
  sub_DCB0();

  (*(v3 + 8))(v8, v0);
  v11 = sub_1A88();
  if (v11)
  {
  }

  sub_DD60();
  v12 = sub_1A88();
  sub_2C20(&qword_18910, &qword_10678);
  sub_C328();
  sub_DC00();
}

uint64_t sub_BD34(uint64_t a1)
{
  v2 = sub_2C20(&qword_188B8, &qword_10538);
  sub_78F4(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_BD94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D9C0();
  *a1 = result;
  return result;
}

uint64_t sub_BDC0(uint64_t *a1)
{
  v1 = *a1;

  return sub_D9D0();
}

uint64_t sub_BDEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_DA00();
  *a1 = result;
  return result;
}

uint64_t sub_BE18(uint64_t *a1)
{
  v1 = *a1;

  return sub_DA10();
}

uint64_t sub_BE48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D9C0();
  *a1 = result;
  return result;
}

unint64_t sub_BE78()
{
  result = qword_188E8;
  if (!qword_188E8)
  {
    sub_2A8C(&qword_188E0, &qword_105B8);
    sub_BF30();
    sub_2F20(&qword_18668, &qword_18670, &unk_105D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188E8);
  }

  return result;
}

unint64_t sub_BF30()
{
  result = qword_188F0;
  if (!qword_188F0)
  {
    sub_2A8C(&qword_188F8, &qword_105C0);
    sub_2F20(&qword_18900, &qword_18908, &qword_105C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_188F0);
  }

  return result;
}

uint64_t sub_BFE8(uint64_t a1)
{
  v2 = sub_2C20(&qword_185C0, &qword_10108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C050(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C20(&qword_18548, &qword_105E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_C0F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_C0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_C13C(uint64_t result, int a2, int a3)
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

uint64_t sub_C188(uint64_t *a1)
{
  v1 = *a1;
  swift_getTupleTypeMetadata2();
  sub_DD70();
  sub_C4F4();
  sub_C584();
  sub_DCE0();
  sub_C584();
  sub_DC70();
  sub_C54C();
  sub_C4AC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_D930();
  swift_getOpaqueTypeConformance2();
  sub_C4C4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C2A0()
{
  sub_2A8C(&qword_188B8, &qword_10538);
  sub_C4DC();
  sub_2F20(v0, &qword_188B8, &qword_10538);
  return sub_C520();
}

unint64_t sub_C328()
{
  result = qword_18918;
  if (!qword_18918)
  {
    sub_2A8C(&qword_18910, &qword_10678);
    sub_C3E0();
    sub_2F20(&qword_18930, &qword_18938, &qword_10688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18918);
  }

  return result;
}

unint64_t sub_C3E0()
{
  result = qword_18920;
  if (!qword_18920)
  {
    sub_2A8C(&qword_18928, &qword_10680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18920);
  }

  return result;
}

uint64_t sub_C464()
{
  sub_2A8C(&qword_18910, &qword_10678);
  sub_C328();
  return sub_C520();
}

uint64_t sub_C4F4()
{

  return swift_getWitnessTable();
}

uint64_t sub_C520()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C54C()
{

  return swift_getWitnessTable();
}

uint64_t sub_C5BC()
{
  sub_6A38();

  v0 = sub_DBB0();
  v2 = v1;
  v4 = v3;
  sub_DB70();
  v5 = sub_DBA0();
  v7 = v6;
  v9 = v8;

  sub_7134(v0, v2, v4 & 1);

  sub_DC40();
  v10 = sub_DB90();
  v12 = v11;
  v14 = v13;

  sub_7134(v5, v7, v9 & 1);

  sub_DC00();
  sub_7134(v10, v12, v14 & 1);
}

uint64_t sub_C720()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_C5BC();
}

uint64_t sub_C778()
{
  sub_C7E0();
  result = sub_DF40();
  qword_19310 = result;
  return result;
}

unint64_t sub_C7E0()
{
  result = qword_18940;
  if (!qword_18940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_18940);
  }

  return result;
}

uint64_t sub_C824()
{
  v0 = swift_allocObject();
  sub_C85C();
  return v0;
}

uint64_t sub_C85C()
{
  v1 = v0;
  v2 = sub_D7B0();
  v3 = sub_30B8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_18240 != -1)
  {
    sub_D52C();
    swift_once();
  }

  v10 = sub_6A8C(v2, qword_19318);
  (*(v5 + 16))(v9, v10, v2);
  v11 = sub_D7A0();
  v12 = sub_DED0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Initializing SiriVideoUIPlugin", v13, 2u);
  }

  (*(v5 + 8))(v9, v2);
  return v1;
}

uint64_t sub_C9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_D7B0();
  v7 = sub_30B8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_D770();
  v15 = *v14 == a1 && v14[1] == a2;
  if (v15 || (sub_DFE0() & 1) != 0)
  {
    v16 = sub_D650();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_D640();
    sub_D47C();
    sub_D630();
    if (!v2)
    {

      sub_D4D0();
      return sub_DCF0();
    }
  }

  else
  {
    sub_18C8();
    v3 = swift_allocError();
    swift_willThrow();
  }

  if (qword_18240 != -1)
  {
    sub_D52C();
    swift_once();
  }

  v20 = sub_6A8C(v6, qword_19318);
  (*(v9 + 16))(v13, v20, v6);
  swift_errorRetain();
  v21 = sub_D7A0();
  v22 = sub_DEB0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v29 = v24;
    *v23 = 136315138;
    v30 = v3;
    swift_errorRetain();
    sub_2C20(&qword_189F8, &qword_107A8);
    v25 = sub_DE50();
    v28 = v6;
    v27 = sub_CEFC(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v21, v22, "Error in decoding received data in func view(for:data:mode:) :%s", v23, 0xCu);
    sub_6AF4(v24);

    (*(v9 + 8))(v13, v28);
  }

  else
  {

    (*(v9 + 8))(v13, v6);
  }

  return swift_willThrow();
}

unint64_t sub_CD7C()
{
  result = qword_189F0;
  if (!qword_189F0)
  {
    sub_D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189F0);
  }

  return result;
}

uint64_t sub_CDEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C824();
  *a1 = result;
  return result;
}

uint64_t sub_CE2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_CEA0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_CEFC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_CEFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_CFC0(v11, 0, 0, 1, a1, a2);
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
    sub_9588(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_6AF4(v11);
  return v7;
}

unint64_t sub_CFC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_D0C0(a5, a6);
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
    result = sub_DFB0();
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

char *sub_D0C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_D10C(a1, a2);
  sub_D224(&off_14F98);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_D10C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_DE60())
  {
    result = sub_D308(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_DFA0();
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
          result = sub_DFB0();
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

uint64_t sub_D224(uint64_t result)
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

    result = sub_D378(result, v8, 1, v3);
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

void *sub_D308(uint64_t a1, uint64_t a2)
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

  sub_2C20(&unk_18A10, &qword_107B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_D378(char *result, int64_t a2, char a3, char *a4)
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
    sub_2C20(&unk_18A10, &qword_107B0);
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

_BYTE **sub_D46C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_D47C()
{
  result = qword_18A00;
  if (!qword_18A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A00);
  }

  return result;
}

unint64_t sub_D4D0()
{
  result = qword_18A08;
  if (!qword_18A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A08);
  }

  return result;
}

uint64_t sub_D540()
{
  v0 = sub_D7B0();
  sub_D5CC(v0, qword_19318);
  sub_6A8C(v0, qword_19318);
  if (qword_18238 != -1)
  {
    swift_once();
  }

  v1 = qword_19310;
  return sub_D7C0();
}

uint64_t *sub_D5CC(uint64_t a1, uint64_t *a2)
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