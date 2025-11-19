unint64_t sub_1DABD2F80()
{
  result = qword_1EE124410;
  if (!qword_1EE124410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124410);
  }

  return result;
}

unint64_t sub_1DABD2FD8()
{
  result = qword_1EE124418;
  if (!qword_1EE124418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124418);
  }

  return result;
}

unint64_t sub_1DABD3030()
{
  result = qword_1EE124308;
  if (!qword_1EE124308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124308);
  }

  return result;
}

unint64_t sub_1DABD3088()
{
  result = qword_1EE124310;
  if (!qword_1EE124310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124310);
  }

  return result;
}

uint64_t sub_1DABD30DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DACEC950 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xEB00000000644973 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEC970 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F4879786F7270 && a2 == 0xEE0073656D614E74 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEC990 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACEC9B0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69666F72506E7076 && a2 == 0xEF73656D614E656CLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_1DACBA174();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_1DABD33B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DABD34C8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DACB92F4();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v12;
      v7 = &v1[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
      *v7 = v11;
      *(v7 + 1) = v6;
      v10.receiver = v1;
      v10.super_class = ObjectType;
      v8 = objc_msgSendSuper2(&v10, sel_init);

      return v8;
    }
  }

  else
  {

    sub_1DAADFA60(v15);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DABD3684(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID);
  v4 = *(a2 + OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID + 8);
  sub_1DABD3860();
  sub_1DACB71E4();
  return sub_1DACB9A44();
}

unint64_t sub_1DABD3860()
{
  result = qword_1EE11F7C0;
  if (!qword_1EE11F7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F7C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchlistIntentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL sub_1DABD39D4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1DABD39F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1DACB9C84();
        v11 = v10;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v6;
          v9 = v18 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1DACB9D24();
          }

          v9 = (v8 + v5);
        }

        v12 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v12 ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v16 = ((v12 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3Fu;
            v11 = 3;
          }

          else
          {
            v17 = ((v12 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3Fu;
            v11 = 4;
          }

          goto LABEL_15;
        }

        if (v14 == 1)
        {
LABEL_14:
          v11 = 1;
        }

        else
        {
          v15 = v9[1] & 0x3F | ((v12 & 0x1F) << 6);
          v11 = 2;
        }
      }

LABEL_15:
      result = SCIsCJKCharacter();
      if (!result)
      {
        v5 += v11;
        if (v5 < v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t sub_1DABD3B98(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1DACB71E4();
  return a1;
}

id sub_1DABD3BF0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v8 = sub_1DACB8204();
  v60 = v8;
  v63 = *(v8 - 8);
  v9 = v63;
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v12;
  v56 = sub_1DACB7CC4();
  v66 = *(v56 - 8);
  v13 = v66;
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v59 = *a3;
  v57 = *(v13 + 16);
  v58 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57();
  sub_1DAA4D678(v5 + 16, v78);
  sub_1DAA4D678(v5 + 56, v76);
  v61 = *(v9 + 16);
  v61(v12, a5, v8);
  v16 = v79;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v77;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v20;
  v29 = *v26;
  v30 = type metadata accessor for YahooChartModelEngine();
  v74 = v30;
  v75 = &off_1F5690098;
  v73[0] = v28;
  v31 = type metadata accessor for YahooBaseOperationFactory();
  v71 = v31;
  v72 = &off_1F56825C8;
  v70[0] = v29;
  v32 = type metadata accessor for YahooChartOperation();
  v33 = objc_allocWithZone(v32);
  v34 = v74;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = v71;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v38;
  v47 = *v44;
  v69[3] = v30;
  v69[4] = &off_1F5690098;
  v69[0] = v46;
  v68[3] = v31;
  v68[4] = &off_1F56825C8;
  v68[0] = v47;
  v48 = &v33[qword_1EE1263E0];
  v49 = v65;
  *v48 = v64;
  v48[1] = v49;
  v33[qword_1EE1263E8] = v59;
  v50 = v58;
  v51 = v56;
  (v57)(&v33[qword_1ECBE6B58], v58, v56);
  sub_1DAA4D678(v69, &v33[qword_1EE1263F0]);
  sub_1DAA4D678(v68, &v33[qword_1EE1263F8]);
  v52 = v62;
  v53 = v60;
  v61(&v33[qword_1EE126400], v62, v60);
  v67.receiver = v33;
  v67.super_class = v32;
  sub_1DACB71E4();
  v54 = objc_msgSendSuper2(&v67, sel_init);
  (*(v63 + 8))(v52, v53);
  (*(v66 + 8))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v54;
}

uint64_t sub_1DABD41AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t WidgetQuote.price.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t WidgetQuote.priceChange.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WidgetQuote.marketCapitalization.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t WidgetQuote.currencyCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t WidgetQuote.init(price:priceChange:marketCapitalization:currencyCode:exchangeStatus:exchangeNextOpen:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v12 = *a10;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  v13 = a9 + *(type metadata accessor for WidgetQuote() + 36);

  return sub_1DABD4334(a11, v13);
}

uint64_t sub_1DABD4334(uint64_t a1, uint64_t a2)
{
  sub_1DAA492B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WidgetQuote.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  v5 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v5;
  v6 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v6;
  v7 = *(a1 + 120);
  *(a2 + 48) = *(a1 + 112);
  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 128);
  v8 = *(type metadata accessor for Quote() + 60);
  v9 = type metadata accessor for WidgetQuote();
  sub_1DAA89C00(a1 + v8, a2 + *(v9 + 36), sub_1DAA492B4);
  sub_1DACB71E4();
  return sub_1DAA88DD8(a1, type metadata accessor for Quote);
}

uint64_t sub_1DABD4464()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0x79636E6572727563;
  v4 = 0x65676E6168637865;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168436563697270;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABD453C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD4E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD4564(uint64_t a1)
{
  v2 = sub_1DABD4C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD45A0(uint64_t a1)
{
  v2 = sub_1DABD4C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetQuote.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DABD4CB8(0, &qword_1ECBE89A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD4C64();
  sub_1DACBA304();
  v12 = *v3;
  v13 = *(v3 + 8);
  v22[15] = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v22[14] = 1;
    sub_1DACBA044();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v22[13] = 2;
    sub_1DACBA044();
    v19 = v3[6];
    v20 = v3[7];
    v22[12] = 3;
    sub_1DACBA024();
    v22[11] = *(v3 + 64);
    v22[10] = 4;
    sub_1DAA7F2E0();
    sub_1DACBA0E4();
    v21 = *(type metadata accessor for WidgetQuote() + 36);
    v22[9] = 5;
    sub_1DACB7CC4();
    sub_1DAA5D520(&qword_1EE125288);
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t WidgetQuote.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABD4CB8(0, &qword_1ECBE89B8, MEMORY[0x1E69E6F48]);
  v28 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for WidgetQuote();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DABD4C64();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v26 = v13;
  v19 = v7;
  v36 = 0;
  v20 = v28;
  *v16 = sub_1DACB9F54();
  v16[8] = v21 & 1;
  v35 = 1;
  *(v16 + 2) = sub_1DACB9F54();
  v16[24] = v22 & 1;
  v34 = 2;
  *(v16 + 4) = sub_1DACB9F54();
  v16[40] = v23 & 1;
  v33 = 3;
  *(v16 + 6) = sub_1DACB9F34();
  *(v16 + 7) = v24;
  v31 = 4;
  sub_1DABC5A78();
  sub_1DACB9FE4();
  v16[64] = v32;
  sub_1DACB7CC4();
  v30 = 5;
  sub_1DAA5D520(&qword_1EE123A38);
  sub_1DACB9F84();
  (*(v9 + 8))(v12, v20);
  sub_1DABD4334(v19, &v16[*(v26 + 36)]);
  sub_1DAA89C00(v16, v27, type metadata accessor for WidgetQuote);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1DAA88DD8(v16, type metadata accessor for WidgetQuote);
}

unint64_t sub_1DABD4C64()
{
  result = qword_1ECBE89B0;
  if (!qword_1ECBE89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89B0);
  }

  return result;
}

void sub_1DABD4CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABD4C64();
    v7 = a3(a1, &type metadata for WidgetQuote.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABD4D58()
{
  result = qword_1ECBE89C0;
  if (!qword_1ECBE89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89C0);
  }

  return result;
}

unint64_t sub_1DABD4DB0()
{
  result = qword_1ECBE89C8;
  if (!qword_1ECBE89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89C8);
  }

  return result;
}

unint64_t sub_1DABD4E08()
{
  result = qword_1ECBE89D0;
  if (!qword_1ECBE89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89D0);
  }

  return result;
}

uint64_t sub_1DABD4E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACE1AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DABD5074(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DABD509C, 0, 0);
}

uint64_t sub_1DABD509C()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = (*(*(v0 + 40) + 8))(*(v0 + 24), *(v0 + 80), *(v0 + 32));
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DABD515C;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DABD515C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DAB873F0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1DABD5290()
{
  v1 = *v0;
  v2 = 0x73756C507377656ELL;
  v3 = 0x6574726143616C61;
  if (v1 != 4)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0x6F69647561;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABD5348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD83D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD5370(uint64_t a1)
{
  v2 = sub_1DABD77F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD53AC(uint64_t a1)
{
  v2 = sub_1DABD77F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexiblePaywall.encode(to:)(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123C18, sub_1DABD77F0, &type metadata for FlexiblePaywall.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v46 = v1[5];
  v47 = v12;
  v13 = v1[6];
  v44 = v1[7];
  v45 = v13;
  v14 = v1[8];
  v42 = v1[9];
  v43 = v14;
  v15 = v1[10];
  v40 = v1[11];
  v41 = v15;
  v16 = v1[13];
  v36 = v1[12];
  v37 = v16;
  v17 = v1[15];
  v38 = v1[14];
  v39 = v17;
  v18 = v1[17];
  v32 = v1[16];
  v33 = v18;
  v19 = v1[19];
  v34 = v1[18];
  v35 = v19;
  v31 = v1[20];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7844(v8);
  sub_1DABD77F0();
  sub_1DACBA304();
  v51 = v8;
  v52 = v9;
  v21 = v48;
  v53 = v10;
  v54 = v11;
  v22 = v7;
  v55 = 0;
  sub_1DABD78AC();
  v23 = v50;
  sub_1DACBA074();
  if (v23)
  {
    sub_1DABD7900(v51);
    return (*(v49 + 8))(v7, v21);
  }

  else
  {
    v25 = v40;
    v26 = v41;
    v28 = v42;
    v27 = v43;
    v29 = v49;
    sub_1DABD7900(v51);
    v51 = v47;
    v52 = v46;
    v53 = v45;
    v54 = v44;
    v55 = 1;
    sub_1DABD7844(v47);
    sub_1DACBA074();
    sub_1DABD7900(v51);
    v51 = v27;
    v52 = v28;
    v53 = v26;
    v54 = v25;
    v55 = 2;
    sub_1DABD7844(v27);
    sub_1DACBA074();
    sub_1DABD7900(v51);
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v54 = v39;
    v55 = 3;
    sub_1DABD7844(v36);
    sub_1DACBA074();
    sub_1DABD7900(v51);
    v51 = v32;
    v52 = v33;
    v53 = v34;
    v54 = v35;
    v55 = 4;
    sub_1DABD7844(v32);
    sub_1DACBA074();
    sub_1DABD7900(v51);
    v51 = v31;
    v55 = 5;
    sub_1DABD7964();
    sub_1DABD7A18(&qword_1EE123FF8, sub_1DAA96B08);
    sub_1DACBA074();
    return (*(v29 + 8))(v22, v21);
  }
}

uint64_t FlexiblePaywall.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1DABD7DD4(0, &qword_1EE123CD8, sub_1DABD77F0, &type metadata for FlexiblePaywall.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DABD77F0();
  v47 = v9;
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v45 = v6;
  v12 = v46;
  LOBYTE(v49) = 0;
  sub_1DABD79C4();
  v13 = v5;
  sub_1DACB9F84();
  v14 = v60;
  *(&v44 + 1) = *(&v61 + 1);
  v15 = v61;
  LOBYTE(v49) = 1;
  sub_1DACB9F84();
  v41 = v14;
  v42 = v60;
  v43 = v61;
  *&v44 = v15;
  v40 = *(&v61 + 1);
  LOBYTE(v49) = 2;
  sub_1DACB9F84();
  v35 = v60;
  v36 = v61;
  LOBYTE(v49) = 3;
  sub_1DACB9F84();
  v33 = v60;
  v34 = v61;
  LOBYTE(v49) = 4;
  sub_1DACB9F84();
  v16 = v60;
  v38 = v61;
  v39 = *(&v60 + 1);
  v32 = *(&v61 + 1);
  sub_1DABD7964();
  v74 = 5;
  sub_1DABD7A18(&qword_1EE123FF0, sub_1DAB3D9FC);
  sub_1DACB9F84();
  v37 = v16;
  (*(v45 + 8))(v47, v13);
  v17 = v75;
  v19 = v40;
  v18 = v41;
  *&v49 = v41;
  *(&v49 + 1) = *(&v14 + 1);
  v20 = *(&v44 + 1);
  v50 = v44;
  v51 = v42;
  *&v52 = v43;
  *(&v52 + 1) = v40;
  v53 = v35;
  v54 = v36;
  v55 = v33;
  v56 = v34;
  *&v57 = v16;
  *(&v57 + 1) = v39;
  v21 = v38;
  *&v58 = v38;
  *(&v58 + 1) = v32;
  v59 = v75;
  v22 = v36;
  *(v12 + 64) = v35;
  *(v12 + 80) = v22;
  v23 = v55;
  v24 = v56;
  v25 = v57;
  v26 = v58;
  *(v12 + 160) = v17;
  *(v12 + 128) = v25;
  *(v12 + 144) = v26;
  *(v12 + 96) = v23;
  *(v12 + 112) = v24;
  v27 = v49;
  v28 = v50;
  v29 = v52;
  *(v12 + 32) = v51;
  *(v12 + 48) = v29;
  *v12 = v27;
  *(v12 + 16) = v28;
  sub_1DABD7A90(&v49, &v60);
  __swift_destroy_boxed_opaque_existential_1(v48);
  *&v60 = v18;
  *(&v60 + 1) = *(&v14 + 1);
  *&v61 = v44;
  *(&v61 + 1) = v20;
  v62 = v42;
  v63 = v43;
  v64 = v19;
  v65 = v35;
  v66 = v36;
  v67 = v33;
  v68 = v34;
  v69 = v37;
  v70 = v39;
  v71 = v21;
  v72 = v32;
  v73 = v17;
  return sub_1DAB3DCE4(&v60);
}

unint64_t sub_1DABD5E24()
{
  v1 = 0x53656C6369747261;
  *v0;
  if (*v0)
  {
    v1 = 0x48656C6369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DABD5EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD85D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD5EE0(uint64_t a1)
{
  v2 = sub_1DABD7AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD5F1C(uint64_t a1)
{
  v2 = sub_1DABD7AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD5F58(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123B88, sub_1DABD7AC8, &type metadata for FlexiblePaywallResourceByLocationConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7AC8();
  sub_1DACB71E4();
  sub_1DACBA304();
  v22 = v10;
  v21 = 0;
  sub_1DAA61590(0, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
  sub_1DABD7B70(&qword_1EE123F30, sub_1DABD7B1C);
  v13 = v20;
  sub_1DACBA074();
  if (v13)
  {
  }

  else
  {
    v14 = v18;

    v22 = v19;
    v21 = 1;
    sub_1DACBA074();
    v22 = v14;
    v21 = 2;
    sub_1DACBA074();
    v22 = v17;
    v21 = 3;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DABD6214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1DABD7DD4(0, &qword_1EE123C40, sub_1DABD7AC8, &type metadata for FlexiblePaywallResourceByLocationConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v22 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7AC8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v21 = a2;
  sub_1DAA61590(0, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
  v23 = 0;
  sub_1DABD7B70(&qword_1EE123F28, sub_1DABD7C00);
  v12 = v22;
  sub_1DACB9F84();
  v20 = v24;
  v23 = 1;
  sub_1DACB9F84();
  v19 = v24;
  v23 = 2;
  sub_1DACB9F84();
  v18 = v24;
  v23 = 3;
  sub_1DACB9F84();
  (*(v11 + 8))(v9, v12);
  v14 = v24;
  v15 = v21;
  v17 = v18;
  v16 = v19;
  *v21 = v20;
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v14;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD6614()
{
  v1 = 0x656372756F736572;
  v2 = 0x567377654E78616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7250646C756F6873;
  }

  if (*v0)
  {
    v1 = 0x567377654E6E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABD66B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD874C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD66E0(uint64_t a1)
{
  v2 = sub_1DABD7D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD671C(uint64_t a1)
{
  v2 = sub_1DABD7D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABD6758(void *a1)
{
  sub_1DABD7DD4(0, &qword_1EE123BE0, sub_1DABD7D80, &type metadata for FlexiblePaywallResource.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v17 = *(v1 + 48);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7D80();
  sub_1DACBA304();
  v21 = 0;
  v14 = v16[5];
  sub_1DACBA094();
  if (!v14)
  {
    v20 = 1;
    sub_1DACBA024();
    v19 = 2;
    sub_1DACBA024();
    v18 = 3;
    sub_1DACBA034();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DABD6950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1DABD7DD4(0, &qword_1EE123C98, sub_1DABD7D80, &type metadata for FlexiblePaywallResource.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD7D80();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v29;
  v33 = 0;
  v13 = sub_1DACB9FA4();
  v28 = v14;
  v32 = 1;
  v15 = sub_1DACB9F34();
  v27 = v16;
  v25 = v15;
  v31 = 2;
  v24 = sub_1DACB9F34();
  v26 = v17;
  v30 = 3;
  v19 = sub_1DACB9F44();
  (*(v11 + 8))(v9, v5);
  v21 = v27;
  v20 = v28;
  *v12 = v13;
  *(v12 + 8) = v20;
  v22 = v24;
  *(v12 + 16) = v25;
  *(v12 + 24) = v21;
  v23 = v26;
  *(v12 + 32) = v22;
  *(v12 + 40) = v23;
  *(v12 + 48) = v19;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABD6C94(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  if (v4)
  {
    if (!v8 || (sub_1DAC37F9C(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10 || (sub_1DAC37F9C(v6, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (sub_1DAC37F9C(v5, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v7)
  {
    if (v11 && (sub_1DAC37F9C(v7, v11) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10StocksCore15FlexiblePaywallV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v78 = a1[4];
  v79 = a1[5];
  v80 = a1[6];
  v81 = a1[7];
  v74 = a1[8];
  v75 = a1[9];
  v7 = a1[10];
  v6 = a1[11];
  v9 = a1[12];
  v8 = a1[13];
  v11 = a1[14];
  v10 = a1[15];
  v13 = a1[16];
  v12 = a1[17];
  v68 = a1[18];
  v69 = a1[19];
  v14 = a1[20];
  v16 = *a2;
  v15 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v19 = a2[5];
  v76 = a2[4];
  v20 = a2[6];
  v77 = a2[7];
  v70 = a2[8];
  v71 = a2[9];
  v72 = a2[10];
  v21 = a2[12];
  v73 = a2[11];
  v23 = a2[13];
  v22 = a2[14];
  v24 = a2[15];
  v25 = a2[16];
  v27 = a2[17];
  v26 = a2[18];
  v29 = a2[19];
  v28 = a2[20];
  if (v2 == 1)
  {
    v66 = v7;
    v67 = v6;
    v58 = a2[12];
    v59 = a2[13];
    v60 = a2[14];
    v61 = a2[15];
    v62 = v9;
    v63 = v8;
    v64 = v11;
    v65 = v10;
    v52 = a2[16];
    v53 = a2[17];
    v54 = a2[18];
    v55 = a2[19];
    v50 = a2[20];
    v51 = v14;
    v56 = v13;
    v57 = v12;
    sub_1DABD7844(1);
    if (v16 == 1)
    {
      sub_1DABD7844(1);
      sub_1DABD7900(1);
      goto LABEL_10;
    }

    sub_1DABD7844(v16);
LABEL_7:
    v89 = v2;
    v90 = v3;
    v91 = v5;
    v92 = v4;
    v93 = v16;
    v94 = v15;
    v95 = v18;
LABEL_8:
    v96 = v17;
LABEL_26:
    sub_1DABD88D0(&v89);
    return 0;
  }

  v89 = v2;
  v90 = v3;
  v91 = v5;
  v92 = v4;
  if (v16 == 1)
  {
    sub_1DABD7844(v2);
    sub_1DABD7844(1);
    sub_1DABD7844(v2);

    goto LABEL_7;
  }

  v66 = v7;
  v67 = v6;
  v58 = v21;
  v59 = v23;
  v60 = v22;
  v61 = v24;
  v62 = v9;
  v63 = v8;
  v64 = v11;
  v65 = v10;
  v52 = v25;
  v53 = v27;
  v54 = v26;
  v55 = v29;
  v50 = v28;
  v51 = v14;
  v56 = v13;
  v57 = v12;
  v85 = v16;
  v86 = v15;
  v87 = v18;
  v88 = v17;
  v48 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v2);
  sub_1DABD7844(v16);
  sub_1DABD7844(v2);

  sub_1DABD7900(v2);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v78 == 1)
  {
    v31 = v79;
    v30 = v80;
    v32 = v81;
    sub_1DABD7844(1);
    v33 = v76;
    if (v76 == 1)
    {
      sub_1DABD7844(1);
      sub_1DABD7900(1);
      goto LABEL_18;
    }

    v34 = v77;
    sub_1DABD7844(v76);
LABEL_16:
    v89 = v78;
    v90 = v31;
    v91 = v30;
    v92 = v32;
    v93 = v33;
    v94 = v19;
    v95 = v20;
    v96 = v34;
    goto LABEL_26;
  }

  v31 = v79;
  v30 = v80;
  v89 = v78;
  v90 = v79;
  v32 = v81;
  v91 = v80;
  v92 = v81;
  v33 = v76;
  if (v76 == 1)
  {
    sub_1DABD7844(v78);
    v34 = v77;
    sub_1DABD7844(1);
    sub_1DABD7844(v78);

    goto LABEL_16;
  }

  v85 = v76;
  v86 = v19;
  v87 = v20;
  v88 = v77;
  v49 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v78);
  sub_1DABD7844(v76);
  sub_1DABD7844(v78);

  sub_1DABD7900(v78);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (v74 == 1)
  {
    v35 = v75;
    v36 = v66;
    v37 = v67;
    sub_1DABD7844(1);
    v38 = v70;
    if (v70 == 1)
    {
      sub_1DABD7844(1);
      sub_1DABD7900(1);
      goto LABEL_30;
    }

    v40 = v71;
    v39 = v72;
    v41 = v73;
    sub_1DABD7844(v70);
LABEL_24:
    v89 = v74;
    goto LABEL_25;
  }

  v35 = v75;
  v89 = v74;
  v90 = v75;
  v37 = v67;
  v91 = v66;
  v92 = v67;
  v38 = v70;
  if (v70 == 1)
  {
    v36 = v66;
    sub_1DABD7844(v74);
    v40 = v71;
    v39 = v72;
    v41 = v73;
    sub_1DABD7844(1);
    sub_1DABD7844(v74);

    goto LABEL_24;
  }

  v85 = v70;
  v86 = v71;
  v87 = v72;
  v88 = v73;
  v82 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v74);
  sub_1DABD7844(v70);
  sub_1DABD7844(v74);

  sub_1DABD7900(v74);
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if (v62 == 1)
  {
    v35 = v63;
    v36 = v64;
    v37 = v65;
    sub_1DABD7844(1);
    if (v58 == 1)
    {
      sub_1DABD7844(1);
      sub_1DABD7900(1);
      goto LABEL_37;
    }

    v40 = v59;
    v39 = v60;
    v41 = v61;
    v38 = v58;
    sub_1DABD7844(v58);
    v89 = 1;
LABEL_25:
    v90 = v35;
    v91 = v36;
    v92 = v37;
    v93 = v38;
    v94 = v40;
    v95 = v39;
    v96 = v41;
    goto LABEL_26;
  }

  v35 = v63;
  v36 = v64;
  v89 = v62;
  v90 = v63;
  v37 = v65;
  v91 = v64;
  v92 = v65;
  if (v58 == 1)
  {
    v38 = 1;
    sub_1DABD7844(v62);
    v40 = v59;
    v39 = v60;
    v41 = v61;
    sub_1DABD7844(1);
    sub_1DABD7844(v62);

    v89 = v62;
    goto LABEL_25;
  }

  v85 = v58;
  v86 = v59;
  v87 = v60;
  v88 = v61;
  v83 = sub_1DABD6C94(&v89, &v85);
  sub_1DABD7844(v62);
  sub_1DABD7844(v58);
  sub_1DABD7844(v62);

  sub_1DABD7900(v62);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  if (v56 != 1)
  {
    v43 = v57;
    v89 = v56;
    v90 = v57;
    v91 = v68;
    v92 = v69;
    if (v52 != 1)
    {
      v85 = v52;
      v86 = v53;
      v87 = v54;
      v88 = v55;
      v84 = sub_1DABD6C94(&v89, &v85);
      sub_1DABD7844(v56);
      sub_1DABD7844(v52);
      sub_1DABD7844(v56);

      sub_1DABD7900(v56);
      if ((v84 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_45;
    }

    v44 = 1;
    sub_1DABD7844(v56);
    v46 = v53;
    v45 = v54;
    v17 = v55;
    sub_1DABD7844(1);
    sub_1DABD7844(v56);

    goto LABEL_43;
  }

  v43 = v57;
  sub_1DABD7844(1);
  v44 = v52;
  if (v52 != 1)
  {
    v46 = v53;
    v45 = v54;
    v17 = v55;
    sub_1DABD7844(v52);
LABEL_43:
    v89 = v56;
    v90 = v43;
    v91 = v68;
    v92 = v69;
    v93 = v44;
    v94 = v46;
    v95 = v45;
    goto LABEL_8;
  }

  sub_1DABD7844(1);
  sub_1DABD7900(1);
LABEL_45:
  if (v51)
  {
    if (v50)
    {
      sub_1DACB71E4();
      v47 = sub_1DABDB178(v51, v50);

      if (v47)
      {
        return 1;
      }
    }
  }

  else if (!v50)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DABD77F0()
{
  result = qword_1EE124EA8;
  if (!qword_1EE124EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EA8);
  }

  return result;
}

uint64_t sub_1DABD7844(uint64_t result)
{
  if (result != 1)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

unint64_t sub_1DABD78AC()
{
  result = qword_1EE1242D8;
  if (!qword_1EE1242D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242D8);
  }

  return result;
}

uint64_t sub_1DABD7900(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1DABD7964()
{
  if (!qword_1EE124000)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124000);
    }
  }
}

unint64_t sub_1DABD79C4()
{
  result = qword_1EE1242D0;
  if (!qword_1EE1242D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242D0);
  }

  return result;
}

uint64_t sub_1DABD7A18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DABD7964();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD7AC8()
{
  result = qword_1EE1242F0;
  if (!qword_1EE1242F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242F0);
  }

  return result;
}

unint64_t sub_1DABD7B1C()
{
  result = qword_1EE1247D0;
  if (!qword_1EE1247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247D0);
  }

  return result;
}

uint64_t sub_1DABD7B70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61590(255, &qword_1EE123F38, &type metadata for FlexiblePaywallResource, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD7C00()
{
  result = qword_1EE1247C8;
  if (!qword_1EE1247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247C8);
  }

  return result;
}

uint64_t sub_1DABD7C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_1DABD7D80()
{
  result = qword_1EE1247E8;
  if (!qword_1EE1247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247E8);
  }

  return result;
}

void sub_1DABD7DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1DABD7E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t sub_1DABD7F04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DABD7F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DABD7FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DABD8028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DABD80BC()
{
  result = qword_1ECBE89D8;
  if (!qword_1ECBE89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89D8);
  }

  return result;
}

unint64_t sub_1DABD8114()
{
  result = qword_1ECBE89E0;
  if (!qword_1ECBE89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89E0);
  }

  return result;
}

unint64_t sub_1DABD816C()
{
  result = qword_1ECBE89E8;
  if (!qword_1ECBE89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE89E8);
  }

  return result;
}

unint64_t sub_1DABD81C4()
{
  result = qword_1EE1247D8;
  if (!qword_1EE1247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247D8);
  }

  return result;
}

unint64_t sub_1DABD821C()
{
  result = qword_1EE1247E0;
  if (!qword_1EE1247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247E0);
  }

  return result;
}

unint64_t sub_1DABD8274()
{
  result = qword_1EE1242E0;
  if (!qword_1EE1242E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242E0);
  }

  return result;
}

unint64_t sub_1DABD82CC()
{
  result = qword_1EE1242E8;
  if (!qword_1EE1242E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1242E8);
  }

  return result;
}

unint64_t sub_1DABD8324()
{
  result = qword_1EE124E98;
  if (!qword_1EE124E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E98);
  }

  return result;
}

unint64_t sub_1DABD837C()
{
  result = qword_1EE124EA0;
  if (!qword_1EE124EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EA0);
  }

  return result;
}

uint64_t sub_1DABD83D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73756C507377656ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACECB80 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACECBA0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574726143616C61 && a2 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACECBC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DABD85D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53656C6369747261 && a2 == 0xEB0000000074666FLL;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48656C6369747261 && a2 == 0xEB00000000647261 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACECBE0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACECC00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABD874C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646C756F6873 && a2 == 0xED00006D72617765)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABD88D0(uint64_t a1)
{
  sub_1DABD892C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DABD892C()
{
  if (!qword_1ECBE89F0)
  {
    sub_1DAA61590(255, &unk_1EE126798, &type metadata for FlexiblePaywallResourceByLocationConfig, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE89F0);
    }
  }
}

uint64_t sub_1DABD89B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DABD8A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DABD8A64(void *a1)
{
  v3 = v1;
  sub_1DABDA220(0, &qword_1ECBE8A18, sub_1DABDA1CC, &type metadata for SDSCurrencyResponse.CurrencyItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABDA1CC();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v24 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v23 = 1;
    sub_1DACBA094();
    v16 = v3[4];
    v22 = 2;
    sub_1DACBA0B4();
    v17 = v3[5];
    v18 = v3[6];
    v21 = 3;
    sub_1DACBA094();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABD8C30(void *a1)
{
  v3 = v1;
  sub_1DABDA220(0, &qword_1ECBE89F8, sub_1DABD9DD4, &type metadata for SDSCurrencyResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD9DD4();
  sub_1DACBA304();
  *&v18[0] = *v3;
  v20 = 0;
  sub_1DABD9E28();
  sub_1DABD9F34(&qword_1ECBE8A00, sub_1DABD9FA0);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    LOBYTE(v18[0]) = 1;
    sub_1DACBA094();
    v15 = *(v3 + 24);
    v16 = *(v3 + 32);
    LOBYTE(v18[0]) = 2;
    sub_1DACBA094();
    v17 = *(v3 + 56);
    v18[0] = *(v3 + 40);
    v18[1] = v17;
    v19 = *(v3 + 72);
    v20 = 3;
    sub_1DAA6EF04();
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DABD8E80()
{
  v1 = 0x6563697270;
  if (*v0 != 2)
  {
    v1 = 0x6D617473656D6974;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DABD8EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD93C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD8F1C(uint64_t a1)
{
  v2 = sub_1DABDA1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD8F58(uint64_t a1)
{
  v2 = sub_1DABDA1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DABD8F94@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABD9534(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DABD8FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1DACBA174();
    result = 0;
    if ((v13 & 1) == 0 || v4 != v9)
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t sub_1DABD9120()
{
  v1 = 0x79636E6572727563;
  v2 = 0x7243656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x646174654D736473;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABD91C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABD9820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABD91E8(uint64_t a1)
{
  v2 = sub_1DABD9DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABD9224(uint64_t a1)
{
  v2 = sub_1DABD9DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DABD9260@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABD99A0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_1DABD92C4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v17[0] = *(a1 + 40);
  v17[1] = v7;
  v18 = *(a1 + 72);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  v20 = *(a2 + 72);
  v19[0] = v13;
  v19[1] = v14;
  return (sub_1DAC37210(v2, v8) & 1) != 0 && (v3 == v9 && v5 == v11 || (sub_1DACBA174() & 1) != 0) && (v4 == v10 && v6 == v12 || (sub_1DACBA174() & 1) != 0) && sub_1DAC3C194(v17, v19);
}

uint64_t sub_1DABD93C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79636E6572727563 && a2 == 0xEC0000006D6F7246;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEA00000000006F54 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABD9534@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  sub_1DABDA220(0, &qword_1EE11CF78, sub_1DABDA1CC, &type metadata for SDSCurrencyResponse.CurrencyItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABDA1CC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v29;
  v33 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v28 = v13;
  v32 = 1;
  v26 = sub_1DACB9FA4();
  v27 = v16;
  v31 = 2;
  sub_1DACB9FC4();
  v18 = v17;
  v30 = 3;
  v19 = sub_1DACB9FA4();
  v21 = v20;
  v22 = v19;
  (*(v11 + 8))(v9, v5);
  sub_1DACB71E4();
  v23 = v27;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);

  *v12 = v28;
  v12[1] = v15;
  v12[2] = v26;
  v12[3] = v23;
  v12[4] = v18;
  v12[5] = v22;
  v12[6] = v21;
  return result;
}

uint64_t sub_1DABD9820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6572727563 && a2 == 0xED0000736D657449;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7243656372756F73 && a2 == 0xEF74416465746165 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646174654D736473 && a2 == 0xEB00000000617461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DABD99A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DABDA220(0, &qword_1EE11CF80, sub_1DABD9DD4, &type metadata for SDSCurrencyResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABD9DD4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  sub_1DABD9E28();
  LOBYTE(v33) = 0;
  sub_1DABD9F34(&qword_1EE11D158, sub_1DABD9E78);
  v12 = v32;
  sub_1DACB9FE4();
  v13 = v38[0];
  LOBYTE(v38[0]) = 1;
  v14 = sub_1DACB9FA4();
  v31 = v15;
  v29 = v14;
  LOBYTE(v38[0]) = 2;
  v28 = sub_1DACB9FA4();
  v30 = v16;
  v42 = 3;
  sub_1DAA6EEB0();
  sub_1DACB9FE4();
  (*(v11 + 8))(v9, v12);
  v32 = v39;
  v26 = *(&v40 + 1);
  v27 = v40;
  v17 = *(&v41 + 1);
  v25 = v41;
  *&v33 = v13;
  v18 = v29;
  *(&v33 + 1) = v29;
  v19 = v31;
  *&v34 = v31;
  v20 = v28;
  *(&v34 + 1) = v28;
  v21 = v30;
  *&v35 = v30;
  *(&v35 + 1) = v39;
  v36 = v40;
  v37 = v41;
  sub_1DABD9ECC(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v13;
  v38[1] = v18;
  v38[2] = v19;
  v38[3] = v20;
  v38[4] = v21;
  v38[5] = v32;
  v38[6] = v27;
  v38[7] = v26;
  v38[8] = v25;
  v38[9] = v17;
  result = sub_1DABD9F04(v38);
  v23 = v36;
  a2[2] = v35;
  a2[3] = v23;
  a2[4] = v37;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  return result;
}

unint64_t sub_1DABD9DD4()
{
  result = qword_1EE11E6A8;
  if (!qword_1EE11E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6A8);
  }

  return result;
}

void sub_1DABD9E28()
{
  if (!qword_1EE11D160)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D160);
    }
  }
}

unint64_t sub_1DABD9E78()
{
  result = qword_1EE11E678;
  if (!qword_1EE11E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E678);
  }

  return result;
}

uint64_t sub_1DABD9F34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DABD9E28();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DABD9FA0()
{
  result = qword_1ECBE8A08;
  if (!qword_1ECBE8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A08);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DABDA020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DABDA068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DABDA0C8()
{
  result = qword_1ECBE8A10;
  if (!qword_1ECBE8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A10);
  }

  return result;
}

unint64_t sub_1DABDA120()
{
  result = qword_1EE11E698;
  if (!qword_1EE11E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E698);
  }

  return result;
}

unint64_t sub_1DABDA178()
{
  result = qword_1EE11E6A0;
  if (!qword_1EE11E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6A0);
  }

  return result;
}

unint64_t sub_1DABDA1CC()
{
  result = qword_1EE11E690;
  if (!qword_1EE11E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E690);
  }

  return result;
}

void sub_1DABDA220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DABDA29C()
{
  result = qword_1ECBE8A20;
  if (!qword_1ECBE8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A20);
  }

  return result;
}

unint64_t sub_1DABDA2F4()
{
  result = qword_1EE11E680;
  if (!qword_1EE11E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E680);
  }

  return result;
}

unint64_t sub_1DABDA34C()
{
  result = qword_1EE11E688;
  if (!qword_1EE11E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E688);
  }

  return result;
}

uint64_t sub_1DABDA3A0()
{
  sub_1DAA8EE80();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABDA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(a10 + 16))(a6, a7, a8, 0, a9);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A64();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DABDA558(uint64_t a1, void (*a2)(void *))
{
  if (qword_1EE11EDA0 != -1)
  {
    swift_once();
  }

  v4[0] = qword_1EE11EDA8;
  v4[1] = *algn_1EE11EDB0;
  sub_1DACB71E4();
  sub_1DACB71E4();
  a2(v4);
}

uint64_t sub_1DABDA600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      sub_1DACB71E4();
      if (v7 >= v6 >> 1)
      {
        sub_1DAA5859C((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 17;
      --v1;
    }

    while (v1);
  }

  v9 = sub_1DABDA3A0();

  return v9;
}

void sub_1DABDA70C(void *a1@<X8>)
{
  sub_1DACB9904();
  sub_1DAA41D64();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v3 = sub_1DACB9AD4();
  sub_1DACB8C64();

  *a1 = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1DABDA840(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v5 = *(v2 + 136);
  v16 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v15 = v2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v12 = v16;
          v2 = v15;
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v7 + 32);
        sub_1DACB71F4();
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        v8 = *(v16 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      ++v7;
      if (v2 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v13 = *(v2 + 136);
  *(v2 + 136) = v12;

  return sub_1DACB8154();
}

uint64_t sub_1DABDA9DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v5 = *(v2 + 144);
  v16 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v15 = v2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v12 = v16;
          v2 = v15;
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v7 + 32);
        sub_1DACB71F4();
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        v8 = *(v16 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      ++v7;
      if (v2 == v6)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v13 = *(v2 + 144);
  *(v2 + 144) = v12;

  return sub_1DACB8154();
}

uint64_t sub_1DABDAB78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  v3 = v0[19];

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDAC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB88D4();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v62 - v9;
  sub_1DAA8A968(0, &qword_1EE11FBE8, &qword_1EE11FBF0, MEMORY[0x1E69D6A58]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v67 = (&v62 - v14);
  v68 = v15;
  v66 = a2;
  v16 = 0;
  v63 = a1;
  v17 = *(a1 + 64);
  v62 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v69 = v73 + 16;
  v70 = (v73 + 32);
  v64 = v8;
  v65 = (v73 + 8);
  v22 = &qword_1EE11FBF0;
  while (v20)
  {
    v71 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v63 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v72;
    v31 = v73;
    (*(v73 + 16))(v72, *(v63 + 56) + *(v73 + 72) * v23, v4);
    sub_1DAA8A9C0(0, v22, MEMORY[0x1E69D6A58]);
    v34 = v33;
    v35 = *(v33 + 48);
    v36 = v68;
    *v68 = v29;
    *(v36 + 1) = v30;
    v37 = *(v31 + 32);
    v38 = v36;
    v37(&v36[v35], v32, v4);
    (*(*(v34 - 8) + 56))(v38, 0, 1, v34);
    sub_1DACB71E4();
LABEL_17:
    v39 = MEMORY[0x1E69D6A58];
    v40 = v38;
    v41 = v67;
    sub_1DAA93038(v40, v67, &qword_1EE11FBE8, v22, MEMORY[0x1E69D6A58]);
    v42 = v22;
    sub_1DAA8A9C0(0, v22, v39);
    v43 = (*(*(v34 - 8) + 48))(v41, 1, v34);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v34 + 48);
    v46 = v41;
    v47 = *v41;
    v48 = v41[1];
    v49 = v64;
    (*v70)(v64, v46 + v45, v4);
    v50 = v47;
    v51 = v66;
    v52 = sub_1DAA4BF3C(v50, v48);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      (*v65)(v49, v4);
      return 0;
    }

    v55 = v73;
    v56 = *(v51 + 56) + *(v73 + 72) * v52;
    v57 = v72;
    (*(v73 + 16))(v72, v56, v4);
    sub_1DAA8AD7C(&qword_1EE11FF78, MEMORY[0x1E69D6A58]);
    v58 = sub_1DACB9264();
    v59 = *(v55 + 8);
    v59(v57, v4);
    result = (v59)(v49, v4);
    v22 = v42;
    v20 = v71;
    if ((v58 & 1) == 0)
    {
      return v44;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      sub_1DAA8A9C0(0, v22, MEMORY[0x1E69D6A58]);
      v34 = v60;
      v61 = v68;
      (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
      v71 = 0;
      v16 = v25;
      v38 = v61;
      goto LABEL_17;
    }

    v27 = *(v62 + 8 * v26);
    ++v16;
    if (v27)
    {
      v71 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABDB178(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v3 + 56) + 168 * v10;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v69 = *v18;
      v70 = v20;
      v71 = v19;
      v21 = *(v18 + 96);
      v23 = *(v18 + 48);
      v22 = *(v18 + 64);
      v74 = *(v18 + 80);
      v75 = v21;
      v72 = v23;
      v73 = v22;
      v25 = *(v18 + 128);
      v24 = *(v18 + 144);
      v26 = *(v18 + 112);
      v79 = *(v18 + 160);
      v77 = v25;
      v78 = v24;
      v76 = v26;
      v27 = *(v18 + 144);
      v88 = *(v18 + 128);
      v89 = v27;
      v90 = *(v18 + 160);
      v28 = *(v18 + 80);
      v84 = *(v18 + 64);
      v85 = v28;
      v29 = *(v18 + 112);
      v86 = *(v18 + 96);
      v87 = v29;
      v30 = *(v18 + 16);
      v80 = *v18;
      v81 = v30;
      v31 = *(v18 + 48);
      v82 = *(v18 + 32);
      v83 = v31;
      v91 = v16;
      v92 = v17;
      v95 = v82;
      v96 = v31;
      v93 = v80;
      v94 = v30;
      v97 = v84;
      v98 = v85;
      v103 = v90;
      v101 = v88;
      v102 = v89;
      v99 = v86;
      v100 = v87;
      nullsub_1(&v91);
      sub_1DACB71E4();
      sub_1DABD7A90(&v69, v67);
      v32 = v91;
      v33 = v92;
      v112 = v101;
      v113 = v102;
      v114 = v103;
      v108 = v97;
      v109 = v98;
      v110 = v99;
      v111 = v100;
      v104 = v93;
      v105 = v94;
      v35 = v95;
      v34 = v96;
      v12 = v4;
LABEL_16:
      v106 = v35;
      v107 = v34;
      v101 = v112;
      v102 = v113;
      v103 = v114;
      v97 = v108;
      v98 = v109;
      v99 = v110;
      v100 = v111;
      v93 = v104;
      v94 = v105;
      v95 = v35;
      v96 = v34;
      v91 = v32;
      v92 = v33;
      result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v91);
      if (result == 1)
      {
        break;
      }

      v88 = v112;
      v89 = v113;
      v90 = v114;
      v84 = v108;
      v85 = v109;
      v86 = v110;
      v87 = v111;
      v80 = v104;
      v81 = v105;
      v82 = v106;
      v83 = v107;
      v36 = sub_1DAA4BF3C(v32, v33);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        v77 = v112;
        v78 = v113;
        v79 = v114;
        v73 = v108;
        v74 = v109;
        v75 = v110;
        v76 = v111;
        v69 = v104;
        v70 = v105;
        v71 = v106;
        v72 = v107;
        sub_1DAB3DCE4(&v69);
        return 0;
      }

      v39 = *(a2 + 56) + 168 * v36;
      v41 = *(v39 + 16);
      v40 = *(v39 + 32);
      v65[0] = *v39;
      v65[1] = v41;
      v65[2] = v40;
      v42 = *(v39 + 96);
      v44 = *(v39 + 48);
      v43 = *(v39 + 64);
      v65[5] = *(v39 + 80);
      v65[6] = v42;
      v65[3] = v44;
      v65[4] = v43;
      v46 = *(v39 + 128);
      v45 = *(v39 + 144);
      v47 = *(v39 + 112);
      v66 = *(v39 + 160);
      v65[8] = v46;
      v65[9] = v45;
      v65[7] = v47;
      v48 = *(v39 + 144);
      v62 = *(v39 + 128);
      v63 = v48;
      v64 = *(v39 + 160);
      v49 = *(v39 + 80);
      v58 = *(v39 + 64);
      v59 = v49;
      v50 = *(v39 + 112);
      v60 = *(v39 + 96);
      v61 = v50;
      v51 = *(v39 + 16);
      v54 = *v39;
      v55 = v51;
      v52 = *(v39 + 48);
      v56 = *(v39 + 32);
      v57 = v52;
      sub_1DABD7A90(v65, &v69);
      v53 = static FlexiblePaywall.== infix(_:_:)(&v54, &v80);
      v67[8] = v62;
      v67[9] = v63;
      v68 = v64;
      v67[4] = v58;
      v67[5] = v59;
      v67[6] = v60;
      v67[7] = v61;
      v67[0] = v54;
      v67[1] = v55;
      v67[2] = v56;
      v67[3] = v57;
      sub_1DAB3DCE4(v67);
      v77 = v88;
      v78 = v89;
      v79 = v90;
      v73 = v84;
      v74 = v85;
      v75 = v86;
      v76 = v87;
      v69 = v80;
      v70 = v81;
      v71 = v82;
      v72 = v83;
      result = sub_1DAB3DCE4(&v69);
      if ((v53 & 1) == 0)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_1DABDB628(&v91);
        v7 = 0;
        v114 = v103;
        v32 = v91;
        v33 = v92;
        v112 = v101;
        v113 = v102;
        v108 = v97;
        v109 = v98;
        v110 = v99;
        v111 = v100;
        v104 = v93;
        v105 = v94;
        v35 = v95;
        v34 = v96;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_1DABDB628(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
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

void sub_1DABDB680(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v4 = v23[0];
  v25 = v23[0];
  sub_1DABDB980();
  sub_1DACB7874();
  if (v24 != 2)
  {
    if (v24 == 11)
    {

      return;
    }

    goto LABEL_16;
  }

  v21 = v4;
  v5 = sub_1DACB7894();
  v6 = *MEMORY[0x1E695B798];
  v7 = sub_1DACB9324();
  if (!*(v5 + 16))
  {

    goto LABEL_15;
  }

  v9 = sub_1DAA4BF3C(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1DAA7C694(*(v5 + 56) + 32 * v9, v23);

  sub_1DABDB9D8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v12 = v22;
  v13 = [v22 allValues];
  v14 = sub_1DACB9644();

  v15 = v14 + 32;
  v16 = -*(v14 + 16);
  v17 = -1;
  while (1)
  {
    if (v16 + v17 == -1)
    {
LABEL_13:

      return;
    }

    if (++v17 >= *(v14 + 16))
    {
      break;
    }

    sub_1DAA7C694(v15, v23);
    sub_1DAA7C694(v23, &v21);
    sub_1DABDBA24();
    if (!swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_1(v23);
      return;
    }

    v15 += 32;
    v18 = v22;
    swift_getErrorValue();
    v19 = sub_1DABDB680(v20[2]);

    __swift_destroy_boxed_opaque_existential_1(v23);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1DABDB980()
{
  result = qword_1EE11D218;
  if (!qword_1EE11D218)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D218);
  }

  return result;
}

unint64_t sub_1DABDB9D8()
{
  result = qword_1ECBE8A28;
  if (!qword_1ECBE8A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBE8A28);
  }

  return result;
}

unint64_t sub_1DABDBA24()
{
  result = qword_1EE123B10;
  if (!qword_1EE123B10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123B10);
  }

  return result;
}

uint64_t sub_1DABDBAD0(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_1DACB6FC4();
}

uint64_t sub_1DABDBB10()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE8A30);
  __swift_project_value_buffer(v9, qword_1ECBE8A30);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DABDBD28()
{
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE8A48);
  __swift_project_value_buffer(v15, qword_1ECBE8A48);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DABDC054()
{
  sub_1DABDD7EC(0, &qword_1ECBE8A60, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABDD7EC(0, &qword_1ECBE8A68, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAB1FA2C();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABDC288();
  sub_1DACB7234();

  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABDC338();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

void sub_1DABDC288()
{
  if (!qword_1ECBE8A70)
  {
    sub_1DAB2AF6C();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8A70);
    }
  }
}

uint64_t sub_1DABDC30C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

void sub_1DABDC338()
{
  if (!qword_1ECBE8A78)
  {
    sub_1DABDD7EC(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8A78);
    }
  }
}

uint64_t sub_1DABDC3D0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SymbolEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1DAAA2C80(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_1DAAA2C80(v10, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v10);
}

uint64_t sub_1DABDC4CC(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  sub_1DAAA2C80(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DABDC55C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t (*sub_1DABDC5D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABDC668(uint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DABDC6AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DABDC744@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v67 = sub_1DACB7274();
  v70 = *(v67 - 8);
  v1 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6AA44(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v50 - v7;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = v50 - v10;
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = v50 - v13;
  v14 = sub_1DACB78E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB7E44();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1DACB92E4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1DACB7904();
  v61 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v50[1] = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB2AF6C();
  v57 = v27;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = *(v15 + 104);
  v54 = *MEMORY[0x1E6968DF0];
  v28 = v54;
  v55 = v14;
  v29(v18, v54, v14);
  v53 = v29;
  v56 = v15 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29(v18, v28, v14);
  v30 = v69;
  sub_1DACB7914();
  v31 = *(v24 + 56);
  v60 = v24 + 56;
  v62 = v31;
  v31(v30, 0, 1, v23);
  v32 = type metadata accessor for SymbolEntity();
  (*(*(v32 - 8) + 56))(v63, 1, 1, v32);
  v33 = sub_1DACB6E84();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v51 = v35;
  v52 = v34 + 56;
  v36 = v64;
  v35(v64, 1, 1, v33);
  v35(v65, 1, 1, v33);
  *&v71 = sub_1DAB1CC4C();
  *(&v71 + 1) = v37;
  *&v72 = v38;
  *(&v72 + 1) = v39;
  v58 = *MEMORY[0x1E695A500];
  v40 = *(v70 + 104);
  v70 += 104;
  v59 = v40;
  v40(v66);
  sub_1DAAF59D0();
  *v68 = sub_1DACB7004();
  sub_1DABDD7EC(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v63 = v41;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v42 = v54;
  v43 = v55;
  v44 = v53;
  v53(v18, v54, v55);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v44(v18, v42, v43);
  v45 = v69;
  sub_1DACB7914();
  v62(v45, 0, 1, v61);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v46 = v51;
  v51(v36, 1, 1, v33);
  v46(v65, 1, 1, v33);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  sub_1DACB6D94();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  sub_1DACB6D84();
  *&v71 = sub_1DACB6D54();
  v59(v66, v58, v67);
  sub_1DAAF4218();
  sub_1DAADA468();
  v47 = sub_1DACB6FF4();
  v48 = v68;
  v68[1] = v47;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v48[2] = result;
  return result;
}

uint64_t sub_1DABDD02C(uint64_t a1)
{
  *(v2 + 128) = a1;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABDD0E8, 0, 0);
}

uint64_t sub_1DABDD0E8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_1DACB6D24();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v2;
  v0[9] = v1;
  v6 = *(v5 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1DABDD264;

  return (v10)(v0 + 7, v4, v5);
}

uint64_t sub_1DABDD264()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  v2[22] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v4 = sub_1DAB2C368;
  }

  else
  {
    v4 = sub_1DABDD384;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABDD384()
{
  v16 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  sub_1DACB6FB4();
  v5 = type metadata accessor for SymbolEntity();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_1DAAF42EC(&v14, v3, &v12);
  v6 = v13;
  *(v0 + 104) = v12;
  *(v0 + 120) = v6;
  sub_1DAAF3184();
  sub_1DACB6E94();
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DABDD4C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE8A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABDD574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABDD02C(a1);
}

uint64_t sub_1DABDD610(uint64_t a1)
{
  v2 = sub_1DAB1FA2C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DABDD650()
{
  result = qword_1EE11DD28;
  if (!qword_1EE11DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD28);
  }

  return result;
}

unint64_t sub_1DABDD6A8()
{
  result = qword_1EE11DD38;
  if (!qword_1EE11DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD38);
  }

  return result;
}

unint64_t sub_1DABDD75C()
{
  result = qword_1ECBE8A80;
  if (!qword_1ECBE8A80)
  {
    sub_1DABDD7EC(255, &qword_1ECBE8A88, sub_1DAB1FA2C, &type metadata for AddSymbolToWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8A80);
  }

  return result;
}

void sub_1DABDD7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DABDD854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABDD884(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4A0F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_1DAA4E108(v7, v13 + v14);
  return swift_endAccess();
}

uint64_t sub_1DABDDA10(uint64_t a1)
{
  sub_1DAA4A0F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7AB4();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_1DAA4E108(v6, v1 + v9);
  return swift_endAccess();
}

void (*sub_1DABDDB30(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1DAA4A0F8();
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  v9 = sub_1DACB7AB4();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_1DAA4DA94(v11);
  return sub_1DABDDC44;
}

void sub_1DABDDC44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
    swift_beginAccess();
    sub_1DAA4E108(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
    swift_beginAccess();
    sub_1DAA4E108(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1DABDDDF0()
{
  v1 = *(v0 + 24);

  sub_1DAA4DDD0(v0 + OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL);
  v2 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v3 = sub_1DACB8034();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_1DABDDE78()
{
  v1 = *(v0 + 3);

  sub_1DAA4DDD0(&v0[OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL]);
  v2 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v3 = sub_1DACB8034();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1DACB9364();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7BE4();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v79 = *(v10 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA53064(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v74 - v16;
  v18 = sub_1DACB7AB4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB7454();
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  v78 = v23;
  v86 = a1;
  sub_1DACB7494();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_1DAA92910(v17, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
LABEL_11:
    a1 = v86;
LABEL_12:
    sub_1DACB9904();
    sub_1DAA53064(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1DACC1D20;
    v52 = sub_1DACB74D4();
    sub_1DABDEF34(&qword_1ECBE8A90, MEMORY[0x1E6967EC8]);
    v53 = sub_1DACBA114();
    v55 = v54;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1DAA443C8();
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    sub_1DAA41DCC();
    v56 = sub_1DACB9AD4();
    sub_1DACB8C64();

    return (*(*(v52 - 8) + 16))(v87, a1, v52);
  }

  (*(v19 + 32))(v22, v17, v18);
  v26 = sub_1DACB7A64();
  if (!v27)
  {
    (*(v19 + 8))(v22, v18);
LABEL_10:

    goto LABEL_11;
  }

  v28 = v26;
  v29 = v27;
  v30 = sub_1DACB7A84();
  if (!v31)
  {
    (*(v19 + 8))(v22, v18);

    goto LABEL_10;
  }

  v76 = v31;
  v77 = v19;
  v75 = v30;
  v32 = sub_1DABDE8B4(v13);
  MEMORY[0x1E1274FD0](v32);
  sub_1DABDEF34(&qword_1EE123A58, MEMORY[0x1E69693A0]);
  v33 = v81;
  sub_1DACB7CA4();
  (*(v80 + 8))(v9, v33);
  (*(v79 + 8))(v13, v10);
  v35 = v88[0];
  v34 = v88[1];
  sub_1DAAA129C(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  v37 = v29;
  v38 = v36;
  *(v36 + 16) = xmmword_1DACC4A00;
  *(v36 + 32) = v78;
  *(v36 + 40) = v25;
  *(v36 + 48) = v28;
  *(v36 + 56) = v37;
  *(v36 + 64) = sub_1DACB7A74();
  v38[9] = v39;
  v38[10] = 63;
  v38[11] = 0xE100000000000000;
  v40 = v76;
  v38[12] = v75;
  v38[13] = v40;
  v38[14] = v35;
  v38[15] = v34;
  v88[0] = v38;
  sub_1DAAA129C(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  sub_1DACB71E4();
  v41 = sub_1DACB9214();
  v42 = v22;
  v44 = v43;

  v45 = v82;
  sub_1DACB9354();
  v46 = sub_1DACB9334();
  v48 = v47;
  (*(v83 + 8))(v45, v84);
  if (v48 >> 60 == 15)
  {
    (*(v77 + 8))(v42, v18);

    v49 = sub_1DACB74D4();
    return (*(*(v49 - 8) + 16))(v87, v86, v49);
  }

  else
  {
    v57 = *(v85 + 16);
    v58 = *(v85 + 24);
    v59 = sub_1DABDF368(v46, v48);
    v85 = v18;
    v60 = v59;
    v62 = v61;
    v63 = sub_1DACB7B54();
    v83 = v46;
    v84 = v42;
    v64 = v63;
    v66 = v65;
    v88[0] = 0;
    v88[1] = 0xE000000000000000;
    sub_1DACB9C94();

    strcpy(v88, "HHMAC;date=");
    BYTE5(v88[1]) = 0;
    HIWORD(v88[1]) = -5120;
    MEMORY[0x1E1276F20](v35, v34);

    MEMORY[0x1E1276F20](0x74616E6769733B22, 0xED0000223D657275);
    MEMORY[0x1E1276F20](v64, v66);

    MEMORY[0x1E1276F20](34, 0xE100000000000000);
    v68 = v88[0];
    v67 = v88[1];
    sub_1DAA53064(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1DACC1D40;
    v70 = MEMORY[0x1E69E6158];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    v71 = sub_1DAA443C8();
    *(v69 + 32) = v41;
    *(v69 + 40) = v44;
    *(v69 + 96) = v70;
    *(v69 + 104) = v71;
    *(v69 + 64) = v71;
    *(v69 + 72) = v68;
    *(v69 + 80) = v67;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v72 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v73 = sub_1DACB74D4();
    (*(*(v73 - 8) + 16))(v87, v86, v73);
    sub_1DACB74C4();

    sub_1DAA563C0(v60, v62);
    sub_1DAB4D534(v83, v48);
    return (*(v77 + 8))(v84, v85);
  }
}

uint64_t sub_1DABDE8B4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_1DAA53064(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v28 - v3;
  v35 = sub_1DACB77D4();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DACB7CC4();
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7EE4();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7EA4();
  sub_1DACB7CB4();
  sub_1DAA53064(0, &qword_1EE11F540, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v13 = sub_1DACB7ED4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = 4 * v15;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC5AA0;
  v19 = v18 + v16;
  v20 = *(v14 + 104);
  v20(v19, *MEMORY[0x1E6969A68], v13);
  v20(v19 + v15, *MEMORY[0x1E6969A78], v13);
  v20(v19 + 2 * v15, *MEMORY[0x1E6969A48], v13);
  v21 = 3 * v15;
  v22 = v30;
  v20(v19 + v21, *MEMORY[0x1E6969A58], v13);
  v20(v19 + v17, *MEMORY[0x1E6969A88], v13);
  sub_1DABDF054(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1DACB7E84();

  sub_1DACB77A4();
  if (v23)
  {
    (*(v33 + 8))(v22, v35);
    (*(v31 + 8))(v12, v32);
    v24 = v8;
    v25 = v36;
    v26 = v34;
  }

  else
  {
    sub_1DACB77B4();
    v24 = v29;
    sub_1DACB7E94();
    (*(v33 + 8))(v22, v35);
    (*(v31 + 8))(v12, v32);
    v26 = v34;
    v25 = v36;
    if ((*(v34 + 48))(v24, 1, v36) == 1)
    {
      sub_1DAA92910(v24, &qword_1EE125280, MEMORY[0x1E6969530]);
      v24 = v8;
    }

    else
    {
      (*(v26 + 8))(v8, v25);
    }
  }

  return (*(v26 + 32))(v37, v24, v25);
}

const void *sub_1DABDEDEC@<X0>(const void *data@<X0>, _BYTE *macOut@<X5>, const void *a3@<X1>, size_t a4@<X2>, unint64_t a5@<X3>, size_t a6@<X4>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v11 != 2)
    {
      a4 = 0;
      goto LABEL_11;
    }

    v13 = *(a4 + 16);
    v12 = *(a4 + 24);
    a4 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v11)
  {
    a4 = BYTE6(a5);
LABEL_11:
    CCHmac(2u, a3, a4, data, a6, macOut);
    v14 = sub_1DABDF508(macOut, a7);
    v16 = v15;
    data = MEMORY[0x1E1278C00](macOut, -1, -1);
    *a8 = v14;
    a8[1] = v16;
    return data;
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    a4 = HIDWORD(a4) - a4;
    goto LABEL_11;
  }

  __break(1u);
  return data;
}

uint64_t sub_1DABDEEB4()
{
  sub_1DAA563C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABDEF34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DABDEF7C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABDEF9C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DABDF054(uint64_t a1)
{
  v2 = sub_1DACB7ED4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1DABDF5B8();
    v10 = sub_1DACB9C44();
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
      sub_1DABDEF34(&qword_1EE123A18, MEMORY[0x1E6969AD0]);
      v18 = sub_1DACB91E4();
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
          sub_1DABDEF34(&qword_1EE123A10, MEMORY[0x1E6969AD0]);
          v25 = sub_1DACB9264();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DABDF368(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v3 = swift_slowAlloc();
    MEMORY[0x1EEE9AC00](v3);
    sub_1DACB7B34();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABDF480()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  return sub_1DACB7B34();
}

uint64_t sub_1DABDF508(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DABDEF9C(a1, &a1[a2]);
  }

  v3 = sub_1DACB7794();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DACB7744();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DACB7B04();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_1DABDF5B8()
{
  if (!qword_1EE11F768)
  {
    sub_1DACB7ED4();
    sub_1DABDEF34(&qword_1EE123A18, MEMORY[0x1E6969AD0]);
    v0 = sub_1DACB9C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F768);
    }
  }
}

uint64_t type metadata accessor for YahooSearchOperation()
{
  result = qword_1ECBE8AB0;
  if (!qword_1ECBE8AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DABDF698()
{
  result = sub_1DACB8204();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DABDF748(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v66 = a1;
  v68 = 0x73752D6E65;
  v3 = sub_1DACB8204();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7AB4();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1DACB7CC4();
  v64 = *(v71 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x1EEE9AC00](v71);
  v70 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE8AA0), *(v2 + qword_1ECBE8AA0 + 24));
  sub_1DAB361BC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x72656B636974;
  *(inited + 40) = 0xE600000000000000;
  v17 = *(v2 + qword_1ECBE8A98 + 8);
  *(inited + 48) = *(v2 + qword_1ECBE8A98);
  *(inited + 56) = v17;
  sub_1DACB71E4();
  v63 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAADF594(inited + 32);
  v61 = qword_1ECBE8AA8;
  sub_1DABE0624();
  sub_1DACB7CB4();
  v58 = *v15;
  v18 = objc_opt_self();
  v19 = [v18 sharedPreferences];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 stocksLanguageCode];
    if (v21)
    {
      v22 = v21;
      v68 = sub_1DACB9324();
      v62 = v23;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    v24 = [v20 stocksCountryCode];
    if (v24)
    {
      v25 = v24;
      v59 = sub_1DACB9324();
      v60 = v26;

      goto LABEL_9;
    }
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  v60 = 0xE200000000000000;
  v59 = 21333;
LABEL_9:
  v27 = [v18 sharedPreferences];
  if (v27)
  {
    v28 = v27;
    v69 = v6;
    v29 = [v27 stocksYQLBaseURL];

    if (v29)
    {
      v52 = 0x80000001DACED030;
      v54 = v9;
      sub_1DACB7A44();

      sub_1DAA4D678(v58 + 16, v74);
      v30 = v64;
      v55 = *(v64 + 16);
      v56 = v14;
      v55(v70, v14, v71);
      v31 = v57;
      v58 = *(v57 + 16);
      v58(v72, v61 + v2, v3);
      sub_1DABE0678();
      v61 = v32;
      v33 = objc_allocWithZone(v32);
      v34 = v31;
      v53 = v3;
      v35 = MEMORY[0x1E69E7D40];
      *(v33 + *((*MEMORY[0x1E69E7D40] & *v33) + qword_1EE13E4B0 + 16)) = 0;
      v36 = v65;
      (*(v65 + 16))(v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 24), v9, v69);
      v37 = (v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 32));
      *v37 = 0xD000000000000015;
      v37[1] = v52;
      *(v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 40)) = v63;
      v38 = (v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 48));
      v39 = v62;
      *v38 = v68;
      v38[1] = v39;
      v40 = v60;
      v38[2] = v59;
      v38[3] = v40;
      sub_1DAA4D678(v74, v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 56));
      v42 = v70;
      v41 = v71;
      v55(v33 + *((*v35 & *v33) + qword_1EE13E4B0 + 64), v70, v71);
      v43 = *v35 & *v33;
      v44 = v72;
      v45 = v53;
      v58(v33 + *(v43 + qword_1EE13E4B0 + 72), v72, v53);
      v73.receiver = v33;
      v73.super_class = v61;
      v46 = objc_msgSendSuper2(&v73, sel_init);
      (*(v34 + 8))(v44, v45);
      v47 = *(v30 + 8);
      v47(v42, v41);
      __swift_destroy_boxed_opaque_existential_1(v74);
      (*(v36 + 8))(v54, v69);
      v47(v56, v41);
      v48 = swift_allocObject();
      v49 = v67;
      *(v48 + 16) = v66;
      *(v48 + 24) = v49;
      v50 = v46;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v50 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DABDFFA4(uint64_t a1, void (*a2)(uint64_t, void))
{
  v2 = a2;
  if (*(a1 + 32))
  {
    return (a2)(*a1, 1);
  }

  v4 = *(a1 + 8);
  result = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  v43 = *(v4 + 16);
  if (v43)
  {
    v5 = 0;
    v41 = v4 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v42 = v4;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = (v41 + 80 * v5);
      v9 = v7[2];
      v8 = v7[3];
      v10 = v7[5];
      v52 = v7[4];
      v11 = v7[7];
      v46 = v7[6];
      v48 = *v7;
      v12 = v7[9];
      v50 = v6;
      v51 = v7[8];
      v13 = v56;
      v49 = v7[1];
      if (*(v56 + 16))
      {
        v14 = *(v56 + 40);
        sub_1DACBA284();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB9404();
        v15 = sub_1DACBA2C4();
        v16 = -1 << *(v13 + 32);
        v17 = v15 & ~v16;
        if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v13 + 48) + 16 * v17);
            v20 = *v19 == v9 && v19[1] == v8;
            if (v20 || (sub_1DACBA174() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v6 = v50;
          goto LABEL_6;
        }
      }

      else
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

LABEL_19:
      sub_1DACB71E4();
      sub_1DAA4C8A0(&v54, v9, v8);

      sub_1DAC4A894(&v53);

      v21 = v53;
      v54 = v52;
      v55 = v10;
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](58, 0xE100000000000000);
      MEMORY[0x1E1276F20](v9, v8);
      v22 = v54;
      v44 = v55;
      v23 = qword_1EE122610;
      sub_1DACB71E4();
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = qword_1EE13E388;
      v6 = v50;
      v47 = v21;
      v45 = v22;
      if (*(qword_1EE13E388 + 16) && (v25 = sub_1DAA4BF3C(v9, v8), (v26 & 1) != 0))
      {
        v27 = v25;

        v28 = (*(v24 + 56) + 16 * v27);
        v12 = v28[1];
        v51 = *v28;
        sub_1DACB71E4();
      }

      else if (!v12)
      {
        sub_1DACB71E4();
        v51 = v9;
        v12 = v8;
      }

      v29 = qword_1EE13E390;
      v30 = v9;
      v31 = v8;
      if (*(qword_1EE13E390 + 16))
      {
        v32 = sub_1DAA4BF3C(v9, v8);
        v30 = v9;
        v31 = v8;
        if (v33)
        {
          v34 = v32;

          v35 = (*(v29 + 56) + 16 * v34);
          v30 = *v35;
          v31 = v35[1];
          sub_1DACB71E4();
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA5A0A8(0, *(v50 + 16) + 1, 1, v50);
        v6 = result;
      }

      v37 = *(v6 + 16);
      v36 = *(v6 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_1DAA5A0A8((v36 > 1), v37 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v37 + 1;
      v38 = v6 + 136 * v37;
      *(v38 + 32) = v45;
      *(v38 + 40) = v44;
      *(v38 + 48) = v9;
      *(v38 + 56) = v8;
      *(v38 + 64) = v48;
      *(v38 + 72) = v49;
      *(v38 + 80) = v52;
      *(v38 + 88) = v10;
      *(v38 + 96) = v47;
      v39 = *(&v54 + 3);
      *(v38 + 97) = v54;
      *(v38 + 100) = v39;
      *(v38 + 104) = v51;
      *(v38 + 112) = v12;
      *(v38 + 120) = v30;
      *(v38 + 128) = v31;
      *(v38 + 152) = 0u;
      *(v38 + 136) = 0u;
LABEL_6:
      ++v5;
      v4 = v42;
      if (v5 == v43)
      {
        v2 = a2;
        goto LABEL_36;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v2(v6, 0);
}

uint64_t sub_1DABE0474()
{
  v1 = *(v0 + qword_1ECBE8A98 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE8AA0));
  v2 = qword_1ECBE8AA8;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t sub_1DABE0500(uint64_t a1)
{
  v2 = *(a1 + qword_1ECBE8A98 + 8);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE8AA0));
  v3 = qword_1ECBE8AA8;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_1DABE0590(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DABDF748(sub_1DABE0618, v4);
}

unint64_t sub_1DABE0624()
{
  result = qword_1ECBE8AC0;
  if (!qword_1ECBE8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AC0);
  }

  return result;
}

void sub_1DABE0678()
{
  if (!qword_1ECBE8AC8)
  {
    sub_1DABE0624();
    v0 = type metadata accessor for YahooBaseOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8AC8);
    }
  }
}

void sub_1DABE06DC(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[5];
      v9 = v7[7];
      v49 = v7[6];
      v50 = v9;
      v10 = v7[1];
      v11 = v7[3];
      v45 = v7[2];
      v46 = v11;
      v12 = v7[3];
      v13 = v7[5];
      v47 = v7[4];
      v48 = v13;
      v14 = v7[1];
      v43 = *v7;
      v44 = v14;
      v15 = v7[7];
      v40 = v49;
      v41 = v15;
      v36 = v45;
      v37 = v12;
      v38 = v47;
      v39 = v8;
      v51 = *(v7 + 16);
      v42 = *(v7 + 16);
      v34 = v43;
      v35 = v10;
      sub_1DAA806E4(&v43, &v25);
      v16 = a1(&v34);
      if (v3)
      {
        v31 = v40;
        v32 = v41;
        v33 = v42;
        v27 = v36;
        v28 = v37;
        v29 = v38;
        v30 = v39;
        v25 = v34;
        v26 = v35;
        sub_1DAA9B1C8(&v25);
        return;
      }

      if (v16)
      {
        break;
      }

      v31 = v40;
      v32 = v41;
      v33 = v42;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v25 = v34;
      v26 = v35;
      sub_1DAA9B1C8(&v25);
      v7 = (v7 + 136);
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v31 = v40;
    v32 = v41;
    v33 = v42;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    nullsub_1(&v25);
    v22 = v32;
    *(a3 + 96) = v31;
    *(a3 + 112) = v22;
    *(a3 + 128) = v33;
    v23 = v28;
    *(a3 + 32) = v27;
    *(a3 + 48) = v23;
    v24 = v30;
    *(a3 + 64) = v29;
    *(a3 + 80) = v24;
    v21 = v25;
    v20 = v26;
  }

  else
  {
LABEL_6:
    sub_1DAAD4FA4(&v43);
    v17 = v50;
    *(a3 + 96) = v49;
    *(a3 + 112) = v17;
    *(a3 + 128) = v51;
    v18 = v46;
    *(a3 + 32) = v45;
    *(a3 + 48) = v18;
    v19 = v48;
    *(a3 + 64) = v47;
    *(a3 + 80) = v19;
    v21 = v43;
    v20 = v44;
  }

  *a3 = v21;
  *(a3 + 16) = v20;
}

uint64_t sub_1DABE08AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE0930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  sub_1DAA4D678((v4 + 7), v32);
  v9 = v33;
  v10 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v27 = v9;
    v28 = a4;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v11, 0);
    v12 = v31;
    v29 = a1;
    v13 = (a1 + 56);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      sub_1DACB71E4();
      if (v17 >= v16 >> 1)
      {
        sub_1DAA5859C((v16 > 1), v17 + 1, 1);
      }

      *(v31 + 16) = v17 + 1;
      v18 = v31 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v13 += 17;
      --v11;
    }

    while (v11);
    a1 = v29;
    a4 = v28;
    v9 = v27;
  }

  (*(v10 + 8))(v12, 1, v9, v10);

  v19 = v5[12];
  v20 = v5[13];
  ObjectType = swift_getObjectType();
  (*(v20 + 24))(ObjectType, v20);
  v22 = sub_1DACB89D4();
  sub_1DACB89C4();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a3;
  *(v23 + 32) = a4 & 1;
  *(v23 + 40) = v5;
  sub_1DACB71E4();
  sub_1DACB71F4();
  v24 = sub_1DACB89D4();
  sub_1DABBEA00();
  v25 = sub_1DACB8A74();

  return v25;
}

uint64_t sub_1DABE0B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int64_t a6)
{
  v71 = a5;
  v64 = a4;
  v76 = a3;
  v66 = a2;
  v8 = type metadata accessor for AppConfiguration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v16 = a1[4];
  v15 = a1[5];
  v17 = qword_1EE11FDD0;
  sub_1DACB71E4();
  v70 = v11;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v18 = v15;
  if (v17 != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = sub_1DACB8C94();
  __swift_project_value_buffer(v19, qword_1EE11FDD8);
  sub_1DACB71E4();
  v20 = sub_1DACB8C74();
  v21 = sub_1DACB9914();

  v22 = os_log_type_enabled(v20, v21);
  v68 = v14;
  v69 = v13;
  v67 = v16;
  v65 = v18;
  v72 = a6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v79[0] = v13;
    *v23 = 136446210;
    sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v24 = sub_1DACB9134();
    v14 = v25;
    v26 = sub_1DAA7ABE4(v24, v25, v79);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_1DAA3F000, v20, v21, "Fetching headlines for feed ids %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E1278C00](v13, -1, -1);
    MEMORY[0x1E1278C00](v23, -1, -1);
  }

  v27 = v12 + 64;
  v16 = v79;
  v28 = 1 << *(v12 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v18 = v29 & *(v12 + 64);
  a6 = (v28 + 63) >> 6;
  v75 = v76 + 32;
  sub_1DACB71E4();
  v30 = 0;
  v81 = MEMORY[0x1E69E7CC8];
  v73 = v12 + 64;
  v74 = v12;
LABEL_8:
  v33 = v30;
  if (!v18)
  {
    goto LABEL_10;
  }

  do
  {
    v30 = v33;
LABEL_13:
    v34 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v35 = v34 | (v30 << 6);
    v36 = *(v12 + 56);
    v37 = (*(v12 + 48) + 16 * v35);
    v38 = *v37;
    v39 = v37[1];
    v77 = *(v36 + 8 * v35);
    v13 = (*(v76 + 16) + 1);
    v40 = v75;
    while (1)
    {
      v14 = v40 + 136;
      v13 = (v13 - 1);
      if (!v13)
      {
        break;
      }

      v42 = *(v40 + 112);
      v79[6] = *(v40 + 96);
      v79[7] = v42;
      v80 = *(v40 + 128);
      v43 = *(v40 + 48);
      v79[2] = *(v40 + 32);
      v79[3] = v43;
      v44 = *(v40 + 80);
      v79[4] = *(v40 + 64);
      v79[5] = v44;
      v45 = *(v40 + 16);
      v79[0] = *v40;
      v79[1] = v45;
      if (v45 != __PAIR128__(v39, v38))
      {
        v41 = sub_1DACBA174();
        v40 = v14;
        if ((v41 & 1) == 0)
        {
          continue;
        }
      }

      v13 = v77;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DAA806E4(v79, &v78);
      v31 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v31;
      sub_1DACA5D84(v13, v79, isUniquelyReferenced_nonNull_native);
      sub_1DAA9B1C8(v79);

      v81 = v78;
      v27 = v73;
      v12 = v74;
      goto LABEL_8;
    }

    v33 = v30;
    v27 = v73;
    v12 = v74;
  }

  while (v18);
  while (1)
  {
LABEL_10:
    v30 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v30 >= a6)
    {
      break;
    }

    v18 = *(v27 + 8 * v30);
    ++v33;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  if (v71)
  {
    v47 = v72;
    v48 = v72[17];
    v49 = v72[18];
    __swift_project_boxed_opaque_existential_1(v72 + 14, v48);
    v50 = v63;
    (*(v49 + 8))(v48, v49);
    v51 = *(v50 + 64);
    result = sub_1DAA640AC(v50);
    if ((v51 & 0x8000000000000000) == 0)
    {
LABEL_24:
      MEMORY[0x1EEE9AC00](result);
      v52 = v66;
      v53 = v81;
      *(&v62 - 4) = v66;
      *(&v62 - 3) = v53;
      *(&v62 - 2) = v51;
      *(&v62 - 1) = v47;
      sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
      sub_1DACB8BB4();

      v54 = swift_allocObject();
      v56 = v69;
      v55 = v70;
      v54[2] = v52;
      v54[3] = v55;
      v57 = v67;
      v58 = v68;
      v54[4] = v56;
      v54[5] = v58;
      v59 = v65;
      v54[6] = v57;
      v54[7] = v59;
      sub_1DACB71F4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v81 = v59;
      v60 = sub_1DACB89D4();
      sub_1DABBEA00();
      v61 = sub_1DACB8A54();

      return v61;
    }

    __break(1u);
  }

  v47 = v72;
  v51 = v64;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABE117C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a3;
  v28 = a2;
  v6 = type metadata accessor for AppConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DACB7CC4();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = a1[5];
  v26 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
  sub_1DACB7CB4();
  v19 = a4[17];
  v18 = a4[18];
  __swift_project_boxed_opaque_existential_1(a4 + 14, v19);
  (*(v18 + 8))(v19, v18);
  v20 = *(v9 + 6);
  sub_1DAA640AC(v9);
  sub_1DACB7BF4();
  v21 = *(v10 + 8);
  v22 = v27;
  v21(v14, v27);
  v23 = sub_1DAB6F830(v28, v29, v16, v17, v26);
  v21(v16, v22);
  return v23;
}

uint64_t sub_1DABE1378(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AppConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = a2[17];
  v12 = a2[18];
  __swift_project_boxed_opaque_existential_1(a2 + 14, v11);
  (*(v12 + 8))(v11, v12);
  sub_1DABE3CFC();
  v13 = *(a3 + 16);
  v130 = *a3;
  v131 = v13;
  *&v132 = *(a3 + 32);
  v14 = a2[19];
  swift_getObjectType();
  sub_1DABE3D48(a3, &v120);
  swift_unknownObjectRetain();
  v15 = sub_1DAC1EFD0(&v130, v14);
  v16 = MEMORY[0x1E69E6F90];
  sub_1DAA488F0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC7630;
  *(v17 + 32) = v9[45];
  v78 = v17 + 32;
  *(v17 + 40) = v9[46];
  *(v17 + 89) = 3;
  sub_1DAA488F0(0, &qword_1EE11F518, &type metadata for HeadlineCondition, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D40;
  *(v18 + 32) = 4;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0;
  *(v18 + 80) = 9;
  v76 = v9;
  *(v18 + 88) = v9[47];
  *(v18 + 136) = 5;
  *(v17 + 96) = v18;
  *(v17 + 153) = 5;
  *(v17 + 160) = 3;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0;
  *(v17 + 208) = 9;
  *(v17 + 217) = 4;
  *(v17 + 240) = 0u;
  *(v17 + 256) = 0u;
  *(v17 + 224) = 0u;
  *(v17 + 272) = 9;
  *(v17 + 281) = 4;
  *(v17 + 288) = v15;
  sub_1DAA4D678((a2 + 14), v17 + 296);
  *(v17 + 336) = 0;
  *(v17 + 345) = 4;
  v140 = *(a3 + 8);
  *(v17 + 352) = v140;
  *(v17 + 400) = 3;
  *(v17 + 409) = 4;
  v19 = MEMORY[0x1E69E7CC0];
  *(v17 + 416) = MEMORY[0x1E69E7CC0];
  *(v17 + 473) = 0;
  *(v17 + 480) = v19;
  *(v17 + 537) = 1;
  v20 = *(v10 + 16);
  v75 = v15;
  sub_1DABE3DA4(&v140, &v130);
  if (!v20)
  {
    v23 = v19;
    v24 = v77;
LABEL_14:
    v77 = v24;
    swift_setDeallocating();
    v43 = *(v17 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v78 = *(v23 + 2);
    if (!v78)
    {
      v46 = MEMORY[0x1E69E7CC8];
LABEL_30:

      *&v130 = v46;
      sub_1DABE3F20(0, &qword_1EE11D400, sub_1DABBEA00);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_1DACB8AE4();

      sub_1DAA640AC(v76);
      return v73;
    }

    v44 = 0;
    v45 = (v23 + 32);
    v46 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v44 >= *(v23 + 2))
      {
        goto LABEL_32;
      }

      v24 = v23;
      v50 = v45[1];
      v130 = *v45;
      v131 = v50;
      v51 = v45[2];
      v52 = v45[3];
      v53 = v45[5];
      v134 = v45[4];
      v135 = v53;
      v132 = v51;
      v133 = v52;
      v54 = v45[6];
      v55 = v45[7];
      v56 = v45[9];
      v138 = v45[8];
      v139 = v56;
      v136 = v54;
      v137 = v55;
      sub_1DAB5916C(&v131 + 8, &v100);
      v116 = v106;
      v117 = v107;
      *&v118 = v108;
      v112 = v102;
      v113 = v103;
      v114 = v104;
      v115 = v105;
      v110 = v100;
      v111 = v101;
      v57 = v130;
      sub_1DAB07228(&v130, &v120);
      sub_1DAB59344(&v131 + 8, &v120);
      sub_1DACB71E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v120 = v46;
      v48 = sub_1DAB095DC(&v110);
      v60 = v46[2];
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (v62)
      {
        goto LABEL_33;
      }

      v64 = v59;
      if (v46[3] < v63)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v69 = v48;
      sub_1DAB66728();
      v48 = v69;
      v46 = v120;
      if (v64)
      {
LABEL_16:
        v47 = v48;
        sub_1DAB7669C(&v131 + 8);
        v48 = v47;
        goto LABEL_17;
      }

LABEL_25:
      v46[(v48 >> 6) + 8] |= 1 << v48;
      v66 = v46[6] + 136 * v48;
      *(v66 + 80) = v115;
      *(v66 + 96) = v116;
      *(v66 + 112) = v117;
      *(v66 + 128) = v118;
      *(v66 + 16) = v111;
      *(v66 + 32) = v112;
      *(v66 + 48) = v113;
      *(v66 + 64) = v114;
      *v66 = v110;
      *(v46[7] + 8 * v48) = MEMORY[0x1E69E7CC0];
      v67 = v46[2];
      v62 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v62)
      {
        goto LABEL_34;
      }

      v46[2] = v68;
LABEL_17:
      ++v44;
      v49 = v46[7] + 8 * v48;
      sub_1DAC2899C(v57);
      sub_1DAB07030(&v130);
      v45 += 10;
      v23 = v24;
      if (v78 == v44)
      {
        goto LABEL_30;
      }
    }

    sub_1DAB61D98(v63, isUniquelyReferenced_nonNull_native);
    v46 = v120;
    v48 = sub_1DAB095DC(&v110);
    if ((v64 & 1) != (v65 & 1))
    {
      goto LABEL_36;
    }

LABEL_24:
    if (v64)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v21 = 0;
  v22 = (v10 + 32);
  v23 = MEMORY[0x1E69E7CC0];
  v24 = v77;
  while (v21 < *(v10 + 16))
  {
    v25 = v22[1];
    v130 = *v22;
    v131 = v25;
    v26 = v22[2];
    v27 = v22[3];
    v28 = v22[5];
    v134 = v22[4];
    v135 = v28;
    v132 = v26;
    v133 = v27;
    v29 = v22[6];
    v30 = v22[7];
    v31 = v22[9];
    v138 = v22[8];
    v139 = v31;
    v136 = v29;
    v137 = v30;
    v126 = v22[6];
    v127 = v22[7];
    v128 = v22[8];
    v129 = v22[9];
    v122 = v22[2];
    v123 = v22[3];
    v124 = v22[4];
    v125 = v22[5];
    v120 = *v22;
    v121 = v22[1];
    sub_1DAB07228(&v130, &v110);
    sub_1DABE1B90(&v120, v17, 1, &v110);
    if (v24)
    {
      goto LABEL_35;
    }

    v99[6] = v126;
    v99[7] = v127;
    v99[8] = v128;
    v99[9] = v129;
    v99[2] = v122;
    v99[3] = v123;
    v99[4] = v124;
    v99[5] = v125;
    v99[0] = v120;
    v99[1] = v121;
    sub_1DAB07030(v99);
    v106 = v116;
    v107 = v117;
    v108 = v118;
    v109 = v119;
    v102 = v112;
    v103 = v113;
    v104 = v114;
    v105 = v115;
    v100 = v110;
    v101 = v111;
    if (sub_1DAB76AC8(&v100) == 1)
    {
      v95 = v116;
      v96 = v117;
      v97 = v118;
      v98 = v119;
      v91 = v112;
      v92 = v113;
      v93 = v114;
      v94 = v115;
      v89 = v110;
      v90 = v111;
      sub_1DABE3E2C(&v89);
    }

    else
    {
      v95 = v116;
      v96 = v117;
      v97 = v118;
      v98 = v119;
      v91 = v112;
      v92 = v113;
      v93 = v114;
      v94 = v115;
      v89 = v110;
      v90 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DAADBEDC(0, *(v23 + 2) + 1, 1, v23);
      }

      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      v34 = v23;
      if (v33 >= v32 >> 1)
      {
        v34 = sub_1DAADBEDC((v32 > 1), v33 + 1, 1, v23);
      }

      v83 = v93;
      v84 = v94;
      v81 = v91;
      v82 = v92;
      v87 = v97;
      v88 = v98;
      v85 = v95;
      v86 = v96;
      v79 = v89;
      v80 = v90;
      *(v34 + 2) = v33 + 1;
      v23 = v34;
      v35 = &v34[160 * v33];
      v36 = v80;
      *(v35 + 2) = v79;
      *(v35 + 3) = v36;
      v37 = v81;
      v38 = v82;
      v39 = v84;
      *(v35 + 6) = v83;
      *(v35 + 7) = v39;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;
      v40 = v85;
      v41 = v86;
      v42 = v88;
      *(v35 + 10) = v87;
      *(v35 + 11) = v42;
      *(v35 + 8) = v40;
      *(v35 + 9) = v41;
    }

    ++v21;
    v22 += 10;
    if (v20 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  v106 = v126;
  v107 = v127;
  v108 = v128;
  v109 = v129;
  v102 = v122;
  v103 = v123;
  v104 = v124;
  v105 = v125;
  v100 = v120;
  v101 = v121;
  sub_1DAB07030(&v100);

  __break(1u);
LABEL_36:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DABE1B90@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v8 = a1[7];
  v58[5] = a1[6];
  v58[6] = v8;
  v9 = a1[9];
  v58[7] = a1[8];
  v58[8] = v9;
  v10 = a1[3];
  v58[1] = a1[2];
  v58[2] = v10;
  v11 = a1[5];
  v58[3] = a1[4];
  v58[4] = v11;
  v12 = a1[1];
  v57 = *a1;
  v58[0] = v12;
  sub_1DAB5916C(v58 + 8, v59);
  v13 = v57;
  v62 = v57;
  sub_1DAB59344(v58 + 8, v56);
  sub_1DACB71E4();
  sub_1DAB6FF48(&v62);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    *&v52 = v62;
    *(&v52 + 1) = *(&v57 + 1);
    *&v53[0] = *&v58[0];
    sub_1DAB5916C(v58 + 8, v53 + 8);
    v40[5] = v53[5];
    v40[6] = v53[6];
    v40[7] = v53[7];
    v40[8] = v53[8];
    v40[1] = v53[1];
    v40[2] = v53[2];
    v40[3] = v53[3];
    v40[4] = v53[4];
    v39 = v52;
    v40[0] = v53[0];
    *&v56[0] = a2;
    sub_1DACB71E4();
    sub_1DAB6B824(v52);
    v15 = v14;
    v17 = *(&v52 + 1);
    v16 = *&v40[0];
    sub_1DACB71E4();
    sub_1DAB59344(v40 + 8, v56);
    sub_1DAB07030(&v39);
    *&v54 = v15;
    *(&v54 + 1) = v17;
    *&v55[0] = v16;
    sub_1DAB5916C(v40 + 8, v55 + 8);
    v48 = v55[5];
    v49 = v55[6];
    v50 = v55[7];
    v51 = v55[8];
    v44 = v55[1];
    v45 = v55[2];
    v46 = v55[3];
    v47 = v55[4];
    v42 = v54;
    v43 = v55[0];
    LOBYTE(v29) = a3;
    StockNewsFeed.sorted(_:)(&v29, v56);
    v41[6] = v48;
    v41[7] = v49;
    v41[8] = v50;
    v41[9] = v51;
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    sub_1DAB07030(v41);
    v48 = v56[6];
    v49 = v56[7];
    v50 = v56[8];
    v51 = v56[9];
    v44 = v56[2];
    v45 = v56[3];
    v46 = v56[4];
    v47 = v56[5];
    v42 = v56[0];
    v43 = v56[1];
    if (qword_1EE11FDD0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DACB8C94();
    __swift_project_value_buffer(v18, qword_1EE11FDD8);
    sub_1DAB59344(v58 + 8, &v29);
    sub_1DAB07228(&v57, &v29);
    sub_1DAB07228(&v42, &v29);
    v19 = sub_1DACB8C74();
    v20 = sub_1DACB9914();
    sub_1DAB7669C(v58 + 8);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v29 = v22;
      *v21 = 134218498;
      *(v21 + 4) = *(v13 + 16);
      sub_1DAB07030(&v57);
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v42 + 16);
      sub_1DAB07030(&v42);
      *(v21 + 22) = 2082;
      *(v21 + 24) = sub_1DAA7ABE4(v60, v61, &v29);
      _os_log_impl(&dword_1DAA3F000, v19, v20, "stock feed service pared %ld headlines down to %ld for %{public}s", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E1278C00](v22, -1, -1);
      MEMORY[0x1E1278C00](v21, -1, -1);
    }

    else
    {
      sub_1DAB07030(&v42);
      sub_1DAB07030(&v57);
    }

    v35 = v48;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v29 = v42;
    v30 = v43;
    result = nullsub_1(&v29);
    v24 = v36;
    a4[6] = v35;
    a4[7] = v24;
    v25 = v38;
    a4[8] = v37;
    a4[9] = v25;
    v26 = v32;
    a4[2] = v31;
    a4[3] = v26;
    v27 = v34;
    a4[4] = v33;
    a4[5] = v27;
    v28 = v30;
    *a4 = v29;
    a4[1] = v28;
  }

  return result;
}

uint64_t sub_1DABE1F8C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = a1[7];
  v39 = a1[6];
  v40 = v9;
  v41 = *(a1 + 16);
  v10 = a1[3];
  v35 = a1[2];
  v36 = v10;
  v11 = a1[5];
  v37 = a1[4];
  v38 = v11;
  v12 = a1[1];
  v33 = *a1;
  v34 = v12;
  v13 = v4[10];
  v14 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v13);
  sub_1DAA488F0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC1D20;
  v16 = *(&v34 + 1);
  *(v15 + 32) = v34;
  *(v15 + 40) = v16;
  v17 = *(v14 + 8);
  sub_1DACB71E4();
  v17(v15, 1, v13, v14);

  v18 = v4[12];
  v19 = v5[13];
  ObjectType = swift_getObjectType();
  (*(v19 + 24))(ObjectType, v19);
  v21 = sub_1DACB89D4();
  sub_1DACB89C4();

  v22 = swift_allocObject();
  v23 = a1[4];
  *(v22 + 104) = a1[5];
  v24 = a1[7];
  *(v22 + 120) = a1[6];
  *(v22 + 136) = v24;
  v25 = *a1;
  *(v22 + 40) = a1[1];
  v26 = a1[3];
  *(v22 + 56) = a1[2];
  *(v22 + 72) = v26;
  *(v22 + 88) = v23;
  *(v22 + 16) = v5;
  v27 = *(a1 + 16);
  *(v22 + 24) = v25;
  *(v22 + 152) = v27;
  *(v22 + 160) = a3;
  *(v22 + 168) = a4 & 1;
  sub_1DACB71F4();
  sub_1DAA806E4(&v33, v32);
  v28 = sub_1DACB89D4();
  sub_1DAAD4E00();
  v29 = sub_1DACB8A74();

  return v29;
}

void sub_1DABE21EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v56 = a6;
  v62 = a5;
  v55 = a2;
  v9 = type metadata accessor for AppConfiguration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v17 = a1[4];
  v16 = a1[5];
  v18 = qword_1EE11FDD0;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v59 = v14;
  sub_1DACB71E4();
  v58 = v17;
  sub_1DACB71E4();
  v57 = v16;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1DACB8C94();
  __swift_project_value_buffer(v19, qword_1EE11FDD8);
  sub_1DACB71E4();
  v20 = sub_1DACB8C74();
  v21 = sub_1DACB9914();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v52 = a3;
    v25 = v24;
    *&v60[0] = v24;
    *v23 = 136446210;
    sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v26 = sub_1DACB9134();
    v28 = v12;
    v29 = sub_1DAA7ABE4(v26, v27, v60);

    *(v23 + 4) = v29;
    v12 = v28;
    _os_log_impl(&dword_1DAA3F000, v20, v21, "Fetching headlines for feed ids %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v30 = v25;
    a3 = v52;
    MEMORY[0x1E1278C00](v30, -1, -1);
    v31 = v23;
    v15 = v53;
    MEMORY[0x1E1278C00](v31, -1, -1);
  }

  v33 = v62;
  if (!*(v13 + 16))
  {
    goto LABEL_9;
  }

  if (v56)
  {
    v34 = a3[17];
    v35 = a3[18];
    __swift_project_boxed_opaque_existential_1(a3 + 14, v34);
    v36 = v54;
    (*(v35 + 8))(v34, v35);
    v33 = *(v36 + 64);
    v32 = sub_1DAA640AC(v36);
    if (v33 < 0)
    {
      __break(1u);
LABEL_9:

      v37 = *(a4 + 112);
      v60[6] = *(a4 + 96);
      v60[7] = v37;
      v61 = *(a4 + 128);
      v38 = *(a4 + 48);
      v60[2] = *(a4 + 32);
      v60[3] = v38;
      v39 = *(a4 + 80);
      v60[4] = *(a4 + 64);
      v60[5] = v39;
      v40 = *(a4 + 16);
      v60[0] = *a4;
      v60[1] = v40;
      sub_1DABE26F4(v60);

LABEL_12:

      return;
    }

LABEL_11:
    MEMORY[0x1EEE9AC00](v32);
    v41 = v55;
    *(&v51 - 6) = v55;
    *(&v51 - 5) = v13;
    *(&v51 - 4) = a4;
    *(&v51 - 3) = v33;
    *(&v51 - 2) = a3;
    sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    sub_1DACB8BB4();

    v42 = swift_allocObject();
    v43 = *(a4 + 64);
    *(v42 + 104) = *(a4 + 80);
    v44 = *(a4 + 112);
    *(v42 + 120) = *(a4 + 96);
    *(v42 + 136) = v44;
    v45 = *a4;
    *(v42 + 40) = *(a4 + 16);
    v46 = *(a4 + 48);
    *(v42 + 56) = *(a4 + 32);
    *(v42 + 72) = v46;
    *(v42 + 88) = v43;
    *(v42 + 16) = a3;
    v47 = *(a4 + 128);
    *(v42 + 24) = v45;
    *(v42 + 152) = v47;
    *(v42 + 160) = v41;
    *(v42 + 168) = v12;
    *(v42 + 176) = v15;
    *(v42 + 184) = v59;
    v48 = v57;
    *(v42 + 192) = v58;
    *(v42 + 200) = v48;
    sub_1DACB71F4();
    sub_1DAA806E4(a4, v60);
    sub_1DACB71F4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v49 = v48;
    v50 = sub_1DACB89D4();
    sub_1DAAD4E00();
    sub_1DACB8A54();

    goto LABEL_12;
  }

  if ((v62 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1DABE26F4(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[7];
  v34 = a1[6];
  v35 = v3;
  v36 = *(a1 + 16);
  v4 = a1[3];
  v30 = a1[2];
  v31 = v4;
  v5 = a1[5];
  v32 = a1[4];
  v33 = v5;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = v1[24];
  v8 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v7);
  if ((*(v8 + 32))(v7, v8))
  {
    if (qword_1EE11FDD0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DACB8C94();
    __swift_project_value_buffer(v9, qword_1EE11FDD8);
    sub_1DAA806E4(&v28, &v26);
    v10 = sub_1DACB8C74();
    v11 = sub_1DACB9914();
    sub_1DAA9B1C8(&v28);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1DAA7ABE4(v29, *(&v29 + 1), &v26);
      _os_log_impl(&dword_1DAA3F000, v10, v11, "stock feed service checking for bilingual headlines for %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E1278C00](v13, -1, -1);
      MEMORY[0x1E1278C00](v12, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v14);
    sub_1DABE3F90();
    sub_1DACB8BB4();
    v15 = swift_allocObject();
    v16 = v35;
    *(v15 + 112) = v34;
    *(v15 + 128) = v16;
    *(v15 + 144) = v36;
    v17 = v31;
    *(v15 + 48) = v30;
    *(v15 + 64) = v17;
    v18 = v33;
    *(v15 + 80) = v32;
    *(v15 + 96) = v18;
    v19 = v29;
    *(v15 + 16) = v28;
    *(v15 + 32) = v19;
    sub_1DAA806E4(&v28, &v26);
    v20 = sub_1DACB89D4();
    sub_1DAAD4E00();
    v21 = sub_1DACB8A74();

    return v21;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    v27 = 0;
    sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABE2A24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a4;
  v33 = a5;
  v34 = a2;
  v7 = *(a3 + 112);
  v43 = *(a3 + 96);
  v44 = v7;
  v45 = *(a3 + 128);
  v8 = *(a3 + 48);
  v39 = *(a3 + 32);
  v40 = v8;
  v9 = *(a3 + 80);
  v41 = *(a3 + 64);
  v42 = v9;
  v10 = *(a3 + 16);
  v37 = *a3;
  v38 = v10;
  v11 = type metadata accessor for AppConfiguration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB7CC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  v23 = a1[6];
  v31 = a1[5];
  v32 = v23;
  v30 = __swift_project_boxed_opaque_existential_1(a1 + 2, v31);
  v46[6] = v43;
  v46[7] = v44;
  v47 = v45;
  v46[2] = v39;
  v46[3] = v40;
  v46[4] = v41;
  v46[5] = v42;
  v46[0] = v37;
  v46[1] = v38;
  nullsub_1(v46);
  sub_1DAB5916C(v46, v36);
  sub_1DAA806E4(a3, v48);
  sub_1DACB7CB4();
  v25 = v33[17];
  v24 = v33[18];
  __swift_project_boxed_opaque_existential_1(v33 + 14, v25);
  (*(v24 + 8))(v25, v24);
  v26 = *(v14 + 6);
  sub_1DAA640AC(v14);
  sub_1DACB7BF4();
  v27 = *(v16 + 8);
  v27(v20, v15);
  v28 = sub_1DAB6F560(v34, v36, v35, v22, v31, v32);
  v27(v22, v15);
  sub_1DAB5916C(v36, v48);
  sub_1DAB7669C(v48);
  return v28;
}

uint64_t sub_1DABE2CA8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, _OWORD *a5)
{
  v10 = type metadata accessor for AppConfiguration(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v94 = *(*a1 + 16);
  if (!v94)
  {
    goto LABEL_20;
  }

  v15 = v14[3];
  v16 = v14[4];
  v17 = v14[5];
  v18 = v14[7];
  v19 = v14[8];
  v133 = v14[6];
  v134 = v18;
  v131 = v16;
  v132 = v17;
  v20 = v14[11];
  v21 = v14[9];
  v137 = v14[10];
  v138 = v20;
  v135 = v19;
  v136 = v21;
  v129 = v14[2];
  v130 = v15;
  if (!*(v129 + 16))
  {
LABEL_20:
    v57 = *(a3 + 112);
    v135 = *(a3 + 96);
    v136 = v57;
    *&v137 = *(a3 + 128);
    v58 = *(a3 + 48);
    v131 = *(a3 + 32);
    v132 = v58;
    v59 = *(a3 + 80);
    v133 = *(a3 + 64);
    v134 = v59;
    v60 = *(a3 + 16);
    v129 = *a3;
    v130 = v60;
    return sub_1DABE26F4(&v129);
  }

  v89 = a3;
  v90 = v5;
  v93 = v14;
  v22 = v14 + 2;
  v23 = *(a4 + 17);
  v24 = *(a4 + 18);
  __swift_project_boxed_opaque_existential_1(a4 + 14, v23);
  v91 = a5;
  v92 = v13;
  v95 = a4;
  v25 = *(v24 + 8);
  sub_1DAB07228(&v129, &v119);
  v25(v23, v24);
  sub_1DABE3CFC();
  v26 = v91;
  v27 = v91[1];
  v119 = *v91;
  v120 = v27;
  *&v121 = *(v91 + 4);
  v28 = *(a4 + 19);
  swift_getObjectType();
  sub_1DABE3D48(v26, &v109);
  swift_unknownObjectRetain();
  v29 = sub_1DAC1EFD0(&v119, v28);
  v30 = MEMORY[0x1E69E6F90];
  sub_1DAA488F0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DACC7630;
  v32 = v92;
  *(v31 + 32) = *(v92 + 45);
  v88 = v31 + 32;
  v33 = v32;
  *(v31 + 40) = *(v32 + 46);
  *(v31 + 89) = 3;
  sub_1DAA488F0(0, &qword_1EE11F518, &type metadata for HeadlineCondition, v30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DACC1D40;
  *(v34 + 32) = 4;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0;
  *(v34 + 80) = 9;
  *(v34 + 88) = *(v33 + 47);
  *(v34 + 136) = 5;
  *(v31 + 96) = v34;
  *(v31 + 153) = 5;
  *(v31 + 160) = 3;
  *(v31 + 168) = 0u;
  *(v31 + 184) = 0u;
  *(v31 + 200) = 0;
  *(v31 + 208) = 9;
  *(v31 + 217) = 4;
  *(v31 + 240) = 0u;
  *(v31 + 256) = 0u;
  *(v31 + 224) = 0u;
  *(v31 + 272) = 9;
  *(v31 + 281) = 4;
  *(v31 + 288) = v29;
  sub_1DAA4D678((v95 + 112), v31 + 296);
  *(v31 + 336) = 0;
  *(v31 + 345) = 4;
  v139 = *(v26 + 8);
  *(v31 + 352) = v139;
  *(v31 + 400) = 3;
  v35 = MEMORY[0x1E69E7CC0];
  *(v31 + 409) = 4;
  v36 = v35;
  *(v31 + 416) = v35;
  *(v31 + 473) = 0;
  *(v31 + 480) = v35;
  *(v31 + 537) = 1;
  v91 = v29;
  sub_1DABE3DA4(&v139, &v119);
  v37 = 0;
  do
  {
    if (v37 >= *(v93 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_23;
    }

    v38 = v36;
    v39 = v31;
    v40 = *v22;
    v120 = v22[1];
    v119 = v40;
    v41 = v22[2];
    v42 = v22[3];
    v43 = v22[4];
    v124 = v22[5];
    v123 = v43;
    v122 = v42;
    v121 = v41;
    v44 = v22[6];
    v45 = v22[7];
    v46 = v22[8];
    v128 = v22[9];
    v127 = v46;
    v126 = v45;
    v125 = v44;
    v47 = v119;
    v48 = *(v119 + 16);
    v49 = *(v36 + 2);
    v50 = &v48[v49];
    if (__OFADD__(v49, v48))
    {
      goto LABEL_28;
    }

    sub_1DAB07228(&v119, &v109);
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v52 = *(v38 + 3) >> 1, v95 = v38, v52 >= v50))
    {
      if (!*(v47 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v49 <= v50)
      {
        v53 = &v48[v49];
      }

      else
      {
        v53 = v49;
      }

      v95 = sub_1DAADC60C(isUniquelyReferenced_nonNull_native, v53, 1, v38);
      v52 = *(v95 + 3) >> 1;
      if (!*(v47 + 16))
      {
LABEL_4:

        v31 = v39;
        v36 = v95;
        if (v48)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v36 = v95;
    if (v52 - *(v95 + 2) < v48)
    {
      goto LABEL_30;
    }

    v31 = v39;
    swift_arrayInitWithCopy();

    if (v48)
    {
      v54 = *(v36 + 2);
      v55 = __OFADD__(v54, v48);
      v56 = &v48[v54];
      if (v55)
      {
        goto LABEL_31;
      }

      *(v36 + 2) = v56;
    }

LABEL_5:
    ++v37;
    sub_1DAB07030(&v119);

    v22 += 10;
  }

  while (v94 != v37);
  *&v109 = v36;
  *(&v109 + 1) = *(&v129 + 1);
  *&v110 = v130;
  sub_1DAB5916C(&v130 + 8, &v110 + 8);
  v125 = v115;
  v126 = v116;
  v127 = v117;
  v128 = v118;
  v121 = v111;
  v122 = v112;
  v123 = v113;
  v124 = v114;
  v119 = v109;
  v120 = v110;
  v62 = v109;
  v104 = v109;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB59344(&v130 + 8, &v109);
  sub_1DACB71E4();
  v63 = v90;
  sub_1DAB6FF48(&v104);
  if (v63)
  {

    __break(1u);

    __break(1u);
    return result;
  }

  v94 = v62;
  *&v105 = v104;
  *(&v105 + 1) = *(&v119 + 1);
  *&v106[0] = v120;
  sub_1DAB5916C(&v120 + 8, v106 + 8);
  v101[5] = v106[5];
  v101[6] = v106[6];
  v101[7] = v106[7];
  v101[8] = v106[8];
  v101[1] = v106[1];
  v101[2] = v106[2];
  v101[3] = v106[3];
  v101[4] = v106[4];
  v100 = v105;
  v101[0] = v106[0];
  *&v107 = v31;
  v64 = v105;
  sub_1DACB71E4();
  sub_1DAB59344(&v120 + 8, &v109);
  sub_1DAB6B824(v64);
  v66 = v65;
  v67 = v31;
  v68 = *(&v100 + 1);
  v69 = *&v101[0];
  sub_1DACB71E4();
  sub_1DAB59344(v101 + 8, &v109);
  sub_1DAB07030(&v100);
  *&v107 = v66;
  *(&v107 + 1) = v68;
  *&v108[0] = v69;
  sub_1DAB5916C(v101 + 8, v108 + 8);
  v103[5] = v108[5];
  v103[6] = v108[6];
  v103[7] = v108[7];
  v103[8] = v108[8];
  v103[1] = v108[1];
  v103[2] = v108[2];
  v103[3] = v108[3];
  v103[4] = v108[4];
  v102 = v107;
  v103[0] = v108[0];
  v99 = v107;
  sub_1DACB71E4();
  sub_1DAB6FF08(&v99);
  sub_1DAB07030(&v129);
  swift_setDeallocating();
  v70 = *(v67 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v71 = v99;
  v72 = *(&v102 + 1);
  v73 = *&v103[0];
  sub_1DACB71E4();
  sub_1DAB59344(v103 + 8, &v109);
  sub_1DAB07030(&v102);
  *&v109 = v71;
  *(&v109 + 1) = v72;
  *&v110 = v73;
  sub_1DAB5916C(v103 + 8, &v110 + 8);
  v98[6] = v115;
  v98[7] = v116;
  v98[8] = v117;
  v98[9] = v118;
  v98[2] = v111;
  v98[3] = v112;
  v98[4] = v113;
  v98[5] = v114;
  v98[0] = v109;
  v98[1] = v110;
  if (qword_1EE11FDD0 != -1)
  {
    goto LABEL_32;
  }

LABEL_23:
  v74 = sub_1DACB8C94();
  __swift_project_value_buffer(v74, qword_1EE11FDD8);
  sub_1DAB07228(v98, &v96);
  sub_1DAB07228(v98, &v96);
  sub_1DAB07228(&v119, &v96);
  v75 = v89;
  sub_1DAA806E4(v89, &v96);
  v76 = sub_1DACB8C74();
  v77 = sub_1DACB9914();
  sub_1DAA9B1C8(v75);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v96 = v79;
    *v78 = 134218498;
    v80 = *(v94 + 16);
    sub_1DAB07030(&v119);
    *(v78 + 4) = v80;
    sub_1DAB07030(&v119);
    *(v78 + 12) = 2048;
    v81 = *(*&v98[0] + 16);
    sub_1DAB07030(v98);
    *(v78 + 14) = v81;
    sub_1DAB07030(v98);
    *(v78 + 22) = 2082;
    *(v78 + 24) = sub_1DAA7ABE4(*(v75 + 16), *(v75 + 24), &v96);
    _os_log_impl(&dword_1DAA3F000, v76, v77, "stock feed service pared %ld headlines down to %ld for %{public}s", v78, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1E1278C00](v79, -1, -1);
    MEMORY[0x1E1278C00](v78, -1, -1);
  }

  else
  {
    sub_1DAB07030(v98);
    sub_1DAB07030(&v119);
    sub_1DAB07030(v98);
    sub_1DAB07030(&v119);
  }

  v83 = v91;
  v82 = v92;
  v96 = *&v98[0];
  v97 = 0;
  sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  v87 = sub_1DACB8AE4();
  sub_1DAB07030(v98);

  sub_1DAA640AC(v82);
  return v87;
}

uint64_t sub_1DABE3634(void *a1, uint64_t a2)
{
  v4 = a1[10];
  v5 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v4);
  sub_1DAA488F0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = *(a2 + 24);
  *(v6 + 32) = *(a2 + 16);
  *(v6 + 40) = v7;
  v8 = *(v5 + 8);
  sub_1DACB71E4();
  v8(v6, 0, v4, v5);

  v9 = a1[12];
  v10 = a1[13];
  ObjectType = swift_getObjectType();
  (*(v10 + 24))(ObjectType, v10);
  v12 = sub_1DACB89D4();
  v13 = sub_1DACB89C4();

  return v13;
}

uint64_t sub_1DABE376C(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DAA488F0(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    sub_1DACB8BB4();
    v1 = sub_1DACB89D4();
    sub_1DAAD4E00();
    v2 = sub_1DACB8A54();

    return v2;
  }

  else
  {
    sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DABE38C4(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = *(a3 + 112);
  v47 = *(a3 + 96);
  v48 = v5;
  v49 = *(a3 + 128);
  v6 = *(a3 + 48);
  v43 = *(a3 + 32);
  v44 = v6;
  v7 = *(a3 + 80);
  v45 = *(a3 + 64);
  v46 = v7;
  v8 = *(a3 + 16);
  v41 = *a3;
  v42 = v8;
  v9 = sub_1DACB7CC4();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - v13;
  v14 = type metadata accessor for AppConfiguration(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[5];
  v33 = a1[6];
  v34 = v18;
  v32 = __swift_project_boxed_opaque_existential_1(a1 + 2, v18);
  v50[6] = v47;
  v50[7] = v48;
  v51 = v49;
  v50[2] = v43;
  v50[3] = v44;
  v50[4] = v45;
  v50[5] = v46;
  v50[0] = v41;
  v50[1] = v42;
  nullsub_1(v50);
  sub_1DAB5916C(v50, v40);
  v19 = a1[17];
  v20 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v19);
  v21 = *(v20 + 8);
  sub_1DAA806E4(a3, v52);
  v21(v19, v20);
  v22 = *(v17 + 8);
  result = sub_1DAA640AC(v17);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = v35;
    sub_1DACB7CB4();
    v25 = a1[17];
    v26 = a1[18];
    __swift_project_boxed_opaque_existential_1(a1 + 14, v25);
    (*(v26 + 8))(v25, v26);
    v27 = *(v17 + 6);
    sub_1DAA640AC(v17);
    v28 = v36;
    sub_1DACB7BF4();
    v29 = v38;
    v30 = *(v37 + 8);
    v30(v24, v38);
    v31 = sub_1DAB6F560(v39, v40, v22, v28, v34, v33);
    v30(v28, v29);
    sub_1DAB5916C(v40, v52);
    sub_1DAB7669C(v52);
    return v31;
  }

  return result;
}

uint64_t sub_1DABE3BA0(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    *(*(*a1 + 32) + 16);
  }

  sub_1DABE3F20(0, &qword_1EE11FE40, sub_1DAAD4E00);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

unint64_t sub_1DABE3CFC()
{
  result = qword_1EE11F870;
  if (!qword_1EE11F870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F870);
  }

  return result;
}

uint64_t sub_1DABE3DA4(uint64_t a1, uint64_t a2)
{
  sub_1DAA488F0(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABE3E2C(uint64_t a1)
{
  sub_1DAA488F0(0, qword_1EE123390, &type metadata for StockNewsFeed, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DABE3F20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB8B74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DABE3F90()
{
  if (!qword_1ECBE8AD0)
  {
    sub_1DAA9CB70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE8AD0);
    }
  }
}

uint64_t NetworkEvent.SDSMetadata.dataSource.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t NetworkEvent.underlyingEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABE418C(v2, v7);
  if (swift_getEnumCaseMultiPayload() - 2 <= 4)
  {
    sub_1DAA8C2EC();
    v9 = &v7[*(v8 + 48)];
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = *(v9 + 5);
  }

  v13 = sub_1DACB8754();
  return (*(*(v13 - 8) + 32))(a1, v7, v13);
}

uint64_t sub_1DABE418C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double NetworkEvent.metadata.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABE418C(v2, v7);
  if (swift_getEnumCaseMultiPayload() - 2 > 4)
  {
    sub_1DAB36234(v7);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  else
  {
    sub_1DAA8C2EC();
    v9 = &v7[*(v8 + 48)];
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 4);
    v13 = *(v9 + 5);
    v14 = sub_1DACB8754();
    v15 = *(*(v14 - 8) + 8);
    v17 = *(v9 + 1);
    v15(v7, v14);
    *a1 = v10;
    *(a1 + 8) = v11;
    result = *&v17;
    *(a1 + 16) = v17;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
  }

  return result;
}

uint64_t sub_1DABE436C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1DACB8754();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NetworkEvent.underlyingEvent.getter(v6);
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t NetworkEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB8754();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v11);
  v12 = sub_1DACB8744();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v13 = [v12 fetchStartDate];
    if (v13)
    {
      v14 = v13;
      sub_1DACB7C74();

      return (*(v3 + 32))(a1, v6, v2);
    }
  }

  return sub_1DACB7CB4();
}

double sub_1DABE4654(SEL *a1, SEL *a2)
{
  v32 = a2;
  v34 = a1;
  v2 = sub_1DACB7CC4();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = sub_1DACB8754();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v19);
  v20 = sub_1DACB8744();
  (*(v16 + 8))(v19, v15);
  v21 = 0.0;
  if (v20)
  {
    v22 = [v20 *v34];
    if (v22)
    {
      v23 = v22;
      sub_1DACB7C74();

      v24 = v33;
      v25 = *(v33 + 32);
      v25(v14, v12, v2);
      v26 = [v20 *v32];
      if (v26)
      {
        v27 = v26;
        sub_1DACB7C74();

        v25(v9, v6, v2);
        sub_1DACB7B84();
        v21 = v28;

        v29 = *(v24 + 8);
        v29(v9, v2);
        v29(v14, v2);
        return v21;
      }

      (*(v24 + 8))(v14, v2);
    }
  }

  return v21;
}

char *NetworkEvent.responseSize.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v4);
  v5 = sub_1DACB8744();
  (*(v1 + 8))(v4, v0);
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 countOfResponseBodyBytesReceived];
  v7 = [v5 countOfResponseHeaderBytesReceived];

  result = &v7[v6];
  if (__OFADD__(v6, v7))
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t NetworkEvent.respondingPop.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v4);
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E69D6848])
  {
    (*(v1 + 96))(v4, v0);
    v6 = *v4;

    goto LABEL_5;
  }

  if (v5 == *MEMORY[0x1E69D6840])
  {
    (*(v1 + 96))(v4, v0);
    v6 = *v4;
LABEL_5:
    v7 = sub_1DACB92F4();
    v8 = [v6 valueForHTTPHeaderField_];

    if (v8)
    {
      v9 = sub_1DACB9324();

      return v9;
    }

    return 0;
  }

  if (v5 != *MEMORY[0x1E69D6858])
  {
    result = sub_1DACBA164();
    __break(1u);
    return result;
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

double NetworkEvent.taskDuration.getter()
{
  v0 = sub_1DACB7CC4();
  v30 = *(v0 - 8);
  v1 = *(v30 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = sub_1DACB8754();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v17);
  v18 = sub_1DACB8744();
  (*(v14 + 8))(v17, v13);
  v19 = 0.0;
  if (v18)
  {
    v20 = [v18 responseEndDate];
    if (v20)
    {
      v21 = v20;
      sub_1DACB7C74();

      v22 = v30;
      v23 = *(v30 + 32);
      v23(v12, v10, v0);
      v24 = [v18 fetchStartDate];
      if (v24)
      {
        v25 = v24;
        sub_1DACB7C74();

        v23(v7, v4, v0);
        sub_1DACB7B84();
        v19 = v26;

        v27 = *(v22 + 8);
        v27(v7, v0);
        v27(v12, v0);
        return v19;
      }

      (*(v22 + 8))(v12, v0);
    }
  }

  return v19;
}

id NetworkEvent.isProxyConnection.getter()
{
  v0 = sub_1DACB8754();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  NetworkEvent.underlyingEvent.getter(v4);
  v5 = sub_1DACB8744();
  (*(v1 + 8))(v4, v0);
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 isProxyConnection];

  return v6;
}

uint64_t sub_1DABE4FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DABE5028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DABE5084()
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  sub_1DACB8C64();
  sub_1DAA65E94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DABE5154(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  sub_1DAA66DC0(&qword_1ECBE8AD8);
  return sub_1DACB80C4();
}

uint64_t sub_1DABE5228(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = sub_1DACB92F4();
  [v4 removeObjectForKey_];

  v6 = [v3 defaultStore];
  [v6 synchronize];

  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  v7 = sub_1DACB8C64();
  return a2(v7);
}

void sub_1DABE5360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager + 24);
  v12 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager), v11);
  v13 = *(v12 + 40);
  sub_1DACB71F4();
  v13(v11, v12);
  v14 = swift_allocObject();
  v14[2] = sub_1DABE6448;
  v14[3] = v10;
  v14[4] = a5;
  v14[5] = a3;
  v14[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

void sub_1DABE551C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (*(a1 + 250) == 1)
  {
    goto LABEL_8;
  }

  if (qword_1EE11D500 != -1)
  {
    swift_once();
  }

  type metadata accessor for KVSCleanupStartupTask();
  sub_1DAA66DC0(&qword_1EE11E548);
  sub_1DACB7F84();
  if (v10 && v10 == 1)
  {

LABEL_8:
    a2(a1);
    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    goto LABEL_8;
  }

  sub_1DAA6ABE8();
  v8 = swift_allocError();
  *v9 = 2;
  a5();
}

uint64_t sub_1DABE56C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_lazyDatabase);
  v12 = swift_allocObject();
  v12[2] = sub_1DABE6448;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DABE57A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DABE63A0;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DABE5934;
  v12[3] = &block_descriptor_51;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 checkSyncingEnabledWithCompletion_];
  _Block_release(v11);
}

void sub_1DABE58A4(char a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    a2();
  }

  else
  {
    sub_1DAA6ABE8();
    v5 = swift_allocError();
    *v6 = 3;
    a4();
  }
}

uint64_t sub_1DABE5934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DACB71F4();
  v4(a2);
}

void sub_1DABE5988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  sub_1DACB71F4();
  v10 = [v9 sharedAccount];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1DABE6448;
  v11[5] = v8;
  v13[4] = sub_1DABE6380;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DABE5BA4;
  v13[3] = &block_descriptor_38;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();

  [v10 checkAllDevicesRunningMinimumiOSVersion:12 macOSVersion:0 orInactiveForTimeInterval:10 completionHandler:{14, v12, 7776000.0}];
  _Block_release(v12);
}

void sub_1DABE5AFC(char a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_1DAA6ABE8();
    v8 = swift_allocError();
    v6 = v8;
    *v9 = 4;
  }

  a3(v8);
}

void sub_1DABE5BA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DACB71F4();
  v7 = a3;
  v6(a2, a3);
}

void sub_1DABE5C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService + 24);
  v12 = *(a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService), v11);
  v13 = *(v12 + 48);
  sub_1DACB71F4();
  v13(v11, v12);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = sub_1DABE6448;
  v14[6] = v10;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DABE5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_lazyDatabase);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DABE5E84(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DABE6374;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB10208;
  v12[3] = &block_descriptor_22;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 savePendingChangesToServerWithCompletion_];
  _Block_release(v11);
}

void sub_1DABE5F84(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = a1;
    a2(a1);
  }

  else
  {
    a4();
  }
}

uint64_t sub_1DABE5FF8()
{
  v1 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  v2 = sub_1DACB8574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService));
  v3 = *(v0 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_lazyDatabase);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE60C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11D4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8574();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABE616C()
{
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  return sub_1DACB71F4();
}

unint64_t sub_1DABE63EC()
{
  result = qword_1ECBE8AE0;
  if (!qword_1ECBE8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AE0);
  }

  return result;
}

uint64_t sub_1DABE6458()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  if (v2 == sub_1DACB9324() && v1 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DACBA174();
  }

  return v5 & 1;
}

void sub_1DABE64D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 name];
  v22 = sub_1DACB9324();
  v6 = v5;

  v7 = [a1 symbols];
  v8 = sub_1DACB9644();

  v9 = [a1 identifier];
  v10 = sub_1DACB9324();
  v12 = v11;

  v13 = [a1 sortState];
  v14 = [v13 integerValue];

  v15 = [a1 sortOrderState];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 integerValue];
  }

  else
  {
    v17 = 0;
  }

  sub_1DABF7EBC(v14, v17, v16 == 0, &v24);
  if (v24 <= 0xFDu)
  {
    v18 = v24;
  }

  else
  {
    v18 = -96;
  }

  v19 = [a1 displayState];
  v20 = [v19 integerValue];

  v21 = v20 == 1;
  *a2 = v23;
  *(a2 + 8) = v6;
  if (v20 == 2)
  {
    v21 = 2;
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v18;
  *(a2 + 41) = v21;
}

uint64_t sub_1DABE6690@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a6;
  v9 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 41) = v9;
  return result;
}

uint64_t sub_1DABE66B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABE66E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABE6734()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696669746E656469;
  v4 = 0x7461745374726F73;
  if (v1 != 3)
  {
    v4 = 0x5379616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736C6F626D7973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABE67D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABE7590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABE6800(uint64_t a1)
{
  v2 = sub_1DABE726C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE683C(uint64_t a1)
{
  v2 = sub_1DABE726C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABE6878(void *a1)
{
  sub_1DABE7368(0, &qword_1ECBE8AE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v20 = v1[3];
  v21 = v11;
  v19 = v1[4];
  LODWORD(v11) = *(v1 + 40);
  v17 = *(v1 + 41);
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE726C();
  sub_1DACBA304();
  v30 = 0;
  v13 = v22;
  sub_1DACBA094();
  if (!v13)
  {
    v14 = v17;
    v15 = v18;
    v23 = v21;
    v29 = 1;
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E98);
    sub_1DACBA0E4();
    v28 = 2;
    sub_1DACBA094();
    v27 = v15;
    v26 = 3;
    sub_1DABE72C0();
    sub_1DACBA0E4();
    v25 = v14;
    v24 = 4;
    sub_1DABE7314();
    sub_1DACBA0E4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DABE6B08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  sub_1DACB9404();
  MEMORY[0x1E1277D70](*(v4 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_1DACB71E4();
      sub_1DACB9404();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  sub_1DACB9404();
  v12 = v6 >> 5;
  if (v6 >> 5 > 2)
  {
    if (v12 == 3)
    {
      v14 = 4;
    }

    else
    {
      if (v12 != 4)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v14 = 5;
    }
  }

  else
  {
    v13 = 2;
    if (v12 != 1)
    {
      v13 = 3;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }
  }

  MEMORY[0x1E1277D70](v14);
  v15 = v6 & 1;
LABEL_15:
  MEMORY[0x1E1277D70](v15);
  return MEMORY[0x1E1277D70](v7);
}

uint64_t sub_1DABE6C24()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 20);
  sub_1DACBA284();
  sub_1DABE6B08();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE6C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABE7368(0, &qword_1ECBE8B08, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE726C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v12 = sub_1DACB9FA4();
  v24 = v13;
  sub_1DAA613E8();
  v31 = 1;
  sub_1DAA962D8(&qword_1EE123E88);
  sub_1DACB9FE4();
  v23 = v25;
  v30 = 2;
  v21 = sub_1DACB9FA4();
  v22 = v14;
  v28 = 3;
  sub_1DABE73CC();
  sub_1DACB9FE4();
  HIDWORD(v20) = v29;
  v26 = 4;
  sub_1DABE7420();
  sub_1DACB9FE4();
  (*(v7 + 8))(v10, v6);
  v16 = v27;
  v17 = v24;
  *a2 = v12;
  *(a2 + 8) = v17;
  v18 = v22;
  v19 = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = BYTE4(v20);
  *(a2 + 41) = v16;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DABE7018()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 20);
  sub_1DACBA284();
  sub_1DABE6B08();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE7080()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 20);
  sub_1DACBA284();
  sub_1DABE6B08();
  return sub_1DACBA2C4();
}

uint64_t sub_1DABE7114@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  return sub_1DACB71E4();
}

BOOL sub_1DABE7120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (sub_1DAA51414(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v12 = v5 >> 5;
  if (v5 >> 5 > 2)
  {
    if (v12 == 3)
    {
      if ((v10 & 0xE0) == 0x60)
      {
        return v6 == v11;
      }
    }

    else if (v12 == 4)
    {
      if ((v10 & 0xE0) == 0x80)
      {
        return v6 == v11;
      }
    }

    else if (v10 == 160)
    {
      return v6 == v11;
    }

    return 0;
  }

  if (!v12)
  {
    if (v10 < 0x20)
    {
      return v6 == v11;
    }

    return 0;
  }

  if (v12 != 1)
  {
    if ((v10 & 0xE0) == 0x40)
    {
      return v6 == v11;
    }

    return 0;
  }

  if ((v10 & 0xE0) != 0x20)
  {
    return 0;
  }

  return v6 == v11;
}

unint64_t sub_1DABE726C()
{
  result = qword_1ECBE8AF0;
  if (!qword_1ECBE8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AF0);
  }

  return result;
}

unint64_t sub_1DABE72C0()
{
  result = qword_1ECBE8AF8;
  if (!qword_1ECBE8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8AF8);
  }

  return result;
}

unint64_t sub_1DABE7314()
{
  result = qword_1ECBE8B00;
  if (!qword_1ECBE8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B00);
  }

  return result;
}

void sub_1DABE7368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABE726C();
    v7 = a3(a1, &type metadata for Watchlist.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABE73CC()
{
  result = qword_1ECBE8B10;
  if (!qword_1ECBE8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B10);
  }

  return result;
}

unint64_t sub_1DABE7420()
{
  result = qword_1ECBE8B18;
  if (!qword_1ECBE8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B18);
  }

  return result;
}

unint64_t sub_1DABE748C()
{
  result = qword_1ECBE8B20;
  if (!qword_1ECBE8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B20);
  }

  return result;
}

unint64_t sub_1DABE74E4()
{
  result = qword_1ECBE8B28;
  if (!qword_1ECBE8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B28);
  }

  return result;
}

unint64_t sub_1DABE753C()
{
  result = qword_1ECBE8B30;
  if (!qword_1ECBE8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B30);
  }

  return result;
}

uint64_t sub_1DABE7590(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745374726F73 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

StocksCore::MultiSizeVideo __swiftcall MultiSizeVideo.init(videoSmall:videoLarge:)(Swift::String_optional videoSmall, Swift::String_optional videoLarge)
{
  if (videoSmall.value._object)
  {
    countAndFlagsBits = videoSmall.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (videoSmall.value._object)
  {
    object = videoSmall.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  if (videoLarge.value._object)
  {
    v5 = videoLarge.value._countAndFlagsBits;
  }

  else
  {
    v5 = 0;
  }

  *v2 = countAndFlagsBits;
  v2[1] = object;
  if (videoLarge.value._object)
  {
    v6 = videoLarge.value._object;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v2[2] = v5;
  v2[3] = v6;
  result.videoLarge = videoLarge.value;
  result.videoSmall = videoSmall.value;
  return result;
}

uint64_t sub_1DABE7780(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72614C6F65646976;
  }

  else
  {
    v4 = 0x616D536F65646976;
  }

  if (v3)
  {
    v5 = 0xEA00000000006C6CLL;
  }

  else
  {
    v5 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v6 = 0x72614C6F65646976;
  }

  else
  {
    v6 = 0x616D536F65646976;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006567;
  }

  else
  {
    v7 = 0xEA00000000006C6CLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DABE782C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE78B4()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABE7928()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE79AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DABE7A0C(uint64_t *a1@<X8>)
{
  v2 = 0x616D536F65646976;
  if (*v1)
  {
    v2 = 0x72614C6F65646976;
  }

  v3 = 0xEA00000000006567;
  if (!*v1)
  {
    v3 = 0xEA00000000006C6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DABE7A50()
{
  if (*v0)
  {
    result = 0x72614C6F65646976;
  }

  else
  {
    result = 0x616D536F65646976;
  }

  *v0;
  return result;
}

uint64_t sub_1DABE7A90@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DABE7AF4(uint64_t a1)
{
  v2 = sub_1DABE8000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE7B30(uint64_t a1)
{
  v2 = sub_1DABE8000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MultiSizeVideo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1DABE82A8(0, &qword_1ECBE8B38, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE8000();
  sub_1DACBA2F4();
  if (!v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    v40 = 0;
    sub_1DACB9F84();
    v12 = v39;
    v35 = v38;
    if (v39)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v34 = 0;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0x616D536F65646976;
      *(v16 + 5) = 0xEA00000000006C6CLL;
      v41 = v13;
      swift_endAccess();
      v12 = v34;
    }

    LOBYTE(v38) = 1;
    sub_1DACB9F84();
    if (v37)
    {
      v33 = v37;
      v17 = v35;
      v18 = *(v13 + 2);
      if (!v12)
      {
        v17 = 0;
      }

      v34 = v36;
      v35 = v17;
      if (!v12)
      {
        v12 = 0xE000000000000000;
      }

      if (!v18)
      {
        sub_1DAA41DCC();
        v27 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_26;
      }

      v32 = v12;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = sub_1DAA9A3B0((v19 > 1), v20 + 1, 1, v13);
        v21 = v34;
        v13 = v31;
      }

      *(v13 + 2) = v21;
      v22 = &v13[16 * v20];
      *(v22 + 4) = 0x72614C6F65646976;
      *(v22 + 5) = 0xEA00000000006567;
      v23 = v35;
      if (!v12)
      {
        v23 = 0;
      }

      v34 = 0;
      v35 = v23;
      if (v12)
      {
        v24 = v12;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      v32 = v24;
      v33 = 0xE000000000000000;
    }

    sub_1DAA41D64();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v25 + 56) = v26;
    *(v25 + 64) = sub_1DAAF691C();
    *(v25 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v27 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v12 = v32;
LABEL_26:

    (*(v7 + 8))(v10, v6);

    v28 = v34;
    *a2 = v35;
    a2[1] = v12;
    v29 = v33;
    a2[2] = v28;
    a2[3] = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABE8000()
{
  result = qword_1ECBE8B40;
  if (!qword_1ECBE8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B40);
  }

  return result;
}

uint64_t static MultiSizeVideo.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DACBA174(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DACBA174();
    }
  }

  return result;
}

uint64_t MultiSizeVideo.encode(to:)(void *a1)
{
  sub_1DABE82A8(0, &qword_1ECBE8B48, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABE8000();
  sub_1DACBA304();
  v17 = 0;
  v13 = v15[3];
  sub_1DACBA094();
  if (!v13)
  {
    v16 = 1;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1DABE82A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABE8000();
    v7 = a3(a1, &type metadata for MultiSizeVideo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABE8330()
{
  result = qword_1ECBE8B50;
  if (!qword_1ECBE8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B50);
  }

  return result;
}

unint64_t sub_1DABE8388()
{
  result = qword_1ECBE8B58;
  if (!qword_1ECBE8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B58);
  }

  return result;
}

unint64_t sub_1DABE83E0()
{
  result = qword_1ECBE8B60;
  if (!qword_1ECBE8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B60);
  }

  return result;
}

unint64_t sub_1DABE8438()
{
  result = qword_1ECBE8B68;
  if (!qword_1ECBE8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B68);
  }

  return result;
}

uint64_t sub_1DABE848C(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1DACB78E4();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_1DACB7E44() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_1DACB92E4();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = *(*(sub_1DACB7904() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABE860C, 0, 0);
}

uint64_t sub_1DABE860C()
{
  v1 = v0[9];
  sub_1DACB6D24();
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1DABE86D0;

  return sub_1DAC95D1C(v3, v2);
}

uint64_t sub_1DABE86D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_1DAB0F7B8;
  }

  else
  {
    v5 = sub_1DABE87E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}