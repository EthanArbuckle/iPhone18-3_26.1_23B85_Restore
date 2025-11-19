uint64_t sub_265B9F9C4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265B9F0C8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B9FC20()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ValidateEncryptionKeyRequestProtobuf.encryptionKeys.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_265B9FE1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9FED8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B9FFB8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA0124(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA0A58(&qword_280037B68, type metadata accessor for ValidateEncryptionKeyRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA01C4(uint64_t a1)
{
  v2 = sub_265BA0A58(&qword_280037B40, type metadata accessor for ValidateEncryptionKeyRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA0230()
{
  sub_265BA0A58(&qword_280037B40, type metadata accessor for ValidateEncryptionKeyRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA02D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265BA6008();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265BA6410;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "encryptionKeys";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_265BA5FD8();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return sub_265BA5FE8();
}

uint64_t sub_265BA0460()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5D98();
        sub_265BA0A58(&qword_2813B5658, MEMORY[0x277CFB080]);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t sub_265BA056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (sub_265BA5D98(), sub_265BA0A58(&qword_2813B5658, MEMORY[0x277CFB080]), result = sub_265BA5FB8(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265BA0670(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_265B88EA8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_265BA5DE8();
  sub_265BA0A58(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA076C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265BA0A58(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA0828(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA0A58(&qword_280037B60, type metadata accessor for ValidateEncryptionKeyResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA08C8(uint64_t a1)
{
  v2 = sub_265BA0A58(&qword_280037B50, type metadata accessor for ValidateEncryptionKeyResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA0934()
{
  sub_265BA0A58(&qword_280037B50, type metadata accessor for ValidateEncryptionKeyResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA09B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B88EA8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265BA0A58(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA0A58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_265BA0D30()
{
  sub_265B98804();
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

SeymourServerProtocol::RecordField_optional __swiftcall RecordField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_265BA60D8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RecordField.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574707972636E65;
  }
}

uint64_t sub_265BA0EC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000265BA94D0;
  if (v2 == 1)
  {
    v5 = 0x8000000265BA94D0;
  }

  else
  {
    v3 = 0x696669746E656469;
    v5 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6574707972636E65;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE00736574794264;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6574707972636E65;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00736574794264;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265BA60E8();
  }

  return v11 & 1;
}

unint64_t sub_265BA0FD0()
{
  result = qword_280037B70;
  if (!qword_280037B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037B70);
  }

  return result;
}

uint64_t sub_265BA1024()
{
  v1 = *v0;
  sub_265BA6168();
  sub_265BA6058();

  return sub_265BA6188();
}

uint64_t sub_265BA10DC()
{
  *v0;
  *v0;
  sub_265BA6058();
}

uint64_t sub_265BA1180()
{
  v1 = *v0;
  sub_265BA6168();
  sub_265BA6058();

  return sub_265BA6188();
}

void sub_265BA1240(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736574794264;
  v4 = 0x8000000265BA94D0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574707972636E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for RecordField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordField(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ScoreEstimationProtobuf.markers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ScoreEstimationProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreEstimationProtobuf() + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreEstimationProtobuf()
{
  result = qword_280037BB0;
  if (!qword_280037BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreEstimationProtobuf() + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreEstimationProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for ScoreEstimationProtobuf() + 28);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA16C0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037B78);
  __swift_project_value_buffer(v0, qword_280037B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "markers";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "sampleCount";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreEstimationProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037580 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037B78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreEstimationProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_265BA5E88();
          break;
        case 2:
          type metadata accessor for ScoreEstimationMarkerProtobuf();
          sub_265BA21EC(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf);
          sub_265BA5EC8();
          break;
        case 1:
          sub_265BA5E78();
          break;
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_265BA5F68(), !v1))
  {
    if (*(*(v0 + 8) + 16))
    {
      type metadata accessor for ScoreEstimationMarkerProtobuf();
      sub_265BA21EC(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf);
      result = sub_265BA5FB8();
      if (v1)
      {
        return result;
      }

      if (!*(v0 + 16))
      {
        goto LABEL_9;
      }
    }

    else if (!*(v0 + 16))
    {
LABEL_9:
      v3 = v0 + *(type metadata accessor for ScoreEstimationProtobuf() + 28);
      return sub_265BA5DC8();
    }

    result = sub_265BA5F78();
    if (v1)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreEstimationProtobuf();
  sub_265BA21EC(&qword_280037B90, type metadata accessor for ScoreEstimationProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA1C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 28);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA1CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA21EC(&qword_280037BC8, type metadata accessor for ScoreEstimationProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA1D50@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037580 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037B78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265BA1DF8(uint64_t a1)
{
  v2 = sub_265BA21EC(&qword_280037BA0, type metadata accessor for ScoreEstimationProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA1E64()
{
  sub_265BA21EC(&qword_280037BA0, type metadata accessor for ScoreEstimationProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol23ScoreEstimationProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_265B8BBB0(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(type metadata accessor for ScoreEstimationProtobuf() + 28);
  sub_265BA5DE8();
  sub_265BA21EC(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

void sub_265BA20F8()
{
  sub_265BA2194();
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265BA2194()
{
  if (!qword_280037BC0)
  {
    type metadata accessor for ScoreEstimationMarkerProtobuf();
    v0 = sub_265BA6068();
    if (!v1)
    {
      atomic_store(v0, &qword_280037BC0);
    }
  }
}

uint64_t sub_265BA21EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ServerError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BD0, &qword_265BA90B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v113 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v113 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v113 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v113 - v17;
  v120 = sub_265BA5D88();
  v119 = *(v120 - 8);
  v19 = *(v119 + 64);
  v20 = MEMORY[0x28223BE20](v120);
  v118 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v113 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v113 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v113 - v28;
  result = MEMORY[0x28223BE20](v27);
  v32 = &v113 - v31;
  if (*(a1 + 8) == 1)
  {
    v33 = 10;
    v34 = 0;
    v35 = 0;
    switch(*a1)
    {
      case 1:
        v35 = 0;
        v34 = 1;
        goto LABEL_77;
      case 2:
        v34 = *(a1 + 16);
        v88 = *(a1 + 24);

        v33 = 5;
        goto LABEL_77;
      case 3:
        v35 = 0;
        v34 = 2;
        goto LABEL_77;
      case 4:
        v34 = *(a1 + 40);
        v90 = *(a1 + 48);

        v33 = 6;
        goto LABEL_77;
      case 5:
        v34 = *(a1 + 56);
        v91 = *(a1 + 64);

        v33 = 7;
        goto LABEL_77;
      case 6:
        v34 = *(a1 + 56);
        v89 = *(a1 + 64);

        v33 = 8;
        goto LABEL_77;
      case 7:
        goto LABEL_77;
      case 8:
        v34 = *(a1 + 56);
        v104 = *(a1 + 64);

        v33 = 9;
        goto LABEL_77;
      case 9:
        v76 = *(a1 + 32);
        v77 = *(v76 + 2);
        v114 = a1;
        if (v77)
        {
          v78 = 0;
          v79 = (v119 + 48);
          v118 = (v119 + 32);
          v80 = (v76 + 40);
          v81 = MEMORY[0x277D84F90];
          v117 = v76;
          v115 = v77;
          do
          {
            if (v78 >= *(v76 + 2))
            {
              goto LABEL_80;
            }

            v82 = *(v80 - 1);
            v83 = *v80;

            sub_265BA5D68();
            v84 = v120;
            if ((*v79)(v16, 1, v120) == 1)
            {
              result = sub_265BA2FD0(v16);
            }

            else
            {
              v85 = *v118;
              (*v118)(v29, v16, v84);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_265BA454C(0, v81[2] + 1, 1, v81);
              }

              v87 = v81[2];
              v86 = v81[3];
              if (v87 >= v86 >> 1)
              {
                v81 = sub_265BA454C(v86 > 1, v87 + 1, 1, v81);
              }

              v81[2] = v87 + 1;
              result = v85(v81 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v87, v29, v120);
              v76 = v117;
              v77 = v115;
            }

            ++v78;
            v80 += 2;
          }

          while (v77 != v78);
        }

        else
        {
          v81 = MEMORY[0x277D84F90];
        }

        v107 = sub_265BA4850(v81);

        v34 = v107;
        v35 = 0;
        v33 = 1;
        goto LABEL_76;
      case 0xALL:
        v92 = *(a1 + 32);
        v118 = *(v92 + 16);
        v114 = a1;
        if (v118)
        {
          v93 = 0;
          v94 = (v119 + 48);
          v117 = (v119 + 32);
          v95 = (v92 + 40);
          v96 = MEMORY[0x277D84F90];
          v97 = v120;
          v115 = v92;
          do
          {
            if (v93 >= *(v92 + 16))
            {
              goto LABEL_82;
            }

            v98 = *(v95 - 1);
            v99 = *v95;

            sub_265BA5D68();
            if ((*v94)(v13, 1, v97) == 1)
            {
              result = sub_265BA2FD0(v13);
            }

            else
            {
              v100 = *v117;
              (*v117)(v26, v13, v97);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_265BA454C(0, v96[2] + 1, 1, v96);
              }

              v102 = v96[2];
              v101 = v96[3];
              if (v102 >= v101 >> 1)
              {
                v96 = sub_265BA454C(v101 > 1, v102 + 1, 1, v96);
              }

              v96[2] = v102 + 1;
              v103 = v96 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v102;
              v97 = v120;
              result = v100(v103, v26, v120);
              v92 = v115;
            }

            ++v93;
            v95 += 2;
          }

          while (v118 != v93);
        }

        else
        {
          v96 = MEMORY[0x277D84F90];
        }

        v109 = sub_265BA4850(v96);

        v34 = v109;
        v35 = 0;
        v33 = 2;
        goto LABEL_76;
      case 0xBLL:
        v51 = *(a1 + 32);
        v52 = *(v51 + 16);
        v114 = a1;
        if (!v52)
        {
          v56 = MEMORY[0x277D84F90];
LABEL_67:
          v105 = sub_265BA4850(v56);

          v34 = v105;
          v35 = 0;
          v33 = 3;
          goto LABEL_76;
        }

        v53 = 0;
        v54 = (v119 + 48);
        v118 = (v119 + 32);
        v55 = (v51 + 40);
        v56 = MEMORY[0x277D84F90];
        v57 = v120;
        v115 = v52;
        while (v53 < *(v51 + 16))
        {
          v59 = *(v55 - 1);
          v58 = *v55;

          sub_265BA5D68();
          if ((*v54)(v10, 1, v57) == 1)
          {
            result = sub_265BA2FD0(v10);
          }

          else
          {
            v60 = *v118;
            (*v118)(v117, v10, v57);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_265BA454C(0, v56[2] + 1, 1, v56);
            }

            v62 = v56[2];
            v61 = v56[3];
            if (v62 >= v61 >> 1)
            {
              v56 = sub_265BA454C(v61 > 1, v62 + 1, 1, v56);
            }

            v56[2] = v62 + 1;
            v63 = v56 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v62;
            v57 = v120;
            result = v60(v63, v117, v120);
            v52 = v115;
          }

          ++v53;
          v55 += 2;
          if (v52 == v53)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        break;
      case 0xCLL:
        v64 = *(a1 + 32);
        v65 = *(v64 + 16);
        v114 = a1;
        if (v65)
        {
          v66 = 0;
          v67 = (v119 + 48);
          v117 = (v119 + 32);
          v68 = (v64 + 40);
          v69 = MEMORY[0x277D84F90];
          v115 = v64;
          do
          {
            if (v66 >= *(v64 + 16))
            {
              goto LABEL_79;
            }

            v70 = *(v68 - 1);
            v71 = *v68;

            sub_265BA5D68();
            v72 = v120;
            if ((*v67)(v7, 1, v120) == 1)
            {
              result = sub_265BA2FD0(v7);
            }

            else
            {
              v73 = *v117;
              (*v117)(v118, v7, v72);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_265BA454C(0, v69[2] + 1, 1, v69);
              }

              v75 = v69[2];
              v74 = v69[3];
              if (v75 >= v74 >> 1)
              {
                v69 = sub_265BA454C(v74 > 1, v75 + 1, 1, v69);
              }

              v69[2] = v75 + 1;
              result = v73(v69 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v75, v118, v120);
              v64 = v115;
            }

            ++v66;
            v68 += 2;
          }

          while (v65 != v66);
        }

        else
        {
          v69 = MEMORY[0x277D84F90];
        }

        v106 = sub_265BA4850(v69);

        v34 = v106;
        v35 = 0;
        v33 = 4;
        goto LABEL_76;
      default:
        v36 = *(a1 + 32);
        v118 = *(v36 + 16);
        v114 = a1;
        if (v118)
        {
          v37 = 0;
          v38 = (v119 + 48);
          v117 = (v119 + 32);
          v39 = (v36 + 40);
          v40 = MEMORY[0x277D84F90];
          v41 = v120;
          v42 = v36;
          v115 = v36;
          do
          {
            if (v37 >= *(v42 + 16))
            {
              goto LABEL_81;
            }

            v46 = *(v39 - 1);
            v45 = *v39;

            sub_265BA5D68();
            if ((*v38)(v18, 1, v41) == 1)
            {
              result = sub_265BA2FD0(v18);
            }

            else
            {
              v47 = *v117;
              (*v117)(v32, v18, v41);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_265BA454C(0, v40[2] + 1, 1, v40);
              }

              v49 = v40[2];
              v48 = v40[3];
              if (v49 >= v48 >> 1)
              {
                v40 = sub_265BA454C(v48 > 1, v49 + 1, 1, v40);
              }

              v40[2] = v49 + 1;
              v50 = v40 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v49;
              v41 = v120;
              result = v47(v50, v32, v120);
              v42 = v115;
            }

            ++v37;
            v39 += 2;
          }

          while (v118 != v37);
        }

        else
        {
          v40 = MEMORY[0x277D84F90];
        }

        v108 = sub_265BA4850(v40);

        v34 = v108;
        v35 = 0;
        v33 = 0;
LABEL_76:
        a1 = v114;
LABEL_77:
        v110 = v35;
        v111 = v33;
        result = sub_265BA2F74(a1);
        v112 = v116;
        *v116 = v34;
        v112[1] = v110;
        *(v112 + 16) = v111;
        return result;
    }
  }

  else
  {
    v43 = sub_265BA5CB8();
    sub_265BA4AAC(&qword_280037BD8, MEMORY[0x277D50940]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D50908], v43);
    swift_willThrow();
    return sub_265BA2F74(a1);
  }

  return result;
}

uint64_t sub_265BA2F74(uint64_t a1)
{
  v2 = type metadata accessor for ServerErrorProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265BA2FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BD0, &qword_265BA90B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServerError.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for ServerErrorProtobuf();
  sub_265BA4AAC(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf);
  return sub_265BA5F18();
}

uint64_t sub_265BA30F0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = result;
  if (a4 <= 4u)
  {
    if (a4 <= 1u)
    {
      if (!a4)
      {
        *result = 0;
LABEL_22:
        *(result + 8) = 1;
        v14 = sub_265BA32E0(a2);
        v15 = v5[4];

        v5[4] = v14;
        return result;
      }

      v8 = 9;
    }

    else if (a4 == 2)
    {
      v8 = 10;
    }

    else if (a4 == 3)
    {
      v8 = 11;
    }

    else
    {
      v8 = 12;
    }

    *result = v8;
    goto LABEL_22;
  }

  if (a4 <= 7u)
  {
    if (a4 == 5)
    {
      *result = 2;
      *(result + 8) = 1;
      v10 = *(result + 24);

      v5[2] = a2;
      v5[3] = a3;
    }

    else if (a4 == 6)
    {
      *result = 4;
      *(result + 8) = 1;
      v6 = *(result + 48);

      v5[5] = a2;
      v5[6] = a3;
    }

    else
    {
      *result = 5;
      *(result + 8) = 1;
      v16 = *(result + 64);

      v5[7] = a2;
      v5[8] = a3;
    }

    return result;
  }

  if (a4 == 8)
  {
    v9 = 6;
    goto LABEL_18;
  }

  if (a4 == 9)
  {
    v9 = 8;
LABEL_18:
    *result = v9;
    *(result + 8) = 1;
    v12 = *(result + 64);

    v5[7] = a2;
    v5[8] = a3;
    return result;
  }

  if (a2 | a3)
  {
    if (!(a2 ^ 1 | a3))
    {
      *result = 1;
      *(result + 8) = 1;
      return result;
    }

    v18 = 3;
  }

  else
  {
    v18 = 7;
  }

  *result = v18;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_265BA32E0(uint64_t a1)
{
  v37 = sub_265BA5D88();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_265BA4724(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_265BA6098();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_265BA5D78();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_265BA4724((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_265BA4A9C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_265BA4A9C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_265BA3600()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for ServerErrorProtobuf();
  sub_265BA4AAC(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf);
  return sub_265BA5F18();
}

uint64_t sub_265BA3718(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265BA5D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0]);
  v36 = a2;
  v13 = sub_265BA6028();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_265BA4AAC(&qword_280037928, MEMORY[0x277D53DA0]);
      v23 = sub_265BA6048();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_265BA3D54(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_265BA39F8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_265BA5D88();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  result = sub_265BA60B8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0]);
      result = sub_265BA6028();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_265BA3D54(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_265BA5D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_265BA39F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_265BA3FF8();
      goto LABEL_12;
    }

    sub_265BA4230(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0]);
  v15 = sub_265BA6028();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_265BA4AAC(&qword_280037928, MEMORY[0x277D53DA0]);
      v23 = sub_265BA6048();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_265BA60F8();
  __break(1u);
  return result;
}

void *sub_265BA3FF8()
{
  v1 = v0;
  v2 = sub_265BA5D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  v7 = *v0;
  v8 = sub_265BA60A8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_265BA4230(uint64_t a1)
{
  v2 = v1;
  v37 = sub_265BA5D88();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  v10 = sub_265BA60B8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0]);
      result = sub_265BA6028();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

size_t sub_265BA454C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BF0, &unk_265BA91A0);
  v10 = *(sub_265BA5D88() - 8);
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
  v15 = *(sub_265BA5D88() - 8);
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

char *sub_265BA4724(char *a1, int64_t a2, char a3)
{
  result = sub_265BA4744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265BA4744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE0, &qword_265BA9190);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265BA4850(uint64_t a1)
{
  v2 = sub_265BA5D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0]);
  result = MEMORY[0x26676C630](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_265BA3718(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_265BA4A9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_265BA4AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ExecuteTasksRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExecuteTasksRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExecuteTasksResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExecuteTasksResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExecuteTasksResponseProtobuf.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA4DE4()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037BF8);
  __swift_project_value_buffer(v0, qword_280037BF8);
  return sub_265BA5FF8();
}

uint64_t ExecuteTasksRequestProtobuf.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_265BA5E38();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static ExecuteTasksRequestProtobuf.== infix(_:_:)()
{
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA4FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5178(&unk_280037C90, type metadata accessor for ExecuteTasksRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA5070(uint64_t a1)
{
  v2 = sub_265BA5178(&qword_280037C40, type metadata accessor for ExecuteTasksRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA50DC()
{
  sub_265BA5178(&qword_280037C40, type metadata accessor for ExecuteTasksRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA5178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BA51C0()
{
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA5264()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037C10);
  __swift_project_value_buffer(v0, qword_280037C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "executedTasksCount";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_265BA5FD8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_265BA5FE8();
}

uint64_t ExecuteTasksResponseProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5E78();
    }
  }

  return result;
}

uint64_t ExecuteTasksResponseProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_265BA5F68(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static ExecuteTasksResponseProtobuf.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA55DC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265BA5178(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA5664@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA56D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5178(&qword_280037C88, type metadata accessor for ExecuteTasksResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA5774(uint64_t a1)
{
  v2 = sub_265BA5178(&qword_280037C58, type metadata accessor for ExecuteTasksResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA57E0()
{
  sub_265BA5178(&qword_280037C58, type metadata accessor for ExecuteTasksResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA5A9C(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA5B68()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265BA5BFC()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}