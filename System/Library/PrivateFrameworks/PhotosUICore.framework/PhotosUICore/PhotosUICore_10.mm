unint64_t sub_1A3D6E9D4()
{
  result = qword_1EB12B788;
  if (!qword_1EB12B788)
  {
    sub_1A3C36FC0(255, &qword_1EB12B780, &type metadata for LemonadeTransientCollectionSortingUtilities.ResetButton, MEMORY[0x1E69E6720]);
    sub_1A3D6EA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B788);
  }

  return result;
}

unint64_t sub_1A3D6EA70()
{
  result = qword_1EB12B790;
  if (!qword_1EB12B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B790);
  }

  return result;
}

void sub_1A3D6EACC(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = **(v1 + 16);
  v5 = sub_1A3D6C8A0(v4);
  v6 = (*(*v5 + 144))(v5);

  if (v6)
  {
    v7 = [v4 px_virtualCollections];
    v8 = [v7 utilitiesCollectionList];

    v9 = v3;
    PXDisplayCollectionDetailedCountsMake(v8);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
}

void sub_1A3D6EB9C()
{
  if (!qword_1EB12B798)
  {
    sub_1A3D711A4(255, &qword_1EB12B708, sub_1A3D6DDB0, sub_1A3D6E940);
    v0 = sub_1A52495C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B798);
    }
  }
}

unint64_t sub_1A3D6EC6C()
{
  result = qword_1EB124EE0;
  if (!qword_1EB124EE0)
  {
    sub_1A3CA3A74(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124EE0);
  }

  return result;
}

unint64_t sub_1A3D6ECFC()
{
  result = qword_1EB124EE8;
  if (!qword_1EB124EE8)
  {
    sub_1A3CA3A74(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124EE8);
  }

  return result;
}

unint64_t sub_1A3D6ED8C()
{
  result = qword_1EB12B7B0;
  if (!qword_1EB12B7B0)
  {
    sub_1A3D6EC24(255);
    sub_1A3D6CF80(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView);
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B7B0);
  }

  return result;
}

void sub_1A3D6EEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3CA3A74(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    v13[0] = v10;
    v13[1] = a3(255);
    v13[2] = sub_1A3D6EC6C();
    v13[3] = sub_1A3D6ECFC();
    v13[4] = a4();
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3D6EFA4()
{
  if (!qword_1EB12B7C8)
  {
    sub_1A3CA3A74(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A3D71318(255, &qword_1EB12B7D0, type metadata accessor for MapSnapshotView, sub_1A3D6D534, MEMORY[0x1E697F960]);
    sub_1A3D6ECFC();
    sub_1A3D6F0AC();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B7C8);
    }
  }
}

unint64_t sub_1A3D6F0AC()
{
  result = qword_1EB12B7D8;
  if (!qword_1EB12B7D8)
  {
    sub_1A3D71318(255, &qword_1EB12B7D0, type metadata accessor for MapSnapshotView, sub_1A3D6D534, MEMORY[0x1E697F960]);
    sub_1A3D6CF80(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView);
    sub_1A3D6D57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B7D8);
  }

  return result;
}

unint64_t sub_1A3D6F1F4()
{
  result = qword_1EB12B800;
  if (!qword_1EB12B800)
  {
    sub_1A3D6F1D4(255);
    sub_1A3D6ED8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B800);
  }

  return result;
}

void sub_1A3D6F278()
{
  if (!qword_1EB12B808)
  {
    sub_1A3D6EEB4(255, &qword_1EB12B810, sub_1A3D6F314, sub_1A3D6F57C, MEMORY[0x1E69C20B0]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B808);
    }
  }
}

void sub_1A3D6F35C()
{
  if (!qword_1EB12B820)
  {
    sub_1A3D6F3F0();
    sub_1A3D6FF74(255, &qword_1EB12B830, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B820);
    }
  }
}

void sub_1A3D6F3F0()
{
  if (!qword_1EB12B828)
  {
    sub_1A3D6FF74(255, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
    sub_1A3D6F4A4();
    sub_1A3D6F4F8();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B828);
    }
  }
}

unint64_t sub_1A3D6F4A4()
{
  result = qword_1EB1271A0;
  if (!qword_1EB1271A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1271A0);
  }

  return result;
}

unint64_t sub_1A3D6F4F8()
{
  result = qword_1EB127A40;
  if (!qword_1EB127A40)
  {
    sub_1A3D6FF74(255, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127A40);
  }

  return result;
}

unint64_t sub_1A3D6F57C()
{
  result = qword_1EB12B838;
  if (!qword_1EB12B838)
  {
    sub_1A3D6F314(255);
    sub_1A3D6F62C();
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B838);
  }

  return result;
}

unint64_t sub_1A3D6F62C()
{
  result = qword_1EB12B840;
  if (!qword_1EB12B840)
  {
    sub_1A3D6F35C();
    sub_1A3D6CF80(&qword_1EB12B848, sub_1A3D6F3F0);
    sub_1A3D6F6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B840);
  }

  return result;
}

unint64_t sub_1A3D6F6DC()
{
  result = qword_1EB12B850;
  if (!qword_1EB12B850)
  {
    sub_1A3D6FF74(255, &qword_1EB12B830, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B850);
  }

  return result;
}

uint64_t sub_1A3D6F768()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    v5 = sub_1A3C38BD4();
  }

  v7 = v5;
  v8 = v6;
  sub_1A52426D4();
  v9 = *(v20 + 16);

  v10 = [v9 px_isRecentlyDeletedSmartAlbum];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    sub_1A52426D4();
    v12 = *(v20 + 16);

    v11 = [v12 px_isHiddenSmartAlbum];
  }

  sub_1A3D71010();
  v13 = sub_1A5242724();
  if (v14 & 1) != 0 || (v11)
  {
    sub_1A3C38BD4();
    sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    *(v17 + 32) = v7;
    *(v17 + 40) = v8;
    v16 = sub_1A524C6B4();
  }

  else
  {
    v15 = v13;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v20 = v15;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v16 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v16;
}

uint64_t sub_1A3D6FB2C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C3798C(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3D6FBA4()
{
  result = qword_1EB12A890;
  if (!qword_1EB12A890)
  {
    sub_1A3C3798C(255, &unk_1EB12A880, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItem);
    sub_1A3C3A220(&unk_1EB126CF0, &qword_1EB126CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A890);
  }

  return result;
}

unint64_t sub_1A3D6FD18()
{
  result = qword_1EB12B858;
  if (!qword_1EB12B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B858);
  }

  return result;
}

uint64_t sub_1A3D6FE18(uint64_t a1)
{
  result = sub_1A3D6CF80(&qword_1EB129ED8, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3D6FEF0()
{
  result = qword_1EB128078;
  if (!qword_1EB128078)
  {
    sub_1A3D6FF74(255, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128078);
  }

  return result;
}

void sub_1A3D6FF74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3D6FFF4()
{
  result = qword_1EB129EC0;
  if (!qword_1EB129EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129EC0);
  }

  return result;
}

unint64_t sub_1A3D70074(uint64_t a1)
{
  result = sub_1A3D7009C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3D7009C()
{
  result = qword_1EB129EC8;
  if (!qword_1EB129EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129EC8);
  }

  return result;
}

unint64_t sub_1A3D700F0()
{
  result = qword_1EB129200;
  if (!qword_1EB129200)
  {
    sub_1A3CA3A74(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129200);
  }

  return result;
}

uint64_t sub_1A3D702C8(uint64_t a1)
{
  result = sub_1A3D6CF80(&qword_1EB12B868, type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3D70404()
{
  result = qword_1EB12B870;
  if (!qword_1EB12B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B870);
  }

  return result;
}

unint64_t sub_1A3D70484(uint64_t a1)
{
  result = sub_1A3D704AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3D704AC()
{
  result = qword_1EB12B878;
  if (!qword_1EB12B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B878);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A3D705A4(uint64_t a1, int a2)
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

uint64_t sub_1A3D705EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A3D70654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A3D7069C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A3D708A0()
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadeFeedBodyStyle(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3D70938(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A3D70984(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1A3D709D0()
{
  result = qword_1EB122AB8;
  if (!qword_1EB122AB8)
  {
    sub_1A3D71318(255, &qword_1EB122AB0, sub_1A3D6CE98, sub_1A3D6CDE0, MEMORY[0x1E697F960]);
    sub_1A3D6CF80(&unk_1EB124EA0, sub_1A3D6CE98);
    sub_1A3D6CF80(&qword_1EB128FF8, sub_1A3D6CDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122AB8);
  }

  return result;
}

unint64_t sub_1A3D70AF4()
{
  result = qword_1EB12B880;
  if (!qword_1EB12B880)
  {
    sub_1A3D6DA14(255, &qword_1EB12B700, sub_1A3D6D7AC);
    sub_1A3D70B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B880);
  }

  return result;
}

unint64_t sub_1A3D70B98()
{
  result = qword_1EB1242D0;
  if (!qword_1EB1242D0)
  {
    sub_1A3D6D7AC(255);
    sub_1A3D6CF80(&qword_1EB128FF8, sub_1A3D6CDE0);
    sub_1A3D6CF80(&qword_1EB1220E8, sub_1A3D6D7F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1242D0);
  }

  return result;
}

unint64_t sub_1A3D70C78()
{
  result = qword_1EB12B890;
  if (!qword_1EB12B890)
  {
    sub_1A3D71318(255, &qword_1EB12B898, sub_1A3D6EFA4, sub_1A3D6EE6C, MEMORY[0x1E697F960]);
    sub_1A3D6CF80(&qword_1EB12B7E0, sub_1A3D6EFA4);
    sub_1A3D6CF80(&qword_1EB12B7E8, sub_1A3D6EE6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B890);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D70F9C()
{
  v1 = *(type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1A3D69E0C(v2, v3);
}

unint64_t sub_1A3D71010()
{
  result = qword_1EB12A810;
  if (!qword_1EB12A810)
  {
    sub_1A3C3798C(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
    sub_1A3C3A220(&unk_1EB126AB0, &qword_1EB126AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A810);
  }

  return result;
}

unint64_t sub_1A3D710E8()
{
  result = qword_1EB12B1D0;
  if (!qword_1EB12B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B1D0);
  }

  return result;
}

void sub_1A3D7113C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_1A3D6EC24(255);
    v7 = a3(a1, MEMORY[0x1E69815C0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3D711A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3D71220()
{
  if (!qword_1EB120470)
  {
    sub_1A5243B94();
    sub_1A3D712CC();
    sub_1A3D6CF80(&qword_1EB124D20, MEMORY[0x1E69C2818]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120470);
    }
  }
}

unint64_t sub_1A3D712CC()
{
  result = qword_1EB121500;
  if (!qword_1EB121500)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB121500);
  }

  return result;
}

void sub_1A3D71318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t objectdestroy_113Tm()
{
  v1 = (type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D71508()
{
  v1 = *(type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0) - 8);
  v2 = sub_1A3D6C8A0(*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))));
  v3 = (*(*v2 + 160))(v6);
  *v4 = !*v4;
  v3(v6, 0);
}

unint64_t sub_1A3D715CC()
{
  result = qword_1EB125AA8;
  if (!qword_1EB125AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125AA8);
  }

  return result;
}

unint64_t sub_1A3D71620()
{
  result = qword_1EB125AA0;
  if (!qword_1EB125AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125AA0);
  }

  return result;
}

void sub_1A3D71674()
{
  if (!qword_1EB120548)
  {
    sub_1A3D715CC();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120548);
    }
  }
}

uint64_t sub_1A3D716D0(uint64_t a1, uint64_t a2)
{
  sub_1A3C6DC44(0, &unk_1EB132ED0, &qword_1EB12B6A8, MEMORY[0x1E69E6A30], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3D71760()
{
  if (!qword_1EB1204A8)
  {
    sub_1A5240E64();
    type metadata accessor for LemonadeUtilitiesEditableListModel();
    sub_1A3D6CF80(&qword_1EB126058, MEMORY[0x1E6968FB0]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204A8);
    }
  }
}

uint64_t sub_1A3D7180C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1A3D711A4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A3D7194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  v11[1] = KeyPath;
  v12 = 0;
  v9 = type metadata accessor for LemonadeAccessibilityViewModifier();
  swift_unknownObjectRetain();
  MEMORY[0x1A5906490](v11, a3, v9, a5);
  swift_unknownObjectRelease();
  return sub_1A3C53AEC(KeyPath, 0);
}

uint64_t sub_1A3D71A18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A3D71A74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1A3D71ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3D71B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A52490B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3D71B98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a2, 0);
    (*(v11 + 8))(v14, v10);
    if (v17[15] != 1)
    {
      return 0;
    }
  }

  return (*(a5 + 168))(a1, a4, a5, v12);
}

uint64_t sub_1A3D71D2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a2, 0);
    (*(v11 + 8))(v14, v10);
    if (v17[15] != 1)
    {
      return 0;
    }
  }

  return (*(a5 + 176))(a1, a4, a5, v12);
}

uint64_t sub_1A3D71EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v48 = a6;
  v8 = a4;
  v40 = a4;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v54 = a7;
  v9 = sub_1A5249D74();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = a5;
  type metadata accessor for LemonadeAccessibilityViewModifier();
  swift_getWitnessTable();
  v12 = sub_1A52499C4();
  WitnessTable = swift_getWitnessTable();
  v59 = v12;
  v60 = WitnessTable;
  v44 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v39[-v14];
  sub_1A5249F54();
  v16 = sub_1A5248804();
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v39[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v39[-v22];
  sub_1A5249D54();
  v23 = swift_checkMetadataState();
  sub_1A524ADB4();
  (*(v49 + 8))(v11, v50);
  v24 = v8 & 1;
  v25 = v52;
  v26 = v53;
  v27 = a5;
  v28 = v48;
  v59 = sub_1A3D71D2C(v52, v53, v24, v27, v48);
  v60 = v29;
  v57 = v23;
  v58 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  v31 = OpaqueTypeMetadata2;
  sub_1A524AC94();

  (*(v45 + 8))(v15, v31);
  sub_1A3D71B98(v25, v26, v40 & 1, v41, v28);
  v32 = v43;
  sub_1A5248744();

  v33 = v46;
  v34 = *(v46 + 8);
  v34(v18, v16);
  v35 = sub_1A3D72360();
  v55 = OpaqueTypeConformance2;
  v56 = v35;
  swift_getWitnessTable();
  v36 = *(v33 + 16);
  v37 = v47;
  v36(v47, v32, v16);
  v34(v32, v16);
  v36(v54, v37, v16);
  return (v34)(v37, v16);
}

unint64_t sub_1A3D72360()
{
  result = qword_1EB127710;
  if (!qword_1EB127710)
  {
    sub_1A5249F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127710);
  }

  return result;
}

void sub_1A3D72424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
  v31 = *v5;
  v9 = (v5 + qword_1EB17AC60);
  *v9 = 0;
  v9[1] = 0;
  *(v5 + qword_1EB1EB180) = a1;
  v10 = v5 + qword_1EB1EB188;
  *v10 = a4;
  v11 = a5 & 1;
  v10[8] = a5 & 1;
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v12 contentSyndicationConfigurationProviderWithPhotoLibrary_];
  *(v5 + qword_1EB1EB178) = v14;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = sub_1A524CA14();
  v18 = sub_1A524C634();
  v19 = [v15 transientCollectionListWithCollections:v17 title:0 identifier:v18 photoLibrary:v13];

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v42 = 2;
  v20 = v19;
  v21 = v6;
  sub_1A3C6C180(&v32);
  v40 = v32;
  v41 = v33;
  sub_1A3C6C18C(&v38);
  v36 = v38;
  v37 = v39;
  LOBYTE(v18) = sub_1A3C5A374();
  v22 = sub_1A3C30368();
  v23 = sub_1A3C5A374();
  LOBYTE(v6) = sub_1A3C5A374();
  v24 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v40, 0, MEMORY[0x1E69E7CC0], 0, 1, &v36, v18 & 1, &v42, v35, v22, v23 & 1, v6 & 1, v24 & 1, 0);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v21;
  *(v25 + 32) = v16;
  *(v25 + 40) = a4;
  *(v25 + 48) = v11;
  *(v25 + 56) = v31;
  v26 = v13;
  v27 = v16;
  v28 = v21;
  PhotoKitItemListManager.init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v20, a3, v43, v35, &v32, sub_1A3D7278C, v25);
}

id sub_1A3D7278C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *MEMORY[0x1E6978D98];
  v7 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v8 = v6;
  v9 = sub_1A524CA14();
  v10 = [v7 initWithObjects:v9 photoLibrary:v1 fetchType:v8 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  if ([v3 contentSyndicationIsAvailable] && objc_msgSend(v2, sel_viewMode) != 2)
  {
    if (v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v4 & ~(v4 >> 63);
    }

    v12 = PXContentSyndicationAssetsFetchResultForPhotoLibrary(v1, 0, v11);

    return v12;
  }

  return v10;
}

uint64_t sub_1A3D728A4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_1A43F8A20();
    }
  }

  return result;
}

uint64_t sub_1A3D72930()
{

  return swift_unknownObjectRelease();
}

uint64_t SharedWithYouAssetsItemListManager.deinit()
{
  v0 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SharedWithYouAssetsItemListManager.__deallocating_deinit()
{
  v0 = PhotoKitItemListManager.deinit();
  v1 = *(v0 + qword_1EB1EB180);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A3D72A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t type metadata accessor for SharedWithYouAssetsItemListManager()
{
  result = qword_1EB17AC50;
  if (!qword_1EB17AC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1A3D72B88()
{
  type metadata accessor for PhotosDetailsIconProvider();
  v0 = swift_allocObject();
  result = sub_1A3D73FFC();
  qword_1EB1EB810 = v0;
  return result;
}

uint64_t sub_1A3D72BC4()
{
  v0 = swift_allocObject();
  sub_1A3D73FFC();
  return v0;
}

uint64_t *sub_1A3D72BFC()
{
  if (qword_1EB173B30 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB810;
}

void sub_1A3D72C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  *(v13 + 64) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1A3D759DC;
  *(v14 + 24) = v13;
  v15[4] = sub_1A3C7146C;
  v15[5] = v14;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A3C71444;
  v15[3] = &block_descriptor_2;
  _Block_copy(v15);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D72DE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = sub_1A524BEE4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v57 = *(v17 - 8);
  v58 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = a1[3];
  if (*(v20 + 16))
  {
    v21 = sub_1A3C5DCA4(a2, a3);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      sub_1A3C29A58();

      v24 = sub_1A524D474();
      v25 = swift_allocObject();
      v25[2] = a4;
      v25[3] = a5;
      v25[4] = v23;
      v63 = sub_1A3D75AC0;
      v64 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v60 = 1107296256;
      v61 = sub_1A3C2E0D0;
      v62 = &block_descriptor_23;
      v26 = _Block_copy(&aBlock);

      sub_1A524BF14();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      v27 = MEMORY[0x1E69E7F60];
      sub_1A3D75CE8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C9AB0C(&qword_1EB12B1B0, &qword_1EB12B1C0, v27);
      v28 = v56;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v19, v28, v26);
      _Block_release(v26);

      (*(v15 + 8))(v28, v14);
      return (*(v57 + 8))(v19, v58);
    }
  }

  v55[1] = v19;
  swift_endAccess();
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = a1[4];
  v32 = v65;
  a1[4] = 0x8000000000000000;
  v34 = sub_1A3C5DCA4(a2, a3);
  v35 = v32[2];
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (!__OFADD__(v35, v36))
  {
    v38 = v33;
    if (v32[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        a1[4] = v32;
        if (v33)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1A3D752B8();
        v32 = v65;
        a1[4] = v65;
        if (v38)
        {
LABEL_13:
          v55[0] = v15;
          a5 = v32[7];
          v32 = *(a5 + 8 * v34);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 8 * v34) = v32;
          if (v45)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1A3D745F0(v37, isUniquelyReferenced_nonNull_native);
      v32 = v65;
      v39 = sub_1A3C5DCA4(a2, a3);
      if ((v38 & 1) != (v40 & 1))
      {
LABEL_27:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }

      v34 = v39;
      a1[4] = v32;
      if (v38)
      {
        goto LABEL_13;
      }
    }

    v32[(v34 >> 6) + 8] |= 1 << v34;
    v41 = (v32[6] + 16 * v34);
    *v41 = a2;
    v41[1] = a3;
    *(v32[7] + 8 * v34) = MEMORY[0x1E69E7CC0];
    v42 = v32[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      v32[2] = v44;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    goto LABEL_27;
  }

  __break(1u);
LABEL_23:
  v32 = sub_1A3D75590(0, v32[2] + 1, 1, v32);
  *(a5 + 8 * v34) = v32;
LABEL_14:
  v47 = v32[2];
  v46 = v32[3];
  if (v47 >= v46 >> 1)
  {
    v32 = sub_1A3D75590((v46 > 1), v47 + 1, 1, v32);
    *(a5 + 8 * v34) = v32;
  }

  v32[2] = v47 + 1;
  v48 = &v32[2 * v47];
  v48[4] = sub_1A3D75A3C;
  v48[5] = v30;
  swift_endAccess();
  swift_beginAccess();
  v49 = a1[2];
  if (!*(v49 + 16) || (v50 = sub_1A3C5DCA4(a2, a3), (v51 & 1) == 0))
  {
    swift_endAccess();
LABEL_21:
    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v65 = a1[2];
    a1[2] = 0x8000000000000000;
    sub_1A3D74CE8(1, a2, a3, v53);
    a1[2] = v65;
    swift_endAccess();
    v54 = swift_allocObject();
    *(v54 + 16) = a6;
    *(v54 + 24) = a7;
    *(v54 + 32) = a2;
    *(v54 + 40) = a3;
    *(v54 + 48) = a1;
    v63 = sub_1A3D75A68;
    v64 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1A3C2E0D0;
    v62 = &block_descriptor_17;
    _Block_copy(&aBlock);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v52 = *(*(v49 + 56) + v50);
  result = swift_endAccess();
  if ((v52 & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1A3D735D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A3D74FD0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A3C5DCA4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A3D7541C();
        v14 = v16;
      }

      result = sub_1A3D74B38(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

id sub_1A3D736D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v11);
  v12 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:a4 scale:{a5, 3.0}];
  v13 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v14 = sub_1A524C634();
  v15 = [v13 initWithBundleIdentifier_];

  v16 = [v15 prepareImageForDescriptor_];
  if (!v16)
  {
    v21 = sub_1A524C634();
    v20 = [objc_opt_self() systemImageNamed_];

    if (!v20)
    {
      v23 = 0;
LABEL_6:
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a3;
      v24[4] = a1;
      v24[5] = a2;
      aBlock[4] = sub_1A3D75C0C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_29;
      _Block_copy(aBlock);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_5:
    v22 = v20;
    v23 = sub_1A524B524();
    goto LABEL_6;
  }

  v17 = v16;
  result = [v17 CGImage];
  if (result)
  {
    v19 = result;
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A3D73B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9);
  if (a1)
  {
    swift_beginAccess();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1A3D74CE8(0, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v12;
  swift_endAccess();
  swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_1A3C5DCA4(a3, a4);
    if (v11)
    {
      swift_endAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  swift_endAccess();
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D73FA4()
{

  return swift_deallocClassInstance();
}

void *sub_1A3D73FFC()
{
  v18 = sub_1A524D464();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1A3D756DC(MEMORY[0x1E69E7CC0]);
  v17 = v0;
  v0[2] = v7;
  v0[3] = sub_1A3D757DC(v6);
  v0[4] = sub_1A3D758E4(v6);
  v16[0] = sub_1A3C29A58();
  v16[4] = "roviderObservation";
  sub_1A524BF34();
  v19 = v6;
  v16[3] = sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1A3D75CE8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v16[2] = v9;
  sub_1A3C9AB0C(&qword_1EB126E30, &qword_1EB126E40, v8);
  sub_1A524E224();
  v10 = *MEMORY[0x1E69E8090];
  v11 = v1 + 104;
  v12 = *(v1 + 104);
  v16[1] = v11;
  v12(v3, v10, v18);
  v13 = sub_1A524D4B4();
  v14 = v17;
  v17[5] = v13;
  sub_1A524BF54();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A524E224();
  v12(v3, v10, v18);
  v14[6] = sub_1A524D4B4();
  return v14;
}

uint64_t sub_1A3D7434C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3D75C90(0, &qword_1EB12B900);
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3D745F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3D75AF0();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3D7488C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3D75C90(0, &qword_1EB12B8F8);
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A3D74B38(unint64_t result, uint64_t a2)
{
  if ((*(a2 + 64 + ((((result + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((result + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v2 = *(a2 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v4;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A3D74CE8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + result) = a1 & 1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + result) = a1 & 1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1A3D7514C();
    result = v19;
    goto LABEL_8;
  }

  sub_1A3D7434C(v16, a4 & 1);
  result = sub_1A3C5DCA4(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

uint64_t sub_1A3D74E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3D745F0(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A3D752B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

uint64_t sub_1A3D74FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3D7488C(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A3D7541C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

void *sub_1A3D7514C()
{
  v1 = v0;
  sub_1A3D75C90(0, &qword_1EB12B900);
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        LOBYTE(v17) = *(*(v2 + 56) + v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = v19;
        v20[1] = v18;
        *(*(v4 + 56) + v16) = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3D752B8()
{
  v1 = v0;
  sub_1A3D75AF0();
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3D7541C()
{
  v1 = v0;
  sub_1A3D75C90(0, &qword_1EB12B8F8);
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3D75590(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3D75CE8(0, &unk_1EB12B908, sub_1A3D75B88, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C3637C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A3D756DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D75C90(0, &qword_1EB12B900);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3D757DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D75C90(0, &qword_1EB12B8F8);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3D758E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D75AF0();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3D75A78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3D75AF0()
{
  if (!qword_1EB12B8E0)
  {
    sub_1A3D75CE8(255, &qword_1EB12B8E8, sub_1A3D75B88, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B8E0);
    }
  }
}

unint64_t sub_1A3D75B88()
{
  result = qword_1EB12B8F0;
  if (!qword_1EB12B8F0)
  {
    sub_1A3C4881C(255, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB12B8F0);
  }

  return result;
}

uint64_t sub_1A3D75C18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v7 = v3;

      v5(&v7);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1A3D75C90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A524E7A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A3D75CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3D75D6C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A3D75DEC()
{
  sub_1A3C4D0BC(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1A5240E34();
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A3D75F5C(v2);
    return 0x5F454C49465F4F4ELL;
  }

  else
  {
    v6 = sub_1A5240D34();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_1A3D75F5C(uint64_t a1)
{
  sub_1A3C4D0BC(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3D760C0(unint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v61 = a2;
  v6 = type metadata accessor for LemonadePeopleMergingContentView();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52[1] = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = v52 - v9;
  aBlock = MEMORY[0x1E69E7CC0];
  *&v55 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v52 - v9; v12; i = v11)
  {
    v11 = 0;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    v60 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v13 = MEMORY[0x1A59097F0](v11, a1, v10);
      }

      else
      {
        if (v11 >= *(v59 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = [v13 localIdentifier];
      v17 = sub_1A524C674();
      v19 = v18;

      v20 = [v61 localIdentifier];
      v21 = sub_1A524C674();
      v23 = v22;

      if (v17 == v21 && v19 == v23)
      {
      }

      else
      {
        v25 = sub_1A524EAB4();

        if (v25)
        {
        }

        else
        {
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }
      }

      ++v11;
      if (v15 == v12)
      {
        v26 = aBlock;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v12 = sub_1A524E2B4();
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v27 = v26 < 0 || (v26 & 0x4000000000000000) != 0;
  if (!v27)
  {
    if (*(v26 + 16))
    {
      goto LABEL_28;
    }

LABEL_36:
    sub_1A524E6E4();
    __break(1u);
    goto LABEL_37;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_36;
  }

LABEL_28:
  LODWORD(v60) = v27;
  if ((v26 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v28 = MEMORY[0x1A59097F0](0, v26);
LABEL_31:
    v29 = v28;
    v59 = v26;
    v53 = a1;
    if (v55)
    {
      v30 = sub_1A524E2B4();
    }

    else
    {
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v29;
    v32 = sub_1A524C634();
    v33 = PXLocalizedStringForPersonOrPetAndVisibility(v31, 0, v32);

    sub_1A524C674();
    sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    v55 = xmmword_1A52F8E10;
    v35 = MEMORY[0x1E69E6530];
    *(v34 + 16) = xmmword_1A52F8E10;
    v36 = MEMORY[0x1E69E65A8];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = v30;
    sub_1A524C6C4();
    v38 = v37;

    v39 = v31;
    v40 = sub_1A524C634();
    v41 = PXLocalizedStringForPersonOrPetAndVisibility(v39, 0, v40);

    sub_1A524C674();
    v42 = swift_allocObject();
    *(v42 + 16) = v55;
    *(v42 + 56) = v35;
    *(v42 + 64) = v36;
    *(v42 + 32) = v30;
    sub_1A524C6C4();
    v44 = v43;

    v45._object = 0x80000001A53B46A0;
    v45._countAndFlagsBits = 0xD000000000000024;
    v63.value.rawValue = 0;
    v63.is_nil = 0;
    LemonadeLocalizedStringForPersonOrPet(person:key:visibility:)(v39, v45, v63);
    *&v55 = sub_1A3C38BD4();
    v52[3] = v38;
    v46 = sub_1A524C634();
    v52[2] = v44;
    v47 = sub_1A524C634();
    v48 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

    v49 = swift_allocObject();
    *(v49 + 16) = v56 & 1;
    v50 = v61;
    *(v49 + 24) = v53;
    *(v49 + 32) = v50;
    v51 = v58;
    *(v49 + 40) = v57;
    *(v49 + 48) = v51;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v26 + 16))
  {
    v28 = *(v26 + 32);
    goto LABEL_31;
  }

  __break(1u);
  __break(1u);
}

void sub_1A3D7692C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1A3D76994(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      break;
    }

    while (1)
    {
      v5 = MEMORY[0x1A59097F0](0, v2);
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_6:
      v6 = 0;
      while (1)
      {
        v7 = v6;
        if (v3 == v6)
        {
LABEL_14:

          return v3 == v7;
        }

        if (v1)
        {
          v8 = MEMORY[0x1A59097F0](v6, v2);
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_16;
          }

          v8 = *(v2 + 8 * v6 + 32);
        }

        v9 = v8;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = [v5 px:v8 isSameDetectionTypeAsPerson:?];

        v6 = v7 + 1;
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_1A524E2B4();
      v3 = result;
      if (result)
      {
        break;
      }

LABEL_18:
      sub_1A524E6E4();
      __break(1u);
    }
  }

  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void static PeopleMergeUtilities.bestTargetPerson(for:)(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_48:
    LODWORD(v31) = 0;
    v30 = 93;
    sub_1A524E6E4();
    __break(1u);
    goto LABEL_49;
  }

LABEL_47:
  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_48;
  }

LABEL_3:
  v35 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_49:
    v4 = MEMORY[0x1A59097F0](0, v1);
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_6;
  }

  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v4 = *(v1 + 32);
LABEL_6:
  v5 = 0;
  do
  {
    v6 = v5;
    if (v2 == v5)
    {
      break;
    }

    if (v35)
    {
      v7 = MEMORY[0x1A59097F0](v5, v1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_46;
      }

      v7 = *(v1 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = [v7 type];
    v10 = [v4 type];

    v5 = v6 + 1;
  }

  while (v9 == v10);
  if (v2 < 1)
  {
    goto LABEL_51;
  }

  v11 = v4;
  v12 = 0;
  v13 = -1;
  v32 = v11;
  v33 = v2;
  v34 = v1;
  do
  {
    if (v35)
    {
      v18 = MEMORY[0x1A59097F0](v12, v1);
    }

    else
    {
      v18 = *(v1 + 8 * v12 + 32);
    }

    v19 = v18;
    v20 = [v18 type];
    v21 = [v19 faceCount];
    v22 = 10;
    if (v20)
    {
      v22 = 0;
    }

    if (v20 == 1)
    {
      v23 = 20;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v19 px_localizedName];
    v25 = sub_1A524C674();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = v23;
    }

    if (v33 == v6 && v29 == v13)
    {
      v14 = [v11 faceCount] < v21;
    }

    else
    {
      v14 = v13 < v29;
    }

    v15 = v14;
    ++v12;
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v11;
    }

    else
    {
      v17 = v19;
    }

    if (!v16)
    {
      v11 = v19;
    }

    if (v13 <= v29)
    {
      v13 = v29;
    }

    v1 = v34;
  }

  while (v33 != v12);
}

uint64_t PeopleRemovalUtilities.PeopleRemovalType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void static PeopleRemovalUtilities.removalType(peopleToBeRemovedCount:allPeopleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == a2)
  {
    *a3 = 1;
  }

  else
  {
    if (a1 < a2)
    {
      v5 = a3;
      sub_1A3C52C70(0, &qword_1EB12B140);
      v6 = sub_1A524DED4();
      v7 = sub_1A524D264();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134218240;
        *(v8 + 4) = a1;
        *(v8 + 12) = 2048;
        *(v8 + 14) = a2;
        _os_log_impl(&dword_1A3C1C000, v6, v7, "peopleToBeRemovedCount: %ld is greater than allPeopleCount: %ld", v8, 0x16u);
        MEMORY[0x1A590EEC0](v8, -1, -1);
      }

      a3 = v5;
    }

    *a3 = 0;
  }
}

void sub_1A3D7706C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1A5240B74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1A3D770DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v65 = 0;
  [objc_opt_self() people:a2 hasHumans:&v65 + 1 hasPets:&v65];
  v12 = [a2 firstObject];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v55 = a4;
  v58 = a6;
  v57 = a1;
  if ([a2 count] < 2)
  {
    v18 = v13;
    v19 = sub_1A524C634();
    v20 = PXLocalizedStringForPersonOrPetAndVisibility(v18, 0, v19);

    sub_1A524C674();
    v16 = v18;
    v21 = sub_1A524C634();
    v17 = PXLocalizedStringForPersonOrPetAndVisibility(v16, 0, v21);
  }

  else
  {
    v14 = sub_1A524C634();
    v15 = PXLocalizedStringForPeople(a2, v14);

    sub_1A524C674();
    v16 = sub_1A524C634();
    v17 = PXLocalizedStringForPeople(a2, v16);
  }

  sub_1A524C674();
  v56 = v13;
  v22 = [v13 photoLibrary];
  if (!v22)
  {
LABEL_10:
    __break(1u);
  }

  v23 = v22;
  v24 = [v22 px_peoplePetsHomeVisibility];

  sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F8E10;
  v54 = v24;
  v26 = PXLocalizedStringForPeoplePetsHomeTitle(v24);
  v27 = sub_1A524C674();
  v29 = v28;

  *(v25 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1A3D710E8();
  *(v25 + 64) = v53;
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  sub_1A524C6C4();

  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v55;
  v30[5] = a5;
  v31 = objc_allocWithZone(off_1E7721440);
  v32 = a3;
  v33 = a2;

  v34 = sub_1A524C634();

  v63 = sub_1A3D7ACD0;
  v64 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1A3C2E0D0;
  v62 = &block_descriptor_66;
  v35 = _Block_copy(&aBlock);

  v36 = [v31 initWithTitle:v34 style:2 action:v35];
  _Block_release(v35);

  v37 = sub_1A524C634();
  v38 = PXLocalizedString(v37);

  if (!v38)
  {
    sub_1A524C674();
    v38 = sub_1A524C634();
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v55;
  *(v39 + 24) = a5;
  v40 = objc_allocWithZone(off_1E7721440);
  v63 = sub_1A3D7B4C4;
  v64 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1A3C2E0D0;
  v62 = &block_descriptor_72;
  v41 = _Block_copy(&aBlock);

  v42 = [v40 initWithTitle:v38 style:1 action:v41];
  _Block_release(v41);

  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1A52F9DE0;
  *(v43 + 32) = v36;
  *(v43 + 40) = v42;
  sub_1A3C52C70(0, &qword_1EB12B9F0);
  v44 = v36;
  v45 = v42;
  v46 = sub_1A524CA14();

  [v57 addActions_];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1A52F8E10;
  v48 = PXLocalizedStringForPeoplePetsHomeTitle(v54);
  v49 = sub_1A524C674();
  v51 = v50;

  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = v53;
  *(v47 + 32) = v49;
  *(v47 + 40) = v51;
  sub_1A524C6C4();

  v52 = sub_1A524C634();

  [v57 setMessage_];

  [v57 setStyle_];
  [v57 setSourceItem_];
}

void sub_1A3D777A8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [a2 photoLibrary];
  v8 = [v7 px_peoplePetsHomeVisibility];
  v9 = sub_1A524C634();
  v10 = PXLocalizedString(v9);

  sub_1A524C674();
  sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F8E10;
  v12 = PXLocalizedStringForPeoplePetsHomeTitle(v8);
  v13 = sub_1A524C674();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1A3D710E8();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1A524C6C4();

  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v7;
  v16[4] = a3;
  v16[5] = a4;
  v17 = objc_allocWithZone(off_1E7721440);
  v34 = v7;

  v18 = sub_1A524C634();

  v41 = sub_1A3D7AE10;
  v42 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1A3C2E0D0;
  v40 = &block_descriptor_84;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 initWithTitle:v18 style:2 action:v19];
  _Block_release(v19);

  v21 = sub_1A524C634();
  v22 = PXLocalizedString(v21);

  if (!v22)
  {
    sub_1A524C674();
    v22 = sub_1A524C634();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = objc_allocWithZone(off_1E7721440);
  v41 = sub_1A3D7B0E8;
  v42 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1A3C2E0D0;
  v40 = &block_descriptor_90;
  v25 = _Block_copy(&aBlock);

  v26 = [v24 initWithTitle:v22 style:1 action:v25];
  _Block_release(v25);

  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F9DE0;
  *(v27 + 32) = v20;
  *(v27 + 40) = v26;
  sub_1A3C52C70(0, &qword_1EB12B9F0);
  v28 = v20;
  v29 = v26;
  v30 = sub_1A524CA14();

  [a1 addActions_];

  v31 = v34;
  [v34 isCloudPhotoLibraryEnabled];
  v32 = sub_1A524C634();

  v33 = PXLocalizedStringForPersonOrPetAndVisibility(0, v8, v32);

  if (!v33)
  {
    sub_1A524C674();
    v33 = sub_1A524C634();
  }

  [a1 setTitle_];

  [a1 setStyle_];
  [a1 setSourceItem_];
}

uint64_t sub_1A3D77CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1A3D77D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524D224();
  sub_1A3C52C70(0, &qword_1EB12B140);
  log = sub_1A524DED4();
  if (os_log_type_enabled(log, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = a1;
    *(v5 + 12) = 2048;
    *(v5 + 14) = a2;
    _os_log_impl(&dword_1A3C1C000, log, v4, "PHPersonResetManager progress: %ld of %ld.", v5, 0x16u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }
}

uint64_t sub_1A3D77DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1A3D77E58(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v33 = a3;
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A524BF64();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A524D224();
    sub_1A3C52C70(0, &qword_1EB12B140);
    v14 = sub_1A524DED4();
    sub_1A5246DF4();
  }

  else
  {
    v15 = sub_1A524D244();
    sub_1A3C52C70(0, &qword_1EB12B140);
    v14 = sub_1A524DED4();
    if (os_log_type_enabled(v14, v15))
    {
      v29 = a5;
      v30 = v9;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      _os_log_impl(&dword_1A3C1C000, v14, v15, "PHPersonResetManager failed with error: %@.", v16, 0xCu);
      sub_1A3CB65E4(v17);
      MEMORY[0x1A590EEC0](v17, -1, -1);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      a5 = v29;
      v9 = v30;
    }
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v21 = sub_1A524D474();
  v22 = swift_allocObject();
  v23 = v33;
  v24 = v31;
  *(v22 + 16) = v33;
  *(v22 + 24) = v24;
  *(v22 + 32) = a5;
  *(v22 + 40) = a1 & 1;
  *(v22 + 48) = a2;
  aBlock[4] = sub_1A3D7B2A8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_114;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = v23;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3D7B444(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C4D0BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v11, v25);
  _Block_release(v25);

  (*(v9 + 8))(v11, v8);
  return (*(v32 + 8))(v13, v34);
}

id sub_1A3D782CC(void *a1, uint64_t a2)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [result librarySpecificFetchOptions];

    [v6 setFetchLimit_];
    v7 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v7)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v7 = sub_1A524CA14();
    }

    [v6 setIncludedDetectionTypes_];

    v8 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:v6];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3D78460(void *a1)
{
  v1 = [a1 px_localDefaults];
  v2 = [v1 numberForKey_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A3D79860([v2 integerValue]);

    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A3D786A8(void *a1)
{
  v1 = sub_1A3D7A69C(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 manualOrder];

    result = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      return result;
    }

LABEL_6:
    __break(1u);
    return result;
  }

  v5 = sub_1A4680960();
  v6 = __OFADD__(*v5, 1);
  result = *v5 + 1;
  if (v6)
  {
    goto LABEL_6;
  }

  return result;
}

id _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A3D7873C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A3D78778(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A3D787BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static PXPeopleUtilities.oppositeSortOrder(of:)(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_1A52FA0F0[a1];
  }

  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53B4830);
  v2 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v2);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3D788C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A3D789B4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A3D789B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3CB6850(0, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
          sub_1A3D7ABA4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3D78B5C()
{
  result = qword_1EB12B100;
  if (!qword_1EB12B100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12B100);
  }

  return result;
}

uint64_t sub_1A3D78BC0()
{
  v1 = *(v0 + 40);
  if (*(v0 + 16) == 1)
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v4 = sub_1A524CA14();
    v5 = [v3 mergePersons:v4 withPerson:v2];

    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v1(v6);
}

uint64_t sub_1A3D78C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleMergingContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3D78CD4()
{
  if (!qword_1EB12B918)
  {
    type metadata accessor for LemonadePeopleMergingContentView();
    sub_1A3D7B444(&unk_1EB12B920, type metadata accessor for LemonadePeopleMergingContentView);
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B918);
    }
  }
}

uint64_t sub_1A3D78D68(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleMergingContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3D78DFC(void *a1, id a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  _Block_copy(a6);
  v13 = [a1 count];
  if (v13 >= 1)
  {
    v14 = v13;
    if (!a2)
    {
      v15 = [a1 photoLibrary];
      v16 = [v15 librarySpecificFetchOptions];

      [v16 setShouldPrefetchCount_];
      v17 = [objc_opt_self() px_defaultDetectionTypes];
      if (!v17)
      {
        sub_1A3C52C70(0, &qword_1EB126610);
        sub_1A524CA34();
        v17 = sub_1A524CA14();
      }

      [v16 setIncludedDetectionTypes_];

      if (__OFADD__(v14, 1))
      {
        goto LABEL_16;
      }

      [v16 setFetchLimit_];
      [v16 setPersonContext_];
      v18 = [objc_opt_self() fetchPersonsWithOptions_];
      a2 = [v18 count];
    }

    type metadata accessor for PeopleRemovalUtilities();
    static PeopleRemovalUtilities.removalType(peopleToBeRemovedCount:allPeopleCount:)(v14, a2, &v31);
    if (v31)
    {
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = sub_1A3D7A9AC;
      v19[4] = v12;
      v19[5] = a5;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1A3D7B4B4;
      *(v20 + 24) = v19;
      v35 = sub_1A3D7B4F8;
      v36 = v20;
      v31 = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1A3D35A90;
      v34 = &block_descriptor_49;
      a6 = _Block_copy(&v31);
      swift_unknownObjectRetain();

      v21 = a1;

      v22 = [a3 presentAlertWithConfigurationHandler_];
      swift_unknownObjectRelease();
      _Block_release(a6);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_10;
    }

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a4;
    v24[4] = sub_1A3D7A9AC;
    v24[5] = v12;
    v24[6] = a5;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1A3D7B4F4;
    *(v25 + 24) = v24;
    v35 = sub_1A3D7B4F8;
    v36 = v25;
    v31 = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1A3D35A90;
    v34 = &block_descriptor_60_0;
    v26 = _Block_copy(&v31);
    swift_unknownObjectRetain();

    v27 = a1;
    v28 = a4;

    v29 = [a3 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v26);
    v30 = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

LABEL_10:
  (*(a6 + 2))(a6, 0, 0);
}

id sub_1A3D792E4(void *a1)
{
  v2 = sub_1A5244EE4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v50 = 0xE000000000000000;
  v7 = [a1 librarySpecificFetchOptions];
  (*(v3 + 104))(v6, *MEMORY[0x1E69C12A8], v2);
  sub_1A5244EF4();
  swift_allocObject();
  v8 = v7;
  v9 = a1;
  sub_1A5244ED4();
  sub_1A5244BF4();
  v10 = sub_1A5244BE4();

  v11 = [v10 fetchedObjects];

  if (!v11)
  {
    return v49;
  }

  sub_1A3C52C70(0, &qword_1EB126C28);
  v12 = sub_1A524CA34();

  v42 = v12;
  if (v12 >> 62)
  {
LABEL_30:
    v13 = sub_1A524E2B4();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_31:

    return v49;
  }

LABEL_4:
  v14 = 0;
  v46 = v42 & 0xFFFFFFFFFFFFFF8;
  v47 = v42 & 0xC000000000000001;
  v44 = "Unsupported raw sort order: ";
  v45 = v42 + 32;
  v43 = v13;
  while (1)
  {
    if (v47)
    {
      v15 = MEMORY[0x1A59097F0](v14, v42);
    }

    else
    {
      if (v14 >= *(v46 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v45 + 8 * v14);
    }

    v16 = v15;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v18 = [v15 debugDescription];
    v19 = sub_1A524C674();
    v21 = v20;

    MEMORY[0x1A5907B60](v19, v21);

    result = [v16 photoLibrary];
    if (!result)
    {
      break;
    }

    v23 = result;
    v24 = [result librarySpecificFetchOptions];

    [v24 setFetchLimit_];
    v25 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v25)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v25 = sub_1A524CA14();
    }

    [v24 setIncludedDetectionTypes_];

    v26 = [objc_opt_self() fetchPersonsInSocialGroup:v16 option:v24];
    v27 = [v26 fetchedObjects];

    if (v27)
    {
      v48 = v16;
      sub_1A3C52C70(0, &qword_1EB1265C0);
      v28 = sub_1A524CA34();
      MEMORY[0x1A5907B60](2570, 0xE200000000000000);
      MEMORY[0x1A5907B60](0xD000000000000013, v44 | 0x8000000000000000);
      v29 = [objc_opt_self() titleStringForPeople_];

      v30 = sub_1A524C674();
      v32 = v31;

      MEMORY[0x1A5907B60](v30, v32);

      MEMORY[0x1A5907B60](2570, 0xE200000000000000);
      if (v28 >> 62)
      {
        v33 = sub_1A524E2B4();
        if (!v33)
        {
LABEL_26:

          goto LABEL_6;
        }
      }

      else
      {
        v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_26;
        }
      }

      if (v33 < 1)
      {
        goto LABEL_29;
      }

      v34 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1A59097F0](v34, v28);
        }

        else
        {
          v35 = *(v28 + 8 * v34 + 32);
        }

        v36 = v35;
        ++v34;
        v37 = [v35 debugDescription];
        v38 = sub_1A524C674();
        v40 = v39;

        MEMORY[0x1A5907B60](v38, v40);

        MEMORY[0x1A5907B60](2570, 0xE200000000000000);
      }

      while (v33 != v34);

      v13 = v43;
    }

    else
    {
    }

LABEL_6:
    if (v14 == v13)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3D79860(unint64_t a1)
{
  v1 = FetchResultSortOrder.init(rawValue:)(a1);
  if (v2)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000035, 0x80000001A53B4940);
    v5 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v5);

    goto LABEL_6;
  }

  v3 = v1;
  sub_1A3D7AC28();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v7 != v6)
  {
    sub_1A524C9C4();
    sub_1A524C9C4();
    sub_1A524C9C4();
    sub_1A524C9C4();
    while (1)
    {
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53B4980);
      sub_1A524E624();
LABEL_6:
      sub_1A524E6E4();
      __break(1u);
    }
  }

  return v3;
}

uint64_t sub_1A3D79A7C(uint64_t a1)
{
  sub_1A3D7AC28();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v4 == v3)
  {
    return FetchResultSortOrder.rawValue.getter(a1);
  }

  sub_1A524C9C4();
  sub_1A524C9C4();
  sub_1A524C9C4();
  sub_1A524C9C4();
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000018, 0x80000001A53B4920);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3D79C1C(uint64_t a1, id a2)
{
  v4 = [a2 px_localDefaults];
  v5 = [v4 numberForKey_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A3D79860([v5 integerValue]);

    v4 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1A3D7AC7C();
  if ((sub_1A524C594() & 1) == 0)
  {
    sub_1A3D79A7C(a1);
    v8 = [a2 px_localDefaults];
    sub_1A3C52C70(0, &qword_1EB126610);
    v9 = sub_1A524DBD4();
    [v8 setNumber:v9 forKey:@"PXPeopleHomeSortingType"];
  }
}

id sub_1A3D79D6C(id a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    if (a3)
    {
LABEL_3:
      v7 = a2;
      v8 = a3;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [a1 librarySpecificFetchOptions];
    [v9 setPersonContext_];
    [v9 setMinimumUnverifiedFaceCount_];
    [v9 setFetchLimit_];
    sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F9DE0;
    v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v12 = sub_1A524C634();
    v13 = [v11 initWithKey:v12 ascending:0];

    *(v10 + 32) = v13;
    v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v15 = sub_1A524C634();
    v16 = [v14 initWithKey:v15 ascending:1];

    *(v10 + 40) = v16;
    sub_1A3C52C70(0, &qword_1EB126B60);
    v17 = sub_1A524CA14();

    [v9 setSortDescriptors_];

    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A52F8E10;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1A3D710E8();
    *(v18 + 32) = 0x6563614679656BLL;
    *(v18 + 40) = 0xE700000000000000;
    v19 = sub_1A524D134();
    [v9 setInternalPredicate_];

    v6 = [objc_opt_self() fetchPersonsWithOptions_];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v20 = a2;
  v21 = [a1 librarySpecificFetchOptions];
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9790;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1A524C634();
  v25 = [v23 initWithKey:v24 ascending:1];

  *(v22 + 32) = v25;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v26 = sub_1A524CA14();

  [v21 setSortDescriptors_];

  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F8E10;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1A3D710E8();
  *(v27 + 32) = 0x6563614679656BLL;
  *(v27 + 40) = 0xE700000000000000;
  v28 = sub_1A524D134();
  [v21 setInternalPredicate_];

  v29 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v29)
  {
    sub_1A3C52C70(0, &qword_1EB126610);
    sub_1A524CA34();
    v29 = sub_1A524CA14();
  }

  [v21 setIncludedDetectionTypes_];

  v8 = [objc_opt_self() fetchPersonsWithType:-1 options:v21];
LABEL_8:
  v30 = a3;
  v31 = [v6 fetchedObjects];
  if (v31)
  {
    v32 = v31;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v33 = sub_1A524CA34();
  }

  else
  {
    v33 = 0;
  }

  v34 = [v8 fetchedObjects];
  if (v34)
  {
    v35 = v34;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v36 = sub_1A524CA34();

    if (v33)
    {
      if (v36)
      {
        sub_1A3D788C4(v36);
      }
    }
  }

  v37 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v38 = sub_1A524CA14();

  v39 = [v37 peopleFetchResultFromFastEnumeration:v38 photoLibrary:a1];

  return v39;
}

id sub_1A3D7A428(void *a1)
{
  v2 = type metadata accessor for FaceContentView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB6850(0, &unk_1EB12B9A8, &unk_1EB120620, 0x1E69787C8, type metadata accessor for PhotoKitItem);
  v30[0] = 2;
  v5 = a1;
  sub_1A3C6C180(&v28);
  v26 = v28;
  v27 = v29;
  v6 = sub_1A42011B0();
  sub_1A3C6C18C(&v24);
  v22 = v24;
  v23 = v25;
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C30368();
  v9 = sub_1A3C5A374();
  v10 = sub_1A3C5A374();
  v11 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v26, 0, v6, 0, 1, &v22, v7 & 1, v30, v21, v8, v9 & 1, v10 & 1, v11 & 1, 0);
  sub_1A3C52C70(0, &unk_1EB120620);
  v12 = sub_1A3F6298C();
  PhotoKitItem.__allocating_init(value:options:metadata:)(v5, v21, v12);
  v21[0] = v13;
  sub_1A3D7A9C4();
  swift_allocObject();
  sub_1A52424D4();

  sub_1A4856630(v14, v4);
  sub_1A3D7AB10();
  v16 = objc_allocWithZone(v15);
  v17 = sub_1A5249624();
  result = [v17 view];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A3D7A69C(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  [v1 setFetchLimit_];
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9DE0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1A524C634();

  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1A524C634();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v9 = sub_1A524CA14();

  [v1 setSortDescriptors_];

  v10 = [objc_opt_self() fetchSocialGroupsWithOptions_];
  v11 = [v10 firstObject];

  return v11;
}

unint64_t sub_1A3D7A8B4()
{
  result = qword_1EB12B998;
  if (!qword_1EB12B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B998);
  }

  return result;
}

void sub_1A3D7A9C4()
{
  if (!qword_1EB12B9B8)
  {
    sub_1A3CB6850(255, &unk_1EB12B9A8, &unk_1EB120620, 0x1E69787C8, type metadata accessor for PhotoKitItem);
    sub_1A3D7AAA0(&qword_1EB12B9C0);
    sub_1A3D7AAA0(&qword_1EB12B9C8);
    v0 = sub_1A52424C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B9B8);
    }
  }
}

uint64_t sub_1A3D7AAA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB6850(255, &unk_1EB12B9A8, &unk_1EB120620, 0x1E69787C8, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3D7AB10()
{
  if (!qword_1EB12B9D0)
  {
    type metadata accessor for FaceContentView();
    sub_1A3D7B444(&unk_1EB12B9D8, type metadata accessor for FaceContentView);
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B9D0);
    }
  }
}

unint64_t sub_1A3D7ABA4()
{
  result = qword_1EB120BE0;
  if (!qword_1EB120BE0)
  {
    sub_1A3CB6850(255, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120BE0);
  }

  return result;
}

unint64_t sub_1A3D7AC28()
{
  result = qword_1EB12B9E8;
  if (!qword_1EB12B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B9E8);
  }

  return result;
}

unint64_t sub_1A3D7AC7C()
{
  result = qword_1EB12A390;
  if (!qword_1EB12A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A390);
  }

  return result;
}

void sub_1A3D7ACD0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = [objc_allocWithZone(PXChangePeopleTypeAction) initWithPeople:v0[2] type:-1];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    v8[4] = sub_1A3D7ADE8;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A3D6084C;
    v8[3] = &block_descriptor_78;
    v7 = _Block_copy(v8);

    [v5 executeWithUndoManager:v1 completionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1A3D7AE10()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A3D7B118;
  *(v7 + 24) = v6;
  v21 = sub_1A3D7B4F8;
  v22 = v7;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3D77CC4;
  v20 = &block_descriptor_99;
  v8 = _Block_copy(&v17);

  v9 = [v5 beginShowingModalProgressWithConfiguration_];
  _Block_release(v8);
  v10 = [objc_allocWithZone(MEMORY[0x1E6978998]) initWithPhotoLibrary_];
  v21 = sub_1A3D77D18;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3D77DF8;
  v20 = &block_descriptor_102;
  v11 = _Block_copy(&v17);
  [v10 setProgressHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v4;
  v12[4] = v3;
  v21 = sub_1A3D7B29C;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3D6084C;
  v20 = &block_descriptor_108;
  v13 = _Block_copy(&v17);
  v14 = v9;

  v15 = [v10 resetPersonsWithCompletionHandler_];
  _Block_release(v13);

  LODWORD(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_1A3D7B118(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  sub_1A3C4D0BC(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  v7 = PXLocalizedStringForPeoplePetsHomeTitle(v3);
  v8 = sub_1A524C674();
  v10 = v9;

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1A3D710E8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1A524C6C4();

  v11 = sub_1A524C634();

  [a1 setTitle_];

  return [a1 setDelay_];
}

uint64_t sub_1A3D7B2A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  [v1 stopShowing];
  return v2(v3, v4);
}

uint64_t sub_1A3D7B444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3D7B4FC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))(v3);
  }

  return result;
}

void sub_1A3D7B5FC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);
  sub_1A3C52C70(0, &qword_1EB12D040);
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))(v10);
  }
}

id MacSyncedAlbumsAvailabilityObserver.__deallocating_deinit()
{
  [*(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary) unregisterChangeObserver_];
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))(KeyPath);

  [*(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer) unregisterObserver_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MacSyncedAlbumsAvailabilityObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A3D7B9CC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

void sub_1A3D7BA54()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();

  [*(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer) registerObserver_];
  _s12PhotosUICore35MacSyncedAlbumsAvailabilityObserverC19outputEventSignaled3forySo16PXEventCoalescerC_tF_0();
  sub_1A3D7C8BC();
  [*(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary) registerChangeObserver_];
  type metadata accessor for InternalSettingsObserver();
  sub_1A3C52C70(0, &qword_1EB126858);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_1A3C42348(v1, sub_1A3D7D72C, v2);
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_internalSettingsObserver);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_internalSettingsObserver) = v3;
}

uint64_t sub_1A3D7BBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BF64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 0x6974616C756D6973 && a2 == 0xEE0065646F4D6E6FLL || (result = sub_1A524EAB4(), (result & 1) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v16 = sub_1A524D474();
    aBlock[4] = sub_1A3D7D734;
    aBlock[5] = a3;
    v22 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_34;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C519F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v21 = v10;
    v18 = v7;
    v19 = MEMORY[0x1E69E7F60];
    sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v19);
    sub_1A524E224();
    v20 = v22;
    MEMORY[0x1A5908800](0, v14, v9, v17);
    _Block_release(v17);

    (*(v18 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v21);
  }

  return result;
}

void sub_1A3D7BF0C(void *a1)
{
  v2 = sub_1A524BEE4();
  v62 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v66 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v64 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = v55 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v55 - v14;
  v65 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(v13);
  sub_1A3C52C70(0, &qword_1EB126858);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 simulationMode];

  if (v17 == 1)
  {
LABEL_15:
    if ((v65 & 1) == 0)
    {
      return;
    }

    v42 = 0;
    goto LABEL_17;
  }

  if (v17)
  {
LABEL_24:
    type metadata accessor for PXMacSyncedAlbumsSettingsSimulation(0);
    aBlock[0] = v17;
    sub_1A524EB44();
    __break(1u);
    return;
  }

  v18 = [*(a1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary) photoLibrary];
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = [v18 hasITunesSyncedContent];

  v21 = v66;
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v23 = [swift_getObjCClassFromMetadata() sharedInstance];
    v22 = [v23 simulateFromMyMacAlbums];
  }

  v24 = sub_1A3C5C42C();
  v25 = *(v21 + 16);
  v58 = v24;
  v59 = v21 + 16;
  v57 = v25;
  (v25)(v15);
  v26 = sub_1A5246F04();
  v27 = sub_1A524D224();
  v28 = v15;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    LODWORD(v60) = v22;
    v30 = v29;
    v31 = swift_slowAlloc();
    v56 = v5;
    aBlock[0] = v31;
    *v30 = 136315138;
    v55[1] = v8;
    sub_1A3C2EF94();
  }

  v32 = *(v66 + 8);
  v32(v28, v8);
  if (!v22)
  {
    goto LABEL_15;
  }

  v33 = *(a1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult);
  if (!v33)
  {
    if (v65)
    {
      return;
    }

    v42 = 1;
    goto LABEL_17;
  }

  v60 = a1;
  v56 = v7;
  v34 = v61;
  v35 = v8;
  v57(v61, v58, v8);
  v36 = v33;
  v37 = sub_1A5246F04();
  v38 = sub_1A524D224();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = [v36 count];
    _os_log_impl(&dword_1A3C1C000, v37, v38, "Basing availability on macSyncedAlbums count: %ld", v39, 0xCu);
    v40 = v39;
    v34 = v61;
    MEMORY[0x1A590EEC0](v40, -1, -1);
  }

  v8 = v35;
  v32(v34, v35);
  v41 = [v36 count];

  v42 = v41 > 0;
  v7 = v56;
  a1 = v60;
  if ((v65 & 1) != v42)
  {
LABEL_17:
    v43 = sub_1A3C5C42C();
    v44 = v66;
    (*(v66 + 16))(v64, v43, v8);
    v45 = sub_1A5246F04();
    v46 = sub_1A524D264();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v8;
      v48 = swift_slowAlloc();
      *v48 = 67240448;
      *(v48 + 4) = v65 & 1;
      *(v48 + 8) = 1026;
      *(v48 + 10) = v42;
      _os_log_impl(&dword_1A3C1C000, v45, v46, "Mac Synced Albums availability going from %{BOOL,public}d to %{BOOL,public}d", v48, 0xEu);
      v49 = v48;
      v8 = v47;
      v44 = v66;
      MEMORY[0x1A590EEC0](v49, -1, -1);
    }

    (*(v44 + 8))(v64, v8);
    sub_1A3C52C70(0, &qword_1EB12B180);
    v50 = sub_1A524D474();
    v51 = swift_allocObject();
    *(v51 + 16) = a1;
    *(v51 + 24) = v42;
    aBlock[4] = sub_1A3D7D82C;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_46_0;
    v52 = _Block_copy(aBlock);
    v53 = a1;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C519F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v54 = MEMORY[0x1E69E7F60];
    sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v54);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v7, v4, v52);
    _Block_release(v52);

    (*(v62 + 8))(v4, v2);
    (*(v63 + 8))(v7, v5);
  }
}

uint64_t sub_1A3D7C7B8(uint64_t result, char a2)
{
  v2 = result;
  if (*(result + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable) == (a2 & 1))
  {
    *(result + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))(v4, sub_1A3D7D890);
  }

  return result;
}

uint64_t sub_1A3D7C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A760 != -1)
  {
    swift_once();
  }

  v18[1] = qword_1EB17A768;
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A3C519F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v16);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

id sub_1A3D7CBCC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);

  return v1;
}

id sub_1A3D7CC58@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x130))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);
  *a2 = v5;

  return v5;
}

uint64_t sub_1A3D7CD30()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF54();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C519F4(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C29F88(0, &qword_1EB126E40, MEMORY[0x1E69E8030]);
  sub_1A3C2A728(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB17A768 = result;
  return result;
}

id MacSyncedAlbumsAvailabilityObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall MacSyncedAlbumsAvailabilityObserver.photoLibraryDidChange(_:)(PHChange a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult;
  v11 = *&v1[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult];
  if (v11)
  {
    v23 = v3;
    sub_1A3C52C70(0, &qword_1EB126AC0);
    v24 = v11;
    v12 = sub_1A524DC44();
    if (v12)
    {
      v22 = v12;
      v13 = [v12 fetchResultAfterChanges];
      v14 = *&v1[v10];
      *&v1[v10] = v13;

      sub_1A3C52C70(0, &qword_1EB12B180);
      v21 = sub_1A524D474();
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      aBlock[4] = sub_1A3D7D55C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_4;
      v16 = _Block_copy(aBlock);
      v17 = v1;

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3C519F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      v18 = MEMORY[0x1E69E7F60];
      sub_1A3C29F88(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
      sub_1A3C2A728(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
      sub_1A524E224();
      v19 = v21;
      MEMORY[0x1A5908800](0, v9, v5, v16);

      _Block_release(v16);
      (*(v23 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v20 = v24;
    }
  }
}

id sub_1A3D7D55C()
{
  v1 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(KeyPath);

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);

  return [v3 inputEvent];
}

void sub_1A3D7D654()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer) = v2;
  v4 = v2;
}

void sub_1A3D7D694()
{
  v1 = *(v0 + 16);
  v2 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary) px_standardLibrarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v3 = sub_1A3FEE19C(v2);

  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult) = v3;
}

void sub_1A3D7D734()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))();

    v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer);

    [v2 inputEvent];
  }
}

void sub_1A3D7D838()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3D7BA54();
  }
}

id PXSensitivityUIOverlayView.init(asset:frame:overlayKind:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 frame:a2 overlayKind:{a3, a4, a5, a6}];

  return v7;
}

{
  v60 = *MEMORY[0x1E69E9840];
  v13 = sub_1A5246F24();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1A524D934();
  v16 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR___PXSensitivityUIOverlayView_overlayKind] = a2;
  v19 = OBJC_IVAR___PXSensitivityUIOverlayView_asset;
  *&v6[OBJC_IVAR___PXSensitivityUIOverlayView_asset] = a1;
  v20 = a1;
  v21 = [v20 photoLibrary];
  if (!v21)
  {
    __break(1u);
  }

  v22 = OBJC_IVAR___PXSensitivityUIOverlayView_photoLibrary;
  *&v6[OBJC_IVAR___PXSensitivityUIOverlayView_photoLibrary] = v21;
  v23 = [v20 compactSCSensitivityAnalysis];
  v24 = objc_allocWithZone(MEMORY[0x1E697B670]);
  aBlock[0] = 0;
  v25 = [v24 initFromCompactAnalysis:v23 error:aBlock];
  if (v25)
  {
    v26 = v25;
    v59.receiver = v6;
    v59.super_class = PXSensitivityUIOverlayView;
    v27 = aBlock[0];
    v28 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a3, a4, a5, a6);
    v29 = objc_allocWithZone(MEMORY[0x1E69CA918]);
    v30 = v28;
    v31 = [v29 initWithOptions_];
    sub_1A3D7DEF8(v26, v18);
    sub_1A524D944();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A3D7EE94;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_5;
    v33 = _Block_copy(aBlock);

    [v31 setOnAnalysisChanged_];
    _Block_release(v33);
    v34 = v31;
    [v34 setAutoresizingMask_];
    [v30 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [v34 setFrame_];
    [v34 setClipsToBounds_];

    [v30 addSubview_];
    (*(v16 + 8))(v18, v56);
  }

  else
  {
    v56 = v6;
    v43 = aBlock[0];
    v44 = sub_1A5240B84();

    swift_willThrow();
    v45 = sub_1A45D8754();
    (*(v57 + 16))(v15, v45, v13);
    v46 = v44;
    v47 = sub_1A5246F04();
    v48 = sub_1A524D264();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v44;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_1A3C1C000, v47, v48, "Could not create a PXSensitivityUIOverlayView: %@", v49, 0xCu);
      sub_1A3CB65E4(v50);
      MEMORY[0x1A590EEC0](v50, -1, -1);
      MEMORY[0x1A590EEC0](v49, -1, -1);
    }

    else
    {
    }

    v53 = v56;

    (*(v57 + 8))(v15, v13);
    type metadata accessor for PXSensitivityUIOverlayView(v54);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v30;
}

id sub_1A3D7DEF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v4 = sub_1A5246D54();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524D934();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A45D8754();
  (*(v9 + 16))(v11, v12, v8);
  v13 = v2;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v35[1] = v4;
    v35[2] = a2;
    v16 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    v43 = v35[0];
    *v16 = 136315394;
    v17 = [v13 asset];
    v18 = [v17 uuid];

    if (v18)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
    goto LABEL_17;
  }

  (*(v9 + 8))(v11, v8);
  v19 = [v13 asset];
  v20 = [v19 isVideo];

  if (v20)
  {
    v21 = v37;
    sub_1A5246D44();
  }

  else
  {
    v21 = v37;
    sub_1A5246D34();
  }

  v22 = [v13 overlayKind];
  if (v22 == 2)
  {
    sub_1A3D7EF8C();
    v24 = v36;
    v25 = v36 + *(v27 + 48);
    *v36 = v41;
    v26 = MEMORY[0x1E69CA8B8];
  }

  else if (v22 == 1)
  {
    sub_1A3D7EF8C();
    v24 = v36;
    v25 = v36 + *(v23 + 48);
    *v36 = v41;
    v26 = MEMORY[0x1E69CA8A8];
  }

  else
  {
    if (v22)
    {
LABEL_17:
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1A524E404();

      v43 = 0xD000000000000023;
      v44 = 0x80000001A53B4E80;
      v42 = [v13 overlayKind];
      v34 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v34);

      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    sub_1A3D7EF8C();
    v24 = v36;
    v25 = v36 + *(v28 + 48);
    *v36 = v41;
    v26 = MEMORY[0x1E69CA8D0];
  }

  (*(v40 + 32))(v25, v21, v4);
  v29 = *v26;
  v31 = v38;
  v30 = v39;
  (*(v38 + 104))(v24, v29, v39);
  (*(v31 + 32))(a2, v24, v30);
  v32 = v41;

  return v32;
}

void sub_1A3D7E5EC(uint64_t a1, void *a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = v41 - v11;
  v45 = v3;
  v13 = [v3 asset];
  v14 = sub_1A45D8754();
  v42 = *(v7 + 16);
  v43 = v14;
  v42(v12);
  v15 = v13;
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  v18 = os_log_type_enabled(v16, v17);
  v44 = a1;
  if (v18)
  {
    v41[0] = a2;
    v41[1] = v7;
    v41[2] = v6;
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315138;
    v20 = [v15 uuid];

    if (v20)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    v21 = *(v7 + 8);
    v21(v12, v6);
    v22 = [v45 photoLibrary];
    v23 = swift_allocObject();
    v23[2] = v15;
    v23[3] = a1;
    v23[4] = a2;
    aBlock[4] = sub_1A3D7EF80;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_6;
    v24 = _Block_copy(aBlock);
    v25 = v15;
    v26 = a2;
    v27 = v25;
    v28 = v26;

    aBlock[0] = 0;
    v29 = [v22 performChangesAndWait:v24 error:aBlock];
    _Block_release(v24);

    if (v29)
    {
      v30 = aBlock[0];
    }

    else
    {
      v31 = aBlock[0];
      v32 = sub_1A5240B84();

      swift_willThrow();
      (v42)(v46, v43, v6);
      v33 = v32;
      v34 = sub_1A5246F04();
      v35 = sub_1A524D244();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 134218242;
        *(v36 + 4) = v44;
        *(v36 + 12) = 2112;
        v38 = v32;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v39;
        *v37 = v39;
        _os_log_impl(&dword_1A3C1C000, v34, v35, "Could not update %ld analysis state: %@.", v36, 0x16u);
        sub_1A3CB65E4(v37);
        MEMORY[0x1A590EEC0](v37, -1, -1);
        MEMORY[0x1A590EEC0](v36, -1, -1);
        v40 = v34;
      }

      else
      {
        v40 = v27;
        v27 = v34;
      }

      v21(v46, v6);
    }
  }
}

void sub_1A3D7EAEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() changeRequestForAsset_];
  if (a2 == 1)
  {
    v11 = [a3 compactAnalysis];
    [v18 setCompactVideoSCSensitivityAnalysis_];
    goto LABEL_5;
  }

  if (!a2)
  {
    v10 = [a3 compactAnalysis];
    [v18 setCompactImageSCSensitivityAnalysis_];
LABEL_5:
    v12 = v18;

    return;
  }

  v13 = sub_1A45D8754();
  (*(v7 + 16))(v9, v13, v6);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_1A3C1C000, v14, v15, "Unexpected analysis type %ld", v16, 0xCu);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

void __swiftcall PXSensitivityUIOverlayView.init(frame:)(PXSensitivityUIOverlayView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

void sub_1A3D7EE94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong overrideAnalysis:0 with:a1];
    v4 = [v3 asset];
    v5 = [v4 isVideo];

    if ((v5 & 1) != 0 || (v6 = [v3 asset], v7 = objc_msgSend(v6, sel_isLivePhoto), v6, v7))
    {
      [v3 overrideAnalysis:1 with:a1];
    }
  }
}

void sub_1A3D7EF8C()
{
  if (!qword_1EB12BB38)
  {
    sub_1A3C4B7E8(255, &qword_1EB12BB40, &qword_1EB12BB48);
    sub_1A5246D54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12BB38);
    }
  }
}

uint64_t sub_1A3D7F044()
{
  sub_1A3CB4D08();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB508);
  __swift_project_value_buffer(v1, qword_1EB1EB508);
  sub_1A3CB9044(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3D7F1FC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_1A3D7F284(uint64_t a1, uint64_t *a2)
{
  sub_1A3CB4D08();
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  sub_1A3CB9044(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3D7F434@<X0>(uint64_t *a1@<X8>)
{
  sub_1A3CB8D98(0);
  result = sub_1A5247754();
  *a1 = result;
  return result;
}

uint64_t sub_1A3D7F478()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3D7F4D0()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3D7F56C(uint64_t a1, uint64_t *a2)
{
  sub_1A3CB8D98(0);
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1A5247734();
}

uint64_t sub_1A3D7F5D0()
{
  sub_1A3CB4D08();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB830);
  __swift_project_value_buffer(v1, qword_1EB1EB830);
  sub_1A3CB9044(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3D7F744@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v35 = sub_1A5240A74();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB7AE0(0, &qword_1EB12B070, MEMORY[0x1E69E6530], MEMORY[0x1E6968D10]);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  sub_1A3CB90A8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB90EC();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB95E4();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB0A78(&qword_1EB12B038, sub_1A3CB90A8);
  sub_1A5240AB4();
  swift_getKeyPath();
  sub_1A5240A54();

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  sub_1A3CB0A78(&qword_1EB12B068, sub_1A3CB90EC);
  sub_1A5240A54();

  (*(v14 + 8))(v16, v13);
  v39 = v34;
  v21 = MEMORY[0x1E69E6530];
  sub_1A5240AA4();
  v23 = v32;
  v22 = v33;
  v24 = v35;
  (*(v33 + 104))(v32, *MEMORY[0x1E6968C28], v35);
  sub_1A3CB9680();
  v25 = v36;
  v36[3] = v26;
  v25[4] = sub_1A3CB9884();
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1A3CB0A78(&qword_1EB12B050, sub_1A3CB95E4);
  sub_1A3CB81F4(&qword_1EB12B078, &qword_1EB12B070, v21);
  v27 = v30;
  v28 = v37;
  sub_1A5240A64();
  (*(v22 + 8))(v23, v24);
  (*(v38 + 8))(v6, v28);
  return (*(v31 + 8))(v20, v27);
}

uint64_t sub_1A3D7FC74@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v17 = a1;
  v3 = MEMORY[0x1E69E6370];
  sub_1A3CB7AE0(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  sub_1A3CB7AE0(0, &qword_1EB12B010, v3, MEMORY[0x1E6968D98]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  sub_1A3CB7DF4(&qword_1EB12B018);
  sub_1A5240AB4();
  v18 = v17;
  sub_1A5240AA4();
  sub_1A3CB7F40();
  a2[3] = v14;
  a2[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1A3CB81F4(&qword_1EB12B090, &qword_1EB12B088, v3);
  sub_1A5240A44();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A3D7FEEC()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3D7FF44()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3D7FF9C()
{
  v0 = sub_1A5246944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A4A5AF20();
  (*(v1 + 16))(v3, v4, v0);
  return sub_1A524B5E4();
}

uint64_t sub_1A3D80070()
{
  sub_1A3D809E8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D80A9C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247594();
  v14 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v8, v5, MEMORY[0x1E6982A88]);
  (*(v6 + 8))(v8, v5);
  v18 = v5;
  v19 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v13, v10, OpaqueTypeConformance2);
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1A5247554();
  (*(v2 + 8))(v4, v1);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_1A3D8031C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v5 = a2();
  result = MEMORY[0x1A59027B0](a1, v5);
  *a3 = result;
  a3[1] = v7;
  return result;
}

void sub_1A3D80360()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB4D08();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5247704();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A40593DC();
  swift_beginAccess();
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v14 = v16;
  v17 = v13;
  v18 = v9;
  v16(v8, v17, v5);
  sub_1A5247724();
  v30 = sub_1A52474F4();
  v32 = *(v10 + 8);
  v32(v12, v9);
  if (qword_1EB18DAA0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_1EB1EB508);
  swift_beginAccess();
  v14(v8, v19, v5);
  sub_1A5247724();
  v27 = sub_1A52474F4();
  v32(v12, v18);
  v20 = v15;
  if (qword_1EB16EAC8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_1EB1EAFA0);
  swift_beginAccess();
  v31 = v20;
  v29 = v14;
  v14(v8, v21, v5);
  sub_1A5247724();
  sub_1A52474F4();
  v32(v12, v18);
  v22 = v18;
  if (qword_1EB18DAA8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v1, qword_1EB1EB520);
  (*(v2 + 16))(v28, v23, v1);
  sub_1A5247524();
  v24 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40]);
  sub_1A3CB0A78(&qword_1EB128BC0, v24);
  sub_1A5247714();
  sub_1A52474F4();
  v25 = v32;
  v32(v12, v18);
  if (qword_1EB16EAD0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_1EB1EAFB8);
  swift_beginAccess();
  v29(v8, v26, v5);
  sub_1A5247724();
  sub_1A52474F4();
  v25(v12, v22);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D809E8()
{
  if (!qword_1EB1249F0)
  {
    sub_1A3D80A9C();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1249F0);
    }
  }
}

void sub_1A3D80A9C()
{
  if (!qword_1EB128BA0)
  {
    sub_1A5247584();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB128BA0);
    }
  }
}

void sub_1A3D80B20()
{
  sub_1A3CB8D98(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB4D08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5247704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A40593DC();
  swift_beginAccess();
  v15 = *(v7 + 16);
  v25 = v6;
  v23 = v15;
  v15(v9, v14, v6);
  sub_1A5247724();
  v24 = sub_1A52474F4();
  v16 = *(v11 + 8);
  v16(v13, v10);
  if (qword_1EB16ED40 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1EB1EB818);
  (*(v2 + 16))(v4, v17, v1);
  sub_1A5247524();
  v18 = MEMORY[0x1E6982A40];
  sub_1A3CB0A78(&unk_1EB128BB0, MEMORY[0x1E6982A40]);
  sub_1A3CB0A78(&qword_1EB128BC0, v18);
  sub_1A5247714();
  sub_1A52474F4();
  v16(v13, v10);
  v19 = v10;
  if (qword_1EB16ED48 != -1)
  {
    swift_once();
  }

  v20 = v25;
  v21 = __swift_project_value_buffer(v25, qword_1EB1EB830);
  swift_beginAccess();
  v23(v9, v21, v20);
  sub_1A5247724();
  sub_1A52474F4();
  v16(v13, v19);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3D80FB4()
{
  result = qword_1EB12A650;
  if (!qword_1EB12A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A650);
  }

  return result;
}

unint64_t sub_1A3D8100C()
{
  result = qword_1EB12BB58;
  if (!qword_1EB12BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BB58);
  }

  return result;
}

unint64_t sub_1A3D81080()
{
  result = qword_1EB12BB60;
  if (!qword_1EB12BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BB60);
  }

  return result;
}

unint64_t sub_1A3D810D4()
{
  result = qword_1EB12A658;
  if (!qword_1EB12A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A658);
  }

  return result;
}

unint64_t PhotosPickerCollectionType.rawValue.getter()
{
  result = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      result = 1885958772;
      break;
    case 2:
    case 4:
    case 6:
    case 8:
    case 0xE:
      result = 0x6465727574616566;
      break;
    case 3:
      result = 0x79726F6D656DLL;
      break;
    case 5:
      result = 0x746E657665;
      break;
    case 7:
      result = 0x656C706F6570;
      break;
    case 9:
      result = 0x72476C6169636F73;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0x707954616964656DLL;
      break;
    case 0xC:
      result = 0x7974696C697475;
      break;
    case 0xD:
      result = 0x6C41646572616873;
      break;
    case 0xF:
      result = 0x736F65646976;
      break;
    case 0x10:
      result = 0x657469726F766166;
      break;
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
      result = 0x796C746E65636572;
      break;
    case 0x15:
      result = 7364973;
      break;
    case 0x16:
      result = 0xD000000000000017;
      break;
    case 0x17:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

PhotosUICore::PhotosPickerCollectionType_optional __swiftcall PhotosPickerCollectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524EB24();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A3D81500()
{
  v0 = PhotosPickerCollectionType.rawValue.getter();
  v2 = v1;
  if (v0 == PhotosPickerCollectionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A524EAB4();
  }

  return v5 & 1;
}

unint64_t sub_1A3D815A0()
{
  result = qword_1EB12BB68;
  if (!qword_1EB12BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BB68);
  }

  return result;
}

uint64_t sub_1A3D815F4()
{
  sub_1A524EC94();
  PhotosPickerCollectionType.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3D8165C()
{
  PhotosPickerCollectionType.rawValue.getter();
  sub_1A524C794();
}

uint64_t sub_1A3D816C0()
{
  sub_1A524EC94();
  PhotosPickerCollectionType.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A3D81730@<X0>(unint64_t *a1@<X8>)
{
  result = PhotosPickerCollectionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A3D8180C()
{
  result = qword_1EB12BB70;
  if (!qword_1EB12BB70)
  {
    sub_1A3D81864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BB70);
  }

  return result;
}

void sub_1A3D81864()
{
  if (!qword_1EB12BB78)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BB78);
    }
  }
}

uint64_t getEnumTagSinglePayload for LemonadeShelfIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeShelfIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3D81A48()
{
  result = qword_1EB12BB80;
  if (!qword_1EB12BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BB80);
  }

  return result;
}

uint64_t sub_1A3D81A9C(void *a1, double a2)
{
  sub_1A524EC94();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  MEMORY[0x1A590A040](*&v4);
  if (a1)
  {
    v5 = a1;
    v6 = [v5 identifier];
    sub_1A524C674();

    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A3D81B54()
{
  if (!*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  v1 = [*v0 givenName];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A3D81BD4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1A590A040](*&v2);
  if (v1)
  {
    v4 = v1;
    v3 = [v4 identifier];
    sub_1A524C674();

    sub_1A524C794();
  }
}

uint64_t sub_1A3D81C98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1A590A040](*&v3);
  if (v1)
  {
    v4 = v1;
    v5 = [v4 identifier];
    sub_1A524C674();

    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

BOOL sub_1A3D81D4C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_1A3C52C70(0, &unk_1EB120550);
      v6 = v4;
      v7 = v2;
      v8 = sub_1A524DBF4();

      if (v8)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

unint64_t sub_1A3D81DE8()
{
  result = qword_1EB143160;
  if (!qword_1EB143160)
  {
    sub_1A5242584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143160);
  }

  return result;
}

void sub_1A3D81E40()
{
  sub_1A3D82404();
  sub_1A3D82460();
  sub_1A3DBB130();
  sub_1A3DBB140();
}

unint64_t sub_1A3D81EA4()
{
  result = qword_1EB1254D8;
  if (!qword_1EB1254D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1254D8);
  }

  return result;
}

unint64_t sub_1A3D81EFC()
{
  result = qword_1EB1257C8;
  if (!qword_1EB1257C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257C8);
  }

  return result;
}

unint64_t sub_1A3D81F54()
{
  result = qword_1EB1254E8;
  if (!qword_1EB1254E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1254E8);
  }

  return result;
}

void sub_1A3D81FA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *a1;
  if (*a1)
  {
    v10 = *(a1 + 8);
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v15[4] = sub_1A3D824B4;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3D820EC;
    v15[3] = &block_descriptor_6;
    v13 = _Block_copy(v15);
    v14 = v5;

    [v11 requestImageForContact:v14 targetSize:0 displayScale:0 isRTL:v13 deliverOnce:a4 completion:{a5, v10}];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3D820EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1A3D82178@<X0>(uint64_t *a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    if (qword_1EB168250 != -1)
    {
      v14 = a2;
      v15 = a6;
      v16 = a5;
      v17 = a3;
      swift_once();
      a3 = v17;
      a5 = v16;
      a6 = v15;
      a2 = v14;
    }

    v18[0] = v7;
    v18[1] = v8;
    result = sub_1A3DBB330(v18, a2, a3, a5, a6);
  }

  else
  {
    v10 = a2;
    v11 = sub_1A5242584();
    sub_1A3D81DE8();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69C1EB8], v11);
    v18[0] = v12;
    v19 = 1;
    v10(v18);

    result = 0;
  }

  *a4 = result;
  return result;
}

void sub_1A3D822D0()
{
  if (qword_1EB168250 != -1)
  {
    swift_once();
  }

  sub_1A3DBB71C();
}

uint64_t sub_1A3D82338(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1A3D82394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1A3D82404()
{
  if (!qword_1EB125ED0)
  {
    sub_1A3D82460();
    v0 = type metadata accessor for PhotosAsyncImageProviderCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125ED0);
    }
  }
}

unint64_t sub_1A3D82460()
{
  result = qword_1EB1254E0;
  if (!qword_1EB1254E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1254E0);
  }

  return result;
}

void sub_1A3D824B4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  if (a1)
  {
    v5 = a1;
    [v5 px_pixelSize];
    if (a2)
    {
      [a2 BOOLValue];
    }

    v9 = v5;
    sub_1A524D9B4();
  }

  v6 = sub_1A5242584();
  sub_1A3D81DE8();
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69C1EB0], v6);
  *&v10 = v7;
  v11 = 1;
  v3(&v10);
}

uint64_t sub_1A3D82610(uint64_t a1)
{
  sub_1A3D8266C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3D8266C(uint64_t a1)
{
  if (!qword_1EB1205B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A3C52C70(255, &qword_1EB126630);
    type metadata accessor for CGSize(255);
    type metadata accessor for CGRect(255);
    sub_1A3C4886C(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A3D82808();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1205B0);
    }
  }
}

void sub_1A3D82808()
{
  if (!qword_1EB120D90)
  {
    sub_1A3D82860();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120D90);
    }
  }
}

void sub_1A3D82860()
{
  if (!qword_1EB120DA0)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120DA0);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t ParallaxAssetImageLayout.description.getter()
{
  memcpy(__dst, v0, 0x121uLL);
  memcpy(v3, v0, sizeof(v3));
  sub_1A3D85C50(__dst, v2);
  return sub_1A524C714();
}

Swift::Bool __swiftcall ParallaxAssetImageLayout.isCropRectValid(_:)(__C::CGRect a1)
{
  v2 = v1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27[6] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v27[5] = v27 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v27[4] = v27 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v27[3] = v27 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v27 - v17;
  memcpy(v29, v2, 0x121uLL);
  v19 = sub_1A41CDD28();
  v20 = *(v4 + 16);
  v27[7] = v19;
  v27[8] = v20;
  v20(v18);
  sub_1A3D85C50(v29, &v28);
  v21 = sub_1A5246F04();
  v22 = sub_1A524D234();
  sub_1A3D85C88(v29);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v27[2] = v3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v27[1] = v15;
    v27[46] = v25;
    *v24 = 136315394;
    sub_1A524D974();
    sub_1A3C2EF94();
  }

  (*(v4 + 8))(v18, v3);
  PXRectContainsRectWithTolerance();
}

BOOL ParallaxAssetImageLayout.relevantContentRect.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 104);
  v54 = *(v0 + 216);
  v55 = *(v0 + 208);
  v47.origin.x = *(v0 + 224);
  v47.origin.y = *(v0 + 232);
  v47.size.width = *(v0 + 240);
  v47.size.height = *(v0 + 248);
  v10 = *(v0 + 288);
  v56.origin.x = v2;
  v56.origin.y = v1;
  v56.size.width = v4;
  v56.size.height = v3;
  if (!CGRectIsEmpty(v56))
  {
    v57.origin.x = v6;
    v57.origin.y = v5;
    v57.size.width = v7;
    v57.size.height = v8;
    if (!CGRectIsEmpty(v57))
    {
      if ((v10 & 1) == 0)
      {
        v18 = v54;
        v17 = v55;
        *(&width - 2) = ParallaxAssetImageLayout.largestSaliencyRectThatFitsInView()();
LABEL_25:
        x = v60.origin.x;
        y = v60.origin.y;
        goto LABEL_26;
      }

      v59.origin.x = v2;
      v59.origin.y = v1;
      v59.size.width = v4;
      v59.size.height = v3;
      v75.origin.x = v6;
      v75.origin.y = v5;
      v75.size.width = v7;
      v75.size.height = v8;
      *(&width - 2) = CGRectIntersection(v59, v75);
      x = v19;
      y = v20;
      v18 = v54;
      v17 = v55;
LABEL_19:
      v76.origin.x = 0.0;
      v76.origin.y = 0.0;
      v76.size.width = 0.0;
      v76.size.height = 0.0;
      v21 = x;
      v22 = y;
      v50 = width;
      v52 = height;
      if (CGRectEqualToRect(*(&width - 2), v76))
      {
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
        goto LABEL_26;
      }

      v77.origin.x = 0.0;
      v77.origin.y = 0.0;
      v77.size.width = 0.0;
      v77.size.height = 0.0;
      if (CGRectEqualToRect(v47, v77))
      {
        width = v50;
        height = v52;
        goto LABEL_26;
      }

      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = v50;
      v61.size.height = v52;
      *(&width - 2) = CGRectUnion(v61, v47);
      goto LABEL_25;
    }
  }

  v58.origin.x = v6;
  v58.origin.y = v5;
  v58.size.width = v7;
  v58.size.height = v8;
  IsEmpty = CGRectIsEmpty(v58);
  if (IsEmpty)
  {
    v12 = v2;
  }

  else
  {
    v12 = v6;
  }

  if (IsEmpty)
  {
    y = v1;
  }

  else
  {
    y = v5;
  }

  if (IsEmpty)
  {
    width = v4;
  }

  else
  {
    width = v7;
  }

  x = v12;
  if (IsEmpty)
  {
    height = v3;
  }

  else
  {
    height = v8;
  }

  v18 = v54;
  v17 = v55;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_26:
  v23 = *(v9 + 16);
  if (!v23)
  {
    goto LABEL_39;
  }

  v51 = width;
  v53 = height;
  v48 = x;
  v49 = y;
  v24 = (v9 + 56);
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  do
  {
    v29 = *(v24 - 3);
    v30 = *(v24 - 2);
    v32 = *(v24 - 1);
    v31 = *v24;
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = 0.0;
    v78.size.height = 0.0;
    v62.origin.x = v25;
    v62.origin.y = v26;
    v62.size.width = v27;
    v62.size.height = v28;
    if (CGRectEqualToRect(v62, v78))
    {
      v25 = v29;
      v26 = v30;
      v27 = v32;
      v28 = v31;
    }

    else
    {
      v79.origin.x = 0.0;
      v79.origin.y = 0.0;
      v79.size.width = 0.0;
      v79.size.height = 0.0;
      v63.origin.x = v29;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v31;
      if (!CGRectEqualToRect(v63, v79))
      {
        v64.origin.x = v25;
        v64.origin.y = v26;
        v64.size.width = v27;
        v64.size.height = v28;
        v80.origin.x = v29;
        v80.origin.y = v30;
        v80.size.width = v32;
        v80.size.height = v31;
        v65 = CGRectUnion(v64, v80);
        v25 = v65.origin.x;
        v26 = v65.origin.y;
        v27 = v65.size.width;
        v28 = v65.size.height;
      }
    }

    v24 += 4;
    --v23;
  }

  while (v23);
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = 0.0;
  v81.size.height = 0.0;
  v66.origin.x = v48;
  v66.origin.y = v49;
  v66.size.width = v51;
  v66.size.height = v53;
  if (CGRectEqualToRect(v66, v81))
  {
    v33 = v25;
    y = v26;
    width = v27;
    x = v33;
    height = v28;
  }

  else
  {
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = 0.0;
    v82.size.height = 0.0;
    v67.origin.x = v25;
    v67.origin.y = v26;
    v67.size.width = v27;
    v67.size.height = v28;
    if (CGRectEqualToRect(v67, v82))
    {
      v18 = v54;
      v17 = v55;
      x = v48;
      y = v49;
      width = v51;
      height = v53;
      goto LABEL_39;
    }

    v68.origin.x = v48;
    v68.origin.y = v49;
    v68.size.width = v51;
    v68.size.height = v53;
    v83.origin.x = v25;
    v83.origin.y = v26;
    v83.size.width = v27;
    v83.size.height = v28;
    *(&width - 2) = CGRectUnion(v68, v83);
    x = v34;
    y = v35;
  }

  v18 = v54;
  v17 = v55;
LABEL_39:
  if (width > v17 || height > v18)
  {
    v37 = x;
    v38 = y;
    v39 = height;
    v40 = width;
    if (v17 >= CGRectGetWidth(*(&width - 2)))
    {
      v17 = v40;
      v44 = x;
    }

    else
    {
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = v40;
      v69.size.height = v39;
      v41 = x;
      v42 = CGRectGetWidth(v69);
      v70.origin.x = v41;
      v70.origin.y = y;
      v70.size.width = v17;
      v70.size.height = v39;
      v43 = v42 - CGRectGetWidth(v70);
      x = v41;
      v44 = v41 + v43 * 0.5;
    }

    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = v40;
    v71.size.height = v39;
    if (v18 >= CGRectGetHeight(v71))
    {
      v18 = v39;
    }

    else
    {
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = v40;
      v72.size.height = v39;
      v45 = CGRectGetHeight(v72);
      v73.origin.x = v44;
      v73.origin.y = y;
      v73.size.width = v17;
      v73.size.height = v18;
      y = y + v45 - CGRectGetHeight(v73);
    }
  }

  else
  {
    v44 = x;
    v17 = width;
    v18 = height;
  }

  v74.origin.x = v44;
  v74.origin.y = y;
  v74.size.width = v17;
  v74.size.height = v18;
  return CGRectIsEmpty(v74);
}

Swift::Bool __swiftcall ParallaxAssetImageLayout.isFaceWithinSafeArea(in:)(__C::CGRect in)
{
  if (*(v1 + 288) != 1)
  {
    return 1;
  }

  v3 = *(v1 + 272);
  v2 = *(v1 + 280);
  v5 = *(v1 + 256);
  v4 = *(v1 + 264);
  width = in.size.width;
  v27 = *(v1 + 192);
  v22 = *(v1 + 24);
  v20 = *(v1 + 200);
  v21 = *(v1 + 16);
  v7 = *v1;
  v6 = *(v1 + 8);
  height = in.size.height;
  x = in.origin.x;
  y = in.origin.y;
  MaxY = CGRectGetMaxY(in);
  v28.origin.x = v5;
  v28.origin.y = v4;
  v28.size.width = v3;
  v28.size.height = v2;
  v9 = CGRectGetHeight(v28) * 1.35;
  v29.origin.x = v7;
  v29.origin.y = v6;
  v29.size.width = v21;
  v29.size.height = v22;
  v10 = CGRectGetMaxY(v29);
  v30.origin.x = v5;
  v30.origin.y = v4;
  v30.size.width = v3;
  v30.size.height = v2;
  v11 = v10 - CGRectGetMinY(v30);
  if (v11 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = CGRectGetMaxY(*(&v12 - 3));
  v31.size.height = height;
  v17 = MaxY - v16;
  v31.origin.x = x;
  v31.size.width = width;
  v31.origin.y = y;
  v18 = v17 / CGRectGetHeight(v31);
  return v27 <= v18 * 1.01 && v18 * 0.99 <= v20;
}

__C::CGRect __swiftcall ParallaxAssetImageLayout.largestSaliencyRectThatFitsInView()()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[9];
  v7 = v0[10];
  v6 = v0[11];
  v27 = v0[26];
  rect = v0[8];
  v26 = v0[27];
  v29.origin.x = v1;
  v29.origin.y = v2;
  v29.size.width = v4;
  v29.size.height = v3;
  v8 = 0.0;
  if (CGRectIsEmpty(v29))
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v30.origin.x = rect;
    v30.origin.y = v5;
    v30.size.width = v7;
    v30.size.height = v6;
    IsEmpty = CGRectIsEmpty(v30);
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if (!IsEmpty)
    {
      v31.origin.x = v1;
      v31.origin.y = v2;
      v31.size.width = v4;
      v31.size.height = v3;
      v37.origin.x = rect;
      v37.origin.y = v5;
      v37.size.width = v7;
      v37.size.height = v6;
      *(&v9 - 1) = CGRectUnion(v31, v37);
      v8 = v13;
      if (v10 > v27 || v11 > v26)
      {
        v32.origin.x = v1;
        v32.origin.y = v2;
        v32.size.width = v4;
        v32.size.height = v3;
        Width = CGRectGetWidth(v32);
        v33.origin.x = v1;
        v33.origin.y = v2;
        v33.size.width = v4;
        v33.size.height = v3;
        v25 = Width * CGRectGetHeight(v33);
        v8 = rect;
        v34.origin.x = rect;
        v34.origin.y = v5;
        v34.size.width = v7;
        v34.size.height = v6;
        v24 = CGRectGetWidth(v34);
        v35.origin.x = rect;
        v35.origin.y = v5;
        v35.size.width = v7;
        v35.size.height = v6;
        Height = CGRectGetHeight(v35);
        v17 = v24 * Height;
        if (v24 * Height <= v25)
        {
          v9 = v5;
        }

        else
        {
          v8 = v1;
          v9 = v2;
        }

        v10 = v24 * Height > v25 ? v4 : v7;
        v11 = v24 * Height > v25 ? v3 : v6;
        v18 = v24 * Height > v25 ? v7 : v4;
        if (v18 <= v27)
        {
          v19 = v17 > v25;
          if (v17 > v25)
          {
            v20 = v6;
          }

          else
          {
            v20 = v3;
          }

          if (v19)
          {
            v21 = v5;
          }

          else
          {
            v21 = v2;
          }

          v22 = rect;
          if (!v19)
          {
            v22 = v1;
          }

          if (v20 <= v26)
          {
            v8 = v22;
            v9 = v21;
            v10 = v18;
            v11 = v20;
          }
        }
      }
    }
  }

  v23 = v8;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v23;
  return result;
}

__C::CGRect __swiftcall ParallaxAssetImageLayout.clipRectToFitInViewSize(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  if (v6 >= CGRectGetWidth(a1))
  {
    v6 = width;
    v9 = x;
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v8 = CGRectGetWidth(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = v6;
    v16.size.height = height;
    v9 = (v8 - CGRectGetWidth(v16)) * 0.5 + x;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (v7 >= CGRectGetHeight(v17))
  {
    v7 = height;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v10 = CGRectGetHeight(v18);
    v19.origin.x = v9;
    v19.origin.y = y;
    v19.size.width = v6;
    v19.size.height = v7;
    y = v10 - CGRectGetHeight(v19) + y;
  }

  v11 = v9;
  v12 = y;
  v13 = v6;
  v14 = v7;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void ParallaxAssetImageLayout.edgeWithMoreEmptySpace.getter(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v18 = *(v1 + 232);
  v19 = *(v1 + 224);
  v11 = *(v1 + 240);
  v12 = *(v1 + 248);
  if (*(v1 + 288))
  {
    v7 = *(v1 + 224);
    v8 = *(v1 + 232);
    v9 = *(v1 + 240);
    v10 = *(v1 + 248);
  }

  MinX = CGRectGetMinX(*&v7);
  v20.origin.x = v3;
  v20.origin.y = v4;
  v20.size.width = v5;
  v20.size.height = v6;
  v14 = MinX - CGRectGetMinX(v20);
  v21.origin.x = v3;
  v21.origin.y = v4;
  v21.size.width = v5;
  v21.size.height = v6;
  MaxX = CGRectGetMaxX(v21);
  v22.origin.y = v18;
  v22.origin.x = v19;
  v22.size.width = v11;
  v22.size.height = v12;
  v16 = MaxX - CGRectGetMaxX(v22);
  if (v14 * 1.1 >= v16)
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  if (v16 * 1.1 < v14)
  {
    v17 = 3;
  }

  *a1 = v17;
}

void ParallaxAssetImageLayout.rectByShifting(_:inDirection:fraction:)(unsigned __int8 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = *a1;
  v12 = *v6;
  v13 = v6[1];
  v15 = v6[2];
  v14 = v6[3];
  v41.origin.x = *v6;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v14;
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = a4;
  v60.size.height = a5;
  if (CGRectContainsRect(v41, v60))
  {
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v46.origin.x = a2;
        v46.origin.y = a3;
        v46.size.width = a4;
        v46.size.height = a5;
        MaxX = CGRectGetMaxX(v46);
        memcpy(v40, v6 + 4, sizeof(v40));
        ParallaxAssetImageLayout.relevantContentRect.getter();
        v34 = MaxX - CGRectGetMaxX(v47);
        v48.origin.x = a2;
        v48.origin.y = a3;
        v48.size.width = a4;
        v48.size.height = a5;
        MinX = CGRectGetMinX(v48);
        v49.origin.x = v12;
        v49.origin.y = v13;
        v49.size.width = v15;
        v49.size.height = v14;
        v23 = MinX - CGRectGetMinX(v49);
        if (v23 >= v34)
        {
          v18 = v34;
        }

        else
        {
          v18 = v23;
        }

        v20 = -1.0;
        v22 = 0.0;
        if (v18 < 0.0)
        {
          v18 = 0.0;
        }
      }

      else
      {
        memcpy(v40, v6 + 4, sizeof(v40));
        ParallaxAssetImageLayout.relevantContentRect.getter();
        v37 = CGRectGetMinX(v54);
        v55.origin.x = a2;
        v55.origin.y = a3;
        v55.size.width = a4;
        v55.size.height = a5;
        v38 = v37 - CGRectGetMinX(v55);
        v56.origin.x = v12;
        v56.origin.y = v13;
        v56.size.width = v15;
        v56.size.height = v14;
        v24 = CGRectGetMaxX(v56);
        v57.origin.x = a2;
        v57.origin.y = a3;
        v57.size.width = a4;
        v57.size.height = a5;
        v25 = v24 - CGRectGetMaxX(v57);
        v22 = 0.0;
        if (v25 < 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v25;
        }

        v20 = 1.0;
        if (v38 < 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v38;
        }

        if (v25 >= v38)
        {
          v18 = v27;
        }

        else
        {
          v18 = v26;
        }
      }
    }

    else if (v11 == 1)
    {
      memcpy(v40, v6 + 4, sizeof(v40));
      ParallaxAssetImageLayout.relevantContentRect.getter();
      MinY = CGRectGetMinY(v42);
      v43.origin.x = a2;
      v43.origin.y = a3;
      v43.size.width = a4;
      v43.size.height = a5;
      v32 = MinY - CGRectGetMinY(v43);
      v44.origin.x = v12;
      v44.origin.y = v13;
      v44.size.width = v15;
      v44.size.height = v14;
      MaxY = CGRectGetMaxY(v44);
      v45.origin.x = a2;
      v45.origin.y = a3;
      v45.size.width = a4;
      v45.size.height = a5;
      v17 = MaxY - CGRectGetMaxY(v45);
      v18 = 0.0;
      if (v32 < 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v32;
      }

      v20 = 1.0;
      if (v17 < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v17;
      }

      if (v17 < v32)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }
    }

    else
    {
      if (v11 != 2)
      {
        sub_1A524E6E4();
        __break(1u);
        return;
      }

      v50.origin.x = a2;
      v50.origin.y = a3;
      v50.size.width = a4;
      v50.size.height = a5;
      v35 = CGRectGetMaxY(v50);
      memcpy(v40, v6 + 4, sizeof(v40));
      ParallaxAssetImageLayout.relevantContentRect.getter();
      v36 = v35 - CGRectGetMaxY(v51);
      v52.origin.x = a2;
      v52.origin.y = a3;
      v52.size.width = a4;
      v52.size.height = a5;
      v30 = CGRectGetMinY(v52);
      v53.origin.x = v12;
      v53.origin.y = v13;
      v53.size.width = v15;
      v53.size.height = v14;
      v22 = v30 - CGRectGetMinY(v53);
      if (v22 >= v36)
      {
        v22 = v36;
      }

      v20 = -1.0;
      v18 = 0.0;
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }
    }

    v28 = v22 * a6 * v20;
    v58.origin.x = a2;
    v58.origin.y = a3;
    v58.size.width = a4;
    v58.size.height = a5;
    v59 = CGRectOffset(v58, 0.0, v28);
    CGRectOffset(v59, v18 * a6 * v20, 0.0);
  }
}

double ParallaxAssetImageLayout.rectByClippingFromBottomMargin(_:fraction:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v26 = v5[1];
  v27 = *v5;
  v24 = v5[3];
  v25 = v5[2];
  v11 = v5[20];
  v12 = v5[23];
  ParallaxAssetImageLayout.relevantContentRect.getter();
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v14 = MinY - CGRectGetMinY(v29);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14 * a5;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  v16 = CGRectGetHeight(v30) - v12;
  if (v15 <= 0.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0.0;
  }

  if (v16 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  if (v16 < 0.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v20 = v11 * (CGRectGetHeight(v31) - v19);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  v22 = MinX + (CGRectGetWidth(v33) - v20) * 0.5;
  v34.origin.y = v26;
  v34.origin.x = v27;
  v34.size.height = v24;
  v34.size.width = v25;
  CGRectGetMaxY(v34);
  return v22;
}

void ParallaxAssetImageLayout.rectByClipping(_:fromSideMargin:fraction:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  v9 = *a1;
  v11 = *v7;
  v10 = *(v7 + 8);
  v12 = *(v7 + 24);
  v62 = *(v7 + 16);
  v13 = *(v7 + 160);
  v51 = *(v7 + 176);
  v14 = *(v7 + 264);
  v60 = *(v7 + 256);
  v15 = *(v7 + 272);
  v16 = *(v7 + 280);
  v17 = *(v7 + 288);
  ParallaxAssetImageLayout.relevantContentRect.getter();
  Width = CGRectGetWidth(v63);
  v55 = v11;
  v56 = v10;
  v59 = v12;
  v61 = v15;
  v54 = v16;
  ParallaxAssetImageLayout.relevantContentRect.getter();
  Height = CGRectGetHeight(v64);
  if (Width > Height)
  {
    Height = Width;
  }

  if (Height > v51)
  {
    v20 = Height;
  }

  else
  {
    v20 = v51;
  }

  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  v21 = CGRectGetWidth(v65) - v20;
  if (v21 < 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  v52 = v14;
  if (v9 == 4)
  {
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    MaxX = CGRectGetMaxX(v66);
    v24 = v13;
    ParallaxAssetImageLayout.relevantContentRect.getter();
    v25 = MaxX - CGRectGetMaxX(v67);
    v26 = a6;
    v27 = a5;
    v29 = a3;
    v28 = a4;
  }

  else
  {
    v24 = v13;
    if (v9 != 3)
    {
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    ParallaxAssetImageLayout.relevantContentRect.getter();
    MinX = CGRectGetMinX(v68);
    v29 = a3;
    v28 = a4;
    v69.origin.x = a3;
    v69.origin.y = a4;
    v27 = a5;
    v69.size.width = a5;
    v26 = a6;
    v69.size.height = a6;
    v25 = MinX - CGRectGetMinX(v69);
  }

  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v31 = v25 * a7;
  if (v22 >= v31)
  {
    v22 = v31;
  }

  v70.origin.x = v29;
  v70.origin.y = v28;
  v70.size.width = v27;
  v70.size.height = v26;
  v32 = CGRectGetWidth(v70) - v22;
  v58 = v32 / v24;
  v71.origin.x = v29;
  v71.origin.y = v28;
  v71.size.width = v27;
  v71.size.height = v26;
  v33 = CGRectGetMinX(v71);
  v34 = v29;
  if (v9 == 3)
  {
    v35 = v22 + v33;
  }

  else
  {
    v35 = v33;
  }

  if ((v17 & 1) == 0)
  {
    ParallaxAssetImageLayout.relevantContentRect.getter();
    sub_1A524D9E4();
  }

  v72.origin.x = v34;
  v72.origin.y = v28;
  v72.size.width = v27;
  v72.size.height = v26;
  MaxY = CGRectGetMaxY(v72);
  v73.origin.x = v60;
  v73.origin.y = v52;
  v73.size.width = v61;
  v73.size.height = v54;
  v36 = CGRectGetHeight(v73) * 1.35;
  v74.origin.x = v55;
  v74.origin.y = v56;
  v74.size.width = v62;
  v74.size.height = v59;
  v46 = CGRectGetMaxY(v74);
  v75.origin.x = v60;
  v75.origin.y = v52;
  v75.size.width = v61;
  v75.size.height = v54;
  v37 = v46 - CGRectGetMinY(v75);
  if (v37 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = v60;
  v40 = v52;
  v41 = v61;
  v42 = MaxY - CGRectGetMaxY(*(&v38 - 3));
  v76.origin.x = v34;
  v76.origin.y = v28;
  v76.size.width = a5;
  v76.size.height = a6;
  v43 = v42 / CGRectGetHeight(v76);
  v77.origin.x = v34;
  v77.origin.y = v28;
  v77.size.width = a5;
  v77.size.height = a6;
  v44 = CGRectGetHeight(v77) - v58;
  v78.origin.x = v34;
  v78.origin.y = v28;
  v78.size.width = a5;
  v78.size.height = a6;
  MinY = CGRectGetMinY(v78) + v44 * (1.0 - v43);
  ParallaxAssetImageLayout.relevantContentRect.getter();
  if (MinY < CGRectGetMaxY(v79) - v58)
  {
    ParallaxAssetImageLayout.relevantContentRect.getter();
    MinY = CGRectGetMaxY(v80) - v58;
  }

  ParallaxAssetImageLayout.relevantContentRect.getter();
  if (CGRectGetMinY(v81) < MinY)
  {
    ParallaxAssetImageLayout.relevantContentRect.getter();
    MinY = CGRectGetMinY(v82);
  }

  *a2 = v35;
  *(a2 + 8) = MinY;
  *(a2 + 16) = v32;
  *(a2 + 24) = v58;
  *(a2 + 32) = 0;
}

void ParallaxAssetImageLayout.cropRectWithFixedHeadroomFraction(_:referenceRect:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *&v30[16] = a5;
  *&v30[24] = a6;
  *v30 = a3;
  *&v30[8] = a4;
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[3];
  v26 = v6[2];
  rect = v10;
  v11 = v6[32];
  v12 = v6[33];
  v28 = 1.0 - a2;
  v14 = v6[34];
  v13 = v6[35];
  v31.origin.x = v11;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v13;
  v15 = CGRectGetHeight(v31) * 1.35;
  v32.origin.x = v8;
  v32.origin.y = v9;
  v32.size.width = v26;
  v32.size.height = v10;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v11;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v13;
  v17 = MaxY - CGRectGetMinY(v33);
  if (v17 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  v19 = v11;
  v20 = v12;
  v21 = v14;
  v22 = CGRectGetMaxY(*(&v18 - 3));
  v23 = v28 * CGRectGetHeight(*v30);
  if (v22 < v23)
  {
    v23 = v22;
  }

  v24 = v22 + v23 * a2 / v28;
  v34.origin.x = v8;
  v34.origin.y = v9;
  v34.size.width = v26;
  v34.size.height = rect;
  if (CGRectGetMaxY(v34) < v24)
  {
    v35.origin.x = v8;
    v35.origin.y = v9;
    v35.size.width = v26;
    v35.size.height = rect;
    v24 = v22 + CGRectGetMaxY(v35) - v22;
  }

  v36.origin.x = v8;
  v36.origin.y = v9;
  v36.size.width = v26;
  v36.size.height = rect;
  v25 = CGRectGetMaxY(v36);
  if (v25 >= v24)
  {
    sub_1A524D9E4();
  }

  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = v25 < v24;
}

double ParallaxAssetImageLayout.cropRectWithMaxHeadroomFraction(_:referenceRect:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *&v77[16] = a5;
  *&v77[24] = a6;
  *v77 = a3;
  *&v77[8] = a4;
  v8 = *(v6 + 144);
  v88 = *(v6 + 128);
  v89 = v8;
  v9 = *(v6 + 176);
  v90 = *(v6 + 160);
  v91 = v9;
  v10 = *(v6 + 80);
  v84 = *(v6 + 64);
  v85 = v10;
  v11 = *(v6 + 112);
  v86 = *(v6 + 96);
  v87 = v11;
  v12 = *(v6 + 48);
  v82 = *(v6 + 32);
  v83 = v12;
  v13 = *(v6 + 224);
  v94 = *(v6 + 208);
  v95 = v13;
  v96 = *(v6 + 240);
  v79 = *(v6 + 8);
  v14 = *(v6 + 24);
  rect = *(v6 + 16);
  v74 = *(v6 + 192);
  v75 = *(v6 + 200);
  v16 = *(v6 + 256);
  v15 = *(v6 + 264);
  v17 = *(v6 + 272);
  v18 = *(v6 + 280);
  v19 = *(v6 + 288);
  *&v80 = *v6;
  *(&v80 + 1) = v79;
  *&v81 = rect;
  *(&v81 + 1) = v14;
  v76 = v14;
  v92 = v74;
  v93 = v75;
  v97 = v16;
  v98 = v15;
  v99 = v17;
  v100 = v18;
  v101 = v19;
  ParallaxAssetImageLayout.relevantContentRect.getter();
  MaxY = CGRectGetMaxY(v102);
  v103.origin.x = v16;
  v103.origin.y = v15;
  v103.size.width = v17;
  v103.size.height = v18;
  v21 = CGRectGetHeight(v103) * 1.35;
  *&v104.origin.x = v80;
  v104.origin.y = v79;
  v104.size.width = rect;
  v104.size.height = v14;
  v22 = CGRectGetMaxY(v104);
  v105.origin.x = v16;
  v105.origin.y = v15;
  v105.size.width = v17;
  v105.size.height = v18;
  v23 = v22 - CGRectGetMinY(v105);
  if (v23 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23;
  }

  v25 = v16;
  v26 = v15;
  v27 = v17;
  v28 = CGRectGetMaxY(*(&v24 - 3));
  if (MaxY > v28)
  {
    v29 = MaxY;
  }

  else
  {
    v29 = v28;
  }

  v30 = v29 - CGRectGetHeight(*v77);
  if (v30 < 0.0)
  {
    v30 = 0.0;
  }

  v71 = v30;
  v106.origin.x = v16;
  v106.origin.y = v15;
  v106.size.width = v17;
  v106.size.height = v18;
  v31 = CGRectGetHeight(v106) * 1.35;
  *&v107.origin.x = v80;
  v107.origin.y = v79;
  v107.size.width = rect;
  v107.size.height = v76;
  v32 = CGRectGetMaxY(v107);
  v108.origin.x = v16;
  v108.origin.y = v15;
  v108.size.width = v17;
  v108.size.height = v18;
  v33 = v32 - CGRectGetMinY(v108);
  if (v33 >= v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = v33;
  }

  v35 = v16;
  v36 = v15;
  v37 = v17;
  v69 = v29 - CGRectGetMaxY(*(&v34 - 3));
  v109.origin.x = v16;
  v109.origin.y = v15;
  v109.size.width = v17;
  v109.size.height = v18;
  v38 = CGRectGetHeight(v109) * 1.35;
  *&v110.origin.x = v80;
  v110.origin.y = v79;
  v110.size.width = rect;
  v110.size.height = v76;
  v39 = CGRectGetMaxY(v110);
  v111.origin.x = v16;
  v111.origin.y = v15;
  v111.size.width = v17;
  v111.size.height = v18;
  v40 = v39 - CGRectGetMinY(v111);
  if (v40 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v40;
  }

  v42 = v16;
  v43 = v15;
  v44 = v17;
  v72 = v69 / (CGRectGetMaxY(*(&v41 - 3)) - v71);
  ParallaxAssetImageLayout.relevantContentRect.getter();
  MinY = CGRectGetMinY(v112);
  *&v113.origin.x = v80;
  v113.origin.y = v79;
  v113.size.width = rect;
  v113.size.height = v76;
  v45 = CGRectGetMaxY(v113);
  v46 = MinY + CGRectGetHeight(*v77);
  if (v46 >= v45)
  {
    v46 = v45;
  }

  v67 = v46;
  v114.origin.x = v16;
  v114.origin.y = v15;
  v114.size.width = v17;
  v114.size.height = v18;
  Height = CGRectGetHeight(v114);
  v115.origin.y = v79;
  v48 = Height * 1.35;
  *&v115.origin.x = v80;
  v115.size.width = rect;
  v115.size.height = v76;
  v49 = CGRectGetMaxY(v115);
  v116.origin.x = v16;
  v116.origin.y = v15;
  v116.size.width = v17;
  v116.size.height = v18;
  v50 = v49 - CGRectGetMinY(v116);
  if (v50 >= v48)
  {
    v51 = v48;
  }

  else
  {
    v51 = v50;
  }

  v52 = v16;
  v53 = v15;
  v54 = v17;
  v68 = v67 - CGRectGetMaxY(*(&v51 - 3));
  v117.origin.x = v16;
  v117.origin.y = v15;
  v117.size.width = v17;
  v117.size.height = v18;
  v55 = CGRectGetHeight(v117);
  v118.origin.y = v79;
  v56 = v55 * 1.35;
  *&v118.origin.x = v80;
  v118.size.width = rect;
  v118.size.height = v76;
  v57 = CGRectGetMaxY(v118);
  v119.origin.x = v16;
  v119.origin.y = v15;
  v119.size.width = v17;
  v119.size.height = v18;
  v58 = v57 - CGRectGetMinY(v119);
  if (v58 >= v56)
  {
    v59 = v56;
  }

  else
  {
    v59 = v58;
  }

  v60 = v16;
  v61 = v15;
  v62 = v17;
  v63 = v68 / (CGRectGetMaxY(*(&v59 - 3)) - MinY);
  v64 = v72;
  if (v72 <= v74)
  {
    v64 = v74;
  }

  if (v75 < v63)
  {
    v63 = v75;
  }

  ParallaxAssetImageLayout.cropRectWithFixedHeadroomFraction(_:referenceRect:)(&v80, v64 + vabdd_f64(v63, v64) * a2, *v77, *&v77[8], *&v77[16], *&v77[24]);
  result = *&v80;
  v66 = v81;
  *a1 = v80;
  *(a1 + 16) = v66;
  *(a1 + 32) = v82;
  return result;
}

uint64_t ParallaxAssetImageEdge.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

char *sub_1A3D8598C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3D86A18(0, &qword_1EB12BC90, sub_1A3D868AC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A3D85AA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A3D86898(v2);
  }

  v3 = *(v2 + 2);
  v24[0] = (v2 + 32);
  v24[1] = v3;
  v4 = sub_1A524EA34();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 - 2);
          v14 = *(v12 - 1);
          v15 = *v12;
          v16 = *(v12 + 1);
          MaxY = CGRectGetMaxY(*(v12 + 16));
          v25.origin.x = v13;
          v25.origin.y = v14;
          v25.size.width = v15;
          v25.size.height = v16;
          if (CGRectGetMaxY(v25) >= MaxY)
          {
            break;
          }

          v18 = *(v12 + 1);
          v19 = *(v12 + 2);
          v20 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v20;
          *(v12 - 1) = v18;
          *v12 = v19;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for CGRect(0);
      v7 = sub_1A524CAC4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = v7 + 32;
    v22[1] = v6;
    sub_1A3D85F50(v22, v23, v24, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

unint64_t sub_1A3D85CBC()
{
  result = qword_1EB12BBF0;
  if (!qword_1EB12BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12BBF0);
  }

  return result;
}

uint64_t sub_1A3D85D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3D85D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeShelfHeaderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeShelfHeaderStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A3D85F50(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1A3D86884(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        sub_1A3D86594((*a3 + 32 * v99), (*a3 + 32 * *&v8[16 * v98 + 16]), (*a3 + 32 * v100), v5);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v100 < v99)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_1A3D867F8(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v10 = 32 * v7;
      v5 = *a3 + 32 * v7;
      v11 = *v5;
      v12 = *(v5 + 8);
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      MaxY = CGRectGetMaxY(*(*a3 + 32 * (v7 + 1)));
      v106.origin.x = v11;
      v106.origin.y = v12;
      v106.size.width = v13;
      v106.size.height = v14;
      v16 = CGRectGetMaxY(v106);
      v17 = v7 + 2;
      v18 = v5 + 48;
      while (v6 != v17)
      {
        v5 = v16 < MaxY;
        v19 = v18 + 32;
        v20 = *(v18 - 16);
        v21 = *(v18 - 8);
        v22 = *v18;
        v23 = *(v18 + 8);
        v24 = CGRectGetMaxY(*(v18 + 16));
        v107.origin.x = v20;
        v107.origin.y = v21;
        v107.size.width = v22;
        v107.size.height = v23;
        v25 = v5 ^ (CGRectGetMaxY(v107) >= v24);
        ++v17;
        v18 = v19;
        if ((v25 & 1) == 0)
        {
          v6 = v17 - 1;
          break;
        }
      }

      if (v16 < MaxY)
      {
        if (v6 < v7)
        {
          goto LABEL_118;
        }

        if (v7 < v6)
        {
          v26 = 0;
          v27 = 32 * v6;
          v28 = v7;
          do
          {
            if (v28 != v6 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = (v34 + v10);
              v30 = v34 + v27;
              v31 = *v29;
              v32 = v29[1];
              v33 = *(v30 - 16);
              *v29 = *(v30 - 32);
              v29[1] = v33;
              *(v30 - 32) = v31;
              *(v30 - 16) = v32;
            }

            ++v28;
            --v26;
            v27 -= 32;
            v10 += 32;
          }

          while (v28 < v6 + v26);
        }
      }
    }

    v35 = a3[1];
    if (v6 < v35)
    {
      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (v6 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_119;
        }

        if (v7 + a4 >= v35)
        {
          v7 = a3[1];
        }

        else
        {
          v7 += a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v8 = sub_1A3D8598C((v36 > 1), v37 + 1, 1, v8);
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_48:
          if (v45)
          {
            goto LABEL_105;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_112;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_62:
        if (v63)
        {
          goto LABEL_107;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_69:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v5 = *&v8[16 * v79 + 32];
        v80 = *&v8[16 * v41 + 40];
        sub_1A3D86594((*a3 + 32 * v5), (*a3 + 32 * *&v8[16 * v41 + 32]), (*a3 + 32 * v80), v40);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v80 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v81 = &v8[16 * v79];
        *(v81 + 4) = v5;
        *(v81 + 5) = v80;
        sub_1A3D867F8(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_103;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_104;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_106;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_109;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v82 = *a3;
  v83 = *a3 + 32 * v6 - 32;
  v102 = v9;
  v84 = v9 - v6;
LABEL_80:
  v85 = (v82 + 32 * v6);
  v86 = *v85;
  v87 = v85[1];
  v5 = v84;
  v88 = v83;
  while (1)
  {
    v89 = *v88;
    v90 = *(v88 + 8);
    v91 = *(&v86 + 1);
    v92 = *(&v87 + 1);
    v93 = *(v88 + 16);
    v94 = *(v88 + 24);
    v95 = CGRectGetMaxY(*&v86);
    v108.origin.x = v89;
    v108.origin.y = v90;
    v108.size.width = v93;
    v108.size.height = v94;
    if (CGRectGetMaxY(v108) >= v95)
    {
LABEL_79:
      ++v6;
      v83 += 32;
      --v84;
      if (v6 != v7)
      {
        goto LABEL_80;
      }

      v9 = v102;
      if (v7 < v102)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    v86 = *(v88 + 32);
    v87 = *(v88 + 48);
    v96 = *(v88 + 16);
    *(v88 + 32) = *v88;
    *(v88 + 48) = v96;
    *v88 = v86;
    *(v88 + 16) = v87;
    v88 -= 32;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_79;
    }
  }

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
}