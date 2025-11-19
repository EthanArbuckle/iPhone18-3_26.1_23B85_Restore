uint64_t Volume.init(mountURL:name:isUserVolume:capacity:used:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Volume();
  *(a7 + v14[9]) = 0;
  v15 = sub_26BC1310C();
  v23 = *(v15 - 8);
  (*(v23 + 16))(a7, a1, v15);
  v16 = (a7 + v14[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + v14[7]) = a5;
  *(a7 + v14[8]) = a6;
  *(a7 + v14[6]) = a4;
  if (__OFSUB__(a5, a6))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (((a5 - a6) & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  if (qword_280441A98 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v17 = sub_26BC1317C();
  __swift_project_value_buffer(v17, qword_2804431E8);
  v18 = sub_26BC1315C();
  v19 = sub_26BC1390C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = a6;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    _os_log_impl(&dword_26BBFE000, v18, v19, "availableSpace is negative - used: %lld - capacity: %lld", v20, 0x16u);
    MEMORY[0x26D691130](v20, -1, -1);
  }

LABEL_7:
  v21 = *(v23 + 8);

  return v21(a1, v15);
}

uint64_t Volume.mountURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1310C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Volume.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Volume() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Volume.capacity.setter(uint64_t a1)
{
  result = type metadata accessor for Volume();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Volume.otherVolumesInContainer.setter(uint64_t a1)
{
  result = type metadata accessor for Volume();
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *Volume.available.getter()
{
  result = type metadata accessor for Volume();
  v2 = *(v0 + result[7]);
  v3 = *(v0 + result[8]);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *(v0 + result[9]);
  result = (v5 - v6);
  if (__OFSUB__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Volume.description.getter()
{
  sub_26BC1397C();
  MEMORY[0x26D690880](0xD000000000000013, 0x800000026BC159E0);
  sub_26BC1310C();
  sub_26BC11098();
  v1 = sub_26BC13A3C();
  MEMORY[0x26D690880](v1);

  MEMORY[0x26D690880](0x203A656D616E202CLL, 0xE800000000000000);
  v2 = type metadata accessor for Volume();
  MEMORY[0x26D690880](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x26D690880](0x696361706163202CLL, 0xEC000000203A7974);
  v9 = *(v0 + v2[7]);
  v3 = sub_26BC13A3C();
  MEMORY[0x26D690880](v3);

  MEMORY[0x26D690880](0x203A64657375202CLL, 0xE800000000000000);
  v10 = *(v0 + v2[8]);
  v4 = sub_26BC13A3C();
  MEMORY[0x26D690880](v4);

  MEMORY[0x26D690880](0xD000000000000010, 0x800000026BC15A00);
  if (*(v0 + v2[6]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D690880](v5, v6);

  MEMORY[0x26D690880](0xD00000000000001BLL, 0x800000026BC15A20);
  v11 = *(v0 + v2[9]);
  v7 = sub_26BC13A3C();
  MEMORY[0x26D690880](v7);

  return 0;
}

uint64_t sub_26BC105D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BC130FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for Volume()
{
  result = qword_280441EE8;
  if (!qword_280441EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BC10654(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BC10720(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_26BC0F18C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26BC10720(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26BC1082C(a5, a6);
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
    result = sub_26BC1399C();
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

uint64_t sub_26BC1082C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BC10878(a1, a2);
  sub_26BC109A8(&unk_287C9B6D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BC10878(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BC10A94(v5, 0);
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

  result = sub_26BC1399C();
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
        v10 = sub_26BC1383C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BC10A94(v10, 0);
        result = sub_26BC1396C();
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

uint64_t sub_26BC109A8(uint64_t result)
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

  result = sub_26BC10B08(result, v12, 1, v3);
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

void *sub_26BC10A94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EF8, &qword_26BC15280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26BC10B08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EF8, &qword_26BC15280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

BOOL _s9StorageUI6VolumeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_26BC130EC() & 1) != 0 && ((v4 = type metadata accessor for Volume(), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_26BC13A4C()) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC10CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F00, &qword_26BC15288);
    v3 = sub_26BC1395C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_26BC1380C();
      sub_26BC13A7C();
      v29 = v7;
      sub_26BC1381C();
      v9 = sub_26BC13AAC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_26BC1380C();
        v20 = v19;
        if (v18 == sub_26BC1380C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_26BC13A4C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26BC10EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC10F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BC10F8C()
{
  result = qword_280441ED0;
  if (!qword_280441ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441ED0);
  }

  return result;
}

unint64_t sub_26BC10FE0()
{
  result = qword_280441ED8;
  if (!qword_280441ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441ED8);
  }

  return result;
}

uint64_t sub_26BC11034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Volume();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BC11098()
{
  result = qword_280441EE0;
  if (!qword_280441EE0)
  {
    sub_26BC1310C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441EE0);
  }

  return result;
}

uint64_t sub_26BC11104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BC1310C();
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

uint64_t sub_26BC111D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26BC1310C();
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

uint64_t sub_26BC11294()
{
  result = sub_26BC1310C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TimeStats.initTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1313C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimeStats.initTime.setter(uint64_t a1)
{
  v3 = sub_26BC1313C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TimeStats.startMonitoring.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 20);

  return sub_26BC114A4(v3, a1);
}

uint64_t type metadata accessor for TimeStats()
{
  result = qword_280441F10;
  if (!qword_280441F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BC114A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimeStats.startMonitoring.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 20);

  return sub_26BC11558(a1, v3);
}

uint64_t sub_26BC11558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TimeStats.firstGathering.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 24);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.firstGathering.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 24);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.firstDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 28);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.firstDisplay.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 28);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.recommendations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 32);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.recommendations.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats() + 32);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.init(initTime:startMonitoring:firstGathering:firstDisplay:recommendations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for TimeStats();
  v10 = v9[5];
  v11 = sub_26BC137CC();
  v12 = *(*(v11 - 8) + 56);
  v12(a6 + v10, 1, 1, v11);
  v13 = v9[6];
  v12(a6 + v13, 1, 1, v11);
  v14 = v9[7];
  v12(a6 + v14, 1, 1, v11);
  v15 = v9[8];
  v12(a6 + v15, 1, 1, v11);
  v16 = sub_26BC1313C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_26BC11558(a2, a6 + v10);
  sub_26BC11558(a3, a6 + v13);
  sub_26BC11558(a4, a6 + v14);

  return sub_26BC11558(a5, a6 + v15);
}

unint64_t TimeStats.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v78 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v66 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v72 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = sub_26BC137CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v67 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v66 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v68 = &v66 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v71 = &v66 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v69 = &v66 - v30;
  MEMORY[0x28223BE20](v29);
  v79 = &v66 - v31;
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_26BC1397C();

  v83 = 0xD000000000000023;
  v84 = 0x800000026BC15A40;
  v32 = sub_26BC1311C();
  MEMORY[0x26D690880](v32);

  MEMORY[0x26D690880](2592, 0xE200000000000000);
  v33 = type metadata accessor for TimeStats();
  v34 = v33[5];
  sub_26BC114A4(v1 + v34, v16);
  v35 = *(v18 + 48);
  v36 = v35(v16, 1, v17);
  v80 = v18 + 48;
  v75 = v33;
  v76 = v24;
  v74 = v34;
  if (v36 == 1)
  {
    sub_26BC1227C(v16);
  }

  else
  {
    v66 = v12;
    v37 = *(v18 + 32);
    v37(v79, v16, v17);
    v38 = v1 + v33[6];
    v39 = v72;
    sub_26BC114A4(v38, v72);
    if (v35(v39, 1, v17) == 1)
    {
      (*(v18 + 8))(v79, v17);
      sub_26BC1227C(v39);
    }

    else
    {
      v40 = v18;
      v41 = v69;
      v37(v69, v39, v17);
      v42 = sub_26BC137BC();
      result = sub_26BC137BC();
      if (v42 < result)
      {
        __break(1u);
        goto LABEL_23;
      }

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_26BC1397C();
      MEMORY[0x26D690880](0xD00000000000001ELL, 0x800000026BC15AB0);
      sub_26BC138BC();
      MEMORY[0x26D690880](663667, 0xE300000000000000);
      MEMORY[0x26D690880](v81, v82);

      v18 = v40;
      v44 = *(v40 + 8);
      v44(v41, v17);
      v44(v79, v17);
    }

    v33 = v75;
    v24 = v76;
    v12 = v66;
    v34 = v74;
  }

  sub_26BC114A4(v1 + v34, v12);
  v45 = v1;
  v46 = v35(v12, 1, v17);
  v73 = v1;
  if (v46 != 1)
  {
    v48 = *(v18 + 32);
    v49 = v71;
    v48(v71, v12, v17);
    v50 = v70;
    sub_26BC114A4(v45 + v33[7], v70);
    if (v35(v50, 1, v17) == 1)
    {
      (*(v18 + 8))(v49, v17);
      sub_26BC1227C(v50);
LABEL_14:
      v47 = v78;
      v33 = v75;
      v24 = v76;
      v34 = v74;
      goto LABEL_15;
    }

    v51 = v50;
    v52 = v68;
    v48(v68, v51, v17);
    v53 = v52;
    v54 = sub_26BC137BC();
    result = sub_26BC137BC();
    if (v54 >= result)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_26BC1397C();
      MEMORY[0x26D690880](0xD00000000000001FLL, 0x800000026BC15A90);
      sub_26BC138BC();
      MEMORY[0x26D690880](663667, 0xE300000000000000);
      MEMORY[0x26D690880](v81, v82);

      v55 = *(v18 + 8);
      v55(v53, v17);
      v55(v49, v17);
      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_26BC1227C(v12);
  v47 = v78;
LABEL_15:
  v56 = v73;
  v57 = v73 + v34;
  v58 = v77;
  sub_26BC114A4(v57, v77);
  if (v35(v58, 1, v17) == 1)
  {
    sub_26BC1227C(v58);
    return v83;
  }

  v59 = v18;
  v60 = v56;
  v61 = v59;
  v62 = *(v59 + 32);
  v62(v24, v58, v17);
  sub_26BC114A4(v60 + v33[8], v47);
  if (v35(v47, 1, v17) == 1)
  {
    (*(v61 + 8))(v24, v17);
    sub_26BC1227C(v47);
    return v83;
  }

  v63 = v67;
  v62(v67, v47, v17);
  v64 = sub_26BC137BC();
  result = sub_26BC137BC();
  if (v64 >= result)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_26BC1397C();
    MEMORY[0x26D690880](0xD00000000000001ELL, 0x800000026BC15A70);
    sub_26BC138BC();
    MEMORY[0x26D690880](663667, 0xE300000000000000);
    MEMORY[0x26D690880](v81, v82);

    v65 = *(v61 + 8);
    v65(v63, v17);
    v65(v24, v17);
    return v83;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26BC1227C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC122F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BC1313C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BC12408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26BC1313C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26BC12510()
{
  sub_26BC1313C();
  if (v0 <= 0x3F)
  {
    sub_26BC12598();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BC12598()
{
  if (!qword_280441F20)
  {
    sub_26BC137CC();
    v0 = sub_26BC1393C();
    if (!v1)
    {
      atomic_store(v0, &qword_280441F20);
    }
  }
}

void *sub_26BC12604()
{
  result = sub_26BC12764(&unk_287C9B3F8);
  off_280441F28 = result;
  return result;
}

uint64_t DeviceClass.hashValue.getter(unsigned __int8 a1)
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](a1);
  return sub_26BC13AAC();
}

unint64_t sub_26BC126B0(unsigned int a1)
{
  v3 = MEMORY[0x26D690AC0](*(v1 + 40), a1, 4);

  return sub_26BC126F8(a1, v3);
}

unint64_t sub_26BC126F8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BC12764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F38, &qword_26BC15338);
    v3 = sub_26BC13A0C();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26BC126B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s9StorageUI11DeviceClassO7currentACvgZ_0()
{
  if (qword_280441AB0 != -1)
  {
    swift_once();
  }

  v0 = sub_26BC137DC();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = off_280441F28;
  if (*(off_280441F28 + 2) && (v3 = sub_26BC126B0(v1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + v3);
  }

  else
  {
    v5 = 5;
  }

  swift_endAccess();
  return v5;
}

unint64_t sub_26BC1291C()
{
  result = qword_280441F30;
  if (!qword_280441F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441F30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280443190 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280443184 > a2)
  {
    return 1;
  }

  if (dword_280443184 < a2)
  {
    return 0;
  }

  return dword_280443188 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_280443198 == -1)
  {
    if (qword_2804431A0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_2804431A0)
    {
      goto LABEL_3;
    }
  }

  if (qword_280443190 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_280443184 > a3)
      {
        goto LABEL_11;
      }

      if (dword_280443184 >= a3)
      {
        result = dword_280443188 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_2804431A0;
  if (qword_2804431A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2804431A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D690C90](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_280443184, &dword_280443188);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}