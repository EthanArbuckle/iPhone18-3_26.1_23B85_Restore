__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DEF631E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DEF63228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF63288(uint64_t a1)
{
  result = sub_1DEE1DC98();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DEF632B0()
{
  sub_1DEE12F7C((v0 + 2), v10);
  v1 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v2 = v9;
  }

  else
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_1DEF633CC()
{
  sub_1DEE12F7C((v0 + 2), v8);
  v1 = MEMORY[0x1E69E6448];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DEF634E4(uint64_t a1)
{
  sub_1DEE12F7C((v1 + 2), v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v6 = a1;
  v8 = *v1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF635F8(uint64_t a1)
{
  sub_1DEE12F7C((v1 + 2), v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v6 = a1;
  v8 = *v1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF6370C(uint64_t a1)
{
  sub_1DEE12F7C((v1 + 2), v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v6 = a1;
  v8 = *v1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF63820()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DEF63868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DEF638B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEF638F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DEF63938(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DEF63994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DEF639DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF63A34()
{
  result = qword_1ED786098;
  if (!qword_1ED786098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786098);
  }

  return result;
}

unint64_t sub_1DEF63A8C()
{
  result = qword_1ED7860A0;
  if (!qword_1ED7860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860A0);
  }

  return result;
}

void ReplicationSchedule.retry.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 8))
  {
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    v4 = __OFADD__(v2++, 1);
    if (!v4)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = __OFADD__(v2++, 1);
  if (!v4)
  {
LABEL_7:
    *a1 = v2;
    *(a1 + 8) = v3;
    return;
  }

  __break(1u);
}

uint64_t static ReplicationSchedule.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (*(a1 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t ReplicationSchedule.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 0x74616964656D6D69;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_1DEF8DF28();

    v2 = 0x6E7574726F70706FLL;
LABEL_5:
    v5 = v2;
    v3 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v3);

    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    return v5;
  }

  return 0x646579616C6564;
}

BOOL static ReplicationSchedule.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

unint64_t sub_1DEF63CE8()
{
  result = qword_1ECDE5270;
  if (!qword_1ECDE5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5270);
  }

  return result;
}

uint64_t sub_1DEF63D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (*(a1 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1DEF63D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 < v4;
  }

  v6 = v5;
  v7 = v2 < v4;
  if (v3 != 1)
  {
    v7 = 0;
  }

  if (!*(a1 + 8))
  {
    v7 = 1;
  }

  v8 = v3 < 2;
  if (*(a2 + 8) != 1)
  {
    v7 = v8;
  }

  if (!*(a2 + 8))
  {
    v7 = v6;
  }

  return !v7;
}

BOOL sub_1DEF63DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (!*(a1 + 8))
  {
    v7 = v6;
  }

  return !v7;
}

uint64_t sub_1DEF63E40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 < v4;
  }

  v6 = v5;
  v7 = v2 < v4;
  if (v3 != 1)
  {
    v7 = 0;
  }

  if (!*(a1 + 8))
  {
    v7 = 1;
  }

  v8 = v3 < 2;
  if (*(a2 + 8) != 1)
  {
    v7 = v8;
  }

  if (*(a2 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1DEF63E98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationSchedule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicationSchedule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DEF63F80(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DEF63F98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DEF63FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrioritizedRecordValue.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrioritizedRecordValue();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PrioritizedRecordValue()
{
  result = qword_1ECDE5278;
  if (!qword_1ECDE5278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrioritizedRecordValue.init(value:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1DEF64114(a1, a3);
  result = type metadata accessor for PrioritizedRecordValue();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1DEF64114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF641A0()
{
  result = type metadata accessor for Record.Value(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine22RecordValidationResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DEF6422C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEF64280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1DEF6438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v69 = a2;
  v67 = sub_1DEF8D3F8();
  v82 = *(v67 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D698();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DEF8D6D8();
  v72 = *(v74 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PairingRelationship();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = v3[6];
  v22 = v3[7];
  v68 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = sub_1DEEA3AD8(v23);

  v25 = *(a1 + 16);
  v65 = v13;
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v83 = *(v13 + 72);
    v77 = v28;
    v80 = a1 + v28;
    v29 = v24 + 56;
    v79 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DEEE42FC(v80 + v83 * v27, v20);
      if (!*(v24 + 16))
      {
        goto LABEL_3;
      }

      v30 = &v20[*(v12 + 20)];
      v32 = *v30;
      v31 = *(v30 + 1);
      v33 = *(v24 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      v34 = sub_1DEF8E7F8();
      v35 = -1 << *(v24 + 32);
      v36 = v34 & ~v35;
      if ((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (1)
        {
          v38 = (*(v24 + 48) + 16 * v36);
          v39 = *v38 == v32 && v38[1] == v31;
          if (v39 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1DEF0A360(v20, v78);
        v40 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7DA4(0, *(v40 + 16) + 1, 1);
          v40 = v85;
        }

        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1DEEC7DA4(v42 > 1, v43 + 1, 1);
          v40 = v85;
        }

        *(v40 + 16) = v43 + 1;
        v79 = v40;
        sub_1DEF0A360(v78, v40 + v77 + v43 * v83);
      }

      else
      {
LABEL_3:
        sub_1DEEE4360(v20);
      }

      ++v27;
    }

    while (v27 != v26);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
  }

  v44 = v79;
  v45 = *(v79 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v45, 0);
    v47 = aBlock[0];
    v48 = v44 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v49 = *(v65 + 72);
    v50 = (v82 + 16);
    v51 = v67;
    v52 = v66;
    do
    {
      v53 = v81;
      sub_1DEEE42FC(v48, v81);
      (*v50)(v52, v53, v51);
      sub_1DEEE4360(v53);
      aBlock[0] = v47;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1DEEC7D60(v54 > 1, v55 + 1, 1);
        v47 = aBlock[0];
      }

      *(v47 + 16) = v55 + 1;
      (*(v82 + 32))(v47 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v55, v52, v51);
      v48 += v49;
      --v45;
    }

    while (v45);
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v56 = v68[2];
  v57 = swift_allocObject();
  v58 = v69;
  v57[2] = v47;
  v57[3] = v58;
  v59 = v79;
  v57[4] = v70;
  v57[5] = v59;
  aBlock[4] = sub_1DEF65118;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_21;
  v60 = _Block_copy(aBlock);

  v61 = v71;
  sub_1DEF8D6B8();
  v85 = v46;
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v62 = v73;
  v63 = v76;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v61, v62, v60);
  _Block_release(v60);
  (*(v75 + 8))(v62, v63);
  (*(v72 + 8))(v61, v74);
}

uint64_t sub_1DEF64B0C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v7 = sub_1DEF8D508();
  __swift_project_value_buffer(v7, qword_1ECDF5FF8);

  v8 = sub_1DEF8D4D8();
  v9 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = sub_1DEF8D3F8();
    v13 = MEMORY[0x1E12CB290](a1, v12);
    v15 = sub_1DEE12A5C(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DEE0F000, v8, v9, "Fetched known relationships from sync service: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    MEMORY[0x1E12CCD70](v10, -1, -1);
  }

  return a2(a4, 0);
}

uint64_t sub_1DEF64C9C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF64D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v6 + 32))(&v17 - v12, v11);
  type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v14 = swift_allocObject();
  (*(v6 + 16))(v9, v13, a3);
  v15 = sub_1DEF64E6C(v9, v14, a3, a4);
  (*(v6 + 8))(v13, a3);
  return v15;
}

uint64_t sub_1DEF64E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v20 = sub_1DEF8DD08();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8DCD8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1DEF8D6D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v24 = a3;
  v25 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v19[1] = sub_1DEE3C630();
  sub_1DEF8D6C8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8090], v20);
  v16 = sub_1DEF8DD38();
  v17 = v21;
  *(v21 + 16) = v16;
  sub_1DEE2F1AC(&v23, v17 + 24);
  return v17;
}

uint64_t sub_1DEF65124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
    v2 = sub_1DEF8E148();
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
    sub_1DEE12F7C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1DEE117C0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1DEE117C0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1DEE117C0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1DEF8DEA8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1DEE117C0(v33, (*(v2 + 56) + 32 * v10));
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

unint64_t sub_1DEF653EC(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CC8];
    goto LABEL_6;
  }

  if (!sub_1DEF8DE68())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5290, &unk_1DEF978E8);
  v3 = sub_1DEF8E148();
LABEL_6:
  if (type metadata accessor for Zone.ID() != MEMORY[0x1E69E6158])
  {
    if (v2)
    {
      v4 = sub_1DEF8E038();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v71 = v6;
    v17 = (v6 + 64) >> 6;
    v18 = v3 + 64;

    v20 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v30 = sub_1DEF8E0D8();
        if (!v30)
        {
          v43 = v8;
          goto LABEL_40;
        }

        v76 = v30;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v28 = v75;
        v29 = v76;
        v24 = v20;
        v26 = v7;
        if (!v75)
        {
LABEL_39:
          v43 = i;
LABEL_40:
          v44 = v5;
          v45 = v71;
          v46 = v20;
          v47 = v7;
          goto LABEL_66;
        }
      }

      else
      {
        v23 = v7;
        v24 = v20;
        if (!v7)
        {
          v25 = v20;
          while (1)
          {
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v24 >= v17)
            {
              v7 = 0;
              goto LABEL_39;
            }

            v23 = *(v5 + 8 * v24);
            ++v25;
            if (v23)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_25:
        v26 = (v23 - 1) & v23;
        v27 = (v24 << 9) | (8 * __clz(__rbit64(v23)));
        v28 = *(*(v8 + 48) + v27);
        v29 = *(*(v8 + 56) + v27);

        if (!v28)
        {
          goto LABEL_39;
        }
      }

      v7 = v26;
      v31 = *(v3 + 40);
      sub_1DEF8E7A8();
      v32 = v28[2];
      v33 = v28[3];
      sub_1DEF8D9B8();
      v34 = v28[4];
      v35 = v28[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v36 = -1 << *(v3 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v18 + 8 * (v37 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v37) & ~*(v18 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        do
        {
          if (++v38 == v40 && (v39 & 1) != 0)
          {
            __break(1u);
            goto LABEL_69;
          }

          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v18 + 8 * v38);
        }

        while (v42 == -1);
        v21 = __clz(__rbit64(~v42)) + (v38 << 6);
      }

      *(v18 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v3 + 48) + 8 * v21) = v28;
      v22 = (*(v3 + 56) + 16 * v21);
      *v22 = v29;
      v22[1] = &off_1F5A1AE70;
      ++*(v3 + 16);
      v20 = v24;
    }
  }

  if (v2)
  {
    v9 = sub_1DEF8E038();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v48 = -1 << *(a1 + 32);
    v11 = ~v48;
    v10 = a1 + 64;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v12 = v50 & *(a1 + 64);
    v13 = a1;
  }

  v51 = (v11 + 64) >> 6;
  v72 = v11;

  v52 = 0;
  v74 = v13;
  while ((v13 & 0x8000000000000000) == 0)
  {
    v58 = v12;
    v59 = v52;
    if (!v12)
    {
      v60 = v52;
      while (1)
      {
        v59 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_70;
        }

        if (v59 >= v51)
        {
          break;
        }

        v58 = *(v10 + 8 * v59);
        ++v60;
        if (v58)
        {
          v13 = v74;
          goto LABEL_55;
        }
      }

      v12 = 0;
LABEL_64:
      v43 = v74;
      goto LABEL_65;
    }

LABEL_55:
    v61 = (v58 - 1) & v58;
    v62 = (v59 << 9) | (8 * __clz(__rbit64(v58)));
    v63 = *(*(v13 + 48) + v62);
    v64 = *(*(v13 + 56) + v62);

    if (!v63)
    {
      goto LABEL_64;
    }

LABEL_59:
    result = sub_1DEEAF20C(v63);
    if (v66)
    {
      v53 = *(v3 + 48);
      v54 = *(v53 + 8 * result);
      *(v53 + 8 * result) = v63;
      v55 = result;

      v56 = (*(v3 + 56) + 16 * v55);
      v57 = *v56;
      *v56 = v64;
      v56[1] = &off_1F5A1AE70;
      result = swift_unknownObjectRelease();
    }

    else
    {
      if (*(v3 + 16) >= *(v3 + 24))
      {
        goto LABEL_71;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v63;
      v67 = (*(v3 + 56) + 16 * result);
      *v67 = v64;
      v67[1] = &off_1F5A1AE70;
      v68 = *(v3 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
LABEL_72:
        __break(1u);
        return result;
      }

      *(v3 + 16) = v70;
    }

    v52 = v59;
    v12 = v61;
    v13 = v74;
  }

  v65 = sub_1DEF8E0D8();
  if (v65)
  {
    v77 = v65;
    swift_dynamicCast();
    type metadata accessor for Replicator.WeakSource();
    swift_dynamicCast();
    v63 = v75;
    v64 = v77;
    v59 = v52;
    v61 = v12;
    if (!v75)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  v43 = v13;
LABEL_65:
  v44 = v10;
  v45 = v72;
  v46 = v52;
  v47 = v12;
LABEL_66:
  sub_1DEEACDB8(v43, v44, v45, v46, v47);

  return v3;
}

void sub_1DEF65994(uint64_t a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E69D50D0];
    v29 = sub_1DEF8D948();
    sub_1DEF8DEC8();
    if (*(a1 + 16) && (v3 = sub_1DEEAF640(v32), (v4 & 1) != 0))
    {
      sub_1DEE12F7C(*(a1 + 56) + 32 * v3, v33);
      sub_1DEEBC62C(v32);
      sub_1DEF66798();
      if (swift_dynamicCast())
      {
        v5 = v29;
        if ([v29 BOOLValue])
        {
          if (qword_1ECDE3808 != -1)
          {
            swift_once();
          }

          v6 = sub_1DEF8D508();
          __swift_project_value_buffer(v6, qword_1ECDF60E8);
          v7 = sub_1DEF8D4D8();
          v8 = sub_1DEF8DC78();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_36;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "Captured bug report successfully";
        }

        else
        {
          v17 = *MEMORY[0x1E69D50B0];
          v30 = sub_1DEF8D948();
          v31 = v18;
          sub_1DEF8DEC8();
          if (*(a1 + 16) && (v19 = sub_1DEEAF640(v32), (v20 & 1) != 0))
          {
            sub_1DEE12F7C(*(a1 + 56) + 32 * v19, v33);
            sub_1DEEBC62C(v32);
            if (swift_dynamicCast())
            {
              if (qword_1ECDE3808 != -1)
              {
                swift_once();
              }

              v21 = sub_1DEF8D508();
              __swift_project_value_buffer(v21, qword_1ECDF60E8);

              v7 = sub_1DEF8D4D8();
              v22 = sub_1DEF8DC78();

              if (!os_log_type_enabled(v7, v22))
              {

                goto LABEL_36;
              }

              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v32[0] = v24;
              *v23 = 136315138;
              v25 = sub_1DEE12A5C(v30, v31, v32);

              *(v23 + 4) = v25;
              _os_log_impl(&dword_1DEE0F000, v7, v22, "Failed to capture bug for reason: %s", v23, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v24);
              MEMORY[0x1E12CCD70](v24, -1, -1);
              v26 = v23;
LABEL_35:
              MEMORY[0x1E12CCD70](v26, -1, -1);
LABEL_36:

LABEL_37:
              return;
            }
          }

          else
          {
            sub_1DEEBC62C(v32);
          }

          if (qword_1ECDE3808 != -1)
          {
            swift_once();
          }

          v27 = sub_1DEF8D508();
          __swift_project_value_buffer(v27, qword_1ECDF60E8);
          v7 = sub_1DEF8D4D8();
          v8 = sub_1DEF8DC78();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_36;
          }

          v9 = swift_slowAlloc();
          *v9 = 0;
          v10 = "Failed to capture bug for unknown reason";
        }

        _os_log_impl(&dword_1DEE0F000, v7, v8, v10, v9, 2u);
        v26 = v9;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1DEEBC62C(v32);
    }

    if (qword_1ECDE3808 != -1)
    {
      swift_once();
    }

    v11 = sub_1DEF8D508();
    __swift_project_value_buffer(v11, qword_1ECDF60E8);
    v5 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DC98();
    if (os_log_type_enabled(v5, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v12, "Received malformed response", v13, 2u);
      MEMORY[0x1E12CCD70](v13, -1, -1);
    }

    goto LABEL_37;
  }

  if (qword_1ECDE3808 != -1)
  {
    swift_once();
  }

  v14 = sub_1DEF8D508();
  __swift_project_value_buffer(v14, qword_1ECDF60E8);
  oslog = sub_1DEF8D4D8();
  v15 = sub_1DEF8DC98();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DEE0F000, oslog, v15, "Failed to receive response", v16, 2u);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }
}

uint64_t sub_1DEF65EFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1DEF8D848();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1DEF65FB0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1DEF8D848();
  if (*(v2 + 16))
  {
    sub_1DEE13224(0xD000000000000010, 0x80000001DEF9E2E0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1DEF66074(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v65 = a6;
  v15 = sub_1DEF8D378();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1DEF65FB0() & 1) == 0)
  {
    v63 = a5;
    v61 = a7;
    v62 = a8;
    v20 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v66 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v21 = sub_1DEF8D918();
    v59 = a1;
    v58 = a2;
    v22 = sub_1DEF8D918();
    v57 = a3;
    v60 = a4;
    v23 = sub_1DEF8D918();
    v64 = v20;
    v24 = [v20 processName];
    if (!v24)
    {
      sub_1DEF8D948();
      v24 = sub_1DEF8D918();
    }

    v25 = [v66 signatureWithDomain:v21 type:v22 subType:v23 detectedProcess:v24 triggerThresholdValues:0];

    v26 = v65;
    if (v25)
    {
      v56 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF90FD0;
      v28 = *MEMORY[0x1E69D5090];
      *(inited + 32) = sub_1DEF8D948();
      *(inited + 40) = v29;
      sub_1DEF8D368();
      sub_1DEF8D328();
      v31 = v30;
      (*(v16 + 8))(v19, v15);
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      *(inited + 72) = sub_1DEF66798();
      *(inited + 48) = v32;
      v33 = *MEMORY[0x1E69D5060];
      *(inited + 80) = sub_1DEF8D948();
      *(inited + 88) = v34;
      v35 = MEMORY[0x1E69E6158];
      *(inited + 120) = MEMORY[0x1E69E6158];
      *(inited + 96) = v63;
      *(inited + 104) = v26;
      v36 = *MEMORY[0x1E69D5070];
      *(inited + 128) = sub_1DEF8D948();
      *(inited + 136) = v37;
      *(inited + 168) = v35;
      v38 = v61;
      v39 = v62;
      *(inited + 144) = v61;
      *(inited + 152) = v39;

      v55 = sub_1DEEA31A8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
      swift_arrayDestroy();
      if (qword_1ECDE3808 != -1)
      {
        swift_once();
      }

      v40 = sub_1DEF8D508();
      __swift_project_value_buffer(v40, qword_1ECDF60E8);

      v41 = v58;

      v42 = v60;

      v43 = sub_1DEF8D4D8();
      v44 = sub_1DEF8DCB8();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v59;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v47 = 136315906;
        *(v47 + 4) = sub_1DEE12A5C(v46, v41, aBlock);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_1DEE12A5C(v57, v42, aBlock);
        *(v47 + 22) = 2080;
        *(v47 + 24) = sub_1DEE12A5C(v63, v26, aBlock);
        *(v47 + 32) = 2080;
        *(v47 + 34) = sub_1DEE12A5C(v38, v39, aBlock);
        _os_log_impl(&dword_1DEE0F000, v43, v44, "Capturing bug report with type %s; subtype: %s; name: %s; value: %s", v47, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v48, -1, -1);
        MEMORY[0x1E12CCD70](v47, -1, -1);
      }

      aBlock[0] = 0;
      v50 = v56;
      sub_1DEF8D838();
      if (aBlock[0])
      {

        v51 = sub_1DEF8D828();

        sub_1DEF65124(v55);

        v52 = sub_1DEF8D828();

        aBlock[4] = sub_1DEF65994;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEF65EFC;
        aBlock[3] = &block_descriptor_22;
        v53 = _Block_copy(aBlock);
        [v66 snapshotWithSignature:v51 duration:v52 event:0 payload:v53 reply:120.0];

        _Block_release(v53);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v49 = v66;
    }
  }
}

unint64_t sub_1DEF66798()
{
  result = qword_1ECDE5288;
  if (!qword_1ECDE5288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE5288);
  }

  return result;
}

uint64_t PairingRelationshipProviding.pairingRelationship(relationshipID:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D388();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DEF32324(v9);
    v15 = type metadata accessor for PairingRelationship();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(a2 + 32))(v14, a1, a2);
    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_1DEF66A00()
{
  result = qword_1ECDE5298;
  if (!qword_1ECDE5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5298);
  }

  return result;
}

unint64_t sub_1DEF66A58()
{
  result = qword_1ECDE52A0;
  if (!qword_1ECDE52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52A0);
  }

  return result;
}

unint64_t sub_1DEF66AB0()
{
  result = qword_1ECDE52A8;
  if (!qword_1ECDE52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52A8);
  }

  return result;
}

unint64_t sub_1DEF66B08()
{
  result = qword_1ECDE52B0;
  if (!qword_1ECDE52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordMetadata.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RecordMetadata.Options(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of Replicating.metadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))();
}

{
  return (*(a3 + 112))();
}

uint64_t sub_1DEF66F44(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55F8, &qword_1DEF989A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EA6C();
  sub_1DEF8E858();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55E8, &qword_1DEF989A0);
  sub_1DEF6EBAC();
  sub_1DEF8E298();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DEF670A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55A0, &qword_1DEF98980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E874();
  sub_1DEF8E858();
  LOBYTE(v18) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v18 = *v12;
    v19 = v13;
    v17 = 1;
    sub_1DEE4F8C0(v18, v13);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v18, v19);
    v14 = v11[6];
    LOBYTE(v18) = 2;
    type metadata accessor for DeviceDescriptor();
    sub_1DEF6D188(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor);
    sub_1DEF8E298();
    v18 = *(v3 + v11[7]);
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEF67350(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55C8, &qword_1DEF98990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E970();
  sub_1DEF8E858();
  LOBYTE(v18) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v18 = *v12;
    v19 = v13;
    v17 = 1;
    sub_1DEE4F8C0(v18, v13);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v18, v19);
    v14 = v11[6];
    LOBYTE(v18) = 2;
    type metadata accessor for DeviceDescriptor();
    sub_1DEF6D188(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor);
    sub_1DEF8E298();
    v18 = *(v3 + v11[7]);
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
    v18 = *(v3 + v11[8]);
    v17 = 4;
    sub_1DEF6EA18();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEF67644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for DeviceDescriptor();
  v3 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D3F8();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55B0, &qword_1DEF98988);
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E970();
  v28 = v11;
  v17 = v30;
  sub_1DEF8E848();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v5;
  v18 = v25;
  LOBYTE(v31) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
  v19 = v26;
  sub_1DEF8E1F8();
  (*(v18 + 32))(v15, v19, v6);
  v32 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  *&v15[v12[5]] = v31;
  LOBYTE(v31) = 2;
  sub_1DEF6D188(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor);
  v20 = v30;
  v26 = 0;
  sub_1DEF8E1F8();
  v21 = v27;
  sub_1DEF6E54C(v20, &v15[v12[6]], type metadata accessor for DeviceDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
  v32 = 3;
  sub_1DEE2524C();
  sub_1DEF8E1F8();
  *&v15[v12[7]] = v31;
  v32 = 4;
  sub_1DEF6E9C4();
  sub_1DEF8E1F8();
  (*(v21 + 8))(v28, v29);
  *&v15[v12[8]] = v31;
  sub_1DEF6E6BC(v15, v23, type metadata accessor for ReplicatorMessage.Handshake.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v15, type metadata accessor for ReplicatorMessage.Handshake.Response);
}

uint64_t sub_1DEF67C04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5620, &qword_1DEF989C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EC98();
  sub_1DEF8E858();
  LOBYTE(v17) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_1DEE4F8C0(v17, v13);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v17, v18);
    v17 = *(v3 + v11[6]);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEF6ECEC(&qword_1ECDE5628);
    sub_1DEF8E298();
    v17 = *(v3 + v11[7]);
    v16 = 3;
    sub_1DEF6EA18();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEF67EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1DEF8D3F8();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5608, &unk_1DEF989B0);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EC98();
  v24 = v10;
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v20;
  LOBYTE(v25) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
  v17 = v21;
  sub_1DEF8E1F8();
  (*(v16 + 32))(v14, v17, v4);
  v26 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  *&v14[v11[5]] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  v26 = 2;
  sub_1DEF6ECEC(&qword_1ECDE5618);
  sub_1DEF8E1F8();
  *&v14[v11[6]] = v25;
  v26 = 3;
  sub_1DEF6E9C4();
  sub_1DEF8E1F8();
  (*(v22 + 8))(v24, v23);
  *&v14[v11[7]] = v25;
  sub_1DEF6E6BC(v14, v19, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v14, type metadata accessor for ReplicatorMessage.Handshake.Complete);
}

uint64_t sub_1DEF68360(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5550, &qword_1DEF98950);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v40 - v4;
  v48 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5558, &qword_1DEF98958);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v9;
  v43 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5560, &qword_1DEF98960);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v40 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5568, &qword_1DEF98968);
  v23 = *(v54 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v26 = &v40 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E724();
  sub_1DEF8E858();
  sub_1DEF6E6BC(v53, v22, type metadata accessor for ReplicatorMessage.Handshake);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v44;
      sub_1DEF6E54C(v22, v44, type metadata accessor for ReplicatorMessage.Handshake.Response);
      v56 = 1;
      sub_1DEF6E7CC();
      v31 = v45;
      v32 = v54;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE5578, type metadata accessor for ReplicatorMessage.Handshake.Response);
      v33 = v47;
      sub_1DEF8E298();
      (*(v46 + 8))(v31, v33);
      v34 = type metadata accessor for ReplicatorMessage.Handshake.Response;
    }

    else
    {
      v30 = v49;
      sub_1DEF6E54C(v22, v49, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      v57 = 2;
      sub_1DEF6E778();
      v38 = v50;
      v32 = v54;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE5570, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      v39 = v52;
      sub_1DEF8E298();
      (*(v51 + 8))(v38, v39);
      v34 = type metadata accessor for ReplicatorMessage.Handshake.Complete;
    }

    sub_1DEF6E5B4(v30, v34);
    return (*v29)(v26, v32);
  }

  else
  {
    sub_1DEF6E54C(v22, v18, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v55 = 0;
    sub_1DEF6E820();
    v35 = v54;
    sub_1DEF8E248();
    sub_1DEF6D188(&qword_1ECDE5580, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v36 = v42;
    sub_1DEF8E298();
    (*(v41 + 8))(v15, v36);
    sub_1DEF6E5B4(v18, type metadata accessor for ReplicatorMessage.Handshake.Request);
    return (*v29)(v26, v35);
  }
}

uint64_t sub_1DEF68A34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54E8, &qword_1DEF98928);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54F0, &qword_1DEF98930);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54F8, &qword_1DEF98938);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5500, &qword_1DEF98940);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1DEF6E724();
  v33 = v78;
  sub_1DEF8E848();
  if (!v33)
  {
    v62 = v24;
    v63 = v27;
    v64 = v21;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_1DEF8E228();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_1DEE4F780();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_1DEF8DF68();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v47 = v65;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_1DEF6E7CC();
          v42 = v78;
          sub_1DEF8E178();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for ReplicatorMessage.Handshake.Response(0);
          sub_1DEF6D188(&qword_1ECDE5528, type metadata accessor for ReplicatorMessage.Handshake.Response);
          v58 = v62;
          v59 = v68;
          sub_1DEF8E1F8();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_1DEF6E778();
          v53 = v37;
          v54 = v78;
          sub_1DEF8E178();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
          sub_1DEF6D188(&qword_1ECDE5518, type metadata accessor for ReplicatorMessage.Handshake.Complete);
          v56 = v64;
          v57 = v70;
          sub_1DEF8E1F8();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_1DEF6E54C(v51, v78, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEF6E54C(v60, v43, type metadata accessor for ReplicatorMessage.Handshake);
        return __swift_destroy_boxed_opaque_existential_1(v79);
      }

      v84 = 0;
      sub_1DEF6E820();
      v50 = v78;
      sub_1DEF8E178();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for ReplicatorMessage.Handshake.Request(0);
        sub_1DEF6D188(&qword_1ECDE5538, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v51 = v63;
        v52 = v67;
        sub_1DEF8E1F8();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1DEF692CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v23 = a3;
  v24 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5640, &qword_1DEF989D0);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5648, &qword_1DEF989D8);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5650, &unk_1DEF989E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E1C8();
  v19 = v28;
  sub_1DEF8E858();
  if (v19)
  {
    LOBYTE(v30) = 0;
    sub_1DEF6E270();
    sub_1DEF8E248();
    v30 = v19;
    v32 = 0;
    type metadata accessor for RecordMetadata();
    sub_1DEF6D188(&qword_1ECDE43F0, type metadata accessor for RecordMetadata);
    v20 = v29;
    sub_1DEF8E298();
    if (!v20)
    {
      v30 = v23;
      v31 = v24;
      v32 = 1;
      sub_1DEEBBEC0();
      sub_1DEF8E298();
    }

    (*(v27 + 8))(v12, v9);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    LOBYTE(v30) = 1;
    sub_1DEF6E21C();
    sub_1DEF8E248();
    (*(v25 + 8))(v8, v26);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1DEF69674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655664726F636572 && a2 == 0xEE00736E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEF69704(uint64_t a1)
{
  v2 = sub_1DEF6EA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69740(uint64_t a1)
{
  v2 = sub_1DEF6EA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DEF6977C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DEF6BEA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DEF697C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF6FD8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF697EC(uint64_t a1)
{
  v2 = sub_1DEF6E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69828(uint64_t a1)
{
  v2 = sub_1DEF6E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DEF69894()
{
  v1 = *v0;
  v2 = 0x496E6F6973736573;
  v3 = 0x656369766564;
  v4 = 0x73726556656E6F7ALL;
  if (v1 != 3)
  {
    v4 = 0x614D64726F636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1DEF69948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF70084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF69970(uint64_t a1)
{
  v2 = sub_1DEF6E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF699AC(uint64_t a1)
{
  v2 = sub_1DEF6E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DEF69A18()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x686374616D73696DLL;
  if (*v0 != 2)
  {
    v2 = 0x614D64726F636572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1DEF69AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF6FF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF69ADC(uint64_t a1)
{
  v2 = sub_1DEF6EC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69B18(uint64_t a1)
{
  v2 = sub_1DEF6EC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69B84()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1DEF69BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF6FC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF69C08(uint64_t a1)
{
  v2 = sub_1DEF6E724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69C44(uint64_t a1)
{
  v2 = sub_1DEF6E724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69C80(uint64_t a1)
{
  v2 = sub_1DEF6E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69CBC(uint64_t a1)
{
  v2 = sub_1DEF6E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69CF8(uint64_t a1)
{
  v2 = sub_1DEF6E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69D34(uint64_t a1)
{
  v2 = sub_1DEF6E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69D70(uint64_t a1)
{
  v2 = sub_1DEF6E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69DAC(uint64_t a1)
{
  v2 = sub_1DEF6E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69E18()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DEF69E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DEF69F18(uint64_t a1)
{
  v2 = sub_1DEF6E1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69F54(uint64_t a1)
{
  v2 = sub_1DEF6E1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69F90()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1DEF69FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DEF6A078(uint64_t a1)
{
  v2 = sub_1DEF6E270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6A0B4(uint64_t a1)
{
  v2 = sub_1DEF6E270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6A0F0(uint64_t a1)
{
  v2 = sub_1DEF6E21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6A12C(uint64_t a1)
{
  v2 = sub_1DEF6E21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6A168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DEF6C024(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DEF6A1B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5630, &qword_1DEF989C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E614();
  sub_1DEF8E858();
  LOBYTE(v21) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ReplicatorMessage.Sync(0) + 20));
    v12 = v11[1];
    v13 = v11[2];
    v14 = *(v11 + 40);
    v21 = *v11;
    v22 = v12;
    v23 = v13;
    v19 = *(v11 + 3);
    v24 = v19;
    v25 = v14;
    v20 = 1;

    sub_1DEEAB070(v12, v13, v19);
    sub_1DEF6ED58();
    sub_1DEF8E298();
    v15 = v22;
    v16 = v23;
    v17 = v24;

    sub_1DEEAB0B8(v15, v16, v17);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEF6A3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1DEF8D3F8();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54D0, &qword_1DEF98920);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ReplicatorMessage.Sync(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E614();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  LOBYTE(v31) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
  v19 = v30;
  v20 = v28;
  sub_1DEF8E1F8();
  (*(v18 + 32))(v17, v6, v19);
  v35 = 1;
  sub_1DEF6E668();
  sub_1DEF8E1F8();
  (*(v29 + 8))(v11, v20);
  v21 = v34;
  v22 = v26;
  v23 = v17 + *(v25 + 20);
  *v23 = v31;
  *(v23 + 8) = v32;
  *(v23 + 24) = v33;
  *(v23 + 40) = v21;
  sub_1DEF6E6BC(v17, v22, type metadata accessor for ReplicatorMessage.Sync);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v17, type metadata accessor for ReplicatorMessage.Sync);
}

uint64_t sub_1DEF6A778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52F8, &qword_1DEF97C00);
  v68 = *(v63 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v72 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5300, &qword_1DEF97C08);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5308, &qword_1DEF97C10);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5310, &unk_1DEF97C18);
  v74 = *(v70 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v58 - v12;
  v14 = type metadata accessor for ReplicatorMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DEF6D018();
  v29 = v75;
  sub_1DEF8E848();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v59 = v17;
  v60 = v20;
  v61 = v23;
  v30 = v69;
  v31 = v70;
  v32 = v71;
  v33 = v72;
  v75 = 0;
  v62 = v26;
  v34 = v14;
  v35 = v73;
  v36 = sub_1DEF8E228();
  v37 = (2 * *(v36 + 16)) | 1;
  v77 = v36;
  v78 = v36 + 32;
  v79 = 0;
  v80 = v37;
  v38 = sub_1DEE4F780();
  if (v38 == 3 || v79 != v80 >> 1)
  {
    v43 = sub_1DEF8DF68();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v45 = v34;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v38)
  {
    v81 = 0;
    sub_1DEF6D1D0();
    v48 = v75;
    sub_1DEF8E178();
    if (v48)
    {
      goto LABEL_9;
    }

    v72 = v14;
    type metadata accessor for ReplicatorMessage.Handshake(0);
    sub_1DEF6D188(&qword_1ECDE5348, type metadata accessor for ReplicatorMessage.Handshake);
    v49 = v61;
    v50 = v65;
    sub_1DEF8E1F8();
    (*(v64 + 8))(v30, v50);
    (*(v74 + 8))(v13, v31);
    swift_unknownObjectRelease();
    v75 = 0;
    v51 = v49;
    swift_storeEnumTagMultiPayload();
    v40 = v35;
LABEL_15:
    v56 = v51;
    goto LABEL_16;
  }

  if (v38 != 1)
  {
    v81 = 2;
    sub_1DEF6D06C();
    v52 = v33;
    v53 = v75;
    sub_1DEF8E178();
    if (v53)
    {
      goto LABEL_9;
    }

    v40 = v35;
    sub_1DEF6D0C0();
    v54 = v63;
    sub_1DEF8E1F8();
    v55 = v74;
    v75 = 0;
    (*(v68 + 8))(v52, v54);
    (*(v55 + 8))(v13, v31);
    swift_unknownObjectRelease();
    v51 = v59;
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v81 = 1;
  sub_1DEF6D114();
  v39 = v75;
  sub_1DEF8E178();
  if (v39)
  {
LABEL_9:
    (*(v74 + 8))(v13, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v40 = v35;
  type metadata accessor for ReplicatorMessage.Sync(0);
  sub_1DEF6D188(&qword_1ECDE5338, type metadata accessor for ReplicatorMessage.Sync);
  v41 = v60;
  v42 = v67;
  sub_1DEF8E1F8();
  v75 = 0;
  (*(v66 + 8))(v32, v42);
  (*(v74 + 8))(v13, v31);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v56 = v41;
LABEL_16:
  v57 = v62;
  sub_1DEF6E54C(v56, v62, type metadata accessor for ReplicatorMessage);
  sub_1DEF6E54C(v57, v40, type metadata accessor for ReplicatorMessage);
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1DEF6AF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5490, &qword_1DEF988F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CE74();
  sub_1DEF8E858();
  v19 = a2;
  v22 = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID);
  sub_1DEF8E298();
  if (!v5)
  {
    v19 = a3;
    v20 = v17;
    v21 = v18;
    v22 = 1;
    sub_1DEEAB070(a3, v17, v18);
    sub_1DEF6E4F8();
    sub_1DEF8E298();
    sub_1DEEAB0B8(v19, v20, v21);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DEF6B18C()
{
  if (*v0)
  {
    result = 0x64726F636572;
  }

  else
  {
    result = 0x496E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_1DEF6B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DEF6B2A8(uint64_t a1)
{
  v2 = sub_1DEF6E614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B2E4(uint64_t a1)
{
  v2 = sub_1DEF6E614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B350(uint64_t a1)
{
  v2 = sub_1DEE29774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B38C(uint64_t a1)
{
  v2 = sub_1DEE29774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B3C8(uint64_t a1)
{
  v2 = sub_1DEF6D06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B404(uint64_t a1)
{
  v2 = sub_1DEF6D06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B440()
{
  v1 = 1668184435;
  if (*v0 != 1)
  {
    v1 = 7037793;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B616873646E6168;
  }
}

uint64_t sub_1DEF6B490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF6E2C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF6B4B8(uint64_t a1)
{
  v2 = sub_1DEF6D018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B4F4(uint64_t a1)
{
  v2 = sub_1DEF6D018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B530(uint64_t a1)
{
  v2 = sub_1DEF6D1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B56C(uint64_t a1)
{
  v2 = sub_1DEF6D1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B5A8(uint64_t a1)
{
  v2 = sub_1DEF6D114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B5E4(uint64_t a1)
{
  v2 = sub_1DEF6D114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B650()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DEF6B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DEF6B74C(uint64_t a1)
{
  v2 = sub_1DEF6CE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B788(uint64_t a1)
{
  v2 = sub_1DEF6CE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B7C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DEF6C614(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DEF6B814(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5478, &qword_1DEF988F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CF1C();
  sub_1DEF8E858();
  *&v15 = *v3;
  v14[0] = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    v17 = *(v3 + 8);
    v18 = *(v3 + 24);
    v15 = *(v3 + 8);
    v16 = *(v3 + 24);
    v14[31] = 1;
    sub_1DEF6CE0C(&v17, v14);
    sub_1DEF6E4F8();
    sub_1DEF8E298();
    sub_1DEEAB0B8(v15, *(&v15 + 1), v16);
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    LOBYTE(v15) = 2;
    sub_1DEF8E268();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEF6BA3C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DEF6BA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF6E3E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF6BABC(uint64_t a1)
{
  v2 = sub_1DEF6CF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6BAF8(uint64_t a1)
{
  v2 = sub_1DEF6CF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6BB60(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_1DEF6B814(a1);
}

uint64_t sub_1DEF6BB9C(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1DEE171B4(v22, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v22, v24);
  v3 = v25;
  v4 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_5:
    v7 = *v1;
    v8 = *(v2 + 40);
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v29 = sub_1DEF6CF70();
    v10 = swift_allocObject();
    v27[0] = v10;
    *(v10 + 16) = v7;
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    *(v10 + 40) = v20;
    *(v10 + 24) = v19;
    *(v10 + 56) = v8;

    sub_1DEEAB070(v19, *(&v19 + 1), v20);
    goto LABEL_10;
  }

  v12 = *v1;
  v11 = v1[1];
  v13 = v2[2];
  v14 = v2[3];
  if (v5 > 7)
  {
    v21 = v2[4];
    v16 = *(v2 + 40);
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v29 = sub_1DEF6CF70();
    v17 = swift_allocObject();
    v27[0] = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v11;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    *(v17 + 48) = v21;
    *(v17 + 56) = v16;
  }

  else
  {
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V0;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V0;
    v29 = sub_1DEF6CFC4();
    v15 = swift_allocObject();
    v27[0] = v15;
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v14;
  }

  sub_1DEEAB070(v11, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v27, v9);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

double sub_1DEF6BE40@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(&v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

void *sub_1DEF6BEA0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55D8, &qword_1DEF98998);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EA6C();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6EAC0();
    sub_1DEF8E1F8();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1DEF6C024(uint64_t *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5448, &qword_1DEF988D8);
  v29 = *(v31 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5450, &qword_1DEF988E0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5458, &qword_1DEF988E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DEF6E1C8();
  v16 = v32;
  sub_1DEF8E848();
  if (!v16)
  {
    v17 = v31;
    v32 = v10;
    v18 = sub_1DEF8E228();
    v19 = (2 * *(v18 + 16)) | 1;
    v36 = v18;
    v37 = v18 + 32;
    v38 = 0;
    v39 = v19;
    v20 = sub_1DEE25E0C();
    if (v20 == 2 || v38 != v39 >> 1)
    {
      v22 = sub_1DEF8DF68();
      swift_allocError();
      v24 = v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v24 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Value;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v32 + 8))(v13, v9);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      LOBYTE(v35) = 1;
      sub_1DEF6E21C();
      sub_1DEF8E178();
      v21 = v32;
      (*(v29 + 8))(v4, v17);
      (*(v21 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v5 = 0;
    }

    else
    {
      LOBYTE(v35) = 0;
      sub_1DEF6E270();
      sub_1DEF8E178();
      v27 = v32;
      v31 = v13;
      type metadata accessor for RecordMetadata();
      LOBYTE(v35) = 0;
      sub_1DEF6D188(&qword_1ECDE4408, type metadata accessor for RecordMetadata);
      v28 = v5;
      sub_1DEF8E1F8();
      v5 = v40;
      v34 = 1;
      sub_1DEE1E77C();
      sub_1DEF8E1F8();
      (*(v30 + 8))(v8, v28);
      (*(v27 + 8))(v31, v9);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v5;
}

uint64_t sub_1DEF6C614(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52B8, &qword_1DEF97BE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DEF6CE74();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for Record.ID(0);
    v14 = 0;
    sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID);
    sub_1DEF8E1F8();
    v8 = v13[0];
    v14 = 1;
    sub_1DEF6CEC8();
    sub_1DEF8E1F8();
    (*(v4 + 8))(v7, v3);
    v10 = v13[0];
    v11 = v13[1];
    v12 = v13[2];

    sub_1DEEAB070(v10, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DEEAB0B8(v10, v11, v12);
  }

  return v8;
}

uint64_t sub_1DEF6C870@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52D8, &unk_1DEF97BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CF1C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for Record.ID(0);
  v27 = 0;
  sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID);
  sub_1DEF8E1F8();
  v23 = a2;
  v11 = v24;
  v27 = 1;
  sub_1DEF6CEC8();
  sub_1DEF8E1F8();
  v12 = v25;
  v21 = v26;
  v22 = v24;
  LOBYTE(v24) = 2;
  v13 = sub_1DEF8E1C8();
  v15 = v14;
  (*(v6 + 8))(v9, v5);

  v17 = v21;
  v16 = v22;
  v18 = v12;
  sub_1DEEAB070(v22, v12, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);

  result = sub_1DEEAB0B8(v16, v12, v17);
  v20 = v23;
  *v23 = v11;
  v20[1] = v16;
  v20[2] = v18;
  v20[3] = v17;
  v20[4] = v13;
  *(v20 + 40) = v15 & 1;
  return result;
}

uint64_t sub_1DEF6CB6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DEE29594(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1DEE171B4(v20, &qword_1ECDE43D8, &qword_1DEF92080);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v20, v23);
  v5 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = (*(v6 + 16))(v5, v6);
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_5:
    sub_1DEE29594(a1, v23);
    sub_1DEF6C870(v23, &v31);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return result;
    }

    v38 = v32;
    v10 = v31;
    v39 = v33;

    sub_1DEF6CE0C(&v38, v23);
    result = sub_1DEF6CE44(&v31);
    v12 = *(&v38 + 1);
    v11 = v38;
    v13 = v39;
    v14 = v34;
    v15 = v35;
    goto LABEL_15;
  }

  if (v7 > 7)
  {
    sub_1DEE29594(a1, v22);
    sub_1DEF6C870(v22, &v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v36 = v27;
    v10 = v26;
    v37 = v28;

    sub_1DEF6CE0C(&v36, v22);
    sub_1DEF6CE44(&v26);
    v12 = *(&v36 + 1);
    v11 = v36;
    v13 = v37;
    v14 = v29;
    v15 = v30;
  }

  else
  {
    sub_1DEE29594(a1, v22);
    v16 = sub_1DEF6C614(v22);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DEEAB070(v11, v12, v13);

    sub_1DEEAB0B8(v11, v12, v13);
    v15 = 0;
    v14 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_15:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15 & 1;
  return result;
}

unint64_t sub_1DEF6CE74()
{
  result = qword_1ECDE52C0;
  if (!qword_1ECDE52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52C0);
  }

  return result;
}

unint64_t sub_1DEF6CEC8()
{
  result = qword_1ECDE52D0;
  if (!qword_1ECDE52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52D0);
  }

  return result;
}

unint64_t sub_1DEF6CF1C()
{
  result = qword_1ECDE52E0;
  if (!qword_1ECDE52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52E0);
  }

  return result;
}

unint64_t sub_1DEF6CF70()
{
  result = qword_1ECDE52E8;
  if (!qword_1ECDE52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52E8);
  }

  return result;
}

unint64_t sub_1DEF6CFC4()
{
  result = qword_1ECDE52F0;
  if (!qword_1ECDE52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52F0);
  }

  return result;
}

unint64_t sub_1DEF6D018()
{
  result = qword_1ECDE5318;
  if (!qword_1ECDE5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5318);
  }

  return result;
}

unint64_t sub_1DEF6D06C()
{
  result = qword_1ECDE5320;
  if (!qword_1ECDE5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5320);
  }

  return result;
}

unint64_t sub_1DEF6D0C0()
{
  result = qword_1ECDE5328;
  if (!qword_1ECDE5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5328);
  }

  return result;
}

unint64_t sub_1DEF6D114()
{
  result = qword_1ECDE5330;
  if (!qword_1ECDE5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5330);
  }

  return result;
}

uint64_t sub_1DEF6D188(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEF6D1D0()
{
  result = qword_1ECDE5340;
  if (!qword_1ECDE5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5340);
  }

  return result;
}

uint64_t sub_1DEF6D294()
{
  result = type metadata accessor for ReplicatorMessage.Handshake.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorMessage.Handshake.Response(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ReplicatorMessage.Handshake.Complete(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1DEF6D384()
{
  sub_1DEF8D3F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceDescriptor();
    if (v1 <= 0x3F)
    {
      sub_1DEEE0CF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DeviceDescriptor();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DeviceDescriptor();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1DEF6D664()
{
  sub_1DEF8D3F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DeviceDescriptor();
    if (v1 <= 0x3F)
    {
      sub_1DEEE0CF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEF6D748()
{
  sub_1DEF8D3F8();
  if (v0 <= 0x3F)
  {
    sub_1DEF6D7DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DEF6D7DC()
{
  if (!qword_1ECDE5390)
  {
    v0 = sub_1DEF8DB28();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE5390);
    }
  }
}

uint64_t sub_1DEF6D88C()
{
  result = type metadata accessor for ReplicatorMessage.Handshake(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorMessage.Sync(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEF6D928()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine0A7MessageO4SyncV0D6RecordV5ValueO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DEF6DA1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEF6DA6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1DEF6DAC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DEF6DAF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DEF6DB3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF6DB9C()
{
  result = qword_1ECDE53B8;
  if (!qword_1ECDE53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53B8);
  }

  return result;
}

unint64_t sub_1DEF6DBF4()
{
  result = qword_1ECDE53C0;
  if (!qword_1ECDE53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53C0);
  }

  return result;
}

unint64_t sub_1DEF6DC4C()
{
  result = qword_1ECDE53C8;
  if (!qword_1ECDE53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53C8);
  }

  return result;
}

unint64_t sub_1DEF6DCA4()
{
  result = qword_1ECDE53D0;
  if (!qword_1ECDE53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53D0);
  }

  return result;
}

unint64_t sub_1DEF6DCFC()
{
  result = qword_1ECDE53D8;
  if (!qword_1ECDE53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53D8);
  }

  return result;
}

unint64_t sub_1DEF6DD54()
{
  result = qword_1ECDE53E0;
  if (!qword_1ECDE53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53E0);
  }

  return result;
}

unint64_t sub_1DEF6DDAC()
{
  result = qword_1ECDE53E8;
  if (!qword_1ECDE53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53E8);
  }

  return result;
}

unint64_t sub_1DEF6DE04()
{
  result = qword_1ECDE53F0;
  if (!qword_1ECDE53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53F0);
  }

  return result;
}

unint64_t sub_1DEF6DE5C()
{
  result = qword_1ECDE53F8;
  if (!qword_1ECDE53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53F8);
  }

  return result;
}

unint64_t sub_1DEF6DEB4()
{
  result = qword_1ECDE5400;
  if (!qword_1ECDE5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5400);
  }

  return result;
}

unint64_t sub_1DEF6DF0C()
{
  result = qword_1ECDE5408;
  if (!qword_1ECDE5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5408);
  }

  return result;
}

unint64_t sub_1DEF6DF64()
{
  result = qword_1ECDE5410;
  if (!qword_1ECDE5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5410);
  }

  return result;
}

unint64_t sub_1DEF6DFBC()
{
  result = qword_1ECDE5418;
  if (!qword_1ECDE5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5418);
  }

  return result;
}

unint64_t sub_1DEF6E014()
{
  result = qword_1ECDE5420;
  if (!qword_1ECDE5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5420);
  }

  return result;
}

unint64_t sub_1DEF6E06C()
{
  result = qword_1ECDE5428;
  if (!qword_1ECDE5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5428);
  }

  return result;
}

unint64_t sub_1DEF6E0C4()
{
  result = qword_1ECDE5430;
  if (!qword_1ECDE5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5430);
  }

  return result;
}

unint64_t sub_1DEF6E11C()
{
  result = qword_1ECDE5438;
  if (!qword_1ECDE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5438);
  }

  return result;
}

unint64_t sub_1DEF6E174()
{
  result = qword_1ECDE5440;
  if (!qword_1ECDE5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5440);
  }

  return result;
}

unint64_t sub_1DEF6E1C8()
{
  result = qword_1ECDE5460;
  if (!qword_1ECDE5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5460);
  }

  return result;
}

unint64_t sub_1DEF6E21C()
{
  result = qword_1ECDE5468;
  if (!qword_1ECDE5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5468);
  }

  return result;
}

unint64_t sub_1DEF6E270()
{
  result = qword_1ECDE5470;
  if (!qword_1ECDE5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5470);
  }

  return result;
}

uint64_t sub_1DEF6E2C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7037793 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DEF6E3E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1DEF6E4F8()
{
  result = qword_1ECDE5488;
  if (!qword_1ECDE5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5488);
  }

  return result;
}

uint64_t sub_1DEF6E54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEF6E5B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DEF6E614()
{
  result = qword_1ECDE54D8;
  if (!qword_1ECDE54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54D8);
  }

  return result;
}

unint64_t sub_1DEF6E668()
{
  result = qword_1ECDE54E0;
  if (!qword_1ECDE54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54E0);
  }

  return result;
}

uint64_t sub_1DEF6E6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEF6E724()
{
  result = qword_1ECDE5508;
  if (!qword_1ECDE5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5508);
  }

  return result;
}

unint64_t sub_1DEF6E778()
{
  result = qword_1ECDE5510;
  if (!qword_1ECDE5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5510);
  }

  return result;
}

unint64_t sub_1DEF6E7CC()
{
  result = qword_1ECDE5520;
  if (!qword_1ECDE5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5520);
  }

  return result;
}

unint64_t sub_1DEF6E820()
{
  result = qword_1ECDE5530;
  if (!qword_1ECDE5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5530);
  }

  return result;
}

unint64_t sub_1DEF6E874()
{
  result = qword_1ECDE5590;
  if (!qword_1ECDE5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5590);
  }

  return result;
}

unint64_t sub_1DEF6E8C8()
{
  result = qword_1ECDE5598;
  if (!qword_1ECDE5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5598);
  }

  return result;
}

unint64_t sub_1DEF6E91C()
{
  result = qword_1ECDE55A8;
  if (!qword_1ECDE55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55A8);
  }

  return result;
}

unint64_t sub_1DEF6E970()
{
  result = qword_1ECDE55B8;
  if (!qword_1ECDE55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55B8);
  }

  return result;
}

unint64_t sub_1DEF6E9C4()
{
  result = qword_1ECDE55C0;
  if (!qword_1ECDE55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55C0);
  }

  return result;
}

unint64_t sub_1DEF6EA18()
{
  result = qword_1ECDE55D0;
  if (!qword_1ECDE55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55D0);
  }

  return result;
}

unint64_t sub_1DEF6EA6C()
{
  result = qword_1ECDE55E0;
  if (!qword_1ECDE55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55E0);
  }

  return result;
}

unint64_t sub_1DEF6EAC0()
{
  result = qword_1ECDE55F0;
  if (!qword_1ECDE55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID);
    sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55F0);
  }

  return result;
}

unint64_t sub_1DEF6EBAC()
{
  result = qword_1ECDE5600;
  if (!qword_1ECDE5600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID);
    sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5600);
  }

  return result;
}

unint64_t sub_1DEF6EC98()
{
  result = qword_1ECDE5610;
  if (!qword_1ECDE5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5610);
  }

  return result;
}

uint64_t sub_1DEF6ECEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3C90, &unk_1DEF91590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEF6ED58()
{
  result = qword_1ECDE5638;
  if (!qword_1ECDE5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5638);
  }

  return result;
}

uint64_t sub_1DEF6EDDC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DEF6EE6C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEF6EFC0()
{
  result = qword_1ECDE5658;
  if (!qword_1ECDE5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5658);
  }

  return result;
}

unint64_t sub_1DEF6F018()
{
  result = qword_1ECDE5660;
  if (!qword_1ECDE5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5660);
  }

  return result;
}

unint64_t sub_1DEF6F070()
{
  result = qword_1ECDE5668;
  if (!qword_1ECDE5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5668);
  }

  return result;
}

unint64_t sub_1DEF6F0C8()
{
  result = qword_1ECDE5670;
  if (!qword_1ECDE5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5670);
  }

  return result;
}

unint64_t sub_1DEF6F120()
{
  result = qword_1ECDE5678;
  if (!qword_1ECDE5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5678);
  }

  return result;
}

unint64_t sub_1DEF6F178()
{
  result = qword_1ECDE5680;
  if (!qword_1ECDE5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5680);
  }

  return result;
}

unint64_t sub_1DEF6F1D0()
{
  result = qword_1ECDE5688;
  if (!qword_1ECDE5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5688);
  }

  return result;
}

unint64_t sub_1DEF6F228()
{
  result = qword_1ECDE5690;
  if (!qword_1ECDE5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5690);
  }

  return result;
}

unint64_t sub_1DEF6F280()
{
  result = qword_1ECDE5698;
  if (!qword_1ECDE5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5698);
  }

  return result;
}

unint64_t sub_1DEF6F2D8()
{
  result = qword_1ECDE56A0;
  if (!qword_1ECDE56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56A0);
  }

  return result;
}

unint64_t sub_1DEF6F330()
{
  result = qword_1ECDE56A8;
  if (!qword_1ECDE56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56A8);
  }

  return result;
}

unint64_t sub_1DEF6F388()
{
  result = qword_1ECDE56B0;
  if (!qword_1ECDE56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56B0);
  }

  return result;
}

unint64_t sub_1DEF6F3E0()
{
  result = qword_1ECDE56B8;
  if (!qword_1ECDE56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56B8);
  }

  return result;
}

unint64_t sub_1DEF6F438()
{
  result = qword_1ECDE56C0;
  if (!qword_1ECDE56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56C0);
  }

  return result;
}

unint64_t sub_1DEF6F490()
{
  result = qword_1ECDE56C8;
  if (!qword_1ECDE56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56C8);
  }

  return result;
}

unint64_t sub_1DEF6F4E8()
{
  result = qword_1ECDE56D0;
  if (!qword_1ECDE56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56D0);
  }

  return result;
}

unint64_t sub_1DEF6F540()
{
  result = qword_1ECDE56D8;
  if (!qword_1ECDE56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56D8);
  }

  return result;
}

unint64_t sub_1DEF6F598()
{
  result = qword_1ECDE56E0;
  if (!qword_1ECDE56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56E0);
  }

  return result;
}

unint64_t sub_1DEF6F5F0()
{
  result = qword_1ECDE56E8;
  if (!qword_1ECDE56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56E8);
  }

  return result;
}

unint64_t sub_1DEF6F648()
{
  result = qword_1ECDE56F0;
  if (!qword_1ECDE56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56F0);
  }

  return result;
}

unint64_t sub_1DEF6F6A0()
{
  result = qword_1ECDE56F8;
  if (!qword_1ECDE56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56F8);
  }

  return result;
}

unint64_t sub_1DEF6F6F8()
{
  result = qword_1ECDE5700;
  if (!qword_1ECDE5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5700);
  }

  return result;
}

unint64_t sub_1DEF6F750()
{
  result = qword_1ECDE5708;
  if (!qword_1ECDE5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5708);
  }

  return result;
}

unint64_t sub_1DEF6F7A8()
{
  result = qword_1ECDE5710;
  if (!qword_1ECDE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5710);
  }

  return result;
}

unint64_t sub_1DEF6F800()
{
  result = qword_1ECDE5718;
  if (!qword_1ECDE5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5718);
  }

  return result;
}

unint64_t sub_1DEF6F858()
{
  result = qword_1ECDE5720;
  if (!qword_1ECDE5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5720);
  }

  return result;
}

unint64_t sub_1DEF6F8B0()
{
  result = qword_1ECDE5728;
  if (!qword_1ECDE5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5728);
  }

  return result;
}

unint64_t sub_1DEF6F908()
{
  result = qword_1ECDE5730;
  if (!qword_1ECDE5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5730);
  }

  return result;
}

unint64_t sub_1DEF6F960()
{
  result = qword_1ECDE5738;
  if (!qword_1ECDE5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5738);
  }

  return result;
}

unint64_t sub_1DEF6F9B8()
{
  result = qword_1ECDE5740;
  if (!qword_1ECDE5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5740);
  }

  return result;
}

unint64_t sub_1DEF6FA10()
{
  result = qword_1ECDE5748;
  if (!qword_1ECDE5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5748);
  }

  return result;
}

unint64_t sub_1DEF6FA68()
{
  result = qword_1ECDE5750;
  if (!qword_1ECDE5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5750);
  }

  return result;
}

unint64_t sub_1DEF6FAC0()
{
  result = qword_1ECDE5758;
  if (!qword_1ECDE5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5758);
  }

  return result;
}

unint64_t sub_1DEF6FB18()
{
  result = qword_1ECDE5760;
  if (!qword_1ECDE5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5760);
  }

  return result;
}

unint64_t sub_1DEF6FB70()
{
  result = qword_1ECDE5768;
  if (!qword_1ECDE5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5768);
  }

  return result;
}

unint64_t sub_1DEF6FBC8()
{
  result = qword_1ECDE5770;
  if (!qword_1ECDE5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5770);
  }

  return result;
}

unint64_t sub_1DEF6FC20()
{
  result = qword_1ECDE5778;
  if (!qword_1ECDE5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5778);
  }

  return result;
}

uint64_t sub_1DEF6FC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DEF6FD8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726556656E6F7ALL && a2 == 0xEC000000736E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6FF00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686374616D73696DLL && a2 == 0xEF73656E6F5A6465 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614D64726F636572 && a2 == 0xEE0074736566696ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF70084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726556656E6F7ALL && a2 == 0xEC000000736E6F69 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D64726F636572 && a2 == 0xEE0074736566696ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t Message.init(id:responseToID:messageType:senderDeviceID:protocolVersion:encodedBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for Message();
  v17 = v16[5];
  v18 = sub_1DEF8D3F8();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  (*(v19 + 32))(a9, a1, v18);
  result = sub_1DEE1E70C(a2, a9 + v17);
  v21 = (a9 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v16[7]);
  *v22 = a5;
  v22[1] = a6;
  *(a9 + v16[8]) = a7;
  v23 = (a9 + v16[9]);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_1DEF703AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x65447265646E6573;
  v6 = 0xEE00444965636976;
  v7 = 0x6C6F636F746F7270;
  v8 = 0xEF6E6F6973726556;
  if (a1 != 4)
  {
    v7 = 0x426465646F636E65;
    v8 = 0xEB0000000079646FLL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x65736E6F70736572;
  v10 = 0xEC00000044496F54;
  if (a1 != 1)
  {
    v9 = 0x546567617373656DLL;
    v10 = 0xEB00000000657079;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xEE00444965636976;
      if (v11 != 0x65447265646E6573)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 4)
    {
      v13 = 0xEF6E6F6973726556;
      if (v11 != 0x6C6F636F746F7270)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v14 = 0x426465646F636E65;
    v15 = 7955567;
  }

  else
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 1)
    {
      v13 = 0xEC00000044496F54;
      if (v11 != 0x65736E6F70736572)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v14 = 0x546567617373656DLL;
    v15 = 6647929;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v14)
  {
LABEL_33:
    v16 = sub_1DEF8E4E8();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v16 = 1;
LABEL_34:

  return v16 & 1;
}

uint64_t sub_1DEF705E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x74616E6974736564;
  v6 = 0xEB000000006E6F69;
  v7 = 0x6974617269707865;
  v8 = 0xEA00000000006E6FLL;
  if (a1 != 4)
  {
    v7 = 0x736E6F6974706FLL;
    v8 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6544746E65696C63;
  v10 = 0xEF444964656E6966;
  if (a1 != 1)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x74616E6974736564)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000006E6FLL;
      if (v11 != 0x6974617269707865)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x736E6F6974706FLL)
      {
LABEL_33:
        v14 = sub_1DEF8E4E8();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xEF444964656E6966;
      if (v11 != 0x6544746E65696C63)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E6F6973726576)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1DEF707EC()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70918()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70A28()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70B34()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70C70()
{
  *v0;
  *v0;
  *v0;
  sub_1DEF8D9B8();
}

uint64_t sub_1DEF70D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DEF71884();
  *a2 = result;
  return result;
}

void sub_1DEF70DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE00444965636976;
  v6 = 0x65447265646E6573;
  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 4)
  {
    v8 = 0x426465646F636E65;
    v7 = 0xEB0000000079646FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000044496F54;
  v10 = 0x65736E6F70736572;
  if (v2 != 1)
  {
    v10 = 0x546567617373656DLL;
    v9 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DEF70EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DEF71884();
  *a1 = result;
  return result;
}

uint64_t sub_1DEF70ED4(uint64_t a1)
{
  v2 = sub_1DEE1E328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF70F10(uint64_t a1)
{
  v2 = sub_1DEE1E328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Message.responseToID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Message() + 20);

  return sub_1DEE205E0(v3, a1);
}

uint64_t Message.responseToID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Message() + 20);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t Message.messageType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Message() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Message.senderDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Message() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Message.protocolVersion.setter(uint64_t a1)
{
  result = type metadata accessor for Message();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Message.encodedBody.getter()
{
  v1 = v0 + *(type metadata accessor for Message() + 36);
  v2 = *v1;
  sub_1DEE1BFF4(*v1, *(v1 + 8));
  return v2;
}

uint64_t Message.encodedBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Message() + 36);
  result = sub_1DEE1BFA0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5790, &qword_1DEF99710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE1E328();
  sub_1DEF8E858();
  LOBYTE(v24) = 0;
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE3640);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = type metadata accessor for Message();
    v12 = v11[5];
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v24) = 2;
    sub_1DEF8E278();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v24) = 3;
    sub_1DEF8E278();
    v19 = *(v3 + v11[8]);
    LOBYTE(v24) = 4;
    sub_1DEF8E2B8();
    v20 = (v3 + v11[9]);
    v21 = v20[1];
    v24 = *v20;
    v25 = v21;
    v23[15] = 5;
    sub_1DEE1BFF4(v24, v21);
    sub_1DEEBBEC0();
    sub_1DEF8E298();
    sub_1DEE1BFA0(v24, v25);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1DEF716C4()
{
  sub_1DEF8D3F8();
  if (v0 <= 0x3F)
  {
    sub_1DEEBC2D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DEF71780()
{
  result = qword_1ECDE5798;
  if (!qword_1ECDE5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5798);
  }

  return result;
}

unint64_t sub_1DEF717D8()
{
  result = qword_1ECDE57A0;
  if (!qword_1ECDE57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57A0);
  }

  return result;
}

unint64_t sub_1DEF71830()
{
  result = qword_1ECDE57A8;
  if (!qword_1ECDE57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57A8);
  }

  return result;
}

uint64_t sub_1DEF71884()
{
  v0 = sub_1DEF8E168();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DEF71954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v6 = sub_1DEF8E0B8();

    if (v6)
    {
      a4(0);
      swift_dynamicCast();
      return v11;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = a3();
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
    }
  }

  return 0;
}

uint64_t sub_1DEF71A1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_1DEF71A7C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1DEF71AB4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1DEF71B4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1DEF71BAC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DEF71BF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1DEF71CD0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1DEF71DE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_1DEF71E44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1DEF71EDC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DEECF850(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1DEF71F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v1 + v3, a1);
}

uint64_t sub_1DEF71FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MetadataInMemoryStore.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = MEMORY[0x1E69E7CD0];
  v5 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v6 = sub_1DEF8D378();
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v4;
  *(v3 + 48) = 1;
  return v3;
}

uint64_t MetadataInMemoryStore.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v3 = sub_1DEF8D378();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v1;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t MetadataInMemoryStore.__allocating_init(pairingRelationship:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  MetadataInMemoryStore.init(pairingRelationship:)(a1);
  return v5;
}

uint64_t MetadataInMemoryStore.init(pairingRelationship:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v13;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = MEMORY[0x1E69E7CD0];
  v14 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v15 = sub_1DEF8D378();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v13;
  (*(v9 + 16))(v12, a1, v8);
  sub_1DEE27FC0(a1, v7, type metadata accessor for PairingRelationship);
  v16 = type metadata accessor for PairingRelationship();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  swift_beginAccess();
  sub_1DEF32880(v7, v12);
  swift_endAccess();
  sub_1DEEE4360(a1);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t MetadataInMemoryStore.__allocating_init(pairingRelationships:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1DEF78A84(a1);

  return v5;
}

{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  MetadataInMemoryStore.init(pairingRelationships:)(a1);
  return v5;
}

uint64_t MetadataInMemoryStore.init(pairingRelationships:)(uint64_t a1)
{
  v1 = sub_1DEF78A84(a1);

  return v1;
}

{
  v3 = type metadata accessor for PairingRelationship();
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v68 - v7;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = MEMORY[0x1E69E7CC8];
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = v20;
  v82 = v1 + 3;
  v1[4] = 0;
  v1[5] = 0;
  v1[7] = MEMORY[0x1E69E7CD0];
  v21 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v22 = sub_1DEF8D378();
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = 0;
  v69 = v1;
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v20;
  v72 = a1;
  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;
  v78 = v9 + 16;
  v79 = v9;
  v81 = (v9 + 32);
  v74 = a1 + 64;
  v75 = (v9 + 8);
  v73 = v28;
  v76 = v19;
  while (v27)
  {
    v30 = v23;
LABEL_16:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v30 << 6);
    v36 = v72;
    v37 = v79;
    v38 = v70;
    (*(v79 + 16))(v70, *(v72 + 48) + *(v79 + 72) * v35, v8);
    v39 = v71;
    sub_1DEE27FC0(*(v36 + 56) + *(v80 + 72) * v35, v71, type metadata accessor for PairingRelationship);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v41 = *(v40 + 48);
    v42 = *(v37 + 32);
    v33 = v77;
    v42(v77, v38, v8);
    sub_1DEE13A90(v39, v33 + v41, type metadata accessor for PairingRelationship);
    (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
LABEL_17:
    v43 = v76;
    sub_1DEF78EC8(v33, v76);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {

      result = v69;
      *(v69 + 24) = 1;
      return result;
    }

    v45 = *(v44 + 48);
    v46 = v84;
    v47 = v8;
    (*v81)(v84, v43, v8);
    v48 = v82;
    swift_beginAccess();
    sub_1DEE13A90(v43 + v45, v83, type metadata accessor for PairingRelationship);
    v49 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *v48;
    v51 = v85;
    *v48 = 0x8000000000000000;
    v53 = sub_1DEEAF350(v46);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_32;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v60 = v85;
        if (v52)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DEEB7B04();
        v60 = v85;
        if (v57)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DEEB1C0C(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_1DEEAF350(v84);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_34;
      }

      v53 = v58;
      v60 = v85;
      if (v57)
      {
LABEL_4:
        sub_1DEF78F38(v83, v60[7] + *(v80 + 72) * v53);
        v8 = v47;
        (*v75)(v84, v47);
        goto LABEL_5;
      }
    }

    v60[(v53 >> 6) + 8] |= 1 << v53;
    v61 = v79;
    v62 = v84;
    v8 = v47;
    (*(v79 + 16))(v60[6] + *(v79 + 72) * v53, v84, v47);
    sub_1DEE13A90(v83, v60[7] + *(v80 + 72) * v53, type metadata accessor for PairingRelationship);
    (*(v61 + 8))(v62, v47);
    v63 = v60[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_33;
    }

    v60[2] = v65;
LABEL_5:
    v29 = *v82;
    *v82 = v60;

    swift_endAccess();
    v28 = v73;
    v24 = v74;
  }

  if (v28 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  v33 = v77;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v66 - 8) + 56))(v33, 1, 1, v66);
      v27 = 0;
      v23 = v32;
      goto LABEL_17;
    }

    v27 = *(v24 + 8 * v30);
    ++v23;
    if (v27)
    {
      v23 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF72C68(void *a1)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1DEEAF3E8(a1);
  if (v6)
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1DEF72D10()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = v2;
}

uint64_t sub_1DEF72D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  sub_1DEE27FC0(a1, v5, type metadata accessor for PairingRelationship);
  v12 = type metadata accessor for PairingRelationship();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  swift_beginAccess();
  sub_1DEF32880(v5, v10);
  return swift_endAccess();
}

uint64_t sub_1DEF72F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  v12 = type metadata accessor for PairingRelationship();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  swift_beginAccess();
  sub_1DEF32880(v5, v10);
  return swift_endAccess();
}

void sub_1DEF7309C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  if (a1 >> 62)
  {
LABEL_73:
    v13 = sub_1DEF8DE68();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v101 = v98 & 0xC000000000000001;
      v96 = v98 & 0xFFFFFFFFFFFFFF8;
      v95 = v98 + 32;
      v15 = (v5 + 6);
      v105 = (v5 + 1);
      v106 = (v5 + 4);
      v100 = v2;
      v99 = v13;
      v103 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
      while (1)
      {
        if (v101)
        {
          v5 = MEMORY[0x1E12CB6E0](v14, v98, v10);
          v16 = __OFADD__(v14++, 1);
          if (v16)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v14 >= *(v96 + 16))
          {
            goto LABEL_71;
          }

          v5 = *(v95 + 8 * v14);

          v16 = __OFADD__(v14++, 1);
          if (v16)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }
        }

        v17 = v5[2];
        swift_beginAccess();
        v18 = *(v2 + 16);
        v104 = v5;
        if ((v18 & 0xC000000000000001) != 0)
        {
          v102 = v17;

          v19 = sub_1DEF8DE68();
          v5 = (v19 + 1);
          if (__OFADD__(v19, 1))
          {
            goto LABEL_68;
          }

          if (v19 == -1)
          {
            v49 = v13;

            *(v2 + 16) = MEMORY[0x1E69E7CC8];
          }

          else
          {
            v97 = v14;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
            v20 = sub_1DEF8E138();
            v109 = v20;
            v2 = sub_1DEF8E038();
            v21 = sub_1DEF8E0D8();
            if (v21)
            {
              v23 = v22;
              v24 = v21;
              type metadata accessor for Record.ID(0);
              v25 = v24;
              do
              {
                v108[0] = v25;
                swift_dynamicCast();
                v108[0] = v23;
                type metadata accessor for RecordMetadata();
                swift_dynamicCast();
                v28 = *(v20 + 16);
                if (*(v20 + 24) <= v28)
                {
                  sub_1DEEB1864(v28 + 1, 1);
                }

                v29 = v108[10];
                v20 = v109;
                v30 = v108[9];
                v31 = *(v109 + 40);
                sub_1DEF8E7A8();
                v32 = v29[2];
                v33 = v29[3];
                sub_1DEF8D9B8();
                v34 = v29[4];
                v35 = v34[2];
                v36 = v34[3];
                sub_1DEF8D9B8();
                v37 = v34[4];
                v38 = v34[5];

                sub_1DEF8D9B8();

                sub_1DEE27FC0(v29 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
                if ((*v15)(v12, 1, v4) == 1)
                {
                  MEMORY[0x1E12CBF60](0);
                }

                else
                {
                  v39 = v107;
                  (*v106)(v107, v12, v4);
                  MEMORY[0x1E12CBF60](1);
                  sub_1DEE1E37C(&qword_1ECDE3638);
                  sub_1DEF8D8C8();
                  (*v105)(v39, v4);
                }

                v5 = v108;
                v40 = sub_1DEF8E7F8();
                v41 = v20 + 64;
                v42 = -1 << *(v20 + 32);
                v43 = v40 & ~v42;
                v44 = v43 >> 6;
                if (((-1 << v43) & ~*(v20 + 64 + 8 * (v43 >> 6))) != 0)
                {
                  v26 = __clz(__rbit64((-1 << v43) & ~*(v20 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v45 = 0;
                  v46 = (63 - v42) >> 6;
                  do
                  {
                    if (++v44 == v46 && (v45 & 1) != 0)
                    {
                      __break(1u);
                      goto LABEL_66;
                    }

                    v47 = v44 == v46;
                    if (v44 == v46)
                    {
                      v44 = 0;
                    }

                    v45 |= v47;
                    v48 = *(v41 + 8 * v44);
                  }

                  while (v48 == -1);
                  v26 = __clz(__rbit64(~v48)) + (v44 << 6);
                }

                *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
                *(*(v20 + 48) + 8 * v26) = v29;
                *(*(v20 + 56) + 8 * v26) = v30;
                ++*(v20 + 16);
                v25 = sub_1DEF8E0D8();
                v23 = v27;
              }

              while (v25);
            }

            v2 = v100;
            *(v100 + 16) = v20;
            v49 = v99;
            v14 = v97;
          }

          v17 = v102;
        }

        else
        {
          v49 = v13;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108[0] = *(v2 + 16);
        v5 = v108[0];
        *(v2 + 16) = 0x8000000000000000;
        v51 = v17;
        v52 = sub_1DEEAF3E8(v17);
        v54 = v5[2];
        v55 = (v53 & 1) == 0;
        v16 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v16)
        {
          goto LABEL_67;
        }

        v57 = v53;
        if (v5[3] < v56)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v62 = v52;
        sub_1DEEB7AC8();
        v52 = v62;
        v5 = v108[0];
        if (v57)
        {
LABEL_43:
          v59 = v5[7];
          v60 = *(v59 + 8 * v52);
          v61 = v104;
          *(v59 + 8 * v52) = v104;

          goto LABEL_47;
        }

LABEL_45:
        v5[(v52 >> 6) + 8] |= 1 << v52;
        *(v5[6] + 8 * v52) = v51;
        *(v5[7] + 8 * v52) = v104;
        v63 = v5[2];
        v16 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v16)
        {
          goto LABEL_69;
        }

        v5[2] = v64;

        v61 = v104;
LABEL_47:
        *(v2 + 16) = v5;
        swift_endAccess();
        v66 = v61[2];
        v65 = v61[3];
        v13 = v49;
        if (!v65)
        {
          v69 = v103;
          swift_beginAccess();
LABEL_55:
          v5 = *(v2 + v69);

          v83 = sub_1DEEAF3E8(v82);
          if (v84)
          {
            v85 = v83;
            v86 = *(v2 + v69);
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v5 = *(v2 + v69);
            v110 = v5;
            if ((v87 & 1) == 0)
            {
              sub_1DEEB7958();
              v5 = v110;
            }

            v88 = *(v5[6] + 8 * v85);

            v89 = *(v5[7] + 16 * v85 + 8);

            sub_1DEF75AC8(v85, v5);

            *(v2 + v69) = v5;
          }

          else
          {
          }

          goto LABEL_5;
        }

        v67 = *(v65 + 16);
        v68 = *(v65 + 24);

        v69 = v103;
        swift_beginAccess();
        if (!v68)
        {
          goto LABEL_55;
        }

        v102 = v67;
        v70 = v69;
        v71 = v14;

        v72 = *(v2 + v70);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v5 = *(v2 + v70);
        v110 = v5;
        v75 = sub_1DEEAF3E8(v66);
        v76 = v5[2];
        v77 = (v74 & 1) == 0;
        v78 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          goto LABEL_70;
        }

        v2 = v74;
        if (v5[3] >= v78)
        {
          if (v73)
          {
            v81 = v110;
            if ((v74 & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v5 = &v110;
            sub_1DEEB7958();
            v81 = v110;
            if ((v2 & 1) == 0)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          sub_1DEEB13A0(v78, v73);
          v5 = v110;
          v79 = sub_1DEEAF3E8(v66);
          if ((v2 & 1) != (v80 & 1))
          {
LABEL_75:
            type metadata accessor for Record.ID(0);
            sub_1DEF8E6E8();
            __break(1u);
            return;
          }

          v75 = v79;
          v81 = v110;
          if ((v2 & 1) == 0)
          {
LABEL_63:
            v81[(v75 >> 6) + 8] |= 1 << v75;
            *(v81[6] + 8 * v75) = v66;
            v91 = (v81[7] + 16 * v75);
            *v91 = v102;
            v91[1] = v68;
            v92 = v81[2];
            v16 = __OFADD__(v92, 1);
            v93 = v92 + 1;
            if (v16)
            {
              goto LABEL_72;
            }

            v81[2] = v93;
            goto LABEL_65;
          }
        }

        v90 = (v81[7] + 16 * v75);
        v5 = v90[1];
        *v90 = v102;
        v90[1] = v68;

LABEL_65:
        v2 = v100;
        *(v100 + v103) = v81;
        v13 = v99;
        v14 = v71;
LABEL_5:
        swift_endAccess();

        if (v14 == v13)
        {
          return;
        }
      }

      sub_1DEEB1864(v56, isUniquelyReferenced_nonNull_native);
      v52 = sub_1DEEAF3E8(v51);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_75;
      }

LABEL_42:
      v5 = v108[0];
      if (v57)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }
  }
}

void sub_1DEF7397C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  if (a1 >> 62)
  {
LABEL_47:
    v13 = sub_1DEF8DE68();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 >= 1)
  {
    v14 = 0;
    v15 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
    v77 = v73 & 0xC000000000000001;
    v71 = v73 + 32;
    v16 = (v5 + 48);
    v78 = (v5 + 8);
    v79 = (v5 + 32);
    v72 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
    v70 = v2;
    v69 = v13;
    while (1)
    {
      if (v77)
      {
        v17 = MEMORY[0x1E12CB6E0](v14, v73, v10);
      }

      else
      {
        v17 = *(v71 + 8 * v14);
      }

      swift_beginAccess();
      v18 = *(v2 + 2);
      if ((v18 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (v18 < 0)
      {
        v19 = *(v2 + 2);
      }

      if (!sub_1DEF8E0B8())
      {
        goto LABEL_37;
      }

      v75 = v14;
      v76 = v17;
      swift_unknownObjectRelease();

      v20 = sub_1DEF8DE68();
      v74 = v18;
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
        v21 = sub_1DEF8E138();
        v84 = v21;
        sub_1DEF8E038();
        v22 = sub_1DEF8E0D8();
        if (v22)
        {
          v24 = v22;
          v25 = v23;
          v5 = type metadata accessor for Record.ID(0);
          do
          {
            v81 = v24;
            swift_dynamicCast();
            v81 = v25;
            type metadata accessor for RecordMetadata();
            swift_dynamicCast();
            v28 = *(v21 + 16);
            if (*(v21 + 24) <= v28)
            {
              sub_1DEEB1864(v28 + 1, 1);
            }

            v29 = v83;
            v21 = v84;
            v30 = v82;
            v31 = *(v84 + 40);
            sub_1DEF8E7A8();
            v32 = v29[2];
            v33 = v29[3];
            sub_1DEF8D9B8();
            v34 = v29[4];
            v35 = v34[2];
            v36 = v34[3];
            sub_1DEF8D9B8();
            v37 = v34[4];
            v2 = v34[5];

            sub_1DEF8D9B8();

            sub_1DEE27FC0(v29 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
            if ((*v16)(v12, 1, v4) == 1)
            {
              MEMORY[0x1E12CBF60](0);
            }

            else
            {
              v2 = v80;
              (*v79)(v80, v12, v4);
              MEMORY[0x1E12CBF60](1);
              sub_1DEE1E37C(&qword_1ECDE3638);
              sub_1DEF8D8C8();
              (*v78)(v2, v4);
            }

            v38 = sub_1DEF8E7F8();
            v39 = v21 + 64;
            v40 = -1 << *(v21 + 32);
            v41 = v38 & ~v40;
            v42 = v41 >> 6;
            if (((-1 << v41) & ~*(v21 + 64 + 8 * (v41 >> 6))) != 0)
            {
              v26 = __clz(__rbit64((-1 << v41) & ~*(v21 + 64 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v43 = 0;
              v44 = (63 - v40) >> 6;
              do
              {
                if (++v42 == v44 && (v43 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_46;
                }

                v45 = v42 == v44;
                if (v42 == v44)
                {
                  v42 = 0;
                }

                v43 |= v45;
                v46 = *(v39 + 8 * v42);
              }

              while (v46 == -1);
              v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            }

            *(v39 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
            *(*(v21 + 48) + 8 * v26) = v29;
            *(*(v21 + 56) + 8 * v26) = v30;
            ++*(v21 + 16);
            v24 = sub_1DEF8E0D8();
            v25 = v27;
          }

          while (v24);
        }

        v2 = v70;
        v13 = v69;
        v15 = v72;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC8];
      }

      v17 = v76;
      v5 = sub_1DEEAF3E8(v76);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v58 = *(*(v21 + 48) + 8 * v5);

      v59 = *(*(v21 + 56) + 8 * v5);
      sub_1DEF75E70(v5, v21);

      *(v2 + 2) = v21;

      v14 = v75;
LABEL_42:
      swift_endAccess();
      swift_beginAccess();
      v60 = *&v2[v15];
      v61 = sub_1DEEAF3E8(v17);
      if (v62)
      {
        v63 = v61;
        v64 = *&v2[v15];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *&v2[v15];
        v85 = v66;
        *&v2[v15] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB7958();
          v66 = v85;
        }

        v67 = *(*(v66 + 48) + 8 * v63);

        v68 = *(*(v66 + 56) + 16 * v63 + 8);

        sub_1DEF75AC8(v63, v66);

        *&v2[v15] = v66;
      }

      else
      {
      }

      ++v14;
      swift_endAccess();
      if (v14 == v13)
      {
        return;
      }
    }

    v48 = sub_1DEEAF3E8(v47);
    if (v49)
    {
      v50 = v48;
      v51 = *(v2 + 2);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v2 + 2);
      v81 = v53;
      if ((v52 & 1) == 0)
      {
        sub_1DEEB7AC8();
        v53 = v81;
      }

      v54 = *(*(v53 + 48) + 8 * v50);

      v55 = *(*(v53 + 56) + 8 * v50);
      sub_1DEF75E70(v50, v53);
      *(v2 + 2) = v53;

      v15 = v72;
      goto LABEL_42;
    }

LABEL_37:

    goto LABEL_42;
  }

  __break(1u);
}

uint64_t sub_1DEF74078()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_1DEF740B0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t sub_1DEF740F0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v3 = sub_1DEF41CEC(v2, v1);

  v4 = *(v0 + 56);
  *(v0 + 56) = v3;
}

uint64_t sub_1DEF74168(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DF8, &unk_1DEF91710);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DEF907F0;
  (*(v5 + 16))(v8 + v7, a1, v4);

  v9 = sub_1DEF41CEC(v8, v3);
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  v10 = *(v1 + 56);
  *(v1 + 56) = v9;
}

uint64_t sub_1DEF742C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v7[2] = a1;

  v4 = sub_1DEF780D4(sub_1DEF78F9C, v7, v3);
  v5 = *(v1 + 56);
  *(v1 + 56) = v4;
}

BOOL sub_1DEF74350()
{
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE40E0);
  return (sub_1DEF8D908() & 1) == 0;
}

uint64_t sub_1DEF743D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v4 = sub_1DEF71954(a1, v3, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);

  return v4;
}

uint64_t sub_1DEF7445C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1DEF7888C(v4, a1);

  return v5;
}

void *MetadataInMemoryStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate);
  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs);

  return v0;
}

uint64_t MetadataInMemoryStore.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate);
  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF745BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t (*sub_1DEF74614())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF74668(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 48) = a1;
  return result;
}

uint64_t (*sub_1DEF746AC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF74700@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v3 + v4, a1);
}

uint64_t sub_1DEF7475C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t (*sub_1DEF747C0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF74824(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 49) = a1;
  return result;
}

uint64_t (*sub_1DEF74868())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF748BC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = a1;
}

uint64_t (*sub_1DEF74908())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF7495C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = v3;
}

uint64_t sub_1DEF749DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  (*(v13 + 16))(v11, a1, v9);
  sub_1DEE27FC0(a1, v6, type metadata accessor for PairingRelationship);
  v14 = type metadata accessor for PairingRelationship();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  swift_beginAccess();
  sub_1DEF32880(v6, v11);
  return swift_endAccess();
}

uint64_t sub_1DEF74B78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  (*(v13 + 16))(v11, a1, v9);
  v14 = type metadata accessor for PairingRelationship();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  swift_beginAccess();
  sub_1DEF32880(v6, v11);
  return swift_endAccess();
}

uint64_t sub_1DEF74D3C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_1DEF74D8C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_1DEF74DCC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_1DEF74E10()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 49);
}

uint64_t sub_1DEF74E50()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
}

uint64_t sub_1DEF74EB8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = sub_1DEF71954(a1, v4, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);

  return v5;
}

uint64_t sub_1DEF74F48(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  v6 = sub_1DEF7888C(v5, a1);

  return v6;
}

uint64_t sub_1DEF75110(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v10 = *v8;
  if ((*v8 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v21 = *v8;
    v22 = a2(a1);
    if (v23)
    {
      v10 = v22;
      v24 = *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v8;
      v29 = *v8;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v27 = *(*(v26 + 48) + 8 * v10);

        v20 = *(*(v26 + 56) + 8 * v10);
        a3(v10, v26);
        *v8 = v26;
        return v20;
      }

LABEL_14:
      (v15)();
      v26 = v29;
      goto LABEL_10;
    }

    return 0;
  }

  if (v10 < 0)
  {
    v12 = *v8;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_1DEF8E0B8();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = sub_1DEF8DE68();
  v15 = a5(v12, v14);

  v16 = a2(a1);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 48) + 8 * v16);

  v20 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v20;
}

uint64_t sub_1DEF7529C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DEEAF3E8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEB8164();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    v13 = *(v11 + 56);
    v14 = sub_1DEF8D3F8();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_1DEF76584(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_1DEF8D3F8();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1DEF7545C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1DEE13224(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_1DEE13A90(v22 + *(v30 + 72) * v17, a7, a4);
    sub_1DEF77714(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_1DEF755E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DEEAF20C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEB8A3C();
      v11 = v22;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    v13 = *(v11 + 56);
    v14 = type metadata accessor for ZoneVersion();
    v21 = *(v14 - 8);
    sub_1DEE13A90(v13 + *(v21 + 72) * v8, a2, type metadata accessor for ZoneVersion);
    sub_1DEF76C64(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for ZoneVersion();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1DEF757F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1DEEAF350(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = sub_1DEF8D3F8();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_1DEE13A90(v23 + *(v31 + 72) * v22, a6, a3);
    sub_1DEF77040(v22, v19, a4);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

double sub_1DEF75A04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DEEAF880(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEBAA80();
      v11 = v16;
    }

    v12 = *(v11 + 48) + 56 * v8;
    v13 = *(v12 + 8);
    v14 = *(v12 + 24);

    sub_1DEE2F1AC((*(v11 + 56) + 40 * v8), a2);
    sub_1DEF77DE0(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1DEF75AC8(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = v4;
    v14 = ~v12;
    v15 = (sub_1DEF8DE28() + 1) & ~v12;
    v43 = (v5 + 48);
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    do
    {
      v16 = *(a2 + 40);
      v17 = *(*(a2 + 48) + 8 * v13);
      sub_1DEF8E7A8();
      v18 = v17[2];
      v19 = v17[3];

      sub_1DEF8D9B8();
      v20 = v17[4];
      v21 = v20[2];
      v22 = v20[3];
      sub_1DEF8D9B8();
      v23 = v20[4];
      v24 = v20[5];

      sub_1DEF8D9B8();

      v25 = v45;
      sub_1DEE27FC0(v17 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v45, type metadata accessor for Record.ID.Ownership);
      v26 = v44;
      if ((*v43)(v25, 1, v44) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v27 = v42;
        (*v41)(v42, v25, v26);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638);
        sub_1DEF8D8C8();
        (*v40)(v27, v26);
      }

      v28 = sub_1DEF8E7F8();

      v29 = v28 & v14;
      if (a1 >= v15)
      {
        if (v29 < v15)
        {
          goto LABEL_4;
        }
      }

      else if (v29 >= v15)
      {
        goto LABEL_13;
      }

      if (a1 >= v29)
      {
LABEL_13:
        v30 = *(a2 + 48);
        v31 = (v30 + 8 * a1);
        v32 = (v30 + 8 * v13);
        if (a1 != v13 || v31 >= v32 + 1)
        {
          *v31 = *v32;
        }

        v33 = *(a2 + 56);
        v34 = (v33 + 16 * a1);
        v35 = (v33 + 16 * v13);
        if (a1 != v13 || v34 >= v35 + 1)
        {
          *v34 = *v35;
          a1 = v13;
        }
      }

LABEL_4:
      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

void sub_1DEF75E70(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = v4;
    v14 = ~v12;
    v15 = (sub_1DEF8DE28() + 1) & ~v12;
    v43 = (v5 + 48);
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    do
    {
      v16 = *(a2 + 40);
      v17 = *(*(a2 + 48) + 8 * v13);
      sub_1DEF8E7A8();
      v18 = v17[2];
      v19 = v17[3];

      sub_1DEF8D9B8();
      v20 = v17[4];
      v21 = v20[2];
      v22 = v20[3];
      sub_1DEF8D9B8();
      v23 = v20[4];
      v24 = v20[5];

      sub_1DEF8D9B8();

      v25 = v45;
      sub_1DEE27FC0(v17 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v45, type metadata accessor for Record.ID.Ownership);
      v26 = v44;
      if ((*v43)(v25, 1, v44) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v27 = v42;
        (*v41)(v42, v25, v26);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638);
        sub_1DEF8D8C8();
        (*v40)(v27, v26);
      }

      v28 = sub_1DEF8E7F8();

      v29 = v28 & v14;
      if (a1 >= v15)
      {
        if (v29 < v15)
        {
          goto LABEL_4;
        }
      }

      else if (v29 >= v15)
      {
        goto LABEL_13;
      }

      if (a1 >= v29)
      {
LABEL_13:
        v30 = *(a2 + 48);
        v31 = (v30 + 8 * a1);
        v32 = (v30 + 8 * v13);
        if (a1 != v13 || v31 >= v32 + 1)
        {
          *v31 = *v32;
        }

        v33 = *(a2 + 56);
        v34 = (v33 + 8 * a1);
        v35 = (v33 + 8 * v13);
        if (a1 != v13 || v34 >= v35 + 1)
        {
          *v34 = *v35;
          a1 = v13;
        }
      }

LABEL_4:
      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DEF76218(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v13 = sub_1DEF8E7F8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DEF763C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1DEF8E7A8();
      v11 = v10[2];
      v12 = v10[3];

      sub_1DEF8D9B8();
      v13 = v10[4];
      v14 = v10[5];
      sub_1DEF8D9B8();
      v15 = sub_1DEF8E7F8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF76584(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = (sub_1DEF8DE28() + 1) & ~v12;
    v42 = (v5 + 48);
    v39 = (v5 + 32);
    v40 = v5;
    v38 = (v5 + 8);
    while (1)
    {
      v16 = *(a2 + 40);
      v17 = *(*(a2 + 48) + 8 * v13);
      sub_1DEF8E7A8();
      v18 = v17[2];
      v19 = v17[3];

      sub_1DEF8D9B8();
      v20 = v17[4];
      v21 = v20[2];
      v22 = v20[3];
      sub_1DEF8D9B8();
      v23 = v20[4];
      v24 = v20[5];

      sub_1DEF8D9B8();

      v25 = v43;
      sub_1DEE27FC0(v17 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v43, type metadata accessor for Record.ID.Ownership);
      if ((*v42)(v25, 1, v4) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v26 = v41;
        (*v39)(v41, v25, v4);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638);
        sub_1DEF8D8C8();
        (*v38)(v26, v4);
      }

      v27 = sub_1DEF8E7F8();

      v28 = v27 & v14;
      if (a1 >= v15)
      {
        break;
      }

      if (v28 < v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      v29 = *(a2 + 48);
      v30 = (v29 + 8 * a1);
      v31 = (v29 + 8 * v13);
      if (a1 != v13 || v30 >= v31 + 1)
      {
        *v30 = *v31;
      }

      v32 = *(v40 + 72);
      v33 = v32 * a1;
      if (v32 * a1 < (v32 * v13) || *(a2 + 56) + v32 * a1 >= *(a2 + 56) + v32 * v13 + v32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v13;
        if (v33 == v32 * v13)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v13;
LABEL_5:
      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v28 < v15)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v28)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void sub_1DEF7695C(int64_t a1, uint64_t a2)
{
  v41 = sub_1DEF8D3F8();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1DEF8DE28();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1DEE1E37C(&qword_1ECDE3638);
      v25 = sub_1DEF8D8B8();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

unint64_t sub_1DEF76C64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1DEF8E7A8();
      v11 = v10[2];
      v12 = v10[3];

      sub_1DEF8D9B8();
      v13 = v10[4];
      v14 = v10[5];
      sub_1DEF8D9B8();
      v15 = sub_1DEF8E7F8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v3);
      v19 = (v17 + 8 * v6);
      if (v3 != v6 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for ZoneVersion() - 8) + 72);
      v22 = v21 * v3;
      result = v20 + v21 * v3;
      v23 = v21 * v6;
      v24 = v20 + v21 * v6 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v22 == v23)
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

    if (v16 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DEF76E5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      sub_1DEF8E7A8();
      if (v11)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      v13 = sub_1DEF8E7F8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF77040(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v44 = a2;
    v13 = ~v11;
    v14 = sub_1DEF8DE28();
    v15 = v13;
    a2 = v44;
    v43 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v41 = v10;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v5);
      v23 = *(a2 + 40);
      sub_1DEE1E37C(&qword_1ECDE3638);
      v24 = sub_1DEF8D8B8();
      (*v40)(v9, v5);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v43)
      {
        if (v25 >= v43 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v44 + 48) + v19 * a1 >= (*(v44 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v28 = *(v44 + 56);
          v29 = *(*(v39(0) - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v12;
          v33 = v28 + v29 * v12 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v35 = v30 == v32;
            v10 = v41;
            v15 = v21;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v43 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v41;
      a2 = v44;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DEF7737C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v15 = sub_1DEF8E7F8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DEF77538(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1DEF8E798();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DEF77714(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DEF8DE28() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v15 = sub_1DEF8E7F8();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF77908(int64_t a1, uint64_t a2)
{
  v41 = sub_1DEF8D3F8();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1DEF8DE28();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1DEE1E37C(&qword_1ECDE3638);
      v25 = sub_1DEF8D8B8();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}