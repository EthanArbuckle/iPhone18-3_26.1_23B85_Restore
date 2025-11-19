uint64_t sub_1D8DCB730()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB778()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB7C0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1D8DCB820()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB858()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB8C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB91C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB99C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB9E4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCBA68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCBAA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D917752C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DCBB4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917752C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCBC1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = XCTestCombineValidator.currentValues.getter();
  *a2 = result;
  return result;
}

void sub_1D8DCBC48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1D8F262F0(v4);
}

__n128 sub_1D8DCBC80(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1D8DCBCC8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D8DCBCD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D917744C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DCBD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917744C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCBE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LoggerTrace(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCBEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LoggerTrace(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCC024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D917739C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D8DCC134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D917739C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D917734C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D8DCC240(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D917739C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DCC2EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917739C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCC390(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_1D91791BC();
  sub_1D917768C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for RepublishingValueSubject();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D917776C();
  swift_getWitnessTable();
  sub_1D91775BC();
  swift_getWitnessTable();
  sub_1D91775AC();
  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC554()
{
  v1 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC59C()
{
  v1 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC5E4()
{
  v1 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC62C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC664()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC69C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCC6E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();
  sub_1D917768C();
  sub_1D91779FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D91776AC();
  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC82C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1D91775AC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC878(uint64_t *a1)
{
  v1 = a1[3];
  v4 = *a1;
  v3 = *(a1 + 1);
  sub_1D91775DC();
  swift_getWitnessTable();
  sub_1D917777C();
  return swift_getWitnessTable();
}

__n128 sub_1D8DCC974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCC98C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCC9C8()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCA10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCA4C()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

uint64_t sub_1D8DCCAC8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1D91774DC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D8DCCC30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1D91774DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCCCD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D91774DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DCCD80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D91774DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCCE24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DCCEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DCCF38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCF70()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD034()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD108()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD140()
{
  v1 = *(v0 + 4);
  v2 = *(*(v0 + 6) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 9);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD238()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD278()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD2B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCD2E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD324()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD36C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCD4B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD4F8()
{
  updated = type metadata accessor for FeedUpdateRequest();
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);
  v25 = *(*(updated - 1) + 64);
  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  v11 = *(v3 + updated[8] + 8);

  v12 = (v3 + updated[14]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v3 + updated[15]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v3 + updated[16]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = (v3 + updated[17]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = *(v3 + updated[18]);

  v21 = *(v3 + updated[19]);

  v22 = *(v3 + updated[20]);

  v23 = *(v0 + ((v25 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD790()
{
  v1 = *(v0 + 16);

  sub_1D8F58A60(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8DCD7D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD84C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCD8A4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D9176EAC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D8DCD95C()
{
  v32 = type metadata accessor for StoreFeedUpdater.Update(0);
  v1 = *(*(v32 - 8) + 80);
  v2 = (v1 + 16) & ~v1;
  v30 = *(*(v32 - 8) + 64);
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v29 = *(v4 + 64);
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v31 = v3;
  updated = type metadata accessor for FeedUpdateRequest();
  v8 = updated[5];
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = updated[6];
  if (!(*(v10 + 48))(v6 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  v13 = *(v6 + updated[8] + 8);

  v14 = (v6 + updated[14]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v6 + updated[15]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = (v6 + updated[16]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = (v6 + updated[17]);
  if (*v20)
  {
    v21 = v20[1];
  }

  v22 = (v30 + ((v1 + 16) & ~v1) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v6 + updated[18]);

  v24 = *(v6 + updated[19]);

  v25 = *(v6 + updated[20]);

  v26 = *(v6 + *(v32 + 32) + 8);

  v27 = *(v0 + v22);

  (*(v4 + 8))(v0 + ((v22 + v5 + 8) & ~v5), v31);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDC58()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCDC90()
{
  v1 = *(v0 + 16);

  sub_1D8F6F1DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDCE4()
{
  v1 = *(v0 + 16);

  sub_1D8F6F1DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 136);
  if (v4 != 255)
  {
    sub_1D8D85E5C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v4);
  }

  sub_1D8F6F1DC(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  if (*(v0 + 192))
  {
    v5 = *(v0 + 200);
  }

  v6 = *(v0 + 208);

  v7 = *(v0 + 216);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDD90()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDDCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDE1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCDE54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DCDEA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DCDEFC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D8DCDFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1D9176E3C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D8DCE040(void *a1)
{
  v1 = a1;

  return RecommendationsMetadata.Channels.Metadata.init(from:)(v1);
}

uint64_t sub_1D8DCE0E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE160()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCE198()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE1D0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE214()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCE24C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE284()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE484()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE550()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE62C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

__n128 sub_1D8DCE678(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D8DCE684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DCE7D8@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.sortTypeFromUserDefaults.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8DCE82C@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeListType.pubDateLimit.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8DCE880@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.hidePlayedEpisodes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8DCE8DC()
{
  sub_1D8F95794(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

id sub_1D8DCE960@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 adamID];
  *a2 = result;
  return result;
}

void sub_1D8DCEA6C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 setName_];
}

id sub_1D8DCEB10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interest];
  *a2 = result;
  return result;
}

id sub_1D8DCEC00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parent];
  *a2 = result;
  return result;
}

id sub_1D8DCECF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 episode];
  *a2 = result;
  return result;
}

void sub_1D8DCED44(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 setId_];
}

uint64_t sub_1D8DCEDF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MTChapter.timeframes.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCEE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return MTChapter.timeframes.setter();
}

id sub_1D8DCEE48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chapterTypeIntValue];
  *a2 = result;
  return result;
}

id sub_1D8DCEE90@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 chapterTypeIntValue];
  *a2 = result == 1;
  return result;
}

id sub_1D8DCEEE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 artworkWidth];
  *a2 = result;
  return result;
}

id sub_1D8DCEF30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 artworkHeight];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCF004()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF04C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF09C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF0E4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF12C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF174()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8 + 8);

  v11 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF2D8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF320()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF368()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF3A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF464()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF528()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

id sub_1D8DCF56C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 isTrailer];
  if (result)
  {
    v5 = 2;
  }

  else
  {
    result = [v3 isBonus];
    v5 = result ^ 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D8DCF5EC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF624()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D8DCF670()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF6A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D8DCF6F0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF728()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D8DCF770()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF7D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF894()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF8DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1D8DCF998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributedDescriptionFromHTML];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCFA04()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFA4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFA84()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFAD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFB14()
{

  return swift_deallocObject();
}

id sub_1D8DCFB6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 adamID];
  *a2 = result;
  return result;
}

id sub_1D8DCFBB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interestValue];
  *a2 = v4;
  return result;
}

void sub_1D8DCFC00(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  [v2 setLastUpdatedDate_];
}

id sub_1D8DCFC64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_1D8DCFCB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 podcast];
  *a2 = result;
  return result;
}

id sub_1D8DCFD04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 channel];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCFD54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = MTPodcast.episodeUserFilter.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D8DCFD88()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCFDE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D8DCFEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCFFC8()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

void sub_1D8DD003C(uint64_t *a1@<X8>)
{
  v2 = 0x64496D616461;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8DD007C()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x64496D616461;
  }

  *v0;
  return result;
}

uint64_t sub_1D8DD00D0()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0128()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1D8D7567C(*(v0 + 40), *(v0 + 48));
  v5 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0234()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0278()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD02C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0308()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0348()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0380()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD03C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_1D8DD0448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

uint64_t sub_1D8DD04EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DD053C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0574()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD05C4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0604()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + 48), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD0674()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD06CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0704()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + 32), v2);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD07F4()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v5 = *(v0 + v2 + 48);

  v6 = *(v0 + v2 + 56);

  v7 = *(v0 + v2 + 64);

  v8 = *(v0 + v2 + 72);

  v9 = *(v0 + v2 + 80);

  v10 = *(v0 + v2 + 88);

  v11 = *(v0 + v2 + 96);

  v12 = *(v0 + v2 + 104);

  v13 = *(v0 + v2 + 112);

  v14 = *(v0 + v2 + 120);

  v15 = *(v0 + v2 + 128);

  v16 = *(v0 + v2 + 136);

  v17 = *(v0 + v2 + 144);

  v18 = *(v0 + v2 + 176);

  v19 = *(v0 + v2 + 184);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v2 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = *(v4 + v1[29] + 8);

  v24 = *(v4 + v1[31] + 8);

  v25 = *(v4 + v1[32]);

  v26 = *(v4 + v1[33] + 8);

  v27 = *(v4 + v1[35] + 8);

  v28 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D8DD0A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD0AEC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0B2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0C40()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));
  sub_1D8D85E5C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
  v4 = *(v3 + 48);

  v5 = *(v3 + 56);

  v6 = *(v3 + 64);

  v7 = *(v3 + 72);

  v8 = *(v3 + 80);

  v9 = *(v3 + 88);

  v10 = *(v3 + 96);

  v11 = *(v3 + 104);

  v12 = *(v3 + 112);

  v13 = *(v3 + 120);

  v14 = *(v3 + 128);

  v15 = *(v3 + 136);

  v16 = *(v3 + 144);

  v17 = *(v3 + 176);

  v18 = *(v3 + 184);

  v19 = v1[28];
  v20 = sub_1D9176C2C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = *(v3 + v1[29] + 8);

  v23 = *(v3 + v1[31] + 8);

  v24 = *(v3 + v1[32]);

  v25 = *(v3 + v1[33] + 8);

  v26 = *(v3 + v1[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0E44()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 56);

  v9 = *(v0 + v2 + 64);

  v10 = *(v0 + v2 + 72);

  v11 = *(v0 + v2 + 80);

  v12 = *(v0 + v2 + 88);

  v13 = *(v0 + v2 + 96);

  v14 = *(v0 + v2 + 104);

  v15 = *(v0 + v2 + 112);

  v16 = *(v0 + v2 + 120);

  v17 = *(v0 + v2 + 128);

  v18 = *(v0 + v2 + 136);

  v19 = *(v0 + v2 + 144);

  v20 = *(v0 + v2 + 176);

  v21 = *(v0 + v2 + 184);

  v22 = v1[28];
  v23 = sub_1D9176C2C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v6 + v22, v23);
  }

  v25 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v6 + v1[29] + 8);

  v27 = *(v6 + v1[31] + 8);

  v28 = *(v6 + v1[32]);

  v29 = *(v6 + v1[33] + 8);

  v30 = *(v6 + v1[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD107C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D8DD10B8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D8DD10F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1148()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1220()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1274()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD12AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1304(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D8DD13B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1410(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1468()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD14A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D8DD150C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DD15CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DD1690()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD16D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1720()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD1758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1930()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD1968()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD19A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  return sub_1D8CFD9D8(v3 + v4, a2);
}

uint64_t sub_1D8DD1A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD1A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MediaRequest.Params();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DD1B10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediaRequest.Params();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD1BB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1BF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1D8DD1CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD1D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1D78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1DCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v3 = sub_1D917877C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1E9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1F88()
{
  v1 = *(v0 + 24);
  type metadata accessor for MediaAPIResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v2 = sub_1D917877C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = (v4 + v5 + *(*(v6 - 1) + 80)) & ~*(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  (*(v3 + 8))(v0 + v4, v2);
  v9 = v0 + v7;
  sub_1D8D85E5C(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 24), *(v0 + v7 + 32), *(v0 + v7 + 40));
  v10 = *(v0 + v7 + 48);

  v11 = *(v0 + v7 + 56);

  v12 = *(v0 + v7 + 64);

  v13 = *(v0 + v7 + 72);

  v14 = *(v0 + v7 + 80);

  v15 = *(v0 + v7 + 88);

  v16 = *(v0 + v7 + 96);

  v17 = *(v0 + v7 + 104);

  v18 = *(v0 + v7 + 112);

  v19 = *(v0 + v7 + 120);

  v20 = *(v0 + v7 + 128);

  v21 = *(v0 + v7 + 136);

  v22 = *(v0 + v7 + 144);

  v23 = *(v0 + v7 + 176);

  v24 = *(v0 + v7 + 184);

  v25 = v6[28];
  v26 = sub_1D9176C2C();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v7 + v25, 1, v26))
  {
    (*(v27 + 8))(v9 + v25, v26);
  }

  v28 = *(v9 + v6[29] + 8);

  v29 = *(v9 + v6[31] + 8);

  v30 = *(v9 + v6[32]);

  v31 = *(v9 + v6[33] + 8);

  v32 = *(v9 + v6[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD22B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD22E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2320()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD23B4()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD23FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2434()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2484()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD24C4()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD24FC()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD253C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2580()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v6 = *(v0 + v2 + 48);

  v7 = *(v0 + v2 + 56);

  v8 = *(v0 + v2 + 64);

  v9 = *(v0 + v2 + 72);

  v10 = *(v0 + v2 + 80);

  v11 = *(v0 + v2 + 88);

  v12 = *(v0 + v2 + 96);

  v13 = *(v0 + v2 + 104);

  v14 = *(v0 + v2 + 112);

  v15 = *(v0 + v2 + 120);

  v16 = *(v0 + v2 + 128);

  v17 = *(v0 + v2 + 136);

  v18 = *(v0 + v2 + 144);

  v19 = *(v0 + v2 + 176);

  v20 = *(v0 + v2 + 184);

  v21 = v1[28];
  v22 = sub_1D9176C2C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v2 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = *(v5 + v1[29] + 8);

  v25 = *(v5 + v1[31] + 8);

  v26 = *(v5 + v1[32]);

  v27 = *(v5 + v1[33] + 8);

  v28 = *(v5 + v1[35] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD278C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD27C4()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD27FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DD284C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD28E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2940(uint64_t *a1)
{
  qword_1ECAB9800 = *a1;
}

uint64_t sub_1D8DD2984()
{
  v1 = sub_1D917653C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2A5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2A94()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2ACC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2B04()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2B44()
{
  v1 = sub_1D917653C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2BCC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2C04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2C88()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2CC0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  }

  v4 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2D28()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 sub_1D8DD2DD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD2E04(uint64_t a1, uint64_t *a2)
{
  sub_1D8D088B4(a1, v5, &unk_1ECAB9920, &unk_1D91AD170);
  v3 = *a2;
  return sub_1D8D6A16C(v5);
}

uint64_t sub_1D8DD2E5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1D90707F4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD2E98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  sub_1D8D241C8(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8DD2EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D9068470();
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD2F14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D9068530();
}

uint64_t sub_1D8DD2F4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2F84()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2FBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DD300C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD30C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD310C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DD314C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3198()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 sub_1D8DD31F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD3200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v3 + v4, a2);
}

uint64_t sub_1D8DD32A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD32D8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3320()
{
  v1 = sub_1D917653C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D917653C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 112);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DD373C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 112);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD3854()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 168);

  return v1;
}

uint64_t sub_1D8DD3888()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 200);

  return v1;
}

id sub_1D8DD3950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD3A70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DD3B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD3BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DD3C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DD3CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD3DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD3E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD3F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD4024()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD4160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
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
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD422C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4394(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1D90A61DC(a1, a2);
}

uint64_t sub_1D8DD43EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD4464(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8DD44F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PlaybackIntent(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);

  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = v0 + ((v3 + v4 + v6) & ~v6);
  sub_1D8CFEACC(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  v10 = (v9 + v5[5]);
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v12 = *(v10 + 1);

    v13 = *(v10 + 3);

    v14 = *(v10 + 5);

    v15 = *(v10 + 11);

    v16 = *(v10 + 13);

    v17 = *(v10 + 15);

    v18 = v11[12];
    v19 = sub_1D9176C2C();
    v43 = *(v19 - 8);
    v20 = *(v43 + 48);
    if (!v20(&v10[v18], 1, v19))
    {
      (*(v43 + 8))(&v10[v18], v19);
    }

    v21 = *&v10[v11[13] + 8];

    v22 = *&v10[v11[17] + 8];

    v23 = v11[18];
    if (!v20(&v10[v23], 1, v19))
    {
      (*(v43 + 8))(&v10[v23], v19);
    }

    v24 = *&v10[v11[19] + 8];

    v25 = *&v10[v11[20]];

    v26 = v11[22];
    v27 = sub_1D9176E3C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v10[v26], 1, v27))
    {
      (*(v28 + 8))(&v10[v26], v27);
    }

    v29 = *&v10[v11[23] + 8];

    v30 = *&v10[v11[34] + 8];

    v31 = *&v10[v11[35]];

    v32 = *&v10[v11[36] + 8];

    v33 = *&v10[v11[37] + 8];

    v34 = v11[38];
    if (!v20(&v10[v34], 1, v19))
    {
      (*(v43 + 8))(&v10[v34], v19);
    }

    v35 = *&v10[v11[39] + 8];

    v36 = *&v10[v11[40] + 8];

    v37 = *&v10[v11[49] + 8];
  }

  v38 = v9 + v5[6];
  v39 = *(v38 + 40);
  if (v39 != 255)
  {
    sub_1D8CFEACC(*(v38 + 8), *(v38 + 16), *(v38 + 24), *(v38 + 32), v39);
  }

  if (*(v38 + 128) != 2)
  {
    sub_1D90AB0F8(*(v38 + 48), *(v38 + 56), *(v38 + 64), *(v38 + 72), *(v38 + 80), *(v38 + 88), *(v38 + 96), *(v38 + 104), *(v38 + 112));
  }

  v40 = *(v9 + v5[7]);

  v41 = *(v9 + v5[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4A04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4A6C()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4B30()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D8DD4B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4BB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  if (v2 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C00()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  if (v2 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4CE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 60) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D8DD4EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 60) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DD4FB0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5014()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v36 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v38 - 8);
  v33 = *(v2 + 80);
  v37 = *(v2 + 64);
  v39 = v0;
  v35 = (v36 + 16) & ~v36;
  v3 = v0 + v35;
  v4 = *(v0 + v35 + 8);

  v5 = *(v0 + v35 + 24);

  v6 = *(v0 + v35 + 40);

  v7 = *(v0 + v35 + 88);

  v8 = *(v0 + v35 + 104);

  v9 = *(v0 + v35 + 120);

  v10 = v1[12];
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v35 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v14 = *(v3 + v1[13] + 8);

  v15 = *(v3 + v1[17] + 8);

  v16 = v1[18];
  if (!v13(v3 + v16, 1, v11))
  {
    (*(v12 + 8))(v3 + v16, v11);
  }

  v17 = *(v3 + v1[19] + 8);

  v18 = *(v3 + v1[20]);

  v19 = v1[22];
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = *(v3 + v1[23] + 8);

  v23 = *(v3 + v1[34] + 8);

  v24 = *(v3 + v1[35]);

  v25 = *(v3 + v1[36] + 8);

  v26 = *(v3 + v1[37] + 8);

  v27 = v1[38];
  if (!v13(v3 + v27, 1, v11))
  {
    (*(v12 + 8))(v3 + v27, v11);
  }

  v28 = (v34 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v3 + v1[39] + 8);

  v30 = *(v3 + v1[40] + 8);

  v31 = *(v3 + v1[49] + 8);

  (*(v2 + 8))(v39 + ((v28 + v33 + 8) & ~v33), v38);

  return swift_deallocObject();
}

uint64_t sub_1D8DD53E8()
{
  v1 = *(v0 + 16);
  if (v1 >= 7)
  {
  }

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5438()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5488()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8DD54C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 persistentID];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD5508()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5558()
{
  v1 = *(v0 + 32);

  sub_1D8CFEACC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  v2 = *(v0 + 96);

  if (*(v0 + 184) != 2)
  {
    sub_1D90AB0F8(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  }

  v3 = *(v0 + 248);
  if (v3 != 255)
  {
    sub_1D8CFEACC(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), v3);
  }

  v4 = *(v0 + 256);

  v5 = *(v0 + 272);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5628()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5678()
{
  sub_1D8CFEACC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = *(v0 + 72);

  if (*(v0 + 160) != 2)
  {
    sub_1D90AB0F8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  v2 = *(v0 + 224);
  if (v2 != 255)
  {
    sub_1D8CFEACC(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2);
  }

  v3 = *(v0 + 232);

  v4 = *(v0 + 248);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5728()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return swift_deallocObject();
}

id sub_1D8DD5780@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storeTrackId];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD57D8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5810()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_1D8CFEACC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  v3 = *(v0 + 104);

  if (*(v0 + 192) != 2)
  {
    sub_1D90AB0F8(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  }

  v4 = *(v0 + 256);
  if (v4 != 255)
  {
    sub_1D8CFEACC(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), v4);
  }

  v5 = *(v0 + 272);

  v6 = *(v0 + 288);

  return swift_deallocObject();
}

uint64_t sub_1D8DD58D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  sub_1D8CFEACC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  v3 = *(v0 + 112);

  if (*(v0 + 200) != 2)
  {
    sub_1D90AB0F8(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  }

  v4 = *(v0 + 264);
  if (v4 != 255)
  {
    sub_1D8CFEACC(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD5984()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v35 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v37 - 8);
  v32 = *(v2 + 80);
  v36 = *(v2 + 64);
  v38 = v0;
  v34 = (v35 + 16) & ~v35;
  v3 = v0 + v34;
  v4 = *(v0 + v34 + 8);

  v5 = *(v0 + v34 + 24);

  v6 = *(v0 + v34 + 40);

  v7 = *(v0 + v34 + 88);

  v8 = *(v0 + v34 + 104);

  v9 = *(v0 + v34 + 120);

  v10 = v1[12];
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v14 = *(v3 + v1[13] + 8);

  v15 = *(v3 + v1[17] + 8);

  v16 = v1[18];
  if (!v13(v3 + v16, 1, v11))
  {
    (*(v12 + 8))(v3 + v16, v11);
  }

  v17 = *(v3 + v1[19] + 8);

  v18 = *(v3 + v1[20]);

  v19 = v1[22];
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = *(v3 + v1[23] + 8);

  v23 = *(v3 + v1[34] + 8);

  v24 = *(v3 + v1[35]);

  v25 = *(v3 + v1[36] + 8);

  v26 = *(v3 + v1[37] + 8);

  v27 = v1[38];
  if (!v13(v3 + v27, 1, v11))
  {
    (*(v12 + 8))(v3 + v27, v11);
  }

  v28 = *(v3 + v1[39] + 8);

  v29 = *(v3 + v1[40] + 8);

  v30 = *(v3 + v1[49] + 8);

  (*(v2 + 8))(v38 + ((v34 + v33 + v32) & ~v32), v37);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5D3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5D78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8DD5EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DD5FF0()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;
  v7 = *(v1 + v4);

  v8 = *(v1 + v4 + 8);

  v9 = *(v1 + v4 + 32);

  v10 = *(v1 + v4 + 56);

  v11 = *(v1 + v4 + 72);

  v12 = v1 + v4 + v2[9];
  v13 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    sub_1D8CFEACC(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
    v14 = (v12 + v13[5]);
    v15 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v89 = (v3 + 16) & ~v3;
      v91 = v1;
      v16 = *(v14 + 1);

      v17 = *(v14 + 3);

      v18 = *(v14 + 5);

      v19 = *(v14 + 11);

      v20 = *(v14 + 13);

      v21 = *(v14 + 15);

      v22 = v15[12];
      v23 = sub_1D9176C2C();
      v84 = *(v23 - 8);
      v86 = v22;
      v24 = &v14[v22];
      v25 = *(v84 + 48);
      if (!v25(v24, 1, v23))
      {
        (*(v84 + 8))(&v14[v86], v23);
      }

      v87 = v5;
      v26 = *&v14[v15[13] + 8];

      v27 = *&v14[v15[17] + 8];

      v28 = v15[18];
      v83 = v25;
      if (!v25(&v14[v28], 1, v23))
      {
        (*(v84 + 8))(&v14[v28], v23);
      }

      v29 = *&v14[v15[19] + 8];

      v30 = *&v14[v15[20]];

      v31 = v15[22];
      v32 = sub_1D9176E3C();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(&v14[v31], 1, v32))
      {
        (*(v33 + 8))(&v14[v31], v32);
      }

      v34 = *&v14[v15[23] + 8];

      v35 = *&v14[v15[34] + 8];

      v36 = *&v14[v15[35]];

      v37 = *&v14[v15[36] + 8];

      v38 = *&v14[v15[37] + 8];

      v39 = v15[38];
      if (!v83(&v14[v39], 1, v23))
      {
        (*(v84 + 8))(&v14[v39], v23);
      }

      v40 = *&v14[v15[39] + 8];

      v41 = *&v14[v15[40] + 8];

      v42 = *&v14[v15[49] + 8];

      v1 = v91;
      v5 = v87;
      v4 = v89;
    }

    v43 = v12 + v13[6];
    v44 = *(v43 + 40);
    if (v44 != 255)
    {
      sub_1D8CFEACC(*(v43 + 8), *(v43 + 16), *(v43 + 24), *(v43 + 32), v44);
    }

    if (*(v43 + 128) != 2)
    {
      sub_1D90AB0F8(*(v43 + 48), *(v43 + 56), *(v43 + 64), *(v43 + 72), *(v43 + 80), *(v43 + 88), *(v43 + 96), *(v43 + 104), *(v43 + 112));
    }

    v45 = *(v12 + v13[7]);

    v46 = *(v12 + v13[8] + 8);
  }

  v47 = *(v6 + v2[10]);

  v48 = (v6 + v2[11]);
  v49 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v49 - 1) + 48))(v48, 1, v49))
  {
    v88 = v5;
    v90 = v4;
    v50 = *(v48 + 1);

    v51 = *(v48 + 3);

    v52 = *(v48 + 5);

    v53 = *(v48 + 11);

    v54 = *(v48 + 13);

    v55 = *(v48 + 15);

    v56 = v49[12];
    v57 = sub_1D9176C2C();
    v85 = *(v57 - 8);
    v58 = *(v85 + 48);
    if (!v58(&v48[v56], 1, v57))
    {
      (*(v85 + 8))(&v48[v56], v57);
    }

    v92 = v1;
    v59 = *&v48[v49[13] + 8];

    v60 = *&v48[v49[17] + 8];

    v61 = v49[18];
    if (!v58(&v48[v61], 1, v57))
    {
      (*(v85 + 8))(&v48[v61], v57);
    }

    v62 = *&v48[v49[19] + 8];

    v63 = *&v48[v49[20]];

    v64 = v49[22];
    v65 = sub_1D9176E3C();
    v66 = *(v65 - 8);
    if (!(*(v66 + 48))(&v48[v64], 1, v65))
    {
      (*(v66 + 8))(&v48[v64], v65);
    }

    v67 = *&v48[v49[23] + 8];

    v68 = *&v48[v49[34] + 8];

    v69 = *&v48[v49[35]];

    v70 = *&v48[v49[36] + 8];

    v71 = *&v48[v49[37] + 8];

    v72 = v49[38];
    if (!v58(&v48[v72], 1, v57))
    {
      (*(v85 + 8))(&v48[v72], v57);
    }

    v73 = *&v48[v49[39] + 8];

    v74 = *&v48[v49[40] + 8];

    v75 = *&v48[v49[49] + 8];

    v1 = v92;
    v5 = v88;
    v4 = v90;
  }

  v76 = *(v6 + v2[15]);

  v77 = v6 + v2[17];
  v78 = *(v77 + 32);
  if (v78 != 255)
  {
    sub_1D8CFEACC(*v77, *(v77 + 8), *(v77 + 16), *(v77 + 24), v78);
  }

  v79 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = *(v6 + v2[18]);

  v81 = *(v1 + ((v4 + v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD6870()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;
  v7 = *(v1 + v4);

  v8 = *(v1 + v4 + 8);

  v9 = *(v1 + v4 + 32);

  v10 = *(v1 + v4 + 56);

  v11 = *(v1 + v4 + 72);

  v12 = v1 + v4 + v2[9];
  v13 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v88 = v5;
    sub_1D8CFEACC(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
    v14 = (v12 + v13[5]);
    v15 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v86 = v1;
      v16 = *(v14 + 1);

      v17 = *(v14 + 3);

      v18 = *(v14 + 5);

      v19 = *(v14 + 11);

      v20 = *(v14 + 13);

      v21 = *(v14 + 15);

      v85 = v15[12];
      v22 = sub_1D9176C2C();
      v23 = (*(v22 - 8) + 48);
      v80 = *(v22 - 8);
      v81 = *v23;
      if (!(*v23)(&v14[v85], 1, v22))
      {
        (*(v80 + 8))(&v14[v85], v22);
      }

      v83 = (v3 + 16) & ~v3;
      v24 = *&v14[v15[13] + 8];

      v25 = *&v14[v15[17] + 8];

      v26 = v15[18];
      if (!v81(&v14[v26], 1, v22))
      {
        (*(v80 + 8))(&v14[v26], v22);
      }

      v27 = *&v14[v15[19] + 8];

      v28 = *&v14[v15[20]];

      v29 = v15[22];
      v30 = sub_1D9176E3C();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(&v14[v29], 1, v30))
      {
        (*(v31 + 8))(&v14[v29], v30);
      }

      v32 = *&v14[v15[23] + 8];

      v33 = *&v14[v15[34] + 8];

      v34 = *&v14[v15[35]];

      v35 = *&v14[v15[36] + 8];

      v36 = *&v14[v15[37] + 8];

      v37 = v15[38];
      if (!v81(&v14[v37], 1, v22))
      {
        (*(v80 + 8))(&v14[v37], v22);
      }

      v38 = *&v14[v15[39] + 8];

      v39 = *&v14[v15[40] + 8];

      v40 = *&v14[v15[49] + 8];

      v1 = v86;
      v4 = v83;
    }

    v41 = v12 + v13[6];
    v42 = *(v41 + 40);
    if (v42 != 255)
    {
      sub_1D8CFEACC(*(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32), v42);
    }

    if (*(v41 + 128) != 2)
    {
      sub_1D90AB0F8(*(v41 + 48), *(v41 + 56), *(v41 + 64), *(v41 + 72), *(v41 + 80), *(v41 + 88), *(v41 + 96), *(v41 + 104), *(v41 + 112));
    }

    v43 = *(v12 + v13[7]);

    v44 = *(v12 + v13[8] + 8);

    v5 = v88;
  }

  v45 = *(v6 + v2[10]);

  v46 = (v6 + v2[11]);
  v47 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v47 - 1) + 48))(v46, 1, v47))
  {
    v89 = v5;
    v48 = *(v46 + 1);

    v49 = *(v46 + 3);

    v50 = *(v46 + 5);

    v51 = *(v46 + 11);

    v52 = *(v46 + 13);

    v53 = *(v46 + 15);

    v54 = v47[12];
    v55 = sub_1D9176C2C();
    v82 = *(v55 - 8);
    v56 = *(v82 + 48);
    if (!v56(&v46[v54], 1, v55))
    {
      (*(v82 + 8))(&v46[v54], v55);
    }

    v84 = v4;
    v87 = v1;
    v57 = *&v46[v47[13] + 8];

    v58 = *&v46[v47[17] + 8];

    v59 = v47[18];
    if (!v56(&v46[v59], 1, v55))
    {
      (*(v82 + 8))(&v46[v59], v55);
    }

    v60 = *&v46[v47[19] + 8];

    v61 = *&v46[v47[20]];

    v62 = v47[22];
    v63 = sub_1D9176E3C();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(&v46[v62], 1, v63))
    {
      (*(v64 + 8))(&v46[v62], v63);
    }

    v65 = *&v46[v47[23] + 8];

    v66 = *&v46[v47[34] + 8];

    v67 = *&v46[v47[35]];

    v68 = *&v46[v47[36] + 8];

    v69 = *&v46[v47[37] + 8];

    v70 = v47[38];
    if (!v56(&v46[v70], 1, v55))
    {
      (*(v82 + 8))(&v46[v70], v55);
    }

    v71 = *&v46[v47[39] + 8];

    v72 = *&v46[v47[40] + 8];

    v73 = *&v46[v47[49] + 8];

    v1 = v87;
    v4 = v84;
    v5 = v89;
  }

  v74 = *(v6 + v2[15]);

  v75 = v6 + v2[17];
  v76 = *(v75 + 32);
  if (v76 != 255)
  {
    sub_1D8CFEACC(*v75, *(v75 + 8), *(v75 + 16), *(v75 + 24), v76);
  }

  v77 = *(v6 + v2[18]);

  v78 = *(v1 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void *sub_1D8DD70B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_1D8DD70C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D8DD7118()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D8DD7160()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D8DD71B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_1D8DD7230(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t sub_1D8DD7240()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DD72C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD72F8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

__n128 sub_1D8DD738C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD7398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD73D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD7410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_1D90FF4FC(v4);
}

__n128 sub_1D8DD7448(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD745C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD74E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7524@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD7588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DD75D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DD7638()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7678()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7740()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7778()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

__n128 sub_1D8DD77C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD77D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D8DD78DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DD7964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DD79BC()
{
  v1 = *(type metadata accessor for EyebrowBuilder.ListContext(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v4 = type metadata accessor for EpisodePlayState();
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4) && swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = sub_1D9176E3C();
      v6 = *(v5 - 8);
      if (!(*(v6 + 48))(v0 + v2, 1, v5))
      {
        (*(v6 + 8))(v0 + v2, v5);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD7BF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7C30()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7C68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7CDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7D2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7DA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7DDC()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  sub_1D9138248(*(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
  v10 = *(v0 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7F20()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7F68()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7FA0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DD7FE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD8020()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8058()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8098()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8DD80D4(uint64_t *a1)
{
  v1 = *a1;
  sub_1D91791BC();
  sub_1D91788EC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DD8128(uint64_t *a1)
{
  v1 = *a1;
  sub_1D91791BC();
  sub_1D91788EC();
  swift_getWitnessTable();
  sub_1D917965C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DD81BC()
{
  v1 = *(v0 + 16);
  sub_1D91791BC();
  v2 = sub_1D91788CC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);

  v6 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8DD827C()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD82F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD8370()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD83A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_1D8DD8444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D8DD849C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD84DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD8514()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD855C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8594()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD85F0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8628()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD8668()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1D8DD8704(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD8720()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8758()
{
  v1 = sub_1D9177EDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1D8DD8828@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_1ECABB648;
  *a1 = qword_1ECABB648;
  return result;
}

uint64_t sub_1D8DD8874(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1ECABB648 = v1;
  return result;
}

uint64_t sub_1D8DD88C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1D8DD8904(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D8CFCC6C(v2);
}

uint64_t sub_1D8DD8954()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD898C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD89C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD89FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8A3C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8A7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD8B30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8DD8BB4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ECAB3740 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures);
  return result;
}

char *sub_1D8DD8C20(char *result)
{
  v1 = *result;
  if (qword_1ECAB3740 != -1)
  {
    result = swift_once();
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = v1;
  return result;
}

uint64_t sub_1D8DD8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for PerformanceLoadable();
  return sub_1D8D86B9C(a1, v6);
}

uint64_t sub_1D8DD8CFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8D34()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8D74()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8DAC()
{
  if (*v0)
  {
    result = 0x6E6572646C696863;
  }

  else
  {
    result = 0x746C75736572;
  }

  *v0;
  return result;
}

uint64_t sub_1D8DD8DE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8E24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8E6C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

void sub_1D8DD8EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Synchronized();
  sub_1D8D1665C(a1, v6);
}

uint64_t sub_1D8DD8FA8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = -769513831 * a2;
  v4 = (qword_1F548A1D0[-769513831 * a2 + 2])();
  qword_1F548A1D0[v3 + 1](a1);
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD9080@<X0>(int a1@<W8>)
{
  v3 = (-21985942 * v1) | a1;
  v4 = (qword_1F548A1D0[v3 - 1])(200);
  return (*(v2 + 8 * (v3 + 2 * (v4 != 0))))();
}

uint64_t sub_1D8DD90EC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = (*(v5 + 8 * (v6 + a2 * (v4 - 1) + 21985945)))(a1, 0);
  if (v8 == 16)
  {
    v3 = 1537719254;
    goto LABEL_7;
  }

  if (v8 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 + 21985943)))(a1);
    return (1510190423 * v3 + 277669913);
  }

  if (v8)
  {
    v3 = 292433263;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 1191165937;
  return (1510190423 * v3 + 277669913);
}

id IMAccessibilityLocalizedNumber(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:IMThreadLocalLocalizedNumberFormatter];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    [v4 setLocale:v5];

    v6 = [MEMORY[0x1E696AF00] currentThread];
    v7 = [v6 threadDictionary];
    [v7 setObject:v4 forKey:IMThreadLocalLocalizedNumberFormatter];
  }

  v8 = [v4 stringFromNumber:v1];

  return v8;
}

uint64_t isRunningUnitTests()
{
  if (isRunningUnitTests_onceToken != -1)
  {
    isRunningUnitTests_cold_1();
  }

  return isRunningUnitTests_isXCTestLoaded;
}

Class __isRunningUnitTests_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  isRunningUnitTests_isXCTestLoaded = result != 0;
  return result;
}

__CFString *NSPersistentStringFromMTStopReason(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"none";
  }

  else
  {
    return off_1E8568E70[a1 - 1];
  }
}

uint64_t MTStopReasonFromNSPersistentString(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([@"complete" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"playOther" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"pause" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"seek" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"transition" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"interrupted" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"background" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"exit" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"inactivity" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"error" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"failure" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"buffering" isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([@"next" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"markPlayed" isEqualToString:v1])
  {
    v2 = 14;
  }

  else if ([@"markUnplayed" isEqualToString:v1])
  {
    v2 = 15;
  }

  else
  {
    if (([@"none" isEqualToString:v1] & 1) == 0)
    {
      v3 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543362;
        v7 = v1;
        _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Unable to convert unknown stop reason identifer: %{public}@", &v6, 0xCu);
      }
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

__CFString *NSPersistentStringFromMTPlaybackAdjustmentInitiator(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Automatic";
  }

  if (a1 == 1)
  {
    return @"Manual";
  }

  else
  {
    return v1;
  }
}

id NSPersistentStringForMTPlayReason(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTPlayReasonToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Invalid MTPlayReason encountered (%d)", v9, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v8 = MTPlayReasonToPersistentStringMap_inverted(0);
    v4 = [v8 objectForKey:&unk_1F54BD550];
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id MTPlayReasonToPersistentStringMap_inverted(int a1)
{
  if (MTPlayReasonToPersistentStringMap_inverted_onceToken != -1)
  {
    MTPlayReasonToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTPlayReasonToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTPlayReasonToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTPlayReasonFromPersistentString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTPlayReasonToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTPlayReason persistent string encountered (%@)", &v8, 0xCu);
    }

    v3 = &unk_1F54BD550;
  }

  v5 = [v3 unsignedIntegerValue];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

id NSPersistentStringForMTEpisodeContext(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodeContextToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContext encountered (%d)", v9, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v8 = MTEpisodeContextToPersistentStringMap_inverted(0);
    v4 = [v8 objectForKey:&unk_1F54BD568];
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id MTEpisodeContextToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodeContextToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodeContextToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodeContextToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodeContextToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTEpisodeContextFromPersistentString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTEpisodeContextToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContext persistent string encountered (%@)", &v8, 0xCu);
    }

    v3 = &unk_1F54BD568;
  }

  v5 = [v3 unsignedIntegerValue];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

id NSPersistentStringForMTEpisodeContextSortType(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContextSortType encountered (%d)", v9, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v8 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
    v4 = [v8 objectForKey:&unk_1F54BD568];
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id MTEpisodeContextSortTypeToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodeContextSortTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodeContextSortTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodeContextSortTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTEpisodeContextSortTypeFromPersistentString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContextSortType persistent string encountered (%@)", &v8, 0xCu);
    }

    v3 = &unk_1F54BD568;
  }

  v5 = [v3 unsignedIntegerValue];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

id NSPersistentStringForMTEpisodePriceType(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodePriceTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_ERROR, "Invalid MTEpisodePriceType encountered (%d)", v9, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v8 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
    v4 = [v8 objectForKey:&unk_1F54BD568];
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id NSPersistentStringForMTDisplayType(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTDisplayTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (![v4 length])
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a1;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Invalid MTDisplayType encountered (%d)", v8, 8u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1D8DDBBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8DDBD14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D8DDC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DE86B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D8DE88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DE8A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id jsonSerializableValueForCoreFoundationType(void *a1, void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 isEqualToString:@"SecCertificate"])
  {
    v5 = v4;
    v6 = v5;
    if (v5)
    {
      v33 = @"cfTypeName";
      v34[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v8 = [v7 mutableCopy];

      v9 = SecCertificateCopySubjectSummary(v3);
      if (v9)
      {
        [v8 setValue:v9 forKey:@"subjectSummary"];
      }

      emailAddresses = 0;
      v10 = SecCertificateCopyEmailAddresses(v3, &emailAddresses);
      v11 = emailAddresses;
      if (!v10 && emailAddresses)
      {
        v12 = jsonSerializableValueForValue(emailAddresses);
        [v8 setValue:v12 forKey:@"emailAddresses"];
      }

      commonName = 0;
      v13 = SecCertificateCopyCommonName(v3, &commonName);
      v14 = commonName;
      if (!v13 && commonName)
      {
        [v8 setValue:commonName forKey:@"commonName"];
      }

      error = 0;
      v15 = SecCertificateCopySerialNumberData(v3, &error);
      v16 = v15;
      if (!error)
      {
        v17 = jsonSerializableValueForValue(v15);
        [v8 setValue:v17 forKey:@"serialNumberData"];
      }

      v18 = SecCertificateCopyKey(v3);
      v19 = SecKeyCopyExternalRepresentation(v18, &error);
      CFRelease(v18);
      if (!error)
      {
        v20 = jsonSerializableValueForValue(v19);
        [v8 setValue:v20 forKey:@"publicKeyData"];
      }

      v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];

LABEL_23:
LABEL_25:

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ([v4 isEqualToString:@"SecTrust"])
  {
    v22 = v4;
    v6 = v22;
    if (v22)
    {
      v33 = @"cfTypeName";
      v34[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v8 = [v23 mutableCopy];

      v24 = SecTrustCopyKey(v3);
      emailAddresses = 0;
      v9 = SecKeyCopyExternalRepresentation(v24, &emailAddresses);
      CFRelease(v24);
      if (!emailAddresses)
      {
        v25 = jsonSerializableValueForValue(v9);
        [v8 setValue:v25 forKey:@"serialNumberData"];
      }

      v26 = SecTrustCopyResult(v3);
      v11 = v26;
      if (v26)
      {
        v27 = jsonSerializableValueForValue(v26);
        [v8 setValue:v27 forKey:@"trustResult"];
      }

      v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
      goto LABEL_23;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-serializable type '%@'", v4];
LABEL_27:

  v28 = *MEMORY[0x1E69E9840];

  return v21;
}

id IMTimeStamp()
{
  [MEMORY[0x1E696AB78] setDefaultFormatterBehavior:1040];
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSS"];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 stringFromDate:v1];

  return v2;
}

os_log_t _IMStoreLogCategoryDefault()
{
  v0 = os_log_create("com.apple.podcasts.imstoreutil", "Podcasts");

  return v0;
}

os_log_t _MTLogCategoryMediaLibrary()
{
  v0 = os_log_create("com.apple.podcasts", "MediaLibrary");

  return v0;
}

os_log_t _MTLogCategoryDRM()
{
  v0 = os_log_create("com.apple.podcasts", "DRM");

  return v0;
}

os_log_t _MTLogCategoryPlayback()
{
  v0 = os_log_create("com.apple.podcasts", "Playback");

  return v0;
}

os_log_t _MTLogCategoryMediaRemote()
{
  v0 = os_log_create("com.apple.podcasts", "MediaRemote");

  return v0;
}

os_log_t _MTLogCategoryMediaRemoteRouting()
{
  v0 = os_log_create("com.apple.podcasts", "MediaRemoteRouting");

  return v0;
}

os_log_t _MTLogCategoryFeedUpdateIngester()
{
  v0 = os_log_create("com.apple.podcasts", "FeedUpdateIngester");

  return v0;
}

os_log_t _MTLogCategoryArtworkDownload()
{
  v0 = os_log_create("com.apple.podcasts", "ArtworkDownload");

  return v0;
}

os_log_t _MTLogCategoryNotifications()
{
  v0 = os_log_create("com.apple.podcasts", "Notifications");

  return v0;
}

os_log_t _MTLogCategorySiri()
{
  v0 = os_log_create("com.apple.podcasts", "Siri");

  return v0;
}

os_log_t _MTLogCategorySpotlight()
{
  v0 = os_log_create("com.apple.podcasts", "Spotlight");

  return v0;
}

os_log_t _MTLogCategoryCarPlay()
{
  v0 = os_log_create("com.apple.podcasts", "CarPlay");

  return v0;
}

os_log_t _MTLogCategoryBridge()
{
  v0 = os_log_create("com.apple.podcasts", "Bridge");

  return v0;
}

os_log_t _MTLogCategoryUPPSync()
{
  v0 = os_log_create("com.apple.podcasts", "UPPSync");

  return v0;
}

os_log_t _MTLogCategoryAsyncTask()
{
  v0 = os_log_create("com.apple.podcasts", "AsyncTask");

  return v0;
}

os_log_t _MTLogCategoryiTunesMigration()
{
  v0 = os_log_create("com.apple.podcasts", "iTunesMigration");

  return v0;
}

os_log_t _MTLogCategoryMacOSSpecific()
{
  v0 = os_log_create("com.apple.podcasts", "MacOS");

  return v0;
}

os_log_t _MTLogCategoryAppRemoval()
{
  v0 = os_log_create("com.apple.podcasts", "AppRemoval");

  return v0;
}

os_log_t _MTLogCategoryQuickLook()
{
  v0 = os_log_create("com.apple.podcasts", "QuickLook");

  return v0;
}

os_log_t _MTLogCategoryFollowing()
{
  v0 = os_log_create("com.apple.podcasts", "Following");

  return v0;
}

os_log_t _MTLogCategoryFeedUpdateTelemetry()
{
  v0 = os_log_create("com.apple.podcasts", "FUTelemetry");

  return v0;
}

uint64_t _MTDatabaseCreatedNotification(uint64_t a1, void *a2)
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess did get database created notification", v5, 2u);
  }

  return [a2 _handleChange];
}

void sub_1D8DF6354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF6514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF7B7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    objc_end_catch();
    if (v19)
    {
      v20 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_ERROR, "Request for invalid computed property value! %@", &buf, 0xCu);
      }

      JUMPOUT(0x1D8DF7A98);
    }

    JUMPOUT(0x1D8DF7A9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1D8DF7F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF81D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF87AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF8B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFD014(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    (*(*(v2 + 48) + 16))();

    objc_end_catch();
    JUMPOUT(0x1D8DFCFE4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D8E0197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E01B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PFMostRestrictiveLimit(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v13 = *MEMORY[0x1E69E9840];
  if (result > 5)
  {
    if ((result - 6) < 4)
    {
      if (a2 - 6 > 3)
      {
        if (a2 == 0x100000000)
        {
          v7 = 0x100000000;
        }

        else
        {
          v7 = result;
        }

        if (result - 5 >= a2)
        {
          v8 = a2;
        }

        else
        {
          v8 = result;
        }

        if (a2 - 1 <= 4)
        {
          v2 = v8;
        }

        else
        {
          v2 = v7;
        }

        goto LABEL_33;
      }

      goto LABEL_15;
    }

    if (result != 0x100000000)
    {
LABEL_30:
      v9 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = v3;
        _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_ERROR, "Attempting to compare an incompatible episode limit: %lld", &v11, 0xCu);
      }

      goto LABEL_33;
    }

    v2 = 0x100000000;
LABEL_33:
    v10 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if ((result - 1) >= 5)
  {
    if (result)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (a2 - 1 > 4)
  {
    if (a2 == 0x100000000)
    {
      v4 = 0x100000000;
    }

    else
    {
      v4 = result;
    }

    if (result + 5 <= a2)
    {
      v5 = result;
    }

    else
    {
      v5 = a2;
    }

    if (a2 - 6 <= 3)
    {
      v2 = v5;
    }

    else
    {
      v2 = v4;
    }

    goto LABEL_33;
  }

LABEL_15:
  if (result >= a2)
  {
    result = a2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t PFMostPermissiveLimit(uint64_t a1, unint64_t a2)
{
  if (PFMostRestrictiveLimit(a1, a2) == a1)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void sub_1D8E06B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E06EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E071E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E075A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E07AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E07DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E08094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E082B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E0871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E08C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, char a22)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E091C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E0936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreDaemonLibrary();
  result = dlsym(v2, "ASDSubscriptionEntitlementsPodcastDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D8E0E5D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D8E0F434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8E0F658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ReachabilityCallback(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E698C968] "sharedConfig")])
  {
    goto LABEL_15;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if ((a2 & 2) != 0)
  {
    [v5 addObject:@"reachable"];
    if ((a2 & 0x40000) == 0)
    {
LABEL_4:
      if ((a2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((a2 & 0x40000) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"wwan"];
  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v6 addObject:@"automatic"];
  if ((a2 & 0x20) == 0)
  {
LABEL_6:
    if ((a2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v6 addObject:@"on-demand"];
  if ((a2 & 8) == 0)
  {
LABEL_7:
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v6 addObject:@"on-traffic"];
  if ((a2 & 4) == 0)
  {
LABEL_8:
    if ((a2 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v6 addObject:@"connection-required"];
  if ((a2 & 0x20000) == 0)
  {
LABEL_9:
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    [v6 addObject:@"local"];
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  [v6 addObject:@"direct"];
  if ((a2 & 0x10000) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (a2)
  {
LABEL_11:
    [v6 addObject:@"transient"];
  }

LABEL_12:
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = [v6 componentsJoinedByString:{@", "}];
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "%@: Reachability change: %d (%@)", &v9, 0x1Cu);
  }

LABEL_15:
  os_unfair_lock_lock(a3 + 14);
  [(os_unfair_lock_s *)a3 _reloadNetworkTypeWithReachabilityFlags:a2];
  os_unfair_lock_unlock(a3 + 14);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D8E12784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:kReachabilityChangedNotification object:v4];
}

uint64_t MTPlaybackContinuousPlaybackEnabled()
{
  if (+[PFClientUtil isRunningOnHomepod])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 BOOLForKey:@"MTContinuousPlaybackEnabled"];

  return v2;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E142E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *PFTTMLDictionaryKeyForTimeAttribute(uint64_t a1)
{
  v1 = @"dur";
  if (a1 == 1)
  {
    v1 = @"begin";
  }

  if (a1 == 2)
  {
    return @"end";
  }

  else
  {
    return v1;
  }
}

__CFString *PFTTMLDictionaryKeyForStringAttribute(uint64_t a1)
{
  v1 = @"ttm:agent";
  if (a1 == 1)
  {
    v1 = @"xml:id";
  }

  if (a1 == 2)
  {
    return @"ttm:name";
  }

  else
  {
    return v1;
  }
}

uint64_t PFTTMLTypeForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"span"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ttm:agent"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ttm:name"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"p"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"body"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"div"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  return v2;
}

void sub_1D8E1662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getkSymptomDiagnosticReplySuccess()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  v8 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySuccessSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v6[3] = dlsym(v1, "kSymptomDiagnosticReplySuccess");
    getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t IMGetMemoryStatistics(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 | a2)
  {
    memset(v11, 0, 40);
    task_info_outCnt[0] = 10;
    if (task_info(*MEMORY[0x1E69E9A60], 0x12u, v11, task_info_outCnt))
    {
      return 0;
    }

    if (a1)
    {
      *a1 = *(v11 + 4);
    }

    if (a2)
    {
      *a2 = *(v11 + 12);
    }
  }

  if (a3 | a4)
  {
    *task_info_outCnt = 0;
    v8 = MEMORY[0x1DA72BF30]();
    host_info_outCnt = 15;
    host_page_size(v8, task_info_outCnt);
    memset(v11, 0, 60);
    if (host_statistics(v8, 2, v11, &host_info_outCnt))
    {
      return 0;
    }

    v10 = *task_info_outCnt;
    if (a3)
    {
      *a3 = *task_info_outCnt * LODWORD(v11[0]);
    }

    if (a4)
    {
      *a4 = v10 * LODWORD(v11[0]) + ((DWORD2(v11[0]) + DWORD1(v11[0]) + HIDWORD(v11[0])) * v10);
    }
  }

  return 1;
}

uint64_t MT_isDispatchSourceDataVfsConstrainedDisk(uint64_t a1)
{
  v1 = a1 == 0x2000;
  if (a1 == 4096)
  {
    v1 = 1;
  }

  return a1 == 4 || v1;
}

void sub_1D8E1F4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t mt_randomPersistID()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v4[0] = 0;
  v4[1] = 0;
  [v0 getUUIDBytes:v4];
  v1 = v4[0];

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1D8E20534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E21E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D8E22848(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E22868(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceCapabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceCapabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HexColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HexColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D8E22A9C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917712C();
}

uint64_t sub_1D8E22B28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E22B94()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E22C08()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E22C4C(uint64_t a1, id *a2)
{
  result = sub_1D91781EC();
  *a2 = 0;
  return result;
}

uint64_t sub_1D8E22CC4(uint64_t a1, id *a2)
{
  v3 = sub_1D91781FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D8E22D44@<X0>(uint64_t *a1@<X8>)
{
  sub_1D917820C();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  *a1 = v2;
  return result;
}

uint64_t sub_1D8E22D88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E22E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8E22E94()
{
  sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);

  return sub_1D9176A4C();
}

uint64_t sub_1D8E22F00(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D8E22F6C(void *a1, uint64_t a2)
{
  v4 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D8E23020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D8E2309C()
{
  v2 = *v0;
  sub_1D9179DBC();
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E230FC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917713C();
}

uint64_t sub_1D8E23148()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917712C();
}

uint64_t sub_1D8E231B8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB4008, type metadata accessor for AVMetadataKey);
  v3 = sub_1D8E22E3C(&qword_1ECAB4010, type metadata accessor for AVMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23274(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E68, type metadata accessor for Name);
  v3 = sub_1D8E22E3C(&qword_1ECAB3E70, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23330(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
  v3 = sub_1D8E22E3C(&qword_1ECAB3EA0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E2347C(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E88, type metadata accessor for URLResourceKey);
  v3 = sub_1D8E22E3C(&unk_1ECAB3E90, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23610(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01C0, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D8E2367C(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01C0, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D8E236E8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D8E23754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8E22E3C(&qword_1ECAB01B8, type metadata accessor for AMSError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D8E237D8(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB3E78, type metadata accessor for PFAnalyticsEventName);
  v3 = sub_1D8E22E3C(&qword_1ECAB3E80, type metadata accessor for PFAnalyticsEventName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23894(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D917711C();
}

uint64_t sub_1D8E23A20()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917713C();
}

uint64_t sub_1D8E23A6C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917712C();
}

uint64_t sub_1D8E23ADC()
{
  sub_1D9179DBC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D917712C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E23B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  *a2 = v5;
  return result;
}

uint64_t sub_1D8E23B88(uint64_t a1)
{
  v2 = sub_1D8E22E3C(&qword_1ECAB4018, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1D8E22E3C(&qword_1ECAB4020, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8E23C44()
{
  v1 = *v0;
  v2 = sub_1D917820C();
  v3 = MEMORY[0x1DA729970](v2);

  return v3;
}

uint64_t sub_1D8E23C80()
{
  v1 = *v0;
  sub_1D917820C();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E23CD4()
{
  v1 = *v0;
  sub_1D917820C();
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1D9179E1C();

  return v2;
}

uint64_t sub_1D8E23D48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D917820C();
  v6 = v5;
  if (v4 == sub_1D917820C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8E23FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E23FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_1D8E2439C(uint64_t a1, unint64_t *a2)
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

uint64_t dispatch thunk of CategoriesSyncThresholdProviding.getCategoriesSyncThreshold()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8E24548;

  return v9(a1, a2);
}

uint64_t sub_1D8E24548(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t CategoriesSyncUtil.CategoriesSyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E246CC()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E24714()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t CategoriesSyncUtil.__allocating_init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 48);
  v21 = *(v6 + 52);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = 0;
  sub_1D8CFD9D8(a1, v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  sub_1D8CFD9D8(a2, v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  *(v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester) = a3;
  sub_1D8CF6B1C(a4, v14);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    sub_1D9176CEC();
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v23(v14, 1, v15) != 1)
    {
      sub_1D8D08A50(v14, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v16 + 32))(v19, v14, v15);
  }

  (*(v16 + 32))(v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v19, v15);
  v24 = v27;
  *(v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue) = v26;
  *(v22 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) = v24;
  return v22;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t CategoriesSyncUtil.syncCategories(forced:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9177E9C();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1ECAB0BF8);
  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v15;
    v20 = v11;
    v21 = v4;
    v22 = v8;
    v23 = v12;
    v24 = a2;
    v25 = a3;
    v26 = a1;
    v27 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "[Categories Sync] Starting to sync categories.", v19, 2u);
    v28 = v27;
    a1 = v26;
    a3 = v25;
    a2 = v24;
    v12 = v23;
    v8 = v22;
    v4 = v21;
    v11 = v20;
    v15 = v33;
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v29 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue);
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  *(v30 + 24) = a1 & 1;
  *(v30 + 32) = a2;
  *(v30 + 40) = a3;
  aBlock[4] = sub_1D8DBE164;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor;
  v31 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2);
  sub_1D9177E4C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB20(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v31);
  _Block_release(v31);
  (*(v35 + 8))(v11, v8);
  (*(v12 + 8))(v15, v34);
}

uint64_t sub_1D8E24E30@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0BF8);
  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "[Categories Sync] Preparing Media API request.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A8, &qword_1D9188C20);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = sub_1D9177A5C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8E24F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx);
  v6 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1D8E25FF8;
  v9[4] = v8;
  v9[5] = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B0, &qword_1D9188C28);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = v5;
  v14 = v6;
  result = sub_1D9177A5C();
  *a3 = result;
  return result;
}

void sub_1D8E2507C(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1ECAB0BF8);
  v9 = sub_1D917741C();
  v10 = sub_1D9178D1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "[Categories Sync] Successfully synced categories.", v11, 2u);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_1D9176E0C();
  v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  (*(v4 + 8))(v7, v3);
  [v12 setObject:v13 forKey:@"kMTLastCategoriesSyncDateDefaultKey"];

  if (a2)
  {
    a2(1, 0);
  }
}

uint64_t sub_1D8E25278()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8E252E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = (a3 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  v8 = *(a3 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider + 24);
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8D9F2C8;
  *(v10 + 24) = v6;
  v11 = *(v9 + 8);

  v11(sub_1D8E2605C, v10, v8, v9);
}

void sub_1D8E253DC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v3;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();
    sub_1D8D99898(v3, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[Categories Sync] Failed to fetch categories with error: %@", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v11 = v3;
    v12 = 1;
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v13 = *a1;
    }

    if (sub_1D917935C() >= 1)
    {
      goto LABEL_9;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_9:
    v11 = v3;
    v12 = 0;
LABEL_10:
    a2(v11, v12);
    return;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1ECAB0BF8);
  v15 = sub_1D917741C();
  v16 = sub_1D9178CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "[Categories Sync] Server response is missing categories.", v17, 2u);
    MEMORY[0x1DA72CB90](v17, -1, -1);
  }

  sub_1D8DBFC08();
  v18 = swift_allocError();
  *v19 = 2;
  a2(v18, 1);
}

uint64_t sub_1D8E256A4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2;
    if (a2 >> 62)
    {
      result = sub_1D917935C();
      v5 = a2;
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx;
        v22 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester;
        v23 = v5 & 0xC000000000000001;
        v9 = v5;
        do
        {
          if (v23)
          {
            v14 = MEMORY[0x1DA72AA90](v7);
          }

          else
          {
            v14 = *(v5 + 8 * v7 + 32);
          }

          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = *(v4 + v8);
          v18 = sub_1D8FE6808(v15, v16);
          NSManagedObjectContext.unsafeCategory(forAdamID:)(v18);
          v20 = v19;

          if (v20)
          {
            v21 = *(v4 + v22);
            v12 = [swift_unknownObjectRetain() unsafeIngestCategoryWithCategory:v20 feedCategory:v14 ctx:*(v4 + v8)];

            swift_unknownObjectRelease();
          }

          else
          {
            v10 = *(v4 + v22);
            v11 = *(v4 + v8);
            swift_unknownObjectRetain();
            v12 = v11;
            v13 = [v10 unsafeIngestNewCategoryWithCtx:v12 feedCategory:v14];
            swift_unknownObjectRelease();
          }

          ++v7;

          v5 = v9;
        }

        while (v6 != v7);
      }
    }

    [*(v4 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) saveInCurrentBlock];
  }

  return result;
}

uint64_t CategoriesSyncUtil.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider));

  v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession);

  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CategoriesSyncUtil.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate;
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider));

  v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession);

  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

void sub_1D8E25AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v15[4] = sub_1D8E2600C;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_39;
  v13 = _Block_copy(v15);

  v14 = a6;

  [a3 performBlock_];
  _Block_release(v13);
}

uint64_t sub_1D8E25BC4(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  aBlock[4] = sub_1D8E2601C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_45;
  v19 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB20(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v17, v22);
}

uint64_t sub_1D8E25EA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1D8E25EF4()
{
  result = qword_1ECAB4160;
  if (!qword_1ECAB4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4160);
  }

  return result;
}

uint64_t sub_1D8E25F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8E25FC0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D8E2601C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 0;
  return v1(&v4);
}

uint64_t sub_1D8E26074()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0BF8);
  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178CFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_1D9176A5C();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[Categories Sync] Could not get the threshold value from bag with error: %@", v9, 0xCu);
    sub_1D8E262AC(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v12 = v0[22];

  swift_willThrow();
  v13 = v0[1];
  v14 = v0[22];

  return v13();
}

_BYTE **sub_1D8E26228(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1D8E26238(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1D8E262AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MAPICategoriesProvider.__allocating_init(mediaRequestController:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D8D6BCE0(a1, v2 + 16);
  return v2;
}

uint64_t MAPICategoriesProvider.getAllCategories(completion:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - v4;
  v41 = &v31 - v4;
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v39 = *(*(v11 - 8) + 56);
  v39(v5, 1, 1, v11);
  v12 = MEMORY[0x1E69E7CC0];
  v40 = sub_1D8D94EFC(MEMORY[0x1E69E7CC0], &qword_1ECAB42B8, &qword_1D9188E10, sub_1D8F06430);
  v38 = sub_1D8D94EFC(v12, &qword_1ECAB42B8, &qword_1D9188E10, sub_1D8F06430);
  v37 = sub_1D8D951E0(v12);
  v36 = sub_1D8D95090(v12, &qword_1ECAB41F0, &qword_1D9188D38, sub_1D8F86E60);
  v35 = sub_1D8D94EFC(v12, &qword_1ECAB42D0, &unk_1D9188E30, sub_1D8F06554);
  v34 = sub_1D8D94EFC(v12, &qword_1ECAB42D0, &unk_1D9188E30, sub_1D8F06554);
  v33 = sub_1D8D953C4(v12);
  v32 = sub_1D8D94EFC(v12, &qword_1ECAB43D8, &qword_1D9188F40, sub_1D8F06554);
  v31 = sub_1D8D94EFC(v12, &qword_1ECAB42A8, &qword_1D9188E00, sub_1D8F0660C);
  v13 = sub_1D8D94EFC(v12, &qword_1ECAB41E8, &qword_1D9188D30, sub_1D8F06554);
  *(v10 + 41) = 263;
  v10[43] = 5;
  v10[152] = 1;
  v10[201] = 1;
  v14 = v7[30];
  v39(&v10[v14], 1, 1, v11);
  v15 = &v10[v7[31]];
  v16 = &v10[v7[33]];
  v17 = v7[36];
  v18 = &v10[v7[35]];
  v19 = &v10[v7[37]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v10 + 10) = 83952900;
  v20 = v38;
  *(v10 + 6) = v40;
  *(v10 + 7) = v20;
  *(v10 + 8) = v37;
  *(v10 + 9) = &unk_1F545D100;
  v21 = v35;
  *(v10 + 10) = v36;
  *(v10 + 11) = v21;
  v22 = v33;
  *(v10 + 12) = v34;
  *(v10 + 13) = v22;
  v23 = v32;
  *(v10 + 14) = v12;
  *(v10 + 15) = v23;
  *(v10 + 16) = v12;
  *(v10 + 17) = v12;
  *(v10 + 18) = v12;
  v10[152] = 1;
  *(v10 + 20) = 300;
  v10[168] = 0;
  *(v10 + 22) = v31;
  *(v10 + 23) = v13;
  *(v10 + 24) = 0;
  *(v10 + 100) = 257;
  v10[202] = 0;
  sub_1D8E26828(v41, &v10[v14]);
  *v15 = 0;
  *(v15 + 1) = 0;
  v10[v7[32]] = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[v7[34]] = v12;
  *v18 = 0;
  *(v18 + 1) = 0;
  v10[v17] = 2;
  *v19 = 0;
  *(v19 + 1) = 0;
  v24 = v42[5];
  v25 = v42[6];
  __swift_project_boxed_opaque_existential_1(v42 + 2, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41C0, &qword_1D9188C98);
  v27 = swift_allocObject();
  v28 = v44;
  *(v27 + 16) = v43;
  *(v27 + 24) = v28;
  v29 = sub_1D8E268DC();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v10, 0, 0, v26, sub_1D8E26898, v27, v24, v26, v25, v29);

  return sub_1D8D90BEC(v10);
}

uint64_t MAPICategoriesProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E26828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E26898(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(a3 + 8);
  v8 = *a3;
  v9 = v6;
  return v4(&v8);
}

unint64_t sub_1D8E268DC()
{
  result = qword_1ECAB1D00;
  if (!qword_1ECAB1D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB41C0, &qword_1D9188C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D00);
  }

  return result;
}

unint64_t sub_1D8E2696C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, &v13, &qword_1ECAB42E8, &qword_1D9193650);
      v5 = v13;
      v6 = v14;
      result = sub_1D8D33C70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8D65618(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41C8, &qword_1D9188D08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1D8DA04B0(v7, v8);
      result = sub_1D8D33C70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *i;
      *&v19 = *(i - 6);
      *(&v19 + 1) = v5;
      *v20 = v6;
      *&v20[8] = v7;
      *&v20[16] = v8;
      v20[24] = *(i - 8);
      v10 = v20[24];
      v11 = v19;
      sub_1D8D092C0(v5, v6, v7, v8, v10);

      result = sub_1D8F0671C(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 48 * result);
      v15 = *v20;
      *v14 = v19;
      v14[1] = v15;
      *(v14 + 25) = *&v20[9];
      *(v3[7] + 8 * result) = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
    v3 = sub_1D91797AC();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);

      result = sub_1D8F067D4(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
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
      v4 += 16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D8F06994(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E26F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1D8D33C70(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E271B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B0, &qword_1D9188E08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D8F06C58(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27344(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D8, &unk_1D91A6B60);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1D8D490F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1D8D490F4(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8E27454(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D91797AC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1D8D490F4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1D8D490F4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8E27554(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8F06F60(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8F06F60(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E2765C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4280, &unk_1D91A6BF0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1D8F06F8C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1D8F06F8C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E2784C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41D0, &unk_1D9188D10);
    v3 = sub_1D91797AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1D8D752C4(v7, v8);
      result = sub_1D8F86E60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27964(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1D8D33C70(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8E27A78(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4258, &qword_1D9188DA0);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8D1AC44(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8D1AC44(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E27B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 80);
      v22 = *(v4 + 64);
      v23 = v6;
      v7 = *(v4 + 96);
      v24 = v7;
      v8 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v8;
      v9 = *(v4 + 48);
      v20 = *(v4 + 32);
      v21 = v9;
      v27 = v20;
      v28 = v9;
      v29[0] = v22;
      *(v29 + 11) = *(v4 + 75);
      v25 = v19[0];
      v26 = v8;
      sub_1D8D088B4(v19, v18, &qword_1ECAB4238, &qword_1D9188D80);
      result = sub_1D8F071DC(&v25);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 96 * result);
      v13 = v28;
      v12[2] = v27;
      v12[3] = v13;
      v12[4] = v29[0];
      *(v12 + 75) = *(v29 + 11);
      v14 = v26;
      *v12 = v25;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 104;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8E27CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4220, &qword_1D9188D68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4220, &qword_1D9188D68);
      result = sub_1D8D93AB0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D9176EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8E27EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v3 = sub_1D91797AC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D8F0726C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D8F0726C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8E27FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
    v3 = sub_1D91797AC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CategoryModel.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CategoryModel.color.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CategoryModel.artworkPrimaryColor.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CategoryModel.artworkTemplateURL.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CategoryModel.artworkHeight.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CategoryModel.artworkWidth.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CategoryModel.parent.getter()
{
  v1 = (v0 + *(type metadata accessor for CategoryModel() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t CategoryModel.children.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryModel() + 60));
}

BOOL CategoryModel.interestValueIsFavorited.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v9 - v3);
  v5 = type metadata accessor for CategoryModel();
  sub_1D8D088B4(v0 + *(v5 + 32), v4, &qword_1ECAB43E0, &qword_1D9188F48);
  v6 = type metadata accessor for InterestModel();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1D8D08A50(v4, &qword_1ECAB43E0, &qword_1D9188F48);
    return 0;
  }

  else
  {
    v8 = v4[1];
    sub_1D8E28498(v4);
    return v8 == 1.0;
  }
}

uint64_t sub_1D8E28498(uint64_t a1)
{
  v2 = type metadata accessor for InterestModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CategoryModel.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t CategoryModel.hash(into:)()
{
  MEMORY[0x1DA72B3C0](*v0);
  v1 = v0[1];
  v2 = v0[2];

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t CategoryModel.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v0);
  v1 = v0[1];
  v2 = v0[2];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E285D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D8E2861C()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v0);
  v1 = v0[1];
  v2 = v0[2];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E28670()
{
  MEMORY[0x1DA72B3C0](*v0);
  v1 = v0[1];
  v2 = v0[2];

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E286B4()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](*v0);
  v1 = v0[1];
  v2 = v0[2];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E28704@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v80[-v17];
  v19 = [a1 url];
  if (v19)
  {
    v20 = v19;
    sub_1D917820C();

    sub_1D9176BFC();
  }

  else
  {
    v21 = sub_1D9176C2C();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  v22 = [a1 interest];
  v23 = &off_1E856D000;
  if (v22)
  {
    v24 = v22;
    v25 = [v22 adamID];
    [v24 interestValue];
    v27 = v26;
    v28 = [v24 lastUpdatedDate];
    v29 = type metadata accessor for InterestModel();
    v30 = v10 + *(v29 + 24);
    sub_1D9176DFC();

    *v10 = v25;
    v10[1] = v27;
    v31 = *(*(v29 - 8) + 56);
    v32 = v29;
    v23 = &off_1E856D000;
    v31(v10, 0, 1, v32);
  }

  else
  {
    v33 = type metadata accessor for InterestModel();
    (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
  }

  v92 = [a1 v23[229]];
  v34 = [a1 name];
  v35 = sub_1D917820C();
  v90 = v36;
  v91 = v35;

  sub_1D8D088B4(v18, v14, &unk_1ECAB5910, &qword_1D9188C90);
  v37 = [a1 color];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1D917820C();
    v88 = v40;
    v89 = v39;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  sub_1D8D088B4(v10, v7, &qword_1ECAB43E0, &qword_1D9188F48);
  v87 = MTCategory.followedShowsCount.getter();
  v41 = [a1 artworkPrimaryColor];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1D917820C();
    v85 = v44;
    v86 = v43;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  v45 = [a1 artworkTemplateURL];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D917820C();
    v83 = v48;
    v84 = v47;
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  v93 = v7;
  v49 = [a1 artworkHeightNumber];
  v50 = v49;
  v51 = 0;
  v52 = 0;
  if (v49)
  {
    [v49 doubleValue];
    v52 = v53;
  }

  v54 = [a1 artworkWidthNumber];
  v55 = v54;
  if (v54)
  {
    [v54 doubleValue];
    v51 = v56;
  }

  v57 = [a1 parent];
  v58 = v57;
  if (v57)
  {
    v82 = [v57 v23[229]];
  }

  else
  {
    v82 = 0;
  }

  v81 = v58 == 0;
  v59 = v55 == 0;
  v60 = v50 == 0;
  v61 = [a1 children];
  type metadata accessor for MTCategory();
  sub_1D8E29110(&qword_1ECAB43E8, type metadata accessor for MTCategory);
  v62 = sub_1D9178A9C();

  sub_1D8E28D4C(v62);
  v64 = v63;

  v65 = sub_1D8FC0E84(v64);

  sub_1D8D08A50(v10, &qword_1ECAB43E0, &qword_1D9188F48);
  sub_1D8D08A50(v18, &unk_1ECAB5910, &qword_1D9188C90);
  v66 = v91;
  *a2 = v92;
  a2[1] = v66;
  a2[2] = v90;
  v67 = type metadata accessor for CategoryModel();
  sub_1D8D6734C(v14, a2 + v67[6], &unk_1ECAB5910, &qword_1D9188C90);
  v68 = (a2 + v67[7]);
  v69 = v88;
  *v68 = v89;
  v68[1] = v69;
  result = sub_1D8D6734C(v93, a2 + v67[8], &qword_1ECAB43E0, &qword_1D9188F48);
  v71 = v86;
  *(a2 + v67[9]) = v87;
  v72 = (a2 + v67[10]);
  v73 = v84;
  v74 = v85;
  *v72 = v71;
  v72[1] = v74;
  v75 = (a2 + v67[11]);
  *v75 = v73;
  v76 = v82;
  v75[1] = v83;
  v77 = a2 + v67[12];
  *v77 = v52;
  v77[8] = v60;
  v78 = a2 + v67[13];
  *v78 = v51;
  v78[8] = v59;
  v79 = a2 + v67[14];
  *v79 = v76;
  v79[8] = v81;
  *(a2 + v67[15]) = v65;
  return result;
}