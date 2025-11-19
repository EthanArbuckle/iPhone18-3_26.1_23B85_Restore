unint64_t sub_100218E34()
{
  result = qword_1004ACDD8;
  if (!qword_1004ACDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDD8);
  }

  return result;
}

uint64_t sub_100218E88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {

    return sub_100218EE4(a4, a5);
  }

  return result;
}

uint64_t sub_100218EE4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100218EFC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100218EFC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100218F08()
{
  result = qword_1004ACDE0;
  if (!qword_1004ACDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDE0);
  }

  return result;
}

unint64_t sub_100218F5C()
{
  result = qword_1004ACDE8;
  if (!qword_1004ACDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDE8);
  }

  return result;
}

unint64_t sub_100218FB0()
{
  result = qword_1004ACDF0;
  if (!qword_1004ACDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDF0);
  }

  return result;
}

unint64_t sub_100219004()
{
  result = qword_1004ACDF8;
  if (!qword_1004ACDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACDF8);
  }

  return result;
}

unint64_t sub_100219058()
{
  result = qword_1004ACE08;
  if (!qword_1004ACE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE08);
  }

  return result;
}

unint64_t sub_1002190AC()
{
  result = qword_1004ACE10;
  if (!qword_1004ACE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE10);
  }

  return result;
}

unint64_t sub_100219100()
{
  result = qword_1004ACE20;
  if (!qword_1004ACE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE20);
  }

  return result;
}

unint64_t sub_100219154()
{
  result = qword_1004ACE28;
  if (!qword_1004ACE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE28);
  }

  return result;
}

uint64_t sub_1002191A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1002191E8()
{
  result = qword_1004ACE30;
  if (!qword_1004ACE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE30);
  }

  return result;
}

unint64_t sub_10021923C()
{
  result = qword_1004ACE38;
  if (!qword_1004ACE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE38);
  }

  return result;
}

uint64_t sub_100219290(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*sub_1002193FC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100219960(v7);
  v7[9] = sub_1002195B8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1002194A8;
}

uint64_t (*sub_1002194AC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100219994(v7);
  v7[9] = sub_10021973C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100220C48;
}

void sub_100219558(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1002195B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100013364(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100184098();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100182094(v18, a4 & 1);
    v13 = sub_100013364(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100219710;
}

void (*sub_10021973C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100013364(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100184084();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100182080(v18, a4 & 1);
    v13 = sub_100013364(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100219710;
}

void sub_100219894(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_100220A30(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

uint64_t (*sub_100219960(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100219988;
}

uint64_t (*sub_100219994(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100220C14;
}

uint64_t sub_1002199BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v11[3] = &type metadata for JSONConverter;
  v11[4] = &protocol witness table for JSONConverter;
  v11[0] = v9;
  v11[1] = a6;

  URL.init(from:)(v11, a1);
  if (!v6)
  {
  }

  return a2;
}

uint64_t sub_100219A48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100219A88()
{
  result = qword_1004ACE80;
  if (!qword_1004ACE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE80);
  }

  return result;
}

uint64_t sub_100219ADC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100219B3C()
{
  result = qword_1004ACE88;
  if (!qword_1004ACE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE88);
  }

  return result;
}

double sub_100219B90(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100219C08(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10000E2A8(a1, v3);
  (*(v4 + 32))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    sub_10000E2A8(v9, v10);
    (*(v7 + 48))(v6, v7);
    sub_1002205FC();
    sub_1001FAF14();
    RawRepresentable<>.init(argument:)();
    v5 = v12;
    sub_100003C3C(v9);
  }

  sub_100003C3C(a1);
  return v5;
}

uint64_t sub_100219D2C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_1002204AC();
  v9 = v7(&type metadata for Config.FeatureFlag.VersionOneKeys, &type metadata for Config.FeatureFlag.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    *&v39 = _swiftEmptyArrayStorage;
    *(&v39 + 1) = 0;
    *&v40 = 0;
    *(&v40 + 1) = _swiftEmptyArrayStorage;
    v41 = 0uLL;
    *&v42 = _swiftEmptyArrayStorage;
    BYTE8(v42) = 2;
    *&v43 = _swiftEmptyArrayStorage;
    *(&v43 + 1) = 0;
    *&v44 = 0;
    *(&v44 + 1) = _swiftEmptyArrayStorage;
    *v45 = 0uLL;
    *&v45[16] = _swiftEmptyArrayStorage;
    v45[24] = 4;
    sub_1001D88D4(&v39);
    return sub_100003C3C(a1);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_10020C088(3, v9, v10, sub_100206F6C);
    v15 = v14;
    v17 = v16;
    v19 = sub_10020C088(4, v11, v12, sub_100206F6C);
    v38 = v20;
    v46 = v21;
    *&v36 = sub_10020C088(0, v11, v12, sub_100206F6C);
    *(&v36 + 1) = v22;
    v37 = v23;
    v34 = sub_10020A1D4(2u, v11, v12);
    v35 = v24;
    v32 = sub_10020C088(1, v11, v12, sub_100206F6C);
    *&v33 = v25;
    *(&v33 + 1) = v26;
    v31 = sub_100208DC4(5u, v11, v12);
    LOBYTE(v12) = v27;

    v39 = v36;
    *&v40 = v37;
    *(&v40 + 1) = v32;
    v41 = v33;
    *&v42 = v34;
    BYTE8(v42) = v35;
    *&v43 = v13;
    *(&v43 + 1) = v15;
    *&v44 = v17;
    *(&v44 + 1) = v19;
    *v45 = v38;
    *&v45[8] = v46;
    *&v45[16] = v31;
    v45[24] = v12;
    DInitData.init(rawValue:)(&v39);
    result = sub_100003C3C(a1);
    v28 = v44;
    a2[4] = v43;
    a2[5] = v28;
    a2[6] = *v45;
    *(a2 + 105) = *&v45[9];
    v29 = v40;
    *a2 = v39;
    a2[1] = v29;
    v30 = v42;
    a2[2] = v41;
    a2[3] = v30;
  }

  return result;
}

uint64_t sub_10021A13C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    v62 = _swiftEmptyArrayStorage;
    v63 = 0;
    v64 = 0;
    v65 = _swiftEmptyArrayStorage;
    v66 = 0;
    v67 = 0;
    v68 = _swiftEmptyArrayStorage;
    v69 = 0;
    v70 = 0;
    v71 = _swiftEmptyArrayStorage;
    v72 = 0;
    v73 = 0;
    sub_1002207C4(&v62);
    return sub_100003C3C(a1);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v57 = v9;
    v13 = sub_10020BF08(16, v9, v10, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
    v15 = v14;
    v56 = a2;
    v74 = v16;
    v17 = sub_10020BF08(16, v11, v12, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
    v59 = v18;
    v61 = v19;
    v20 = sub_10020B9E0(18, v11, v12);
    if (v20)
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;

      v13 = v23;
      v15 = v24;
      v74 = v25;
    }

    v26 = sub_10020B9E0(19, v11, v12);
    if (v26)
    {
      v29 = v26;
      v30 = v27;
      v31 = v28;

      v13 = v29;
      v15 = v30;
      v74 = v31;
    }

    v32 = sub_10020B9E0(20, v11, v12);
    v36 = v11;
    if (v32)
    {
      v37 = v32;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    if (v32)
    {
      v38 = v33;
    }

    else
    {
      v38 = 0;
    }

    if (v32)
    {
      v39 = v34;
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_10020B9E0(21, v36, v12);
    if (v40)
    {
      v60 = v40;
      v43 = v41;
      v53 = v42;

      v17 = v60;
      v59 = v43;
      v61 = v53;
    }

    v51 = sub_10020B9E0(32, v57, v12);
    v54 = v44;
    v46 = v45;

    if (v51)
    {
      v47 = v51;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }

    if (v51)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0;
    }

    if (v51)
    {
      v49 = v54;
    }

    else
    {
      v49 = 0;
    }

    v50 = v74;
    if (v74 || v39 || v61 || v49)
    {
      v52 = v47;
      v55 = v48;
      v58 = v49;
    }

    else
    {
      v62 = v13;
      v63 = v15;
      v64 = 0;
      v65 = v37;
      v66 = v38;
      v67 = 0;
      v68 = v17;
      v69 = v59;
      v70 = 0;
      v71 = v47;
      v72 = v48;
      v73 = 0;
      sub_1002207C4(&v62);
      v58 = 0;
      v59 = 0;
      v52 = 0;
      v55 = 0;
      v61 = 0;
      v17 = 0;
      v39 = 0;
      v38 = 0;
      v37 = 0;
      v50 = 0;
      v15 = 0;
      v13 = 0;
    }

    result = sub_100003C3C(a1);
    *v56 = v13;
    v56[1] = v15;
    v56[2] = v50;
    v56[3] = v37;
    v56[4] = v38;
    v56[5] = v39;
    v56[6] = v17;
    v56[7] = v59;
    v56[8] = v61;
    v56[9] = v52;
    v56[10] = v55;
    v56[11] = v58;
  }

  return result;
}

uint64_t sub_10021A56C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = v9;
  v12 = v10;
  sub_1002060D0(36, v9, v10, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC, &v27);
  v14 = v28;
  if (v28)
  {
    v15 = v27;
    v29 = sub_10021830C(v27, v28, &type metadata for UInt);

    sub_100200D34(v15, v14);
    v16 = v14;
  }

  else
  {
    v29 = 0;
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = sub_10020BF08(35, v11, v12, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
  v19 = v18;
  v25 = v20;
  v26 = v16;
  v21 = v14 | v18;

  if (v21)
  {
    v24 = v14 == 0;
    v23 = v29;
    v22 = v25;
    v21 = v26;
  }

  else
  {

    v17 = 0;
    v22 = 0;
    v19 = 0;
    v23 = 0;
    v24 = 0;
  }

  result = sub_100003C3C(a1);
  *a2 = v17;
  *(a2 + 8) = v22;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  return result;
}

void *sub_10021A7C4(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E2A8(a1, v3);
  v5 = v4[2];
  v6 = sub_100220404();
  v7 = v5(&type metadata for Config.Log.VersionOneKeys, &type metadata for Config.Log.VersionOneKeys, v6, v3, v4);
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_10020A068(1, v7, v8);
    v12 = v11;
    v4 = sub_100208BB8(0, v9, v10);
    v15 = v14;

    if (v15 == 3 && v12 == 2)
    {

      v4 = 0;
    }
  }

  sub_100003C3C(a1);
  return v4;
}

void *sub_10021A928(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000E2A8(a1, v4);
  v6 = *(v5 + 16);
  v7 = sub_100218CCC();
  v8 = v6(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v7, v4, v5);
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    v2 = sub_10020AC98(23, v8, v9);
    v13 = v12;
    sub_10020AC98(24, v10, v11);
    v16 = v15;

    if (v13 == 2 && v16 == 2)
    {

      v2 = 0;
    }
  }

  sub_100003C3C(a1);
  return v2;
}

uint64_t sub_10021AA8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_1002203B0();
  v9 = v7(&type metadata for Config.Root.VersionOneKeys, &type metadata for Config.Root.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_10020C20C(3u, v9, v10);
  v44 = v14;
  v30 = v15;
  v16 = sub_10020C088(1, v11, v12, sub_100205E10);
  v28 = v18;
  v29 = v17;
  v19 = sub_10020C088(4, v11, v12, sub_100205E10);
  v21 = v20;
  v23 = v22;

  *&v31 = v16;
  *(&v31 + 1) = v29;
  *&v32 = v28;
  *(&v32 + 1) = v13;
  *&v33 = v44;
  *(&v33 + 1) = v30;
  *&v34 = v19;
  *(&v34 + 1) = v21;
  *&v35 = v23;
  *(&v35 + 1) = _swiftEmptyArrayStorage;
  v36 = 0uLL;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = 0uLL;
  v37 = v31;
  v38 = v32;
  sub_1002193A0(&v31, v43);
  sub_100003C3C(a1);
  v43[0] = v16;
  v43[1] = v29;
  v43[2] = v28;
  v43[3] = v13;
  v43[4] = v44;
  v43[5] = v30;
  v43[6] = v19;
  v43[7] = v21;
  v43[8] = v23;
  v43[9] = _swiftEmptyArrayStorage;
  v43[10] = 0;
  v43[11] = 0;
  result = sub_10021934C(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_10021AD10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    v63 = v2;
    sub_100003C3C(a1);
    v52 = _swiftEmptyArrayStorage;
    v53 = 0;
    v54 = 0;
    v55 = _swiftEmptyArrayStorage;
    LOBYTE(v56) = 3;
    v57 = _swiftEmptyArrayStorage;
    LOBYTE(v58) = 2;
    v59 = _swiftEmptyArrayStorage;
    v60 = 0;
    v61 = _swiftEmptyArrayStorage;
    v62 = 5;
    return sub_100220818(&v52);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_10020BF08(15, v9, v10, Config.VersionOneKeys.rawValue.getter, &type metadata for Config.VersionOneKeys, sub_100218CCC);
    v15 = v14;
    v48 = v16;
    v17 = sub_10020AC98(26, v11, v12);
    v49 = v18;
    v19 = sub_100207F94(27, v11, v12);
    v47 = a2;
    v50 = v20;
    v63 = 0;
    v22 = sub_100209D50(8, v11, v12);
    v41 = v23;

    if (v22)
    {
      v45 = sub_1002081B0(v22, v41);
      v43 = v24;
      v25 = v63;

      v26 = v49;
      v27 = v43;
      v28 = v45;
    }

    else
    {
      v27 = 3;
      v28 = _swiftEmptyArrayStorage;
      v25 = v63;
      v26 = v49;
    }

    v63 = v25;
    v46 = v28;
    v44 = v27;
    if (!v15 && (v26 == 2 ? (v29 = v50 == 5) : (v29 = 0), v29 ? (v30 = v27 == 3) : (v30 = 0), v30))
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v42 = 0;
      v37 = 0;
      v31 = 0;
      v34 = 0;
      v35 = 0;
      v32 = 0;
      v36 = 0;
      v33 = v48;
    }

    else
    {
      v33 = v48;
      v52 = v13;
      v53 = v48;
      v54 = v15;
      v55 = v28;
      LOBYTE(v56) = v27;
      v57 = v17;
      LOBYTE(v58) = v26;
      v59 = _swiftEmptyArrayStorage;
      v60 = 0;
      v61 = v19;
      v62 = v50;
      v40 = v56;
      v42 = v58;
      sub_10022086C(&v52, v51);
      v38 = v17;
      v39 = _swiftEmptyArrayStorage;
      v37 = v46;
      v34 = v13;
      v35 = v48;
      v32 = v19;
      v36 = v50;
      v31 = v15;
    }

    sub_100003C3C(a1);
    v52 = v13;
    v53 = v33;
    v54 = v15;
    v55 = v46;
    LOBYTE(v56) = v44;
    v57 = v17;
    LOBYTE(v58) = v49;
    v59 = _swiftEmptyArrayStorage;
    v60 = 0;
    v61 = v19;
    v62 = v50;
    result = sub_100220818(&v52);
    *v47 = v34;
    *(v47 + 8) = v35;
    *(v47 + 16) = v31;
    *(v47 + 24) = v37;
    *(v47 + 32) = v40;
    *(v47 + 40) = v38;
    *(v47 + 48) = v42;
    *(v47 + 56) = v39;
    *(v47 + 64) = 0;
    *(v47 + 72) = v32;
    *(v47 + 80) = v36;
  }

  return result;
}

uint64_t sub_10021B0FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = 1;
  v93 = 1;
  v91 = 1;
  v89 = 1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000E2A8(a1, v4);
  v6 = *(v5 + 16);
  v7 = sub_10021E4D4();
  v8 = v6(&type metadata for Config.Cryptex.VersionOneKeys, &type metadata for Config.Cryptex.VersionOneKeys, v7, v4, v5);
  if (v2)
  {
    v97 = v2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 2;
    v19 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage;
LABEL_4:
    sub_100003C3C(a1);
    *&v80 = v22;
    *(&v80 + 1) = v17;
    *&v81 = v16;
    *(&v81 + 1) = v21;
    LOBYTE(v82) = v18;
    *(&v82 + 1) = v96[0];
    DWORD1(v82) = *(v96 + 3);
    *(&v82 + 1) = _swiftEmptyArrayStorage;
    *&v83 = 0;
    BYTE8(v83) = v95;
    *(&v83 + 9) = *v94;
    HIDWORD(v83) = *&v94[3];
    *&v84 = v20;
    *(&v84 + 1) = v15;
    LOBYTE(v85) = v93;
    *(&v85 + 1) = *v92;
    DWORD1(v85) = *&v92[3];
    *(&v85 + 1) = v19;
    *&v86 = v14;
    BYTE8(v86) = v91;
    *(&v86 + 9) = *v90;
    HIDWORD(v86) = *&v90[3];
    *&v87 = _swiftEmptyArrayStorage;
    *(&v87 + 1) = 0;
    v88 = v89;
    return sub_100220980(&v80);
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_10020A33C(10, v8, v9, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4);
  v60 = v12;
  if (v13 == 2)
  {

    v59 = 2;
    v60 = _swiftEmptyArrayStorage;
  }

  else
  {
    v59 = v13 & 1;
  }

  v24 = sub_10020BF08(9, v10, v11, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4);
  v17 = v25;
  v22 = v24;
  v58 = v26;
  sub_1002060D0(11, v10, v11, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v80);
  v27 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v28 = a2;
    v29 = v80;
    v30 = sub_10021830C(v80, *(&v80 + 1), &type metadata for UInt);
    v97 = 0;
    v57 = v30;

    sub_100200D34(v29, v27);
    v31 = v27;
    v2 = v97;
    a2 = v28;
  }

  else
  {
    v57 = 0;
    v31 = _swiftEmptyArrayStorage;
  }

  v93 = v27 == 0;
  sub_1002060D0(16, v10, v11, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v80);
  if (v2)
  {
    v97 = v2;

    v14 = 0;
    v19 = _swiftEmptyArrayStorage;
    v18 = v59;
    v21 = v60;
    v20 = v31;
    v15 = v57;
    v16 = v58;
    goto LABEL_4;
  }

  v32 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v33 = v80;
    v34 = sub_10021830C(v80, *(&v80 + 1), &type metadata for UInt);
    v97 = 0;
    v55 = a2;
    v56 = v34;

    sub_100200D34(v33, v32);
    v19 = v32;
    v2 = v97;
  }

  else
  {
    v55 = a2;
    v56 = 0;
    v19 = _swiftEmptyArrayStorage;
  }

  v91 = v32 == 0;
  sub_1002060D0(17, v10, v11, Config.Cryptex.VersionOneKeys.stringValue.getter, &type metadata for Config.Cryptex.VersionOneKeys, sub_10021E4D4, &v80);
  v97 = v2;
  if (v2)
  {

LABEL_18:
    v18 = v59;
    v21 = v60;
    v20 = v31;
    v15 = v57;
    v16 = v58;
    v14 = v56;
    goto LABEL_4;
  }

  v35 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v36 = v80;
    v37 = v97;
    v38 = sub_10021830C(v80, *(&v80 + 1), &type metadata for UInt);
    v97 = v37;
    if (v37)
    {
      sub_100200D34(v36, v35);
      goto LABEL_18;
    }

    v41 = v32;
    v42 = v38;

    sub_100200D34(v36, v35);
    v39 = v42;
    v32 = v41;
    v40 = v35;
  }

  else
  {
    v39 = 0;
    v40 = _swiftEmptyArrayStorage;
  }

  v89 = v35 == 0;
  *(&v50 + 1) = v39;
  v51 = v31;
  *&v50 = v40;
  if (v59 != 2 || v27 | v58 | v32 | v35)
  {
    *&v62 = v22;
    *(&v62 + 1) = v17;
    *&v63 = v58;
    *(&v63 + 1) = v60;
    LOBYTE(v64) = v59;
    *(&v64 + 1) = v96[0];
    DWORD1(v64) = *(v96 + 3);
    *(&v64 + 1) = _swiftEmptyArrayStorage;
    *&v65 = 0;
    v54 = v95;
    BYTE8(v65) = v95;
    *(&v65 + 9) = *v94;
    HIDWORD(v65) = *&v94[3];
    *&v66 = v31;
    v44 = v56;
    v45 = v57;
    *(&v66 + 1) = v57;
    v53 = v93;
    LOBYTE(v67) = v93;
    DWORD1(v67) = *&v92[3];
    *(&v67 + 1) = *v92;
    *(&v67 + 1) = v19;
    *&v68 = v56;
    v52 = v91;
    BYTE8(v68) = v91;
    HIDWORD(v68) = *&v90[3];
    *(&v68 + 9) = *v90;
    *&v69 = v40;
    *(&v69 + 1) = v39;
    v70 = v89;
    v43 = v89;
    v73 = v64;
    v74 = v65;
    v71 = v62;
    v72 = v63;
    v79 = v89;
    v77 = v68;
    v78 = v69;
    v75 = v66;
    v76 = v67;
    DInitData.init(rawValue:)(&v71);
    sub_1002209D4(&v62, &v80);
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v82 = v73;
    v83 = v74;
    v84 = v75;
    v85 = v76;
    v80 = v71;
    v81 = v72;
  }

  else
  {
    sub_100219B90(&v80);
    v53 = v93;
    v54 = v95;
    v52 = v91;
    v43 = v89;
    v44 = v56;
    v45 = v57;
  }

  sub_100003C3C(a1);
  *&v71 = v22;
  *(&v71 + 1) = v17;
  *&v72 = v58;
  *(&v72 + 1) = v60;
  LOBYTE(v73) = v59;
  *(&v73 + 1) = v96[0];
  DWORD1(v73) = *(v96 + 3);
  *(&v73 + 1) = _swiftEmptyArrayStorage;
  *&v74 = 0;
  BYTE8(v74) = v54;
  *(&v74 + 9) = *v94;
  HIDWORD(v74) = *&v94[3];
  *&v75 = v51;
  *(&v75 + 1) = v45;
  LOBYTE(v76) = v53;
  DWORD1(v76) = *&v92[3];
  *(&v76 + 1) = *v92;
  *(&v76 + 1) = v19;
  *&v77 = v44;
  BYTE8(v77) = v52;
  HIDWORD(v77) = *&v90[3];
  *(&v77 + 9) = *v90;
  v78 = v50;
  v79 = v43;
  result = sub_100220980(&v71);
  v46 = v87;
  *(v55 + 96) = v86;
  *(v55 + 112) = v46;
  *(v55 + 128) = v88;
  v47 = v83;
  *(v55 + 32) = v82;
  *(v55 + 48) = v47;
  v48 = v85;
  *(v55 + 64) = v84;
  *(v55 + 80) = v48;
  v49 = v81;
  *v55 = v80;
  *(v55 + 16) = v49;
  return result;
}

uint64_t sub_10021B8F8(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E2A8(a1, v3);
  v5 = *(v4 + 16);
  v6 = sub_1002201B8();
  v7 = v5(&type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys, &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.VersionOneKeys, v6, v3, v4);
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    v3 = sub_10020D818(0, v7, v8);
    sub_10020A4A4(1, v9, v10);
  }

  sub_100003C3C(a1);
  return v3;
}

uint64_t sub_10021BA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v12 = sub_10020AC98(37, v9, v10);
  v14 = v13;

  if (v14 == 2)
  {

    v12 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v15 = v14;
    v17 = -1;
    v16 = _swiftEmptyArrayStorage;
  }

  result = sub_100003C3C(a1);
  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_10021BB60(void *a1)
{
  v3 = type metadata accessor for DecodingError.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_10000E2A8(a1, v7);
  (*(v8 + 32))(v20, v7, v8);
  if (!v1)
  {
    v10 = v21;
    v11 = v22;
    sub_10000E2A8(v20, v21);
    (*(v11 + 48))(v10, v11);
    v9 = Data.init(base64Encoded:options:)();
    v13 = v12;

    if (v13 >> 60 != 15)
    {
      sub_100003C3C(v20);
      sub_100003C3C(a1);
      return v9;
    }

    v14 = a1[3];
    v15 = a1[4];
    sub_10000E2A8(a1, v14);
    (*(v15 + 8))(v14, v15);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    (*(v4 + 16))(v16, v6, v3);
    (*(*(v9 - 8) + 104))(v17, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_100003C3C(v20);
  }

  sub_100003C3C(a1);
  return v9;
}

void *sub_10021BDE8(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t *), uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v6 = sub_1000039E8(&qword_1004AD1A0);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v44 = v8;
    v54 = _swiftEmptyArrayStorage;
    sub_100311108(0, v9, 0);
    v50 = v54;
    v11 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v39 = a1 + 72;
    v40 = v9;
    v42 = a1 + 64;
    v43 = a1;
    v41 = v14;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v49 = v13;
      v17 = *(a1 + 56);
      v18 = (*(a1 + 48) + 16 * v12);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v17 + 8 * v12);

      v51 = v19;
      v52 = v20;
      v53 = v21;
      v22 = v44;
      v23 = v47(v44 + *(v46 + 48), v19, v20, &v53);
      if (v4)
      {
      }

      v25 = v23;
      v26 = v24;

      *v22 = v25;
      v22[1] = v26;
      v27 = v50;
      v54 = v50;
      v29 = v50[2];
      v28 = v50[3];
      if (v29 >= v28 >> 1)
      {
        sub_100311108(v28 > 1, v29 + 1, 1);
        v22 = v44;
        v27 = v54;
      }

      v27[2] = v29 + 1;
      v30 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v50 = v27;
      result = sub_10003E154(v22, v27 + v30 + *(v45 + 72) * v29, &qword_1004AD1A0);
      a1 = v43;
      v15 = 1 << *(v43 + 32);
      if (v12 >= v15)
      {
        goto LABEL_27;
      }

      v4 = 0;
      v11 = v42;
      v31 = *(v42 + 8 * v16);
      if ((v31 & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v14) = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v12 & 0x3F));
      if (v32)
      {
        v15 = __clz(__rbit64(v32)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v16 << 6;
        v34 = v16 + 1;
        v35 = (v39 + 8 * v16);
        while (v34 < (v15 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_100220ACC(v12, v41, 0);
            v15 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_100220ACC(v12, v41, 0);
      }

LABEL_4:
      v13 = v49 + 1;
      v12 = v15;
      if (v49 + 1 == v40)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_10021C178@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = 1;
  v50 = 1;
  v48 = 1;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100220260();
  v9 = v7(&type metadata for Config.Tailspin.VersionOneKeys, &type metadata for Config.Tailspin.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    v37[0] = _swiftEmptyArrayStorage;
    v37[1] = 0;
    v38 = v51;
    v39 = _swiftEmptyArrayStorage;
    v40 = 0;
    v41 = v50;
    v42 = _swiftEmptyArrayStorage;
    v43 = 0;
    v44 = v48;
    v45 = _swiftEmptyArrayStorage;
    v46 = 0;
    sub_100220650(v37);
    return sub_100003C3C(a1);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    sub_100206554(2u, v9, v10, &v35);
    v13 = v36;
    if (v36)
    {
      v14 = v35;
      v15 = sub_10021830C(v35, v36, &type metadata for UInt64);

      sub_100200D34(v14, v13);
      v16 = v13;
    }

    else
    {
      v15 = 0;
      v16 = _swiftEmptyArrayStorage;
    }

    v48 = v13 == 0;
    sub_100206554(0, v11, v12, &v35);
    v18 = v36;
    if (v36)
    {
      v33 = v16;
      v19 = v35;
      v20 = sub_10021830C(v35, v36, &type metadata for UInt64);

      sub_100200D34(v19, v18);
      v32 = v18;
      v16 = v33;
    }

    else
    {
      v20 = 0;
      v32 = _swiftEmptyArrayStorage;
    }

    v51 = v18 == 0;
    sub_100206554(1u, v11, v12, &v35);
    v34 = v16;
    v21 = v36;
    if (v36)
    {
      v22 = v35;
      v31 = sub_10021830C(v35, v36, &type metadata for UInt64);

      sub_100200D34(v22, v21);
      v23 = v21;
    }

    else
    {
      v31 = 0;
      v23 = _swiftEmptyArrayStorage;
    }

    v50 = v21 == 0;
    v24 = sub_100208A18(3, v11, v12, sub_100206554, sub_10020E3C4);
    v30 = v25;

    v26 = v51;
    v27 = v50;
    v29 = v48;
    result = sub_100003C3C(a1);
    *a2 = v32;
    *(a2 + 8) = v20;
    *(a2 + 16) = v26;
    *(a2 + 17) = *v52;
    *(a2 + 20) = *&v52[3];
    *(a2 + 24) = v23;
    *(a2 + 32) = v31;
    *(a2 + 40) = v27;
    *(a2 + 41) = *v49;
    *(a2 + 44) = *&v49[3];
    *(a2 + 48) = v34;
    *(a2 + 56) = v15;
    *(a2 + 64) = v29;
    v28 = *v47;
    *(a2 + 68) = *&v47[3];
    *(a2 + 65) = v28;
    *(a2 + 72) = v24;
    *(a2 + 80) = v30;
  }

  return result;
}

uint64_t sub_10021C724@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_10022020C();
  v9 = v7(&type metadata for Config.Tailspin.ClassConfig.VersionOneKeys, &type metadata for Config.Tailspin.ClassConfig.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_10020DA04(0, v9, v10);
  v15 = v14;
  v16 = v13;
  v17 = sub_10020A744(1u, v11, v12);
  v19 = v18;
  v24 = v17;
  v20 = sub_100208A18(2, v11, v12, sub_1002066E4, sub_10020E62C);
  v23 = v21;

  result = sub_100003C3C(a1);
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v24;
  a2[3] = v19 & 1;
  a2[4] = v20;
  a2[5] = v23;
  return result;
}

void *sub_10021C8EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v4 = sub_1000039E8(&qword_1004AD198);
  v5 = __chkstk_darwin(v4 - 8);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = &v79 - v7;
  v8 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v90 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v79 - v12;
  sub_100219B90(v135);
  v132 = v135[6];
  v133 = v135[7];
  v134 = v136;
  v128 = v135[2];
  v129 = v135[3];
  v131 = v135[5];
  v130 = v135[4];
  v127 = v135[1];
  v126 = v135[0];
  v14 = a1[3];
  v15 = a1[4];
  v91 = a1;
  sub_10000E2A8(a1, v14);
  (*(v15 + 24))(v122, v14, v15);
  if (v2)
  {
LABEL_37:
    sub_100003C3C(v91);
    *&v109[88] = v131;
    *&v109[104] = v132;
    *&v109[120] = v133;
    *&v109[24] = v127;
    *&v109[40] = v128;
    *&v109[56] = v129;
    *&v109[72] = v130;
    *v109 = _swiftEmptyArrayStorage;
    v110 = v134;
    *&v109[8] = v126;
    *v111 = v125[0];
    *&v111[3] = *(v125 + 3);
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v112 = _swiftEmptyArrayStorage;
    v118 = _swiftEmptyArrayStorage;
    v119 = 0;
    v120 = _swiftEmptyArrayStorage;
    v121 = 2;
    return sub_1002208C8(v109);
  }

  else
  {
    v85 = v11;
    v86 = v13;
    v94 = v8;
    v16 = sub_100187404(_swiftEmptyArrayStorage);
    v17 = v123;
    v18 = v124;
    sub_10000E2A8(v122, v123);
    v19 = (*(v18 + 16))(v17, v18);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = v19;
      v88 = v16;
      if (!v19)
      {
        v11 = v96;
        goto LABEL_36;
      }

      v21 = 0;
      v22 = 0;
      countAndFlagsBits = 0;
      v92 = (v90 + 48);
      v83 = (v90 + 56);
      v82 = xmmword_100376A40;
      v93 = v19;
      while (1)
      {
        v87 = v22;
        v84 = countAndFlagsBits;
        v24 = v21;
        while (1)
        {
          if (v24 >= v20)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:

            v76 = type metadata accessor for DecodingError();
            swift_allocError();
            v78 = v77;
            sub_1000039E8(&qword_1004A7168);
            *v78 = &type metadata for String;

            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v76 - 8) + 104))(v78, enum case for DecodingError.typeMismatch(_:), v76);
            swift_willThrow();

LABEL_42:
            sub_100220BA8(v11, type metadata accessor for Config.Cryptex.Cryptex);

            sub_100003C3C(v122);
            goto LABEL_37;
          }

          if (__OFADD__(v24, 1))
          {
            goto LABEL_40;
          }

          v25 = v123;
          v26 = v124;
          sub_10000E2A8(v122, v123);
          (*(v26 + 24))(v109, &type metadata for Config.Cryptex.Network, v24, &type metadata for Config.Cryptex.Network, &protocol witness table for Config.Cryptex.Network, v25, v26);
          v137 = v24 + 1;
          v106 = *&v109[96];
          v107 = *&v109[112];
          v102 = *&v109[32];
          v103 = *&v109[48];
          v104 = *&v109[64];
          v105 = *&v109[80];
          v100 = *v109;
          v101 = *&v109[16];
          v97[6] = *&v109[96];
          v97[7] = *&v109[112];
          v97[2] = *&v109[32];
          v97[3] = *&v109[48];
          v97[4] = *&v109[64];
          v97[5] = *&v109[80];
          v108 = v109[128];
          LOBYTE(v97[8]) = v109[128];
          v97[0] = *v109;
          v97[1] = *&v109[16];
          if (sub_100218DC8(v97) != 1)
          {
            v98[6] = v132;
            v98[7] = v133;
            v99 = v134;
            v98[2] = v128;
            v98[3] = v129;
            v98[4] = v130;
            v98[5] = v131;
            v98[0] = v126;
            v98[1] = v127;
            sub_100013F2C(v98, &qword_1004ACE98);
            v132 = v106;
            v133 = v107;
            v134 = v108;
            v128 = v102;
            v129 = v103;
            v131 = v105;
            v130 = v104;
            v127 = v101;
            v126 = v100;
          }

          v27 = v123;
          v28 = v124;
          sub_10000E2A8(v122, v123);
          v29 = v94;
          v30 = v95;
          (*(v28 + 24))(v94, v24, v94, &protocol witness table for Config.Cryptex.Cryptex, v27, v28);
          if ((*v92)(v30, 1, v29) != 1)
          {
            break;
          }

          sub_100013F2C(v30, &qword_1004AD198);
          ++v24;
          v20 = v93;
          v11 = v96;
          if (v137 == v93)
          {
            goto LABEL_36;
          }
        }

        sub_100220AD8(v30, v86, type metadata accessor for Config.Cryptex.Cryptex);
        v31 = v124;
        sub_10000E2A8(v122, v123);
        v81._object = *(v31 + 32);
        v32 = sub_10021E4D4();
        v33 = (v81._object)(&type metadata for Config.Cryptex.VersionOneKeys, v24, &type metadata for Config.Cryptex.VersionOneKeys);
        v20 = v93;
        v35 = v33;
        v36 = v34;
        v37 = v88;
        if (!*(v33 + 16) || (v38 = sub_100013364(0x696669746E656469, 0xEA00000000007265), (v39 & 1) == 0))
        {

          v11 = v86;
          sub_1000039E8(&qword_1004ACD08);
          v81._countAndFlagsBits = URL.absoluteString.getter();
          v81._object = v43;
          goto LABEL_19;
        }

        v40 = *(*(v35 + 56) + 8 * v38);
        sub_1000039E8(&qword_1004AAA00);
        v41 = swift_allocObject();
        *(v41 + 16) = v82;
        *(v41 + 56) = &type metadata for Config.Cryptex.VersionOneKeys;
        *(v41 + 64) = v32;
        *(v41 + 32) = 14;
        *&v98[0] = v36;
        v80 = v40 & 0x1FFFFFFFFFFFFFFFLL;

        sub_10034A3A8(v41);

        v11 = v86;
        if (v40 >> 61 != 3)
        {
          goto LABEL_41;
        }

        v42 = *(v80 + 24);
        v81._countAndFlagsBits = *(v80 + 16);
        v81._object = v42;

        v37 = v88;
LABEL_19:
        v44 = v89;
        if (v37[2])
        {
          v45 = sub_100013364(v81._countAndFlagsBits, v81._object);
          if (v46)
          {
            v70 = v90;
            sub_100220B40(v37[7] + *(v90 + 72) * v45, v44, type metadata accessor for Config.Cryptex.Cryptex);
            (*(v70 + 56))(v44, 0, 1, v94);

            sub_100013F2C(v44, &qword_1004AD198);
            v71 = type metadata accessor for DecodingError();
            swift_allocError();
            v73 = v72;
            v88 = v37;
            v74 = v91[3];
            v75 = v91[4];
            sub_10000E2A8(v91, v74);
            (*(v75 + 8))(v74, v75);
            *&v98[0] = 0;
            *(&v98[0] + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(25);

            *&v98[0] = 0xD000000000000017;
            *(&v98[0] + 1) = 0x80000001004400F0;
            String.append(_:)(v81);

            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v71 - 8) + 104))(v73, enum case for DecodingError.dataCorrupted(_:), v71);
            swift_willThrow();
            goto LABEL_42;
          }
        }

        (*v83)(v44, 1, 1, v94);
        sub_100013F2C(v44, &qword_1004AD198);
        v47 = v87;
        if (v87)
        {
          sub_1000039E8(&qword_1004A6B08);
          v48 = swift_allocObject();
          *(v48 + 16) = v82;
          *(v48 + 32) = v84;
          *(v48 + 40) = v47;

          v11[10] = v48;
        }

        sub_100220B40(v11, v85, type metadata accessor for Config.Cryptex.Cryptex);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = v37;
        v50 = sub_100013364(v81._countAndFlagsBits, v81._object);
        v52 = v37[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_44;
        }

        v56 = v51;
        if (v37[3] >= v55)
        {
          countAndFlagsBits = v81._countAndFlagsBits;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = v50;
            sub_1001844F0();
            v50 = v63;
            countAndFlagsBits = v81._countAndFlagsBits;
          }
        }

        else
        {
          sub_100182898(v55, isUniquelyReferenced_nonNull_native);
          countAndFlagsBits = v81._countAndFlagsBits;
          v50 = sub_100013364(v81._countAndFlagsBits, v81._object);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_46;
          }
        }

        v11 = v96;
        v58 = *&v98[0];
        v88 = *&v98[0];
        if (v56)
        {
          sub_10022091C(v85, *(*&v98[0] + 56) + *(v90 + 72) * v50);
          object = v81._object;
        }

        else
        {
          *(*&v98[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
          v60 = (v58[6] + 16 * v50);
          object = v81._object;
          *v60 = countAndFlagsBits;
          v60[1] = object;
          sub_100220AD8(v85, v58[7] + *(v90 + 72) * v50, type metadata accessor for Config.Cryptex.Cryptex);
          v61 = v58[2];
          v54 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v54)
          {
            goto LABEL_45;
          }

          v58[2] = v62;
        }

        sub_100220BA8(v86, type metadata accessor for Config.Cryptex.Cryptex);
        v22 = object;
        v21 = v137;
        if (v137 == v20)
        {
LABEL_36:

          v64 = v91;
          v65 = v91[3];
          v66 = v91[4];
          sub_10000E2A8(v91, v65);
          v67 = (*(v66 + 8))(v65, v66);
          sub_100003C3C(v122);
          *(&v97[5] + 8) = v131;
          *(&v97[6] + 8) = v132;
          *(&v97[7] + 8) = v133;
          *(&v97[1] + 8) = v127;
          *(&v97[2] + 8) = v128;
          *(&v97[3] + 8) = v129;
          *(&v97[4] + 8) = v130;
          *&v97[0] = _swiftEmptyArrayStorage;
          BYTE8(v97[8]) = v134;
          *(v97 + 8) = v126;
          *(&v97[8] + 9) = v125[0];
          HIDWORD(v97[8]) = *(v125 + 3);
          *(&v97[9] + 8) = 0u;
          *(&v97[10] + 8) = 0u;
          *(&v97[11] + 8) = 0u;
          *(&v97[12] + 8) = 0u;
          *(&v97[13] + 8) = 0u;
          *&v97[9] = _swiftEmptyArrayStorage;
          v68 = v88;
          *(&v97[14] + 1) = v67;
          *&v97[15] = v88;
          *(&v97[15] + 1) = _swiftEmptyArrayStorage;
          LOBYTE(v97[16]) = 2;
          sub_100219BAC(v97, v109);
          sub_100003C3C(v64);
          *&v109[88] = v131;
          *&v109[104] = v132;
          *&v109[120] = v133;
          *&v109[24] = v127;
          *&v109[40] = v128;
          *&v109[56] = v129;
          *&v109[72] = v130;
          *v109 = _swiftEmptyArrayStorage;
          v110 = v134;
          *&v109[8] = v126;
          *v111 = v125[0];
          *&v111[3] = *(v125 + 3);
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v112 = _swiftEmptyArrayStorage;
          v118 = v67;
          v119 = v68;
          v120 = _swiftEmptyArrayStorage;
          v121 = 2;
          sub_1002208C8(v109);
          return memcpy(v11, v97, 0x101uLL);
        }
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021D6AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_100218CCC();
  v9 = v7(&type metadata for Config.VersionOneKeys, &type metadata for Config.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_10020AC98(30, v9, v10);
  v15 = v14;
  v16 = v13;
  v17 = sub_10020AC98(22, v11, v12);
  v19 = v18;
  v29 = v17;
  v21 = sub_100209690(28, v11, v12);
  v23 = v22;

  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v23 = 0;
    v24 = _swiftEmptyArrayStorage;
  }

  if (v15 == 2 && v19 == 2 && v23 == 0)
  {

    v16 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v27 = v15;
    v28 = v19;
  }

  result = sub_100003C3C(a1);
  *a2 = v16;
  a2[1] = v27;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v24;
  a2[5] = v23;
  return result;
}

uint64_t sub_10021D87C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_10022035C();
  v9 = v7(&type metadata for Config.User.VersionOneKeys, &type metadata for Config.User.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v11 = v9;
  v12 = v10;
  memset(&v64[8], 0, 104);
  *v64 = _swiftEmptyArrayStorage;
  *&v68 = _swiftEmptyArrayStorage;
  *(&v68 + 1) = 0;
  *&v66 = sub_10020D554(1u, v9, v10);
  *(&v66 + 1) = v13;
  *&v67 = sub_10020D554(2u, v11, v12);
  *(&v67 + 1) = v14;
  *&v65 = sub_10020AF58(4u, v11, v12);
  BYTE8(v65) = v15;
  *&v70 = sub_10020C088(3, v11, v12, sub_1002069AC);
  *(&v70 + 1) = v16;
  *&v71 = v17;
  *&v69 = sub_10020AF58(6u, v11, v12);
  BYTE8(v69) = v18;
  v19 = sub_10020C088(5, v11, v12, sub_1002069AC);
  v21 = v20;
  v23 = v22;

  *(&v71 + 1) = v19;
  *&v72 = v21;
  *(&v72 + 1) = v23;
  sub_100003B20(a1, v48);
  sub_10021DCA8(v48, &v49);
  v73[4] = v53;
  v73[5] = v54;
  v74 = v55;
  v73[0] = v49;
  v73[1] = v50;
  v73[2] = v51;
  v73[3] = v52;
  sub_100220754(v73, &v64[8]);
  v32[12] = v70;
  v32[13] = v71;
  v32[14] = v72;
  v32[8] = v66;
  v32[9] = v67;
  v32[10] = v68;
  v32[11] = v69;
  v32[4] = *&v64[64];
  v32[5] = *&v64[80];
  v32[6] = *&v64[96];
  v32[7] = v65;
  v32[0] = *v64;
  v32[1] = *&v64[16];
  v32[2] = *&v64[32];
  v32[3] = *&v64[48];
  v45 = v70;
  v46 = v71;
  v47 = v72;
  v41 = v66;
  v42 = v67;
  v43 = v68;
  v44 = v69;
  v37 = *&v64[64];
  v38 = *&v64[80];
  v39 = *&v64[96];
  v40 = v65;
  v33 = *v64;
  v34 = *&v64[16];
  v35 = *&v64[32];
  v36 = *&v64[48];
  DInitData.init(rawValue:)(&v33);
  sub_100189980(v32, &v49);
  sub_100003C3C(a1);
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v53 = *&v64[64];
  v54 = *&v64[80];
  v55 = *&v64[96];
  v56 = v65;
  v49 = *v64;
  v50 = *&v64[16];
  v51 = *&v64[32];
  v52 = *&v64[48];
  result = sub_1001D87FC(&v49);
  v25 = v46;
  a2[12] = v45;
  a2[13] = v25;
  a2[14] = v47;
  v26 = v42;
  a2[8] = v41;
  a2[9] = v26;
  v27 = v44;
  a2[10] = v43;
  a2[11] = v27;
  v28 = v38;
  a2[4] = v37;
  a2[5] = v28;
  v29 = v40;
  a2[6] = v39;
  a2[7] = v29;
  v30 = v34;
  *a2 = v33;
  a2[1] = v30;
  v31 = v36;
  a2[2] = v35;
  a2[3] = v31;
  return result;
}

uint64_t sub_10021DCA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_10022035C();
  v9 = v7(&type metadata for Config.User.VersionOneKeys, &type metadata for Config.User.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    v77 = v2;
    sub_100003C3C(a1);
    v62 = _swiftEmptyArrayStorage;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = _swiftEmptyArrayStorage;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    return sub_1002206A4(&v62);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    sub_100208810(7u, v9, v10, &v72);
    v54 = a2;
    v13 = v72;
    v14 = v73;
    v15 = v74;
    v16 = v75;
    v17 = v76;
    sub_100208904(8u, v11, v12, v61);
    v77 = 0;
    v44 = v73;

    v19 = v61[1];
    v51 = v61[3];
    v52 = v61[2];
    v49 = v61[0];
    v50 = v61[4];
    v47 = v61[6];
    v48 = v61[5];
    v46 = v61[7];
    v56 = _swiftEmptyArrayStorage;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    sub_100013F2C(&v56, &qword_1004AD188);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v53 = v19;
    if (v44 | v19)
    {
      v62 = v13;
      v63 = v14;
      v64 = v15;
      v65 = v16;
      v66 = v17;
      v67 = v49;
      *&v68 = v19;
      *(&v68 + 1) = v52;
      *&v69 = v51;
      *(&v69 + 1) = v50;
      v20 = v46;
      v21 = v47;
      *&v70 = v48;
      *(&v70 + 1) = v47;
      v71 = v46;
      sub_1002206F8(&v62, v55);
      v22 = v48;
      v23 = v50;
      v24 = v51;
      v25 = v52;
      v26 = v19;
      v27 = v49;
      v28 = v17;
      v29 = v16;
      v30 = v15;
      v31 = v14;
      v32 = v13;
    }

    v36 = v27;
    v37 = v30;
    v38 = v26;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = v21;
    v45 = v20;
    v33 = v28;
    v34 = v31;
    v35 = v32;
    sub_100003C3C(a1);
    v62 = v13;
    v63 = v14;
    v64 = v15;
    v65 = v16;
    v66 = v17;
    v67 = v49;
    *&v68 = v53;
    *(&v68 + 1) = v52;
    *&v69 = v51;
    *(&v69 + 1) = v50;
    *&v70 = v48;
    *(&v70 + 1) = v47;
    v71 = v46;
    result = sub_1002206A4(&v62);
    *v54 = v35;
    v54[1] = v34;
    v54[2] = v37;
    v54[3] = v29;
    v54[4] = v33;
    v54[5] = v36;
    v54[6] = v38;
    v54[7] = v39;
    v54[8] = v40;
    v54[9] = v41;
    v54[10] = v42;
    v54[11] = v43;
    v54[12] = v45;
  }

  return result;
}

uint64_t sub_10021DFE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  v7 = *(v6 + 16);
  v8 = sub_1002202B4();
  v9 = v7(&type metadata for Config.User.Authentication.Memento.VersionOneKeys, &type metadata for Config.User.Authentication.Memento.VersionOneKeys, v8, v5, v6);
  if (v2)
  {
    sub_100003C3C(a1);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v14 = sub_100208A18(0, v9, v10, sub_100206BB0, sub_10020E888);
    v16 = v15;
    v17 = sub_100208A18(1, v11, v12, sub_100206BB0, sub_10020E888);
    v19 = v18;
    v31 = sub_10020C088(2, v11, v12, sub_100206BB0);
    v32 = v20;
    v22 = v21;

    if (v16)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19 == 0;
    }

    if (v23 && v22 == 0)
    {
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v25 = 0;
      v26 = 0;
      v32 = 0;
    }

    else
    {

      v29 = v16;
      v30 = v14;
      v27 = v19;
      v28 = v17;
      v25 = v22;
      v26 = v31;
    }

    sub_100003C3C(a1);

    *a2 = v30;
    a2[1] = v29;
    a2[2] = v28;
    a2[3] = v27;
    a2[4] = v26;
    a2[5] = v32;
    a2[6] = v25;
  }

  return result;
}

void *sub_10021E2C4(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E2A8(a1, v3);
  v5 = *(v4 + 16);
  v6 = sub_100220308();
  v7 = v5(&type metadata for Config.User.Authentication.ESC.VersionOneKeys, &type metadata for Config.User.Authentication.ESC.VersionOneKeys, v6, v3, v4);
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    v3 = sub_100208AEC(0, v7, v8);
    v12 = v11;
    sub_100208AEC(1, v9, v10);
    v15 = v14;

    if (!(v12 | v15))
    {

      v3 = 0;
    }
  }

  sub_100003C3C(a1);
  return v3;
}

uint64_t _s10DarwinInit6ConfigV14VersionOneKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10021E4D4()
{
  result = qword_1004ACEA8;
  if (!qword_1004ACEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEA8);
  }

  return result;
}

uint64_t sub_10021E528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10021E5E4()
{
  result = qword_1004ACEB0;
  if (!qword_1004ACEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEB0);
  }

  return result;
}

uint64_t sub_10021E638(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10021E698()
{
  result = qword_1004ACEB8;
  if (!qword_1004ACEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEB8);
  }

  return result;
}

uint64_t _s10DarwinInit6ConfigV7CryptexV14VersionOneKeysO8rawValueAGSgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10021E740()
{
  result = qword_1004ACEC0;
  if (!qword_1004ACEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEC0);
  }

  return result;
}

unint64_t sub_10021E794()
{
  result = qword_1004ACEC8;
  if (!qword_1004ACEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEC8);
  }

  return result;
}

unint64_t _s10DarwinInit6ConfigV4UserV14VersionOneKeysO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100486D78, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10021E838()
{
  result = qword_1004ACED0;
  if (!qword_1004ACED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACED0);
  }

  return result;
}

unint64_t sub_10021E890()
{
  result = qword_1004ACED8;
  if (!qword_1004ACED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACED8);
  }

  return result;
}

unint64_t sub_10021E8E8()
{
  result = qword_1004ACEE0;
  if (!qword_1004ACEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEE0);
  }

  return result;
}

unint64_t sub_10021E970()
{
  result = qword_1004ACEF8;
  if (!qword_1004ACEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACEF8);
  }

  return result;
}

unint64_t sub_10021E9C8()
{
  result = qword_1004ACF00;
  if (!qword_1004ACF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF00);
  }

  return result;
}

unint64_t sub_10021EA20()
{
  result = qword_1004ACF08;
  if (!qword_1004ACF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF08);
  }

  return result;
}

unint64_t sub_10021EA78()
{
  result = qword_1004ACF10;
  if (!qword_1004ACF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF10);
  }

  return result;
}

unint64_t sub_10021EAD0()
{
  result = qword_1004ACF18;
  if (!qword_1004ACF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF18);
  }

  return result;
}

unint64_t sub_10021EB28()
{
  result = qword_1004ACF20;
  if (!qword_1004ACF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF20);
  }

  return result;
}

unint64_t sub_10021EB80()
{
  result = qword_1004ACF28;
  if (!qword_1004ACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF28);
  }

  return result;
}

unint64_t sub_10021EBD8()
{
  result = qword_1004ACF30;
  if (!qword_1004ACF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF30);
  }

  return result;
}

unint64_t sub_10021EC30()
{
  result = qword_1004ACF38;
  if (!qword_1004ACF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF38);
  }

  return result;
}

unint64_t sub_10021EC88()
{
  result = qword_1004ACF40;
  if (!qword_1004ACF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF40);
  }

  return result;
}

unint64_t sub_10021ECE0()
{
  result = qword_1004ACF48;
  if (!qword_1004ACF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF48);
  }

  return result;
}

unint64_t sub_10021ED38()
{
  result = qword_1004ACF50;
  if (!qword_1004ACF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF50);
  }

  return result;
}

unint64_t sub_10021ED90()
{
  result = qword_1004ACF58;
  if (!qword_1004ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF58);
  }

  return result;
}

unint64_t sub_10021EDE8()
{
  result = qword_1004ACF60;
  if (!qword_1004ACF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF60);
  }

  return result;
}

unint64_t sub_10021EE40()
{
  result = qword_1004ACF68;
  if (!qword_1004ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF68);
  }

  return result;
}

unint64_t sub_10021EE98()
{
  result = qword_1004ACF70;
  if (!qword_1004ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF70);
  }

  return result;
}

unint64_t sub_10021EEF0()
{
  result = qword_1004ACF78;
  if (!qword_1004ACF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF78);
  }

  return result;
}

unint64_t sub_10021EF48()
{
  result = qword_1004ACF80;
  if (!qword_1004ACF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF80);
  }

  return result;
}

unint64_t sub_10021EFA0()
{
  result = qword_1004ACF88;
  if (!qword_1004ACF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF88);
  }

  return result;
}

unint64_t sub_10021EFF8()
{
  result = qword_1004ACF90;
  if (!qword_1004ACF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF90);
  }

  return result;
}

unint64_t sub_10021F050()
{
  result = qword_1004ACF98;
  if (!qword_1004ACF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACF98);
  }

  return result;
}

unint64_t sub_10021F0A8()
{
  result = qword_1004ACFA0;
  if (!qword_1004ACFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFA0);
  }

  return result;
}

unint64_t sub_10021F100()
{
  result = qword_1004ACFA8;
  if (!qword_1004ACFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFA8);
  }

  return result;
}

unint64_t sub_10021F158()
{
  result = qword_1004ACFB0;
  if (!qword_1004ACFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFB0);
  }

  return result;
}

unint64_t sub_10021F1B0()
{
  result = qword_1004ACFB8;
  if (!qword_1004ACFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFB8);
  }

  return result;
}

unint64_t sub_10021F208()
{
  result = qword_1004ACFC0;
  if (!qword_1004ACFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFC0);
  }

  return result;
}

unint64_t sub_10021F260()
{
  result = qword_1004ACFC8;
  if (!qword_1004ACFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFC8);
  }

  return result;
}

unint64_t sub_10021F2B8()
{
  result = qword_1004ACFD0;
  if (!qword_1004ACFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFD0);
  }

  return result;
}

unint64_t sub_10021F310()
{
  result = qword_1004ACFD8;
  if (!qword_1004ACFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFD8);
  }

  return result;
}

unint64_t sub_10021F368()
{
  result = qword_1004ACFE0;
  if (!qword_1004ACFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFE0);
  }

  return result;
}

unint64_t sub_10021F3C0()
{
  result = qword_1004ACFE8;
  if (!qword_1004ACFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFE8);
  }

  return result;
}

unint64_t sub_10021F418()
{
  result = qword_1004ACFF0;
  if (!qword_1004ACFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFF0);
  }

  return result;
}

unint64_t sub_10021F470()
{
  result = qword_1004ACFF8;
  if (!qword_1004ACFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACFF8);
  }

  return result;
}

unint64_t sub_10021F4F8()
{
  result = qword_1004AD010;
  if (!qword_1004AD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD010);
  }

  return result;
}

unint64_t sub_10021F550()
{
  result = qword_1004AD018;
  if (!qword_1004AD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD018);
  }

  return result;
}

unint64_t sub_10021F5A8()
{
  result = qword_1004AD020;
  if (!qword_1004AD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD020);
  }

  return result;
}

unint64_t sub_10021F630()
{
  result = qword_1004AD038;
  if (!qword_1004AD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD038);
  }

  return result;
}

unint64_t sub_10021F688()
{
  result = qword_1004AD040;
  if (!qword_1004AD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD040);
  }

  return result;
}

unint64_t sub_10021F6E0()
{
  result = qword_1004AD048;
  if (!qword_1004AD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD048);
  }

  return result;
}

unint64_t sub_10021F768()
{
  result = qword_1004AD060;
  if (!qword_1004AD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD060);
  }

  return result;
}

unint64_t sub_10021F7C0()
{
  result = qword_1004AD068;
  if (!qword_1004AD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD068);
  }

  return result;
}

unint64_t sub_10021F818()
{
  result = qword_1004AD070;
  if (!qword_1004AD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD070);
  }

  return result;
}

unint64_t sub_10021F870()
{
  result = qword_1004AD078;
  if (!qword_1004AD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD078);
  }

  return result;
}

unint64_t sub_10021F8C8()
{
  result = qword_1004AD080;
  if (!qword_1004AD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD080);
  }

  return result;
}

unint64_t sub_10021F920()
{
  result = qword_1004AD088;
  if (!qword_1004AD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD088);
  }

  return result;
}

uint64_t sub_10021F9A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021F9FC()
{
  result = qword_1004AD0A0;
  if (!qword_1004AD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0A0);
  }

  return result;
}

unint64_t sub_10021FA54()
{
  result = qword_1004AD0A8;
  if (!qword_1004AD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0A8);
  }

  return result;
}

unint64_t sub_10021FAAC()
{
  result = qword_1004AD0B0;
  if (!qword_1004AD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0B0);
  }

  return result;
}

unint64_t sub_10021FB04()
{
  result = qword_1004AD0B8;
  if (!qword_1004AD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0B8);
  }

  return result;
}

unint64_t sub_10021FB5C()
{
  result = qword_1004AD0C0;
  if (!qword_1004AD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0C0);
  }

  return result;
}

unint64_t sub_10021FBB4()
{
  result = qword_1004AD0C8;
  if (!qword_1004AD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0C8);
  }

  return result;
}

unint64_t sub_10021FC0C()
{
  result = qword_1004AD0D0;
  if (!qword_1004AD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0D0);
  }

  return result;
}

unint64_t sub_10021FC64()
{
  result = qword_1004AD0D8;
  if (!qword_1004AD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0D8);
  }

  return result;
}

unint64_t sub_10021FCBC()
{
  result = qword_1004AD0E0;
  if (!qword_1004AD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0E0);
  }

  return result;
}

unint64_t sub_10021FD14()
{
  result = qword_1004AD0E8;
  if (!qword_1004AD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0E8);
  }

  return result;
}

unint64_t sub_10021FD6C()
{
  result = qword_1004AD0F0;
  if (!qword_1004AD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0F0);
  }

  return result;
}

unint64_t sub_10021FDC4()
{
  result = qword_1004AD0F8;
  if (!qword_1004AD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD0F8);
  }

  return result;
}

unint64_t sub_10021FE1C()
{
  result = qword_1004AD100;
  if (!qword_1004AD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD100);
  }

  return result;
}

unint64_t sub_10021FE74()
{
  result = qword_1004AD108;
  if (!qword_1004AD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD108);
  }

  return result;
}

unint64_t sub_10021FECC()
{
  result = qword_1004AD110;
  if (!qword_1004AD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD110);
  }

  return result;
}

uint64_t _s14VersionOneKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14VersionOneKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002201B8()
{
  result = qword_1004AD118;
  if (!qword_1004AD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD118);
  }

  return result;
}

unint64_t sub_10022020C()
{
  result = qword_1004AD120;
  if (!qword_1004AD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD120);
  }

  return result;
}

unint64_t sub_100220260()
{
  result = qword_1004AD128;
  if (!qword_1004AD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD128);
  }

  return result;
}

unint64_t sub_1002202B4()
{
  result = qword_1004AD130;
  if (!qword_1004AD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD130);
  }

  return result;
}

unint64_t sub_100220308()
{
  result = qword_1004AD138;
  if (!qword_1004AD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD138);
  }

  return result;
}

unint64_t sub_10022035C()
{
  result = qword_1004AD140;
  if (!qword_1004AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD140);
  }

  return result;
}

unint64_t sub_1002203B0()
{
  result = qword_1004AD148;
  if (!qword_1004AD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD148);
  }

  return result;
}

unint64_t sub_100220404()
{
  result = qword_1004AD150;
  if (!qword_1004AD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD150);
  }

  return result;
}

unint64_t sub_100220458()
{
  result = qword_1004AD158;
  if (!qword_1004AD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD158);
  }

  return result;
}

unint64_t sub_1002204AC()
{
  result = qword_1004AD160;
  if (!qword_1004AD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD160);
  }

  return result;
}

unint64_t sub_100220500()
{
  result = qword_1004AD168;
  if (!qword_1004AD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD168);
  }

  return result;
}

unint64_t sub_100220554()
{
  result = qword_1004AD170;
  if (!qword_1004AD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD170);
  }

  return result;
}

unint64_t sub_1002205A8()
{
  result = qword_1004AD178;
  if (!qword_1004AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD178);
  }

  return result;
}

unint64_t sub_1002205FC()
{
  result = qword_1004AD180;
  if (!qword_1004AD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD180);
  }

  return result;
}

uint64_t sub_100220754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AD190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022091C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_100220A84(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100220ACC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100220AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100220B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100220BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100220C58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v62[4] = *(a1 + 72);
  v62[5] = v4;
  v62[6] = *(a1 + 104);
  v63 = *(a1 + 120);
  v5 = *(a1 + 24);
  v62[0] = *(a1 + 8);
  v62[1] = v5;
  v6 = *(a1 + 56);
  v62[2] = *(a1 + 40);
  v62[3] = v6;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 56);
  v60[2] = *(a2 + 40);
  v60[3] = v9;
  v60[0] = v7;
  v60[1] = v8;
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v61 = *(a2 + 120);
  v60[5] = v11;
  v60[6] = v12;
  v60[4] = v10;
  v13 = *&v62[0];
  v14 = *&v60[0];
  if (!*&v62[0])
  {
    if (!*&v60[0])
    {
      v34 = *(a1 + 48);
      *&v51[56] = *(a1 + 64);
      v35 = *(a1 + 96);
      *&v51[72] = *(a1 + 80);
      *&v51[88] = v35;
      *&v51[104] = *(a1 + 112);
      v36 = *(a1 + 32);
      *&v51[8] = *(a1 + 16);
      *&v51[24] = v36;
      *v51 = 0;
      *&v51[40] = v34;
      sub_100013E54(v62, &v43, &qword_1004AD1E0);
      sub_100013E54(v60, &v43, &qword_1004AD1E0);
      sub_100013F2C(v51, &qword_1004AD1E0);
      v22 = 1;
      return v22 & 1;
    }

    sub_100013E54(v62, v51, &qword_1004AD1E0);
    sub_100013E54(v60, v51, &qword_1004AD1E0);
    goto LABEL_7;
  }

  *v51 = *&v62[0];
  v15 = *(a1 + 32);
  *&v51[8] = *(a1 + 16);
  *&v51[24] = v15;
  v16 = *(a1 + 64);
  *&v51[40] = *(a1 + 48);
  *&v51[56] = v16;
  v17 = *(a1 + 96);
  *&v51[104] = *(a1 + 112);
  v18 = *(a1 + 80);
  *&v51[88] = v17;
  *&v51[72] = v18;
  v45 = *&v51[32];
  v46 = *&v51[48];
  v43 = *v51;
  v44 = *&v51[16];
  v50 = *&v51[112];
  v48 = *&v51[80];
  v49 = *&v51[96];
  v47 = *&v51[64];
  if (!*&v60[0])
  {
    *&v42[64] = *&v51[64];
    *&v42[80] = *&v51[80];
    *&v42[96] = *&v51[96];
    *&v42[112] = *&v51[112];
    *v42 = *v51;
    *&v42[16] = *&v51[16];
    *&v42[32] = *&v51[32];
    *&v42[48] = *&v51[48];
    sub_100013E54(v62, v40, &qword_1004AD1E0);
    sub_100013E54(v60, v40, &qword_1004AD1E0);
    sub_100013E54(v51, v40, &qword_1004AD1E0);
    sub_10021E480(v42);
LABEL_7:
    v26 = *(a1 + 48);
    *&v51[56] = *(a1 + 64);
    v27 = *(a1 + 96);
    *&v51[72] = *(a1 + 80);
    *&v51[88] = v27;
    *&v51[104] = *(a1 + 112);
    v28 = *(a1 + 32);
    *&v51[8] = *(a1 + 16);
    *&v51[24] = v28;
    *&v51[40] = v26;
    *v51 = v13;
    v52 = v14;
    v29 = *(a2 + 32);
    v53 = *(a2 + 16);
    v54 = v29;
    v30 = *(a2 + 48);
    v31 = *(a2 + 64);
    v32 = *(a2 + 112);
    v58 = *(a2 + 96);
    v59 = v32;
    v33 = *(a2 + 80);
    v56 = v31;
    v57 = v33;
    v55 = v30;
    sub_100013F2C(v51, &qword_1004AE480);
    v22 = 0;
    return v22 & 1;
  }

  v19 = *(a2 + 48);
  *&v42[56] = *(a2 + 64);
  v20 = *(a2 + 96);
  *&v42[72] = *(a2 + 80);
  *&v42[88] = v20;
  *&v42[104] = *(a2 + 112);
  v21 = *(a2 + 32);
  *&v42[8] = *(a2 + 16);
  *&v42[24] = v21;
  *&v42[40] = v19;
  *v42 = *&v60[0];
  sub_100013E54(v62, v40, &qword_1004AD1E0);
  sub_100013E54(v60, v40, &qword_1004AD1E0);
  sub_100013E54(v51, v40, &qword_1004AD1E0);
  v22 = _s10DarwinInit6ConfigV14AuthenticationV2eeoiySbAE_AEtFZ_0(&v43, v42);
  v38[4] = *&v42[64];
  v38[5] = *&v42[80];
  v38[6] = *&v42[96];
  v39 = *&v42[112];
  v38[0] = *v42;
  v38[1] = *&v42[16];
  v38[2] = *&v42[32];
  v38[3] = *&v42[48];
  sub_10021E480(v38);
  v40[4] = v47;
  v40[5] = v48;
  v40[6] = v49;
  v41 = v50;
  v40[0] = v43;
  v40[1] = v44;
  v40[2] = v45;
  v40[3] = v46;
  sub_10021E480(v40);
  v23 = *(a1 + 48);
  *&v42[56] = *(a1 + 64);
  v24 = *(a1 + 96);
  *&v42[72] = *(a1 + 80);
  *&v42[88] = v24;
  *&v42[104] = *(a1 + 112);
  v25 = *(a1 + 32);
  *&v42[8] = *(a1 + 16);
  *&v42[24] = v25;
  *v42 = v13;
  *&v42[40] = v23;
  sub_100013F2C(v42, &qword_1004AD1E0);
  return v22 & 1;
}

BOOL sub_100221054(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 8), 0x101uLL);
  memcpy(v11, (a2 + 8), 0x101uLL);
  memcpy(__src, (a1 + 8), 0x101uLL);
  memcpy(&__src[264], (a2 + 8), 0x101uLL);
  memcpy(v14, (a1 + 8), 0x101uLL);
  if (sub_100218DC8(v14) != 1)
  {
    memcpy(v8, (a2 + 8), 0x101uLL);
    if (sub_100218DC8(v8) != 1)
    {
      memcpy(v6, (a2 + 8), 0x101uLL);
      memcpy(v9, (a2 + 8), 0x101uLL);
      memcpy(v13, (a1 + 8), 0x101uLL);
      sub_100013E54(__dst, v7, &qword_1004ACE90);
      sub_100013E54(v11, v7, &qword_1004ACE90);
      v4 = _s10DarwinInit6ConfigV7CryptexV2eeoiySbAE_AEtFZ_0(v13, v9);
      sub_100013F2C(v6, &qword_1004ACE90);
      memcpy(v7, (a1 + 8), 0x101uLL);
      sub_100013F2C(v7, &qword_1004ACE90);
      return v4;
    }

    goto LABEL_5;
  }

  memcpy(v9, (a2 + 8), 0x101uLL);
  if (sub_100218DC8(v9) != 1)
  {
LABEL_5:
    memcpy(v9, __src, 0x209uLL);
    sub_100013E54(__dst, v13, &qword_1004ACE90);
    sub_100013E54(v11, v13, &qword_1004ACE90);
    sub_100013F2C(v9, &qword_1004AE478);
    return 0;
  }

  memcpy(v13, (a1 + 8), 0x101uLL);
  sub_100013E54(__dst, v8, &qword_1004ACE90);
  sub_100013E54(v11, v8, &qword_1004ACE90);
  sub_100013F2C(v13, &qword_1004ACE90);
  return 1;
}

uint64_t sub_1002212A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Diavlo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004AD1B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000039E8(&qword_1004AE470);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = *(sub_1000039E8(&qword_1004ACDA0) + 44);
  v15 = *(v11 + 56);
  sub_100013E54(a1 + v14, v13, &qword_1004AD1B8);
  sub_100013E54(a2 + v14, &v13[v15], &qword_1004AD1B8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100013F2C(v13, &qword_1004AD1B8);
      v17 = 1;
      return v17 & 1;
    }

LABEL_6:
    sub_100013F2C(v13, &qword_1004AE470);
    v17 = 0;
    return v17 & 1;
  }

  sub_100013E54(v13, v9, &qword_1004AD1B8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100259F24(v9, type metadata accessor for Config.Diavlo);
    goto LABEL_6;
  }

  v18 = v22;
  sub_100268EDC(&v13[v15], v22, type metadata accessor for Config.Diavlo);
  if (sub_100222770(v9, v18))
  {
    v19 = *(v4 + 20);
    v17 = sub_100222AB4(*&v9[v19], *&v9[v19 + 8], *&v9[v19 + 16], *(v18 + v19), *(v18 + v19 + 8), *(v18 + v19 + 16));
  }

  else
  {
    v17 = 0;
  }

  sub_100259F24(v18, type metadata accessor for Config.Diavlo);
  sub_100259F24(v9, type metadata accessor for Config.Diavlo);
  sub_100013F2C(v13, &qword_1004AD1B8);
  return v17 & 1;
}

uint64_t sub_1002215DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v37[2] = *(a1 + 40);
  v37[3] = v2;
  v37[4] = *(a1 + 72);
  v38 = *(a1 + 88);
  v3 = *(a1 + 24);
  v37[0] = *(a1 + 8);
  v37[1] = v3;
  v4 = *(a2 + 56);
  v35[2] = *(a2 + 40);
  v35[3] = v4;
  v35[4] = *(a2 + 72);
  v36 = *(a2 + 88);
  v5 = *(a2 + 24);
  v35[0] = *(a2 + 8);
  v35[1] = v5;
  v6 = *&v37[0];
  if (!*&v37[0])
  {
    if (!*&v35[0])
    {
      *v29 = 0;
      v20 = *(a1 + 64);
      *&v29[40] = *(a1 + 48);
      *&v29[56] = v20;
      *&v29[65] = *(a1 + 73);
      v21 = *(a1 + 32);
      *&v29[8] = *(a1 + 16);
      *&v29[24] = v21;
      sub_100013E54(v37, &v39, &qword_1004AD1E8);
      sub_100013E54(v35, &v39, &qword_1004AD1E8);
      sub_100013F2C(v29, &qword_1004AD1E8);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_5;
  }

  if (!*&v35[0])
  {
LABEL_5:
    v16 = *(a1 + 64);
    *&v29[40] = *(a1 + 48);
    *&v29[56] = v16;
    *&v29[65] = *(a1 + 73);
    v17 = *(a1 + 32);
    *&v29[8] = *(a1 + 16);
    *&v29[24] = v17;
    *v29 = *&v37[0];
    v30 = *&v35[0];
    v18 = *(a2 + 64);
    v33 = *(a2 + 48);
    v34[0] = v18;
    *(v34 + 9) = *(a2 + 73);
    v19 = *(a2 + 32);
    v31 = *(a2 + 16);
    v32 = v19;
    sub_100013E54(v37, &v39, &qword_1004AD1E8);
    sub_100013E54(v35, &v39, &qword_1004AD1E8);
    sub_100013F2C(v29, &qword_1004AE468);
    v13 = 0;
    return v13 & 1;
  }

  *v23 = *&v35[0];
  v7 = *(a2 + 32);
  *&v23[8] = *(a2 + 16);
  *&v23[24] = v7;
  v8 = *(a2 + 64);
  *&v23[40] = *(a2 + 48);
  *&v23[56] = v8;
  *&v23[65] = *(a2 + 73);
  *v29 = *v23;
  *&v29[16] = *&v23[16];
  v29[80] = v23[80];
  *&v29[48] = *&v23[48];
  *&v29[64] = *&v23[64];
  *&v29[32] = *&v23[32];
  v9 = *(a1 + 32);
  v40 = *(a1 + 16);
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(v43 + 9) = *(a1 + 73);
  v43[0] = v11;
  v42 = v10;
  v41 = v9;
  v39 = *&v37[0];
  sub_100013E54(v37, &v24, &qword_1004AD1E8);
  sub_100013E54(v35, &v24, &qword_1004AD1E8);
  v13 = _s10DarwinInit6ConfigV6FinishV2eeoiySbAE_AEtFZ_0(&v39, v29);
  sub_100013F2C(v23, &qword_1004AD1E8);
  v24 = v6;
  v14 = *(a1 + 32);
  v25 = *(a1 + 16);
  v26 = v14;
  v15 = *(a1 + 64);
  v27 = *(a1 + 48);
  v28[0] = v15;
  *(v28 + 9) = *(a1 + 73);
  sub_100013F2C(&v24, &qword_1004AD1E8);
  return v13 & 1;
}

uint64_t sub_100221878(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v48[2] = *(a1 + 40);
  v48[3] = v2;
  v3 = *(a1 + 88);
  v48[4] = *(a1 + 72);
  v48[5] = v3;
  v4 = *(a1 + 24);
  v48[0] = *(a1 + 8);
  v48[1] = v4;
  v5 = *(a2 + 56);
  v47[2] = *(a2 + 40);
  v47[3] = v5;
  v6 = *(a2 + 88);
  v47[4] = *(a2 + 72);
  v47[5] = v6;
  v7 = *(a2 + 24);
  v47[0] = *(a2 + 8);
  v47[1] = v7;
  v8 = *&v48[0];
  if (!*&v48[0])
  {
    if (!*&v47[0])
    {
      v27 = *(a1 + 64);
      *&v39[40] = *(a1 + 48);
      *&v39[56] = v27;
      *&v39[72] = *(a1 + 80);
      v28 = *(a1 + 96);
      *v39 = 0;
      *&v39[88] = v28;
      v29 = *(a1 + 32);
      *&v39[8] = *(a1 + 16);
      *&v39[24] = v29;
      sub_100013E54(v48, &v49, &qword_1004AD1F0);
      sub_100013E54(v47, &v49, &qword_1004AD1F0);
      sub_100013F2C(v39, &qword_1004AD1F0);
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  if (!*&v47[0])
  {
LABEL_5:
    v20 = *(a1 + 64);
    *&v39[40] = *(a1 + 48);
    *&v39[56] = v20;
    *&v39[72] = *(a1 + 80);
    v21 = *(a1 + 96);
    *v39 = *&v48[0];
    *&v39[88] = v21;
    v40 = *&v47[0];
    v22 = *(a1 + 32);
    *&v39[8] = *(a1 + 16);
    *&v39[24] = v22;
    v23 = *(a2 + 16);
    v42 = *(a2 + 32);
    v41 = v23;
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 80);
    v46 = *(a2 + 96);
    v45 = v26;
    v44 = v25;
    v43 = v24;
    sub_100013E54(v48, &v49, &qword_1004AD1F0);
    sub_100013E54(v47, &v49, &qword_1004AD1F0);
    sub_100013F2C(v39, &qword_1004AE460);
    v17 = 0;
    return v17 & 1;
  }

  *v31 = *&v47[0];
  v9 = *(a2 + 32);
  *&v31[8] = *(a2 + 16);
  *&v31[24] = v9;
  *&v31[88] = *(a2 + 96);
  v10 = *(a2 + 64);
  *&v31[72] = *(a2 + 80);
  v11 = *(a2 + 48);
  *&v31[56] = v10;
  *&v31[40] = v11;
  *v39 = *v31;
  *&v39[16] = *&v31[16];
  *&v39[64] = *&v31[64];
  *&v39[80] = *&v31[80];
  *&v39[32] = *&v31[32];
  *&v39[48] = *&v31[48];
  v12 = *(a1 + 16);
  v51 = *(a1 + 32);
  v50 = v12;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 96);
  v54 = *(a1 + 80);
  v53 = v14;
  v52 = v13;
  v55 = v15;
  v49 = *&v48[0];
  v17 = _s10DarwinInit6ConfigV14IdentificationV2eeoiySbAE_AEtFZ_0(&v49, v39);
  sub_100013E54(v48, &v32, &qword_1004AD1F0);
  sub_100013E54(v47, &v32, &qword_1004AD1F0);
  sub_100013F2C(v31, &qword_1004AD1F0);
  v32 = v8;
  v18 = *(a1 + 64);
  v35 = *(a1 + 48);
  v36 = v18;
  v37 = *(a1 + 80);
  v38 = *(a1 + 96);
  v19 = *(a1 + 32);
  v33 = *(a1 + 16);
  v34 = v19;
  sub_100013F2C(&v32, &qword_1004AD1F0);
  return v17 & 1;
}

uint64_t sub_100221B50(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[5];
  v9 = a2[6];
  if (v2)
  {
    if (v6)
    {
      v10 = a1[5];
      v11 = a1[6];
      if (v3)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        if (a1[2] != a2[2] || v3 != v7)
        {
          v17 = a1[1];
          v12 = a2[5];
          v13 = a2[6];
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v8 = v12;
          v2 = v17;
          v9 = v13;
          v5 = v11;
          v4 = v10;
          if ((v14 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_20;
      }

      if (v5)
      {
        if (v9 && (v4 == v8 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          goto LABEL_17;
        }
      }

      else if (!v9)
      {
LABEL_17:
        v15 = 1;
LABEL_21:
        sub_100259330(v6);
        sub_100259330(v2);

        sub_100219ADC(v2);
        return v15;
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  sub_100259330(a2[1]);
  sub_100259330(v2);
  sub_100219ADC(v2);
  sub_100219ADC(v6);
  return 0;
}

uint64_t sub_100221DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v30[0] = *(a1 + 8);
  v30[1] = v2;
  v31[0] = *(a1 + 40);
  *(v31 + 9) = *(a1 + 49);
  v3 = *(a2 + 24);
  v28[0] = *(a2 + 8);
  v28[1] = v3;
  v29[0] = *(a2 + 40);
  *(v29 + 9) = *(a2 + 49);
  v4 = *&v30[0];
  if (!*&v30[0])
  {
    if (!*&v28[0])
    {
      *v22 = 0;
      v14 = *(a1 + 32);
      *&v22[8] = *(a1 + 16);
      *&v22[24] = v14;
      *&v22[40] = *(a1 + 48);
      v22[56] = *(a1 + 64);
      sub_100013E54(v30, &v32, &qword_1004ACE78);
      sub_100013E54(v28, &v32, &qword_1004ACE78);
      sub_100013F2C(v22, &qword_1004ACE78);
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if (!*&v28[0])
  {
LABEL_5:
    v12 = *(a1 + 32);
    *&v22[8] = *(a1 + 16);
    *&v22[24] = v12;
    *&v22[40] = *(a1 + 48);
    v13 = *(a2 + 32);
    v24 = *(a2 + 16);
    *v22 = *&v30[0];
    v22[56] = *(a1 + 64);
    v23 = *&v28[0];
    v25 = v13;
    v26 = *(a2 + 48);
    v27 = *(a2 + 64);
    sub_100013E54(v30, &v32, &qword_1004ACE78);
    sub_100013E54(v28, &v32, &qword_1004ACE78);
    sub_100013F2C(v22, &qword_1004AE458);
    v10 = 0;
    return v10 & 1;
  }

  *v16 = *&v28[0];
  v5 = *(a2 + 32);
  *&v16[8] = *(a2 + 16);
  *&v16[24] = v5;
  *&v16[40] = *(a2 + 48);
  v16[56] = *(a2 + 64);
  *v22 = *v16;
  *&v22[16] = *&v16[16];
  *&v22[32] = *&v16[32];
  *&v22[41] = *&v16[41];
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v36 = *(a1 + 64);
  v35 = v8;
  v34 = v7;
  v33 = v6;
  v32 = *&v30[0];
  sub_100013E54(v30, &v17, &qword_1004ACE78);
  sub_100013E54(v28, &v17, &qword_1004ACE78);
  v10 = _s10DarwinInit6ConfigV7NetworkV2eeoiySbAE_AEtFZ_0(&v32, v22);
  sub_100013F2C(v16, &qword_1004ACE78);
  v17 = v4;
  v11 = *(a1 + 32);
  v18 = *(a1 + 16);
  v19 = v11;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  sub_100013F2C(&v17, &qword_1004ACE78);
  return v10 & 1;
}

uint64_t sub_100222028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if ((~a2 & 0xF000000000000007) != 0)
  {
    v10 = a2;
    if ((~a4 & 0xF000000000000007) != 0)
    {
      v9 = a4;
      sub_1001C8518(a2);
      sub_1001C8518(v4);
      sub_1001C8518(a2);
      v7 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v10, &v9);

      goto LABEL_8;
    }

    sub_1001C8518(a2);
    sub_1001C8518(v4);
    sub_1001C8518(a2);
  }

  else
  {
    v6 = ~a4 & 0xF000000000000007;
    sub_1001C8518(a2);
    sub_1001C8518(v4);
    if (!v6)
    {
      v7 = 1;
LABEL_8:
      v4 = a2;
      goto LABEL_9;
    }
  }

  sub_1001C855C(a2);
  v7 = 0;
LABEL_9:
  sub_1001C855C(v4);
  return v7 & 1;
}

uint64_t sub_100222118(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v10 = a1[6];
  v3 = a2[1];
  v4 = a2[6];
  if (v2)
  {
    if (v3)
    {
      v5 = a2[2];
      if (a1[2] == 2)
      {
        if (v5 != 2)
        {
          goto LABEL_16;
        }
      }

      else if (v5 == 2 || ((a1[2] ^ a2[2]) & 1) != 0)
      {
        goto LABEL_16;
      }

      v7 = a2[4];
      if (a1[4] == 2)
      {
        if (v7 != 2)
        {
LABEL_16:
          sub_100259454(a2[1]);
          sub_100259454(v2);

          v6 = 0;
LABEL_17:

          sub_100219290(v2);
          return v6;
        }
      }

      else if (v7 == 2 || ((a1[4] ^ a2[4]) & 1) != 0)
      {
        goto LABEL_16;
      }

      if (v10)
      {
        if (v4)
        {
          v9 = sub_10024DC98(v10, v4);
          sub_100259454(v3);
          sub_100259454(v2);

          if (v9)
          {
            v6 = 1;
            goto LABEL_17;
          }

LABEL_25:
          v6 = 0;
          goto LABEL_17;
        }
      }

      else if (!v4)
      {
        sub_100259454(a2[1]);
        sub_100259454(v2);

        v6 = 1;
        goto LABEL_17;
      }

      sub_100259454(v3);
      sub_100259454(v2);

      goto LABEL_25;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  sub_100259454(a2[1]);
  sub_100259454(v2);
  sub_100219290(v2);
  sub_100219290(v3);
  return 0;
}

uint64_t sub_10022245C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v41[2] = *(a1 + 40);
  v41[3] = v2;
  *v42 = *(a1 + 72);
  *&v42[9] = *(a1 + 81);
  v3 = *(a1 + 24);
  v41[0] = *(a1 + 8);
  v41[1] = v3;
  v4 = *(a2 + 56);
  v39[2] = *(a2 + 40);
  v39[3] = v4;
  *v40 = *(a2 + 72);
  *&v40[9] = *(a2 + 81);
  v5 = *(a2 + 24);
  v39[0] = *(a2 + 8);
  v39[1] = v5;
  v6 = v42[24];
  *&v38[39] = *(a2 + 40);
  *&v38[55] = *(a2 + 56);
  *&v38[71] = *(a2 + 72);
  *&v38[87] = *(a2 + 88);
  *&v38[7] = *(a2 + 8);
  *&v38[23] = *(a2 + 24);
  if (v42[24] == 255)
  {
    if (v40[24] == 255)
    {
      v18 = *(a1 + 56);
      v29 = *(a1 + 40);
      v30 = v18;
      *v31 = *(a1 + 72);
      *&v31[16] = *(a1 + 88);
      v19 = *(a1 + 24);
      v27 = *(a1 + 8);
      v28 = v19;
      v31[24] = -1;
      sub_100013E54(v41, v43, &qword_1004ACE40);
      sub_100013E54(v39, v43, &qword_1004ACE40);
      sub_100013F2C(&v27, &qword_1004ACE40);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_5;
  }

  if (v40[24] == 255)
  {
LABEL_5:
    v16 = *(a1 + 56);
    v29 = *(a1 + 40);
    v30 = v16;
    *v31 = *(a1 + 72);
    *&v31[16] = *(a1 + 88);
    v17 = *(a1 + 24);
    v27 = *(a1 + 8);
    v28 = v17;
    v31[24] = v42[24];
    v32 = *v38;
    v33 = *&v38[16];
    *&v36[15] = *&v38[79];
    *v36 = *&v38[64];
    v35 = *&v38[48];
    v34 = *&v38[32];
    v37 = v40[24];
    sub_100013E54(v41, v43, &qword_1004ACE40);
    sub_100013E54(v39, v43, &qword_1004ACE40);
    sub_100013F2C(&v27, &qword_1004AE450);
    v13 = 0;
    return v13 & 1;
  }

  v7 = *(a2 + 72);
  *&v23[16] = *(a2 + 88);
  v8 = *(a2 + 40);
  v22 = *(a2 + 56);
  *v23 = v7;
  v9 = *(a2 + 24);
  v21[0] = *(a2 + 8);
  v21[1] = v9;
  v21[2] = v8;
  v23[24] = v40[24];
  v29 = v8;
  v30 = v22;
  *v31 = v7;
  v27 = v21[0];
  v28 = v9;
  *&v31[9] = *&v23[9];
  v10 = *(a1 + 56);
  v43[2] = *(a1 + 40);
  v43[3] = v10;
  v43[4] = *(a1 + 72);
  v44 = *(a1 + 88);
  v11 = *(a1 + 24);
  v43[0] = *(a1 + 8);
  v43[1] = v11;
  v45 = v42[24];
  sub_100013E54(v41, v24, &qword_1004ACE40);
  sub_100013E54(v39, v24, &qword_1004ACE40);
  v13 = sub_100294D50(v43, &v27);
  sub_100013F2C(v21, &qword_1004ACE40);
  v14 = *(a1 + 56);
  v24[2] = *(a1 + 40);
  v24[3] = v14;
  v24[4] = *(a1 + 72);
  v25 = *(a1 + 88);
  v15 = *(a1 + 24);
  v24[0] = *(a1 + 8);
  v24[1] = v15;
  v26 = v6;
  sub_100013F2C(v24, &qword_1004ACE40);
  return v13 & 1;
}

uint64_t sub_100222770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000039E8(&qword_1004AB4A0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = *(sub_1000039E8(&qword_1004ACD10) + 44);
  v15 = *(v11 + 56);
  sub_100013E54(a1 + v14, v13, &qword_1004A6D30);
  sub_100013E54(a2 + v14, &v13[v15], &qword_1004A6D30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100013E54(v13, v9, &qword_1004A6D30);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      (*(v5 + 32))(v22, &v13[v15], v4);
      sub_1002599A0(qword_1004AB4A8, &type metadata accessor for URL);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v18, v4);
      v19(v9, v4);
      sub_100013F2C(v13, &qword_1004A6D30);
      return v17 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100013F2C(v13, &qword_1004AB4A0);
    v17 = 0;
    return v17 & 1;
  }

  sub_100013F2C(v13, &qword_1004A6D30);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100222AB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 60 == 15)
  {
    if (a6 >> 60 == 15)
    {
      sub_100031994(a2, a3);
      sub_100031994(a5, a6);
      sub_100031914(a2, a3);
      return 1;
    }

    goto LABEL_5;
  }

  if (a6 >> 60 == 15)
  {
LABEL_5:
    sub_100031994(a2, a3);
    sub_100031994(a5, a6);
    sub_100031914(a2, a3);
    sub_100031914(a5, a6);
    return 0;
  }

  sub_100031994(a2, a3);
  sub_100031994(a5, a6);
  v11 = sub_10030651C(a2, a3, a5, a6);
  sub_100031914(a5, a6);
  sub_100031914(a2, a3);
  return v11 & 1;
}

BOOL sub_100222BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v40[2] = *(a1 + 40);
  v40[3] = v3;
  v40[4] = *(a1 + 72);
  v40[0] = *(a1 + 8);
  v40[1] = v2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  v39[2] = *(a2 + 40);
  v39[3] = v5;
  v39[4] = *(a2 + 72);
  v39[0] = *(a2 + 8);
  v39[1] = v4;
  v6 = *&v40[0];
  if (!*&v40[0])
  {
    if (!*&v39[0])
    {
      v21 = *(a1 + 16);
      *&v32[24] = *(a1 + 32);
      v22 = *(a1 + 64);
      *&v32[40] = *(a1 + 48);
      *&v32[56] = v22;
      v23 = *(a1 + 80);
      *v32 = 0;
      *&v32[72] = v23;
      *&v32[8] = v21;
      sub_100013E54(v40, &v41, &qword_1004ACEA0);
      sub_100013E54(v39, &v41, &qword_1004ACEA0);
      sub_100013F2C(v32, &qword_1004ACEA0);
      return 1;
    }

    goto LABEL_5;
  }

  if (!*&v39[0])
  {
LABEL_5:
    v16 = *(a1 + 16);
    *&v32[24] = *(a1 + 32);
    v17 = *(a1 + 64);
    *&v32[40] = *(a1 + 48);
    *&v32[56] = v17;
    *&v32[8] = v16;
    v18 = *(a2 + 16);
    v35 = *(a2 + 32);
    v19 = *(a2 + 64);
    v36 = *(a2 + 48);
    v37 = v19;
    v20 = *(a1 + 80);
    *v32 = *&v40[0];
    *&v32[72] = v20;
    v33 = *&v39[0];
    v38 = *(a2 + 80);
    v34 = v18;
    sub_100013E54(v40, &v41, &qword_1004ACEA0);
    sub_100013E54(v39, &v41, &qword_1004ACEA0);
    sub_100013F2C(v32, &qword_1004AE410);
    return 0;
  }

  *v25 = *&v39[0];
  v7 = *(a2 + 32);
  *&v25[8] = *(a2 + 16);
  *&v25[24] = v7;
  v8 = *(a2 + 64);
  *&v25[40] = *(a2 + 48);
  *&v25[56] = v8;
  *&v25[72] = *(a2 + 80);
  *&v32[48] = *&v25[48];
  *&v32[64] = *&v25[64];
  *&v32[16] = *&v25[16];
  *&v32[32] = *&v25[32];
  *v32 = *v25;
  v9 = *(a1 + 32);
  v42 = *(a1 + 16);
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v45 = *(a1 + 64);
  v44 = v10;
  v43 = v9;
  v46 = v11;
  v41 = *&v40[0];
  sub_100013E54(v40, &v26, &qword_1004ACEA0);
  sub_100013E54(v39, &v26, &qword_1004ACEA0);
  v13 = _s10DarwinInit6ConfigV7CryptexV5CacheV2eeoiySbAG_AGtFZ_0(&v41, v32);
  sub_100013F2C(v25, &qword_1004ACEA0);
  v26 = v6;
  v14 = *(a1 + 16);
  v28 = *(a1 + 32);
  v15 = *(a1 + 64);
  v29 = *(a1 + 48);
  v30 = v15;
  v31 = *(a1 + 80);
  v27 = v14;
  sub_100013F2C(&v26, &qword_1004ACEA0);
  return v13;
}

BOOL sub_100222E60(uint64_t a1, uint64_t a2)
{
  v13 = *(a1 + 8);
  v2 = *(a1 + 40);
  v14 = *(a1 + 24);
  v15 = v2;
  v3 = *(a1 + 56);
  v16 = v3;
  v4 = *(a2 + 24);
  v10[0] = *(a2 + 8);
  v10[1] = v4;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v5 = v13;
  v6 = *&v10[0];
  if (!v13)
  {
    if (!*&v10[0])
    {
      sub_100013E54(&v13, v19, &qword_1004AD540);
      sub_100013E54(v10, v19, &qword_1004AD540);
      sub_100268A58(0);
      return 1;
    }

    goto LABEL_5;
  }

  if (!*&v10[0])
  {
LABEL_5:
    sub_100013E54(&v13, v19, &qword_1004AD540);
    sub_100013E54(v10, v19, &qword_1004AD540);
    sub_100268A58(v5);
    sub_100268A58(v6);
    return 0;
  }

  v19[0] = v10[0];
  v19[1] = v4;
  v19[2] = v11;
  v20 = v12;
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v3;
  v7 = _s10DarwinInit6ConfigV4UserV14AuthenticationV7MementoV2eeoiySbAI_AItFZ_0(v17, v19);
  sub_100013E54(&v13, v9, &qword_1004AD540);
  sub_100013E54(v10, v9, &qword_1004AD540);
  sub_100268A58(v6);
  sub_100268A58(v5);
  return v7;
}

uint64_t sub_1002230B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    if (!a6)
    {

      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_7;
  }

  if (!a6)
  {
LABEL_7:

    v6 = 0;
    return v6 & 1;
  }

  if (a2 == a5 && a3 == a6)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRelease_n();
  return v6 & 1;
}

uint64_t sub_10022316C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 24);
  *v17 = *(a1 + 8);
  *&v17[16] = v4;
  v18 = *(a1 + 40);
  v5 = *(a2 + 24);
  v15[0] = *(a2 + 8);
  v15[1] = v5;
  v16 = *(a2 + 40);
  v6 = *v17;
  v7 = *(&v18 + 1);
  v8 = *&v15[0];
  v9 = *(&v16 + 1);
  v10 = v16;
  if (!*v17)
  {
    if (!*&v15[0])
    {
      sub_100013E54(v17, v14, a3);
      sub_100013E54(v15, v14, a3);
      sub_10021E638(0);
      v12 = 1;
      return v12 & 1;
    }

    sub_100013E54(v17, v14, a3);
    sub_100013E54(v15, v14, a3);
    goto LABEL_11;
  }

  if (!*&v15[0])
  {
    sub_100013E54(v17, v14, a3);
    sub_100013E54(v15, v14, a3);
    sub_10021E528(v6);

LABEL_11:
    sub_10021E638(v6);
    sub_10021E638(v8);
    v12 = 0;
    return v12 & 1;
  }

  if (*&v17[8] == __PAIR128__(v5, *(&v15[0] + 1)) || (v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = *(&v16 + 1), v10 = v16, v7 = *(&v18 + 1), v8 = *&v15[0], (v11 & 1) != 0))
  {
    if (v18 == v10 && v7 == v9)
    {
      sub_100013E54(v17, v14, a3);
      sub_100013E54(v15, v14, a3);
      sub_10021E528(v6);
      sub_10021E638(v8);
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100013E54(v17, v14, a3);
      sub_100013E54(v15, v14, a3);
      sub_10021E528(v6);
      sub_10021E638(v8);
    }
  }

  else
  {
    sub_100013E54(v17, v14, a3);
    sub_100013E54(v15, v14, a3);
    sub_10021E528(v6);
    sub_10021E638(v8);
    v12 = 0;
  }

  sub_10021E638(v6);
  return v12 & 1;
}

uint64_t sub_10022353C(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AD360);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Authentication.Westgate.CodingKeys;
  *(inited + 64) = sub_10025A0D4();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223644(char a1)
{
  sub_1000039E8(&qword_1004AE3D8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Root.CodingKeys;
  *(inited + 64) = sub_10025A990();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_10022374C(char a1)
{
  sub_1000039E8(&qword_1004AE2A8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.User.CodingKeys;
  *(inited + 64) = sub_10025BFC0();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223854()
{
  sub_1000039E8(&qword_1004AD4B0);
  v1 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Network.Firewall.CodingKeys;
  *(inited + 64) = sub_10025B294();
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v0)
  {
  }

  return v1;
}

uint64_t sub_100223960(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE2C8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.CodingKeys;
  *(inited + 64) = sub_100268B94();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223A68(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE2C8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.SubclassConfig.CodingKeys;
  *(inited + 64) = sub_100268B94();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223B74(char a1)
{
  sub_1000039E8(&qword_1004AE2D8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.CodingKeys;
  *(inited + 64) = sub_100268BE8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223C7C(char a1)
{
  sub_1000039E8(&qword_1004AE2D8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.CodingKeys;
  *(inited + 64) = sub_100268BE8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223D88(char a1)
{
  sub_1000039E8(&qword_1004AE3C8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.FeatureFlag.CodingKeys;
  *(inited + 64) = sub_10025AAE0();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_10026969C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223E90(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE430);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.SecurityPolicy.CodingKeys;
  *(inited + 64) = sub_100268E88();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100223F9C(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE398);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Log.CodingKeys;
  *(inited + 64) = sub_100268D8C();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  sub_1002695BC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002240A4(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1 & 1;
  sub_1000039E8(a2);
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5();
  *(inited + 32) = v8;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
  }

  return v9;
}

uint64_t sub_1002241B0(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE278);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.User.Authentication.ESC.CodingKeys;
  *(inited + 64) = sub_100268B40();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002242CC(char a1)
{
  sub_1000039E8(&qword_1004AE270);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.User.Authentication.Memento.CodingKeys;
  *(inited + 64) = sub_10025C424();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

__n128 sub_1002243E8@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1 & 1;
  sub_1000039E8(&qword_1004AE288);
  v5 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.User.Authentication.CodingKeys;
  *(inited + 64) = sub_10025C164();
  *(inited + 32) = v4;
  v8.n128_u64[0] = v5;
  sub_10034A3A8(inited);
  sub_100268F98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {
    result = v8;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 24) = v9;
  }

  return result;
}

uint64_t sub_100224504(char a1)
{
  sub_1000039E8(&qword_1004AE2A8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.User.CodingKeys;
  *(inited + 64) = sub_10025BFC0();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD520);
  sub_100269040();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224620(char a1)
{
  sub_1000039E8(&qword_1004AE328);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Start.CodingKeys;
  *(inited + 64) = sub_100268C3C();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_10022473C(char a1)
{
  sub_1000039E8(&qword_1004AE3C0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Finish.CodingKeys;
  *(inited + 64) = sub_10025AB88();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_10019C280();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224844(char a1)
{
  sub_1000039E8(&qword_1004AE3C0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Finish.CodingKeys;
  *(inited + 64) = sub_10025AB88();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224960(char a1)
{
  sub_1000039E8(&qword_1004AE3C0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Finish.CodingKeys;
  *(inited + 64) = sub_10025AB88();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1001D7714();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224A68()
{
  sub_1000039E8(&qword_1004AD368);
  v1 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CARoots.CodingKeys;
  *(inited + 64) = sub_10025A270();
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v0)
  {
  }

  return v1;
}

uint64_t sub_100224B60(char a1)
{
  sub_1000039E8(&qword_1004AE3E0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Cache.CodingKeys;
  *(inited + 64) = sub_10025A7A0();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD3A8);
  sub_100269758();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224C7C(char a1)
{
  sub_1000039E8(&qword_1004AE3F8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Network.CodingKeys;
  *(inited + 64) = sub_10025A6F8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_100269814();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224D84(char a1)
{
  sub_1000039E8(&qword_1004AD400);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.CodingKeys;
  *(inited + 64) = sub_10025A7F4();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224EA0(char a1)
{
  sub_1000039E8(&qword_1004AD400);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.CodingKeys;
  *(inited + 64) = sub_10025A7F4();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1001BBAC0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100224FA8(char a1)
{
  sub_1000039E8(&qword_1004AD400);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.Cryptex.CodingKeys;
  *(inited + 64) = sub_10025A7F4();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1001BBA6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002250B0(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1000039E8(a2);
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
  }

  return v9;
}

uint64_t sub_1002251BC(char a1)
{
  sub_1000039E8(&qword_1004AE418);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Cryptex.CodingKeys;
  *(inited + 64) = sub_10025A540();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD3A8);
  sub_100269758();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002252D8(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1000039E8(a2);
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
  }

  return v9;
}

uint64_t sub_1002253E4(char a1)
{
  sub_1000039E8(&qword_1004AE378);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Network.CodingKeys;
  *(inited + 64) = sub_10025B090();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_100269568();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002254EC(char a1)
{
  sub_1000039E8(&qword_1004AE378);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Network.CodingKeys;
  *(inited + 64) = sub_10025B090();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004ACCF0);
  sub_100264D64();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225608(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1000039E8(a2);
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
  }

  return v9;
}

uint64_t sub_100225718(char a1)
{
  sub_1000039E8(&qword_1004AE2D8);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.ClassConfig.CodingKeys;
  *(inited + 64) = sub_100268BE8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AE2E0);
  sub_100269160();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225834(char a1)
{
  sub_1000039E8(&qword_1004AE310);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.CodingKeys;
  *(inited + 64) = sub_10025BAAC();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225940(char a1)
{
  sub_1000039E8(&qword_1004AE310);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Tailspin.CodingKeys;
  *(inited + 64) = sub_10025BAAC();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD4E8);
  sub_100269310();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225A5C(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1 & 1;
  sub_1000039E8(a2);
  v9 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = a4;
  *(inited + 64) = a5();
  *(inited + 32) = v8;
  sub_10034A3A8(inited);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
  }

  return v9;
}

uint64_t sub_100225B68(char a1)
{
  v2 = a1 & 1;
  sub_1000039E8(&qword_1004AE348);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.Analytics.CodingKeys;
  *(inited + 64) = sub_100268CE4();
  *(inited + 32) = v2;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AE350);
  sub_1002693E8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225C88(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_100263B34();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

__n128 sub_100225D94@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000039E8(&qword_1004AD2F0);
  v5 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  v8.n128_u64[0] = v5;
  sub_10034A3A8(inited);
  sub_100218F08();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {
    result = v8;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 24) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_100225EC0(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD230);
  sub_10026402C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100225FDC(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD250);
  sub_10026447C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002260F8(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004ACCF0);
  sub_100264D64();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

__n128 sub_100226214@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000039E8(&qword_1004AD2F0);
  v5 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  v8.n128_u64[0] = v5;
  sub_10034A3A8(inited);
  sub_100218DE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {
    result = v8;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 24) = v9;
    *(a2 + 40) = v10;
  }

  return result;
}

uint64_t sub_100226338(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD288);
  sub_100265294();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_100226454(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD2A0);
  sub_1002654D4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

__n128 sub_100226570@<Q0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_1000039E8(&qword_1004AD2F0);
  v7 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  v11.n128_u64[0] = v7;
  v9 = sub_10034A3A8(inited);
  a2(v9);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v3)
  {
  }

  else
  {
    result = v11;
    *a3 = v7;
    *(a3 + 8) = v11;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t sub_1002266A8(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004AD2D8);
  sub_100265D24();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t sub_1002267C4(char a1)
{
  sub_1000039E8(&qword_1004AD2F0);
  v3 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  *(inited + 56) = &type metadata for Config.CodingKeys;
  *(inited + 64) = sub_1002594B8();
  *(inited + 32) = a1;
  sub_10034A3A8(inited);
  sub_1000039E8(&qword_1004ABA70);
  sub_1001D7840();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
  }

  return v3;
}

uint64_t Config.origin.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 104));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1001D6F9C(v4);
}

uint64_t sub_100226A34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 104));
  v5 = *v4;
  sub_1001D6F9C(v2);
  result = sub_1001D6FE0(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Config.origin.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Config(0) + 104));
  result = sub_1001D6FE0(*v4);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double Config.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000039E8(&qword_1004AD1B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28[-v3 - 8];
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = _swiftEmptyArrayStorage;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = _swiftEmptyArrayStorage;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  sub_100218CA0(v28);
  *(a1 + 208) = _swiftEmptyArrayStorage;
  memcpy((a1 + 216), v28, 0x101uLL);
  *(a1 + 480) = _swiftEmptyArrayStorage;
  *(a1 + 488) = 0;
  v5 = type metadata accessor for Config(0);
  v6 = (a1 + v5[9]);
  v7 = type metadata accessor for Config.Diavlo(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_1000039E8(&qword_1004ACDA0);
  sub_100013E54(v4, v6 + *(v8 + 44), &qword_1004AD1B8);
  sub_100013F2C(v4, &qword_1004AD1B8);
  *v6 = _swiftEmptyArrayStorage;
  v9 = (a1 + v5[10]);
  *v9 = _swiftEmptyArrayStorage;
  v9[1] = 0;
  v10 = a1 + v5[11];
  *v10 = _swiftEmptyArrayStorage;
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0;
  v12 = a1 + v5[12];
  *v12 = _swiftEmptyArrayStorage;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  v13 = a1 + v5[13];
  *v13 = _swiftEmptyArrayStorage;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = a1 + v5[14];
  *v14 = _swiftEmptyArrayStorage;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  v15 = (a1 + v5[15]);
  *v15 = _swiftEmptyArrayStorage;
  v15[1] = 0;
  v16 = a1 + v5[16];
  *v16 = _swiftEmptyArrayStorage;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 49) = 0u;
  v17 = a1 + v5[17];
  *v17 = _swiftEmptyArrayStorage;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0;
  v18 = (a1 + v5[18]);
  *v18 = _swiftEmptyArrayStorage;
  v18[1] = 0;
  v19 = (a1 + v5[19]);
  *v19 = _swiftEmptyArrayStorage;
  v19[1] = 0;
  v20 = (a1 + v5[20]);
  *v20 = _swiftEmptyArrayStorage;
  v20[1] = 0xF000000000000007;
  v21 = a1 + v5[21];
  *v21 = _swiftEmptyArrayStorage;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a1 + v5[22];
  *v22 = _swiftEmptyArrayStorage;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  v23 = a1 + v5[23];
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0;
  *(v23 + 96) = -1;
  v24 = (a1 + v5[24]);
  *v24 = _swiftEmptyArrayStorage;
  v24[1] = 0;
  v25 = (a1 + v5[25]);
  *v25 = _swiftEmptyArrayStorage;
  v25[1] = 0;
  v26 = (a1 + v5[26]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

void Config.SecurityPolicy.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t Config.Cryptex.Network.alternateCdnHost.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Config.secureConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Config(0) + 80) + 8);
  *a1 = v3;

  return sub_1001C8518(v3);
}

uint64_t Config.secureConfig.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for Config(0) + 80);
  result = sub_1001C855C(*(v3 + 8));
  *(v3 + 8) = v2;
  return result;
}

__n128 Config.$authentication.setter(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_100013F2C(v12, &qword_1004ACDC0);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}

uint64_t Config.$caRoots.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return result;
}

double Config.Cryptex.init()@<D0>(uint64_t a1@<X8>)
{
  sub_100219B90(v7);
  v2 = v7[4];
  *(a1 + 88) = v7[5];
  v3 = v7[7];
  *(a1 + 104) = v7[6];
  *(a1 + 120) = v3;
  v4 = v7[0];
  *(a1 + 24) = v7[1];
  v5 = v7[3];
  *(a1 + 40) = v7[2];
  *(a1 + 56) = v5;
  *(a1 + 72) = v2;
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 136) = v8;
  *(a1 + 8) = v4;
  *(a1 + 144) = _swiftEmptyArrayStorage;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = _swiftEmptyArrayStorage;
  *(a1 + 240) = 0;
  *(a1 + 248) = _swiftEmptyArrayStorage;
  *(a1 + 256) = 2;
  return result;
}

uint64_t Config.Cryptex.$lock.setter(uint64_t a1, char a2)
{

  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return result;
}

__n128 Config.Cryptex.cache.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v10 = *(v1 + 184);
  v11 = v4;
  v12 = *(v1 + 216);
  v8 = *(v1 + 152);
  v9 = v3;
  sub_100013E54(&v8, &v7, &qword_1004ACEA0);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

void Config.Cryptex.Cache.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 2;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
}

uint64_t Config.Cryptex.$cryptexes.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t Config.Cryptex.Cache.$retainedCryptexes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Config.Tailspin.$fullSamplingPeriodSet.setter(uint64_t a1, uint64_t a2, char a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t Config.Cryptex.Network.$networkServiceType.setter(uint64_t a1, char a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Config.Cryptex.Cache.$invalidationId.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  return result;
}

__n128 Config.Cryptex.network.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v18 = *(v1 + 104);
  v19 = v4;
  v20 = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v14 = *(v1 + 40);
  v15 = v6;
  v16 = *(v1 + 72);
  v17 = v3;
  v12 = *(v1 + 8);
  v13 = v5;
  sub_100013E54(&v12, v11, &qword_1004ACE98);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

void Config.Cryptex.Network.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 2;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = &_swiftEmptyArrayStorage;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = &_swiftEmptyArrayStorage;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = &_swiftEmptyArrayStorage;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
}

uint64_t Config.Network.$uplinkMtu.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

__n128 Config.$analytics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 68);

  sub_100218E88(*(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 25);
  *(v3 + 25) = result;
  return result;
}

__n128 Config.$configSecurityPolicy.setter(uint64_t a1)
{

  sub_1001FA5D8(*(v1 + 160));
  v3 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  result = *(a1 + 32);
  *(v1 + 184) = result;
  *(v1 + 200) = *(a1 + 48);
  return result;
}

uint64_t Config.$diavlo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Config(0) + 36);
  sub_100013F2C(v1 + v3, &qword_1004ACDA0);
  return sub_10003E154(a1, v1 + v3, &qword_1004ACDA0);
}

uint64_t Config.$featureFlags.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Config.$packages.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Config.preferences.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 76);

  *(v3 + 8) = a1;
  return result;
}

__n128 Config.$log.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 52);

  sub_1002191A8(*(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t Config.Meta.init(applyTimeout:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = result;
  *a5 = &_swiftEmptyArrayStorage;
  a5[2] = a2;
  a5[3] = &_swiftEmptyArrayStorage;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t Config.Cryptex.Network.$alternateCdnHost.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Config.Cryptex.Network.$alternateCdnHost.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

void Config.Network.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

uint64_t Config.Network.interfaces.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Config.narrative.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 60);

  *(v3 + 8) = a1;
  return result;
}

uint64_t Config.$narrative.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 60));

  return v1;
}

uint64_t Config.$narrative.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Config.Network.firewall.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100219A48(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Config.Network.Firewall.$rules.getter(uint64_t a1)
{

  return a1;
}

uint64_t Config.Network.Firewall.$rules.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Config.users.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 96);

  *(v3 + 8) = a1;
  return result;
}

uint64_t Config.$users.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 96));

  return v1;
}

uint64_t Config.$users.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 96));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 Config.$ssh.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 84);

  sub_1002191A8(*(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t Config.Root.init(preflight:root:postflight:waitForVolume:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = &_swiftEmptyArrayStorage;
  a9[1] = result;
  a9[2] = a2;
  a9[3] = &_swiftEmptyArrayStorage;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = &_swiftEmptyArrayStorage;
  a9[7] = a5;
  a9[8] = a6;
  a9[9] = &_swiftEmptyArrayStorage;
  a9[10] = a7;
  a9[11] = a8;
  return result;
}

uint64_t Config.Root.$root.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Config.Root.$root.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t Config.$roots.getter()
{
  v1 = *(v0 + 480);

  return v1;
}

uint64_t Config.$roots.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return result;
}

uint64_t Config.roots.setter(uint64_t a1)
{

  *(v1 + 488) = a1;
  return result;
}

void Config.Start.init()(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 2;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  *(a1 + 24) = 2;
  *(a1 + 32) = &_swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
}

uint64_t Config.Start.scripts.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 Config.$tailspin.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 92));
  v17 = *(v3 + 96);
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100013E54(&v11, v10, &qword_1004ACE48);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t Config.$volumes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 100));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 Config.Authentication.westgate.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10021E638(*(v1 + 48));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v6;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t Config.Authentication.$westgate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;

  return sub_10021E528(v3);
}

__n128 Config.Authentication.$westgate.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];
  v8 = a1[6];
  v5 = *(v1 + 48);

  sub_10021E638(v5);
  *(v1 + 40) = v3;
  result = *(a1 + 1);
  v7 = *(a1 + 3);
  *(v1 + 48) = result;
  *(v1 + 64) = v7;
  *(v1 + 80) = v4;
  *(v1 + 88) = v8;
  return result;
}

uint64_t Config.Authentication.dawToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t Config.Authentication.$dawToken.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Config.Authentication.$dawToken.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[1] = v4;
  v1[2].n128_u64[0] = v2;
  return result;
}

uint64_t Config.Authentication.oidcToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

uint64_t Config.Authentication.$oidcToken.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  *a1 = v1[12];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Config.Authentication.$oidcToken.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[6] = v4;
  v1[7].n128_u64[0] = v2;
  return result;
}

uint64_t Config.Analytics.$submit.setter(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t *Config.Authentication.Westgate.init(token:username:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  *a4 = &_swiftEmptyArrayStorage;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = &_swiftEmptyArrayStorage;
  a4[4] = a2;
  a4[5] = a3;
  return result;
}

uint64_t Config.Cryptex.Network.$retryCount.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3 & 1;
  return result;
}

uint64_t Config.Cryptex.Network.$downloadTasks.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = a3 & 1;
  return result;
}

uint64_t Config.Cryptex.Network.$chunkSize.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t Config.Cryptex.Cryptex.init(aeaDecryptionParams:cacheable:dependencies:signingEnvironment:sha256:size:url:variant:originalKnoxUrl:readwrite:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v43 = a4;
  v51 = a14;
  v49 = a12;
  v50 = a13;
  v48 = a11;
  v19 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v19 - 8);
  v47 = &v42[-v20];
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v42[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1[1];
  *(a9 + 8) = *a1;
  *a9 = _swiftEmptyArrayStorage;
  *(a9 + 24) = v25;
  *(a9 + 40) = a1[2];
  *(a9 + 56) = _swiftEmptyArrayStorage;
  *(a9 + 64) = a2;
  *(a9 + 72) = _swiftEmptyArrayStorage;
  *(a9 + 80) = a3;
  *(a9 + 88) = _swiftEmptyArrayStorage;
  *(a9 + 96) = v43;
  v27 = v44;
  v26 = v45;
  *(a9 + 104) = _swiftEmptyArrayStorage;
  *(a9 + 112) = v27;
  *(a9 + 120) = v26;
  *(a9 + 128) = _swiftEmptyArrayStorage;
  *(a9 + 136) = v46;
  *(a9 + 144) = a8 & 1;
  v28 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v29 = (a9 + v28[10]);
  v30 = *(v22 + 16);
  v30(v24, a10, v21);
  v31 = sub_1000039E8(&qword_1004ACD08);
  v30(v29 + *(v31 + 44), v24, v21);
  v32 = *(v22 + 8);
  v32(a10, v21);
  v32(v24, v21);
  *v29 = _swiftEmptyArrayStorage;
  v33 = (a9 + v28[11]);
  v35 = v48;
  v34 = v49;
  *v33 = _swiftEmptyArrayStorage;
  v33[1] = v35;
  v33[2] = v34;
  v36 = (a9 + v28[12]);
  v37 = v50;
  v38 = v47;
  sub_100013E54(v50, v47, &qword_1004A6D30);
  v39 = sub_1000039E8(&qword_1004ACD10);
  sub_100013E54(v38, v36 + *(v39 + 44), &qword_1004A6D30);
  sub_100013F2C(v37, &qword_1004A6D30);
  result = sub_100013F2C(v38, &qword_1004A6D30);
  *v36 = _swiftEmptyArrayStorage;
  v41 = a9 + v28[13];
  *v41 = _swiftEmptyArrayStorage;
  *(v41 + 8) = v51;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  sub_100013F2C(v1 + v3, &qword_1004ACD08);
  return sub_10003E154(a1, v1 + v3, &qword_1004ACD08);
}

__n128 Config.Cryptex.Cryptex.$aeaDecryptionParams.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];
  v7 = a1[6];
  v5 = *(v1 + 8);

  sub_10021E638(v5);
  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 24) = *(a1 + 3);
  *(v1 + 8) = result;
  *(v1 + 40) = v4;
  *(v1 + 48) = v7;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$cacheable.setter(uint64_t a1, char a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$signingEnvironment.setter(uint64_t a1, char a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$sha256.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[13] = a1;
  v3[14] = a2;
  v3[15] = a3;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$size.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  *(v3 + 144) = a3 & 1;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$variant.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 44));

  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t Config.Cryptex.Cryptex.$originalKnoxUrl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Config.Cryptex.Cryptex(0) + 48);
  sub_100013F2C(v1 + v3, &qword_1004ACD10);
  return sub_10003E154(a1, v1 + v3, &qword_1004ACD10);
}

uint64_t *Config.Cryptex.Cryptex.AeaDecryptionParams.init(archiveId:decryptionKey:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  *a3 = &_swiftEmptyArrayStorage;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = &_swiftEmptyArrayStorage;
  a3[4] = v5;
  a3[5] = v6;
  return result;
}

uint64_t _s10DarwinInit6ConfigV14AuthenticationV8WestgateV6_tokenAA9PathCodedVyAA16CredentialStringVGvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 _s10DarwinInit6ConfigV14AuthenticationV8WestgateV6_tokenAA9PathCodedVyAA16CredentialStringVGvs_0(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.AeaDecryptionParams.$decryptionKey.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Config.Cryptex.Cryptex.AeaDecryptionParams.$decryptionKey.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Config.Cryptex.Cryptex.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Config.Cryptex.Cryptex(0) + 40);
  v4 = *(sub_1000039E8(&qword_1004ACD08) + 44);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t Config.Tailspin.classConfigs.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Config.Cryptex.cryptexes.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t Config.Cryptex.$cryptexes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t Config.Diavlo.init(url:rootCertificate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_100013E54(a1, &v14 - v9, &qword_1004A6D30);
  v11 = sub_1000039E8(&qword_1004ACD10);
  sub_100013E54(v10, a4 + *(v11 + 44), &qword_1004A6D30);
  sub_100013F2C(a1, &qword_1004A6D30);
  sub_100013F2C(v10, &qword_1004A6D30);
  *a4 = _swiftEmptyArrayStorage;
  result = type metadata accessor for Config.Diavlo(0);
  v13 = (a4 + *(result + 20));
  *v13 = _swiftEmptyArrayStorage;
  v13[1] = a2;
  v13[2] = a3;
  return result;
}

uint64_t Config.Diavlo.$rootCertificate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for Config.Diavlo(0) + 20));
  v8 = v7[1];
  v9 = v7[2];

  result = sub_100031914(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t Config.FeatureFlag.$attributeName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[8] = a1;
  v3[9] = a2;
  v3[10] = a3;
  return result;
}

uint64_t Config.FeatureFlag.$attributeValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[11] = a1;
  v3[12] = a2;
  v3[13] = a3;
  return result;
}

uint64_t Config.FeatureFlag.$enable.setter(uint64_t a1, char a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Config.User.$admin.setter(uint64_t a1, char a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Config.Finish.$reboot.setter(uint64_t a1, char a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Config.Finish.$userspaceReboot.setter(uint64_t a1, char a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_100229284(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  return result;
}

BOOL Config.Identification.isEmpty.getter()
{
  if (v0[2])
  {
    return 0;
  }

  if (v0[5])
  {
    return 0;
  }

  if (v0[8])
  {
    return 0;
  }

  return v0[11] == 0;
}

uint64_t Config.Package.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v9 = sub_1000039E8(&qword_1004ACD08);
  v8(&a2[*(v9 + 44)], v7, v4);
  v10 = *(v5 + 8);
  v10(a1, v4);
  result = (v10)(v7, v4);
  *a2 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t Config.Tailspin.ClassConfig.$classEnabled.setter(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Config.Tailspin.$oncoreSamplingPeriodSet.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

__n128 Config.User.init(authentication:admin:uid:gid:groups:passwordlessSudo:plaintextPassword:sshAuthorizedKey:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *(a1 + 32);
  *(a9 + 56) = *(a1 + 48);
  v12 = *(a1 + 80);
  *(a9 + 72) = *(a1 + 64);
  *(a9 + 88) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(a9 + 8) = *a1;
  *(a9 + 24) = v14;
  *a9 = &_swiftEmptyArrayStorage;
  v15 = *(a1 + 96);
  *(a9 + 40) = v11;
  *(a9 + 104) = v15;
  *(a9 + 112) = &_swiftEmptyArrayStorage;
  *(a9 + 120) = a2;
  *(a9 + 128) = &_swiftEmptyArrayStorage;
  *(a9 + 136) = a3;
  *(a9 + 144) = &_swiftEmptyArrayStorage;
  *(a9 + 152) = a4;
  *(a9 + 160) = &_swiftEmptyArrayStorage;
  *(a9 + 168) = a5;
  *(a9 + 176) = &_swiftEmptyArrayStorage;
  *(a9 + 184) = a6;
  *(a9 + 192) = &_swiftEmptyArrayStorage;
  *(a9 + 200) = a7;
  *(a9 + 208) = a8;
  *(a9 + 216) = &_swiftEmptyArrayStorage;
  *(a9 + 224) = a10;
  *(a9 + 232) = a11;
  return result;
}

uint64_t Config.User.$uid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t Config.User.$gid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t Config.User.$plaintextPassword.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[24] = a1;
  v3[25] = a2;
  v3[26] = a3;
  return result;
}

uint64_t Config.User.$passwordlessSudo.setter(uint64_t a1, char a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t Config.User.$sshAuthorizedKey.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[27] = a1;
  v3[28] = a2;
  v3[29] = a3;
  return result;
}

__n128 Config.User.Authentication.$esc.setter(uint64_t a1)
{

  sub_100259198(*(v1 + 8));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t Config.User.Authentication.esc.getter()
{
  v1 = *(v0 + 8);
  sub_1002591F8(v1);
  return v1;
}

uint64_t Config.User.Authentication.memento.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  result = sub_10025925C(v3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return result;
}

uint64_t Config.User.Authentication.Memento.$groups.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Config.User.Authentication.Memento.$ldapServer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t Config.Tailspin.$bufferSizeSet.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

uint64_t Config.Tailspin.$classConfigs.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t _s10DarwinInit6ConfigV5StartV8_scriptsAA9PathCodedVySaySSGSgGvs_0(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Config.Tailspin.ClassConfig.init(classNumber:classEnabled:subclassConfigs:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = &_swiftEmptyArrayStorage;
  *(a4 + 8) = result;
  *(a4 + 16) = &_swiftEmptyArrayStorage;
  *(a4 + 24) = a2;
  *(a4 + 32) = &_swiftEmptyArrayStorage;
  *(a4 + 40) = a3;
  return result;
}

uint64_t Config.authentication.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 104);
  v16 = *(v1 + 88);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 120);
  v5 = v18;
  v11 = *(v1 + 8);
  v7 = *(v1 + 40);
  v12 = *(v1 + 24);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 56);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_100013E54(&v11, v10, &qword_1004AD1E0);
}

__n128 Config.authentication.setter(uint64_t a1)
{
  v3 = *(v1 + 88);
  v10[4] = *(v1 + 72);
  v10[5] = v3;
  v10[6] = *(v1 + 104);
  v11 = *(v1 + 120);
  v4 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v4;
  v5 = *(v1 + 56);
  v10[2] = *(v1 + 40);
  v10[3] = v5;
  sub_100013F2C(v10, &qword_1004AD1E0);
  v6 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v6;
  *(v1 + 104) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 40) = result;
  *(v1 + 120) = *(a1 + 112);
  *(v1 + 56) = v9;
  return result;
}

uint64_t Config.$authentication.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_100013E54(v11, &v10, &qword_1004ACDC0);
}

void (*Config.$authentication.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x308uLL);
  }

  *a1 = v3;
  *(v3 + 768) = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  *(v3 + 32) = v1[2];
  *(v3 + 48) = v6;
  *v3 = v4;
  *(v3 + 16) = v5;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[7];
  *(v3 + 96) = v1[6];
  *(v3 + 112) = v9;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  v10 = v1[7];
  v12 = v1[4];
  v11 = v1[5];
  *(v3 + 224) = v1[6];
  *(v3 + 240) = v10;
  *(v3 + 192) = v12;
  *(v3 + 208) = v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[3];
  *(v3 + 160) = v1[2];
  *(v3 + 176) = v15;
  *(v3 + 128) = v13;
  *(v3 + 144) = v14;
  sub_100013E54(v3, v3 + 256, &qword_1004ACDC0);
  return sub_100229D74;
}

void sub_100229D74(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 768);
    v4 = *(v2 + 144);
    *(v2 + 512) = *(v2 + 128);
    *(v2 + 528) = v4;
    v5 = *(v2 + 176);
    *(v2 + 544) = *(v2 + 160);
    *(v2 + 560) = v5;
    v6 = *(v2 + 240);
    *(v2 + 608) = *(v2 + 224);
    *(v2 + 624) = v6;
    v7 = *(v2 + 208);
    *(v2 + 576) = *(v2 + 192);
    *(v2 + 592) = v7;
    v8 = *v3;
    v9 = v3[1];
    v10 = v3[3];
    *(v2 + 416) = v3[2];
    *(v2 + 432) = v10;
    *(v2 + 384) = v8;
    *(v2 + 400) = v9;
    v11 = v3[4];
    v12 = v3[5];
    v13 = v3[7];
    *(v2 + 480) = v3[6];
    *(v2 + 496) = v13;
    *(v2 + 448) = v11;
    *(v2 + 464) = v12;
    sub_100013E54(v2 + 512, v2 + 640, &qword_1004ACDC0);
    sub_100013F2C(v2 + 384, &qword_1004ACDC0);
    v14 = *(v2 + 560);
    v16 = *(v2 + 512);
    v15 = *(v2 + 528);
    v3[2] = *(v2 + 544);
    v3[3] = v14;
    *v3 = v16;
    v3[1] = v15;
    v17 = *(v2 + 624);
    v19 = *(v2 + 576);
    v18 = *(v2 + 592);
    v3[6] = *(v2 + 608);
    v3[7] = v17;
    v3[4] = v19;
    v3[5] = v18;
    v20 = *(v2 + 176);
    *(v2 + 288) = *(v2 + 160);
    *(v2 + 304) = v20;
    v21 = *(v2 + 144);
    *(v2 + 256) = *(v2 + 128);
    *(v2 + 272) = v21;
    v22 = *(v2 + 240);
    *(v2 + 352) = *(v2 + 224);
    *(v2 + 368) = v22;
    v23 = *(v2 + 208);
    *(v2 + 320) = *(v2 + 192);
    *(v2 + 336) = v23;
    sub_100013F2C(v2 + 256, &qword_1004ACDC0);
  }

  else
  {
    v24 = *(v2 + 768);
    v35 = *(v2 + 192);
    v36 = *(v2 + 208);
    v37 = *(v2 + 224);
    v38 = *(v2 + 240);
    v31 = *(v2 + 128);
    v32 = *(v2 + 144);
    v33 = *(v2 + 160);
    v34 = *(v2 + 176);
    v25 = v24[4];
    v26 = v24[5];
    v27 = v24[7];
    *(v2 + 352) = v24[6];
    *(v2 + 368) = v27;
    *(v2 + 320) = v25;
    *(v2 + 336) = v26;
    v28 = *v24;
    v29 = v24[1];
    v30 = v24[3];
    *(v2 + 288) = v24[2];
    *(v2 + 304) = v30;
    *(v2 + 256) = v28;
    *(v2 + 272) = v29;
    sub_100013F2C(v2 + 256, &qword_1004ACDC0);
    v24[4] = v35;
    v24[5] = v36;
    v24[6] = v37;
    v24[7] = v38;
    *v24 = v31;
    v24[1] = v32;
    v24[2] = v33;
    v24[3] = v34;
  }

  free(v2);
}

uint64_t Config.caRoots.setter(uint64_t a1, char a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t Config.$caRoots.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_100229FD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 128) = v3;
  *(a2 + 136) = v4;
  *(a2 + 144) = v5;
  return result;
}

void (*Config.$caRoots.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 128);
  *(v3 + 32) = v5;
  v6 = *(v1 + 136);
  *(v4 + 40) = v6;
  v7 = *(v1 + 144);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return sub_10022A0D4;
}

void sub_10022A0D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[3];
  if (a2)
  {

    *(v6 + 128) = v4;
    *(v6 + 136) = v3;
    *(v6 + 144) = v5;
  }

  else
  {

    *(v6 + 128) = v4;
    *(v6 + 136) = v3;
    *(v6 + 144) = v5;
  }

  free(v2);
}

uint64_t Config.$configSecurityPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = *(v1 + 200);

  result = sub_1002592E0(v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_10022A224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 200);

  return sub_1002592E0(v2);
}

uint64_t sub_10022A2A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 48);

  sub_1002592E0(v4);

  result = sub_1001FA5D8(*(a2 + 160));
  *(a2 + 152) = v3;
  *(a2 + 160) = v4;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  *(a2 + 192) = v8;
  *(a2 + 200) = v9;
  return result;
}

void (*Config.$configSecurityPolicy.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 152);
  *(v4 + 64) = v5;
  v6 = *(v1 + 160);
  *(v4 + 72) = v6;
  v7 = *(v1 + 168);
  *(v4 + 80) = v7;
  v8 = *(v1 + 176);
  *(v4 + 88) = v8;
  v9 = *(v1 + 184);
  *(v4 + 96) = v9;
  v10 = *(v1 + 192);
  *(v4 + 104) = v10;
  v11 = *(v1 + 200);
  *(v4 + 49) = v11;
  *v4 = v5;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *(v4 + 24) = v13;
  *(v4 + 8) = v12;
  *(v4 + 40) = v10;
  *(v4 + 48) = v11;

  sub_1002592E0(v6);
  return sub_10022A440;
}

void sub_10022A440(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v12 = *(*a1 + 48);
  v11 = **a1;
  v8 = (*a1)[9];
  v9 = (*a1)[7];
  if (a2)
  {

    sub_1002592E0(v3);

    sub_1001FA5D8(v8);
    *(v9 + 152) = v11;
    *(v9 + 160) = v3;
    *(v9 + 168) = v4;
    *(v9 + 176) = v5;
    *(v9 + 184) = v7;
    *(v9 + 192) = v6;
    *(v9 + 200) = v12;
    v10 = v2[1];

    sub_1001FA5D8(v10);
  }

  else
  {

    sub_1001FA5D8(v8);
    *(v9 + 152) = v11;
    *(v9 + 160) = v3;
    *(v9 + 168) = v4;
    *(v9 + 176) = v5;
    *(v9 + 184) = v7;
    *(v9 + 192) = v6;
    *(v9 + 200) = v12;
  }

  free(v2);
}

void *Config.$cryptex.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 208), 0x109uLL);
  sub_100013E54(__dst, v4, &qword_1004ACDC8);
  return memcpy(a1, __dst, 0x109uLL);
}

void (*Config.$cryptex.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x668uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[204] = v1;
  memcpy(v3, (v1 + 208), 0x109uLL);
  memcpy((v4 + 272), (v1 + 208), 0x109uLL);
  sub_100013E54(v4, v4 + 544, &qword_1004ACDC8);
  return sub_10022A6A8;
}

void sub_10022A6A8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[204];
    memcpy(v2 + 136, v2 + 34, 0x109uLL);
    memcpy(v2 + 102, (v3 + 208), 0x109uLL);
    sub_100013E54((v2 + 136), (v2 + 170), &qword_1004ACDC8);
    sub_100013F2C((v2 + 102), &qword_1004ACDC8);
    memcpy((v3 + 208), v2 + 136, 0x109uLL);
    memcpy(v2 + 68, v2 + 34, 0x109uLL);
    sub_100013F2C((v2 + 68), &qword_1004ACDC8);
  }

  else
  {
    v4 = v2[204];
    memcpy(v5, v2 + 34, sizeof(v5));
    memcpy(v2 + 68, (v4 + 208), 0x109uLL);
    sub_100013F2C((v2 + 68), &qword_1004ACDC8);
    memcpy((v4 + 208), v5, 0x109uLL);
  }

  free(v2);
}

uint64_t sub_10022A7F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 480) = v3;
  *(a2 + 488) = v4;
  return result;
}

void (*Config.$roots.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 480);
  *(v3 + 24) = v5;
  v6 = *(v1 + 488);
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_10022A8E0;
}

void sub_10022A8E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {

    *(v5 + 480) = v4;
    *(v5 + 488) = v3;
  }

  else
  {

    *(v5 + 480) = v4;
    *(v5 + 488) = v3;
  }

  free(v2);
}

uint64_t Config.diavlo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 36);
  v4 = sub_1000039E8(&qword_1004ACDA0);
  return sub_100013E54(v3 + *(v4 + 44), a1, &qword_1004AD1B8);
}

uint64_t sub_10022A9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 36);
  v4 = sub_1000039E8(&qword_1004ACDA0);
  return sub_100013E54(v3 + *(v4 + 44), a2, &qword_1004AD1B8);
}

uint64_t sub_10022AA4C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for Config(0) + 36);
  v4 = sub_1000039E8(&qword_1004ACDA0);
  return sub_100268AD8(a1, v3 + *(v4 + 44), &qword_1004AD1B8);
}

uint64_t Config.diavlo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 36);
  v4 = sub_1000039E8(&qword_1004ACDA0);
  return sub_10001F8D8(a1, v3 + *(v4 + 44), &qword_1004AD1B8);
}

uint64_t (*Config.diavlo.modify())(void)
{
  type metadata accessor for Config(0);
  sub_1000039E8(&qword_1004ACDA0);
  return DInitData.init(rawValue:);
}

uint64_t sub_10022ABC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ACDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_100013E54(a1, &v9 - v5, &qword_1004ACDA0);
  v7 = *(type metadata accessor for Config(0) + 36);
  sub_100013F2C(a2 + v7, &qword_1004ACDA0);
  return sub_10003E154(v6, a2 + v7, &qword_1004ACDA0);
}

void (*Config.$diavlo.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000039E8(&qword_1004ACDA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for Config(0) + 36);
  *(a1 + 24) = v6;
  sub_100013E54(v1 + v6, v5, &qword_1004ACDA0);
  return sub_10022AD74;
}

uint64_t Config.featureFlags.getter()
{
  type metadata accessor for Config(0);
}

uint64_t sub_10022ADC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for Config(0) + 40);

  *(v3 + 8) = v2;
  return result;
}

uint64_t Config.featureFlags.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 40);

  *(v3 + 8) = a1;
  return result;
}

uint64_t Config.$featureFlags.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 40));

  return v1;
}

uint64_t sub_10022AEE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10022AF38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 40));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*Config.$featureFlags.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Config(0) + 40);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  *(v4 + 8) = v8;

  return sub_100269A88;
}

double Config.$finish.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 44));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  *(v14 + 9) = *(v3 + 73);
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  sub_100013E54(&v10, &v9, &qword_1004ACE00);
  v6 = v13;
  a1[2] = v12;
  a1[3] = v6;
  a1[4] = v14[0];
  *(a1 + 73) = *(v14 + 9);
  result = *&v10;
  v8 = v11;
  *a1 = v10;
  a1[1] = v8;
  return result;
}

double sub_10022B1C8(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v15[0] = a1[4];
  *(v15 + 9) = *(a1 + 73);
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  v4 = (a2 + *(type metadata accessor for Config(0) + 44));
  v5 = v4[3];
  v16[2] = v4[2];
  v16[3] = v5;
  v17[0] = v4[4];
  *(v17 + 9) = *(v4 + 73);
  v6 = v4[1];
  v16[0] = *v4;
  v16[1] = v6;
  sub_100013E54(&v11, &v10, &qword_1004ACE00);
  sub_100013F2C(v16, &qword_1004ACE00);
  v7 = v14;
  v4[2] = v13;
  v4[3] = v7;
  v4[4] = v15[0];
  *(v4 + 73) = *(v15 + 9);
  result = *&v11;
  v9 = v12;
  *v4 = v11;
  v4[1] = v9;
  return result;
}

void (*Config.$finish.modify(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x248uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 576) = v1;
  v5 = *(type metadata accessor for Config(0) + 44);
  *(v4 + 92) = v5;
  v6 = (v1 + v5);
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  *(v4 + 73) = *(v6 + 73);
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  *(v4 + 32) = v7;
  v10 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v10;
  v11 = v6[1];
  *(v4 + 96) = *v6;
  *(v4 + 112) = v11;
  v13 = v6[3];
  v12 = v6[4];
  v14 = v6[2];
  *(v4 + 169) = *(v6 + 73);
  *(v4 + 144) = v13;
  *(v4 + 160) = v12;
  *(v4 + 128) = v14;
  sub_100013E54(v4, v4 + 192, &qword_1004ACE00);
  return sub_10022B388;
}

void sub_10022B388(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 192);
  if (a2)
  {
    v4 = (*(v2 + 576) + *(v2 + 92));
    v5 = *(v2 + 112);
    *(v2 + 384) = *(v2 + 96);
    *(v2 + 400) = v5;
    *(v2 + 457) = *(v2 + 169);
    v6 = *(v2 + 160);
    *(v2 + 432) = *(v2 + 144);
    *(v2 + 448) = v6;
    *(v2 + 416) = *(v2 + 128);
    v7 = v4[1];
    *(v2 + 288) = *v4;
    *(v2 + 304) = v7;
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[4];
    *(v2 + 361) = *(v4 + 73);
    *(v2 + 336) = v9;
    *(v2 + 352) = v10;
    *(v2 + 320) = v8;
    sub_100013E54(v2 + 384, v2 + 480, &qword_1004ACE00);
    sub_100013F2C(v2 + 288, &qword_1004ACE00);
    v11 = *(v2 + 400);
    *v4 = *(v2 + 384);
    v4[1] = v11;
    v13 = *(v2 + 432);
    v12 = *(v2 + 448);
    v14 = *(v2 + 416);
    *(v4 + 73) = *(v2 + 457);
    v4[3] = v13;
    v4[4] = v12;
    v4[2] = v14;
    v15 = *(v2 + 112);
    *v3 = *(v2 + 96);
    v3[1] = v15;
    *(v3 + 73) = *(v2 + 169);
    v16 = *(v2 + 160);
    v3[3] = *(v2 + 144);
    v3[4] = v16;
    v3[2] = *(v2 + 128);
    sub_100013F2C(v3, &qword_1004ACE00);
  }

  else
  {
    v17 = (*(v2 + 576) + *(v2 + 92));
    v24 = *(v2 + 128);
    v25 = *(v2 + 144);
    *v26 = *(v2 + 160);
    *&v26[9] = *(v2 + 169);
    v22 = *(v2 + 96);
    v23 = *(v2 + 112);
    v18 = v17[1];
    *v3 = *v17;
    v3[1] = v18;
    v20 = v17[3];
    v19 = v17[4];
    v21 = v17[2];
    *(v3 + 73) = *(v17 + 73);
    v3[3] = v20;
    v3[4] = v19;
    v3[2] = v21;
    sub_100013F2C(v3, &qword_1004ACE00);
    v17[2] = v24;
    v17[3] = v25;
    v17[4] = *v26;
    *(v17 + 73) = *&v26[9];
    *v17 = v22;
    v17[1] = v23;
  }

  free(v2);
}

double sub_10022B590(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = a2 + *(type metadata accessor for Config(0) + 48);
  v6 = *(v5 + 56);
  v7 = *(v5 + 88);
  v20[4] = *(v5 + 72);
  v20[5] = v7;
  v20[2] = *(v5 + 40);
  v20[3] = v6;
  v8 = *(v5 + 24);
  v20[0] = *(v5 + 8);
  v20[1] = v8;
  sub_100013E54(&v14, &v13, &qword_1004AD1F0);
  sub_100013F2C(v20, &qword_1004AD1F0);
  v9 = v17;
  *(v5 + 40) = v16;
  *(v5 + 56) = v9;
  v10 = v19;
  *(v5 + 72) = v18;
  *(v5 + 88) = v10;
  result = *&v14;
  v12 = v15;
  *(v5 + 8) = v14;
  *(v5 + 24) = v12;
  return result;
}

__n128 Config.$identification.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 48));
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 12);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100013E54(&v11, v10, &qword_1004ACE18);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_10022B79C(__int128 *a1, uint64_t a2)
{
  v2 = a1[5];
  v17 = a1[4];
  v18 = v2;
  v19 = *(a1 + 12);
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = a1[3];
  v15 = a1[2];
  v16 = v4;
  v5 = a2 + *(type metadata accessor for Config(0) + 48);
  v6 = *(v5 + 80);
  v20[4] = *(v5 + 64);
  v20[5] = v6;
  v21 = *(v5 + 96);
  v7 = *(v5 + 16);
  v20[0] = *v5;
  v20[1] = v7;
  v8 = *(v5 + 48);
  v20[2] = *(v5 + 32);
  v20[3] = v8;
  sub_100013E54(&v13, v12, &qword_1004ACE18);
  sub_100013F2C(v20, &qword_1004ACE18);
  v9 = v18;
  *(v5 + 64) = v17;
  *(v5 + 80) = v9;
  *(v5 + 96) = v19;
  v10 = v14;
  *v5 = v13;
  *(v5 + 16) = v10;
  result = v16;
  *(v5 + 32) = v15;
  *(v5 + 48) = result;
  return result;
}

void (*Config.$identification.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x280uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 624) = v1;
  v5 = *(type metadata accessor for Config(0) + 48);
  *(v4 + 632) = v5;
  v6 = (v1 + v5);
  v7 = v6[3];
  v8 = v6[4];
  v9 = v6[5];
  *(v4 + 96) = *(v6 + 12);
  *(v4 + 64) = v8;
  *(v4 + 80) = v9;
  *(v4 + 48) = v7;
  v10 = *v6;
  v11 = v6[2];
  *(v4 + 16) = v6[1];
  *(v4 + 32) = v11;
  *v4 = v10;
  v13 = v6[4];
  v12 = v6[5];
  v14 = v6[3];
  *(v4 + 200) = *(v6 + 12);
  *(v4 + 152) = v14;
  *(v4 + 184) = v12;
  *(v4 + 168) = v13;
  v15 = *v6;
  v16 = v6[1];
  *(v4 + 136) = v6[2];
  *(v4 + 120) = v16;
  *(v4 + 104) = v15;
  sub_100013E54(v4, v4 + 208, &qword_1004ACE18);
  return sub_10022B974;
}

void sub_10022B974(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (*(v2 + 624) + *(v2 + 632));
    v4 = *(v2 + 120);
    *(v2 + 416) = *(v2 + 104);
    *(v2 + 432) = v4;
    v5 = *(v2 + 136);
    *(v2 + 512) = *(v2 + 200);
    v6 = *(v2 + 184);
    *(v2 + 480) = *(v2 + 168);
    *(v2 + 496) = v6;
    v7 = *(v2 + 152);
    *(v2 + 448) = v5;
    *(v2 + 464) = v7;
    v8 = *v3;
    v9 = v3[2];
    *(v2 + 328) = v3[1];
    *(v2 + 344) = v9;
    *(v2 + 312) = v8;
    v10 = v3[3];
    v11 = v3[4];
    v12 = v3[5];
    *(v2 + 408) = *(v3 + 12);
    *(v2 + 376) = v11;
    *(v2 + 392) = v12;
    *(v2 + 360) = v10;
    sub_100013E54(v2 + 416, v2 + 520, &qword_1004ACE18);
    sub_100013F2C(v2 + 312, &qword_1004ACE18);
    v14 = *(v2 + 432);
    v13 = *(v2 + 448);
    *v3 = *(v2 + 416);
    v3[1] = v14;
    v3[2] = v13;
    v16 = *(v2 + 480);
    v15 = *(v2 + 496);
    v17 = *(v2 + 464);
    *(v3 + 12) = *(v2 + 512);
    v3[4] = v16;
    v3[5] = v15;
    v3[3] = v17;
    v18 = *(v2 + 152);
    v19 = *(v2 + 184);
    *(v2 + 272) = *(v2 + 168);
    *(v2 + 288) = v19;
    *(v2 + 304) = *(v2 + 200);
    v20 = *(v2 + 120);
    *(v2 + 208) = *(v2 + 104);
    *(v2 + 224) = v20;
    *(v2 + 240) = *(v2 + 136);
    *(v2 + 256) = v18;
    sub_100013F2C(v2 + 208, &qword_1004ACE18);
  }

  else
  {
    v21 = *(v2 + 624) + *(v2 + 632);
    v31 = *(v2 + 168);
    v32 = *(v2 + 184);
    v33 = *(v2 + 200);
    v27 = *(v2 + 104);
    v28 = *(v2 + 120);
    v29 = *(v2 + 136);
    v30 = *(v2 + 152);
    v23 = *(v21 + 16);
    v22 = *(v21 + 32);
    *(v2 + 208) = *v21;
    *(v2 + 224) = v23;
    *(v2 + 240) = v22;
    v25 = *(v21 + 64);
    v24 = *(v21 + 80);
    v26 = *(v21 + 48);
    *(v2 + 304) = *(v21 + 96);
    *(v2 + 272) = v25;
    *(v2 + 288) = v24;
    *(v2 + 256) = v26;
    sub_100013F2C(v2 + 208, &qword_1004ACE18);
    *(v21 + 64) = v31;
    *(v21 + 80) = v32;
    *(v21 + 96) = v33;
    *v21 = v27;
    *(v21 + 16) = v28;
    *(v21 + 32) = v29;
    *(v21 + 48) = v30;
  }

  free(v2);
}

uint64_t Config.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 52) + 8);
  sub_100259414(v1);
  return v1;
}

uint64_t sub_10022BBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 52);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(v3 + 32);
  return sub_100259414(v4);
}

uint64_t sub_10022BC10(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for Config(0) + 52);
  v7 = *(v6 + 8);
  sub_100259414(v2);
  result = sub_1002191A8(v7);
  *(v6 + 8) = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  return result;
}

uint64_t Config.log.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for Config(0) + 52);
  result = sub_1002191A8(*(v9 + 8));
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  return result;
}

uint64_t Config.$log.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);

  result = sub_100259414(v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_10022BDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 52);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v3 + 32);

  return sub_100259414(v4);
}

uint64_t sub_10022BE48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Config(0) + 52);

  sub_100259414(v3);

  result = sub_1002191A8(*(v7 + 8));
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

uint64_t (*Config.$log.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Config(0) + 52);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 48) = *v6;
  v8 = v6[1];
  *(v4 + 56) = v8;
  v9 = v6[2];
  *(v4 + 64) = v9;
  v10 = v6[3];
  *(v4 + 72) = v10;
  v11 = *(v6 + 32);
  *(v4 + 33) = v11;
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;

  sub_100259414(v8);
  return sub_10022BFB8;
}

uint64_t sub_10022BFBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 56));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;

  return sub_100259330(v4);
}

uint64_t sub_10022C018(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v10 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = (a2 + *(type metadata accessor for Config(0) + 56));
  v9 = v7[1];
  sub_100259330(v2);
  result = sub_100219ADC(v9);
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v10;
  v7[5] = v5;
  v7[6] = v6;
  return result;
}

uint64_t Config.$meta.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];

  result = sub_100259330(v5);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t sub_10022C164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 56));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;

  return sub_100259330(v4);
}

uint64_t sub_10022C1FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = (a2 + *(type metadata accessor for Config(0) + 56));
  v11 = v9[1];

  sub_100259330(v3);

  result = sub_100219ADC(v11);
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  return result;
}

void (*Config.$meta.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(type metadata accessor for Config(0) + 56);
  *(v4 + 64) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  *v4 = *v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;

  sub_100259330(v7);
  return sub_10022C3EC;
}

uint64_t Config.narrative.getter()
{
  type metadata accessor for Config(0);
}

uint64_t sub_10022C450(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for Config(0) + 60);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_10022C4F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 60));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10022C544(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 60));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*Config.$narrative.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Config(0) + 60);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  *(v4 + 8) = v8;

  return sub_10022C650;
}

double sub_10022C654(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v8 = *a1;
  v9 = v2;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v3 = a2 + *(type metadata accessor for Config(0) + 64);
  v4 = *(v3 + 24);
  v11[0] = *(v3 + 8);
  v11[1] = v4;
  v12[0] = *(v3 + 40);
  *(v12 + 9) = *(v3 + 49);
  sub_100013E54(&v8, &v7, &qword_1004ACE78);
  sub_100013F2C(v11, &qword_1004ACE78);
  v5 = v9;
  *(v3 + 8) = v8;
  *(v3 + 24) = v5;
  *(v3 + 40) = v10[0];
  result = *(v10 + 9);
  *(v3 + 49) = *(v10 + 9);
  return result;
}

__n128 Config.$network.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 64));
  v13 = *(v3 + 64);
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_100013E54(&v9, v8, &qword_1004AD200);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10022C79C(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v12 = a1[2];
  v13 = v2;
  v14 = *(a1 + 64);
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a2 + *(type metadata accessor for Config(0) + 64);
  v16 = *(v4 + 64);
  v5 = *(v4 + 48);
  v15[2] = *(v4 + 32);
  v15[3] = v5;
  v6 = *(v4 + 16);
  v15[0] = *v4;
  v15[1] = v6;
  sub_100013E54(&v10, v9, &qword_1004AD200);
  sub_100013F2C(v15, &qword_1004AD200);
  v7 = v13;
  *(v4 + 32) = v12;
  *(v4 + 48) = v7;
  *(v4 + 64) = v14;
  result = v11;
  *v4 = v10;
  *(v4 + 16) = result;
  return result;
}

void (*Config.$network.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  v5 = *(type metadata accessor for Config(0) + 64);
  *(v4 + 68) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 16) = v7;
  *v4 = *v6;
  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v12 = *(v6 + 16);
  *(v4 + 136) = *(v6 + 64);
  *(v4 + 88) = v12;
  *(v4 + 120) = v10;
  *(v4 + 104) = v11;
  *(v4 + 72) = *v6;
  sub_100013E54(v4, v4 + 144, &qword_1004AD200);
  return sub_10022C988;
}

void sub_10022C988(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 432) + *(v2 + 68);
    v4 = *(v2 + 88);
    v5 = *(v2 + 120);
    *(v2 + 320) = *(v2 + 104);
    *(v2 + 336) = v5;
    *(v2 + 352) = *(v2 + 136);
    *(v2 + 288) = *(v2 + 72);
    *(v2 + 304) = v4;
    v7 = *(v3 + 32);
    v6 = *(v3 + 48);
    v8 = *(v3 + 16);
    *(v2 + 280) = *(v3 + 64);
    *(v2 + 232) = v8;
    *(v2 + 264) = v6;
    *(v2 + 248) = v7;
    *(v2 + 216) = *v3;
    sub_100013E54(v2 + 288, v2 + 360, &qword_1004AD200);
    sub_100013F2C(v2 + 216, &qword_1004AD200);
    *v3 = *(v2 + 288);
    v10 = *(v2 + 320);
    v9 = *(v2 + 336);
    v11 = *(v2 + 304);
    *(v3 + 64) = *(v2 + 352);
    *(v3 + 32) = v10;
    *(v3 + 48) = v9;
    *(v3 + 16) = v11;
    v12 = *(v2 + 88);
    v13 = *(v2 + 120);
    *(v2 + 176) = *(v2 + 104);
    *(v2 + 192) = v13;
    *(v2 + 208) = *(v2 + 136);
    *(v2 + 144) = *(v2 + 72);
    *(v2 + 160) = v12;
    sub_100013F2C(v2 + 144, &qword_1004AD200);
  }

  else
  {
    v14 = *(v2 + 432) + *(v2 + 68);
    v20 = *(v2 + 104);
    v21 = *(v2 + 120);
    v22 = *(v2 + 136);
    v18 = *(v2 + 72);
    v19 = *(v2 + 88);
    *(v2 + 144) = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    *(v2 + 208) = *(v14 + 64);
    *(v2 + 176) = v16;
    *(v2 + 192) = v15;
    *(v2 + 160) = v17;
    sub_100013F2C(v2 + 144, &qword_1004AD200);
    *(v14 + 32) = v20;
    *(v14 + 48) = v21;
    *(v14 + 64) = v22;
    *v14 = v18;
    *(v14 + 16) = v19;
  }

  free(v2);
}

uint64_t sub_10022CB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 68);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 40);
  *(a2 + 32) = v8;

  return sub_100259394(v4, v5, v6, v7, v8);
}

uint64_t sub_10022CBD8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v13 = *(a1 + 32);
  v6 = a2 + *(type metadata accessor for Config(0) + 68);
  v7 = *(v6 + 16);
  v12 = *(v6 + 8);
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  sub_100259394(v2, v3, v4, v5, v13);
  result = sub_100218E88(v12, v7, v8, v9, v10);
  *(v6 + 8) = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = v13;
  return result;
}

uint64_t Config.$analytics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 40);

  result = sub_100259394(v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_10022CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 68);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  v8 = *(v3 + 40);
  *(a2 + 40) = v8;

  return sub_100259394(v4, v5, v6, v7, v8);
}

uint64_t sub_10022CE3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = a2 + *(type metadata accessor for Config(0) + 68);

  sub_100259394(v3, v4, v5, v6, v7);

  result = sub_100218E88(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40));
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  return result;
}

void (*Config.$analytics.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(type metadata accessor for Config(0) + 68);
  *(v4 + 44) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 56) = *v6;
  v8 = v6[1];
  *(v4 + 64) = v8;
  v9 = v6[2];
  *(v4 + 72) = v9;
  v10 = v6[3];
  *(v4 + 80) = v10;
  v11 = v6[4];
  *(v4 + 88) = v11;
  v12 = *(v6 + 40);
  *(v4 + 41) = v12;
  *v4 = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *(v4 + 24) = v14;
  *(v4 + 8) = v13;
  *(v4 + 40) = v12;

  sub_100259394(v8, v9, v10, v11, v12);
  return sub_10022CFE0;
}

void sub_10022CFE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v21 = *(*a1 + 41);
  v22 = *(*a1 + 40);
  v19 = (*a1)[10];
  v20 = (*a1)[11];
  v7 = (*a1)[8];
  v8 = (*a1)[9];
  v9 = *(*a1 + 11);
  v10 = (*a1)[6];
  v18 = **a1;
  if (a2)
  {
    v11 = v10 + v9;

    sub_100259394(v3, v5, v4, v6, v22);

    sub_100218E88(v7, v8, v19, v20, v21);
    *v11 = v18;
    *(v11 + 8) = v3;
    *(v11 + 16) = v5;
    *(v11 + 24) = v4;
    *(v11 + 32) = v6;
    *(v11 + 40) = v22;
    v12 = v2[1];
    v13 = v2[2];
    v14 = v2[3];
    v15 = v2[4];
    v16 = *(v2 + 40);

    sub_100218E88(v12, v13, v14, v15, v16);
  }

  else
  {

    v17 = v10 + v9;
    sub_100218E88(v7, v8, v19, v20, v21);
    *v17 = v18;
    *(v17 + 8) = v3;
    *(v17 + 16) = v5;
    *(v17 + 24) = v4;
    *(v17 + 32) = v6;
    *(v17 + 40) = v22;
  }

  free(v2);
}

uint64_t Config.packages.getter()
{
  type metadata accessor for Config(0);
}

uint64_t sub_10022D168(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for Config(0) + 72);

  *(v3 + 8) = v2;
  return result;
}

uint64_t Config.packages.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Config(0) + 72);

  *(v3 + 8) = a1;
  return result;
}

uint64_t Config.$packages.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 72));

  return v1;
}

uint64_t sub_10022D28C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 72));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10022D2E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 72));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*Config.$packages.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Config(0) + 72);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  *(v4 + 8) = v8;

  return sub_100269A88;
}

uint64_t Config.preferences.getter()
{
  type metadata accessor for Config(0);
}

uint64_t sub_10022D424(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for Config(0) + 76);

  *(v3 + 8) = v2;
  return result;
}

uint64_t Config.$preferences.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 76));

  return v1;
}

uint64_t sub_10022D50C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 76));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10022D560(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 76));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Config.$preferences.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Config(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Config.$preferences.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Config(0) + 76);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  *(v4 + 8) = v8;

  return sub_100269A88;
}

uint64_t Config.$secureConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 80));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return sub_1001C8518(v4);
}

uint64_t sub_10022D758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Config(0) + 80));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return sub_1001C8518(v4);
}

uint64_t sub_10022D7AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Config(0) + 80));
  v5 = v4[1];

  sub_1001C8518(v3);

  result = sub_1001C855C(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Config.$secureConfig.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Config(0) + 80));
  v5 = v4[1];

  result = sub_1001C855C(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*Config.$secureConfig.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Config(0) + 80);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;

  sub_1001C8518(v5);
  return sub_10022D8CC;
}

uint64_t sub_10022D8CC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  v5 = v3[1];
  if (a2)
  {

    sub_1001C8518(v2);

    sub_1001C855C(v5);
    *v3 = v4;
    v3[1] = v2;

    return sub_1001C855C(v2);
  }

  else
  {

    result = sub_1001C855C(v5);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t Config.ssh.getter()
{
  v1 = *(v0 + *(type metadata accessor for Config(0) + 84) + 8);
  sub_100259414(v1);
  return v1;
}

uint64_t sub_10022D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 84);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(v3 + 32);
  return sub_100259414(v4);
}

uint64_t sub_10022DA2C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for Config(0) + 84);
  v7 = *(v6 + 8);
  sub_100259414(v2);
  result = sub_1002191A8(v7);
  *(v6 + 8) = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  return result;
}

uint64_t Config.ssh.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for Config(0) + 84);
  result = sub_1002191A8(*(v9 + 8));
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  return result;
}

uint64_t Config.$ssh.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Config(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);

  result = sub_100259414(v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_10022DBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Config(0) + 84);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v3 + 32);

  return sub_100259414(v4);
}

uint64_t sub_10022DC64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Config(0) + 84);

  sub_100259414(v3);

  result = sub_1002191A8(*(v7 + 8));
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

uint64_t (*Config.$ssh.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for Config(0) + 84);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 48) = *v6;
  v8 = v6[1];
  *(v4 + 56) = v8;
  v9 = v6[2];
  *(v4 + 64) = v9;
  v10 = v6[3];
  *(v4 + 72) = v10;
  v11 = *(v6 + 32);
  *(v4 + 33) = v11;
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;

  sub_100259414(v8);
  return sub_100269A8C;
}