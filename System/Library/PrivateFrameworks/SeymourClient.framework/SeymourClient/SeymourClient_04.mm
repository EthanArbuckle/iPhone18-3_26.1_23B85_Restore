unint64_t sub_1B4E2D3AC()
{
  result = qword_1EB8F4778;
  if (!qword_1EB8F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4778);
  }

  return result;
}

unint64_t sub_1B4E2D400()
{
  result = qword_1EB8F4780;
  if (!qword_1EB8F4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4780);
  }

  return result;
}

unint64_t sub_1B4E2D454()
{
  result = qword_1EB8F4788;
  if (!qword_1EB8F4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4788);
  }

  return result;
}

unint64_t sub_1B4E2D4A8()
{
  result = qword_1EB8F4790;
  if (!qword_1EB8F4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4790);
  }

  return result;
}

unint64_t sub_1B4E2D4FC()
{
  result = qword_1EB8F4798;
  if (!qword_1EB8F4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4798);
  }

  return result;
}

uint64_t NetworkInterfaceType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47A0, &qword_1B4F6DEA8);
  v52 = *(v56 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v56, v4);
  v59 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47A8, &qword_1B4F6DEB0);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v58 = v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47B0, &qword_1B4F6DEB8);
  v50 = *(v53 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v53, v12);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47B8, &qword_1B4F6DEC0);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C0, &qword_1B4F6DEC8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v47 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B4E2D3AC();
  v28 = v60;
  sub_1B4F68F44();
  if (!v28)
  {
    v48 = v15;
    v49 = 0;
    v29 = v58;
    v30 = v59;
    v60 = v21;
    v31 = v25;
    v32 = sub_1B4F68CA4();
    v33 = *(v32 + 16);
    if (!v33 || ((v34 = *(v32 + 32), v33 == 1) ? (v35 = v34 == 4) : (v35 = 1), v35))
    {
      v36 = sub_1B4F68A04();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0) + 48);
      *v38 = &type metadata for NetworkInterfaceType;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v60 + 8))(v31, v20);
    }

    else
    {
      v47[1] = v32;
      if (v34 <= 1)
      {
        if (v34)
        {
          v63 = 1;
          sub_1B4E2D4A8();
          v44 = v49;
          sub_1B4F68C54();
          if (!v44)
          {
            (*(v50 + 8))(v14, v53);
            goto LABEL_23;
          }
        }

        else
        {
          v62 = 0;
          sub_1B4E2D4FC();
          v40 = v49;
          sub_1B4F68C54();
          if (!v40)
          {
            (*(v51 + 8))(v19, v48);
LABEL_23:
            (*(v60 + 8))(v25, v20);
LABEL_25:
            swift_unknownObjectRelease();
            *v57 = v34;
            return __swift_destroy_boxed_opaque_existential_1Tm(v61);
          }
        }

        (*(v60 + 8))(v25, v20);
        goto LABEL_20;
      }

      v41 = v57;
      v42 = v60;
      if (v34 == 2)
      {
        v64 = 2;
        sub_1B4E2D454();
        v43 = v49;
        sub_1B4F68C54();
        if (!v43)
        {
          (*(v55 + 8))(v29, v54);
          (*(v42 + 8))(v31, v20);
          swift_unknownObjectRelease();
          *v41 = 2;
          return __swift_destroy_boxed_opaque_existential_1Tm(v61);
        }
      }

      else
      {
        v65 = 3;
        sub_1B4E2D400();
        v45 = v49;
        sub_1B4F68C54();
        if (!v45)
        {
          (*(v52 + 8))(v30, v56);
          (*(v42 + 8))(v31, v20);
          goto LABEL_25;
        }
      }

      (*(v42 + 8))(v31, v20);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v61);
}

uint64_t sub_1B4E2DBD4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 30;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E2DC08()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E2DC3C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 47;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E2DC70()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E2DD4C()
{
  result = qword_1EB8F47D0;
  if (!qword_1EB8F47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProtectionClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataProtectionClass(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B4E2DF44()
{
  result = qword_1EB8F47D8;
  if (!qword_1EB8F47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47D8);
  }

  return result;
}

unint64_t sub_1B4E2DF9C()
{
  result = qword_1EB8F47E0;
  if (!qword_1EB8F47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47E0);
  }

  return result;
}

unint64_t sub_1B4E2DFF4()
{
  result = qword_1EB8F47E8;
  if (!qword_1EB8F47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47E8);
  }

  return result;
}

unint64_t sub_1B4E2E04C()
{
  result = qword_1EB8F47F0;
  if (!qword_1EB8F47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47F0);
  }

  return result;
}

unint64_t sub_1B4E2E0A4()
{
  result = qword_1EB8F47F8;
  if (!qword_1EB8F47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47F8);
  }

  return result;
}

unint64_t sub_1B4E2E0FC()
{
  result = qword_1EB8F4800;
  if (!qword_1EB8F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4800);
  }

  return result;
}

unint64_t sub_1B4E2E154()
{
  result = qword_1EB8F4808;
  if (!qword_1EB8F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4808);
  }

  return result;
}

unint64_t sub_1B4E2E1AC()
{
  result = qword_1EB8F4810;
  if (!qword_1EB8F4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4810);
  }

  return result;
}

unint64_t sub_1B4E2E204()
{
  result = qword_1EB8F4818;
  if (!qword_1EB8F4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4818);
  }

  return result;
}

unint64_t sub_1B4E2E25C()
{
  result = qword_1EB8F4820;
  if (!qword_1EB8F4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4820);
  }

  return result;
}

unint64_t sub_1B4E2E2B4()
{
  result = qword_1EB8F4828;
  if (!qword_1EB8F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4828);
  }

  return result;
}

uint64_t sub_1B4E2E308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656E7265687465 && a2 == 0xE800000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4F68D54();

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

uint64_t sub_1B4E2E480()
{
  v0 = sub_1B4F669A4();
  __swift_allocate_value_buffer(v0, qword_1EB8F4830);
  __swift_project_value_buffer(v0, qword_1EB8F4830);
  return sub_1B4F669B4();
}

uint64_t static WorkoutPlanSortCriteria.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F669A4();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F4830);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HeartRateDeviceConnectionUpdated.heartRateDeviceConnection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66B74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRateDeviceConnectionUpdated.init(heartRateDeviceConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HeartRateDeviceConnectionUpdated()
{
  result = qword_1EB8F4848;
  if (!qword_1EB8F4848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E2E6D8()
{
  result = sub_1B4F66B74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PlaylistsUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaylistsUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void *UpNextQueueClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E2F07C(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E2E9C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3._countAndFlagsBits = 0xD000000000000025;
    v3._object = 0x80000001B4F80930;
    v4._object = 0x80000001B4F809D0;
    v4._countAndFlagsBits = 0xD00000000000001FLL;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for UpNextQueueItemsUpdated, &protocol witness table for UpNextQueueItemsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t UpNextQueueClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t UpNextQueueClient.queryUpNextQueue()()
{
  v1 = v0;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6E038);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F80930;
  v4._object = 0x80000001B4F80960;
  v4._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 313;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4858, &qword_1B4F6E490);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBE0, &qword_1EB8F4858, &qword_1B4F6E490);
  v11 = sub_1B4E2F1EC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t UpNextQueueClient.processUpNextQueueUpdates(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6E038);
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F80930;
  v6._object = 0x80000001B4F80980;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 314;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4860, &qword_1B4F6E498);
  v12 = sub_1B4E2F2A0(&qword_1EB8F4868, &qword_1EB8F4860, &qword_1B4F6E498);
  v13 = sub_1B4E2F308();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

uint64_t sub_1B4E2EDC0()
{
  v1 = *v0;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6E038);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F80930;
  v4._object = 0x80000001B4F80960;
  v4._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 313;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4858, &qword_1B4F6E490);
  v10 = sub_1B4E2F2A0(&qword_1EDB6DBE0, &qword_1EB8F4858, &qword_1B4F6E490);
  v11 = sub_1B4E2F1EC();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E2EF18(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6E038);
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F80930;
  v6._object = 0x80000001B4F80980;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 314;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4860, &qword_1B4F6E498);
  v12 = sub_1B4E2F2A0(&qword_1EB8F4868, &qword_1EB8F4860, &qword_1B4F6E498);
  v13 = sub_1B4E2F308();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

void *sub_1B4E2F07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = 49;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v9, sub_1B4E2F45C, v7, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E2F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC88F8(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E2F1EC()
{
  result = qword_1EDB6DBD8;
  if (!qword_1EDB6DBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4858, &qword_1B4F6E490);
    sub_1B4E2F3BC(&qword_1EDB700A0, MEMORY[0x1E69CB6B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBD8);
  }

  return result;
}

uint64_t sub_1B4E2F2A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E2F308()
{
  result = qword_1EB8F4870;
  if (!qword_1EB8F4870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4860, &qword_1B4F6E498);
    sub_1B4E2F3BC(&qword_1EB8F4878, MEMORY[0x1E69CBBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4870);
  }

  return result;
}

uint64_t sub_1B4E2F3BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4E2F5A4(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x6465766968637261;
      break;
    case 2:
    case 20:
      result = 0xD000000000000013;
      break;
    case 3:
    case 11:
    case 16:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6B72616D6B6F6F62;
      break;
    case 5:
    case 9:
    case 25:
      result = 0xD000000000000018;
      break;
    case 6:
    case 24:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
    case 19:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x6E656D6D6F636572;
      break;
    case 22:
      result = 0x75517478654E7075;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 26:
    case 27:
    case 29:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4E2F8D0(uint64_t a1)
{
  v2 = sub_1B4E33F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F90C(uint64_t a1)
{
  v2 = sub_1B4E33F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2F948(uint64_t a1)
{
  v2 = sub_1B4E33FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F984(uint64_t a1)
{
  v2 = sub_1B4E33FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2F9C0(uint64_t a1)
{
  v2 = sub_1B4E34284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F9FC(uint64_t a1)
{
  v2 = sub_1B4E34284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FA38(uint64_t a1)
{
  v2 = sub_1B4E34C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FA74(uint64_t a1)
{
  v2 = sub_1B4E34C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FAB0(uint64_t a1)
{
  v2 = sub_1B4E34C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FAEC(uint64_t a1)
{
  v2 = sub_1B4E34C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FB28(uint64_t a1)
{
  v2 = sub_1B4E34B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FB64(uint64_t a1)
{
  v2 = sub_1B4E34B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FBA0(uint64_t a1)
{
  v2 = sub_1B4E34B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FBDC(uint64_t a1)
{
  v2 = sub_1B4E34B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FC18(uint64_t a1)
{
  v2 = sub_1B4E34A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FC54(uint64_t a1)
{
  v2 = sub_1B4E34A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FC90(uint64_t a1)
{
  v2 = sub_1B4E349D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FCCC(uint64_t a1)
{
  v2 = sub_1B4E349D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4E3F318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4E2FD44(uint64_t a1)
{
  v2 = sub_1B4E33EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FD80(uint64_t a1)
{
  v2 = sub_1B4E33EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FDBC(uint64_t a1)
{
  v2 = sub_1B4E34824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FDF8(uint64_t a1)
{
  v2 = sub_1B4E34824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FE34(uint64_t a1)
{
  v2 = sub_1B4E34980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FE70(uint64_t a1)
{
  v2 = sub_1B4E34980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FEAC(uint64_t a1)
{
  v2 = sub_1B4E34878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FEE8(uint64_t a1)
{
  v2 = sub_1B4E34878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FF24(uint64_t a1)
{
  v2 = sub_1B4E347D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FF60(uint64_t a1)
{
  v2 = sub_1B4E347D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FF9C(uint64_t a1)
{
  v2 = sub_1B4E3477C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FFD8(uint64_t a1)
{
  v2 = sub_1B4E3477C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E30014(uint64_t a1)
{
  v2 = sub_1B4E34728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30050(uint64_t a1)
{
  v2 = sub_1B4E34728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3008C(uint64_t a1)
{
  v2 = sub_1B4E346D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E300C8(uint64_t a1)
{
  v2 = sub_1B4E346D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E30104(uint64_t a1)
{
  v2 = sub_1B4E34680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30140(uint64_t a1)
{
  v2 = sub_1B4E34680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3017C(uint64_t a1)
{
  v2 = sub_1B4E3462C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E301B8(uint64_t a1)
{
  v2 = sub_1B4E3462C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E301F4(uint64_t a1)
{
  v2 = sub_1B4E345D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30230(uint64_t a1)
{
  v2 = sub_1B4E345D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3026C(uint64_t a1)
{
  v2 = sub_1B4E344D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E302A8(uint64_t a1)
{
  v2 = sub_1B4E344D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E302E4(uint64_t a1)
{
  v2 = sub_1B4E3447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30320(uint64_t a1)
{
  v2 = sub_1B4E3447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3035C(uint64_t a1)
{
  v2 = sub_1B4E34428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30398(uint64_t a1)
{
  v2 = sub_1B4E34428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E303D4(uint64_t a1)
{
  v2 = sub_1B4E3432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30410(uint64_t a1)
{
  v2 = sub_1B4E3432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3044C(uint64_t a1)
{
  v2 = sub_1B4E343D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30488(uint64_t a1)
{
  v2 = sub_1B4E343D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E304C4(uint64_t a1)
{
  v2 = sub_1B4E34380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30500(uint64_t a1)
{
  v2 = sub_1B4E34380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3053C(uint64_t a1)
{
  v2 = sub_1B4E342D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30578(uint64_t a1)
{
  v2 = sub_1B4E342D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E305B4(uint64_t a1)
{
  v2 = sub_1B4E34134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E305F0(uint64_t a1)
{
  v2 = sub_1B4E34134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3062C(uint64_t a1)
{
  v2 = sub_1B4E34230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30668(uint64_t a1)
{
  v2 = sub_1B4E34230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E306A4(uint64_t a1)
{
  v2 = sub_1B4E341DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E306E0(uint64_t a1)
{
  v2 = sub_1B4E341DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3071C()
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E30760()
{
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E307A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4F68D54();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4E30820(uint64_t a1)
{
  v2 = sub_1B4E34188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E3085C(uint64_t a1)
{
  v2 = sub_1B4E34188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingJournalProperty.encode(to:)(void *a1)
{
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4880, &qword_1B4F6E530);
  v360 = *(v330 - 8);
  v2 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v330, v3);
  v327 = &v209 - v4;
  v329 = sub_1B4F66F74();
  v328 = *(v329 - 8);
  v5 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v329, v6);
  v326 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4888, &qword_1B4F6E538);
  v359 = *(v325 - 8);
  v8 = *(v359 + 64);
  MEMORY[0x1EEE9AC00](v325, v9);
  v324 = &v209 - v10;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4890, &qword_1B4F6E540);
  v358 = *(v323 - 8);
  v11 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v323, v12);
  v322 = &v209 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v321 = &v209 - v17;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48A0, &qword_1B4F6E550);
  v357 = *(v320 - 8);
  v18 = *(v357 + 64);
  MEMORY[0x1EEE9AC00](v320, v19);
  v317 = &v209 - v20;
  v319 = sub_1B4F670C4();
  v318 = *(v319 - 8);
  v21 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319, v22);
  v316 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48A8, &qword_1B4F6E558);
  v356 = *(v315 - 8);
  v24 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v315, v25);
  v312 = &v209 - v26;
  v314 = sub_1B4F66AF4();
  v313 = *(v314 - 8);
  v27 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v314, v28);
  v311 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48B0, &qword_1B4F6E560);
  v355 = *(v310 - 8);
  v30 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v310, v31);
  v307 = &v209 - v32;
  v309 = sub_1B4F660C4();
  v308 = *(v309 - 8);
  v33 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v309, v34);
  v306 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48B8, &qword_1B4F6E568);
  v354 = *(v305 - 8);
  v36 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v305, v37);
  v302 = &v209 - v38;
  v304 = sub_1B4F64ED4();
  v303 = *(v304 - 8);
  v39 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304, v40);
  v301 = &v209 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48C0, &qword_1B4F6E570);
  v353 = *(v300 - 8);
  v42 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v300, v43);
  v297 = &v209 - v44;
  v299 = sub_1B4F65C64();
  v298 = *(v299 - 8);
  v45 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299, v46);
  v296 = &v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48C8, &qword_1B4F6E578);
  v352 = *(v295 - 8);
  v48 = *(v352 + 64);
  MEMORY[0x1EEE9AC00](v295, v49);
  v293 = &v209 - v50;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48D0, &qword_1B4F6E580);
  v351 = *(v294 - 8);
  v51 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v294, v52);
  v290 = &v209 - v53;
  v292 = sub_1B4F66354();
  v291 = *(v292 - 8);
  v54 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v292, v55);
  v289 = &v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48D8, &qword_1B4F6E588);
  v350 = *(v288 - 8);
  v57 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v288, v58);
  v285 = &v209 - v59;
  v287 = sub_1B4F65E04();
  v286 = *(v287 - 8);
  v60 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v287, v61);
  v284 = &v209 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48E0, &qword_1B4F6E590);
  v349 = *(v283 - 8);
  v63 = *(v349 + 64);
  MEMORY[0x1EEE9AC00](v283, v64);
  v280 = &v209 - v65;
  v282 = sub_1B4F65DE4();
  v281 = *(v282 - 8);
  v66 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v282, v67);
  v279 = &v209 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48E8, &qword_1B4F6E598);
  v348 = *(v278 - 8);
  v69 = *(v348 + 64);
  MEMORY[0x1EEE9AC00](v278, v70);
  v275 = &v209 - v71;
  v277 = sub_1B4F66BA4();
  v276 = *(v277 - 8);
  v72 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v277, v73);
  v274 = &v209 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48F0, &qword_1B4F6E5A0);
  v347 = *(v273 - 8);
  v75 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v273, v76);
  v272 = &v209 - v77;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F48F8, &qword_1B4F6E5A8);
  v346 = *(v271 - 8);
  v78 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v271, v79);
  v268 = &v209 - v80;
  v270 = sub_1B4F67A94();
  v269 = *(v270 - 8);
  v81 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v270, v82);
  v267 = &v209 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4900, &qword_1B4F6E5B0);
  v345 = *(v266 - 8);
  v84 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v266, v85);
  v263 = &v209 - v86;
  v265 = sub_1B4F673D4();
  v264 = *(v265 - 8);
  v87 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265, v88);
  v262 = &v209 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4908, &qword_1B4F6E5B8);
  v344 = *(v261 - 8);
  v90 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v261, v91);
  v258 = &v209 - v92;
  v260 = sub_1B4F66624();
  v259 = *(v260 - 8);
  v93 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v260, v94);
  v257 = &v209 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4910, &qword_1B4F6E5C0);
  v343 = *(v256 - 8);
  v96 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v256, v97);
  v253 = &v209 - v98;
  v255 = sub_1B4F66604();
  v254 = *(v255 - 8);
  v99 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255, v100);
  v252 = &v209 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4918, &qword_1B4F6E5C8);
  v342 = *(v251 - 8);
  v102 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v251, v103);
  v248 = &v209 - v104;
  v250 = sub_1B4F668C4();
  v249 = *(v250 - 8);
  v105 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v250, v106);
  v247 = &v209 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4920, &qword_1B4F6E5D0);
  v341 = *(v246 - 8);
  v108 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v246, v109);
  v243 = &v209 - v110;
  v245 = sub_1B4F66454();
  v244 = *(v245 - 8);
  v111 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v245, v112);
  v242 = &v209 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4928, &qword_1B4F6E5D8);
  v340 = *(v241 - 8);
  v114 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v241, v115);
  v238 = &v209 - v116;
  v240 = sub_1B4F66A54();
  v239 = *(v240 - 8);
  v117 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v240, v118);
  v237 = &v209 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4930, &qword_1B4F6E5E0);
  v339 = *(v236 - 8);
  v120 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v236, v121);
  v235 = &v209 - v122;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4938, &qword_1B4F6E5E8);
  v338 = *(v234 - 8);
  v123 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v234, v124);
  v233 = &v209 - v125;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4940, &qword_1B4F6E5F0);
  v337 = *(v232 - 8);
  v126 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v232, v127);
  v231 = &v209 - v128;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4948, &qword_1B4F6E5F8);
  v336 = *(v230 - 8);
  v129 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v230, v130);
  v227 = &v209 - v131;
  v229 = sub_1B4F669F4();
  v228 = *(v229 - 8);
  v132 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229, v133);
  v226 = &v209 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4950, &qword_1B4F6E600);
  v335 = *(v225 - 8);
  v135 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v225, v136);
  v224 = &v209 - v137;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4958, &qword_1B4F6E608);
  v334 = *(v223 - 8);
  v138 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v223, v139);
  v220 = &v209 - v140;
  v222 = sub_1B4F66754();
  v221 = *(v222 - 8);
  v141 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v222, v142);
  v219 = &v209 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4960, &qword_1B4F6E610);
  v333 = *(v218 - 8);
  v144 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v218, v145);
  v216 = &v209 - v146;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4968, &qword_1B4F6E618);
  v332 = *(v217 - 8);
  v147 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v217, v148);
  v213 = &v209 - v149;
  v215 = sub_1B4F65954();
  v214 = *(v215 - 8);
  v150 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215, v151);
  v212 = &v209 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4970, &qword_1B4F6E620);
  v331 = *(v211 - 8);
  v153 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v211, v154);
  v156 = &v209 - v155;
  v157 = sub_1B4F65184();
  v210 = *(v157 - 8);
  v158 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v157, v159);
  v161 = &v209 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for RemoteBrowsingJournalProperty();
  v163 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162, v164);
  v166 = &v209 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4978, &qword_1B4F6E628);
  v364 = *(v362 - 8);
  v167 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v362, v168);
  v170 = &v209 - v169;
  v171 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E33EB0();
  v361 = v170;
  sub_1B4F68F54();
  sub_1B4E33F04(v363, v166);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v187 = v214;
      v188 = v212;
      v189 = v215;
      (*(v214 + 32))(v212, v166, v215);
      LOBYTE(v366) = 1;
      sub_1B4E34C2C();
      v190 = v213;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B80, MEMORY[0x1E69CB538]);
      v191 = v217;
      sub_1B4F68CE4();
      v192 = v332;
      goto LABEL_35;
    case 2u:
      v195 = *v166;
      LOBYTE(v366) = 2;
      sub_1B4E34B84();
      v196 = v216;
      v179 = v361;
      v178 = v362;
      sub_1B4F68CB4();
      LOBYTE(v366) = v195;
      sub_1B4E34BD8();
      v197 = v218;
      sub_1B4F68CE4();
      (*(v333 + 8))(v196, v197);
      return (*(v364 + 8))(v179, v178);
    case 3u:
      v187 = v221;
      v188 = v219;
      v189 = v222;
      (*(v221 + 32))(v219, v166, v222);
      LOBYTE(v366) = 3;
      sub_1B4E34B30();
      v190 = v220;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B60, MEMORY[0x1E69CC658]);
      v191 = v223;
      sub_1B4F68CE4();
      v192 = v334;
      goto LABEL_35;
    case 4u:
      v193 = *v166;
      LOBYTE(v366) = 4;
      sub_1B4E34A28();
      v182 = v224;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v193;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
      sub_1B4E34A7C();
      v185 = v225;
      sub_1B4F68CE4();
      v194 = &v365;
      goto LABEL_27;
    case 5u:
      v187 = v228;
      v188 = v226;
      v189 = v229;
      (*(v228 + 32))(v226, v166, v229);
      LOBYTE(v366) = 5;
      sub_1B4E349D4();
      v190 = v227;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B30, MEMORY[0x1E69CC830]);
      v191 = v230;
      sub_1B4F68CE4();
      v192 = v336;
      goto LABEL_35;
    case 6u:
      v206 = *v166;
      LOBYTE(v366) = 6;
      sub_1B4E34980();
      v182 = v231;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E348CC();
      v185 = v232;
      sub_1B4F68CE4();
      v194 = &v367;
      goto LABEL_27;
    case 7u:
      v199 = *v166;
      LOBYTE(v366) = 7;
      sub_1B4E34878();
      v182 = v233;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v199;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E348CC();
      v185 = v234;
      sub_1B4F68CE4();
      v194 = &v368;
      goto LABEL_27;
    case 8u:
      v207 = *v166;
      LOBYTE(v366) = 8;
      sub_1B4E34824();
      v182 = v235;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v207;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
      sub_1B4E387E4(&qword_1EB8F4AF8);
      v185 = v236;
      sub_1B4F68CE4();
      v194 = &v369;
LABEL_27:
      v186 = *(v194 - 32);
      goto LABEL_28;
    case 9u:
      v187 = v239;
      v188 = v237;
      v189 = v240;
      (*(v239 + 32))(v237, v166, v240);
      LOBYTE(v366) = 9;
      sub_1B4E347D0();
      v190 = v238;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AE0, MEMORY[0x1E69CC938]);
      v191 = v241;
      sub_1B4F68CE4();
      v192 = v340;
      goto LABEL_35;
    case 0xAu:
      v187 = v244;
      v188 = v242;
      v189 = v245;
      (*(v244 + 32))(v242, v166, v245);
      LOBYTE(v366) = 10;
      sub_1B4E3477C();
      v190 = v243;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AD0, MEMORY[0x1E69CC1F8]);
      v191 = v246;
      sub_1B4F68CE4();
      v192 = v341;
      goto LABEL_35;
    case 0xBu:
      v187 = v249;
      v188 = v247;
      v189 = v250;
      (*(v249 + 32))(v247, v166, v250);
      LOBYTE(v366) = 11;
      sub_1B4E34728();
      v190 = v248;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AC0, MEMORY[0x1E69CC760]);
      v191 = v251;
      sub_1B4F68CE4();
      v192 = v342;
      goto LABEL_35;
    case 0xCu:
      v187 = v254;
      v188 = v252;
      v189 = v255;
      (*(v254 + 32))(v252, v166, v255);
      LOBYTE(v366) = 12;
      sub_1B4E346D4();
      v190 = v253;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AB0, MEMORY[0x1E69CC528]);
      v191 = v256;
      sub_1B4F68CE4();
      v192 = v343;
      goto LABEL_35;
    case 0xDu:
      v187 = v259;
      v188 = v257;
      v189 = v260;
      (*(v259 + 32))(v257, v166, v260);
      LOBYTE(v366) = 13;
      sub_1B4E34680();
      v190 = v258;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4AA0, MEMORY[0x1E69CC560]);
      v191 = v261;
      sub_1B4F68CE4();
      v192 = v344;
      goto LABEL_35;
    case 0xEu:
      v187 = v264;
      v188 = v262;
      v189 = v265;
      (*(v264 + 32))(v262, v166, v265);
      LOBYTE(v366) = 14;
      sub_1B4E3462C();
      v190 = v263;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A90, MEMORY[0x1E69CD068]);
      v191 = v266;
      sub_1B4F68CE4();
      v192 = v345;
      goto LABEL_35;
    case 0xFu:
      v187 = v269;
      v188 = v267;
      v189 = v270;
      (*(v269 + 32))(v267, v166, v270);
      LOBYTE(v366) = 15;
      sub_1B4E345D8();
      v190 = v268;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A80, MEMORY[0x1E69CD370]);
      v191 = v271;
      sub_1B4F68CE4();
      v192 = v346;
      goto LABEL_35;
    case 0x10u:
      v181 = *v166;
      LOBYTE(v366) = 16;
      sub_1B4E344D0();
      v182 = v272;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
      sub_1B4E34524();
      v185 = v273;
      sub_1B4F68CE4();
      v186 = v347;
      goto LABEL_28;
    case 0x11u:
      v187 = v276;
      v188 = v274;
      v189 = v277;
      (*(v276 + 32))(v274, v166, v277);
      LOBYTE(v366) = 17;
      sub_1B4E3447C();
      v190 = v275;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A58, MEMORY[0x1E69CCAC8]);
      v191 = v278;
      sub_1B4F68CE4();
      v192 = v348;
      goto LABEL_35;
    case 0x12u:
      v187 = v281;
      v188 = v279;
      v189 = v282;
      (*(v281 + 32))(v279, v166, v282);
      LOBYTE(v366) = 18;
      sub_1B4E34428();
      v190 = v280;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A48, MEMORY[0x1E69CB800]);
      v191 = v283;
      sub_1B4F68CE4();
      v192 = v349;
      goto LABEL_35;
    case 0x13u:
      v187 = v286;
      v188 = v284;
      v189 = v287;
      (*(v286 + 32))(v284, v166, v287);
      LOBYTE(v366) = 19;
      sub_1B4E343D4();
      v190 = v285;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A38, MEMORY[0x1E69CB850]);
      v191 = v288;
      sub_1B4F68CE4();
      v192 = v350;
      goto LABEL_35;
    case 0x14u:
      v187 = v291;
      v188 = v289;
      v189 = v292;
      (*(v291 + 32))(v289, v166, v292);
      LOBYTE(v366) = 20;
      sub_1B4E34380();
      v190 = v290;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A28, MEMORY[0x1E69CBFD8]);
      v191 = v294;
      sub_1B4F68CE4();
      v192 = v351;
      goto LABEL_35;
    case 0x15u:
      v201 = *v166;
      v200 = *(v166 + 1);
      LOBYTE(v366) = 21;
      sub_1B4E3432C();
      v202 = v293;
      v204 = v361;
      v203 = v362;
      sub_1B4F68CB4();
      v205 = v295;
      sub_1B4F68CD4();

      (*(v352 + 8))(v202, v205);
      return (*(v364 + 8))(v204, v203);
    case 0x16u:
      v187 = v298;
      v188 = v296;
      v189 = v299;
      (*(v298 + 32))(v296, v166, v299);
      LOBYTE(v366) = 22;
      sub_1B4E342D8();
      v190 = v297;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A10, MEMORY[0x1E69CB6B0]);
      v191 = v300;
      sub_1B4F68CE4();
      v192 = v353;
      goto LABEL_35;
    case 0x17u:
      v187 = v303;
      v188 = v301;
      v189 = v304;
      (*(v303 + 32))(v301, v166, v304);
      LOBYTE(v366) = 23;
      sub_1B4E34284();
      v190 = v302;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4A00, MEMORY[0x1E69CB0E0]);
      v191 = v305;
      sub_1B4F68CE4();
      v192 = v354;
      goto LABEL_35;
    case 0x18u:
      v187 = v308;
      v188 = v306;
      v189 = v309;
      (*(v308 + 32))(v306, v166, v309);
      LOBYTE(v366) = 24;
      sub_1B4E34230();
      v190 = v307;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49F0, MEMORY[0x1E69CBE40]);
      v191 = v310;
      sub_1B4F68CE4();
      v192 = v355;
      goto LABEL_35;
    case 0x19u:
      v187 = v313;
      v188 = v311;
      v189 = v314;
      (*(v313 + 32))(v311, v166, v314);
      LOBYTE(v366) = 25;
      sub_1B4E341DC();
      v190 = v312;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49E0, MEMORY[0x1E69CCA00]);
      v191 = v315;
      sub_1B4F68CE4();
      v192 = v356;
      goto LABEL_35;
    case 0x1Au:
      v187 = v318;
      v188 = v316;
      v189 = v319;
      (*(v318 + 32))(v316, v166, v319);
      LOBYTE(v366) = 26;
      sub_1B4E34188();
      v190 = v317;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F49D0, MEMORY[0x1E69CCDC8]);
      v191 = v320;
      sub_1B4F68CE4();
      v192 = v357;
      goto LABEL_35;
    case 0x1Bu:
      v176 = v321;
      sub_1B4E340C4(v166, v321);
      LOBYTE(v366) = 27;
      sub_1B4E34134();
      v177 = v322;
      v179 = v361;
      v178 = v362;
      sub_1B4F68CB4();
      sub_1B4F67074();
      sub_1B4E3FCA0(&qword_1EB8F49C0, MEMORY[0x1E69CCD78]);
      v180 = v323;
      sub_1B4F68CC4();
      (*(v358 + 8))(v177, v180);
      sub_1B4DD2BC4(v176, &qword_1EB8F4898, &qword_1B4F6E548);
      return (*(v364 + 8))(v179, v178);
    case 0x1Cu:
      v208 = *v166;
      LOBYTE(v366) = 28;
      sub_1B4E33FBC();
      v182 = v324;
      v184 = v361;
      v183 = v362;
      sub_1B4F68CB4();
      v366 = v208;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F49A0, &unk_1B4F6E630);
      sub_1B4E34010();
      v185 = v325;
      sub_1B4F68CE4();
      v186 = v359;
LABEL_28:
      (*(v186 + 8))(v182, v185);
      (*(v364 + 8))(v184, v183);

    case 0x1Du:
      v187 = v328;
      v188 = v326;
      v189 = v329;
      (*(v328 + 32))(v326, v166, v329);
      LOBYTE(v366) = 29;
      sub_1B4E33F68();
      v190 = v327;
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4990, MEMORY[0x1E69CCC70]);
      v191 = v330;
      sub_1B4F68CE4();
      v192 = v360;
LABEL_35:
      (*(v192 + 8))(v190, v191);
      (*(v187 + 8))(v188, v189);
      return (*(v364 + 8))(v174, v173);
    default:
      v172 = v210;
      (*(v210 + 32))(v161, v166, v157);
      LOBYTE(v366) = 0;
      sub_1B4E34C80();
      v174 = v361;
      v173 = v362;
      sub_1B4F68CB4();
      sub_1B4E3FCA0(&qword_1EB8F4B90, MEMORY[0x1E69CB238]);
      v175 = v211;
      sub_1B4F68CE4();
      (*(v331 + 8))(v156, v175);
      (*(v172 + 8))(v161, v157);
      return (*(v364 + 8))(v174, v173);
  }
}

uint64_t type metadata accessor for RemoteBrowsingJournalProperty()
{
  result = qword_1EDB6E500;
  if (!qword_1EDB6E500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4E33EB0()
{
  result = qword_1EB8F4980;
  if (!qword_1EB8F4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4980);
  }

  return result;
}

uint64_t sub_1B4E33F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E33F68()
{
  result = qword_1EB8F4988;
  if (!qword_1EB8F4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4988);
  }

  return result;
}

unint64_t sub_1B4E33FBC()
{
  result = qword_1EB8F4998;
  if (!qword_1EB8F4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4998);
  }

  return result;
}

unint64_t sub_1B4E34010()
{
  result = qword_1EB8F49A8;
  if (!qword_1EB8F49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F49A0, &unk_1B4F6E630);
    sub_1B4E3FCA0(&qword_1EB8F49B0, MEMORY[0x1E69CCEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49A8);
  }

  return result;
}

uint64_t sub_1B4E340C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E34134()
{
  result = qword_1EB8F49B8;
  if (!qword_1EB8F49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49B8);
  }

  return result;
}

unint64_t sub_1B4E34188()
{
  result = qword_1EB8F49C8;
  if (!qword_1EB8F49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49C8);
  }

  return result;
}

unint64_t sub_1B4E341DC()
{
  result = qword_1EB8F49D8;
  if (!qword_1EB8F49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49D8);
  }

  return result;
}

unint64_t sub_1B4E34230()
{
  result = qword_1EB8F49E8;
  if (!qword_1EB8F49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49E8);
  }

  return result;
}

unint64_t sub_1B4E34284()
{
  result = qword_1EB8F49F8;
  if (!qword_1EB8F49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F49F8);
  }

  return result;
}

unint64_t sub_1B4E342D8()
{
  result = qword_1EB8F4A08;
  if (!qword_1EB8F4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A08);
  }

  return result;
}

unint64_t sub_1B4E3432C()
{
  result = qword_1EB8F4A18;
  if (!qword_1EB8F4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A18);
  }

  return result;
}

unint64_t sub_1B4E34380()
{
  result = qword_1EB8F4A20;
  if (!qword_1EB8F4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A20);
  }

  return result;
}

unint64_t sub_1B4E343D4()
{
  result = qword_1EB8F4A30;
  if (!qword_1EB8F4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A30);
  }

  return result;
}

unint64_t sub_1B4E34428()
{
  result = qword_1EB8F4A40;
  if (!qword_1EB8F4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A40);
  }

  return result;
}

unint64_t sub_1B4E3447C()
{
  result = qword_1EB8F4A50;
  if (!qword_1EB8F4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A50);
  }

  return result;
}

unint64_t sub_1B4E344D0()
{
  result = qword_1EB8F4A60;
  if (!qword_1EB8F4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A60);
  }

  return result;
}

unint64_t sub_1B4E34524()
{
  result = qword_1EB8F4A68;
  if (!qword_1EB8F4A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E3FCA0(&qword_1EB8F4A70, MEMORY[0x1E69CC5E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A68);
  }

  return result;
}

unint64_t sub_1B4E345D8()
{
  result = qword_1EB8F4A78;
  if (!qword_1EB8F4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A78);
  }

  return result;
}

unint64_t sub_1B4E3462C()
{
  result = qword_1EB8F4A88;
  if (!qword_1EB8F4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A88);
  }

  return result;
}

unint64_t sub_1B4E34680()
{
  result = qword_1EB8F4A98;
  if (!qword_1EB8F4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4A98);
  }

  return result;
}

unint64_t sub_1B4E346D4()
{
  result = qword_1EB8F4AA8;
  if (!qword_1EB8F4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AA8);
  }

  return result;
}

unint64_t sub_1B4E34728()
{
  result = qword_1EB8F4AB8;
  if (!qword_1EB8F4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AB8);
  }

  return result;
}

unint64_t sub_1B4E3477C()
{
  result = qword_1EB8F4AC8;
  if (!qword_1EB8F4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AC8);
  }

  return result;
}

unint64_t sub_1B4E347D0()
{
  result = qword_1EB8F4AD8;
  if (!qword_1EB8F4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AD8);
  }

  return result;
}

unint64_t sub_1B4E34824()
{
  result = qword_1EB8F4AE8;
  if (!qword_1EB8F4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4AE8);
  }

  return result;
}

unint64_t sub_1B4E34878()
{
  result = qword_1EB8F4B00;
  if (!qword_1EB8F4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B00);
  }

  return result;
}

unint64_t sub_1B4E348CC()
{
  result = qword_1EB8F4B10;
  if (!qword_1EB8F4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B08, &qword_1B4F6E648);
    sub_1B4E3FCA0(&qword_1EB8F4B18, MEMORY[0x1E69CCE28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B10);
  }

  return result;
}

unint64_t sub_1B4E34980()
{
  result = qword_1EB8F4B20;
  if (!qword_1EB8F4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B20);
  }

  return result;
}

unint64_t sub_1B4E349D4()
{
  result = qword_1EB8F4B28;
  if (!qword_1EB8F4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B28);
  }

  return result;
}

unint64_t sub_1B4E34A28()
{
  result = qword_1EB8F4B38;
  if (!qword_1EB8F4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B38);
  }

  return result;
}

unint64_t sub_1B4E34A7C()
{
  result = qword_1EB8F4B48;
  if (!qword_1EB8F4B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4E3FCA0(&qword_1EB8F4B50, MEMORY[0x1E69CD2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B48);
  }

  return result;
}

unint64_t sub_1B4E34B30()
{
  result = qword_1EB8F4B58;
  if (!qword_1EB8F4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B58);
  }

  return result;
}

unint64_t sub_1B4E34B84()
{
  result = qword_1EB8F4B68;
  if (!qword_1EB8F4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B68);
  }

  return result;
}

unint64_t sub_1B4E34BD8()
{
  result = qword_1EB8F4B70;
  if (!qword_1EB8F4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B70);
  }

  return result;
}

unint64_t sub_1B4E34C2C()
{
  result = qword_1EB8F4B78;
  if (!qword_1EB8F4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B78);
  }

  return result;
}

unint64_t sub_1B4E34C80()
{
  result = qword_1EB8F4B88;
  if (!qword_1EB8F4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4B88);
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v463 = a2;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B98, &qword_1B4F6E658);
  v435 = *(v434 - 8);
  v3 = *(v435 + 64);
  MEMORY[0x1EEE9AC00](v434, v4);
  v462 = &v346 - v5;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BA0, &qword_1B4F6E660);
  v432 = *(v433 - 8);
  v6 = *(v432 + 64);
  MEMORY[0x1EEE9AC00](v433, v7);
  v470 = &v346 - v8;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BA8, &qword_1B4F6E668);
  v430 = *(v431 - 8);
  v9 = *(v430 + 64);
  MEMORY[0x1EEE9AC00](v431, v10);
  v461 = &v346 - v11;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BB0, &qword_1B4F6E670);
  v428 = *(v429 - 8);
  v12 = *(v428 + 64);
  MEMORY[0x1EEE9AC00](v429, v13);
  v460 = &v346 - v14;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BB8, &qword_1B4F6E678);
  v426 = *(v427 - 8);
  v15 = *(v426 + 64);
  MEMORY[0x1EEE9AC00](v427, v16);
  v459 = &v346 - v17;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BC0, &qword_1B4F6E680);
  v424 = *(v425 - 8);
  v18 = *(v424 + 64);
  MEMORY[0x1EEE9AC00](v425, v19);
  v458 = &v346 - v20;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BC8, &qword_1B4F6E688);
  v422 = *(v423 - 8);
  v21 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v423, v22);
  v457 = &v346 - v23;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BD0, &qword_1B4F6E690);
  v420 = *(v421 - 8);
  v24 = *(v420 + 64);
  MEMORY[0x1EEE9AC00](v421, v25);
  v456 = &v346 - v26;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BD8, &qword_1B4F6E698);
  v418 = *(v419 - 8);
  v27 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v419, v28);
  v455 = &v346 - v29;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BE0, &qword_1B4F6E6A0);
  v416 = *(v417 - 8);
  v30 = *(v416 + 64);
  MEMORY[0x1EEE9AC00](v417, v31);
  v454 = &v346 - v32;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BE8, &qword_1B4F6E6A8);
  v414 = *(v415 - 8);
  v33 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v415, v34);
  v453 = &v346 - v35;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BF0, &qword_1B4F6E6B0);
  v412 = *(v413 - 8);
  v36 = *(v412 + 64);
  MEMORY[0x1EEE9AC00](v413, v37);
  v452 = &v346 - v38;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4BF8, &qword_1B4F6E6B8);
  v410 = *(v411 - 8);
  v39 = *(v410 + 64);
  MEMORY[0x1EEE9AC00](v411, v40);
  v451 = &v346 - v41;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C00, &qword_1B4F6E6C0);
  v408 = *(v409 - 8);
  v42 = *(v408 + 64);
  MEMORY[0x1EEE9AC00](v409, v43);
  v450 = &v346 - v44;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C08, &qword_1B4F6E6C8);
  v406 = *(v407 - 8);
  v45 = *(v406 + 64);
  MEMORY[0x1EEE9AC00](v407, v46);
  v449 = &v346 - v47;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C10, &qword_1B4F6E6D0);
  v404 = *(v405 - 8);
  v48 = *(v404 + 64);
  MEMORY[0x1EEE9AC00](v405, v49);
  v448 = &v346 - v50;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C18, &qword_1B4F6E6D8);
  v402 = *(v403 - 8);
  v51 = *(v402 + 64);
  MEMORY[0x1EEE9AC00](v403, v52);
  v447 = &v346 - v53;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C20, &qword_1B4F6E6E0);
  v400 = *(v401 - 8);
  v54 = *(v400 + 64);
  MEMORY[0x1EEE9AC00](v401, v55);
  v446 = &v346 - v56;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C28, &qword_1B4F6E6E8);
  v398 = *(v399 - 8);
  v57 = *(v398 + 64);
  MEMORY[0x1EEE9AC00](v399, v58);
  v445 = &v346 - v59;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C30, &qword_1B4F6E6F0);
  v396 = *(v397 - 8);
  v60 = *(v396 + 64);
  MEMORY[0x1EEE9AC00](v397, v61);
  v444 = &v346 - v62;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C38, &qword_1B4F6E6F8);
  v394 = *(v395 - 8);
  v63 = *(v394 + 64);
  MEMORY[0x1EEE9AC00](v395, v64);
  v443 = &v346 - v65;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C40, &qword_1B4F6E700);
  v392 = *(v393 - 8);
  v66 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v393, v67);
  v442 = &v346 - v68;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C48, &qword_1B4F6E708);
  v390 = *(v391 - 8);
  v69 = *(v390 + 64);
  MEMORY[0x1EEE9AC00](v391, v70);
  v441 = &v346 - v71;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C50, &qword_1B4F6E710);
  v388 = *(v389 - 8);
  v72 = *(v388 + 64);
  MEMORY[0x1EEE9AC00](v389, v73);
  v440 = &v346 - v74;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C58, &qword_1B4F6E718);
  v386 = *(v387 - 8);
  v75 = *(v386 + 64);
  MEMORY[0x1EEE9AC00](v387, v76);
  v439 = &v346 - v77;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C60, &qword_1B4F6E720);
  v384 = *(v385 - 8);
  v78 = *(v384 + 64);
  MEMORY[0x1EEE9AC00](v385, v79);
  v438 = &v346 - v80;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C68, &qword_1B4F6E728);
  v382 = *(v383 - 8);
  v81 = *(v382 + 64);
  MEMORY[0x1EEE9AC00](v383, v82);
  v437 = &v346 - v83;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C70, &qword_1B4F6E730);
  v380 = *(v381 - 8);
  v84 = *(v380 + 64);
  MEMORY[0x1EEE9AC00](v381, v85);
  v436 = &v346 - v86;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C78, &qword_1B4F6E738);
  v379 = *(v376 - 8);
  v87 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v376, v88);
  v468 = &v346 - v89;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C80, &qword_1B4F6E740);
  v377 = *(v378 - 8);
  v90 = *(v377 + 64);
  MEMORY[0x1EEE9AC00](v378, v91);
  v467 = &v346 - v92;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4C88, &unk_1B4F6E748);
  v464 = *(v469 - 8);
  v93 = *(v464 + 64);
  MEMORY[0x1EEE9AC00](v469, v94);
  v474 = &v346 - v95;
  v471 = type metadata accessor for RemoteBrowsingJournalProperty();
  v96 = *(*(v471 - 8) + 64);
  MEMORY[0x1EEE9AC00](v471, v97);
  v375 = &v346 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99, v100);
  v358 = (&v346 - v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  v466 = &v346 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v465 = &v346 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v374 = &v346 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v373 = &v346 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v372 = &v346 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v371 = &v346 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v357 = (&v346 - v122);
  MEMORY[0x1EEE9AC00](v123, v124);
  v370 = &v346 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v369 = &v346 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v368 = &v346 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v367 = &v346 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v356 = (&v346 - v137);
  MEMORY[0x1EEE9AC00](v138, v139);
  v366 = &v346 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v365 = &v346 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v364 = &v346 - v146;
  MEMORY[0x1EEE9AC00](v147, v148);
  v363 = &v346 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v362 = &v346 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v361 = &v346 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  v360 = &v346 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  v355 = (&v346 - v161);
  MEMORY[0x1EEE9AC00](v162, v163);
  v354 = (&v346 - v164);
  MEMORY[0x1EEE9AC00](v165, v166);
  v353 = (&v346 - v167);
  MEMORY[0x1EEE9AC00](v168, v169);
  v359 = &v346 - v170;
  MEMORY[0x1EEE9AC00](v171, v172);
  v174 = &v346 - v173;
  MEMORY[0x1EEE9AC00](v175, v176);
  v178 = &v346 - v177;
  MEMORY[0x1EEE9AC00](v179, v180);
  v182 = &v346 - v181;
  MEMORY[0x1EEE9AC00](v183, v184);
  v186 = &v346 - v185;
  MEMORY[0x1EEE9AC00](v187, v188);
  v190 = &v346 - v189;
  MEMORY[0x1EEE9AC00](v191, v192);
  v194 = &v346 - v193;
  v195 = a1[3];
  v196 = a1[4];
  v472 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v195);
  sub_1B4E33EB0();
  v197 = v473;
  sub_1B4F68F44();
  if (v197)
  {
LABEL_8:
    v218 = v472;
    return __swift_destroy_boxed_opaque_existential_1Tm(v218);
  }

  v349 = v190;
  v347 = v182;
  v350 = v186;
  v351 = v178;
  v348 = v174;
  v198 = v465;
  v199 = v466;
  v200 = v467;
  v201 = v468;
  v202 = v470;
  v352 = v194;
  v473 = 0;
  v203 = v469;
  v204 = v474;
  v205 = sub_1B4F68CA4();
  v206 = (2 * *(v205 + 16)) | 1;
  v475 = v205;
  v476 = v205 + 32;
  v477 = 0;
  v478 = v206;
  v207 = sub_1B4E2DBD4();
  if (v477 != v478 >> 1)
  {
LABEL_6:
    v213 = v203;
    v214 = sub_1B4F68A04();
    swift_allocError();
    v216 = v215;
    v217 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0) + 48);
    *v216 = v471;
    sub_1B4F68C64();
    sub_1B4F689F4();
    (*(*(v214 - 8) + 104))(v216, *MEMORY[0x1E69E6AF8], v214);
    swift_willThrow();
    (*(v464 + 8))(v204, v213);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v207)
  {
    case 0:
      LOBYTE(v479) = 0;
      sub_1B4E34C80();
      v208 = v204;
      v209 = v473;
      sub_1B4F68C54();
      if (v209)
      {
        goto LABEL_67;
      }

      sub_1B4F65184();
      sub_1B4E3FCA0(&qword_1EB8F4D88, MEMORY[0x1E69CB238]);
      v210 = v349;
      v211 = v378;
      sub_1B4F68C94();
      v212 = v464;
      (*(v377 + 8))(v200, v211);
      (*(v212 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 1:
      LOBYTE(v479) = 1;
      sub_1B4E34C2C();
      v208 = v204;
      v273 = v473;
      sub_1B4F68C54();
      if (v273)
      {
        goto LABEL_67;
      }

      sub_1B4F65954();
      sub_1B4E3FCA0(&qword_1EB8F4D80, MEMORY[0x1E69CB538]);
      v210 = v350;
      v274 = v376;
      sub_1B4F68C94();
      v275 = v464;
      (*(v379 + 8))(v201, v274);
      (*(v275 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 2:
      LOBYTE(v479) = 2;
      sub_1B4E34B84();
      v257 = v436;
      v208 = v204;
      v258 = v473;
      sub_1B4F68C54();
      if (v258)
      {
        goto LABEL_67;
      }

      sub_1B4E389B8();
      v259 = v381;
      sub_1B4F68C94();
      v260 = v464;
      (*(v380 + 8))(v257, v259);
      (*(v260 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v347;
      *v347 = v479;
      goto LABEL_70;
    case 3:
      LOBYTE(v479) = 3;
      sub_1B4E34B30();
      v265 = v437;
      v208 = v204;
      v266 = v473;
      sub_1B4F68C54();
      if (v266)
      {
        goto LABEL_67;
      }

      sub_1B4F66754();
      sub_1B4E3FCA0(&qword_1EB8F4D70, MEMORY[0x1E69CC658]);
      v210 = v351;
      v267 = v383;
      sub_1B4F68C94();
      v268 = v464;
      (*(v382 + 8))(v265, v267);
      (*(v268 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 4:
      LOBYTE(v479) = 4;
      sub_1B4E34A28();
      v237 = v438;
      v208 = v204;
      v238 = v473;
      sub_1B4F68C54();
      if (v238)
      {
        goto LABEL_67;
      }

      v239 = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
      sub_1B4E38904();
      v240 = v385;
      sub_1B4F68C94();
      (*(v384 + 8))(v237, v240);
      (*(v464 + 8))(v204, v239);
      swift_unknownObjectRelease();
      v228 = v348;
      *v348 = v479;
      goto LABEL_70;
    case 5:
      LOBYTE(v479) = 5;
      sub_1B4E349D4();
      v284 = v439;
      v208 = v204;
      v285 = v473;
      sub_1B4F68C54();
      if (v285)
      {
        goto LABEL_67;
      }

      sub_1B4F669F4();
      sub_1B4E3FCA0(&qword_1EB8F4D58, MEMORY[0x1E69CC830]);
      v210 = v359;
      v286 = v387;
      sub_1B4F68C94();
      v287 = v464;
      (*(v386 + 8))(v284, v286);
      (*(v287 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 6:
      LOBYTE(v479) = 6;
      sub_1B4E34980();
      v298 = v440;
      v208 = v204;
      v299 = v473;
      sub_1B4F68C54();
      if (v299)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E38850();
      v300 = v389;
      sub_1B4F68C94();
      v301 = v464;
      (*(v388 + 8))(v298, v300);
      (*(v301 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v353;
      *v353 = v479;
      goto LABEL_70;
    case 7:
      LOBYTE(v479) = 7;
      sub_1B4E34878();
      v269 = v441;
      v208 = v204;
      v270 = v473;
      sub_1B4F68C54();
      if (v270)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B08, &qword_1B4F6E648);
      sub_1B4E38850();
      v271 = v391;
      sub_1B4F68C94();
      v272 = v464;
      (*(v390 + 8))(v269, v271);
      (*(v272 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v354;
      *v354 = v479;
      goto LABEL_70;
    case 8:
      LOBYTE(v479) = 8;
      sub_1B4E34824();
      v310 = v442;
      v208 = v204;
      v311 = v473;
      sub_1B4F68C54();
      if (v311)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
      sub_1B4E387E4(&qword_1EB8F4D40);
      v312 = v393;
      sub_1B4F68C94();
      v313 = v464;
      (*(v392 + 8))(v310, v312);
      (*(v313 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v355;
      *v355 = v479;
      goto LABEL_70;
    case 9:
      LOBYTE(v479) = 9;
      sub_1B4E347D0();
      v245 = v443;
      v208 = v204;
      v246 = v473;
      sub_1B4F68C54();
      if (v246)
      {
        goto LABEL_67;
      }

      sub_1B4F66A54();
      sub_1B4E3FCA0(&qword_1EB8F4D38, MEMORY[0x1E69CC938]);
      v210 = v360;
      v247 = v395;
      sub_1B4F68C94();
      v248 = v464;
      (*(v394 + 8))(v245, v247);
      (*(v248 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 10:
      LOBYTE(v479) = 10;
      sub_1B4E3477C();
      v306 = v444;
      v208 = v204;
      v307 = v473;
      sub_1B4F68C54();
      if (v307)
      {
        goto LABEL_67;
      }

      sub_1B4F66454();
      sub_1B4E3FCA0(&qword_1EB8F4D30, MEMORY[0x1E69CC1F8]);
      v210 = v361;
      v308 = v397;
      sub_1B4F68C94();
      v309 = v464;
      (*(v396 + 8))(v306, v308);
      (*(v309 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 11:
      LOBYTE(v479) = 11;
      sub_1B4E34728();
      v233 = v445;
      v208 = v204;
      v234 = v473;
      sub_1B4F68C54();
      if (v234)
      {
        goto LABEL_67;
      }

      sub_1B4F668C4();
      sub_1B4E3FCA0(&qword_1EB8F4D28, MEMORY[0x1E69CC760]);
      v210 = v362;
      v235 = v399;
      sub_1B4F68C94();
      v236 = v464;
      (*(v398 + 8))(v233, v235);
      (*(v236 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 12:
      LOBYTE(v479) = 12;
      sub_1B4E346D4();
      v241 = v446;
      v208 = v204;
      v242 = v473;
      sub_1B4F68C54();
      if (v242)
      {
        goto LABEL_67;
      }

      sub_1B4F66604();
      sub_1B4E3FCA0(&qword_1EB8F4D20, MEMORY[0x1E69CC528]);
      v210 = v363;
      v243 = v401;
      sub_1B4F68C94();
      v244 = v464;
      (*(v400 + 8))(v241, v243);
      (*(v244 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 13:
      LOBYTE(v479) = 13;
      sub_1B4E34680();
      v294 = v447;
      v208 = v204;
      v295 = v473;
      sub_1B4F68C54();
      if (v295)
      {
        goto LABEL_67;
      }

      sub_1B4F66624();
      sub_1B4E3FCA0(&qword_1EB8F4D18, MEMORY[0x1E69CC560]);
      v210 = v364;
      v296 = v403;
      sub_1B4F68C94();
      v297 = v464;
      (*(v402 + 8))(v294, v296);
      (*(v297 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 14:
      LOBYTE(v479) = 14;
      sub_1B4E3462C();
      v229 = v448;
      v208 = v204;
      v230 = v473;
      sub_1B4F68C54();
      if (v230)
      {
        goto LABEL_67;
      }

      sub_1B4F673D4();
      sub_1B4E3FCA0(&qword_1EB8F4D10, MEMORY[0x1E69CD068]);
      v210 = v365;
      v231 = v405;
      sub_1B4F68C94();
      v232 = v464;
      (*(v404 + 8))(v229, v231);
      (*(v232 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 15:
      LOBYTE(v479) = 15;
      sub_1B4E345D8();
      v261 = v449;
      v208 = v204;
      v262 = v473;
      sub_1B4F68C54();
      if (v262)
      {
        goto LABEL_67;
      }

      sub_1B4F67A94();
      sub_1B4E3FCA0(&qword_1EB8F4D08, MEMORY[0x1E69CD370]);
      v210 = v366;
      v263 = v407;
      sub_1B4F68C94();
      v264 = v464;
      (*(v406 + 8))(v261, v263);
      (*(v264 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 16:
      LOBYTE(v479) = 16;
      sub_1B4E344D0();
      v224 = v450;
      v208 = v204;
      v225 = v473;
      sub_1B4F68C54();
      if (v225)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
      sub_1B4E38730();
      v226 = v409;
      sub_1B4F68C94();
      v227 = v464;
      (*(v408 + 8))(v224, v226);
      (*(v227 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v356;
      *v356 = v479;
      goto LABEL_70;
    case 17:
      LOBYTE(v479) = 17;
      sub_1B4E3447C();
      v276 = v451;
      v208 = v204;
      v277 = v473;
      sub_1B4F68C54();
      if (v277)
      {
        goto LABEL_67;
      }

      sub_1B4F66BA4();
      sub_1B4E3FCA0(&qword_1EB8F4CF0, MEMORY[0x1E69CCAC8]);
      v210 = v367;
      v278 = v411;
      sub_1B4F68C94();
      v279 = v464;
      (*(v410 + 8))(v276, v278);
      (*(v279 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 18:
      LOBYTE(v479) = 18;
      sub_1B4E34428();
      v302 = v452;
      v208 = v204;
      v303 = v473;
      sub_1B4F68C54();
      if (v303)
      {
        goto LABEL_67;
      }

      sub_1B4F65DE4();
      sub_1B4E3FCA0(&qword_1EB8F4CE8, MEMORY[0x1E69CB800]);
      v210 = v368;
      v304 = v413;
      sub_1B4F68C94();
      v305 = v464;
      (*(v412 + 8))(v302, v304);
      (*(v305 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 19:
      LOBYTE(v479) = 19;
      sub_1B4E343D4();
      v318 = v453;
      v208 = v204;
      v319 = v473;
      sub_1B4F68C54();
      if (v319)
      {
        goto LABEL_67;
      }

      sub_1B4F65E04();
      sub_1B4E3FCA0(&qword_1EB8F4CE0, MEMORY[0x1E69CB850]);
      v210 = v369;
      v320 = v415;
      sub_1B4F68C94();
      v321 = v464;
      (*(v414 + 8))(v318, v320);
      (*(v321 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 20:
      LOBYTE(v479) = 20;
      sub_1B4E34380();
      v280 = v454;
      v208 = v204;
      v281 = v473;
      sub_1B4F68C54();
      if (v281)
      {
        goto LABEL_67;
      }

      sub_1B4F66354();
      sub_1B4E3FCA0(&qword_1EB8F4CD8, MEMORY[0x1E69CBFD8]);
      v210 = v370;
      v282 = v417;
      sub_1B4F68C94();
      v283 = v464;
      (*(v416 + 8))(v280, v282);
      (*(v283 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 21:
      LOBYTE(v479) = 21;
      sub_1B4E3432C();
      v288 = v455;
      v208 = v204;
      v289 = v473;
      sub_1B4F68C54();
      if (v289)
      {
        goto LABEL_67;
      }

      v290 = v203;
      v291 = v419;
      v292 = sub_1B4F68C84();
      v293 = v464;
      v340 = v292;
      v342 = v341;
      (*(v418 + 8))(v288, v291);
      (*(v293 + 8))(v204, v290);
      swift_unknownObjectRelease();
      v343 = v357;
      *v357 = v340;
      v343[1] = v342;
      swift_storeEnumTagMultiPayload();
      v339 = v343;
      goto LABEL_72;
    case 22:
      LOBYTE(v479) = 22;
      sub_1B4E342D8();
      v314 = v456;
      v208 = v204;
      v315 = v473;
      sub_1B4F68C54();
      if (v315)
      {
        goto LABEL_67;
      }

      sub_1B4F65C64();
      sub_1B4E3FCA0(&qword_1EB8F4CD0, MEMORY[0x1E69CB6B0]);
      v210 = v371;
      v316 = v421;
      sub_1B4F68C94();
      v317 = v464;
      (*(v420 + 8))(v314, v316);
      (*(v317 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 23:
      LOBYTE(v479) = 23;
      sub_1B4E34284();
      v322 = v457;
      v208 = v204;
      v323 = v473;
      sub_1B4F68C54();
      if (v323)
      {
        goto LABEL_67;
      }

      sub_1B4F64ED4();
      sub_1B4E3FCA0(&qword_1EB8F4CC8, MEMORY[0x1E69CB0E0]);
      v210 = v372;
      v324 = v423;
      sub_1B4F68C94();
      v325 = v464;
      (*(v422 + 8))(v322, v324);
      (*(v325 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 24:
      LOBYTE(v479) = 24;
      sub_1B4E34230();
      v253 = v458;
      v208 = v204;
      v254 = v473;
      sub_1B4F68C54();
      if (v254)
      {
        goto LABEL_67;
      }

      sub_1B4F660C4();
      sub_1B4E3FCA0(&qword_1EB8F4CC0, MEMORY[0x1E69CBE40]);
      v210 = v373;
      v255 = v425;
      sub_1B4F68C94();
      v256 = v464;
      (*(v424 + 8))(v253, v255);
      (*(v256 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_69;
    case 25:
      LOBYTE(v479) = 25;
      sub_1B4E341DC();
      v249 = v459;
      v208 = v204;
      v250 = v473;
      sub_1B4F68C54();
      if (v250)
      {
        goto LABEL_67;
      }

      sub_1B4F66AF4();
      sub_1B4E3FCA0(&qword_1EB8F4CB8, MEMORY[0x1E69CCA00]);
      v210 = v374;
      v251 = v427;
      sub_1B4F68C94();
      v252 = v464;
      (*(v426 + 8))(v249, v251);
      (*(v252 + 8))(v204, v203);
      swift_unknownObjectRelease();
LABEL_69:
      swift_storeEnumTagMultiPayload();
      v339 = v210;
      goto LABEL_72;
    case 26:
      LOBYTE(v479) = 26;
      sub_1B4E34188();
      v335 = v460;
      v208 = v204;
      v336 = v473;
      sub_1B4F68C54();
      if (v336)
      {
        goto LABEL_67;
      }

      sub_1B4F670C4();
      sub_1B4E3FCA0(&qword_1EB8F4CB0, MEMORY[0x1E69CCDC8]);
      v332 = v198;
      v337 = v429;
      sub_1B4F68C94();
      v338 = v464;
      (*(v428 + 8))(v335, v337);
      (*(v338 + 8))(v204, v203);
      swift_unknownObjectRelease();
      goto LABEL_71;
    case 27:
      LOBYTE(v479) = 27;
      sub_1B4E34134();
      v220 = v461;
      v208 = v204;
      v221 = v473;
      sub_1B4F68C54();
      if (v221)
      {
        goto LABEL_67;
      }

      sub_1B4F67074();
      sub_1B4E3FCA0(&qword_1EB8F4CA8, MEMORY[0x1E69CCD78]);
      v222 = v431;
      sub_1B4F68C74();
      v223 = v464;
      (*(v430 + 8))(v220, v222);
      (*(v223 + 8))(v474, v203);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v339 = v199;
      goto LABEL_72;
    case 28:
      LOBYTE(v479) = 28;
      sub_1B4E33FBC();
      v326 = v202;
      v208 = v204;
      v327 = v473;
      sub_1B4F68C54();
      if (v327)
      {
        goto LABEL_67;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F49A0, &unk_1B4F6E630);
      sub_1B4E3867C();
      v328 = v433;
      sub_1B4F68C94();
      v329 = v464;
      (*(v432 + 8))(v326, v328);
      (*(v329 + 8))(v204, v203);
      swift_unknownObjectRelease();
      v228 = v358;
      *v358 = v479;
LABEL_70:
      swift_storeEnumTagMultiPayload();
      v339 = v228;
      goto LABEL_72;
    case 29:
      LOBYTE(v479) = 29;
      sub_1B4E33F68();
      v330 = v462;
      v208 = v204;
      v331 = v473;
      sub_1B4F68C54();
      if (v331)
      {
LABEL_67:
        (*(v464 + 8))(v208, v203);
        goto LABEL_7;
      }

      sub_1B4F66F74();
      sub_1B4E3FCA0(&qword_1EB8F4C90, MEMORY[0x1E69CCC70]);
      v332 = v375;
      v333 = v434;
      sub_1B4F68C94();
      v334 = v464;
      (*(v435 + 8))(v330, v333);
      (*(v334 + 8))(v204, v203);
      swift_unknownObjectRelease();
LABEL_71:
      swift_storeEnumTagMultiPayload();
      v339 = v332;
LABEL_72:
      v344 = v352;
      sub_1B4E38618(v339, v352);
      v345 = v472;
      sub_1B4E38618(v344, v463);
      v218 = v345;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v218);
}

uint64_t sub_1B4E38618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4E3867C()
{
  result = qword_1EB8F4C98;
  if (!qword_1EB8F4C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F49A0, &unk_1B4F6E630);
    sub_1B4E3FCA0(&qword_1EB8F4CA0, MEMORY[0x1E69CCEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4C98);
  }

  return result;
}

unint64_t sub_1B4E38730()
{
  result = qword_1EB8F4CF8;
  if (!qword_1EB8F4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E3FCA0(&qword_1EB8F4D00, MEMORY[0x1E69CC5E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4CF8);
  }

  return result;
}

uint64_t sub_1B4E387E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E38850()
{
  result = qword_1EB8F4D48;
  if (!qword_1EB8F4D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B08, &qword_1B4F6E648);
    sub_1B4E3FCA0(&qword_1EB8F4D50, MEMORY[0x1E69CCE28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D48);
  }

  return result;
}

unint64_t sub_1B4E38904()
{
  result = qword_1EB8F4D60;
  if (!qword_1EB8F4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4E3FCA0(&qword_1EB8F4D68, MEMORY[0x1E69CD2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D60);
  }

  return result;
}

unint64_t sub_1B4E389B8()
{
  result = qword_1EB8F4D78;
  if (!qword_1EB8F4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4D78);
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.hash(into:)(__int128 *a1)
{
  v179 = a1;
  v177 = sub_1B4F66F74();
  v175 = *(v177 - 8);
  v1 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v177, v2);
  v174 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1B4F67074();
  v176 = *(v178 - 8);
  v4 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v178, v5);
  v119 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v172 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v173 = &v118 - v13;
  v14 = sub_1B4F670C4();
  v170 = *(v14 - 8);
  v171 = v14;
  v15 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v169 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F66AF4();
  v167 = *(v18 - 8);
  v168 = v18;
  v19 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v166 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4F660C4();
  v164 = *(v22 - 8);
  v165 = v22;
  v23 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v163 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B4F64ED4();
  v161 = *(v26 - 8);
  v162 = v26;
  v27 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v160 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1B4F65C64();
  v158 = *(v159 - 8);
  v30 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159, v31);
  v157 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1B4F66354();
  v155 = *(v156 - 8);
  v33 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156, v34);
  v154 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1B4F65E04();
  v152 = *(v153 - 8);
  v36 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153, v37);
  v151 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1B4F65DE4();
  v149 = *(v150 - 8);
  v39 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150, v40);
  v148 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1B4F66BA4();
  v146 = *(v147 - 8);
  v42 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147, v43);
  v145 = &v118 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1B4F67A94();
  v143 = *(v144 - 8);
  v45 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144, v46);
  v142 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1B4F673D4();
  v140 = *(v141 - 8);
  v48 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141, v49);
  v139 = &v118 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1B4F66624();
  v137 = *(v138 - 8);
  v51 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138, v52);
  v136 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1B4F66604();
  v134 = *(v135 - 8);
  v54 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135, v55);
  v133 = &v118 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1B4F668C4();
  v131 = *(v132 - 8);
  v57 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132, v58);
  v130 = &v118 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1B4F66454();
  v128 = *(v129 - 8);
  v60 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129, v61);
  v127 = &v118 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1B4F66A54();
  v125 = *(v126 - 8);
  v63 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126, v64);
  v124 = &v118 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1B4F669F4();
  v123 = *(v120 - 8);
  v66 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v120, v67);
  v69 = &v118 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B4F66754();
  v122 = *(v70 - 8);
  v71 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v70, v72);
  v74 = &v118 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1B4F65954();
  v121 = *(v75 - 8);
  v76 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v75, v77);
  v79 = &v118 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B4F65184();
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80, v83);
  v85 = &v118 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for RemoteBrowsingJournalProperty();
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86, v88);
  v90 = (&v118 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B4E33F04(v180, v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v110 = v121;
      (*(v121 + 32))(v79, v90, v75);
      MEMORY[0x1B8C82740](1);
      sub_1B4E3FCA0(&qword_1EB8F4E08, MEMORY[0x1E69CB538]);
      sub_1B4F67F24();
      return (*(v110 + 8))(v79, v75);
    case 2u:
      v107 = *v90;
      MEMORY[0x1B8C82740](2);
      sub_1B4F66134();
      sub_1B4F67FE4();
      goto LABEL_33;
    case 3u:
      v108 = v122;
      (*(v122 + 32))(v74, v90, v70);
      MEMORY[0x1B8C82740](3);
      sub_1B4E3FCA0(&qword_1EB8F4E00, MEMORY[0x1E69CC658]);
      sub_1B4F67F24();
      return (*(v108 + 8))(v74, v70);
    case 4u:
      v96 = *v90;
      v97 = v179;
      MEMORY[0x1B8C82740](4);
      v98 = &unk_1EDB70020;
      v99 = MEMORY[0x1E69CD2D8];
      v100 = MEMORY[0x1E69CD2D8];
      v101 = MEMORY[0x1E69CD2E8];
      goto LABEL_32;
    case 5u:
      v111 = v123;
      v112 = v120;
      (*(v123 + 32))(v69, v90, v120);
      MEMORY[0x1B8C82740](5);
      sub_1B4E3FCA0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
      sub_1B4F67F24();
      return (*(v111 + 8))(v69, v112);
    case 6u:
      v96 = *v90;
      v109 = 6;
      goto LABEL_24;
    case 7u:
      v96 = *v90;
      v109 = 7;
LABEL_24:
      v97 = v179;
      MEMORY[0x1B8C82740](v109);
      v98 = &unk_1EDB70038;
      v99 = MEMORY[0x1E69CCE28];
      v100 = MEMORY[0x1E69CCE28];
      v101 = MEMORY[0x1E69CCE38];
      goto LABEL_32;
    case 8u:
      v115 = *v90;
      v116 = v179;
      MEMORY[0x1B8C82740](8);
      sub_1B4E3A680(v116, v115);
      goto LABEL_33;
    case 9u:
      v102 = v125;
      v103 = v124;
      v104 = v126;
      (*(v125 + 32))(v124, v90, v126);
      MEMORY[0x1B8C82740](9);
      v105 = &unk_1EB8F4DF0;
      v106 = MEMORY[0x1E69CC938];
      goto LABEL_36;
    case 0xAu:
      v102 = v128;
      v103 = v127;
      v104 = v129;
      (*(v128 + 32))(v127, v90, v129);
      MEMORY[0x1B8C82740](10);
      v105 = &unk_1EB8F4DE8;
      v106 = MEMORY[0x1E69CC1F8];
      goto LABEL_36;
    case 0xBu:
      v102 = v131;
      v103 = v130;
      v104 = v132;
      (*(v131 + 32))(v130, v90, v132);
      MEMORY[0x1B8C82740](11);
      v105 = &unk_1EB8F4DE0;
      v106 = MEMORY[0x1E69CC760];
      goto LABEL_36;
    case 0xCu:
      v102 = v134;
      v103 = v133;
      v104 = v135;
      (*(v134 + 32))(v133, v90, v135);
      MEMORY[0x1B8C82740](12);
      v105 = &unk_1EB8F4DD8;
      v106 = MEMORY[0x1E69CC528];
      goto LABEL_36;
    case 0xDu:
      v102 = v137;
      v103 = v136;
      v104 = v138;
      (*(v137 + 32))(v136, v90, v138);
      MEMORY[0x1B8C82740](13);
      v105 = &unk_1EB8F4DD0;
      v106 = MEMORY[0x1E69CC560];
      goto LABEL_36;
    case 0xEu:
      v102 = v140;
      v103 = v139;
      v104 = v141;
      (*(v140 + 32))(v139, v90, v141);
      MEMORY[0x1B8C82740](14);
      v105 = &unk_1EB8F4DC8;
      v106 = MEMORY[0x1E69CD068];
      goto LABEL_36;
    case 0xFu:
      v102 = v143;
      v103 = v142;
      v104 = v144;
      (*(v143 + 32))(v142, v90, v144);
      MEMORY[0x1B8C82740](15);
      v105 = &unk_1EB8F4180;
      v106 = MEMORY[0x1E69CD370];
      goto LABEL_36;
    case 0x10u:
      v96 = *v90;
      v97 = v179;
      MEMORY[0x1B8C82740](16);
      v98 = &unk_1EDB70088;
      v99 = MEMORY[0x1E69CC5E8];
      v100 = MEMORY[0x1E69CC5E8];
      v101 = MEMORY[0x1E69CC5F8];
      goto LABEL_32;
    case 0x11u:
      v102 = v146;
      v103 = v145;
      v104 = v147;
      (*(v146 + 32))(v145, v90, v147);
      MEMORY[0x1B8C82740](17);
      v105 = &unk_1EB8F4DC0;
      v106 = MEMORY[0x1E69CCAC8];
      goto LABEL_36;
    case 0x12u:
      v102 = v149;
      v103 = v148;
      v104 = v150;
      (*(v149 + 32))(v148, v90, v150);
      MEMORY[0x1B8C82740](18);
      v105 = &unk_1EB8F4188;
      v106 = MEMORY[0x1E69CB800];
      goto LABEL_36;
    case 0x13u:
      v102 = v152;
      v103 = v151;
      v104 = v153;
      (*(v152 + 32))(v151, v90, v153);
      MEMORY[0x1B8C82740](19);
      v105 = &unk_1EB8F4190;
      v106 = MEMORY[0x1E69CB850];
      goto LABEL_36;
    case 0x14u:
      v102 = v155;
      v103 = v154;
      v104 = v156;
      (*(v155 + 32))(v154, v90, v156);
      MEMORY[0x1B8C82740](20);
      v105 = &unk_1EB8F4DB8;
      v106 = MEMORY[0x1E69CBFD8];
      goto LABEL_36;
    case 0x15u:
      v113 = *v90;
      v114 = v90[1];
      MEMORY[0x1B8C82740](21);
      sub_1B4F67FE4();

    case 0x16u:
      v102 = v158;
      v103 = v157;
      v104 = v159;
      (*(v158 + 32))(v157, v90, v159);
      MEMORY[0x1B8C82740](22);
      v105 = &unk_1EB8F4DB0;
      v106 = MEMORY[0x1E69CB6B0];
      goto LABEL_36;
    case 0x17u:
      v103 = v160;
      v102 = v161;
      v104 = v162;
      (*(v161 + 32))(v160, v90, v162);
      MEMORY[0x1B8C82740](23);
      v105 = &unk_1EB8F4DA8;
      v106 = MEMORY[0x1E69CB0E0];
      goto LABEL_36;
    case 0x18u:
      v103 = v163;
      v102 = v164;
      v104 = v165;
      (*(v164 + 32))(v163, v90, v165);
      MEMORY[0x1B8C82740](24);
      v105 = &unk_1EB8F4198;
      v106 = MEMORY[0x1E69CBE40];
      goto LABEL_36;
    case 0x19u:
      v103 = v166;
      v102 = v167;
      v104 = v168;
      (*(v167 + 32))(v166, v90, v168);
      MEMORY[0x1B8C82740](25);
      v105 = &unk_1EB8F4DA0;
      v106 = MEMORY[0x1E69CCA00];
      goto LABEL_36;
    case 0x1Au:
      v103 = v169;
      v102 = v170;
      v104 = v171;
      (*(v170 + 32))(v169, v90, v171);
      MEMORY[0x1B8C82740](26);
      v105 = &unk_1EB8F41A0;
      v106 = MEMORY[0x1E69CCDC8];
      goto LABEL_36;
    case 0x1Bu:
      v92 = v173;
      sub_1B4E340C4(v90, v173);
      MEMORY[0x1B8C82740](27);
      v93 = v172;
      sub_1B4E3C968(v92, v172);
      v94 = v176;
      v95 = v178;
      if ((*(v176 + 48))(v93, 1, v178) == 1)
      {
        sub_1B4F68EA4();
      }

      else
      {
        v117 = v119;
        (*(v94 + 32))(v119, v93, v95);
        sub_1B4F68EA4();
        sub_1B4E3FCA0(&qword_1EB8F4D98, MEMORY[0x1E69CCD78]);
        sub_1B4F67F24();
        (*(v94 + 8))(v117, v95);
      }

      return sub_1B4DD2BC4(v92, &qword_1EB8F4898, &qword_1B4F6E548);
    case 0x1Cu:
      v96 = *v90;
      v97 = v179;
      MEMORY[0x1B8C82740](28);
      v98 = &unk_1EDB70030;
      v99 = MEMORY[0x1E69CCEC8];
      v100 = MEMORY[0x1E69CCEC8];
      v101 = MEMORY[0x1E69CCED8];
LABEL_32:
      sub_1B4E3A474(v97, v96, v99, v98, v100, v101);
LABEL_33:

      break;
    case 0x1Du:
      v103 = v174;
      v102 = v175;
      v104 = v177;
      (*(v175 + 32))(v174, v90, v177);
      MEMORY[0x1B8C82740](29);
      v105 = &unk_1EB8F4D90;
      v106 = MEMORY[0x1E69CCC70];
LABEL_36:
      sub_1B4E3FCA0(v105, v106);
      sub_1B4F67F24();
      result = (*(v102 + 8))(v103, v104);
      break;
    default:
      (*(v81 + 32))(v85, v90, v80);
      MEMORY[0x1B8C82740](0);
      sub_1B4E3FCA0(&qword_1EB8F4E10, MEMORY[0x1E69CB238]);
      sub_1B4F67F24();
      result = (*(v81 + 8))(v85, v80);
      break;
  }

  return result;
}

uint64_t RemoteBrowsingJournalProperty.hashValue.getter()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A3F0()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A434()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalProperty.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E3A474(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v28 - v12;
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v36 = *(a1 + 8);
  v16 = *a1;
  v15 = a1[1];
  v28[1] = a1;
  v32 = v16;
  v33 = v15;
  v17 = sub_1B4F68EC4();
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v21 = (v18 + 63) >> 6;
  v28[3] = v9 + 16;
  v28[4] = v17;
  v28[2] = v9 + 8;

  v23 = 0;
  for (i = 0; v20; v23 ^= v27)
  {
    v25 = i;
LABEL_9:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v9 + 16))(v13, *(a2 + 48) + *(v9 + 72) * (v26 | (v25 << 6)), v8);
    sub_1B4E3FCA0(v29, v30);
    v27 = sub_1B4F67F14();
    result = (*(v9 + 8))(v13, v8);
  }

  while (1)
  {
    v25 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      return MEMORY[0x1B8C82740](v23);
    }

    v20 = *(a2 + 56 + 8 * v25);
    ++i;
    if (v20)
    {
      i = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4E3A680(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1B4F68EC4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1B4F68E84();

    sub_1B4F67FE4();
    v15 = sub_1B4F68EC4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B8C82740](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v365 = a2;
  v366 = a1;
  v2 = sub_1B4F66F74();
  v360 = *(v2 - 8);
  v361 = v2;
  v3 = *(v360 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v296 = &v272 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1B4F67074();
  v298 = *(v299 - 8);
  v6 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299, v7);
  v273 = &v272 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v274 = &v272 - v12;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5108, &qword_1B4F70D80);
  v13 = *(*(v295 - 8) + 64);
  MEMORY[0x1EEE9AC00](v295, v14);
  v297 = &v272 - v15;
  v16 = sub_1B4F670C4();
  v358 = *(v16 - 8);
  v359 = v16;
  v17 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v294 = &v272 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F66AF4();
  v356 = *(v20 - 8);
  v357 = v20;
  v21 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v293 = &v272 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B4F660C4();
  v354 = *(v24 - 8);
  v355 = v24;
  v25 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v292 = &v272 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B4F64ED4();
  v352 = *(v28 - 8);
  v353 = v28;
  v29 = *(v352 + 64);
  MEMORY[0x1EEE9AC00](v28, v30);
  v291 = &v272 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B4F65C64();
  v350 = *(v32 - 8);
  v351 = v32;
  v33 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v32, v34);
  v290 = &v272 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B4F66354();
  v348 = *(v36 - 8);
  v349 = v36;
  v37 = *(v348 + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v289 = &v272 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B4F65E04();
  v346 = *(v40 - 8);
  v347 = v40;
  v41 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v40, v42);
  v288 = &v272 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_1B4F65DE4();
  v344 = *(v345 - 8);
  v44 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v345, v45);
  v287 = &v272 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_1B4F66BA4();
  v342 = *(v343 - 8);
  v47 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343, v48);
  v286 = &v272 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_1B4F67A94();
  v340 = *(v341 - 8);
  v50 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v341, v51);
  v285 = &v272 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_1B4F673D4();
  v338 = *(v339 - 8);
  v53 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v339, v54);
  v284 = &v272 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_1B4F66624();
  v336 = *(v337 - 8);
  v56 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v337, v57);
  v283 = &v272 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_1B4F66604();
  v334 = *(v335 - 8);
  v59 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335, v60);
  v282 = &v272 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_1B4F668C4();
  v332 = *(v333 - 8);
  v62 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v333, v63);
  v281 = &v272 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = sub_1B4F66454();
  v330 = *(v331 - 8);
  v65 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v331, v66);
  v280 = &v272 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_1B4F66A54();
  v328 = *(v329 - 8);
  v68 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v329, v69);
  v279 = &v272 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_1B4F669F4();
  v326 = *(v327 - 8);
  v71 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v327, v72);
  v278 = &v272 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_1B4F66754();
  v324 = *(v325 - 8);
  v74 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v325, v75);
  v277 = &v272 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_1B4F65954();
  v322 = *(v323 - 8);
  v77 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v323, v78);
  v276 = &v272 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B4F65184();
  v362 = *(v80 - 8);
  v363 = v80;
  v81 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v80, v82);
  v275 = &v272 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for RemoteBrowsingJournalProperty();
  v84 = *(*(v364 - 8) + 64);
  MEMORY[0x1EEE9AC00](v364, v85);
  v321 = &v272 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v316 = (&v272 - v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  v318 = &v272 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v320 = &v272 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v319 = &v272 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v317 = &v272 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v315 = &v272 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v314 = &v272 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v309 = (&v272 - v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  v313 = &v272 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v312 = &v272 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v311 = &v272 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v310 = &v272 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v304 = (&v272 - v125);
  MEMORY[0x1EEE9AC00](v126, v127);
  v308 = &v272 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v307 = &v272 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v306 = &v272 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v305 = &v272 - v137;
  MEMORY[0x1EEE9AC00](v138, v139);
  v303 = &v272 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v302 = &v272 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v301 = &v272 - v146;
  MEMORY[0x1EEE9AC00](v147, v148);
  v150 = (&v272 - v149);
  MEMORY[0x1EEE9AC00](v151, v152);
  v154 = (&v272 - v153);
  MEMORY[0x1EEE9AC00](v155, v156);
  v158 = (&v272 - v157);
  MEMORY[0x1EEE9AC00](v159, v160);
  v300 = &v272 - v161;
  MEMORY[0x1EEE9AC00](v162, v163);
  v165 = (&v272 - v164);
  MEMORY[0x1EEE9AC00](v166, v167);
  v169 = &v272 - v168;
  MEMORY[0x1EEE9AC00](v170, v171);
  v173 = &v272 - v172;
  MEMORY[0x1EEE9AC00](v174, v175);
  v177 = &v272 - v176;
  MEMORY[0x1EEE9AC00](v178, v179);
  v181 = &v272 - v180;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5110, &qword_1B4F70D88);
  v183 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182 - 8, v184);
  v186 = &v272 - v185;
  v188 = (&v272 + *(v187 + 56) - v185);
  sub_1B4E33F04(v366, &v272 - v185);
  v366 = v188;
  sub_1B4E33F04(v365, v188);
  v189 = v186;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4E33F04(v186, v177);
      v231 = v366;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v232 = v322;
        v233 = v276;
        v234 = v323;
        (*(v322 + 32))(v276, v231, v323);
        v227 = MEMORY[0x1B8C7F1D0](v177, v233);
        v235 = *(v232 + 8);
        v235(v233, v234);
        v235(v177, v234);
        goto LABEL_72;
      }

      (*(v322 + 8))(v177, v323);
      goto LABEL_96;
    case 2u:
      sub_1B4E33F04(v186, v173);
      v215 = v366;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_96;
      }

      v216 = *v173;
      v217 = *v215;
      v218 = sub_1B4F66134();
      v220 = v219;
      if (v218 == sub_1B4F66134() && v220 == v221)
      {
        goto LABEL_45;
      }

      v267 = sub_1B4F68D54();

      if ((v267 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_46;
    case 3u:
      sub_1B4E33F04(v186, v169);
      v223 = v366;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v224 = v324;
        v225 = v277;
        v226 = v325;
        (*(v324 + 32))(v277, v223, v325);
        v227 = sub_1B4F66734();
        v228 = *(v224 + 8);
        v228(v225, v226);
        v228(v169, v226);
        goto LABEL_72;
      }

      (*(v324 + 8))(v169, v325);
      goto LABEL_96;
    case 4u:
      sub_1B4E33F04(v186, v165);
      v209 = *v165;
      v210 = v366;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_86;
      }

      sub_1B4EDD738(v209, *v210);
      goto LABEL_65;
    case 5u:
      v202 = v300;
      sub_1B4E33F04(v186, v300);
      v238 = v366;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v204 = v326;
        v205 = v278;
        v206 = v327;
        (*(v326 + 32))(v278, v238, v327);
        v207 = MEMORY[0x1B8C80280](v202, v205);
        goto LABEL_71;
      }

      (*(v326 + 8))(v202, v327);
      goto LABEL_96;
    case 6u:
      sub_1B4E33F04(v186, v158);
      v229 = *v158;
      v230 = v366;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_86;
    case 7u:
      sub_1B4E33F04(v186, v154);
      v229 = *v154;
      v230 = v366;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_86;
      }

LABEL_50:
      sub_1B4EDDAE8(v229, *v230);
      goto LABEL_65;
    case 8u:
      sub_1B4E33F04(v186, v150);
      v248 = *v150;
      v249 = v366;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_86;
      }

      v201 = sub_1B4EDDE98(v248, *v249);
      goto LABEL_65;
    case 9u:
      v202 = v301;
      sub_1B4E33F04(v186, v301);
      v212 = v366;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v204 = v328;
        v205 = v279;
        v206 = v329;
        (*(v328 + 32))(v279, v212, v329);
        v207 = MEMORY[0x1B8C802E0](v202, v205);
        goto LABEL_71;
      }

      (*(v328 + 8))(v202, v329);
      goto LABEL_96;
    case 0xAu:
      v202 = v302;
      sub_1B4E33F04(v186, v302);
      v247 = v366;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v204 = v330;
        v205 = v280;
        v206 = v331;
        (*(v330 + 32))(v280, v247, v331);
        v207 = sub_1B4F66434();
        goto LABEL_71;
      }

      (*(v330 + 8))(v202, v331);
      goto LABEL_96;
    case 0xBu:
      v202 = v303;
      sub_1B4E33F04(v186, v303);
      v208 = v366;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v204 = v332;
        v205 = v281;
        v206 = v333;
        (*(v332 + 32))(v281, v208, v333);
        v207 = MEMORY[0x1B8C80160](v202, v205);
        goto LABEL_71;
      }

      (*(v332 + 8))(v202, v333);
      goto LABEL_96;
    case 0xCu:
      v202 = v305;
      sub_1B4E33F04(v186, v305);
      v211 = v366;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v204 = v334;
        v205 = v282;
        v206 = v335;
        (*(v334 + 32))(v282, v211, v335);
        v207 = sub_1B4F665F4();
        goto LABEL_71;
      }

      (*(v334 + 8))(v202, v335);
      goto LABEL_96;
    case 0xDu:
      v202 = v306;
      sub_1B4E33F04(v186, v306);
      v245 = v366;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v204 = v336;
        v205 = v283;
        v206 = v337;
        (*(v336 + 32))(v283, v245, v337);
        v207 = MEMORY[0x1B8C7FEC0](v202, v205);
        goto LABEL_71;
      }

      (*(v336 + 8))(v202, v337);
      goto LABEL_96;
    case 0xEu:
      v202 = v307;
      sub_1B4E33F04(v186, v307);
      v203 = v366;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v204 = v338;
        v205 = v284;
        v206 = v339;
        (*(v338 + 32))(v284, v203, v339);
        v207 = MEMORY[0x1B8C80C70](v202, v205);
        goto LABEL_71;
      }

      (*(v338 + 8))(v202, v339);
      goto LABEL_96;
    case 0xFu:
      v202 = v308;
      sub_1B4E33F04(v186, v308);
      v222 = v366;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v204 = v340;
        v205 = v285;
        v206 = v341;
        (*(v340 + 32))(v285, v222, v341);
        v207 = MEMORY[0x1B8C81310](v202, v205);
        goto LABEL_71;
      }

      (*(v340 + 8))(v202, v341);
      goto LABEL_96;
    case 0x10u:
      v198 = v304;
      sub_1B4E33F04(v186, v304);
      v199 = *v198;
      v200 = v366;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_86;
      }

      sub_1B4EDE050(v199, *v200);
      goto LABEL_65;
    case 0x11u:
      v202 = v310;
      sub_1B4E33F04(v186, v310);
      v236 = v366;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v204 = v342;
        v205 = v286;
        v206 = v343;
        (*(v342 + 32))(v286, v236, v343);
        v207 = MEMORY[0x1B8C80430](v202, v205);
        goto LABEL_71;
      }

      (*(v342 + 8))(v202, v343);
      goto LABEL_96;
    case 0x12u:
      v202 = v311;
      sub_1B4E33F04(v186, v311);
      v246 = v366;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v204 = v344;
        v205 = v287;
        v206 = v345;
        (*(v344 + 32))(v287, v246, v345);
        v207 = sub_1B4F65DD4();
        goto LABEL_71;
      }

      (*(v344 + 8))(v202, v345);
      goto LABEL_96;
    case 0x13u:
      v202 = v312;
      sub_1B4E33F04(v186, v312);
      v251 = v366;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v204 = v346;
        v206 = v347;
        v205 = v288;
        (*(v346 + 32))(v288, v251, v347);
        v207 = MEMORY[0x1B8C7F6A0](v202, v205);
        goto LABEL_71;
      }

      v260 = v346;
      v259 = v347;
      goto LABEL_95;
    case 0x14u:
      v202 = v313;
      sub_1B4E33F04(v186, v313);
      v237 = v366;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v204 = v348;
        v206 = v349;
        v205 = v289;
        (*(v348 + 32))(v289, v237, v349);
        v207 = MEMORY[0x1B8C7FBC0](v202, v205);
        goto LABEL_71;
      }

      v260 = v348;
      v259 = v349;
      goto LABEL_95;
    case 0x15u:
      v239 = v309;
      sub_1B4E33F04(v186, v309);
      v241 = *v239;
      v240 = v239[1];
      v242 = v366;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_86;
      }

      v243 = *v242;
      v244 = v242[1];
      if (v241 == v243 && v240 == v244)
      {
LABEL_45:

        goto LABEL_46;
      }

      v268 = sub_1B4F68D54();

      if ((v268 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_46;
    case 0x16u:
      v202 = v314;
      sub_1B4E33F04(v186, v314);
      v250 = v366;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v204 = v350;
        v206 = v351;
        v205 = v290;
        (*(v350 + 32))(v290, v250, v351);
        v207 = MEMORY[0x1B8C7F4F0](v202, v205);
        goto LABEL_71;
      }

      v260 = v350;
      v259 = v351;
      goto LABEL_95;
    case 0x17u:
      v202 = v315;
      sub_1B4E33F04(v186, v315);
      v252 = v366;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v204 = v352;
        v206 = v353;
        v205 = v291;
        (*(v352 + 32))(v291, v252, v353);
        v207 = MEMORY[0x1B8C7E740](v202, v205);
        goto LABEL_71;
      }

      v260 = v352;
      v259 = v353;
      goto LABEL_95;
    case 0x18u:
      v202 = v317;
      sub_1B4E33F04(v186, v317);
      v214 = v366;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v204 = v354;
        v206 = v355;
        v205 = v292;
        (*(v354 + 32))(v292, v214, v355);
        v207 = MEMORY[0x1B8C7F960](v202, v205);
        goto LABEL_71;
      }

      v260 = v354;
      v259 = v355;
      goto LABEL_95;
    case 0x19u:
      v202 = v319;
      sub_1B4E33F04(v186, v319);
      v213 = v366;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v204 = v356;
        v206 = v357;
        v205 = v293;
        (*(v356 + 32))(v293, v213, v357);
        v207 = sub_1B4F66AE4();
        goto LABEL_71;
      }

      v260 = v356;
      v259 = v357;
      goto LABEL_95;
    case 0x1Au:
      v202 = v320;
      sub_1B4E33F04(v186, v320);
      v257 = v366;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v204 = v358;
        v206 = v359;
        v205 = v294;
        (*(v358 + 32))(v294, v257, v359);
        v207 = MEMORY[0x1B8C80950](v202, v205);
        goto LABEL_71;
      }

      v260 = v358;
      v259 = v359;
      goto LABEL_95;
    case 0x1Bu:
      v191 = v318;
      sub_1B4E33F04(v186, v318);
      v192 = v366;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v193 = *(v295 + 48);
        v194 = v297;
        sub_1B4E340C4(v191, v297);
        sub_1B4E340C4(v192, v194 + v193);
        v195 = v298;
        v196 = *(v298 + 48);
        v197 = v299;
        if (v196(v194, 1, v299) == 1)
        {
          if (v196(v194 + v193, 1, v197) == 1)
          {
            sub_1B4DD2BC4(v194, &qword_1EB8F4898, &qword_1B4F6E548);
LABEL_46:
            sub_1B4E3FC44(v189);
            v227 = 1;
            return v227 & 1;
          }
        }

        else
        {
          v266 = v274;
          sub_1B4E3C968(v194, v274);
          if (v196(v194 + v193, 1, v197) != 1)
          {
            v269 = v273;
            (*(v195 + 32))(v273, v194 + v193, v197);
            sub_1B4E3FCA0(&qword_1EB8F5118, MEMORY[0x1E69CCD78]);
            v270 = sub_1B4F67F54();
            v271 = *(v195 + 8);
            v271(v269, v197);
            v271(v266, v197);
            sub_1B4DD2BC4(v194, &qword_1EB8F4898, &qword_1B4F6E548);
            if (v270)
            {
              goto LABEL_46;
            }

            goto LABEL_108;
          }

          (*(v195 + 8))(v266, v197);
        }

        sub_1B4DD2BC4(v194, &qword_1EB8F5108, &qword_1B4F70D80);
LABEL_108:
        sub_1B4E3FC44(v189);
        goto LABEL_97;
      }

      sub_1B4DD2BC4(v191, &qword_1EB8F4898, &qword_1B4F6E548);
LABEL_96:
      sub_1B4DD2BC4(v186, &qword_1EB8F5110, &qword_1B4F70D88);
LABEL_97:
      v227 = 0;
      return v227 & 1;
    case 0x1Cu:
      v253 = v316;
      sub_1B4E33F04(v186, v316);
      v254 = *v253;
      v255 = v366;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
LABEL_86:

        goto LABEL_96;
      }

      sub_1B4EDE400(v254, *v255);
LABEL_65:
      v227 = v201;

      goto LABEL_72;
    case 0x1Du:
      v202 = v321;
      sub_1B4E33F04(v186, v321);
      v256 = v366;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v204 = v360;
        v206 = v361;
        v205 = v296;
        (*(v360 + 32))(v296, v256, v361);
        v207 = MEMORY[0x1B8C807E0](v202, v205);
LABEL_71:
        v227 = v207;
        v258 = *(v204 + 8);
        v258(v205, v206);
        v258(v202, v206);
        goto LABEL_72;
      }

      v260 = v360;
      v259 = v361;
LABEL_95:
      (*(v260 + 8))(v202, v259);
      goto LABEL_96;
    default:
      sub_1B4E33F04(v186, v181);
      v190 = v366;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v362 + 8))(v181, v363);
        goto LABEL_96;
      }

      v263 = v362;
      v262 = v363;
      v264 = v275;
      (*(v362 + 32))(v275, v190, v363);
      v227 = MEMORY[0x1B8C7E9F0](v181, v264);
      v265 = *(v263 + 8);
      v265(v264, v262);
      v265(v181, v262);
LABEL_72:
      sub_1B4E3FC44(v189);
      return v227 & 1;
  }
}

uint64_t sub_1B4E3C968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4E3CA70()
{
  sub_1B4F65184();
  if (v0 <= 0x3F)
  {
    sub_1B4F65954();
    if (v1 <= 0x3F)
    {
      sub_1B4F66754();
      if (v2 <= 0x3F)
      {
        sub_1B4E3CCE8();
        if (v3 <= 0x3F)
        {
          sub_1B4F669F4();
          if (v4 <= 0x3F)
          {
            sub_1B4E3CD7C();
            if (v5 <= 0x3F)
            {
              sub_1B4E3CE10();
              if (v6 <= 0x3F)
              {
                sub_1B4F66A54();
                if (v7 <= 0x3F)
                {
                  sub_1B4F66454();
                  if (v8 <= 0x3F)
                  {
                    sub_1B4F668C4();
                    if (v9 <= 0x3F)
                    {
                      sub_1B4F66604();
                      if (v10 <= 0x3F)
                      {
                        sub_1B4F66624();
                        if (v11 <= 0x3F)
                        {
                          sub_1B4F673D4();
                          if (v12 <= 0x3F)
                          {
                            sub_1B4F67A94();
                            if (v13 <= 0x3F)
                            {
                              sub_1B4E3CE68();
                              if (v14 <= 0x3F)
                              {
                                sub_1B4F66BA4();
                                if (v15 <= 0x3F)
                                {
                                  sub_1B4F65DE4();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1B4F65E04();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1B4F66354();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1B4F65C64();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1B4F64ED4();
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1B4F660C4();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1B4F66AF4();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1B4F670C4();
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1B4E3CEFC();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1B4E3CF54();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1B4F66F74();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
      }
    }
  }
}

void sub_1B4E3CCE8()
{
  if (!qword_1EDB6DAE0)
  {
    sub_1B4F679C4();
    sub_1B4E3FCA0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DAE0);
    }
  }
}

void sub_1B4E3CD7C()
{
  if (!qword_1EDB6DAF0)
  {
    sub_1B4F67124();
    sub_1B4E3FCA0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DAF0);
    }
  }
}

void sub_1B4E3CE10()
{
  if (!qword_1EDB6DA98)
  {
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DA98);
    }
  }
}

void sub_1B4E3CE68()
{
  if (!qword_1EDB6DB08)
  {
    sub_1B4F66674();
    sub_1B4E3FCA0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DB08);
    }
  }
}

void sub_1B4E3CEFC()
{
  if (!qword_1EDB70040)
  {
    sub_1B4F67074();
    v0 = sub_1B4F687D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB70040);
    }
  }
}

void sub_1B4E3CF54()
{
  if (!qword_1EDB6DAE8)
  {
    sub_1B4F67154();
    sub_1B4E3FCA0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
    v0 = sub_1B4F68554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB6DAE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteBrowsingJournalProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteBrowsingJournalProperty.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4E3D324()
{
  result = qword_1EB8F4E20;
  if (!qword_1EB8F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E20);
  }

  return result;
}

unint64_t sub_1B4E3D37C()
{
  result = qword_1EB8F4E28;
  if (!qword_1EB8F4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E28);
  }

  return result;
}

unint64_t sub_1B4E3D3D4()
{
  result = qword_1EB8F4E30;
  if (!qword_1EB8F4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E30);
  }

  return result;
}

unint64_t sub_1B4E3D42C()
{
  result = qword_1EB8F4E38;
  if (!qword_1EB8F4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E38);
  }

  return result;
}

unint64_t sub_1B4E3D484()
{
  result = qword_1EB8F4E40;
  if (!qword_1EB8F4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E40);
  }

  return result;
}

unint64_t sub_1B4E3D4DC()
{
  result = qword_1EB8F4E48;
  if (!qword_1EB8F4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E48);
  }

  return result;
}

unint64_t sub_1B4E3D534()
{
  result = qword_1EB8F4E50;
  if (!qword_1EB8F4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E50);
  }

  return result;
}

unint64_t sub_1B4E3D58C()
{
  result = qword_1EB8F4E58;
  if (!qword_1EB8F4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E58);
  }

  return result;
}

unint64_t sub_1B4E3D5E4()
{
  result = qword_1EB8F4E60;
  if (!qword_1EB8F4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E60);
  }

  return result;
}

unint64_t sub_1B4E3D63C()
{
  result = qword_1EB8F4E68;
  if (!qword_1EB8F4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E68);
  }

  return result;
}

unint64_t sub_1B4E3D694()
{
  result = qword_1EB8F4E70;
  if (!qword_1EB8F4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E70);
  }

  return result;
}

unint64_t sub_1B4E3D6EC()
{
  result = qword_1EB8F4E78;
  if (!qword_1EB8F4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E78);
  }

  return result;
}

unint64_t sub_1B4E3D744()
{
  result = qword_1EB8F4E80;
  if (!qword_1EB8F4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E80);
  }

  return result;
}

unint64_t sub_1B4E3D79C()
{
  result = qword_1EB8F4E88;
  if (!qword_1EB8F4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E88);
  }

  return result;
}

unint64_t sub_1B4E3D7F4()
{
  result = qword_1EB8F4E90;
  if (!qword_1EB8F4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E90);
  }

  return result;
}

unint64_t sub_1B4E3D84C()
{
  result = qword_1EB8F4E98;
  if (!qword_1EB8F4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4E98);
  }

  return result;
}

unint64_t sub_1B4E3D8A4()
{
  result = qword_1EB8F4EA0;
  if (!qword_1EB8F4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EA0);
  }

  return result;
}

unint64_t sub_1B4E3D8FC()
{
  result = qword_1EB8F4EA8;
  if (!qword_1EB8F4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EA8);
  }

  return result;
}

unint64_t sub_1B4E3D954()
{
  result = qword_1EB8F4EB0;
  if (!qword_1EB8F4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EB0);
  }

  return result;
}

unint64_t sub_1B4E3D9AC()
{
  result = qword_1EB8F4EB8;
  if (!qword_1EB8F4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EB8);
  }

  return result;
}

unint64_t sub_1B4E3DA04()
{
  result = qword_1EB8F4EC0;
  if (!qword_1EB8F4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EC0);
  }

  return result;
}

unint64_t sub_1B4E3DA5C()
{
  result = qword_1EB8F4EC8;
  if (!qword_1EB8F4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EC8);
  }

  return result;
}

unint64_t sub_1B4E3DAB4()
{
  result = qword_1EB8F4ED0;
  if (!qword_1EB8F4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4ED0);
  }

  return result;
}

unint64_t sub_1B4E3DB0C()
{
  result = qword_1EB8F4ED8;
  if (!qword_1EB8F4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4ED8);
  }

  return result;
}

unint64_t sub_1B4E3DB64()
{
  result = qword_1EB8F4EE0;
  if (!qword_1EB8F4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EE0);
  }

  return result;
}

unint64_t sub_1B4E3DBBC()
{
  result = qword_1EB8F4EE8;
  if (!qword_1EB8F4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EE8);
  }

  return result;
}

unint64_t sub_1B4E3DC14()
{
  result = qword_1EB8F4EF0;
  if (!qword_1EB8F4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EF0);
  }

  return result;
}

unint64_t sub_1B4E3DC6C()
{
  result = qword_1EB8F4EF8;
  if (!qword_1EB8F4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4EF8);
  }

  return result;
}

unint64_t sub_1B4E3DCC4()
{
  result = qword_1EB8F4F00;
  if (!qword_1EB8F4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F00);
  }

  return result;
}

unint64_t sub_1B4E3DD1C()
{
  result = qword_1EB8F4F08;
  if (!qword_1EB8F4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F08);
  }

  return result;
}

unint64_t sub_1B4E3DD74()
{
  result = qword_1EB8F4F10;
  if (!qword_1EB8F4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F10);
  }

  return result;
}

unint64_t sub_1B4E3DDCC()
{
  result = qword_1EB8F4F18;
  if (!qword_1EB8F4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F18);
  }

  return result;
}

unint64_t sub_1B4E3DE24()
{
  result = qword_1EB8F4F20;
  if (!qword_1EB8F4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F20);
  }

  return result;
}

unint64_t sub_1B4E3DE7C()
{
  result = qword_1EB8F4F28;
  if (!qword_1EB8F4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F28);
  }

  return result;
}

unint64_t sub_1B4E3DED4()
{
  result = qword_1EB8F4F30;
  if (!qword_1EB8F4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F30);
  }

  return result;
}

unint64_t sub_1B4E3DF2C()
{
  result = qword_1EB8F4F38;
  if (!qword_1EB8F4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F38);
  }

  return result;
}

unint64_t sub_1B4E3DF84()
{
  result = qword_1EB8F4F40;
  if (!qword_1EB8F4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F40);
  }

  return result;
}

unint64_t sub_1B4E3DFDC()
{
  result = qword_1EB8F4F48;
  if (!qword_1EB8F4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F48);
  }

  return result;
}

unint64_t sub_1B4E3E034()
{
  result = qword_1EB8F4F50;
  if (!qword_1EB8F4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F50);
  }

  return result;
}

unint64_t sub_1B4E3E08C()
{
  result = qword_1EB8F4F58;
  if (!qword_1EB8F4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F58);
  }

  return result;
}

unint64_t sub_1B4E3E0E4()
{
  result = qword_1EB8F4F60;
  if (!qword_1EB8F4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F60);
  }

  return result;
}

unint64_t sub_1B4E3E13C()
{
  result = qword_1EB8F4F68;
  if (!qword_1EB8F4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F68);
  }

  return result;
}

unint64_t sub_1B4E3E194()
{
  result = qword_1EB8F4F70;
  if (!qword_1EB8F4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F70);
  }

  return result;
}

unint64_t sub_1B4E3E1EC()
{
  result = qword_1EB8F4F78;
  if (!qword_1EB8F4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F78);
  }

  return result;
}

unint64_t sub_1B4E3E244()
{
  result = qword_1EB8F4F80;
  if (!qword_1EB8F4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F80);
  }

  return result;
}

unint64_t sub_1B4E3E29C()
{
  result = qword_1EB8F4F88;
  if (!qword_1EB8F4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F88);
  }

  return result;
}

unint64_t sub_1B4E3E2F4()
{
  result = qword_1EB8F4F90;
  if (!qword_1EB8F4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F90);
  }

  return result;
}

unint64_t sub_1B4E3E34C()
{
  result = qword_1EB8F4F98;
  if (!qword_1EB8F4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4F98);
  }

  return result;
}

unint64_t sub_1B4E3E3A4()
{
  result = qword_1EB8F4FA0;
  if (!qword_1EB8F4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FA0);
  }

  return result;
}

unint64_t sub_1B4E3E3FC()
{
  result = qword_1EB8F4FA8;
  if (!qword_1EB8F4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FA8);
  }

  return result;
}

unint64_t sub_1B4E3E454()
{
  result = qword_1EB8F4FB0;
  if (!qword_1EB8F4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FB0);
  }

  return result;
}

unint64_t sub_1B4E3E4AC()
{
  result = qword_1EB8F4FB8;
  if (!qword_1EB8F4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FB8);
  }

  return result;
}

unint64_t sub_1B4E3E504()
{
  result = qword_1EB8F4FC0;
  if (!qword_1EB8F4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FC0);
  }

  return result;
}

unint64_t sub_1B4E3E55C()
{
  result = qword_1EB8F4FC8;
  if (!qword_1EB8F4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FC8);
  }

  return result;
}

unint64_t sub_1B4E3E5B4()
{
  result = qword_1EB8F4FD0;
  if (!qword_1EB8F4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FD0);
  }

  return result;
}

unint64_t sub_1B4E3E60C()
{
  result = qword_1EB8F4FD8;
  if (!qword_1EB8F4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FD8);
  }

  return result;
}

unint64_t sub_1B4E3E664()
{
  result = qword_1EB8F4FE0;
  if (!qword_1EB8F4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FE0);
  }

  return result;
}

unint64_t sub_1B4E3E6BC()
{
  result = qword_1EB8F4FE8;
  if (!qword_1EB8F4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FE8);
  }

  return result;
}

unint64_t sub_1B4E3E714()
{
  result = qword_1EB8F4FF0;
  if (!qword_1EB8F4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FF0);
  }

  return result;
}

unint64_t sub_1B4E3E76C()
{
  result = qword_1EB8F4FF8;
  if (!qword_1EB8F4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4FF8);
  }

  return result;
}

unint64_t sub_1B4E3E7C4()
{
  result = qword_1EB8F5000;
  if (!qword_1EB8F5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5000);
  }

  return result;
}

unint64_t sub_1B4E3E81C()
{
  result = qword_1EB8F5008;
  if (!qword_1EB8F5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5008);
  }

  return result;
}

unint64_t sub_1B4E3E874()
{
  result = qword_1EB8F5010;
  if (!qword_1EB8F5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5010);
  }

  return result;
}

unint64_t sub_1B4E3E8CC()
{
  result = qword_1EB8F5018;
  if (!qword_1EB8F5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5018);
  }

  return result;
}

unint64_t sub_1B4E3E924()
{
  result = qword_1EB8F5020;
  if (!qword_1EB8F5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5020);
  }

  return result;
}

unint64_t sub_1B4E3E97C()
{
  result = qword_1EB8F5028;
  if (!qword_1EB8F5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5028);
  }

  return result;
}

unint64_t sub_1B4E3E9D4()
{
  result = qword_1EB8F5030;
  if (!qword_1EB8F5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5030);
  }

  return result;
}

unint64_t sub_1B4E3EA2C()
{
  result = qword_1EB8F5038;
  if (!qword_1EB8F5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5038);
  }

  return result;
}

unint64_t sub_1B4E3EA84()
{
  result = qword_1EB8F5040;
  if (!qword_1EB8F5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5040);
  }

  return result;
}

unint64_t sub_1B4E3EADC()
{
  result = qword_1EB8F5048;
  if (!qword_1EB8F5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5048);
  }

  return result;
}

unint64_t sub_1B4E3EB34()
{
  result = qword_1EB8F5050;
  if (!qword_1EB8F5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5050);
  }

  return result;
}

unint64_t sub_1B4E3EB8C()
{
  result = qword_1EB8F5058;
  if (!qword_1EB8F5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5058);
  }

  return result;
}

unint64_t sub_1B4E3EBE4()
{
  result = qword_1EB8F5060;
  if (!qword_1EB8F5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5060);
  }

  return result;
}

unint64_t sub_1B4E3EC3C()
{
  result = qword_1EB8F5068;
  if (!qword_1EB8F5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5068);
  }

  return result;
}

unint64_t sub_1B4E3EC94()
{
  result = qword_1EB8F5070;
  if (!qword_1EB8F5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5070);
  }

  return result;
}

unint64_t sub_1B4E3ECEC()
{
  result = qword_1EB8F5078;
  if (!qword_1EB8F5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5078);
  }

  return result;
}

unint64_t sub_1B4E3ED44()
{
  result = qword_1EB8F5080;
  if (!qword_1EB8F5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5080);
  }

  return result;
}

unint64_t sub_1B4E3ED9C()
{
  result = qword_1EB8F5088;
  if (!qword_1EB8F5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5088);
  }

  return result;
}

unint64_t sub_1B4E3EDF4()
{
  result = qword_1EB8F5090;
  if (!qword_1EB8F5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5090);
  }

  return result;
}

unint64_t sub_1B4E3EE4C()
{
  result = qword_1EB8F5098;
  if (!qword_1EB8F5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5098);
  }

  return result;
}

unint64_t sub_1B4E3EEA4()
{
  result = qword_1EB8F50A0;
  if (!qword_1EB8F50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50A0);
  }

  return result;
}

unint64_t sub_1B4E3EEFC()
{
  result = qword_1EB8F50A8;
  if (!qword_1EB8F50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50A8);
  }

  return result;
}

unint64_t sub_1B4E3EF54()
{
  result = qword_1EB8F50B0;
  if (!qword_1EB8F50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50B0);
  }

  return result;
}

unint64_t sub_1B4E3EFAC()
{
  result = qword_1EB8F50B8;
  if (!qword_1EB8F50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50B8);
  }

  return result;
}

unint64_t sub_1B4E3F004()
{
  result = qword_1EB8F50C0;
  if (!qword_1EB8F50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50C0);
  }

  return result;
}

unint64_t sub_1B4E3F05C()
{
  result = qword_1EB8F50C8;
  if (!qword_1EB8F50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50C8);
  }

  return result;
}

unint64_t sub_1B4E3F0B4()
{
  result = qword_1EB8F50D0;
  if (!qword_1EB8F50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50D0);
  }

  return result;
}

unint64_t sub_1B4E3F10C()
{
  result = qword_1EB8F50D8;
  if (!qword_1EB8F50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50D8);
  }

  return result;
}

unint64_t sub_1B4E3F164()
{
  result = qword_1EB8F50E0;
  if (!qword_1EB8F50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50E0);
  }

  return result;
}

unint64_t sub_1B4E3F1BC()
{
  result = qword_1EB8F50E8;
  if (!qword_1EB8F50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50E8);
  }

  return result;
}

unint64_t sub_1B4E3F214()
{
  result = qword_1EB8F50F0;
  if (!qword_1EB8F50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50F0);
  }

  return result;
}

unint64_t sub_1B4E3F26C()
{
  result = qword_1EB8F50F8;
  if (!qword_1EB8F50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F50F8);
  }

  return result;
}

unint64_t sub_1B4E3F2C4()
{
  result = qword_1EB8F5100;
  if (!qword_1EB8F5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5100);
  }

  return result;
}

uint64_t sub_1B4E3F318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED000073676E6952;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEF6E6F6973736553 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4F80B00 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80B20 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073 || (sub_1B4F68D54() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80B40 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4F80B60 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80B80 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4F80BA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80BD0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4F80BF0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80C10 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80C30 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F80C50 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F80C70 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F80CA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4F80CC0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4F80CE0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4F80D00 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4F80D20 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164 || (sub_1B4F68D54() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x75517478654E7075 && a2 == 0xEF6D657449657565 || (sub_1B4F68D54() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4F80D40 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4F80D60 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F80D80 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80DA0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80DC0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4F80DE0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F80E00 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_1B4F68D54();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t sub_1B4E3FC44(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingJournalProperty();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E3FCA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicTrackEnded.musicTrack.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MusicTrackEnded.init(musicTrack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MusicTrackEnded()
{
  result = qword_1EB8F5120;
  if (!qword_1EB8F5120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E3FE58()
{
  result = sub_1B4F64AD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RecentSearchTermsUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66BB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecentSearchTermsUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RecentSearchTermsUpdated()
{
  result = qword_1EDB70848;
  if (!qword_1EDB70848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4001C()
{
  result = sub_1B4F66BB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4E40088(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t GatedResource.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  GatedResource.init(logger:)(a1);
  return v5;
}

uint64_t GatedResource.init(logger:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for GatedResource.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v15 - v8);
  v10 = qword_1EDB73080;
  v11 = sub_1B4F67C54();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v1 + v10, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  *v9 = sub_1B4F68204();
  swift_storeEnumTagMultiPayload();
  v13 = sub_1B4E41C00();
  (*(v5 + 8))(v9, v4);
  (*(v12 + 8))(a1, v11);
  *(v1 + qword_1EDB73088) = v13;
  return v1;
}

uint64_t GatedResource.deinit()
{
  v1 = qword_1EDB73080;
  v2 = sub_1B4F67C54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EDB73088);

  return v0;
}

uint64_t GatedResource.__deallocating_deinit()
{
  GatedResource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GatedResource.queueCount.getter()
{
  v1 = *(v0 + qword_1EDB73088);
  v5 = *(*v0 + 80);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4E41C80(v1 + v2, &v6);
  os_unfair_lock_unlock((v1 + v3));
  return v6;
}

uint64_t sub_1B4E404E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GatedResource.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = (v15 - v9);
  (*(v5 + 16))(v15 - v9, a1, v4, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    result = (*(v5 + 8))(v10, v4);
    v13 = 0;
  }

  else
  {
    v14 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F682C4();
    v13 = sub_1B4F68234();
  }

  *a2 = v13;
  *(a2 + 8) = EnumCaseMultiPayload != 0;
  return result;
}

void GatedResource.query()(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1EDB73088);
  v6 = *(*v1 + 80);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4E41C9C(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B4E40724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GatedResource.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = (v17 - v11);
  (*(v7 + 16))(v17 - v11, a1, v6, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v7 + 8))(v12, v6);
    sub_1B4E4219C();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *v12;
    return swift_willThrow();
  }

  return (*(*(a2 - 8) + 32))(a3, v12, a2);
}

uint64_t GatedResource.fetch()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E408E8, 0, 0);
}

uint64_t sub_1B4E408E8()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_1B4E409B8;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x29286863746566, 0xE700000000000000, sub_1B4E41CB8, v6, v4);
}

uint64_t sub_1B4E409B8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E40AEC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_1B4E40B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EDB73088);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B4E42180((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

void sub_1B4E40BA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for GatedResource.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = (&v41 - v19);
  (*(v15 + 16))(&v41 - v19, a1, v14, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *v20;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F682C4();
      sub_1B4F682A4();
    }

    else
    {
      (*(v6 + 32))(v13, v20, v5);
      (*(v6 + 16))(v9, v13, v5);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      sub_1B4F682C4();
      sub_1B4F682B4();
      (*(v6 + 8))(v13, v5);
    }
  }

  else
  {
    (*(v15 + 8))(a1, v14);
    v22 = *v20;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    v23 = sub_1B4F682C4();
    sub_1B4F68D14();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = *(v24 + 80);
    swift_allocObject();
    sub_1B4F681D4();
    (*(v24 + 16))(v27, v42, v23);
    sub_1B4F68254();
    v28 = sub_1B4F681F4();

    *a1 = v28;
    swift_storeEnumTagMultiPayload();
    v44 = a3;
    v29 = sub_1B4F67F94();
    v31 = v30;

    v32 = sub_1B4F67C34();
    v33 = sub_1B4F685E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446722;
      v36 = sub_1B4DC4F88(v29, v31, &v44);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2082;
      v43 = v5;
      swift_getMetatypeMetadata();
      v37 = sub_1B4F67F94();
      v39 = sub_1B4DC4F88(v37, v38, &v44);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2048;
      v40 = sub_1B4F68234();

      if (__OFADD__(v40, 1))
      {
        __break(1u);
      }

      else
      {
        *(v34 + 24) = v40 + 1;

        _os_log_impl(&dword_1B4DC2000, v32, v33, "[%{public}s] GatedResource<%{public}s> is now at %ld", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v35, -1, -1);
        MEMORY[0x1B8C831D0](v34, -1, -1);
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

void GatedResource.release(with:)()
{
  v1 = *(v0 + qword_1EDB73088);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  sub_1B4F68254();
  sub_1B4F687D4();
  v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_1B4E41CC0((v1 + v3), &v7);
  os_unfair_lock_unlock((v1 + v4));
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    swift_getWitnessTable();
    sub_1B4F68114();
  }
}

uint64_t sub_1B4E41268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a4;
  v64 = a3;
  v6 = *(*a2 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v68 = sub_1B4F68F14();
  v66 = *(v68 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v55 - v18;
  v19 = type metadata accessor for GatedResource.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = (&v55 - v24);
  (*(v20 + 16))(&v55 - v24, a1, v19, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *(v20 + 8);
  if (EnumCaseMultiPayload)
  {
    result = v27(v25, v19);
    v29 = 0;
  }

  else
  {
    v59 = v7;
    v60 = v15;
    v61 = v11;
    v62 = a1;
    v27(a1, v19);
    v29 = *v25;
    v70 = a2;
    v58 = sub_1B4F67F94();
    v31 = v30;
    v32 = v65;
    v33 = v64;
    v63 = *(v66 + 16);
    v63(v65, v64, v68);
    swift_bridgeObjectRetain_n();
    v34 = sub_1B4F67C34();
    v35 = sub_1B4F685E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v57 = v19;
      v55 = v34;
      v37 = v36;
      v56 = swift_slowAlloc();
      v70 = v56;
      *v37 = 136447234;
      v38 = sub_1B4DC4F88(v58, v31, &v70);
      LODWORD(v58) = v35;
      v39 = v38;

      *(v37 + 4) = v39;
      *(v37 + 12) = 2082;
      v40 = v6;
      v69 = v6;
      swift_getMetatypeMetadata();
      v41 = sub_1B4F67F94();
      v43 = sub_1B4DC4F88(v41, v42, &v70);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2048;
      sub_1B4F682C4();
      v44 = sub_1B4F68234();

      *(v37 + 24) = v44;

      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2080;
      v45 = v68;
      v63(v60, v32, v68);
      v46 = v33;
      v47 = sub_1B4F67F94();
      v49 = v48;
      v50 = v45;
      v6 = v40;
      (*(v66 + 8))(v32, v50);
      v51 = sub_1B4DC4F88(v47, v49, &v70);

      *(v37 + 44) = v51;
      v33 = v46;
      v52 = v55;
      _os_log_impl(&dword_1B4DC2000, v55, v58, "[%{public}s] GatedResource<%{public}s> (%ld) released with %{mask.hash}s", v37, 0x34u);
      v53 = v56;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v53, -1, -1);
      MEMORY[0x1B8C831D0](v37, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v66 + 8))(v32, v68);
    }

    v54 = v61;
    v63(v61, v33, v68);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v62 = *v54;
    }

    else
    {
      (*(*(v6 - 8) + 32))(v62, v54, v6);
    }

    result = swift_storeEnumTagMultiPayload();
  }

  *v67 = v29;
  return result;
}

uint64_t sub_1B4E417E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v3 = sub_1B4F682C4();
  return sub_1B4E4CECC(a2, v3);
}

Swift::Void __swiftcall GatedResource.reset()()
{
  v1 = *(v0 + qword_1EDB73088);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4E41CF8((v1 + v2));

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4E41900(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for GatedResource.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10._countAndFlagsBits = 0x29287465736572;
  v11._object = 0x80000001B4F80E30;
  v11._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0xE700000000000000;
  Logger.trace(file:function:)(v11, v10);
  (*(v5 + 16))(v9, a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v5 + 8);
  if (!EnumCaseMultiPayload)
  {
    return v13(v9, v4);
  }

  v13(a1, v4);
  v13(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  *a1 = sub_1B4F68204();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B4E41B1C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return GatedResource.fetch()(a1);
}

uint64_t sub_1B4E41C00()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B4F68A24();
  return sub_1B4F68A14();
}

uint64_t sub_1B4E41D18()
{
  result = sub_1B4F67C54();
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

uint64_t sub_1B4E41DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F682C4();
  result = sub_1B4F68254();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4E41EB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1B4E41FC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1B4E4219C()
{
  result = qword_1EB8F5138;
  if (!qword_1EB8F5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5138);
  }

  return result;
}

uint64_t sub_1B4E421F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void *PrivacyPreferenceClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E435D8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E423DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v12 = a4(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v20 - v15;
  ObjectType = swift_getObjectType();
  v18 = a5(0);
  (*(*(v18 - 8) + 16))(v16, a1, v18);
  (*(a3 + 8))(v16, v12, a6, ObjectType, a3);
  return sub_1B4E443F0(v16, a7);
}

uint64_t PrivacyPreferenceClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4E42600(char a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v18 = a2;
  v17 = a1;
  v14 = *(v12 + 32);
  v15 = a3(0);
  return v14(&v18, &v17, MEMORY[0x1E69E6370], v15, MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], a4, a5, ObjectType, v12);
}

uint64_t PrivacyPreferenceClient.queryAllPrivacyAcknowledgements()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 273;
  v4 = *(v2 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v6 = sub_1B4E21010();
  v7 = sub_1B4E21094();
  return v4(&v9, v5, v6, v7, ObjectType, v2);
}

uint64_t PrivacyPreferenceClient.queryPrivacyAcknowledgement(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v35 = a2;
  v37 = a4;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  v13 = *(v4 + 16);
  v12 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v39 = 273;
  v15 = *(v12 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v17 = sub_1B4E21010();
  v18 = sub_1B4E21094();
  v31 = v11;
  v15(&v39, v16, v17, v18, ObjectType, v12);
  v19 = swift_allocObject();
  v20 = v35;
  *(v19 + 16) = v38;
  *(v19 + 24) = v20;
  v21 = v36 & 1;
  *(v19 + 32) = v36 & 1;
  v22 = v32;
  v23 = v33;
  v24 = v11;
  v25 = v34;
  (*(v33 + 16))(v32, v24, v34);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v23 + 32))(v27 + v26, v22, v25);
  v28 = (v27 + ((v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_1B4E4386C;
  v28[1] = v19;
  sub_1B4E43934(v38, v20, v21);
  sub_1B4F66674();
  sub_1B4F675F4();
  return (*(v23 + 8))(v31, v25);
}

uint64_t sub_1B4E42A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = sub_1B4F66674();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v41 = &v40 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v40 - v27;
  v29 = *a1;
  sub_1B4E43934(a2, a3, a4 & 1);

  v31 = sub_1B4E43C28(v30, a2, a3, a4 & 1);
  sub_1B4DE5390(a2, a3, a4 & 1);
  sub_1B4E24418(v31, v28);

  v43 = v28;
  sub_1B4E44044(v28, v24);
  if ((*(v10 + 48))(v24, 1, v9) == 1)
  {
    sub_1B4E440B4(v24);
    sub_1B4E43934(a2, a3, a4 & 1);
    sub_1B4F66654();
    v32 = v42;
    (*(v10 + 16))(v42, v16, v9);
    v33 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v34 = swift_allocObject();
    (*(v10 + 32))(v34 + v33, v32, v9);
    sub_1B4F67604();
  }

  else
  {
    v35 = *(v10 + 32);
    v36 = v41;
    v35(v41, v24, v9);
    (*(v10 + 16))(v16, v36, v9);
    v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v38 = swift_allocObject();
    v35((v38 + v37), v16, v9);
    sub_1B4F67604();
    v16 = v36;
  }

  (*(v10 + 8))(v16, v9);
  return sub_1B4E440B4(v43);
}

uint64_t PrivacyPreferenceClient.insertPrivacyAcknowledgement(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1B4F66674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E43934(a1, a2, a3 & 1);
  sub_1B4F66654();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 274;
  (*(v14 + 16))(&v18, v12, v7, MEMORY[0x1E69CC5D0], MEMORY[0x1E69CC5D8], ObjectType, v14);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1B4E42F58(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = a2;
  v13 = *(v11 + 16);
  v14 = a3(0);
  return v13(&v17, a1, v14, a4, a5, ObjectType, v11);
}

uint64_t sub_1B4E43038(__int16 a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v15 = a1;
  v12 = *(v10 + 24);
  v13 = a2(0);
  return v12(&v15, v13, a3, a4, ObjectType, v10);
}

uint64_t sub_1B4E431E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1B4F66674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  sub_1B4E43934(a1, a2, a3 & 1);
  sub_1B4F66654();
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  ObjectType = swift_getObjectType();
  v19 = 274;
  (*(v15 + 16))(&v19, v12, v7, MEMORY[0x1E69CC5D0], MEMORY[0x1E69CC5D8], ObjectType, v15);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1B4E4337C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  v14 = *(*v7 + 16);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v16 = *(v13 + 16);
  v17 = a5(0);
  return v16(&v19, a1, v17, a6, a7, ObjectType, v13);
}

uint64_t sub_1B4E4345C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = *(*v6 + 24);
  v12 = *(*v6 + 16);
  ObjectType = swift_getObjectType();
  v17 = a3;
  v14 = *(v11 + 24);
  v15 = a4(0);
  return v14(&v17, v15, a5, a6, ObjectType, v11);
}

unint64_t *sub_1B4E43508(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E43934(a4, a5, a6 & 1);
    sub_1B4E43994(v11, a2, a3, a4, a5, a6 & 1);
    v13 = v12;

    sub_1B4DE5390(a4, a5, a6 & 1);
    sub_1B4DE5390(a4, a5, a6 & 1);
    return v13;
  }

  return result;
}

void *sub_1B4E435D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 53;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = sub_1B4F668C4();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E44468, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CC750], MEMORY[0x1E69CC758]);

  v17 = a1;
  v16 = 54;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = sub_1B4F66624();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E4446C, v11, ObjectType, v12, &protocol witness table for XPCClient, MEMORY[0x1E69CC550], MEMORY[0x1E69CC558]);

  v17 = a1;
  v16 = 55;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1B4F673D4();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E44470, v13, ObjectType, v14, &protocol witness table for XPCClient, MEMORY[0x1E69CD058], MEMORY[0x1E69CD060]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E437EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC6AB0(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4E43878(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4E1DE10(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4E43934(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1B4E43994(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v38 = a2;
  v46 = a4;
  v47 = a5;
  v39 = a1;
  v56 = sub_1B4F66674();
  v8 = *(*(v56 - 8) + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v56, v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v14 = 0;
  v48 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v44 = v10 + 16;
  v45 = v10;
  v43 = v10 + 8;
  v42 = a6 & 1;
  v22 = v10;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v49 = (v20 - 1) & v20;
LABEL_11:
    v26 = v23 | (v14 << 6);
    v27 = *(v48 + 48);
    v28 = *(v22 + 72);
    v41 = v26;
    (*(v22 + 16))(v13, v27 + v28 * v26, v56, v11);
    v29 = sub_1B4F66664();
    v31 = v30;
    v53 = v29;
    v54 = v30;
    v33 = v32 & 1;
    v55 = v32 & 1;
    v50 = v46;
    v51 = v47;
    v52 = v42;
    sub_1B4E44228();
    sub_1B4E4427C();
    v34 = sub_1B4F65064();
    sub_1B4DE5390(v29, v31, v33);
    (*(v22 + 8))(v13, v56);
    v20 = v49;
    if (v34)
    {
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_15:
        v36 = v48;

        sub_1B4EE6A20(v39, v38, v40, v36);
        return;
      }
    }
  }

  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_15;
    }

    v25 = *(v16 + 8 * v14);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E43C28(int64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v65 = *MEMORY[0x1E69E9840];
  v53 = sub_1B4F66674();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v53, v12);
  v52 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v45 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v45;
  v55 = a4;
  v56 = a2;
  v57 = a3;
  v16 = sub_1B4E43934(a2, a3, a4 & 1);
  if (v14 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v44[1] = v5;
    v44[0] = v44;
    MEMORY[0x1EEE9AC00](v16, v17);
    v46 = v44 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v15);
    v47 = 0;
    v18 = 0;
    v54 = a1;
    v19 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 56);
    a1 = (v20 + 63) >> 6;
    v49 = v10 + 8;
    v50 = v10 + 16;
    v5 = v10;
    v51 = v10;
    v10 = v53;
    while (v22)
    {
      v23 = __clz(__rbit64(v22));
      v58 = (v22 - 1) & v22;
LABEL_12:
      v26 = v23 | (v18 << 6);
      v27 = *(v54 + 48);
      v28 = *(v5 + 72);
      v48 = v26;
      v29 = v52;
      (*(v5 + 16))(v52, v27 + v28 * v26, v10);
      v15 = sub_1B4F66664();
      v31 = v30;
      v62 = v15;
      v63 = v30;
      v33 = v32 & 1;
      v64 = v32 & 1;
      v59 = v56;
      v60 = v57;
      v61 = v55 & 1;
      sub_1B4E44228();
      sub_1B4E4427C();
      v34 = sub_1B4F65064();
      v35 = v31;
      v5 = v51;
      sub_1B4DE5390(v15, v35, v33);
      (*(v5 + 8))(v29, v10);
      v22 = v58;
      if (v34)
      {
        *&v46[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        if (__OFADD__(v47++, 1))
        {
          __break(1u);
LABEL_16:
          v37 = sub_1B4EE6A20(v46, v45, v47, v54);
          sub_1B4DE5390(v56, v57, v55 & 1);
          goto LABEL_17;
        }
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= a1)
      {
        goto LABEL_16;
      }

      v25 = *(v19 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v58 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v40 = swift_slowAlloc();
  v41 = v55;
  v43 = v56;
  v42 = v57;
  sub_1B4E43934(v56, v57, v55 & 1);
  v37 = sub_1B4E43508(v40, v45, a1, v43, v42, v41 & 1);

  MEMORY[0x1B8C831D0](v40, -1, -1);
  sub_1B4DE5390(v43, v42, v41 & 1);
LABEL_17:
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t sub_1B4E44044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4E440B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_1B4F66674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1B4E44228()
{
  result = qword_1EB8F5148;
  if (!qword_1EB8F5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5148);
  }

  return result;
}

unint64_t sub_1B4E4427C()
{
  result = qword_1EB8F5150;
  if (!qword_1EB8F5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5150);
  }

  return result;
}

uint64_t sub_1B4E443F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HealthKitStandaloneWorkoutJobProcessed.healthKitStandaloneWorkoutJob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67194();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HealthKitStandaloneWorkoutJobProcessed.init(healthKitStandaloneWorkoutJob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HealthKitStandaloneWorkoutJobProcessed()
{
  result = qword_1EDB6E0D0;
  if (!qword_1EDB6E0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E445CC()
{
  result = sub_1B4F67194();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4E44684()
{
  result = qword_1EB8F45F8;
  if (!qword_1EB8F45F8)
  {
    sub_1B4F64F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F45F8);
  }

  return result;
}

uint64_t sub_1B4E44728(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = sub_1B4F64F54();
  sub_1B4E44684();
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69CB130], v5);
  *(swift_allocObject() + 16) = v6;
  a4(0);

  return sub_1B4F67604();
}

id sub_1B4E448C8()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t dispatch thunk of CatalogClientProtocol.queryCatalogSyncAnchor()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 336) + **(a3 + 336));
  v7 = *(*(a3 + 336) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4DE13F0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CatalogClientProtocol.enumerateCatalogWorkoutReferences(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 352) + **(a4 + 352));
  v9 = *(*(a4 + 352) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B4DE0D94;

  return v12(a1, a2, a3, a4);
}

uint64_t MultiUserSessionUpdated.multiUserSession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65DB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionUpdated.init(multiUserSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionUpdated()
{
  result = qword_1EDB708D8;
  if (!qword_1EDB708D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1B4E4505C(uint64_t a1)
{
  v2 = sub_1B4F65804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_1B4F677E4();
  v30 = v8;
  [v8 setActivityType_];
  sub_1B4F67734();
  v10 = sub_1B4F657F4();
  v12 = v11;
  v14 = v13;
  v31 = *(v3 + 8);
  v32 = v3 + 8;
  v31(v7, v2);
  v33 = v10;
  v34 = v12;
  v35 = v14 & 1;
  v36 = 0;
  sub_1B4E4537C();
  sub_1B4E453D0();
  LOBYTE(v3) = sub_1B4F65074();
  v15 = v12;
  v16 = a1;
  sub_1B4DE5390(v10, v15, v14 & 1);
  if (v3)
  {
    goto LABEL_3;
  }

  sub_1B4F67734();
  v17 = sub_1B4F657F4();
  v19 = v18;
  v21 = v20;
  v31(v7, v2);
  v33 = v17;
  v34 = v19;
  v21 &= 1u;
  v35 = v21;
  v36 = 1;
  v22 = sub_1B4F65074();
  sub_1B4DE5390(v17, v19, v21);
  if (v22)
  {
LABEL_3:
    v23 = v30;
    v24 = v30;
    [v24 setLocationType_];
    v25 = 1;
    [v24 setShouldDisambiguateLocation_];
  }

  else
  {
    v23 = v30;
    v25 = 2;
    [v30 setLocationType_];
  }

  [v23 setFitnessPlusMediaType_];
  sub_1B4F67734();
  sub_1B4F655E4();
  v31(v7, v2);
  v26 = sub_1B4F67F64();

  [v23 setFitnessPlusCatalogWorkoutId_];

  v27 = sub_1B4F678C4();
  (*(*(v27 - 8) + 8))(v16, v27);
  return v23;
}

unint64_t sub_1B4E4537C()
{
  result = qword_1EB8F5158;
  if (!qword_1EB8F5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5158);
  }

  return result;
}

unint64_t sub_1B4E453D0()
{
  result = qword_1EB8F5160;
  if (!qword_1EB8F5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5160);
  }

  return result;
}

uint64_t MetricTopicRoutingBehavior.clickStreamTopic(isSubscribed:platform:)(char a1, unsigned __int8 a2, unsigned int a3)
{
  if (a3 <= 1u)
  {
    if (a1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    if (a3)
    {
      return a3;
    }

    else
    {
      return v3;
    }
  }

  if (a3 == 2)
  {
    return 3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v8 = &unk_1F2CD4228;
    }

    else
    {
      v8 = &unk_1F2CD4258;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    v8 = &unk_1F2CD41E8;
LABEL_17:
    v7 = sub_1B4DE2E78(v8);
    goto LABEL_18;
  }

  v6 = sub_1B4DE2E78(&unk_1F2CD4178);
  v7 = sub_1B4E45848(&unk_1F2CD41C0, v6);
LABEL_18:
  v9 = sub_1B4E45514(0x22u, v7);

  if (a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  if (v9)
  {
    return 4;
  }

  else
  {
    return v10;
  }
}

BOOL sub_1B4E45514(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v3);
  v5 = sub_1B4F68EC4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_1B4E45660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v30 = a5;
  v8 = a3(0);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  v21 = 0;
  v31 = a2;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 56);
  v25 = (v22 + 63) >> 6;
  while (v24)
  {
    v26 = v21;
LABEL_9:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    sub_1B4E2C950(*(a1 + 48) + *(v29 + 72) * (v27 | (v26 << 6)), v20, a4);
    sub_1B4E2CA18(v20, v12, a4);
    v30(v16, v12);
    sub_1B4E2C9B8(v16, a4);
  }

  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return;
    }

    v24 = *(a1 + 56 + 8 * v26);
    ++v21;
    if (v24)
    {
      v21 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E45848(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B4E79538(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1B4E458A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v22 - v13;
  v23 = a2;
  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v9, v19, v4, v12);
      sub_1B4E78E28(v14, v9);
      (*(v16 - 8))(v14, v4);
      v19 += v20;
      --v15;
    }

    while (v15);
    return v23;
  }

  return a2;
}

uint64_t CommentaryEventStarted.commentaryEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65A44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CommentaryEventStarted.init(commentaryEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CommentaryEventStarted()
{
  result = qword_1EB8F5168;
  if (!qword_1EB8F5168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E45B84()
{
  result = sub_1B4F65A44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AssetRequest.ExpirationPolicy.interval.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 && !a1)
  {
    return sub_1B4F684D4();
  }

  else
  {
    return sub_1B4F684C4();
  }
}

uint64_t BlockingPromise.init(_:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1B4F67674();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for BlockingPromise();
  *(a2 + *(result + 28)) = a3;
  return result;
}

uint64_t BlockingPromise.resolve()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v39 = a2;
  v46 = sub_1B4F67D94();
  v45 = *(v46 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - v10;
  v12 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v13 = sub_1B4F68F14();
  v14 = sub_1B4F687D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v42 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  v23 = dispatch_semaphore_create(0);
  v40 = *(v13 - 8);
  v41 = v13;
  (*(v40 + 56))(v22, 1, 1, v13);
  v24 = sub_1B4E41C7C(v22, v14);
  (*(v15 + 8))(v22, v14);
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = v24;
  v25[4] = v23;
  v43 = v12;
  sub_1B4F67674();

  v26 = v23;
  sub_1B4F67644();

  sub_1B4F67D84();
  v27 = *(v2 + *(v44 + 28));
  sub_1B4F684E4();
  sub_1B4F67DB4();
  v28 = *(v45 + 8);
  v29 = v26;
  v30 = v46;
  v28(v7, v46);
  LOBYTE(v7) = sub_1B4F68714();
  v31 = (v28)(v11, v30);
  if (v7)
  {
    sub_1B4E463C8();
    swift_allocError();
    *v33 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v31, v32);
    v35 = v42;
    v34 = v43;
    *(&v39 - 2) = v43;
    sub_1B4E40088(sub_1B4E463AC, (&v39 - 4), v24);
    if ((*(v40 + 48))(v35, 1, v41) == 1)
    {
      sub_1B4E463C8();
      swift_allocError();
      *v36 = 1;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        return (*(*(v34 - 8) + 32))(v39, v35, v34);
      }

      v37 = *v35;
    }
  }

  swift_willThrow();
}

uint64_t sub_1B4E4613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a4;
  v6[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F14();
  sub_1B4F687D4();
  sub_1B4E40088(sub_1B4E464BC, v6, a2);
  return sub_1B4F68724();
}

uint64_t sub_1B4E461E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F68F14();
  v5 = sub_1B4F687D4();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = *(v4 - 8);
  (*(v6 + 16))(a1, a2, v4);
  return (*(v6 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1B4E462FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68F14();
  v4 = sub_1B4F687D4();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

unint64_t sub_1B4E463C8()
{
  result = qword_1EB8F5178;
  if (!qword_1EB8F5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5178);
  }

  return result;
}

uint64_t sub_1B4E4641C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B4F67674();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ActivityRingsUpdated.activityRings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityRingsUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityRingsUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ActivityRingsUpdated()
{
  result = qword_1EB8F5180;
  if (!qword_1EB8F5180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityRingsUpdated.init(activityRings:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65184();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ActivityRingsUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E46688()
{
  result = sub_1B4F65184();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E467B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_1B4DF4344(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B4E281EC();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_1B4E8BE20(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_1B4E5E444(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_1B4E468A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B4DC933C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B4E5E574(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1B4E48D78(a1);
    sub_1B4F63230(a2, a3, v10);

    return sub_1B4E48D78(v10);
  }

  return result;
}

uint64_t EventHub.__allocating_init(queue:dispatchStrategy:timerProvider:)(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9, v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_1B4E488FC(a1, a2, v13, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

uint64_t sub_1B4E46A68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4F687D4();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v39 - v24;
  v40 = a2;
  v41 = v6;
  v26 = *(v6 + 80);
  v27 = a5;
  v29 = v28;
  v44 = a4;
  v45 = v27;
  v46 = a2;
  v47 = a3;
  v30 = v23;
  v42 = a3;
  v48 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A0, &qword_1B4F71178);
  sub_1B4E40088(sub_1B4E48DE0, v43, v26);
  (*(v29 + 16))(v21, v25, v30);
  if ((*(v12 + 48))(v21, 1, a4) == 1)
  {
    v31 = *(v29 + 8);
    v31(v21, v30);
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v32 = sub_1B4F67C54();
    __swift_project_value_buffer(v32, qword_1EDB72490);
    v33 = v42;

    v34 = sub_1B4F67C34();
    v35 = sub_1B4F685C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1B4DC4F88(v40, v33, &v49);
      _os_log_impl(&dword_1B4DC2000, v34, v35, "Attempted to deliver %{public}s, but found no queued event", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1B8C831D0](v37, -1, -1);
      MEMORY[0x1B8C831D0](v36, -1, -1);
    }

    return (v31)(v25, v30);
  }

  else
  {
    (*(v12 + 32))(v15, v21, a4);
    sub_1B4DCD994(v15, a4, v27);
    (*(v12 + 8))(v15, a4);
    return (*(v29 + 8))(v25, v30);
  }
}

uint64_t sub_1B4E46E20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  v55 = a5;
  v11 = sub_1B4F687D4();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v52 = &v47 - v18;
  v19 = type metadata accessor for PublishRecord();
  v56 = sub_1B4F687D4();
  v20 = *(v56 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v56, v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v47 - v27;
  v50 = a1;
  v51 = a3;
  v29 = *a1;
  v30 = *(v29 + 16);
  v49 = a2;
  if (v30 && (v31 = sub_1B4DF4344(a2, a3), (v32 & 1) != 0))
  {
    sub_1B4DC40A0(*(v29 + 56) + 40 * v31, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5190, &qword_1B4F71168);
    v33 = swift_dynamicCast();
    v34 = *(v19 - 8);
    (*(v34 + 56))(v28, v33 ^ 1u, 1, v19);
  }

  else
  {
    v34 = *(v19 - 8);
    (*(v34 + 56))(v28, 1, 1, v19);
  }

  v35 = v56;
  (*(v20 + 16))(v25, v28, v56);
  v36 = v34;
  if ((*(v34 + 48))(v25, 1, v19) == 1)
  {
    (*(v20 + 8))(v25, v35);
    v37 = *(a4 - 8);
    v38 = v52;
    (*(v37 + 56))(v52, 1, 1, a4);
    v40 = v53;
    v39 = v54;
  }

  else
  {
    v48 = v16;
    v38 = v52;
    v40 = v53;
    v39 = v54;
    (*(v53 + 16))(v52, &v25[*(v19 + 28)], v54);
    (*(v36 + 8))(v25, v19);
    v37 = *(a4 - 8);
    if ((*(v37 + 48))(v38, 1, a4) != 1)
    {
      v41 = v55;
      (*(v37 + 32))(v55, v38, a4);
      v42 = *(v37 + 56);
      v43 = v48;
      v42(v48, 1, 1, a4);
      v57[3] = v19;
      v57[4] = &protocol witness table for PublishRecord<A>;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      PublishRecord.init(lastDelivery:queuedEvent:timer:)(v43, 0, boxed_opaque_existential_1, a6);
      v45 = v51;

      sub_1B4E468A4(v57, v49, v45);
      v42(v41, 0, 1, a4);
      return (*(v20 + 8))(v28, v56);
    }
  }

  (*(v40 + 8))(v38, v39);
  (*(v37 + 56))(v55, 1, 1, a4);
  return (*(v20 + 8))(v28, v56);
}

uint64_t EventHub.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t EventHub.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4E473D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v61 = a7;
  v62 = a5;
  v67 = a4;
  v15 = sub_1B4F64964();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = v65[8];
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F687D4();
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v61 - v23;
  v25 = type metadata accessor for PublishRecord();
  v26 = sub_1B4F687D4();
  v63 = *(v26 - 8);
  v64 = v26;
  v27 = *(v63 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v61 - v30;
  v72 = *(v25 - 8);
  v32 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v29, v33);
  v71 = (&v61 - v34);
  v70 = a1;
  v35 = *a1;
  if (*(*a1 + 16) && (v36 = sub_1B4DF4344(a2, a3), (v37 & 1) != 0))
  {
    v38 = a3;
    sub_1B4DC40A0(*(v35 + 56) + 40 * v36, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5190, &qword_1B4F71168);
    v39 = swift_dynamicCast();
    v40 = v72;
    (*(v72 + 56))(v31, v39 ^ 1u, 1, v25);
    if ((*(v40 + 48))(v31, 1, v25) != 1)
    {
      v41 = v71;
      (*(v40 + 32))(v71, v31, v25);
      v42 = a2;
      goto LABEL_8;
    }
  }

  else
  {
    v38 = a3;
    v40 = v72;
    (*(v72 + 56))(v31, 1, 1, v25);
  }

  (*(*(a6 - 8) + 56))(v24, 1, 1, a6);
  sub_1B4F648D4();
  sub_1B4F648A4();
  v44 = v43;
  (v65[1])(v19, v66);
  v41 = v71;
  PublishRecord.init(lastDelivery:queuedEvent:timer:)(v24, 0, v71, v44);
  v45 = (*(v40 + 48))(v31, 1, v25);
  v42 = a2;
  if (v45 != 1)
  {
    (*(v63 + 8))(v31, v64);
  }

LABEL_8:
  if (*(v41 + *(v25 + 32)))
  {
    v46 = *(a6 - 8);
    (*(v46 + 16))(v24, v67, a6);
    (*(v46 + 56))(v24, 0, 1, a6);
    v74 = v25;
    v75 = &protocol witness table for PublishRecord<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);

    sub_1B4EF8BB4(0.0, 1, v24, 0, v25, boxed_opaque_existential_1);
    (*(v68 + 8))(v24, v69);
    sub_1B4E468A4(v73, v42, v38);
    return (*(v72 + 8))(v41, v25);
  }

  else
  {
    if (a9 - (a8 - *v41) < 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = a9 - (a8 - *v41);
    }

    v50 = v62;
    v51 = v62[7];
    v52 = v62[8];
    v53 = __swift_project_boxed_opaque_existential_1(v62 + 4, v51);
    v64 = v50[2];
    v65 = v53;
    v54 = swift_allocObject();
    v55 = v61;
    *(v54 + 16) = a6;
    *(v54 + 24) = v55;
    *(v54 + 32) = v50;
    *(v54 + 40) = v42;
    *(v54 + 48) = v38;
    *(v54 + 56) = v49 + a8;
    v66 = v42;
    v56 = *(v52 + 8);

    v57 = v56(v64, sub_1B4E48D40, v54, v51, v52, v49);

    v58 = *(a6 - 8);
    (*(v58 + 16))(v24, v67, a6);
    (*(v58 + 56))(v24, 0, 1, a6);
    v74 = v25;
    v75 = &protocol witness table for PublishRecord<A>;
    v59 = __swift_allocate_boxed_opaque_existential_1(v73);

    swift_unknownObjectRetain();
    v60 = v71;
    sub_1B4EF8BB4(0.0, 1, v24, v57, v25, v59);
    swift_unknownObjectRelease();
    (*(v68 + 8))(v24, v69);
    sub_1B4E468A4(v73, v66, v38);
    swift_unknownObjectRelease();
    return (*(v72 + 8))(v60, v25);
  }
}

uint64_t EventHub.subscribe<A>(_:subscriptionToken:handler:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(sub_1B4E48A28, v10, a3, a4, a5);
}

double EventHub.subscribe<A>(_:subscriptionToken:handler:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = (*(a4 + 24))(a3, a4);

  Subscription.init(handler:)(a1, a2, a3, a4, v17);
  v13 = *(v6 + 72);
  os_unfair_lock_lock((v13 + 24));
  sub_1B4E47C90((v13 + 16), v12, v17);
  os_unfair_lock_unlock((v13 + 24));
  a5[3] = type metadata accessor for Subscription();
  a5[4] = &protocol witness table for Subscription<A>;
  v14 = swift_allocObject();
  *a5 = v14;
  result = *v17;
  v16 = v17[1];
  *(v14 + 16) = v17[0];
  *(v14 + 32) = v16;
  *(v14 + 48) = v18;
  return result;
}

void sub_1B4E47C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1B4DC8ED4(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46D0, &qword_1B4F6D0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F6CF50;
  v11 = type metadata accessor for Subscription();
  *(inited + 56) = v11;
  *(inited + 64) = &protocol witness table for Subscription<A>;
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a3 + 32);
  v20 = v9;
  (*(*(v11 - 8) + 16))(v18, a3, v11);
  sub_1B4DC8CA8(inited);
  v14 = v20;
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v18[0] = *a1;
  sub_1B4DC8DB0(v14, a2, isUniquelyReferenced_nonNull_native);
  *a1 = *&v18[0];
  v17 = *(a3 + 16);
  v18[0] = *a3;
  v18[1] = v17;
  v19 = *(a3 + 32);
  sub_1B4DC9238(v18);
}

uint64_t EventHub.subscribe<A>(_:subscriptionToken:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(a1, &unk_1B4F710D0, v12, a4, a5, a6);
}

{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a1;

  EventHub.subscribe<A>(_:subscriptionToken:handler:)(sub_1B4E48B0C, v12, a4, a5, a6);
}

uint64_t sub_1B4E47EF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B4DE13F0;

  return v6();
}

uint64_t sub_1B4E480A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v22 - v16;
  v18 = sub_1B4F68324();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v19 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a5;
  *(v20 + 5) = a6;
  *(v20 + 6) = a2;
  *(v20 + 7) = a3;
  (*(v11 + 32))(&v20[v19], &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  *&v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

  sub_1B4E4E620(0, 0, v17, &unk_1B4F71160, v20);
}

uint64_t sub_1B4E482AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v7 + 56) = v10;
  *v10 = v7;
  v10[1] = sub_1B4E483AC;

  return v12(a6);
}

uint64_t sub_1B4E483AC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E484E0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B4E484E0()
{
  v21 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    v11 = sub_1B4F68F84();
    v13 = sub_1B4DC4F88(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = v0[2];
    v15 = MEMORY[0x1B8C826C0](v0[3], v0[4]);
    v17 = sub_1B4DC4F88(v15, v16, &v20);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "Caught error while executing %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

unint64_t sub_1B4E486E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *a1;
  if (*(*a1 + 16))
  {
    a1 = sub_1B4DC8ED4(a2);
    if (a2)
    {
      v7 = *(*(v6 + 56) + 8 * a1);
    }
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v13[2] = a3;
  v9 = sub_1B4DDC5B8(sub_1B4E48BDC, v13, v8);
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  result = sub_1B4DC8DB0(v9, a2, isUniquelyReferenced_nonNull_native);
  *v5 = v14;
  return result;
}

uint64_t sub_1B4E487E4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_1B4F68D54();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_1B4E488FC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v17 = a5;
  v18 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, a3, v6);
  LOBYTE(v6) = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A8, &qword_1B4F71180);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  *(a4 + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B0, &qword_1B4F71188);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  *(a4 + 80) = v14;
  sub_1B4DC933C(&v16, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = v6;
  return a4;
}

uint64_t sub_1B4E48A28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1B4E48A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE13F0;

  return sub_1B4E47EF8(a1, v7);
}

uint64_t dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 24))();
}

{
  return (*(a8 + 32))();
}

{
  return (*(a8 + 40))();
}

{
  return (*(a8 + 48))();
}

uint64_t sub_1B4E48BFC(uint64_t a1)
{
  v3 = v1[5];
  v4 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(v1 + ((*(*(v1[4] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE13F0;

  return sub_1B4E482AC(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_1B4E48D40()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = v0[7];
  v6 = *(v0 + 4);
  return sub_1B4E46A68(v1, v3, v4, v1, v2, v5);
}

uint64_t sub_1B4E48D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5198, &qword_1B4F71170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BurnBarDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v3);
  return sub_1B4F669E4();
}

void *Session.token.getter()
{
  v0 = sub_1B4F676B4();
  v2 = v1;
  type metadata accessor for SessionToken();
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  v3[4] = v4;
  return v3;
}

uint64_t CatalogWorkout.metadata()@<X0>(uint64_t a1@<X8>)
{
  v24[17] = a1;
  v1 = sub_1B4F64824();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v24[1] = v24 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D0, &qword_1B4F711B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v24[11] = v24 - v16;
  v24[16] = sub_1B4F656F4();
  v24[15] = sub_1B4F65764();
  v24[14] = sub_1B4F65704();
  v24[13] = sub_1B4F656A4();
  v24[12] = sub_1B4F656B4();
  sub_1B4F656D4();
  v24[10] = sub_1B4F65644();
  v17 = sub_1B4F655E4();
  v24[8] = v18;
  v24[9] = v17;
  v24[7] = sub_1B4F656E4();
  v19 = sub_1B4F657B4();
  v24[5] = v20;
  v24[6] = v19;
  v24[4] = sub_1B4F65664();
  v21 = sub_1B4F65714();
  v24[2] = v22;
  v24[3] = v21;
  sub_1B4F656C4();
  v24[0] = sub_1B4F65624();
  sub_1B4F65784();
  sub_1B4F655F4();
  sub_1B4F65724();
  sub_1B4F65674();
  sub_1B4F65794();
  sub_1B4F65734();
  sub_1B4F65694();
  return sub_1B4F66524();
}