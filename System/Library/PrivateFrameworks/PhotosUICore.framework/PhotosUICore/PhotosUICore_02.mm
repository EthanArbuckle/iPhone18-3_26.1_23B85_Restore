void sub_1A3C56B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C56BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C56C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3C56C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C56CDC@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

id sub_1A3C56CF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = LemonadeFeatureIdentifier.rawValue.getter();
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;

  return a1;
}

uint64_t sub_1A3C56D48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t _s12PhotosUICore32SharedAlbumsAvailabilityObserverC19outputEventSignaled3forySo16PXEventCoalescerC_tF_0()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (*(*v0 + 17))(v4);
  v8 = _s12PhotosUICore32SharedAlbumsAvailabilityObserverC06sharedD9Available15forPhotoLibrarySbSo07PHPhotoK0C_tFZ_0(v0[3]);
  if ((v7 & 1) != (v8 & 1))
  {
    v9 = sub_1A3C56D80();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D264();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = v7 & 1;
      *(v12 + 8) = 1024;
      *(v12 + 10) = v8 & 1;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Shared Albums availability going from %{BOOL}d to %{BOOL}d", v12, 0xEu);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  swift_getKeyPath();
  (*(*v1 + 39))();

  if ((v8 & 1) != *(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v1;
    v16[-8] = v8 & 1;
    (*(*v1 + 40))(v15, sub_1A3E93AF4);
  }

  return result;
}

char *sub_1A3C57108(char *a1, int64_t a2, char a3)
{
  result = sub_1A3C51ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1A3C57128(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1A3C57168()
{
  result = qword_1EB129F50;
  if (!qword_1EB129F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129F50);
  }

  return result;
}

unint64_t sub_1A3C571BC()
{
  result = qword_1EB12A238;
  if (!qword_1EB12A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A238);
  }

  return result;
}

unint64_t sub_1A3C57210()
{
  result = qword_1EB12A240;
  if (!qword_1EB12A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A240);
  }

  return result;
}

unint64_t sub_1A3C57264()
{
  result = qword_1EB12A270;
  if (!qword_1EB12A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A270);
  }

  return result;
}

unint64_t sub_1A3C572B8()
{
  result = qword_1EB12AEA8;
  if (!qword_1EB12AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AEA8);
  }

  return result;
}

unint64_t sub_1A3C5730C()
{
  result = qword_1EB12AEC0;
  if (!qword_1EB12AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AEC0);
  }

  return result;
}

unint64_t sub_1A3C57360(uint64_t a1)
{
  result = sub_1A3C44064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3C57388()
{
  result = qword_1EB12A208;
  if (!qword_1EB12A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A208);
  }

  return result;
}

unint64_t sub_1A3C573F0()
{
  result = qword_1EB129EB0;
  if (!qword_1EB129EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129EB0);
  }

  return result;
}

uint64_t sub_1A3C57458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C574A0(uint64_t a1)
{
  result = sub_1A43DD600(&qword_1EB1297C0, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3C574F8(uint64_t a1)
{
  result = sub_1A3C44558();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3C5752C(uint64_t result)
{
  v2 = 0;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  if ((v4 & *(result + 56)) != 0)
  {
LABEL_10:
    if (*(*v1 + 16))
    {
      sub_1A524EC94();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v5 >= ((v3 + 63) >> 6))
    {
      break;
    }

    ++v2;
    if (*(result + 56 + 8 * v5))
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1A3C57714(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A524EC94();
  sub_1A524C794();
  v6 = sub_1A524ECE4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A524EAB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A3D3E114();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A3C52558(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1A3C57850(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3C2F228(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3C2EBB0(v14, a3 & 1);
      result = sub_1A3C2F228(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A44B2AE4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1A3C5799C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A3C57A14(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736D6574496C6C61;
    if (a1 == 8)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xD000000000000012;
    if (a1 == 5)
    {
      v7 = 1801678701;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49554764756F6C63;
    v2 = 0xD00000000000001BLL;
    v3 = 0x7974696C697475;
    if (a1 != 3)
    {
      v3 = 7364973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t storeEnumTagSinglePayload for LemonadeCellSpec.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3C57C00()
{
  result = qword_1EB12A570;
  if (!qword_1EB12A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A570);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for PeopleLogging(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeopleLogging(unsigned int *a1, int a2)
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

uint64_t sub_1A3C57D3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  sub_1A3C3BB98(0, &qword_1EB126338, sub_1A3C57EE8, &type metadata for LemonadeBookmark.PhotoKitSmartAlbumSubtype.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C57EE8();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v13;
  v10 = sub_1A524E8D4();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v9 = v10;
  return result;
}

unint64_t sub_1A3C57EE8()
{
  result = qword_1EB18BAB8[0];
  if (!qword_1EB18BAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18BAB8);
  }

  return result;
}

unint64_t sub_1A3C57F44()
{
  result = qword_1EB18BAA8;
  if (!qword_1EB18BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18BAA8);
  }

  return result;
}

unint64_t sub_1A3C57F9C()
{
  result = qword_1EB18BAA0;
  if (!qword_1EB18BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18BAA0);
  }

  return result;
}

uint64_t sub_1A3C58004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C5806C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C580D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C5813C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C581A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C5820C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C58274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C582D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C58334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C58394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A3C583E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A3C58754(0, v10, 0);
    v11 = v19;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = a1 + v12;
    v14 = *(v7 + 72);
    do
    {
      a3(v13, a2);
      v19 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A3C58754(v15 > 1, v16 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      sub_1A3C5921C(v9, v11 + v12 + v16 * v14);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return v11;
}

size_t sub_1A3C58558(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C2A340(0, &qword_1EB126280, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for LemonadeBookmark(0) - 8);
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

size_t sub_1A3C58754(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3C58558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A3C58774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - v9;
  v11 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LemonadeBookmark(0);
  sub_1A3C58DE8(a1 + *(v14 + 24), v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v34 = v5;
    v35 = v4;
    v36 = a1;
    v37 = a2;
    v15 = *v13;
    sub_1A3C4D548(0, &qword_1EB126180);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52F9790;
    v17 = objc_allocWithZone(MEMORY[0x1E6978738]);
    v33[2] = v15;
    v18 = sub_1A524C634();
    v19 = [v17 initWithStringValue_];

    *(v16 + 32) = v19;
    v20 = sub_1A524D2B4();

    v21 = sub_1A43163D4(v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (!v21)
    {
      v30 = sub_1A3C4A5F8();
      (*(v34 + 16))(v8, v30, v35);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A4317294(0, &qword_1EB137EF0, sub_1A431741C, MEMORY[0x1E69E6720]);
    if (v27)
    {
      v38 = v23;
      sub_1A3DBD9A0();
      sub_1A3C52C70(0, &qword_1EB12C740);
      if (swift_dynamicCast())
      {
        v28 = sub_1A3C4A5F8();
        (*(v34 + 16))(v10, v28, v35);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      result = sub_1A524EAA4();
      __break(1u);
    }

    else
    {

      v31 = v37;
      sub_1A3C58DE8(v36, v37, type metadata accessor for LemonadeBookmark);
      v32 = (v31 + *(v14 + 24));
      sub_1A3C59040(v32, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      *v32 = v23;
      v32[1] = v25;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1A3C58DE8(a1, a2, type metadata accessor for LemonadeBookmark);
    return sub_1A3C59040(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  }

  return result;
}

uint64_t sub_1A3C58DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C58E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C58EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C58F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C58F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C58FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C59040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C590A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A43AC05C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C590FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C5915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C591BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C5921C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C59280(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1A3C592EC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroy_61Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3C593BC(int a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A524BFC4();
  v10 = *(v34 - 8);
  v11 = MEMORY[0x1EEE9AC00](v34);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  swift_beginAccess();
  v16 = *(v1 + 32);
  if (*(v16 + 16) && (v17 = sub_1A3C2F228(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    type metadata accessor for PhotosLaunchScheduler.FeatureState();
    v20 = swift_allocObject();
    v30 = v7;
    v19 = v20;
    sub_1A3C2D3C8(a1);
    v31 = v8;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_1A3C57850(v19, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v36;
    swift_endAccess();
    v28[1] = *(v2 + 24);
    sub_1A524BFA4();
    sub_1A524C014();
    v28[0] = v15;
    v29 = *(v10 + 8);
    v29(v13, v34);
    aBlock[4] = sub_1A44B2AE0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_61_1;
    v22 = _Block_copy(aBlock);

    v23 = v32;
    sub_1A524BF14();
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v24 = MEMORY[0x1E69E7F60];
    sub_1A3C2A408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2A9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v24);
    v25 = v30;
    sub_1A524E224();
    v26 = v28[0];
    MEMORY[0x1A5908790](v28[0], v23, v25, v22);
    _Block_release(v22);
    (*(v5 + 8))(v25, v4);
    (*(v33 + 8))(v23, v31);
    v29(v26, v34);
  }

  return v19;
}

BOOL sub_1A3C59860()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C531C8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 12)
  {
    if (EnumCaseMultiPayload == 14)
    {
      sub_1A3C53E7C(v3);
      return !shouldUseNewCollectionsLayout()();
    }

    if (EnumCaseMultiPayload != 13)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 11)
  {
LABEL_10:
    sub_1A3C53E7C(v3);
    return 1;
  }

  sub_1A3C53E7C(v3);
  return 0;
}

uint64_t sub_1A3C59944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1A3C599A8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C29F24(0, &qword_1EB126268, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
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

uint64_t sub_1A3C59BA4()
{
  sub_1A3C53294(v9);
  v0 = v10;
  v1 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9[-1] - v4;
  (*(v1 + 32))(v0, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v0) = (*(AssociatedConformanceWitness + 144))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v0 & 1;
}

uint64_t sub_1A3C59D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C29A58();
  v10 = sub_1A524D474();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_70_1;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3C2A408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

size_t sub_1A3C59FF8(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3C599A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A3C5A018(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  if ((v3 & *(result + 56)) != 0)
  {
LABEL_11:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 56 + 8 * v5))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3C5A1D0()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C531C8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = EnumCaseMultiPayload < 0x13;
  v6 = 0x440A4u >> EnumCaseMultiPayload;
  sub_1A3C53E7C(v3);
  return v5 & v6;
}

void sub_1A3C5A27C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = v2;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C5A2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3C5A37C(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    *a1 = (*(v3 + 8))(ObjectType, v3);
    *(a1 + 8) = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_1A3C5A3E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_photoLibrary);
    sub_1A3C5A374();
    v4 = PXDisplayCollectionDetailedCountsMake(v3);
    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v2 = v4;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1A3C5A46C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t sub_1A3C5A480()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeFeatureLibrary___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A3C5A524(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C39EA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A3C5B3CC(v13, a3 & 1);
      v8 = sub_1A3C39EA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126BF0);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A3D3DD68();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1A3C5A6C0()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A3C5A81C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = a3;
  *(v3 + 88) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + 104) = MEMORY[0x1E69E7CC0];
  *(v3 + 112) = 0;
  *(v3 + 120) = sub_1A3C5AEC4(v9);
  type metadata accessor for LemonadeShelfHeaderAppearance();
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = sub_1A3C5B0B4();
  *(v3 + 153) = 0;
  *(v3 + 160) = v9;
  *(v3 + 184) = 23;
  *(v3 + 192) = 0;
  sub_1A5241604();
  sub_1A3C341C8(a1, v3 + 16);
  *(v3 + 176) = a2;
  *(v3 + 152) = a3;
  *(v3 + 168) = 1;
  *(v3 + 96) = 1;
  if (v8)
  {
  }

  else
  {
    type metadata accessor for MacSyncedAlbumsAvailabilityObserver();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v11 + 16);

    v13 = v12(v10, v11);
    v14 = static MacSyncedAlbumsAvailabilityObserver.observer(for:)(v13);

    sub_1A3C5C450(v14);
    KeyPath = swift_getKeyPath();
    (*(*v4 + 1112))(KeyPath);

    if (v4[24])
    {
      MEMORY[0x1EEE9AC00](v16);
      v18 = v17;
      sub_1A52415B4();
    }

    sub_1A52415B4();
  }

  sub_1A3C5E1B8();
}

uint64_t sub_1A3C5AE8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1A3C5AEC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3C62600();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1A3C6246C(v5);
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

uint64_t type metadata accessor for LemonadeShelfHeaderAppearance()
{
  result = qword_1EB164210;
  if (!qword_1EB164210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C5AFF8()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3C5B0B4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CD0];
  *(v0 + 40) = xmmword_1A53028A0;
  *(v0 + 56) = sub_1A3C5BC9C(MEMORY[0x1E69E7CC0]);
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A3C5B124@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8[0] = *(v1 + 56);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 65);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1A3FA1224(v7, &v6);
}

id sub_1A3C5B1AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v6 = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = v6;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v4 = v2;

  return v6;
}

uint64_t sub_1A3C5B22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C5B2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3C5B340()
{
  if (!qword_1EB1263F8)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0);
    type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource();
    sub_1A3C5B630();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263F8);
    }
  }
}

uint64_t sub_1A3C5B3CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C5B340();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A3C5B630()
{
  result = qword_1EB126BD0;
  if (!qword_1EB126BD0)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126BD0);
  }

  return result;
}

uint64_t sub_1A3C5B698(uint64_t a1)
{
  result = sub_1A3C5B6F0(&qword_1EB1250D0, type metadata accessor for LemonadeLibraryDefaultsShelvesDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3C5B6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C5B760()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C5B798(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3C2A408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A9C4(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1A3C5BA6C()
{
  v1 = *(v0 + 16);
  *(sub_1A3C593BC(*(v0 + 24)) + 32) = 1;

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    result = swift_beginAccess();
    if (!*(v3 + 16))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v4 - 1;
    while (1)
    {
      v7 = *(v1 + 32);
      if (!*(v7 + 16))
      {
        goto LABEL_5;
      }

      result = sub_1A3C2F228(*(v3 + 32 + v5));
      if ((v8 & 1) == 0)
      {
        goto LABEL_5;
      }

      v9 = *(*(v7 + 56) + 8 * result);
      if (v9[33] != 1)
      {
        break;
      }

      if (v6 == v5 || (v9[34] & 1) == 0)
      {
        return result;
      }

LABEL_6:
      if (++v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }
    }

    if (v9[32] == 1)
    {

      sub_1A3C2F3D4();
    }

LABEL_5:
    if (v6 == v5)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t type metadata accessor for LemonadeAccountViewModel()
{
  result = qword_1EB184EA0;
  if (!qword_1EB184EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C5BBBC()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1A3C5BC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3E76130();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1A3C6246C(v5);
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

uint64_t type metadata accessor for MacSyncedAlbumsAvailabilityObserver()
{
  result = qword_1EB17A750;
  if (!qword_1EB17A750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C5BDC8()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id static MacSyncedAlbumsAvailabilityObserver.observer(for:)(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A770 != -1)
  {
    swift_once();
  }

  result = [qword_1EB17A778 objectForKey_];
  if (!result)
  {
    v11 = sub_1A3C5C42C();
    (*(v7 + 16))(v9, v11, v6);
    v12 = a1;
    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = v12;
      v16 = v15;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      v17 = [v33 photoLibraryURL];
      v31[3] = v14;
      v18 = v17;
      sub_1A5240DE4();

      sub_1A3C519F4(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
      sub_1A524EA44();
      (*(v3 + 8))(v5, v2);
      sub_1A3C2EF94();
    }

    (*(v7 + 8))(v9, v6);
    v19 = type metadata accessor for MacSyncedAlbumsAvailabilityObserver();
    v20 = objc_allocWithZone(v19);
    v21 = v12;
    v20[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable] = 0;
    *&v20[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_macSyncedAlbumsFetchResult] = 0;
    *&v20[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_internalSettingsObserver] = 0;
    sub_1A5241604();
    *&v20[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver_photoLibrary] = v21;
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 rateLimitingCoalescerWithRate_];
    *&v20[OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__refreshCoalescer] = v24;
    v35.receiver = v20;
    v35.super_class = v19;
    v25 = objc_msgSendSuper2(&v35, sel_init);
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 sharedScheduler];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A3D7D838;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_51;
    v30 = _Block_copy(aBlock);

    [v28 scheduleMainQueueTask_];
    _Block_release(v30);

    [qword_1EB17A778 setObject:v27 forKey:v23];
    return v27;
  }

  return result;
}

uint64_t sub_1A3C5C378()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

id sub_1A3C5C3BC()
{
  result = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  qword_1EB17A778 = result;
  return result;
}

void sub_1A3C5C450(void *a1)
{
  v3 = v1[24];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v9, sub_1A3C5C6E4);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MacSyncedAlbumsAvailabilityObserver();
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[24];
LABEL_8:
  v1[24] = a1;
}

uint64_t sub_1A3C5C69C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3C5C6E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 192);
  *(v1 + 192) = v2;
  v4 = v2;
}

uint64_t sub_1A3C5C80C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore35MacSyncedAlbumsAvailabilityObserver__macSyncedAlbumsAvailable);
}

uint64_t (*sub_1A3C5C90C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4419D34;
}

void sub_1A3C5C964()
{
  v0 = sub_1A3C5C9EC();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xA0);
  v2 = *v0;
  v1();
}

uint64_t *sub_1A3C5C9EC()
{
  if (qword_1EB183BD0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB350;
}

id sub_1A3C5CA3C()
{
  result = [objc_allocWithZone(type metadata accessor for LemonadeWallpaperManager()) init];
  qword_1EB1EB350 = result;
  return result;
}

uint64_t type metadata accessor for LemonadeWallpaperManager()
{
  result = qword_1EB168570;
  if (!qword_1EB168570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C5CABC()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1A3C5CB88()
{
  v1 = sub_1A524BEE4();
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__posterService;
  sub_1A3C5D054();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *&v0[v11] = v12;
  sub_1A5241604();
  v0[OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__isFeatureAvailable] = 1;
  v13 = type metadata accessor for LemonadeWallpaperManager();
  v24.receiver = v0;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  sub_1A3C5D148();
  PXRegisterPreferencesObserver(v14);
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v15 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_1A3C5DFCC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_100;
  v17 = _Block_copy(aBlock);
  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3C5DE40(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60]);
  sub_1A3C5D624(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v17);
  _Block_release(v17);

  (*(v21 + 8))(v3, v1);
  (*(v4 + 8))(v6, v20);

  return v14;
}

uint64_t sub_1A3C5CFB4()
{

  return swift_deallocObject();
}

void sub_1A3C5CFEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C5D0E8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C5D054()
{
  if (!qword_1EB1264F0)
  {
    sub_1A3C5CFEC(255, &qword_1EB126C88, &unk_1EB126C90, &protocolRef_PXPRSService, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1264F0);
    }
  }
}

uint64_t sub_1A3C5D0E8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A3C5D148()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1A524BEE4();
  v20 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  sub_1A3C5D624(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = 0xD000000000000038;
  v8 = inited + 32;
  *(inited + 40) = 0x80000001A53C77B0;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(v8);
  v9 = sub_1A524C3D4();

  [v6 registerDefaults_];

  v10 = sub_1A524C634();
  v11 = [v6 BOOLForKey_];

  v12 = v11 & PXPreferencesIsFeaturedContentAllowed();
  sub_1A3C52C70(0, &qword_1EB12B180);
  v13 = sub_1A524D474();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  *(v15 + 32) = ObjectType;
  aBlock[4] = sub_1A3CA6F6C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_124_0;
  v16 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C5DE40(&qword_1EB12B1E0, 255, MEMORY[0x1E69E7F60]);
  sub_1A3C5D624(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v5, v2, v16);
  _Block_release(v16);

  (*(v20 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v19);
}

uint64_t sub_1A3C5D5B4()
{
  MEMORY[0x1A590F020](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A3C5D5EC()
{

  return swift_deallocObject();
}

void sub_1A3C5D624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C5D688(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A41B6C2C(255, a3);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C5D6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C5D744()
{
  if (!qword_1EB126F70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126F70);
    }
  }
}

unint64_t sub_1A3C5D7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3C5D8DC(0, &qword_1EB126420, MEMORY[0x1E69E6EC8]);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A3C5D948(v4, &v13, sub_1A3C5D744);
      v5 = v13;
      v6 = v14;
      result = sub_1A3C5DCA4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A3C57128(&v15, (v3[7] + 32 * result));
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

void sub_1A3C5D8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3C5D948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3C5D9B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7CF48(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C5DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3C5DAA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D074(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C5DB24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A441CD84(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C5DBA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A45C0E40(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3C5DC24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D2BC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A3C5DCA4(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A524C794();
  v4 = sub_1A524ECE4();

  return sub_1A3C5DD1C(a1, a2, v4);
}

unint64_t sub_1A3C5DD1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A524EAB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A3C5DDD4(uint64_t a1)
{
  sub_1A3C5D744();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3C5DE40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1A3C5DE88()
{
  result = qword_1EB12B1B0;
  if (!qword_1EB12B1B0)
  {
    sub_1A3C68AC0(255, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B1B0);
  }

  return result;
}

uint64_t sub_1A3C5DF3C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();

  v1 = OBJC_IVAR____TtC12PhotosUICore24LemonadeWallpaperManager__isFeatureAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3C5DFCC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v6 = v2;
    [v2 registerObserver_];
    v3 = [v6 isWallpaperModificationAllowed];
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_1A524C634();
    [v4 setBool:v3 forKey:v5];

    sub_1A3C5D148();
  }
}

uint64_t (*sub_1A3C5E160())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4419DD0;
}

void sub_1A3C5E1B8()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v27 = *(*v0 + 256);
  v28 = v7 + 256;
  v27(&v33, v4);
  v8 = *(&v34 + 1);
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v26 = (*(v9 + 24))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(&v33);
  if (!shouldUseNewCollectionsLayout()() || (v10 = *(v26 + 16)) == 0)
  {
LABEL_10:
    sub_1A3C5E88C();
  }

  v30 = *(*v0 + 680);
  v11 = v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v29 = *(v3 + 72);
  while (1)
  {
    sub_1A3C531C8(v11, v6);
    v21 = sub_1A3C5322C();
    v22 = v33;
    if (*(v30(v21) + 16))
    {
      sub_1A3C6246C(v22);
      v24 = v23;

      if (v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    sub_1A3C5322C();
    v12 = v32;
    sub_1A3C5322C();
    v13 = (*(*v1 + 440))(&v33);
    (v27)(&v33);
    sub_1A3C5322C();
    v14 = v31;
    type metadata accessor for LemonadeShelfViewModel(0);
    v15 = swift_allocObject();
    sub_1A5241604();
    v16 = v34;
    *(v15 + 24) = v33;
    *(v15 + 16) = v13 & 1;
    *(v15 + 56) = v35;
    *(v15 + 40) = v16;
    *(v15 + 17) = v14;
    v17 = (*(*v1 + 696))(&v33);
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v19;
    *v19 = 0x8000000000000000;
    sub_1A44190BC(v15, v12, isUniquelyReferenced_nonNull_native);
    *v19 = v31;
    v17(&v33, 0);
LABEL_6:
    sub_1A3C53E7C(v6);
    v11 += v29;
    if (!--v10)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_1A3C5E768@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1112))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 16, a1);
}

uint64_t type metadata accessor for SharedLibraryStatusViewModel()
{
  result = qword_1EB17E550;
  if (!qword_1EB17E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3C5EB48()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A3C5EC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Array.remove(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v54 = a2;
  v63 = sub_1A52413E4();
  v49 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C5F44C(0, &qword_1EB1264A0, MEMORY[0x1E69E6EA0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = v47 - v8;
  sub_1A3C5F44C(0, &qword_1EB1264A8, MEMORY[0x1E69E6E98]);
  v47[1] = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v47 - v11;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v64 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v47 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1A524DF24();
  v21 = *(v20 - 8);
  v59 = v20;
  v60 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v58 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = v47 - v24;
  v25 = sub_1A52414C4();
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v52 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52414B4();
  v66 = v13;
  v70 = sub_1A524C384();
  v62 = v3;
  v68 = *v3;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5907CC0](&v69, a3, WitnessTable);
  v68 = v69;
  sub_1A524E734();
  sub_1A524E704();
  v65 = a3;
  v28 = sub_1A524E724();
  v29 = (v60 + 32);
  v60 = TupleTypeMetadata2;
  v55 = TupleTypeMetadata2 - 8;
  v56 = v28;
  v30 = v14;
  v31 = (v14 + 32);
  v32 = (v30 + 8);
  v51 = (v30 + 16);
  while (1)
  {
    sub_1A524E714();
    v33 = v57;
    (*v29)();
    v34 = v60;
    if ((*(*(v60 - 1) + 48))(v33, 1, v60) == 1)
    {
      break;
    }

    (*v31)(v18, &v33[*(v34 + 12)], v66);
    v35 = v61;
    v36 = v53(v18);
    if (v35)
    {
      (*v32)(v18, v66);

      return (*(v50 + 8))(v52, v25);
    }

    v61 = 0;
    if (v36)
    {
      sub_1A5241484();
      (*v51)(v64, v18, v66);
      sub_1A524CB14();
    }

    (*v32)(v18, v66);
  }

  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v48;
  v38(v48, v52, v25);
  v38(v12, v39, v25);
  sub_1A3C5F4E8(&qword_1EB12AF60, MEMORY[0x1E6969B50]);
  sub_1A524D034();
  v40 = *(v37 + 8);
  v50 = v37 + 8;
  v60 = v40;
  (v40)(v39, v25);
  v41 = (v49 + 8);
  while (1)
  {
    sub_1A524CFD4();
    sub_1A3C5F4E8(&qword_1EB12AF80, MEMORY[0x1E6969B18]);
    v42 = v63;
    v43 = sub_1A524C594();
    (*v41)(v6, v42);
    if (v43)
    {
      break;
    }

    sub_1A3C5F4E8(&unk_1EB12AF70, MEMORY[0x1E6969B50]);
    sub_1A524C4F4();
    v44 = sub_1A524D0C4();
    v44(v67, 0);
    v45 = v64;
    sub_1A524CB34();
    (*v32)(v45, v66);
  }

  sub_1A3C5F674(v12);
  (v60)(v52, v25);
  return v70;
}

void sub_1A3C5F44C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A52414C4();
    v7 = sub_1A3C5F4E8(&unk_1EB12AF70, MEMORY[0x1E6969B50]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3C5F4E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C5F530()
{
  sub_1A3C5322C();
  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1A524EAB4();
  }

  return v1 & 1;
}

unint64_t sub_1A3C5F5F8()
{
  result = qword_1EB12A050;
  if (!qword_1EB12A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A050);
  }

  return result;
}

unint64_t sub_1A3C5F64C@<X0>(unint64_t *a1@<X8>)
{
  result = LemonadeShelfIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A3C5F674(uint64_t a1)
{
  sub_1A3C5F44C(0, &qword_1EB1264A8, MEMORY[0x1E69E6E98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3C5F70C()
{
  swift_getKeyPath();
  (*(*v0 + 1120))();
}

uint64_t sub_1A3C5F7FC(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - v7;
  sub_1A3C5FD30();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C5EC14(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = *(*v1 + 560);
  v38 = v1;
  result = v16(v13);
  v18 = 0;
  v19 = 0;
  v39 = a1;
  v40 = result;
  v20 = *(result + 16);
  v44 = *(a1 + 16);
  v45 = (v4 + 56);
  v41 = v4;
  v21 = (v4 + 48);
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v24 = v45;
  if (v19 >= *(v40 + 16))
  {
    goto LABEL_28;
  }

  sub_1A3C531C8(v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v19, v15);
  v23 = 0;
  ++v19;
  while (1)
  {
    v25 = *v24;
    v26 = 1;
    result = (*v24)(v15, v23, 1, v3);
    v27 = v44;
    if (v18 != v44)
    {
      if (v18 >= v44)
      {
        goto LABEL_27;
      }

      result = sub_1A3C531C8(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v18, v46);
      v27 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_29;
      }

      v26 = 0;
    }

    v47 = v27;
    v28 = v3;
    v29 = v46;
    v25(v46, v26, 1, v28);
    v30 = *(v43 + 48);
    v31 = v15;
    v32 = v15;
    v33 = v42;
    sub_1A3C5FE38(v32, v42);
    v34 = v29;
    v3 = v28;
    sub_1A3C5FE38(v34, v33 + v30);
    v35 = *v21;
    if ((*v21)(v33, 1, v28) == 1)
    {
      break;
    }

    if (v35(v33 + v30, 1, v28) == 1)
    {

      sub_1A3C53E7C(v33);
      goto LABEL_23;
    }

    sub_1A3C59944(v33, v48);
    sub_1A3C59944(v33 + v30, v49);
    sub_1A3C5322C();
    v36 = v57;
    sub_1A3C5322C();
    v55 = v36;
    v54 = v56;
    sub_1A3C5F5F8();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v52 == v50 && v53 == v51)
    {
      sub_1A3C53E7C(v49);
      sub_1A3C53E7C(v48);

      v18 = v47;
      v15 = v31;
      if (v19 != v20)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v22 = sub_1A524EAB4();
      sub_1A3C53E7C(v49);
      sub_1A3C53E7C(v48);

      v18 = v47;
      v15 = v31;
      if ((v22 & 1) == 0)
      {

        goto LABEL_23;
      }

      if (v19 != v20)
      {
        goto LABEL_6;
      }
    }

LABEL_5:
    v23 = 1;
    v19 = v20;
    v24 = v45;
  }

  result = (v35)(v33 + v30, 1, v28);
  if (result == 1)
  {
    return result;
  }

  sub_1A441997C(v33 + v30, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
LABEL_23:
  sub_1A3C5FECC();
  result = shouldUseNewCollectionsLayout()();
  if (result)
  {
    return sub_1A3C61CF0();
  }

  return result;
}

void sub_1A3C5FD30()
{
  if (!qword_1EB12A140)
  {
    sub_1A3C29F24(255, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12A140);
    }
  }
}

void sub_1A3C5FDC4()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C5FE38(uint64_t a1, uint64_t a2)
{
  sub_1A3C29F24(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C5FECC()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = shouldUseNewCollectionsLayout()();
  result = (*(*v0 + 560))();
  v10 = result;
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v22 - 2) = v0;
    *(&v22 - 1) = v10;
    (*(*v0 + 1120))(v12, sub_1A4419E90);

LABEL_16:
    result = shouldUseNewCollectionsLayout()();
    if (result)
    {
      return sub_1A3C61CF0();
    }

    return result;
  }

  v24 = *(result + 16);
  if (!v24)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    v20 = swift_getKeyPath();
    v21 = MEMORY[0x1EEE9AC00](v20);
    *(&v22 - 2) = v0;
    *(&v22 - 1) = v14;
    (*(*v0 + 1120))(v21, sub_1A4419E90);

    goto LABEL_16;
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v22 = v5;
  v23 = result;
  while (v13 < *(v10 + 16))
  {
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = *(v2 + 72);
    sub_1A3C531C8(v10 + v15 + v16 * v13, v7);
    sub_1A3C5322C();
    if ((*(*v0 + 432))(&v25))
    {
      sub_1A3C59944(v7, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C59FF8(0, *(v14 + 16) + 1, 1);
        v14 = v26;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A3C59FF8(v18 > 1, v19 + 1, 1);
        v14 = v26;
      }

      *(v14 + 16) = v19 + 1;
      v5 = v22;
      result = sub_1A3C59944(v22, v14 + v15 + v19 * v16);
      v10 = v23;
    }

    else
    {
      result = sub_1A3C53E7C(v7);
    }

    if (v24 == ++v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1A3C6030C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v26 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v25 = v16 - v7;
  sub_1A3C5FD30();
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v21 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C5EC14(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  KeyPath = swift_getKeyPath();
  v14 = *v1;
  v16[0] = *(*v1 + 1112);
  v16[1] = v14 + 1112;
  (v16[0])(KeyPath);

  v17 = v1;
  v18 = a1;
  v15 = v1[20];
  v23 = *(a1 + 16);
  v20 = v4;
  v19 = v15;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A3C60954(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A3C60960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(*v3 + 80);
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  (*(*v3 + 848))(KeyPath, a3, &v8, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A3C60B64()
{
  v1 = *(*v0 + 232);
  v1();
  sub_1A524CB74();
  swift_getWitnessTable();
  v2 = sub_1A524C964();

  if ((v2 & 1) == 0)
  {
    v4 = (v1)(result);
    MEMORY[0x1EEE9AC00](v4);
    swift_getWitnessTable();
    sub_1A524E504();
    sub_1A3C611D8();
  }

  return result;
}

void sub_1A3C60CE4()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C60E2C()
{
  sub_1A3C53294(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 40))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t sub_1A3C60EEC()
{
  v0 = sub_1A3C5C9EC();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0xA0);
  v2 = *v0;
  LOBYTE(v1) = v1();

  return v1 & 1;
}

uint64_t sub_1A3C60F68()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0 && (sub_1A3C52C70(0, &qword_1EB126A10), v10 = [swift_getObjCClassFromMetadata() sharedInstance], v11 = objc_msgSend(v10, sel_enablePhotosChallenge), v10, v11) && (sub_1A3C52C70(0, &qword_1EB126BB0), v12 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v13 = objc_msgSend(v12, sel_canShowInternalUI), v12, v13))
  {
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = [v14 surveyQuestionsHideDate];

    if (v15)
    {
      sub_1A52410F4();

      (*(v1 + 32))(v9, v7, v0);
      sub_1A5241104();
      v16 = sub_1A5241084();
      v17 = *(v1 + 8);
      v17(v4, v0);
      v17(v9, v0);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A3C611D8()
{
  sub_1A3C612E8();
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C612E8()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  return v0[10];
}

uint64_t sub_1A3C613C0()
{
  v1 = sub_1A3C6147C();
  v2 = sub_1A3C61524(1);
  (*(*v0 + 304))(&v4, v2);
  if (v5 <= 2u)
  {
    sub_1A3C63548(v4);
  }

  if (v4)
  {
    sub_1A410DF84(v4);
  }

  return sub_1A3C61524(v1 & 1);
}

uint64_t sub_1A3C6147C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  return v0[112];
}

uint64_t sub_1A3C61524(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    v1[112] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 848))(v5, sub_1A3C616AC);
  }

  return result;
}

uint64_t sub_1A3C616BC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 840))(KeyPath);

  v5 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1A3C617A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 32);
  v11 = *(v1 + 24);
  v12 = v4;
  type metadata accessor for LemonadeShelvesLoader.LoadingTarget();
  swift_getWitnessTable();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    *(v1 + 24) = v2;
    *(v1 + 32) = v3;
    v11 = v6;
    v12 = v7;
    return sub_1A410C738(&v11);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 848))(v10, sub_1A3C634AC);
  }
}

uint64_t sub_1A3C61980()
{
  v1 = *v0;
  result = sub_1A3C61AB0();
  if ((result & 1) == 0)
  {
    sub_1A3C61B58(1);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    v4[2] = *(v1 + 80);
    v4[3] = *(v1 + 88);
    v4[4] = v3;
    v5[4] = sub_1A3C9A3D0;
    v5[5] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1A3C2E0D0;
    v5[3] = &block_descriptor_56_1;
    _Block_copy(v5);

    px_perform_on_main_runloop();
  }

  return result;
}

uint64_t sub_1A3C61AB0()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  return v0[73];
}

uint64_t sub_1A3C61B58(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    v1[73] = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 848))(v5, sub_1A3C61CE0);
  }

  return result;
}

uint64_t sub_1A3C61CF0()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 560))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(*v0 + 680);
    v10 = *v0 + 680;
    v11 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    v31 = v0;
    v29[1] = v7;
    v30 = v12;
    do
    {
      sub_1A3C531C8(v11, v6);
      v13 = sub_1A3C5322C();
      v14 = v33[0];
      v15 = v9(v13);
      if (*(v15 + 16) && (v16 = sub_1A3C6246C(v14), (v17 & 1) != 0))
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        (*(*v1 + 256))(v33, v19);
        v20 = v10;
        v21 = v9;
        v22 = v34;
        v23 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        sub_1A3C5322C();
        v24 = *(v23 + 112);
        v25 = v22;
        v9 = v21;
        v10 = v20;
        v26 = v23;
        v12 = v30;
        v1 = v31;
        v27 = v24(&v32, v25, v26);
        (*(*v18 + 144))(v27 & 1);

        sub_1A3C53E7C(v6);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }

      else
      {

        sub_1A3C53E7C(v6);
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }
}

void sub_1A3C61FB8()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C6205C()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1A3C6210C(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  (*(*v1 + 1112))();

  (*(*v1 + 256))(v8, v3);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = v2;
  LOBYTE(v4) = (*(v5 + 48))(&v7, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return (v4 & 1) == 0;
}

BOOL sub_1A3C62208(_BYTE *a1)
{
  LOBYTE(v10[0]) = *a1;
  v2 = LemonadeShelfIdentifier.rawValue.getter();
  v4 = v3;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeLibraryDefaultsShelvesDataSource_currentHiddenShelves))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = sub_1A3D3C070(5u);
  if (v5)
  {
    v6 = v5;
    v10[0] = v2;
    v10[1] = v4;
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = v10;
    v7 = sub_1A3D3E5DC(sub_1A3D3E688, v9, v6);
  }

  else
  {

    v7 = 0;
  }

  return (v7 & 1) == 0;
}

uint64_t sub_1A3C62374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A524EC94();
  sub_1A524C794();
  v6 = sub_1A524ECE4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A524EAB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1A3C6246C(unsigned __int8 a1)
{
  sub_1A3C3DEB4();
  v1 = sub_1A524C4A4();
  return sub_1A3C62538(a1, v1);
}

uint64_t sub_1A3C624D4()
{
  sub_1A524EC94();
  LemonadeShelfIdentifier.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A3C62538(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C4CDB0();
    do
    {
      if (sub_1A524C594())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A3C62600()
{
  if (!qword_1EB120488)
  {
    type metadata accessor for LemonadeShelfViewModel(255);
    sub_1A3C3DEB4();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120488);
    }
  }
}

uint64_t sub_1A3C6266C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C62600();
  v31 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1A3C3DEB4();
      result = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3C628F8()
{
  v0 = LemonadeShelfIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == LemonadeShelfIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A524EAB4();
  }

  return v5 & 1;
}

void sub_1A3C629B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 120) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3C62A64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1A524D1A4();
}

uint64_t sub_1A3C62AF4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C62B44()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A3C62BC8(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xE000000000000000;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0xE000000000000000;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5241604();
  *(v2 + 72) = a1;
  v4 = *(*v2 + 584);
  a1;
  v5 = v4();
  v6 = [v5 isInitialized];

  if (v6)
  {
    sub_1A3DE4C24();
    sub_1A3DE4D9C();
    sub_1A3DE4F14();
    sub_1A3DE5208();
    sub_1A3DE5374();
    sub_1A3DE4A90();
    sub_1A3DE550C();
    sub_1A3DE56A4();
  }

  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

uint64_t sub_1A3C62DE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1A3C62E1C()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  v1 = v0[9];

  return v1;
}

uint64_t sub_1A3C62EAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedLibraryStatusViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C63030()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C6308C()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

id sub_1A3C630FC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 96);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A3C6310C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A3C5FECC();
  if (a2)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        return result;
      }

      v13 = 1;
    }

    else
    {
      if (!a3)
      {
        return result;
      }

      v13 = 0;
    }

    v12 = 3;
  }

  else
  {
    sub_1A52435C4();
    v10 = sub_1A3C632B8();
    result = (*(v6 + 8))(v8, v5);
    if (!a3)
    {
      return result;
    }

    v11 = 4;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v11 = 2;
      v12 = 0;
    }

    v13 = v11;
  }

  v14 = v12;
  return (*(*a3 + 312))(&v13);
}

uint64_t sub_1A3C632B8()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69C21F8])
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = [v7 enableShelfIPadLayout];

    return v8;
  }

  else if (v6 == *MEMORY[0x1E69C2210])
  {
    return 1;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t static LemonadeShelvesLoader.LoadingTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8))
      {
        return v2 == v3;
      }

      return 0;
    }

    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v4 == 2)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v4 != 3 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 3 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1A3C634AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
  v6 = v3;
  v7 = v4;
  return sub_1A410C738(&v6);
}

uint64_t sub_1A3C63504(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
  v6 = v3;
  v7 = v4;
  return sub_1A410C738(&v6);
}

void sub_1A3C63548(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A3C63A90();
}

void sub_1A3C63A90()
{
  sub_1A3C612E8();
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3C63B74(uint64_t a1)
{
  v2 = v1;
  v10[8] = *(*(*v2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v4 + 88);
  v6 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10[13] = v10 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10[12] = a1;
  sub_1A524E424();
  sub_1A3C6436C();
  v10[9] = v5;
  type metadata accessor for LemonadeShelvesLoader.ShelfState();
  v10[11] = v6;
  swift_getAssociatedConformanceWitness();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C64268()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3C642A0()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C6436C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  swift_beginAccess();
  return v0[12];
}

uint64_t sub_1A3C64428(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = [objc_allocWithZone(off_1E77217D8) init];
  v6 = (v4 + *(*v4 + 152));
  *v6 = 0;
  v6[1] = 0;
  *(v4 + *(*v4 + 160)) = 0;
  *(v4 + *(*v4 + 168)) = 0;
  (*(*(*(v5 + 80) - 8) + 32))(v4 + *(*v4 + 136), a1);
  *(v4 + *(*v4 + 144)) = a2;
  return v4;
}

id sub_1A3C64578@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A3C645E4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, v0 + *(v1 + 136), v2);
  (*(*(v1 + 88) + 64))(v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3C64718@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1A3C531C8(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v6 = *(v5 + 1);
    v12 = *v5;
    *v13 = v6;
    *&v13[16] = *(v5 + 4);
    sub_1A3C50BAC();
    a1[3] = v7;
    a1[4] = sub_1A3C3DB74(&qword_1EB129B88, sub_1A3C50BAC);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1A3C64A1C();
    v14 = v12;
    sub_1A3C651B8(&v14);

    v15 = *&v13[8];
    return sub_1A3C6520C(&v15, &qword_1EB1254A0, &qword_1EB1254B0);
  }

  else
  {
    sub_1A3C53294(&v12);
    v9 = *&v13[8];
    v10 = *&v13[16];
    __swift_project_boxed_opaque_existential_1(&v12, *&v13[8]);
    v11 = *(v10 + 32);
    a1[3] = swift_getAssociatedTypeWitness();
    a1[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1);
    v11(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(&v12);
    return sub_1A3C53E7C(v5);
  }
}

uint64_t sub_1A3C64910@<X0>(char *a1@<X8>)
{
  sub_1A3C64718((v6 + 1));
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1((v6 + 1), v7);
    (*(v3 + 56))(v6, v2, v3);
    v4 = v6[0];
    result = __swift_destroy_boxed_opaque_existential_0(v6 + 1);
  }

  else
  {
    v4 = 1;
    result = sub_1A3C6520C(v6 + 1, &qword_1EB132808, &qword_1EB132810);
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A3C649E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A3C64A1C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A3C64A7C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C56A4C(0, &qword_1EB125630, sub_1A3C50BAC, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider____lazy_storage___wrappedProvider;
  swift_beginAccess();
  sub_1A47E11EC(v1 + v7, v6, &qword_1EB125630, sub_1A3C50BAC);
  sub_1A3C50BAC();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1A3C42548(v6, &qword_1EB125630, sub_1A3C50BAC);
    v11 = sub_1A3C5A3E0();
    v12 = v9;
    sub_1A3C64D78();
  }

  return sub_1A3C668D0(v6, a1);
}

uint64_t sub_1A3C64D3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1A3C64ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PlaceholderUIItem();
    v7 = sub_1A3C50E18(&qword_1EB12A400, type metadata accessor for PlaceholderUIItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3C65064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1A3C650C0(uint64_t a1, uint64_t a2)
{
  sub_1A3C50BAC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C65124(uint64_t a1, uint64_t a2)
{
  sub_1A3C56A4C(0, &qword_1EB125630, sub_1A3C50BAC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C6520C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1A3C65268(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3C65268(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C652C8(255, a3);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3C652C8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A3C65328(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v28 = a3;
  v27 = a1;
  v24 = *(*(*v3 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = sub_1A5246F24();
  v29 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 16) != 2)
  {
    v11 = sub_1A3C645A4();
    v12 = *(v29 + 16);
    v23 = v7;
    v12(v10, v11, v7);
    v13 = sub_1A524D234();
    swift_retain_n();
    v14 = sub_1A5246F04();
    v22 = v13;
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v21 = a2;
      v16 = v15;
      v20 = swift_slowAlloc();
      v30 = v4;
      v31 = v20;
      *v16 = 136315650;
      v19[1] = v14;
      sub_1A524EE24();
      sub_1A3C2EF94();
    }

    (*(v29 + 8))(v10, v23);
    v31 = v4;
    v17 = swift_allocObject();
    v18 = v27;
    *(v17 + 16) = v4;
    *(v17 + 24) = v18;
    *(v17 + 32) = a2;
    *(v17 + 40) = v28 & 1;
    type metadata accessor for LemonadeShelvesLoader.ShelfState();

    swift_getWitnessTable();
    sub_1A5245F44();
  }

  return result;
}

uint64_t sub_1A3C65850()
{

  return swift_deallocObject();
}

id sub_1A3C65904(uint64_t (*a1)(char *), uint64_t a2, int a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A5246EA4();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 80);
  v52 = *(v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v46 - v13;
  v14 = sub_1A5246E54();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = v46 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v58 = v46 - v20;
  v21 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = v46 - v23;
  if (*(v4 + 3))
  {
    goto LABEL_14;
  }

  LODWORD(v49) = a3;
  sub_1A3C661B4(result);
  (*(v21 + 16))(v24, &v4[*(*v4 + 136)], v11);
  v25 = a1(v24);
  v27 = v26;
  (*(v21 + 8))(v24, v11);
  v28 = *(v4 + 3);
  *(v4 + 3) = v25;
  *(v4 + 4) = v27;
  v29 = *v4;
  swift_unknownObjectRetain();
  if (v28)
  {
    if (v25)
    {
      v30 = v28 == v25;
    }

    else
    {
      v30 = 0;
    }

    if (!v30)
    {
LABEL_10:
      v50 = v10;
      [*(v4 + 5) signalChange_];
      v31 = *(v4 + 3);
      if (v31)
      {
        v47 = *(v4 + 4);
        ObjectType = swift_getObjectType();
        v62 = v31;
        v32 = swift_allocObject();
        swift_weakInit();
        v33 = swift_allocObject();
        v33[2] = *(v29 + 80);
        v33[3] = *(v29 + 88);
        v33[4] = v32;
        swift_unknownObjectRetain();
        sub_1A52457C4();
      }

      sub_1A3C73804();
    }
  }

  else if (v25)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  LOBYTE(a3) = v49;
  if (*(v4 + 3))
  {
LABEL_14:
    if (a3)
    {
      v34 = qword_1EB18EAA0;
      swift_unknownObjectRetain();
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_1A5246E94();
      v36 = __swift_project_value_buffer(v35, qword_1EB18EAA8);
      sub_1A5246E84();
      v37 = v58;
      sub_1A5246E24();

      v49 = v36;
      v38 = sub_1A5246E84();
      LODWORD(ObjectType) = sub_1A524D654();
      v39 = sub_1A524DEC4();
      v50 = v10;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v46[1] = v40;
        v47 = swift_slowAlloc();
        v62 = v47;
        *v40 = 136446210;
        (*(v21 + 16))(v24, &v4[*(*v4 + 136)], v11);
        v41 = v51;
        (*(v52 + 40))(v11, v52);
        (*(v21 + 8))(v24, v11);
        v42 = v54;
        swift_getAssociatedConformanceWitness();
        sub_1A524EA44();

        (*(v53 + 8))(v41, v42);
        sub_1A3C2EF94();
      }

      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v57, v37, v61);
      sub_1A5246ED4();
      swift_allocObject();
      sub_1A5246EC4();
      (*(v44 + 8))(v37, v43);
      swift_getObjectType();
      sub_1A5245914();
    }
  }

  else
  {
    v45 = v4[16];
    v4[16] = 2;
    return sub_1A3C749F8(v45);
  }

  return result;
}

uint64_t sub_1A3C661B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v27 - v6;
  v8 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v27 - v11;
  v13 = sub_1A5246E54();
  v14 = MEMORY[0x1EEE9AC00](v13);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = v27 - v18;
  v20 = v3[20];
  if (!*&v2[v20])
  {
    v30 = v10;
    v31 = v17;
    v32 = v20;
    v33 = v16;
    v34 = result;
    if (qword_1EB18EAA0 != -1)
    {
      swift_once();
    }

    v21 = sub_1A5246E94();
    __swift_project_value_buffer(v21, qword_1EB18EAA8);
    sub_1A5246E84();
    sub_1A5246E24();

    v22 = sub_1A5246E84();
    v29 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v23 = swift_slowAlloc();
      v27[1] = v23;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v23 = 136446210;
      (*(v5 + 16))(v7, &v2[*(*v2 + 136)], v4);
      (*(v8 + 40))(v4, v8);
      (*(v5 + 8))(v7, v4);
      swift_getAssociatedConformanceWitness();
      sub_1A524EA44();

      (*(v30 + 8))(v12, AssociatedTypeWitness);
      sub_1A3C2EF94();
    }

    v25 = v33;
    v24 = v34;
    (*(v33 + 16))(v31, v19, v34);
    sub_1A5246ED4();
    swift_allocObject();
    v26 = sub_1A5246EC4();
    (*(v25 + 8))(v19, v24);
    *&v2[v32] = v26;
  }

  return result;
}

uint64_t sub_1A3C66664()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EAA8);
  __swift_project_value_buffer(v4, qword_1EB18EAA8);
  v5 = sub_1A3C645A4();
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

unint64_t sub_1A3C66768()
{
  result = qword_1EB12A048;
  if (!qword_1EB12A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A048);
  }

  return result;
}

uint64_t sub_1A3C667F0()
{
  sub_1A3C64718(&v5);
  if (v6)
  {
    sub_1A3C34460(&v5, v7);
    v1 = v8;
    v0 = v9;
    v2 = __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = sub_1A3C66934(v2, v1, *(v0 + 8));
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1A410F2E0(&v5);
    return 0;
  }

  return v3;
}

uint64_t sub_1A3C668D0(uint64_t a1, uint64_t a2)
{
  sub_1A3C50BAC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C66934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  DynamicType = swift_getDynamicType();
  (*(a3 + 88))(a2, a3);
  v15 = *(v4 + 32);
  sub_1A3C66FE8(a1, a2, a3);
  v12 = swift_allocObject();
  swift_weakInit();
  v17 = a2;
  v18 = a3;
  v19 = DynamicType;
  v20 = v10;
  v21 = v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1A52431D4();

  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_1A3C66B30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1A3C66CD4()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1A3C50D58(319, &qword_1EB124B08, sub_1A3C413B4);
    if (v1 <= 0x3F)
    {
      sub_1A3C50D58(319, &qword_1EB1201F0, sub_1A3C3637C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3C66DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v9 = &v15 - v8;
  (*(v6 + 88))(v5, v6);
  v10 = *(v2 + *(a1 + 44));
  v11 = *(v2 + *(a1 + 48));
  v12 = (v2 + *(a1 + 52));
  v13 = *v12;
  sub_1A3C66F04(v9, v10, v11, *v12, v12[1], a2);

  return sub_1A3C66EE8(v13);
}

uint64_t sub_1A3C66EE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1A3C66EF8@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

int *sub_1A3C66F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = type metadata accessor for LemonadeConcatenatedUIShelf.AdapterListManagerOptions();
  *(a6 + result[11]) = a2;
  *(a6 + result[12]) = a3;
  v14 = (a6 + result[13]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1A3C66FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  DynamicType = swift_getDynamicType();
  (*(a3 + 88))(a2, a3);
  v19 = 0;
  v20 = 0xE000000000000000;
  v18 = DynamicType;
  swift_getMetatypeMetadata();
  v11 = sub_1A524C714();
  MEMORY[0x1A5907B60](v11);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v18 = DynamicType;
  sub_1A524E624();
  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  swift_getAssociatedConformanceWitness();
  v18 = sub_1A524C4C4();
  v12 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v12);

  v13 = MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v18 = (*(*v3 + 144))(v13);
  v14 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v14);

  v15 = v19;
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v15;
}

uint64_t sub_1A3C67288(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A3C672D4(v3, a1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3C672D4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A524C4B4();
  if (*(v2 + *(a2 + 44)))
  {
    MEMORY[0x1A590A010]();
  }

  result = *(v2 + *(a2 + 48));
  if (result)
  {
    return MEMORY[0x1A590A010]();
  }

  return result;
}

uint64_t sub_1A3C673E4()
{
  sub_1A524EC94();
  (*(*v0 + 136))(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A3C675B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (*(v2 + 96))(v3, result, v1, v2);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3C67654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + *(type metadata accessor for LemonadeConcatenatedUIShelf.AdapterListManagerOptions() + 52));
  if (v8)
  {

    v8(a1, a2);
    sub_1A3C33378(v8);
  }

  (*(*(a4 + 8) + 96))(a1, a2, a3, *(a4 + 8));
  swift_getAssociatedTypeWitness();
  sub_1A3C413B4(255);
  swift_getAssociatedConformanceWitness();
  sub_1A3C50E60(&qword_1EB128D30, 255, sub_1A3C413B4);
  sub_1A5246004();
}

uint64_t sub_1A3C6780C(uint64_t a1, uint64_t a2)
{
  sub_1A524CC54();
  v6 = v2;
  v7 = a2;
  return sub_1A3C67884(sub_1A3C67A48, &v5);
}

uint64_t sub_1A3C67884(uint64_t a1, uint64_t a2)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1A3C67A20();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
    v8 = sub_1A524EEF4();
    MEMORY[0x1A5907B60](v8);

    MEMORY[0x1A5907B60](46, 0xE100000000000000);
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3C67A48()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager))
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        *(result + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager) = v3;
        v4 = *(*v3 + 632);
        v5 = swift_retain_n();
        v4(v5);
        sub_1A3C69CAC(0, &qword_1EB125048, &type metadata for LemonadeMemoriesCreationAvailabilityManager.CardVisibilityState, MEMORY[0x1E69E6720]);
        sub_1A52415B4();
      }
    }

    sub_1A52415B4();
    sub_1A3C6AB14();
  }

  return result;
}

void sub_1A3C67BE8()
{
  v1 = v0;
  v2 = sub_1A52453A4();
  v43 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &ObjCClassFromMetadata - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &ObjCClassFromMetadata - v6;
  sub_1A3C68294(0, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &ObjCClassFromMetadata - v9;
  v10 = sub_1A5245554();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &ObjCClassFromMetadata - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &ObjCClassFromMetadata - v14;
  if ([objc_opt_self() isMemoryCreationEnabled])
  {
    swift_getKeyPath();
    v16 = (*v0 + 696);
    v17 = *v16;
    (*v16)();

    if (!*&v0[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor])
    {
      sub_1A3C52C70(0, &qword_1EB126860);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [ObjCClassFromMetadata sharedInstance];
      v19 = [v18 shouldUseAvailabilityMonitor];

      if (v19)
      {
        v20 = ObjCClassFromMetadata;
        v21 = [ObjCClassFromMetadata sharedInstance];
        [v21 shouldUseProcessingStatusInAvailabilityMonitor];

        sub_1A5245544();
        v22 = [v20 sharedInstance];
        v23 = [v22 shouldOverrideAvailabilityPollingInterval];

        v25 = v44;
        v24 = v45;
        if (!v23)
        {
          goto LABEL_9;
        }

        v26 = [v20 sharedInstance];
        [v26 availabilityPollingInterval];
        v28 = v27;

        v29 = v28 * 60.0;
        if (COERCE__INT64(fabs(v28 * 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v29 > -9.22337204e18)
        {
          if (v29 < 9.22337204e18)
          {
            sub_1A5245544();
            (*(v25 + 8))(v15, v24);
            (*(v25 + 32))(v15, v13, v24);
LABEL_9:
            (*(v25 + 16))(v13, v15, v24);
            v30 = *&v1[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_photoLibrary];
            sub_1A5245634();
            swift_allocObject();
            v31 = v30;
            v32 = sub_1A5245614();
            KeyPath = swift_getKeyPath();
            v34 = MEMORY[0x1EEE9AC00](KeyPath);
            *(&ObjCClassFromMetadata - 2) = v1;
            *(&ObjCClassFromMetadata - 1) = v32;
            (*(*v1 + 704))(v34, sub_1A3C68308);

            sub_1A3C68364();
            v35 = v41;
            sub_1A52415B4();
            sub_1A3C6904C(v35, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
            sub_1A3C69118();
            sub_1A3C697F0();
          }

          goto LABEL_16;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v36 = v43;
      (*(v43 + 104))(v7, *MEMORY[0x1E69C1498], v2);
      swift_getKeyPath();
      v17();

      v37 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
      swift_beginAccess();
      v38 = *(v36 + 16);
      v38(v5, &v1[v37], v2);
      sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0]);
      LOBYTE(v37) = sub_1A524C594();
      v39 = *(v36 + 8);
      v39(v5, v2);
      if ((v37 & 1) == 0)
      {
        v38(v5, v7, v2);
        sub_1A4011BA4(v5);
      }

      v39(v7, v2);
    }
  }
}

void sub_1A3C68294(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3C68320()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor) = *(v0 + 24);
}

void sub_1A3C68364()
{
  sub_1A3C68294(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  if ([objc_opt_self() isMemoryCreationEnabled])
  {
    sub_1A3C52C70(0, &qword_1EB126860);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 shouldUseAvailabilityMonitor];

    if (v5)
    {
      swift_getKeyPath();
      v6 = (*v0 + 696);
      v7 = *v6;
      (*v6)();

      v8 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
      if (v8)
      {
        KeyPath = swift_getKeyPath();

        (v7)(KeyPath);

        if (*(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling))
        {
        }

        else
        {
          v10 = sub_1A524CCB4();
          (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
          v11 = swift_allocObject();
          swift_weakInit();
          v12 = swift_allocObject();
          v12[2] = 0;
          v12[3] = 0;
          v12[4] = v11;
          v12[5] = v8;
          sub_1A3D4D930(0, 0, v3, &unk_1A5311F70, v12);
        }
      }
    }
  }
}

uint64_t sub_1A3C685C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A3C685FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3C68644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C68AC0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C686B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C4D184(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C68710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A416C0E0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C68780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3C687E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C4D1D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C68850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A42D3B64(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C688C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C4D23C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C6891C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C71204(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C6898C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A46A1D84(0, a2, 255, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C68A04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C4D290(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C68A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3C68AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C68B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C68B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C68BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3C68C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  (*(*a1 + 696))();

  if (*(a1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor))
  {

    sub_1A5245624();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1A52453A4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_1A3C68D48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8B84;

  return v6(a1);
}

uint64_t sub_1A3C68E40()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3C6902C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A3C68ED8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v5 = (*MEMORY[0x1E69C14F0] + MEMORY[0x1E69C14F0]);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A4013A6C;

    return v5();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t (*sub_1A3C68FD4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A401650C;
}

uint64_t sub_1A3C6902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A3C68ED8, 0, 0);
}

uint64_t sub_1A3C6904C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C68294(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C690A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A41DDA30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3C69118()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryStatusProvider) hasSharedLibraryOrPreview];
  KeyPath = swift_getKeyPath();
  v4 = KeyPath;
  if (v2)
  {
    (*(*v1 + 696))(KeyPath);

    if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryFilterStateObservation))
    {
      v6 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryFilterState) viewMode];
      v7 = v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
      if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8) & 1) != 0 || *v7 != v6)
      {
        v13 = swift_getKeyPath();
        v14 = MEMORY[0x1EEE9AC00](v13);
        (*(*v1 + 704))(v14, sub_1A4016664);
      }

      else
      {
        *v7 = v6;
        *(v7 + 8) = 0;
        sub_1A3C69584(v6, 0);
      }

      swift_allocObject();
      swift_weakInit();

      sub_1A524D1A4();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    v8 = *(*v1 + 704);
    v8(v4, sub_1A401664C);

    v9 = v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8) == 1)
    {
      v10 = *v9;
      *v9 = 0;
      *(v9 + 8) = 1;
      return sub_1A3C69584(v10, 1);
    }

    else
    {
      v11 = swift_getKeyPath();
      v12 = MEMORY[0x1EEE9AC00](v11);
      v8(v12, sub_1A4016664);
    }
  }

  return result;
}

uint64_t sub_1A3C6953C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C69584(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v5 = (*v2 + 696);
  v6 = *v5;
  (*v5)();

  if (*(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8))
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode) == a1)
  {
    return result;
  }

  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136315138;
    swift_getKeyPath();
    v6();

    sub_1A40163C8(0, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  return sub_1A401448C();
}

void type metadata accessor for PXLibraryFilterViewMode()
{
  if (!qword_1EB1268E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1268E0);
    }
  }
}

void sub_1A3C697F0()
{
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

void sub_1A3C6993C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C6998C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C699DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69A7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69ACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69B6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69BBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69C0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69C5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69CAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69CFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3C69D9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3C69DF4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager);
  if (v3)
  {
    v4 = *(*v3 + 312);

    v4(&v7, v5);

    v6 = v7;
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

uint64_t (*sub_1A3C69E84())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A47E1120;
}

uint64_t sub_1A3C69EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager + 24);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1A3C69F44@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v2 = sub_1A3C6A068();
  os_unfair_lock_lock((v2 + 20));
  *a1 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
}

uint64_t sub_1A3C6A020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C6A068()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v4 = 2;
    sub_1A3C6A0FC(&v4, &v5);
    v2 = v5;
    sub_1A3C6AA5C();
    v1 = swift_allocObject();
    *(v1 + 20) = 0;
    *(v1 + 16) = v2;
    *(v0 + 16) = v1;
  }

  return v1;
}

void sub_1A3C6A0FC(unsigned __int8 *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = sub_1A52413B4();
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52413D4();
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241144();
  v67 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  v17 = *a1;
  if ((*sub_1A3C38B30() & 1) == 0)
  {
    v63 = v17;
    v64 = a2;
    v19 = [objc_opt_self() currentDevice];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 6)
    {
      v21 = sub_1A5246F04();
      v22 = sub_1A524D264();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "LemonadeMemoriesEntryCardPositionManager will always return .leading for Vision Pro";
        goto LABEL_13;
      }
    }

    else if (v20 == 1 && *(v2 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_isDisabledForIPad) == 1)
    {
      v21 = sub_1A5246F04();
      v22 = sub_1A524D264();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "LemonadeMemoriesEntryCardPositionManager will always return .leading for iPad";
LABEL_13:
        _os_log_impl(&dword_1A3C1C000, v21, v22, v24, v23, 2u);
        MEMORY[0x1A590EEC0](v23, -1, -1);
      }
    }

    else if (MEMORY[0x1A590D320]())
    {
      v21 = sub_1A5246F04();
      v22 = sub_1A524D264();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "LemonadeMemoriesEntryCardPositionManager will always return .leading for Solarium";
        goto LABEL_13;
      }
    }

    else
    {
      sub_1A3C56110();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [ObjCClassFromMetadata sharedInstance];
      v26 = [v25 memoryCreationCellPositionInMemoryShelf];

      v27 = v26 == 3;
      v28 = v63;
      if (v27 && v63 != 2)
      {
        v29 = sub_1A5246F04();
        v30 = sub_1A524D264();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1A3C1C000, v29, v30, "LemonadeMemoriesEntryCardPositionManager toggles position", v31, 2u);
          MEMORY[0x1A590EEC0](v31, -1, -1);
        }

        v18 = (v28 & 1) == 0;
        goto LABEL_15;
      }

      v32 = [ObjCClassFromMetadata sharedInstance];
      v33 = [v32 memoryCreationCellPositionInMemoryShelf];

      if (v33)
      {
        v34 = [ObjCClassFromMetadata sharedInstance];
        v35 = [v34 memoryCreationCellPositionInMemoryShelf];

        v36 = sub_1A5246F04();
        v37 = sub_1A524D264();
        v18 = v35 != 1;
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v38 = 136315138;
          LOBYTE(v72) = v18;
          sub_1A524C714();
          sub_1A3C2EF94();
        }

        goto LABEL_15;
      }

      v39 = sub_1A5241134();
      v40 = v2;
      (*(v2 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_lastUsedDateProvider))(v39);
      sub_1A5241054();
      v42 = v41;
      v43 = v67 + 8;
      v44 = *(v67 + 8);
      v44(v14, v11);
      v67 = v43;
      v45 = (v44)(v16, v11);
      v46 = v40;
      if ((*(v40 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_impressionsCountProvider))(v45) >= 6 && v42 >= 86400.0)
      {
        sub_1A5241394();
        v47 = v66;
        (*(v66 + 104))(v7, *MEMORY[0x1E6969A58], v5);
        sub_1A5241134();
        v48 = sub_1A52413C4();
        v44(v16, v11);
        (*(v47 + 8))(v7, v5);
        (*(v65 + 8))(v10, v8);
        v49 = (v46 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider);
        v50 = *(v46 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider + 24);
        v51 = *(v46 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider + 32);
        __swift_project_boxed_opaque_existential_1(v49, v49[3]);
        v18 = v48 < (*(v51 + 8))(v50, v51) || v48 >= v52;

        v54 = sub_1A5246F04();
        v55 = sub_1A524D264();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v56 = 136315650;
          v57 = v49[3];
          v58 = v49[4];
          __swift_project_boxed_opaque_existential_1(v49, v57);
          v59 = (*(v58 + 8))(v57, v58);
          v70 = v60;
          v71 = v59;
          v68 = 0;
          v69 = 0xE000000000000000;
          sub_1A524E624();
          MEMORY[0x1A5907B60](3943982, 0xE300000000000000);
          sub_1A524E624();
          sub_1A3C2EF94();
        }

        goto LABEL_15;
      }

      v21 = sub_1A5246F04();
      v22 = sub_1A524D264();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "LemonadeMemoriesEntryCardPositionManager: .leading position due to impressionsCount not reaching the limit or the feature was used in last 24h";
        goto LABEL_13;
      }
    }

    v18 = 0;
LABEL_15:
    a2 = v64;
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:
  *a2 = v18;
}

void sub_1A3C6AA5C()
{
  if (!qword_1EB1204F8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204F8);
    }
  }
}

uint64_t (*sub_1A3C6AABC())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A47E126C;
}

void sub_1A3C6AB14()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v16[3] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v16[2] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v16[1] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 showFreeformMemoryCreationCellInMemoryShelf];

  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_forceCardVisibilityState);
    if (v7 == 3)
    {
      v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_availabilityManager);
      if (v8)
      {
        v9 = *(*v8 + 312);

        v9(&aBlock, v10);

        v7 = aBlock;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 2;
  }

  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v13 = 136315394;
    LOBYTE(v20) = v7;
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v14 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager + 24);
  v15 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_positionManager), v14);
  (*(v15 + 8))(&aBlock, v14, v15);
  if (v7 == 1)
  {
    sub_1A3C69CAC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1A52F9790;
    sub_1A3F75760(*(v1 + OBJC_IVAR____TtC12PhotosUICore43MemoryCreationLemonadeMemoriesShelfProvider_photoLibrary), 4);
  }

  sub_1A3C64D78();
}

uint64_t sub_1A3C6B36C()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for GenerativeStoryInlineCellView()
{
  result = qword_1EB17E400;
  if (!qword_1EB17E400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3C6B40C()
{
  sub_1A3C6B4E8(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126BF0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3C6B4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B5B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B6DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C6B86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3C6B8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C6BAF0(void *a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = [v8 simulateEmptyShelves];

  if (!v9)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69C12B0], v4);
    sub_1A3C6BD20(a1, a2, v7, 0, 1);
  }

  sub_1A459EC38(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
  v10 = *(a2 + 16);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(&v14[11], 0, 24);
  v11 = sub_1A3C52C70(0, &qword_1EB1265E0);
  v12 = v10;
  sub_1A43FD8EC(v14, v11);
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v12, 0, v15);
}

void sub_1A3C6BD20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = a5;
  v28 = a4;
  v27 = a3;
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = objc_opt_self();
  v11 = sub_1A524CA14();
  v12 = sub_1A524C634();
  v30 = a1;
  v26 = [v10 transientCollectionListWithCollections:v11 title:v12 identifier:0 photoLibrary:a1];

  v13 = *(a2 + 24);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 2;
  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x258))(v13);
  }

  else
  {
    v16 = v13;
    v15 = 0;
  }

  sub_1A459EC38(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v31);
  v39 = v31;
  v40 = v32;
  sub_1A3C6C18C(&v37);
  v35 = v37;
  v36 = v38;
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C30368();
  v19 = sub_1A3C5A374();
  v20 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v39, 0, &unk_1F17170E8, 0, 1, &v35, v17 & 1, &v41, v34, v18, v19 & 1, v20 & 1, 1, v15);
  v32 = 0;
  v31 = 0;
  v33 = 0;
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = v29 & 1;
  v23 = v30;
  *(v22 + 32) = v30;
  (*(v8 + 32))(v22 + v21, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v24 = v23;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v26, v13, v42, v34, &v31, sub_1A3C746A8, v22);
}

uint64_t sub_1A3C6C0BC()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3C6C19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A3C6C300();
  result = MEMORY[0x1A59082D0](v2, &type metadata for PhotoKitItemListMetadata, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1A3C6C3AC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14)
{
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *a6;
  v20 = *(a6 + 8);
  v21 = *a8;
  *(a9 + 58) = 2;
  *a9 = v17;
  *(a9 + 8) = v18;
  *(a9 + 16) = a2;
  v22 = sub_1A3C6C19C(a3);

  *(a9 + 24) = v22;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  *(a9 + 48) = v19;
  *(a9 + 56) = v20;
  *(a9 + 57) = a7;
  *(a9 + 58) = v21;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 73) = a12;
  *(a9 + 74) = a13;
  *(a9 + 80) = a14;
  return result;
}

unint64_t sub_1A3C6C300()
{
  result = qword_1EB129E60;
  if (!qword_1EB129E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129E60);
  }

  return result;
}

unint64_t sub_1A3C6C358()
{
  result = qword_1EB129E50;
  if (!qword_1EB129E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129E50);
  }

  return result;
}

uint64_t sub_1A3C6C3AC(unsigned __int8 *a1, unsigned __int8 a2)
{
  v13 = a2;
  v4 = *v2;
  sub_1A3C6C300();
  v5 = sub_1A524C4A4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1A3C6C358();
    while ((sub_1A524C594() & 1) == 0)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v10 = (*(v4 + 48) + v7);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A3C6C524(v13, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    v10 = &v13;
    result = 1;
  }

  *a1 = *v10;
  return result;
}

uint64_t sub_1A3C6C4E0()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3C6C524(uint64_t result, unint64_t a2, char a3)
{
  v14 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A43FBAF4();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1A43FBD5C();
      goto LABEL_12;
    }

    sub_1A43FBEAC();
  }

  v7 = *v3;
  sub_1A3C6C300();
  result = sub_1A524C4A4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_1A3C6C358();
    do
    {
      result = sub_1A524C594();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v10 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v14;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void sub_1A3C6C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PhotoKitItemListManager();
  swift_allocObject();
  sub_1A3C6C78C(a1, a2, a3, a4, a5, a6, a7);
}

void sub_1A3C6C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a7;
  v7 = a6;
  v10 = a3;
  v11 = a2;
  v8 = a1;
  sub_1A5245EC4();
}

uint64_t sub_1A3C6D218()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C6D250()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C6D290()
{

  return swift_deallocObject();
}

void sub_1A3C6D308()
{
  sub_1A524BFC4();
  if (v0 <= 0x3F)
  {
    sub_1A3C6D3EC(319, &unk_1EB120DE0, MEMORY[0x1E69E5E28]);
    if (v1 <= 0x3F)
    {
      sub_1A3C6D574(319, &qword_1EB126FD8, MEMORY[0x1E69E5E28]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3C6D3EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126D28);
    v7 = a3(a1, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3C6D46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126C40);
    v7 = sub_1A3C6C300();
    v8 = a3(a1, &type metadata for PhotoKitItemListMetadata, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C6D4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126C40);
    v7 = sub_1A3C6C300();
    v8 = a3(a1, &type metadata for PhotoKitItemListMetadata, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3C6D574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A3C6D4F0(255, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3C6D6D4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for PhotoKitItemListManager.FetchState();
  type metadata accessor for PhotoKitItemListImplementation();
  sub_1A5245E94();
}

uint64_t sub_1A3C6D790()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1A524E4E4();
  return sub_1A524E4D4();
}

uint64_t sub_1A3C6D80C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

unint64_t sub_1A3C6D8A4@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  State = type metadata accessor for PhotoKitItemListManager.MetadataFetchState();
  sub_1A524BF84();
  v3 = *(State + 32);
  v4 = MEMORY[0x1E69E7CC0];
  *&a1[v3] = sub_1A3C6DA38(MEMORY[0x1E69E7CC0]);
  v5 = *(State + 36);
  result = sub_1A3C6D918(v4);
  *&a1[v5] = result;
  return result;
}

unint64_t sub_1A3C6D918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A3C6D574(0, &qword_1EB126458, MEMORY[0x1E69E6EC8]);
  v3 = sub_1A524E794();
  v10 = *(a1 + 32);
  result = sub_1A3CAB9BC(*(a1 + 32));
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v1 - 1;
  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(v3[6] + 8 * result) = v10;
  *(v3[7] + 8 * result) = *(&v10 + 1);
  v7 = v3[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    v3[2] = v9;
    if (v6)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3C6DA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A3C6D3EC(0, &qword_1EB126450, MEMORY[0x1E69E6EC8]);
  v3 = sub_1A524E794();
  v16 = *(a1 + 32);
  result = sub_1A3CAB9BC(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_1A3CAB9BC(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3C6DBB4(uint64_t a1, uint64_t a2)
{
  sub_1A3C6DCAC(0, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A3C6DC44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C6DCAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3C6DD08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A3C6DDBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A3CAFF98(0, &qword_1EB126458, MEMORY[0x1E69E6EC8]);
  v3 = sub_1A524E794();
  v10 = *(a1 + 32);
  result = sub_1A3CAB9BC(*(a1 + 32));
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v1 - 1;
  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(v3[6] + 8 * result) = v10;
  *(v3[7] + 8 * result) = *(&v10 + 1);
  v7 = v3[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    v3[2] = v9;
    if (v6)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3C6E924(uint64_t a1)
{
  v2 = sub_1A3C6E9EC();
  v3 = sub_1A3C6E9F4(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if (v8[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = v3;
      sub_1A3F90C8C(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        sub_1A3F91B6C(a1 + 32, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1A3C6E9F4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1A5901C30](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1A5901C40]();
    sub_1A3F90D74(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1A3C7B82C(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1A3C6EB2C(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v1[2];
  v7 = v1[3];
  sub_1A3C6DD08(v6, v7);
  sub_1A3C6EC48(v6, v7);
  v15 = *(v2 + 80);
  KeyPath = swift_getKeyPath();
  v11 = v1;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  (*(*v1 + 1024))(KeyPath, sub_1A3C6EED8, &v10, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C6EC48(v3, v4);
}

uint64_t sub_1A3C6EC48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3C6EC70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A3C6ECAC@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1016))(KeyPath);

  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return sub_1A3C6DD08(v4, v5);
}

void sub_1A3C6EE48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1[2];
  v4 = v1[3];
  *(v1 + 1) = *a1;
  v1[4] = v2;
  sub_1A3C6DD08(v3, v4);
  sub_1A3C6EC48(v3, v4);
  sub_1A3C6EF2C();
}

void sub_1A3C6EED8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3[0] = v0[3];
  v3[1] = v1;
  v3[2] = v2;
  sub_1A3C6DD08(v3[0], v1);
  sub_1A3C6EE48(v3);
}

uint64_t PHPhotoLibrary.registerObserver<A, B>(current:updated:didChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 2) = a7;
  *(v17 + 3) = a8;
  *(v17 + 4) = a10;
  *(v17 + 5) = a1;
  *(v17 + 6) = a2;
  *(v17 + 7) = a3;
  *(v17 + 8) = a4;
  v18 = swift_allocObject();
  *(v18 + 2) = a7;
  *(v18 + 3) = a8;
  *(v18 + 4) = a10;
  *(v18 + 5) = a1;
  *(v18 + 6) = a2;
  *(v18 + 7) = a5;
  *(v18 + 8) = a6;
  *(v18 + 9) = a3;
  *(v18 + 10) = a4;
  v19 = type metadata accessor for ConcretePhotoLibraryObservation();
  v20 = objc_allocWithZone(v19);
  swift_unknownObjectWeakInit();
  v21 = &v20[OBJC_IVAR____TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation_prepareBlock];
  *v21 = sub_1A3FD9D8C;
  v21[1] = v17;
  v22 = &v20[OBJC_IVAR____TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation_block];
  *v22 = sub_1A3FD9DA0;
  v22[1] = v18;
  v29.receiver = v20;
  v29.super_class = v19;
  swift_retain_n();
  swift_retain_n();

  v23 = v27;

  v24 = objc_msgSendSuper2(&v29, sel_init);
  [v23 px:v24 registerChangeObserver:?];

  a9[3] = v19;
  a9[4] = &off_1F16EF928;
  *a9 = v24;
  return result;
}

uint64_t sub_1A3C6F408()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C6F448()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C6F55C(uint64_t a1, uint64_t a2)
{
  sub_1A3C2A2DC(0, &unk_1EB129F60, sub_1A3C6F5F0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3C6F5F0()
{
  result = qword_1EB129F70;
  if (!qword_1EB129F70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB129F70);
  }

  return result;
}

uint64_t sub_1A3C6F654(uint64_t a1, uint64_t a2)
{
  v11 = *(*v2 + 80);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*(*v2 + 1024))(KeyPath, sub_1A3C6F744, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C6F744()
{
  *(*(v0 + 16) + 360) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3C6F78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A3C6DCAC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3C6F83C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A459EC38(255, a2, &qword_1EB1265E0, 0x1E69788F0, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C6F894@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 280))();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C6F8E4()
{
  if ((*(v0 + 272) & 1) == 0)
  {
    *(v0 + 272) = 1;
    sub_1A3C6F920();
  }

  sub_1A3C708B8();
}

void sub_1A3C6F920()
{
  v4[4] = *v0;
  v1 = sub_1A524BEE4();
  v6 = *(v1 - 8);
  v7 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4[10] = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v4[9] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v4[8] = v4 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C700E8();
}

uint64_t sub_1A3C6FF2C()
{

  if (*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
  }

  return swift_deallocObject();
}

void sub_1A3C6FFCC(uint64_t a1)
{
  ++*(a1 + 8);
  type metadata accessor for PhotoKitItemListManager.FetchState();
  type metadata accessor for PhotoKitItemListImplementation();
  sub_1A5245E94();
}

void sub_1A3C700E8()
{
  v1 = *(v0 + 392);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1A3C6FFCC(v1 + v2);
}

__n128 sub_1A3C701AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 280);
  v4 = sub_1A3C70320();
  v5 = (*(*v1 + 360))();
  v7 = v6;
  v8 = *(v1 + 160);
  v9 = *(v1 + 128);
  v28 = *(v1 + 144);
  v29 = v8;
  v10 = *(v1 + 160);
  v30 = *(v1 + 176);
  v11 = *(v1 + 128);
  v27[0] = *(v1 + 112);
  v27[1] = v11;
  v22 = v9;
  v23 = v28;
  v12 = *(v1 + 176);
  v24 = v10;
  v25 = v12;
  v31 = *(v1 + 192);
  v26 = *(v1 + 192);
  v21 = v27[0];
  sub_1A3C6DB58(v27, v19);
  v13 = sub_1A3C7058C();
  (*(*v1 + 472))(v19);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  v14 = v24;
  v15 = v25;
  *(a1 + 64) = v23;
  *(a1 + 80) = v14;
  *(a1 + 96) = v15;
  *(a1 + 112) = v26;
  v16 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v16;
  *(a1 + 120) = v13 & 1;
  result = v19[0];
  v18 = v19[1];
  *(a1 + 160) = v20;
  *(a1 + 128) = result;
  *(a1 + 144) = v18;
  return result;
}

uint64_t sub_1A3C70320()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1016))(KeyPath);

  return v0[47];
}

uint64_t sub_1A3C703B4(uint64_t a1)
{
  type metadata accessor for PXLibraryFilterViewMode();
  sub_1A3C72154(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode);
  v3 = sub_1A524C594();
  if (v3)
  {
    return sub_1A43FA724(a1);
  }

  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 1024))(v6, sub_1A43FD4BC);
}

uint64_t sub_1A3C7058C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1016))(KeyPath);

  return v0[384];
}

uint64_t sub_1A3C70620(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524C594();
  if (v3)
  {
    return sub_1A43FA7CC(v2);
  }

  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 1024))(v6);
}

uint64_t sub_1A3C707DC(uint64_t a1, uint64_t a2)
{
  sub_1A3C6DCAC(0, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3C7086C()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1A3C708B8()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1016))(KeyPath);

  return v0[33];
}

uint64_t sub_1A3C7094C(uint64_t a1)
{
  v3 = v1[33];
  v4 = type metadata accessor for PhotoKitItemListImplementation();
  if (v3 == a1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1024))(v6, sub_1A3CAA490);
  }
}

uint64_t sub_1A3C70B14(void *a1)
{
  v11 = 0;
  if (qword_1EB18D6E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB1EB4E0;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A3C71494;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_108;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;
    if (v11)
    {

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3C70CB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A3C70CFC()
{
  v0 = sub_1A524D464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A3C70F38();
  sub_1A3C711A0(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C70F90();
  sub_1A524E224();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A524D4B4();
  qword_1EB1EB4E0 = result;
  return result;
}

unint64_t sub_1A3C70F38()
{
  result = qword_1EB126AD0;
  if (!qword_1EB126AD0)
  {
    sub_1A524D414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126AD0);
  }

  return result;
}

unint64_t sub_1A3C70F90()
{
  result = qword_1EB126E30;
  if (!qword_1EB126E30)
  {
    sub_1A3E09AF8(255, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126E30);
  }

  return result;
}

void sub_1A3C71018(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C34400(255, a3);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C71070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C710D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C71138(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C711A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C71204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C71268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3C712BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524EA54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3C71318(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3C71380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3C713E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C652C8(255, a3);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3C71494()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (qword_1EB18D6E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = sub_1A3C7174C(v1, qword_1EB1EB4E8);
  swift_endAccess();
  if (v3)
  {
    *v2 = v3;
  }

  type metadata accessor for PhotoKitFetcher();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_1A5309A20;
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  v7 = v1;
  *(v5 + 24) = [v6 sharedFetcherForPhotoLibrary_];
  *v2 = v5;

  swift_beginAccess();
  if ((qword_1EB1EB4E8 & 0xC000000000000001) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1EB1EB4E8 < 0)
  {
    v8 = qword_1EB1EB4E8;
  }

  else
  {
    v8 = qword_1EB1EB4E8 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1A524E2B4();
  if (!__OFADD__(result, 1))
  {
    qword_1EB1EB4E8 = sub_1A414C2D4(v8, result + 1);
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = qword_1EB1EB4E8;
    sub_1A3C718C8(v5, v7, isUniquelyReferenced_nonNull_native);
    qword_1EB1EB4E8 = v10;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3C71638()
{
  result = sub_1A3C71660(MEMORY[0x1E69E7CC0]);
  qword_1EB1EB4E8 = result;
  return result;
}

unint64_t sub_1A3C71660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3C71A44();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A3C39EA4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

uint64_t sub_1A3C7174C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1A524E6B4();

    if (v3)
    {
      type metadata accessor for PhotoKitFetcher();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A3C39EA4(a1);
    if (v5)
    {
    }
  }

  return 0;
}

id sub_1A3C718C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C39EA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A3C71B00(v13, a3 & 1);
      v8 = sub_1A3C39EA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126BF0);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A414C4F4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_1A3C71A44()
{
  if (!qword_1EB1263F0)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0);
    type metadata accessor for PhotoKitFetcher();
    sub_1A3C3A220(&qword_1EB126BD0, &qword_1EB126BF0);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263F0);
    }
  }
}

uint64_t sub_1A3C71B00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C71A44();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3C71D7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double PhotoKitItemListManager.FetchResultProviderInput.defaultFetcherOptions.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 16);
  }

  v5 = *(v1 + 96);
  v6 = *(v1 + 112);
  v7 = v6;
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v4, v3, 0, v5, v6, v12);
  v8 = v13;
  v9 = v14;
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 40) = a5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SQ_s8SendablepSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3C71E6C()
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
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C72154(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C720F0(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A960(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB17ACA8 = result;
  return result;
}

void sub_1A3C720F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3C72154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C7219C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1A3C722C4()
{
  sub_1A3C722F8();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3C72370(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 272) & 1) == 0)
  {
    *(v2 + 272) = 1;
    sub_1A3C6F920();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1A524D1A4();
}

void sub_1A3C72410(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[22] = a8;
  v13[18] = a6;
  v13[19] = a5;
  v14 = a4;
  v15 = a3;
  v8 = sub_1A5246EA4();
  v13[21] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13[20] = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BEE4();
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v18 = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v16 = v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245E94();
}

uint64_t sub_1A3C73760()
{

  return swift_deallocObject();
}

void sub_1A3C73804()
{
  v1 = *(*v0 + 80);
  v8[12] = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[8] = *(AssociatedTypeWitness - 8);
  v8[9] = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8[7] = v8 - v3;
  v4 = sub_1A5246F24();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8[16] = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[13] = v1;
  v8[11] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8[10] = v8 - v7;
  sub_1A5245EC4();
}

BOOL sub_1A3C74290()
{
  v1 = *(v0 + 392);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1A3C74354(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_1A3C74408()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EAC8);
  __swift_project_value_buffer(v4, qword_1EB18EAC8);
  if (qword_1EB176A50 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB176A58);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

void sub_1A3C74544()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176A58);
  __swift_project_value_buffer(v0, qword_1EB176A58);
  sub_1A5246EF4();
}

uint64_t sub_1A3C745A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C745F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C74678@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C746A8(uint64_t a1)
{
  v3 = *(sub_1A5244EE4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1A3C74724(a1, v4, v5, v6, v7);
}

uint64_t sub_1A3C74724(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EC38(0, &unk_1EB129FF0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v13 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C48B8C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52F8E10;
  *(v14 + 32) = sub_1A524C674();
  *(v14 + 40) = v15;
  v16 = sub_1A524CA14();

  [v13 setFetchPropertySets_];

  if ((a3 & 1) == 0)
  {
    [v13 setFetchLimit_];
  }

  (*(v10 + 16))(v12, a5, v9);
  sub_1A5244EF4();
  swift_allocObject();
  v17 = v13;
  v18 = a4;
  sub_1A5244ED4();
  sub_1A5244B94();
  v19 = sub_1A5244B84();

  return v19;
}

id PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter()
{
  result = [*v0 photoLibrary];
  if (result)
  {
    v2 = result;
    v3 = [result librarySpecificFetchOptions];

    if (*(v0 + 24))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v0 + 16);
    }

    [v3 setFetchLimit_];
    [v3 setSharingFilter_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A3C749F8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v22 = *(*(*v2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != v3)
  {
    v20 = v5;
    v12 = sub_1A3C645A4();
    (*(v8 + 16))(v11, v12, v7);
    v13 = sub_1A524D234();
    swift_retain_n();
    v14 = sub_1A5246F04();
    v21 = v13;
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v19 = v8;
      v16 = v15;
      v18 = swift_slowAlloc();
      v24 = v2;
      v25 = v18;
      *v16 = 136315650;
      v17 = v14;
      sub_1A524EE24();
      sub_1A3C2EF94();
    }

    (*(v8 + 8))(v11, v7);
    result = [*(v2 + 40) signalChange_];
    if (*(v2 + 16) == 2)
    {
      return sub_1A3C74EFC();
    }
  }

  return result;
}

uint64_t sub_1A3C74EFC()
{
  v1 = v0;
  v2 = sub_1A5246EA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*v1 + 160);
  if (*(v1 + v11))
  {
    v21 = v3;
    v12 = qword_1EB18EAA0;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246E94();
    __swift_project_value_buffer(v13, qword_1EB18EAA8);
    v14 = sub_1A5246E84();
    sub_1A5246EB4();
    v20 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      sub_1A5246EE4();

      v15 = v21;
      if ((*(v21 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v15 + 8))(v5, v2);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, v20, v18, "ShelvesLoader.LoadingItemList", v16, v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    *(v1 + v11) = 0;
  }

  return result;
}

void sub_1A3C751D0(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = *v1;
  if (v3 != *(v1 + *(*v1 + 168)))
  {
    if (!*(v1 + *(*v1 + 168)) || *(v1 + v4[18]) != 1 || (sub_1A3C52C70(0, &qword_1EB126A10), v5 = [swift_getObjCClassFromMetadata() sharedInstance], v6 = objc_msgSend(v5, sel_enableShelvesLoaderGradualDelivery), v5, !v6))
    {

      sub_1A3CBAA3C();
    }

    v7 = [objc_opt_self() sharedScheduler];
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v4[10];
    v9[3] = v4[11];
    v9[4] = v8;
    v11[4] = sub_1A3CBAA24;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A3C2E0D0;
    v11[3] = &block_descriptor_101;
    v10 = _Block_copy(v11);

    [v7 dispatchGraduallyOnMainThreadWhenNotAnimating_];
    _Block_release(v10);
  }
}

unint64_t PXSharingFilterFromLibraryFilterViewMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHPhotosSharingFilter PXSharingFilterFromLibraryFilterViewMode(PXLibraryFilterViewMode)"];
    [v6 handleFailureInFunction:v7 file:@"PXLibraryFilterCommon.m" lineNumber:54 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return (0x100000002uLL >> (16 * a1)) & 3;
}

void sub_1A3C75480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3C7552C()
{
  result = qword_1EB1817B0[0];
  if (!qword_1EB1817B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1817B0);
  }

  return result;
}

unint64_t sub_1A3C75584()
{
  result = qword_1EB181760[0];
  if (!qword_1EB181760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB181760);
  }

  return result;
}

unint64_t sub_1A3C755DC()
{
  result = qword_1EB181790;
  if (!qword_1EB181790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB181790);
  }

  return result;
}

unint64_t sub_1A3C75634()
{
  result = qword_1EB181788;
  if (!qword_1EB181788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB181788);
  }

  return result;
}

unint64_t sub_1A3C7568C()
{
  result = qword_1EB1817A0;
  if (!qword_1EB1817A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1817A0);
  }

  return result;
}

unint64_t sub_1A3C756E4()
{
  result = qword_1EB181778;
  if (!qword_1EB181778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB181778);
  }

  return result;
}

uint64_t sub_1A3C757E0()
{
  v1 = *v0;
  v2 = sub_1A3C61980();
  (*(*v0 + 304))(&aBlock, v2);
  v15 = aBlock;
  v16 = v8;
  v13 = 1;
  v14 = 3;
  v6 = *(v1 + 80);
  result = static LemonadeShelvesLoader.LoadingTarget.== infix(_:_:)(&v15, &v13);
  if (result)
  {
    if (sub_1A3C6147C())
    {
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v6;
      *(v5 + 32) = v4;
      v11 = sub_1A410F17C;
      v12 = v5;
      aBlock = MEMORY[0x1E69E9820];
      v8 = 1107296256;
      v9 = sub_1A3C2E0D0;
      v10 = &block_descriptor_63_0;
      _Block_copy(&aBlock);

      px_perform_on_main_runloop();
    }

    return sub_1A3C613C0();
  }

  return result;
}

uint64_t sub_1A3C759B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C75A44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3C75A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3C75B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void *sub_1A3C75D98@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1A3C75DDC(uint64_t result)
{
  if (*(result + 48))
  {
    type metadata accessor for LemonadeBookmarkItemListManager();

    sub_1A3C75E40();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3C760EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1A3C76124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C76188();
    v7 = a3(a1, &type metadata for LemonadeBookmarkItem, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3C76188()
{
  result = qword_1EB12A358;
  if (!qword_1EB12A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A358);
  }

  return result;
}

unint64_t sub_1A3C761E0()
{
  result = qword_1EB12A380;
  if (!qword_1EB12A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A380);
  }

  return result;
}

unint64_t sub_1A3C76238()
{
  result = qword_1EB12A378;
  if (!qword_1EB12A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A378);
  }

  return result;
}

unint64_t sub_1A3C76294()
{
  result = qword_1EB12A350;
  if (!qword_1EB12A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A350);
  }

  return result;
}

void sub_1A3C76938()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C76A38(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A3C76B30(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1A3C76B30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C9FFCC(0, &qword_1EB126278, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1A3C76C64()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  sub_1A5245EC4();
}

uint64_t sub_1A3C76D30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C76124(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3C76E64@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 424))();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C76EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C77080(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A3C770B0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore24LemonadeBookmarksManager__observable);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A3C770E8(uint64_t a1, uint64_t a2)
{
  sub_1A524CC54();
  v7 = v2;
  v8 = a1;
  v9 = a2;
  return sub_1A3C771AC(sub_1A3C7736C, &v6);
}

uint64_t sub_1A3C771AC(uint64_t a1, uint64_t a2)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1A3C77454(&v10);
    if (v2)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }

      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v10;
      v7 = swift_isEscapingClosureAtFileLocation();

      if ((v7 & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }
    }

    __break(1u);
  }

  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v9 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v9);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3C7736C()
{
  sub_1A3C76124(0, &qword_1EB128DA0, off_1E7721068);
  sub_1A3C76D30(&qword_1EB128DB0, &qword_1EB128DA0, off_1E7721068);

  sub_1A5245C54();
}

double sub_1A3C77454@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1A3C77498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C77098(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3C776E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_1A3C777B8(uint64_t a1)
{
  v2 = *(*(*(*v1 + 80) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v10[2] = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v10[3] = v10 - v5;
  result = sub_1A3C61AB0();
  if (result)
  {
    sub_1A3C61B58(0);
    v10[9] = sub_1A524CAB4();
    sub_1A3C52C70(0, &qword_1EB126A10);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = [v7 enableShelvesLoader];

    v9 = sub_1A3C612E8();
    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10[8] = v9;
    sub_1A524CB74();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A3C77C5C()
{
  sub_1A3C77D68();
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3C77D68()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  return v0[11];
}

uint64_t sub_1A3C77E40(char a1)
{
  v3 = a1 & 1;
  v4 = *v1;
  v25 = *(*v1 + 88);
  v5 = *(v4 + 80);
  v23 = *(v25 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = v18 - v7;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  result = sub_1A3C782E8();
  if ((result & 1) == v3)
  {
    return result;
  }

  v15 = sub_1A410BEDC(v3);
  if ((a1 & 1) == 0)
  {
    return sub_1A3C785A8();
  }

  v16 = (*(*v1 + 256))(v15);
  if (!sub_1A524CAF4())
  {

    return sub_1A3C785A8();
  }

  v19 = (v24 + 32);
  v20 = (v24 + 16);
  v18[4] = v13;
  v18[5] = v6 + 8;
  v18[1] = v25 + 72;
  v18[2] = v24 + 8;
  v18[3] = v16;
  v17 = sub_1A524CAD4();
  sub_1A524CA64();
  if (v17)
  {
    (*(v24 + 16))(v13, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v5);
    goto LABEL_6;
  }

  result = sub_1A524E474();
  if (v18[0] == 8)
  {
    v26 = result;
    (*v20)(v13, &v26, v5);
    swift_unknownObjectRelease();
LABEL_6:
    (*v19)(v10, v13, v5);
    sub_1A524E424();
    sub_1A3C6436C();
    type metadata accessor for LemonadeShelvesLoader.ShelfState();
    swift_getAssociatedConformanceWitness();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3C782E8()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 840))(KeyPath);

  return v0[74];
}

uint64_t sub_1A3C783A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 1120))();
  sub_1A3C784D4(a1, a2);
}

uint64_t sub_1A3C7845C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  *(v2 + 128) = v1;
  *(v2 + 136) = v3;
  sub_1A3C66EE8(v1);
  return sub_1A3C784D4(v4, v5);
}