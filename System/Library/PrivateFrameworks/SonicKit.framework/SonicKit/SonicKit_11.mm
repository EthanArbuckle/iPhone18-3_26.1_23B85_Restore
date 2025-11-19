void sub_1D4DC248C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan();
  ContentManagementPlan.import(identifiers:in:)();
  ContentManagementPlan.prepare(content:in:facets:)();

  sub_1D4DC51F0(v0, v1, v2);
}

uint64_t ContentManagerBehavior.prepare(content:in:facets:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  sub_1D4E0C870();
  v0[9] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v0[10] = v7;
  v0[11] = v8;
  v9 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DC2624()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 48);
  v1[2] = v3;
  v1[3] = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D4DC1980;
  OUTLINED_FUNCTION_8_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC26EC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan();
  return ContentManagementPlan.prepare(content:in:facets:)();
}

uint64_t ContentManagerBehavior.relateContent(_:to:as:)()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v7 = *v6;
  v8 = v6[1];
  *(v1 + 48) = v0;
  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  *(v1 + 72) = *(v6 + 1);
  sub_1D4E0C870();
  *(v1 + 88) = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  *(v1 + 96) = v9;
  *(v1 + 104) = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4DC2848()
{
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v7 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v4;
  *(v3 + 48) = v7;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1D4DC2928;
  OUTLINED_FUNCTION_8_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC2928()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1D4DC2A84;
  }

  else
  {

    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_1D4DC2A2C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4DC2A2C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC2A84()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

void sub_1D4DC2AEC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan();
  ContentManagementPlan.relate(content:to:as:)();
}

uint64_t ContentManagerBehavior.facets(for:in:)()
{
  OUTLINED_FUNCTION_51();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  swift_getAssociatedTypeWitness();
  v1[8] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  v1[9] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[10] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45(AssociatedTypeWitness);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_117();
  v9 = swift_checkMetadataState();
  v1[13] = v9;
  OUTLINED_FUNCTION_45(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_147_0();
  v11 = swift_checkMetadataState();
  v1[16] = v11;
  OUTLINED_FUNCTION_45(v11);
  v1[17] = v12;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v13 = type metadata accessor for ContentRegistration();
  v1[20] = v13;
  OUTLINED_FUNCTION_45(v13);
  v1[21] = v14;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_1D4E0C870();
  v1[24] = OUTLINED_FUNCTION_111();
  sub_1D4D8E454();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_120();
  v1[25] = v15;
  v1[26] = v16;
  v17 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1D4DC2ED8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v19 = v0[9];
  v4 = v0[6];
  v5 = v0[5];
  v6 = v0[3];
  v7 = *(v4 + 40);
  v0[27] = v7;
  v0[28] = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xE03E000000000000;
  v7(v5, v4);
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  (*(v3 + 8))(v1, v2);
  v10 = swift_task_alloc();
  v0[29] = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v6;
  v18 = (*(v19 + 32) + **(v19 + 32));
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[30] = v11;
  *v11 = v12;
  v11[1] = sub_1D4DC30C0;
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[13];
  v16 = v0[9];

  return v18(v13, &unk_1D4E0E620, v10, v14, v15, v16);
}

uint64_t sub_1D4DC30C0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  *v4 = *v1;
  *(v3 + 248) = v0;

  (*(v6 + 8))(v5, v7);

  v8 = v2[26];
  v9 = v2[25];
  if (v0)
  {
    v10 = sub_1D4DC33EC;
  }

  else
  {
    v10 = sub_1D4DC3274;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D4DC3274()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v15 = v0[27];
  v16 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v13 = v0[6];
  v12 = v0[5];
  v9 = v0[4];
  v14 = v0[2];

  (*(v3 + 16))(v2, v1, v4);
  (*(v7 + 16))(v6, v9, v8);
  v15(v12, v13);
  FacetCollection.init(contentRegistration:environment:system:plan:)(v2, v6, v5, 0, v16, v14);
  (*(v3 + 8))(v1, v4);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_1D4DC33EC()
{
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DC3498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v11[2] = sub_1D4E0C870();
  v11[3] = sub_1D4E0C860();
  v13 = swift_task_alloc();
  v11[4] = v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v13 = v11;
  v13[1] = sub_1D4DC3654;

  return ContentRegistrationStorageOperations.registration(for:)(a1, a3, AssociatedTypeWitness, AssociatedConformanceWitness, v16, v17, v18, v19, a9);
}

uint64_t sub_1D4DC3654()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 40) = v0;

  sub_1D4D8E454();
  v6 = sub_1D4E0CD30();
  if (v0)
  {
    v7 = sub_1D4DC37F8;
  }

  else
  {
    v7 = sub_1D4DC37A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D4DC37A0()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC37F8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t ContentRegistration.id.getter()
{
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_91();

  return v1(v0);
}

uint64_t ContentRegistration.id.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ContentRegistration.SourceInfo.caseDescription.getter()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_48();
  v5 = v4 - v3;
  (*(v1 + 16))(v4 - v3);
  OUTLINED_FUNCTION_91();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_36_0();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_12();
      (*(v7 + 8))(v5);
      return 0x6F686563616C702ELL;
    }

    else
    {
      swift_getAssociatedTypeWitness();
      sub_1D4DBD70C();
      OUTLINED_FUNCTION_147_0();
      swift_getTupleTypeMetadata2();

      v11 = OUTLINED_FUNCTION_91();
      v12(v11);
      return 0x636572696465722ELL;
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_91();
    v10(v9);
    return 0x6566696C6175712ELL;
  }
}

uint64_t ContentRegistration.sourceInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  type metadata accessor for ContentRegistration.SourceInfo();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t ContentRegistration.sourceInfo.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  type metadata accessor for ContentRegistration.SourceInfo();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_1D4DC3C2C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 32);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t NetworkReachability.Obstacle.hashValue.getter()
{
  v1 = *v0;
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](v1);
  return sub_1D4E0D1F0();
}

uint64_t RelationshipKey.rawValue.setter()
{
  OUTLINED_FUNCTION_40_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RelationshipKey.version.setter()
{
  OUTLINED_FUNCTION_40_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

SonicKit::RelationshipKey __swiftcall RelationshipKey.init(rawValue:)(Swift::String rawValue)
{
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  *v1 = rawValue;
  result.rawValue = rawValue;
  return result;
}

SonicKit::RelationshipKey __swiftcall RelationshipKey.init(rawValue:version:)(Swift::String rawValue, Swift::String version)
{
  *v2 = rawValue;
  v2[1] = version;
  result.version.value = version;
  result.rawValue = rawValue;
  return result;
}

SonicKit::RelationshipKey __swiftcall RelationshipKey.with(version:)(Swift::String version)
{
  v3 = v2[1];
  v1->_countAndFlagsBits = *v2;
  v1->_object = v3;
  v1[1] = version;
  sub_1D4E0CA10();

  v4 = sub_1D4E0CA10();
  result.version.value._object = v7;
  result.version.value._countAndFlagsBits = v6;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

uint64_t RelationshipKey.unversioned.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0;
  return sub_1D4E0CA10();
}

double sub_1D4DC3F00@<D0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  RelationshipKey.init(rawValue:)(*a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  result = *&v6;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1D4DC3F48@<X0>(uint64_t *a1@<X8>)
{
  result = RelationshipKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4DC4070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_40_0();
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v10 + 16) = v14;
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_68_0(v14);

  return sub_1D4DC3498(v16, v17, v13, v11, v12, v18, v19, v20, a9);
}

unint64_t sub_1D4DC4150()
{
  result = qword_1EC7E3CC0;
  if (!qword_1EC7E3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3CC0);
  }

  return result;
}

unint64_t sub_1D4DC41A8()
{
  result = qword_1EC7E3CC8[0];
  if (!qword_1EC7E3CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7E3CC8);
  }

  return result;
}

uint64_t sub_1D4DC4210()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentRegistration.SourceInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4DC42C0(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = v8 + 16;
  if (v9 > v10)
  {
    v10 = v9;
  }

  v11 = 8;
  if (v10 > 8)
  {
    v11 = v10;
  }

  if (v6 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v5 + 80) & 0xF8 | 7;
  v14 = v7 + v13;
  if (a2 <= v12)
  {
    goto LABEL_29;
  }

  v15 = ((v14 & ~v13) + v11) | 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    if (v19 < 2)
    {
LABEL_29:
      if (v6 < 0xFD)
      {
        v23 = *(((a1 + v14) & ~v13) + v11);
        if (v23 >= 3)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v6, AssociatedTypeWitness);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_29;
  }

LABEL_19:
  v20 = (v17 - 1) << v16;
  if (v15 <= 3)
  {
    v21 = v15;
  }

  else
  {
    v20 = 0;
    v21 = 4;
  }

  switch(v21)
  {
    case 2:
      v22 = *a1;
      break;
    case 3:
      v22 = *a1 | (*(a1 + 2) << 16);
      break;
    case 4:
      v22 = *a1;
      break;
    default:
      v22 = *a1;
      break;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1D4DC44BC(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 16;
  if (v11 > v12)
  {
    v12 = v11;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v8 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v7 + 80) & 0xF8 | 7;
  v15 = v9 + v14;
  v16 = v12 | 1;
  v17 = ((v9 + v14) & ~v14) + (v12 | 1);
  v18 = 8 * v17;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v8 < 0xFD)
          {
            v24 = (&a1[v15] & ~v14);
            if (a2 > 0xFD)
            {
              v26 = a2 - 254;
              bzero(v24, v12 | 1);
              if (v16 <= 3)
              {
                *v24 = v26 & ~(-1 << (8 * v16));
              }

              else
              {
                *v24 = v26;
              }
            }

            else
            {
              v24[v12] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v13 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      bzero(a1, v17);
      if (v17 == 1)
      {
        *a1 = v20;
      }

      else
      {
        v25 = v20 & ~(-1 << v18);
        *a1 = v25;
        a1[2] = BYTE2(v25);
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D4DC477C()
{
  swift_getAssociatedTypeWitness();
  result = sub_1D4E0CD00();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      sub_1D4DBD70C();
      result = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D4DC488C(unsigned __int8 *a1, unsigned int a2)
{
  v4 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 8;
  v6 = v4 + 16;
  if (v5 > v6)
  {
    v6 = v5;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_21;
  }

  v7 = v6 | 1;
  v8 = 8 * (v6 | 1);
  if ((v6 | 1) <= 3)
  {
    v11 = (a2 + ~(-1 << v8) - 253) >> v8;
    if (v11 > 0xFFFE)
    {
      v9 = *&a1[v7];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFE)
    {
      v9 = *&a1[v7];
      if (!*&a1[v7])
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (!v11)
    {
LABEL_21:
      v14 = a1[v6];
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = a1[v7];
  if (!a1[v7])
  {
    goto LABEL_21;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void sub_1D4DC49B4(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = v6 + 16;
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = v8 | 1;
  v10 = 8 * (v8 | 1);
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = (a3 + ~(-1 << v10) - 253) >> v10;
    if (v14 > 0xFFFE)
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0xFF)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v9 <= 3)
    {
      v13 = (v12 >> v10) + 1;
      v16 = v12 & ~(-1 << v10);
      bzero(a1, v9);
      *a1 = v16;
    }

    else
    {
      bzero(a1, v8 | 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_26;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkReachability(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 9))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for NetworkReachability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkReachability.Obstacle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkReachability.Speed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NetworkReachability.Speed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D4DC4DC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D4DC4DE0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t dispatch thunk of ContentRawIdentifierQualifier.qualify(raw:)()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_19_1(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_21_1(v4);

  return v6(v5);
}

uint64_t sub_1D4DC4F78()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of ContentQualifiedIdentifierQualifier.requalify(previously:)()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_19_1(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_21_1(v4);

  return v6(v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4DC5164(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D4DC51A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1D4DC51F0(void *a1, char a2, char a3)
{
  if (a3)
  {
    sub_1D4DBAA14(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1D4DC5204()
{
  OUTLINED_FUNCTION_40_0();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_68_0(v5);

  return sub_1D4DC1DAC(v7, v8, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_23_1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v11 + 96) = a1;
  a1[1].n128_u64[0] = v12;
  a1[1].n128_u64[1] = v10;
  result = a9;
  a1[2] = a9;
  a1[3].n128_u64[0] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t ContentRegistrationStorageOperations.registration(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  v9[2] = sub_1D4E0C870();
  v9[3] = sub_1D4E0C860();
  OUTLINED_FUNCTION_15();
  v21 = v10 + *v10;
  v11 = swift_task_alloc();
  v9[4] = v11;
  *v11 = v9;
  OUTLINED_FUNCTION_27_1(v11);
  OUTLINED_FUNCTION_21_2();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

uint64_t sub_1D4DC55E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1D4D8E454();
  v8 = sub_1D4E0CD30();
  if (v0)
  {
    v9 = sub_1D4DC7F54;
  }

  else
  {
    v9 = sub_1D4DC7F5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D4DC572C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D9A10C;

  return ContentStorage.withTransaction<A>(named:_:)();
}

uint64_t ContentStorage.withTransaction<A>(named:_:)()
{
  OUTLINED_FUNCTION_125();
  v0[2] = sub_1D4E0C870();
  v0[3] = sub_1D4E0C860();
  OUTLINED_FUNCTION_15();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_17_1(v2);

  return v5(v3);
}

uint64_t sub_1D4DC5958()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1D4D8E454();
  v8 = sub_1D4E0CD30();
  if (v0)
  {
    v9 = sub_1D4DC37F8;
  }

  else
  {
    v9 = sub_1D4DC5AA0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D4DC5AA0()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t _EmptyQualifier.qualify(raw:)()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  sub_1D4E0C870();
  *(v0 + 24) = sub_1D4E0C860();
  sub_1D4D8E454();
  sub_1D4E0CD30();
  OUTLINED_FUNCTION_99();
  v2 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4DC5B88()
{
  OUTLINED_FUNCTION_1();

  swift_getAssociatedTypeWitness();
  sub_1D4E0CC80();
  OUTLINED_FUNCTION_106();

  return v0();
}

uint64_t _EmptyQualifier.requalify(previously:)()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 16) = v1;
  sub_1D4E0C870();
  *(v0 + 24) = sub_1D4E0C860();
  sub_1D4D8E454();
  sub_1D4E0CD30();
  OUTLINED_FUNCTION_99();
  v2 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4DC5C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4DC7F58;

  return _EmptyQualifier.qualify(raw:)();
}

uint64_t sub_1D4DC5D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4DC7F58;

  return _EmptyQualifier.requalify(previously:)();
}

uint64_t BulkQualifier.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BulkQualifier.qualify(raw:)()
{
  OUTLINED_FUNCTION_1();
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = *v0;
  sub_1D4E0C870();
  v1[6] = sub_1D4E0C860();
  sub_1D4D8E454();
  sub_1D4E0CD30();
  OUTLINED_FUNCTION_99();
  v4 = OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4DC5EA8()
{
  OUTLINED_FUNCTION_123();

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1D4E0CD00();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA70();
  if (!*(v0 + 16))
  {
    sub_1D4E0CC80();
  }

  OUTLINED_FUNCTION_106();

  return v1();
}

uint64_t sub_1D4DC5FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D9A290;

  return BulkQualifier.qualify(raw:)();
}

void *TransformingQualifier.init(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a5 = &unk_1D4E0EA70;
  a5[1] = result;
  return result;
}

uint64_t sub_1D4DC60F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_1D4DC615C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = &unk_1D4E0EDA0;
  a4[1] = v8;
}

uint64_t sub_1D4DC61D4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D4DC62CC;

  return v7(a2);
}

uint64_t sub_1D4DC62CC()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_10_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1D4DC63C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = &unk_1D4E0ED90;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D4DC644C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D4DC6548;

  return v6(v2 + 16, a1);
}

uint64_t sub_1D4DC6548()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t TransformingQualifier.transform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransformingQualifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransformingQualifier.qualify(raw:)()
{
  OUTLINED_FUNCTION_51();
  v3 = v2;
  v4 = *v0;
  v1[2] = sub_1D4E0C870();
  v1[3] = sub_1D4E0C860();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_12_2(v5);

  return v7(v3);
}

uint64_t sub_1D4DC680C()
{
  OUTLINED_FUNCTION_51();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {
    sub_1D4D8E454();
    sub_1D4E0CD30();
    OUTLINED_FUNCTION_99();
    v8 = sub_1D4DC37F8;
  }

  else
  {
    *(v4 + 48) = v3;
    sub_1D4D8E454();
    sub_1D4E0CD30();
    OUTLINED_FUNCTION_99();
    v8 = sub_1D4DC6980;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D4DC6980()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_106();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1D4DC69E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4DC7F58;

  return TransformingQualifier.qualify(raw:)();
}

uint64_t sub_1D4DC6A74()
{
  OUTLINED_FUNCTION_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContentSystem.qualify(rawIdentifiers:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_55(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_81(v16);
  OUTLINED_FUNCTION_21_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ContentStorage.withOperations<A>(_:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_86(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_18();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_71(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ContentStorage.withTransaction<A>(named:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_18();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_17(v17);
  *v18 = v19;
  v18[1] = sub_1D4DA1B3C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ContentSourceStorage.init<A>(storage:for:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_17_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ContentSource.qualifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_17(v14);
  *v15 = v16;
  v15[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ContentSource.requalifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_17(v14);
  *v15 = v16;
  v15[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t getEnumTagSinglePayload for FairPlay(unsigned int *a1, int a2)
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

_BYTE *sub_1D4DC7210(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D4DC72C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D4DC7318()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D4DC7360(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D4DC73A0(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ContentRegistrationStorageOperations.firstContentID(matching:in:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_86(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_18();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_71(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.validateContent(id:)()
{
  OUTLINED_FUNCTION_51();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_15();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_55(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_2(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.registerContent(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_55(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_81(v16);
  OUTLINED_FUNCTION_21_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.registration(for:followRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_15();
  v22 = v9 + *v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_17(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_27_1(v11);
  OUTLINED_FUNCTION_21_2();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.registrations(for:followRedirect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_55(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_12_2(v15);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.relateContent(ids:to:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_55(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_81(v16);
  OUTLINED_FUNCTION_21_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.hasRelatedContent(for:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_55(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_12_2(v15);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.relatedContent(to:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_55(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_12_2(v15);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.removeContent(id:removeRelationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_6_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_55(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_12_2(v15);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_29_1();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of ContentRegistrationStorageOperations.updateDebugDescription(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_15();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_55(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_81(v16);
  OUTLINED_FUNCTION_21_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1D4DC7DDC()
{
  OUTLINED_FUNCTION_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_1(v1);

  return v4(v3);
}

uint64_t sub_1D4DC7E7C()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v8;
  v7[1] = sub_1D4D9A10C;

  return sub_1D4DC61D4(v4, v2, v5);
}

SonicKit::FairPlay::Error_optional __swiftcall FairPlay.Error.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 0x10)
  {
    v2 = 11;
  }

  else
  {
    v2 = byte_1D4E0EECA[rawValue];
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D4DC80A4@<X0>(uint64_t *a1@<X8>)
{
  result = FairPlay.Error.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1D4DC80CC()
{
  if (!qword_1EE08A678)
  {
    sub_1D4DC8124();
    v0 = sub_1D4E0D150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08A678);
    }
  }
}

unint64_t sub_1D4DC8124()
{
  result = qword_1EE08A670;
  if (!qword_1EE08A670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08A670);
  }

  return result;
}

void sub_1D4DC8180()
{
  if (!qword_1EE08A698)
  {
    sub_1D4DC81DC();
    v0 = sub_1D4E0C900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08A698);
    }
  }
}

unint64_t sub_1D4DC81DC()
{
  result = qword_1EE08A690;
  if (!qword_1EE08A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A690);
  }

  return result;
}

unint64_t sub_1D4DC8230()
{
  result = qword_1EE08A6A0;
  if (!qword_1EE08A6A0)
  {
    sub_1D4DC8180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A6A0);
  }

  return result;
}

uint64_t sub_1D4DC8288@<X0>(uint64_t *a1@<X8>)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = sub_1D4E0C940();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v27, 0, 24);
  sub_1D4E0C920();
  v6 = sub_1D4E0C930();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
LABEL_8:
    v26[0] = v6;
    v26[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    v10 = HIBYTE(v8) & 0xF;
    v9 = v26;
  }

  else
  {
    while (1)
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v9 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v10 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = sub_1D4E0CF90();
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }
      }

      if (!HIDWORD(v10))
      {
        break;
      }

      __break(1u);
LABEL_7:
      v6 = sub_1D4DC8854(v6, v8);
      v12 = v11;

      v8 = v12;
      if ((v12 & 0x2000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  zxcm2Qme0x(v9, v10, v27);
  v14 = v13;
  if (v13 == sub_1D4E0C980())
  {
    v15 = MEMORY[0x1DA6E0560](v27 + 4, LODWORD(v27[0]));
    v17 = v16;

    *a1 = v15;
    a1[1] = v17;
  }

  else
  {
    v19 = sub_1D4E0CAD0();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1D4DC9068(v19, v21, v14, 0);
    swift_willThrow();
    LOBYTE(v26[0]) = 2;
    sub_1D4DC80CC();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D4E0D980;
    *(v24 + 32) = v23;
    sub_1D4DC8180();
    sub_1D4DC8230();
    swift_allocError();
    MEMORY[0x1DA6E1430](v23);
    v25 = sub_1D4DC81DC();
    MEMORY[0x1DA6E0660](v26, 0xD000000000000027, 0x80000001D4E32B20, v24, &type metadata for FairPlay.Error, v25);
    swift_willThrow();
  }

  return result;
}

uint64_t static FairPlay.hardwareInfo.getter()
{
  result = sub_1D4DC8288(&v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1D4DC8590()
{
  result = qword_1EC7E3F50;
  if (!qword_1EC7E3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3F50);
  }

  return result;
}

unint64_t sub_1D4DC85E8()
{
  result = qword_1EE08A688;
  if (!qword_1EE08A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08A688);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FairPlay(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FairPlay.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FairPlay.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4DC8854(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D4DC88C0(sub_1D4DC88BC, 0, a1, a2);
  v6 = sub_1D4DC88F4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D4DC88C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1D4DC88F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D4E0CEF0();
    if (!v9 || (v10 = v9, v11 = sub_1D4DC8A54(v9, 0), v12 = sub_1D4DC8AB8(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1D4E0CA10(), , v12 == v10))
    {
      v13 = sub_1D4E0CB40();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D4E0CB40();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D4E0CF90();
LABEL_4:

  return sub_1D4E0CB40();
}

void *sub_1D4DC8A54(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D4DC8D44();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1D4DC8AB8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1D4DC8CC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D4E0CB90();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D4E0CF90();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1D4DC8CC8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1D4E0CB70();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D4DC8CC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D4E0CBA0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA6E08F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1D4DC8D44()
{
  if (!qword_1EC7E3F58)
  {
    v0 = sub_1D4E0D150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3F58);
    }
  }
}

uint64_t static FairPlay.generateAnisetteMachineData(account:)(uint64_t a1, char a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D4E0C7A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33[0] = 0;
  v31 = 0;
  if (a2)
  {
    v9 = -1;
  }

  else
  {
    v9 = a1;
  }

  qi864985u0(v9, v33, &v31 + 4, &v32, &v31);
  v11 = v10;
  result = sub_1D4E0C980();
  if (v11 != result)
  {
    v20 = sub_1D4E0CAD0();
    v22 = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v24 = sub_1D4DC9068(v20, v22, v11, 0);
    swift_willThrow();
    v30 = 3;
    sub_1D4DC80CC();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D4E0D980;
    *(v25 + 32) = v24;
    sub_1D4DC8180();
    sub_1D4DC8230();
    swift_allocError();
    v18 = v26;
    v27 = sub_1D4DC81DC();
    v28 = v24;
    MEMORY[0x1DA6E0660](&v30, 0xD000000000000031, 0x80000001D4E32B50, v25, &type metadata for FairPlay.Error, v27);
    swift_willThrow();

    return v18;
  }

  v13 = v33[0];
  if (v33[0])
  {
    v29 = v2;
    v14 = HIDWORD(v31);
    OUTLINED_FUNCTION_0_2();
    v15 = *MEMORY[0x1E6969028];
    v16 = *(v6 + 104);
    v16(v8, v15, v5);
    result = MEMORY[0x1DA6E0520](v13, v14, v8);
    v17 = v32;
    if (v32)
    {
      v18 = result;
      v19 = v31;
      OUTLINED_FUNCTION_0_2();
      v16(v8, v15, v5);
      MEMORY[0x1DA6E0520](v17, v19, v8);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D4DC9068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4E0CAC0();

  if (a4)
  {
    v8 = sub_1D4E0C9A0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t static FairPlay.WHAPlayer.playerInfoContext(accountID:playerInfoContextRequest:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = a3;
  sub_1D4DCBB50(a2, a3);
  sub_1D4DCB80C(&v22, &v21);
  if (v3)
  {
    OUTLINED_FUNCTION_1_2();
    sub_1D4DCC0E0(0, v4, v5, MEMORY[0x1E69E6F90]);
    OUTLINED_FUNCTION_300();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D4E0D980;
    *(v6 + 32) = v3;
    OUTLINED_FUNCTION_0_3();
    sub_1D4DCBDE0(0, v7, v8, &type metadata for FairPlay.Error, MEMORY[0x1E69D38D8]);
    sub_1D4DC8230();
    swift_allocError();
    MEMORY[0x1DA6E1430](v3);
    v9 = sub_1D4DC81DC();
    v17 = OUTLINED_FUNCTION_8_2(v9, v10, v11, v12, v13, v14, v15, v16, v19, *v20, *&v20[4], v20[6], 4);
    MEMORY[0x1DA6E0660](v17, 0xD000000000000027);
    swift_willThrow();

    return sub_1D4DCBBA8(v22, v23);
  }

  else
  {
    sub_1D4DCBBA8(v22, v23);
    return v21;
  }
}

void sub_1D4DC92CC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = sub_1D4E0C7A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v22 = 0;
  static FairPlay.contextID.getter();
  if (!v3)
  {
    if (a1)
    {
      v11 = a2 - a1;
    }

    else
    {
      v11 = 0;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v11))
    {
      woqRTqq9PL5McfBs891();
      v13 = v12;
      if (v12 == sub_1D4E0C980())
      {
        v14 = v23;
        if (v23)
        {
          v15 = v22;
          *v10 = j__jEHf8Xzsv8K;
          v10[1] = 0;
          (*(v8 + 104))(v10, *MEMORY[0x1E6969028], v7);
          *a3 = MEMORY[0x1DA6E0520](v14, v15, v10);
          a3[1] = v16;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v17 = sub_1D4E0CAD0();
        v19 = v18;
        v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_1D4DC9068(v17, v19, v13, 0);
        swift_willThrow();
      }

      return;
    }

    __break(1u);
  }
}

void static FairPlay.WHAPlayer.extractCloudToken(from:sessionID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_8;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_8:
      sub_1D4DCBD28(a1, v6, a3, v17);
      goto LABEL_9;
    case 3uLL:
      memset(v16, 0, 14);
      v4 = v16;
      goto LABEL_5;
    default:
      v16[0] = a1;
      LOWORD(v16[1]) = a2;
      BYTE2(v16[1]) = BYTE2(a2);
      BYTE3(v16[1]) = BYTE3(a2);
      BYTE4(v16[1]) = BYTE4(a2);
      BYTE5(v16[1]) = BYTE5(a2);
      v4 = v16 + BYTE6(a2);
LABEL_5:
      sub_1D4DC970C(v16, v4, a3, v17);
LABEL_9:
      if (v3)
      {
        LOBYTE(v16[0]) = 8;
        OUTLINED_FUNCTION_1_2();
        sub_1D4DCC0E0(0, v8, v9, MEMORY[0x1E69E6F90]);
        OUTLINED_FUNCTION_300();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1D4E0D980;
        *(v10 + 32) = v3;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_16_1(v11, v12, v13, v14, MEMORY[0x1E69D38D8]);
        sub_1D4DC8230();
        OUTLINED_FUNCTION_2_1();
        swift_allocError();
        OUTLINED_FUNCTION_12_3();
        v15 = sub_1D4DC81DC();
        MEMORY[0x1DA6E0660](v16, 0, 0xE000000000000000, v10, &type metadata for FairPlay.Error, v15);
        swift_willThrow();
      }

      return;
  }
}

uint64_t sub_1D4DC970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D4E0C7A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[0] = 0;
  v24 = 0;
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (HIDWORD(v12))
  {
    goto LABEL_11;
  }

  nXJ7Amk1zyK93(a3, a1, v12, v25, &v24);
  v14 = v13;
  result = sub_1D4E0C980();
  if (v14 == result)
  {
    v16 = v25[0];
    if (v25[0])
    {
      v17 = v24;
      *v11 = j__jEHf8Xzsv8K;
      v11[1] = 0;
      (*(v9 + 104))(v11, *MEMORY[0x1E6969028], v8);
      result = MEMORY[0x1DA6E0520](v16, v17, v11);
      *a4 = result;
      a4[1] = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_1D4E0CAD0();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1D4DC9068(v19, v21, v14, 0);
    return swift_willThrow();
  }

  return result;
}

void *FairPlay.WHAStreamer.deinit()
{
  swift_beginAccess();
  if (v0[3])
  {
    TsbHVdUOnzCHizuzrAdwYFpb();
  }

  sub_1D4D8C380(v0[4], v0[5]);
  return v0;
}

uint64_t FairPlay.WHAStreamer.__deallocating_deinit()
{
  FairPlay.WHAStreamer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t FairPlay.WHAStreamer.playerInfoContextRequest.getter()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_91();
  sub_1D4DCBDCC(v0, v1);
  return OUTLINED_FUNCTION_91();
}

uint64_t FairPlay.WHAStreamer.playerInfoContextRequest.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1D4D8C380(v5, v6);
}

void FairPlay.WHAStreamer.generateStreamerInfoContext(from:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 >= a1)
      {
        v16 = a1;

        OUTLINED_FUNCTION_4_1();
        v13 = v16;
        v14 = v15;
        goto LABEL_8;
      }

      __break(1u);
      return;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);

      OUTLINED_FUNCTION_4_1();
      v13 = v10;
      v14 = v9;
LABEL_8:
      sub_1D4DCBEF0(v13, v14, v11, v2, v12);
      goto LABEL_9;
    case 3uLL:

      OUTLINED_FUNCTION_6_2();
      v8 = 0;
      v7 = 0;
      goto LABEL_5;
    default:

      OUTLINED_FUNCTION_6_2();
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = a1;
LABEL_5:
      sub_1D4DCBC9C(v8, v7, v2, v6);
LABEL_9:
      if (v3)
      {
        OUTLINED_FUNCTION_1_2();
        sub_1D4DCC0E0(0, v17, v18, MEMORY[0x1E69E6F90]);
        OUTLINED_FUNCTION_300();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1D4E0D980;
        *(v19 + 32) = v3;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_16_1(v20, v21, v22, v23, MEMORY[0x1E69D38D8]);
        sub_1D4DC8230();
        OUTLINED_FUNCTION_2_1();
        swift_allocError();
        OUTLINED_FUNCTION_12_3();
        v24 = sub_1D4DC81DC();
        OUTLINED_FUNCTION_8_2(v24, v25, v26, v27, v28, v29, v30, v31, v32, *v33, *&v33[4], v33[6], 7);
        OUTLINED_FUNCTION_13_2();
        swift_willThrow();
      }

      return;
  }
}

uint64_t sub_1D4DC9C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D4E0C7A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v24[0] = 0;
  HIDWORD(v23) = 0;
  swift_beginAccess();
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (HIDWORD(v12))
  {
    goto LABEL_11;
  }

  OflR7BMjGok3A7mYQFt9(*(a3 + 24), a1, v12, 0, 0, v24);
  v14 = v13;
  result = sub_1D4E0C980();
  if (v14 == result)
  {
    v16 = v24[0];
    if (v24[0])
    {
      v17 = HIDWORD(v23);
      *v11 = j__jEHf8Xzsv8K;
      v11[1] = 0;
      (*(v9 + 104))(v11, *MEMORY[0x1E6969028], v8);
      result = MEMORY[0x1DA6E0520](v16, v17, v11);
      *a4 = result;
      a4[1] = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_1D4E0CAD0();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1D4DC9068(v19, v21, v14, 0);
    return swift_willThrow();
  }

  return result;
}

uint64_t FairPlay.WHAStreamer.Token.playInfo.getter()
{
  v0 = OUTLINED_FUNCTION_91();
  sub_1D4DCBB50(v0, v1);
  return OUTLINED_FUNCTION_91();
}

uint64_t FairPlay.WHAStreamer.Token.playInfo.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D4DCBBA8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FairPlay.WHAStreamer.Token.storefront.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1D4DC9F98()
{
  v0 = sub_1D4E0D0C0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D4DC9FE4(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x666E692D79616C70;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6F726665726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4DCA090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DC9F98();
  *a1 = result;
  return result;
}

unint64_t sub_1D4DCA0C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4DC9FE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D4DCA0F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DC9F98();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DCA134(uint64_t a1)
{
  v2 = sub_1D4DCBE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4DCA170(uint64_t a1)
{
  v2 = sub_1D4DCBE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FairPlay.WHAStreamer.Token.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  sub_1D4DCBDE0(0, &qword_1EC7E3F60, sub_1D4DCBE48, &_s11WHAStreamerC5TokenV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  OUTLINED_FUNCTION_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4DCBE48();
  sub_1D4E0D230();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v7;
  LOBYTE(v28) = 0;
  OUTLINED_FUNCTION_7_3();
  v12 = sub_1D4E0D110();
  v27 = 1;
  sub_1D4DCBE9C();
  sub_1D4E0D100();
  v13 = v28;
  v14 = v29;
  LOBYTE(v28) = 2;
  OUTLINED_FUNCTION_7_3();
  sub_1D4E0D0F0();
  v16 = v15;
  LOBYTE(v28) = 3;
  OUTLINED_FUNCTION_7_3();
  v17 = sub_1D4E0D0E0();
  v19 = v18;
  v20 = *(v11 + 8);
  v25 = v17;
  v20(v10, v5);
  v22 = v25;
  v21 = v26;
  *v26 = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v16;
  v21[4] = v22;
  v21[5] = v19;
  sub_1D4DCBB50(v13, v14);
  sub_1D4E0CA10();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1D4DCBBA8(v13, v14);
}

uint64_t FairPlay.WHAStreamer.fetchPlayerDelegateInfo(for:machineID:deviceGUID:userAgent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[81] = v8;
  v9[80] = v13;
  v9[79] = a8;
  v9[78] = a7;
  v9[77] = a6;
  v9[76] = a5;
  v9[75] = a4;
  v9[74] = a3;
  v9[73] = a2;
  v9[72] = a1;
  v10 = sub_1D4E0C940();
  v9[82] = v10;
  v9[83] = *(v10 - 8);
  v9[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DCA56C, 0, 0);
}

uint64_t sub_1D4DCA56C()
{
  v1 = v0;
  v37 = v0[84];
  v40 = v0 + 2;
  v41 = v0 + 70;
  v38 = v0[83];
  v39 = v0[82];
  v2 = v0[81];
  v35 = v0[79];
  v36 = v0[80];
  v33 = v0[77];
  v34 = v0[78];
  v3 = v0[74];
  v4 = v0[73];
  sub_1D4DCC218(0, &qword_1EC7E3F78);
  v5 = sub_1D4DCB2AC();
  v0[85] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  v0[86] = v6;
  [v6 setRequestEncoding_];
  v7 = [objc_allocWithZone(MEMORY[0x1E698CAC8]) init];
  v0[87] = v7;
  sub_1D4DCBFAC(0x6C6373656E757469, 0xEC0000006464756FLL, v7, &selRef_setBundleIdentifier_);
  sub_1D4DCBFAC(49, 0xE100000000000000, v7, &selRef_setClientVersion_);
  [v6 setClientInfo_];
  v8 = sub_1D4E0CAC0();
  v32 = [v5 URLForKey_];

  v9 = MEMORY[0x1E69E6F90];
  sub_1D4DCC0E0(0, &qword_1EC7E3F80, sub_1D4DCC018, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4E0EF40;
  *(inited + 32) = 0x7265756575716E65;
  *(inited + 40) = 0xE900000000000073;
  sub_1D4DCC0E0(0, &qword_1EC7E3F90, sub_1D4DCC07C, v9);
  OUTLINED_FUNCTION_300();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D4E0D980;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1D4E0EF50;
  *(v12 + 32) = 6515059;
  *(v12 + 40) = 0xE300000000000000;
  v13 = MEMORY[0x1E6969080];
  *(v12 + 48) = v4;
  *(v12 + 56) = v3;
  *(v12 + 72) = v13;
  *(v12 + 80) = 1684632420;
  *(v12 + 88) = 0xE400000000000000;
  v14 = *(v2 + 16);
  *(v12 + 120) = MEMORY[0x1E69E76D8];
  *(v12 + 96) = v14;
  sub_1D4DCBB50(v4, v3);
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 32) = sub_1D4E0C9F0();
  sub_1D4DCC0E0(0, &qword_1EC7E3FA0, sub_1D4DCC07C, MEMORY[0x1E69E62F8]);
  *(inited + 48) = v11;
  *(inited + 72) = v16;
  *(inited + 80) = 0x672D726579616C70;
  *(inited + 88) = 0xEB00000000646975;
  v1[68] = v33;
  v1[69] = v34;
  sub_1D4DCC144();
  sub_1D4E0CBD0();
  v17 = sub_1D4E0CB10();
  v19 = v18;

  *(inited + 96) = v17;
  *(inited + 104) = v19;
  *(inited + 120) = v15;
  *(inited + 128) = 0x6D2D726579616C70;
  *(inited + 136) = 0xEA00000000006469;
  *(inited + 144) = sub_1D4E0C7D0();
  *(inited + 152) = v20;
  *(inited + 168) = v15;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000001D4E32C30;
  *(inited + 192) = v35;
  *(inited + 200) = v36;
  *(inited + 216) = v15;
  *(inited + 224) = 1684632935;
  *(inited + 232) = 0xE400000000000000;
  sub_1D4E0CA10();
  sub_1D4E0C920();
  v21 = sub_1D4E0C930();
  v23 = v22;
  (*(v38 + 8))(v37, v39);
  *(inited + 264) = v15;
  *(inited + 240) = v21;
  *(inited + 248) = v23;
  sub_1D4E0C9F0();
  v24 = sub_1D4E0C9A0();

  v25 = [v6 requestWithMethod:4 bagURL:v32 parameters:v24];
  v1[88] = v25;

  v26 = [objc_opt_self() ephemeralSessionConfiguration];
  v27 = [objc_allocWithZone(MEMORY[0x1E698CBA8]) initWithConfiguration_];
  v1[89] = v27;

  v28 = [v27 dataTaskPromiseWithRequestPromise_];
  v1[90] = v28;
  v1[2] = v1;
  v1[7] = v41;
  v1[3] = sub_1D4DCAB84;
  v29 = swift_continuation_init();
  sub_1D4DCC198();
  v1[67] = v30;
  v1[60] = MEMORY[0x1E69E9820];
  v1[61] = 1107296256;
  v1[62] = sub_1D4DCB340;
  v1[63] = &block_descriptor;
  v1[64] = v29;
  [v28 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v40);
}

uint64_t sub_1D4DCAB84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 728) = v1;
  if (v1)
  {
    v2 = sub_1D4DCB1F8;
  }

  else
  {
    v2 = sub_1D4DCAC94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D4DCAC94()
{
  v1 = *(v0 + 560);

  sub_1D4E0C750();
  swift_allocObject();
  sub_1D4E0C740();
  sub_1D4DCC284();
  v2 = [v1 data];
  v3 = sub_1D4E0C7E0();
  v5 = v4;

  sub_1D4DCC2D4();
  sub_1D4E0C730();
  sub_1D4DCBBA8(v3, v5);
  v6 = *(v0 + 568);
  v7 = v6 + 16;
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = (v7 + 48);
    v10 = *(v7 + 16);
    v7 += 48;
    if (v10 == *(*(v0 + 648) + 16))
    {
      v31 = *(v0 + 712);
      v32 = *(v0 + 704);
      v11 = *(v0 + 696);
      v12 = *(v0 + 680);
      v13 = *(v0 + 576);
      v14 = *(v9 - 3);
      v15 = *(v9 - 2);
      v16 = *(v9 - 1);
      v17 = v9[1];
      v33 = *(v0 + 688);
      v34 = *v9;
      sub_1D4DCBB50(v14, v15);
      sub_1D4E0CA10();

      *v13 = v10;
      v13[1] = v14;
      v13[2] = v15;
      v13[3] = v16;
      v13[4] = v34;
      v13[5] = v17;

      v18 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  v19 = *(v0 + 712);
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);
  *(v0 + 737) = 10;
  sub_1D4E0CF50();

  OUTLINED_FUNCTION_15_2();
  v37 = v23 + 2;
  v38 = v22;
  v24 = MEMORY[0x1DA6E09A0](v6, &type metadata for FairPlay.WHAStreamer.Token);
  v26 = v25;

  MEMORY[0x1DA6E08D0](v24, v26);

  OUTLINED_FUNCTION_0_3();
  sub_1D4DCBDE0(0, v27, v28, &type metadata for FairPlay.Error, MEMORY[0x1E69D38D8]);
  sub_1D4DC8230();
  OUTLINED_FUNCTION_2_1();
  swift_allocError();
  v29 = sub_1D4DC81DC();
  MEMORY[0x1DA6E0660](v0 + 737, v37, v38, MEMORY[0x1E69E7CC0], &type metadata for FairPlay.Error, v29);
  swift_willThrow();

  v18 = *(v0 + 8);
LABEL_6:

  return v18();
}

uint64_t sub_1D4DCB1F8()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

id sub_1D4DCB2AC()
{
  v0 = sub_1D4E0CAC0();

  v1 = sub_1D4E0CAC0();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t *sub_1D4DCB340(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4DCB3D0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1D4DCB430(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4DCB3D0(uint64_t a1, uint64_t a2)
{
  sub_1D4DC8124();
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

void FairPlay.WHAStreamer.processPlayerDelegateInfo(from:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 >= a1)
      {
        v16 = a1;

        OUTLINED_FUNCTION_3_1();
        v13 = v16;
        v14 = v15;
        goto LABEL_8;
      }

      __break(1u);
      return;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);

      OUTLINED_FUNCTION_3_1();
      v13 = v10;
      v14 = v9;
LABEL_8:
      sub_1D4DCBEF0(v13, v14, v11, v2, v12);
      goto LABEL_9;
    case 3uLL:

      OUTLINED_FUNCTION_5_1();
      v8 = 0;
      v7 = 0;
      goto LABEL_5;
    default:

      OUTLINED_FUNCTION_5_1();
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = a1;
LABEL_5:
      sub_1D4DCBC9C(v8, v7, v2, v6);
LABEL_9:
      if (v3)
      {
        OUTLINED_FUNCTION_1_2();
        sub_1D4DCC0E0(0, v17, v18, MEMORY[0x1E69E6F90]);
        OUTLINED_FUNCTION_300();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1D4E0D980;
        *(v19 + 32) = v3;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_16_1(v20, v21, v22, v23, MEMORY[0x1E69D38D8]);
        sub_1D4DC8230();
        OUTLINED_FUNCTION_2_1();
        swift_allocError();
        OUTLINED_FUNCTION_12_3();
        v24 = sub_1D4DC81DC();
        OUTLINED_FUNCTION_8_2(v24, v25, v26, v27, v28, v29, v30, v31, v32, *v33, *&v33[4], v33[6], 5);
        OUTLINED_FUNCTION_13_2();
        swift_willThrow();
      }

      return;
  }
}

uint64_t sub_1D4DCB604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D4E0C7A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v24[0] = 0;
  HIDWORD(v23) = 0;
  swift_beginAccess();
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (HIDWORD(v12))
  {
    goto LABEL_11;
  }

  TBGzuU3p5n1n(*(a3 + 24), a1, v12, v24, &v23 + 4);
  v14 = v13;
  result = sub_1D4E0C980();
  if (v14 == result)
  {
    v16 = v24[0];
    if (v24[0])
    {
      v17 = HIDWORD(v23);
      *v11 = j__jEHf8Xzsv8K;
      v11[1] = 0;
      (*(v9 + 104))(v11, *MEMORY[0x1E6969028], v8);
      result = MEMORY[0x1DA6E0520](v16, v17, v11);
      *a4 = result;
      a4[1] = v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_1D4E0CAD0();
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1D4DC9068(v19, v21, v14, 0);
    return swift_willThrow();
  }

  return result;
}

void sub_1D4DCB80C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v8 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D4DCBBA8(v4, v3);
      *a1 = xmmword_1D4E0EF60;
      sub_1D4DCBBA8(0, 0xC000000000000000);
      v9 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v9 < v4)
      {
        goto LABEL_14;
      }

      if (sub_1D4E0C6F0() && __OFSUB__(v4, sub_1D4E0C710()))
      {
        goto LABEL_15;
      }

      sub_1D4E0C720();
      swift_allocObject();
      v10 = sub_1D4E0C6E0();

      v8 = v10;
LABEL_10:
      if (v9 < v4)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      sub_1D4DCBC00(v4, v4 >> 32, a2);

      *a1 = v4;
      a1[1] = v8 | 0x4000000000000000;
      return;
    case 2uLL:

      sub_1D4DCBBA8(v4, v3);
      *&v11 = v4;
      *(&v11 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1D4E0EF60;
      sub_1D4DCBBA8(0, 0xC000000000000000);
      sub_1D4E0C790();
      v7 = *(&v11 + 1);
      sub_1D4DCBC00(*(v11 + 16), *(v11 + 24), a2);
      *a1 = v11;
      a1[1] = v7 | 0x8000000000000000;
      return;
    case 3uLL:
      *(&v11 + 7) = 0;
      *&v11 = 0;
      sub_1D4DC92CC(&v11, &v11, a2);
      return;
    default:
      sub_1D4DCBBA8(v4, v3);
      *&v11 = v4;
      WORD4(v11) = v3;
      BYTE10(v11) = BYTE2(v3);
      BYTE11(v11) = BYTE3(v3);
      BYTE12(v11) = BYTE4(v3);
      BYTE13(v11) = BYTE5(v3);
      BYTE14(v11) = BYTE6(v3);
      sub_1D4DC92CC(&v11, &v11 + BYTE6(v3), a2);
      v6 = DWORD2(v11) | ((WORD6(v11) | (BYTE14(v11) << 16)) << 32);
      *a1 = v11;
      a1[1] = v6;
      return;
  }
}

uint64_t sub_1D4DCBB50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D4DCBBA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1D4DCBC00(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D4E0C6F0();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1D4E0C710();
  v9 = a1 - v8;
  if (__OFSUB__(a1, v8))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v12 = sub_1D4E0C700();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  sub_1D4DC92CC(v7 + v9, v7 + v9 + v13, a3);
}

uint64_t sub_1D4DCBC9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, char *))
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  a4(&v5, &v5 + BYTE6(a2));
}

uint64_t sub_1D4DCBD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1D4E0C6F0();
  v9 = result;
  if (result)
  {
    result = sub_1D4E0C710();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1D4E0C700();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return sub_1D4DC970C(v9, v15, a3, a4);
}

uint64_t sub_1D4DCBDCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4DCBB50(a1, a2);
  }

  return a1;
}

void sub_1D4DCBDE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D4DCBE48()
{
  result = qword_1EC7E3F68;
  if (!qword_1EC7E3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3F68);
  }

  return result;
}

unint64_t sub_1D4DCBE9C()
{
  result = qword_1EC7E3F70;
  if (!qword_1EC7E3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3F70);
  }

  return result;
}

uint64_t sub_1D4DCBEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1D4E0C6F0();
  v10 = result;
  if (result)
  {
    result = sub_1D4E0C710();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1D4E0C700();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  a5(v10, v16, a4);
}

void sub_1D4DCBFAC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1D4E0CAC0();

  [a3 *a4];
}

void sub_1D4DCC018()
{
  if (!qword_1EC7E3F88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E3F88);
    }
  }
}

void sub_1D4DCC07C()
{
  if (!qword_1EC7E3F98)
  {
    v0 = sub_1D4E0CA60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3F98);
    }
  }
}

void sub_1D4DCC0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D4DCC144()
{
  result = qword_1EC7E3FA8;
  if (!qword_1EC7E3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3FA8);
  }

  return result;
}

void sub_1D4DCC198()
{
  if (!qword_1EC7E3FB0)
  {
    sub_1D4DCC218(255, &qword_1EC7E3FB8);
    sub_1D4DC8124();
    v0 = sub_1D4E0CD70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3FB0);
    }
  }
}

uint64_t sub_1D4DCC218(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D4DCC284()
{
  if (!qword_1EC7E3FC0)
  {
    v0 = sub_1D4E0CD00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3FC0);
    }
  }
}

unint64_t sub_1D4DCC2D4()
{
  result = qword_1EC7E3FC8;
  if (!qword_1EC7E3FC8)
  {
    sub_1D4DCC284();
    sub_1D4DCC34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3FC8);
  }

  return result;
}

unint64_t sub_1D4DCC34C()
{
  result = qword_1EC7E3FD0;
  if (!qword_1EC7E3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3FD0);
  }

  return result;
}

uint64_t sub_1D4DCC3A0(void *a1)
{
  v1 = [a1 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D4E0C9B0();

  return v3;
}

_BYTE *_s9WHAPlayerOwst(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D4DCC54C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D4DCC58C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

_BYTE *_s11WHAStreamerC5TokenV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4DCC6C8()
{
  result = qword_1EC7E3FD8;
  if (!qword_1EC7E3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3FD8);
  }

  return result;
}

unint64_t sub_1D4DCC720()
{
  result = qword_1EC7E3FE0;
  if (!qword_1EC7E3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3FE0);
  }

  return result;
}

unint64_t sub_1D4DCC778()
{
  result = qword_1EC7E3FE8[0];
  if (!qword_1EC7E3FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7E3FE8);
  }

  return result;
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x1DA6E1430);
}

void OUTLINED_FUNCTION_13_2()
{

  JUMPOUT(0x1DA6E0660);
}

void OUTLINED_FUNCTION_16_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{

  sub_1D4DCBDE0(0, a2, a3, v5, a5);
}

uint64_t sub_1D4DCC8D4()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8E6AC;

  return sub_1D4D8E7AC();
}

uint64_t sub_1D4DCC98C()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8E6AC;

  return sub_1D4D8E7AC();
}

_BYTE *storeEnumTagSinglePayload for MediaRemoteCommandSystem(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D4DCCAF4()
{
  swift_getAssociatedTypeWitness();
  result = sub_1D4E0CEE0();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D4DCCC08()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8E6AC;

  return sub_1D4DCCCA8();
}

uint64_t sub_1D4DCCCA8()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v1[5] = v3;
  v1[6] = *(v3 + 8);
  v1[7] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  v1[9] = *(AssociatedTypeWitness - 8);
  v1[10] = swift_task_alloc();
  sub_1D4E0C870();
  v1[11] = sub_1D4E0C860();
  sub_1D4D8E454();
  v6 = sub_1D4E0CD30();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4DCCE10, v6, v5);
}

uint64_t sub_1D4DCCE10()
{
  v8 = v0[6];
  v1 = v0[3];
  v2 = *(*v1 + 96);
  v0[14] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[15] = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, AssociatedTypeWitness);
  v7 = (*(v8 + 24) + **(v8 + 24));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1D4DCCF80;
  v5 = v0[10];

  return v7(v5);
}

uint64_t sub_1D4DCCF80()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1D4DCD210;
  }

  else
  {
    v5 = sub_1D4DCD0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D4DCD0BC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];

  (*(v3 + 32))(v4 + *(*v4 + 104), v1, v2);
  sub_1D4D8E4D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D4E0D980;
  v0[2] = v4;

  v10 = sub_1D4E0CB00();
  v11 = v6;
  MEMORY[0x1DA6E08D0](0x6C616974696E6920, 0xEC00000064657A69);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  sub_1D4E0D1C0();

  v7 = v0[1];
  v8 = v0[3];

  return v7(v8);
}

uint64_t sub_1D4DCD210()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(v2 + v1);
  swift_deallocPartialClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D4DCD2FC()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_4();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1D4DCD40C()
{
  sub_1D4DCD2FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4DCD490()
{
  v1 = OBJC_IVAR____TtC8SonicKit15SessionDocument___observationRegistrar;
  v2 = sub_1D4E0C830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for SessionDocument()
{
  result = qword_1EC7E4178;
  if (!qword_1EC7E4178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4DCD580()
{
  result = sub_1D4E0C830();
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

uint64_t sub_1D4DCD610()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4DCD6C4()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4D8E6AC;

  return sub_1D4DCD764();
}

uint64_t sub_1D4DCD764()
{
  v1[3] = v0;
  v1[4] = *v0;
  OUTLINED_FUNCTION_0();
  v1[5] = *(*(v2 + 88) + 8);
  OUTLINED_FUNCTION_0();
  v1[6] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v1[8] = *(AssociatedTypeWitness - 8);
  v1[9] = swift_task_alloc();
  sub_1D4E0C870();
  v1[10] = sub_1D4E0C860();
  sub_1D4D8E454();
  v6 = sub_1D4E0CD30();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4DCD8C0, v6, v5);
}

uint64_t sub_1D4DCD8C0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(*v2 + 104);
  v0[13] = v3;
  *(v2 + v3) = MEMORY[0x1E69E7CC0];
  v7 = (*(v1 + 24) + **(v1 + 24));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1D4DCD9F8;
  v5 = v0[9];

  return v7(v5);
}

uint64_t sub_1D4DCD9F8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D4DCDC88;
  }

  else
  {
    v5 = sub_1D4DCDB34;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D4DCDB34()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];

  (*(v3 + 32))(v4 + *(*v4 + 96), v1, v2);
  sub_1D4D8E4D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D4E0D980;
  v0[2] = v4;

  v10 = sub_1D4E0CB00();
  v11 = v6;
  MEMORY[0x1DA6E08D0](0x6C616974696E6920, 0xEC00000064657A69);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  sub_1D4E0D1C0();

  v7 = v0[1];
  v8 = v0[3];

  return v7(v8);
}

uint64_t sub_1D4DCDC88()
{

  swift_deallocPartialClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4DCDD44()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);

  return v0;
}

uint64_t sub_1D4DCDE04()
{
  sub_1D4DCDD44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t PlaybackEngine.__allocating_init<A>(configuration:specification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  PlaybackEngine.init<A>(configuration:specification:)(a1, v8, a3, a4);
  return v7;
}

uint64_t PlaybackEngine.init<A>(configuration:specification:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D4DD04E8(0, &qword_1EC7E3A40, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1D4E0CD50();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  OUTLINED_FUNCTION_25_2();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = v4;
  v12[7] = a1;

  sub_1D4DCF984(0, 0, v10, &unk_1D4E0F558, v12);

  return v4;
}

uint64_t sub_1D4DCDFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a4;

  v8 = swift_task_alloc();
  v7[23] = v8;
  *v8 = v7;
  v8[1] = sub_1D4DCE0C4;

  return sub_1D4DCE41C();
}

uint64_t sub_1D4DCE0C4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 192) = v0;

  if (v0)
  {
    v5 = sub_1D4DCE284;
  }

  else
  {
    v5 = sub_1D4DCE1C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4DCE1C8()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 160);
  *(v0 + 88) = type metadata accessor for PlaybackEngine.Components();
  *(v0 + 96) = &off_1F507C9D0;
  OUTLINED_FUNCTION_25_2();
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  v2[1] = *(v0 + 16);
  v2[2] = v3;
  v2[3] = *(v0 + 48);
  swift_beginAccess();
  sub_1D4DD0910(v0 + 64, v1 + 16);
  swift_endAccess();
  OUTLINED_FUNCTION_37();

  return v4();
}

uint64_t sub_1D4DCE284()
{
  OUTLINED_FUNCTION_51();
  sub_1D4E0CF50();
  MEMORY[0x1DA6E08D0](0xD00000000000001DLL, 0x80000001D4E32E40);
  swift_getErrorValue();
  sub_1D4E0D160();
  return sub_1D4E0D080();
}

uint64_t sub_1D4DCE350(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_17(v9);
  *v10 = v11;
  v10[1] = sub_1D4D9A10C;

  return sub_1D4DCDFFC(a1, v5, v6, v8, v7, v3, v4);
}

uint64_t sub_1D4DCE41C()
{
  OUTLINED_FUNCTION_1();
  v0[496] = v1;
  v0[495] = v2;
  v0[494] = v3;
  v0[493] = v4;
  sub_1D4E0C870();
  v0[497] = sub_1D4E0C860();
  sub_1D4D8E454();
  v6 = sub_1D4E0CD30();
  v0[498] = v6;
  v0[499] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4DCE4C0, v6, v5);
}

uint64_t sub_1D4DCE4C0()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[496];
  v2 = v0[495];
  OUTLINED_FUNCTION_305();
  v3 = swift_allocObject();
  v0[500] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v4 = type metadata accessor for AccountManager();
  OUTLINED_FUNCTION_24_1((v0 + 82), v5, v4, &unk_1D4E0F5D0);
  OUTLINED_FUNCTION_305();
  v6 = swift_allocObject();
  v0[501] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v7 = type metadata accessor for ContentManager();
  OUTLINED_FUNCTION_24_1((v0 + 242), v8, v7, &unk_1D4E0F5E0);
  OUTLINED_FUNCTION_305();
  v9 = swift_allocObject();
  v0[502] = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v10 = type metadata accessor for DigitalRightsManager();
  OUTLINED_FUNCTION_24_1((v0 + 402), v11, v10, &unk_1D4E0F5F0);
  OUTLINED_FUNCTION_305();
  v12 = swift_allocObject();
  v0[503] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v13 = type metadata accessor for SessionManager();
  OUTLINED_FUNCTION_24_1((v0 + 2), v14, v13, &unk_1D4E0F600);
  OUTLINED_FUNCTION_305();
  v15 = swift_allocObject();
  v0[504] = v15;
  *(v15 + 16) = v2;
  *(v15 + 24) = v1;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v16 = type metadata accessor for ErrorResolver();
  OUTLINED_FUNCTION_24_1((v0 + 322), v17, v16, &unk_1D4E0F610);

  return MEMORY[0x1EEE6DEC0](v0 + 242, v0 + 488, sub_1D4DCE734, v0 + 162);
}

uint64_t sub_1D4DCE734()
{
  v1[505] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_3((v1 + 322), (v1 + 491), sub_1D4DCEDE0);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCE774, v1[498], v1[499]);
  }
}

uint64_t sub_1D4DCE774()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 4048) = *(v0 + 3904);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 3896, sub_1D4DCE7E0, v0 + 1296);
}

uint64_t sub_1D4DCE7E0()
{
  v1[507] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_3((v1 + 322), (v1 + 491), sub_1D4DCEF94);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCE820, v1[498], v1[499]);
  }
}

uint64_t sub_1D4DCE820()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[496];
  v2 = v0[495];
  v0[508] = v0[487];
  OUTLINED_FUNCTION_305();
  v3 = swift_allocObject();
  v0[509] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_9_1();
  v4 = type metadata accessor for Publisher();
  OUTLINED_FUNCTION_24_1((v0 + 162), v5, v4, &unk_1D4E0F620);

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 492, sub_1D4DCE914, v0 + 482);
}

uint64_t sub_1D4DCE914(uint64_t a1, uint64_t a2)
{
  v3[510] = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_3_2(a1, a2, sub_1D4DCF154);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCE94C, v3[498], v3[499]);
  }
}

uint64_t sub_1D4DCE94C()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 4088) = *(v0 + 3936);

  return MEMORY[0x1EEE6DEC0](v0 + 3216, v0 + 3920, sub_1D4DCE9B8, v0 + 3856);
}

uint64_t sub_1D4DCE9B8(uint64_t a1, uint64_t a2)
{
  v3[512] = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_3_2(a1, a2, sub_1D4DCF350);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCE9F0, v3[498], v3[499]);
  }
}

uint64_t sub_1D4DCE9F0()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 4104) = *(v0 + 3920);

  v1 = OUTLINED_FUNCTION_26_1();

  return MEMORY[0x1EEE6DEC0](v1, v2, v3, v4);
}

uint64_t sub_1D4DCEA50(uint64_t a1, uint64_t a2)
{
  v3[514] = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_3_2(a1, a2, sub_1D4DCF558);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCEA88, v3[498], v3[499]);
  }
}

uint64_t sub_1D4DCEA88()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 4120) = *(v0 + 3912);

  return MEMORY[0x1EEE6DEC0](v0 + 2576, v0 + 3928, sub_1D4DCEAF4, v0 + 3856);
}

uint64_t sub_1D4DCEAF4(uint64_t a1, uint64_t a2)
{
  v3[516] = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_3_2(a1, a2, sub_1D4DCF768);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1D4DCEB2C, v3[498], v3[499]);
  }
}

uint64_t sub_1D4DCEB2C()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 4136) = *(v0 + 3928);
  swift_retain_n();
  v1 = OUTLINED_FUNCTION_26_1();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v4);
}

uint64_t sub_1D4DCECC4()
{
  v1 = v0[517];
  v8 = v0[513];
  v9 = v0[515];
  v6 = v0[511];
  v7 = v0[508];
  v5 = v0[506];
  v2 = v0[493];

  *v2 = v6;
  v2[1] = v5;
  v2[2] = v8;
  v2[3] = v1;
  v2[4] = v9;
  v2[5] = v7;
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4DCEEDC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 4040);

  if (!v1)
  {
  }

  sub_1D4DD0C4C(0);
  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4DCF090()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 4040);

  if (!v1)
  {
  }

  sub_1D4DD0C4C(0);
  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4DCF288()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 4040);

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1D4DCF484()
{
  OUTLINED_FUNCTION_51();

  v1 = *(v0 + 4096);

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1D4DCF68C()
{
  OUTLINED_FUNCTION_51();

  v1 = *(v0 + 4096);

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1D4DCF89C()
{
  OUTLINED_FUNCTION_51();

  v1 = *(v0 + 4096);

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1D4DCF984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D4DD04E8(0, &qword_1EC7E3A40, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1D4DA172C(a3, v24 - v10);
  v12 = sub_1D4E0CD50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4DD0624(v11, &qword_1EC7E3A40, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D4E0CD40();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D4E0CD30();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D4E0CB30() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1D4DD0624(a3, &qword_1EC7E3A40, MEMORY[0x1E69E85F0]);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D4DD0624(a3, &qword_1EC7E3A40, MEMORY[0x1E69E85F0]);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D4DCFC8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AccountManager();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DCFD84;

  return sub_1D4D8DB48();
}

uint64_t sub_1D4DCFD84()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_12_4();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_6_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1D4DCFEA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManager();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DCFD84;

  return sub_1D4D8E60C();
}

uint64_t sub_1D4DCFF98(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DigitalRightsManager();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DCFD84;

  return sub_1D4DCC8D4();
}

uint64_t sub_1D4DD0090(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SessionManager();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DCFD84;

  return sub_1D4DCD6C4();
}

uint64_t sub_1D4DD0188(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ErrorResolver();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DD0280;

  return sub_1D4DCC98C();
}

uint64_t sub_1D4DD0280()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_12_4();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_6_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1D4DD039C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_37();
  return v1();
}

uint64_t sub_1D4DD03CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publisher();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D4DCFD84;

  return sub_1D4DCCC08();
}

void sub_1D4DD04E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D4E0CEE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D4DD053C()
{
  result = qword_1EC7E4210[0];
  if (!qword_1EC7E4210[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EC7E4210);
  }

  return result;
}

uint64_t PlaybackEngine.__deallocating_deinit(uint64_t a1)
{
  OUTLINED_FUNCTION_18_1(a1, &qword_1EC7E4208);

  return MEMORY[0x1EEE6BDC0](v1, 56, 7);
}

uint64_t sub_1D4DD0624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D4DD04E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D4DD0680(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D4DD0778;

  return v6(a1);
}

uint64_t sub_1D4DD0778()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4DD085C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_1D4DA1B3C;
  v3 = OUTLINED_FUNCTION_5_2();

  return v4(v3);
}

uint64_t sub_1D4DD0910(uint64_t a1, uint64_t a2)
{
  sub_1D4DD04E8(0, &qword_1EC7E4208, sub_1D4DD053C);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4DD0990()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DCFC8C(v3);
}

uint64_t sub_1D4DD0A1C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DCFEA0(v3);
}

uint64_t sub_1D4DD0AA8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DCFF98(v3);
}

uint64_t sub_1D4DD0B34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DD0090(v3);
}

uint64_t sub_1D4DD0BC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DD0188(v3);
}

uint64_t sub_1D4DD0C4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4DD0C5C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return sub_1D4DD03CC(v3);
}

uint64_t sub_1D4DD0CE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D4DD0D24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D4DD0D64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, unint64_t *a2)
{

  return sub_1D4DD0624(v2 + 16, a2, sub_1D4DD053C);
}

uint64_t OUTLINED_FUNCTION_22_2()
{
}

uint64_t OUTLINED_FUNCTION_24_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x1EEE6DEA8](a1, 0, a3, a4, v4);
}

double sub_1D4DD0F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D4DD245C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;

    sub_1D4DD369C(v8, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

double sub_1D4DD0F70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1D4DD24D4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1D4D9E980(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D4DD0FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v9[2] = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D4DD2B64(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_1D4DD3764(a1);
    sub_1D4DD26C0(a2, a3, v9);

    return sub_1D4DD3764(v9);
  }

  return result;
}

uint64_t sub_1D4DD1088(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D4D9EA28(a1, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1D4DD2C98(v6, a2);

    *v2 = v5;
  }

  else
  {
    sub_1D4DD35D8(a1, sub_1D4DD3140);
    sub_1D4DD27AC(a2, v6);

    return sub_1D4DD35D8(v6, sub_1D4DD3140);
  }

  return result;
}

uint64_t Configuration.__allocating_init(storage:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D4E0C820();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t Configuration.init(storage:)(uint64_t a1)
{
  sub_1D4E0C820();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t Configuration.copy()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  sub_1D4E0CA10();
  sub_1D4E0C820();
  *(v2 + 16) = v1;
  return v2;
}

uint64_t Configuration.merge(with:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(a1 + 16);
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3;
  sub_1D4DD2F18(v4, sub_1D4DD2EE4, 0, isUniquelyReferenced_nonNull_native, &v9);
  v6 = v9;
  v7 = swift_allocObject();
  sub_1D4E0C820();
  *(v7 + 16) = v6;
  return v7;
}

uint64_t sub_1D4DD1368(uint64_t a1)
{
  *&v4 = v1;
  sub_1D4DD34E4();
  sub_1D4E0C810();
  swift_beginAccess();
  sub_1D4DD0F70(a1, *(v1 + 16), &v4);
  swift_endAccess();
  sub_1D4DD3140();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0x746C7561666544;
  }
}

uint64_t sub_1D4DD1434(uint64_t a1)
{
  *&v4 = v1;
  sub_1D4DD34E4();
  sub_1D4E0C810();
  swift_beginAccess();
  sub_1D4DD0F70(a1, *(v1 + 16), &v4);
  swift_endAccess();
  sub_1D4DD3140();
  return swift_dynamicCast() & v5;
}

uint64_t Configuration.subscript.getter@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v10 = sub_1D4E0CEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1D4DD16F4();
  swift_beginAccess();
  sub_1D4DD0F70(a1, *(v4 + 16), &v16);
  swift_endAccess();
  sub_1D4DD3140();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
    return (*(*(v9 - 8) + 32))(a4, v13, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v9);
    (*(a3 + 16))(a2, a3);
    result = __swift_getEnumTagSinglePayload(v13, 1, v9);
    if (result != 1)
    {
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_1D4DD1748()
{
  sub_1D4DD1B08();
}

uint64_t Configuration.subscript.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  sub_1D4DD1B90();

  return (*(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 8))(a1);
}

uint64_t sub_1D4DD1908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[3] = MEMORY[0x1E69E6158];
  v6[1] = a4;
  swift_beginAccess();
  sub_1D4E0CA10();

  sub_1D4DD1088(v6, a2);
  return swift_endAccess();
}

uint64_t sub_1D4DD1998(uint64_t a1, uint64_t a2, char a3)
{
  v6 = MEMORY[0x1E69E6370];
  v5[0] = a3;
  swift_beginAccess();

  sub_1D4DD1088(v5, a2);
  return swift_endAccess();
}

uint64_t sub_1D4DD1A18(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = v9;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, a3, v5);
  swift_beginAccess();

  sub_1D4DD1088(v8, a2);
  return swift_endAccess();
}

void (*Configuration.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v11 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a3;
  v11[2] = a4;
  *v11 = a2;
  v12 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v11[5] = v12;
  v13 = *(v12 - 8);
  v11[6] = v13;
  v14 = *(v13 + 64);
  v11[7] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v11[8] = v15;
  Configuration.subscript.getter(a3, a4, a5, v15);
  return sub_1D4DD1D54;
}

void sub_1D4DD1D54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 56), v4, v5);

    Configuration.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];

    Configuration.subscript.setter(v4, v10, v9);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Configuration.deinit()
{

  v1 = OBJC_IVAR____TtC8SonicKit13Configuration___observationRegistrar;
  sub_1D4E0C830();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Configuration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8SonicKit13Configuration___observationRegistrar;
  sub_1D4E0C830();
  OUTLINED_FUNCTION_0_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t Configuration.playerID.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1D4DD1368(KeyPath);

  return v1;
}

uint64_t sub_1D4DD1F8C@<X0>(uint64_t *a1@<X8>)
{
  result = Configuration.playerID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Configuration.playerID.setter()
{
  swift_getKeyPath();

  return sub_1D4DD1748();
}

uint64_t (*Configuration.playerID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  KeyPath = swift_getKeyPath();
  v4 = sub_1D4DD1368(KeyPath);
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return sub_1D4DD20BC;
}

uint64_t sub_1D4DD20BC(uint64_t a1, char a2)
{
  swift_getKeyPath();
  if ((a2 & 1) == 0)
  {
    return sub_1D4DD1748();
  }

  sub_1D4E0CA10();
  sub_1D4DD1748();
}

uint64_t sub_1D4DD2168@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.stateRestorationSupported.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*Configuration.stateRestorationSupported.modify(uint64_t a1))()
{
  *a1 = v1;
  KeyPath = swift_getKeyPath();
  v4 = sub_1D4DD1434(KeyPath);

  *(a1 + 8) = v4 & 1;
  return sub_1D4DD227C;
}

uint64_t sub_1D4DD22A8()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1D4DD1434(KeyPath);

  return v1 & 1;
}

uint64_t sub_1D4DD22E0@<X0>(_BYTE *a1@<X8>)
{
  result = Configuration.handoffSupported.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*Configuration.handoffSupported.modify(uint64_t a1))()
{
  *a1 = v1;
  KeyPath = swift_getKeyPath();
  v4 = sub_1D4DD1434(KeyPath);

  *(a1 + 8) = v4 & 1;
  return sub_1D4DD23F4;
}

unint64_t sub_1D4DD245C(uint64_t a1, uint64_t a2)
{
  sub_1D4E0D1D0();
  sub_1D4E0CB50();
  v4 = sub_1D4E0D1F0();

  return sub_1D4DD2544(a1, a2, v4);
}

unint64_t sub_1D4DD24D4(uint64_t a1)
{
  sub_1D4E0CF10();
  v2 = sub_1D4E0CA90();
  return sub_1D4DD25F8(a1, v2);
}

unint64_t sub_1D4DD2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D4E0D170() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4DD25F8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1D4E0CF10();
    if (sub_1D4E0CAB0())
    {
      break;
    }
  }

  return i;
}

double sub_1D4DD26C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1D4DD245C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1D4DD37F0();
    sub_1D4E0D040();

    v8 = (*(v11 + 56) + 48 * v7);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
    a3[2] = v8[2];
    sub_1D4D9E368();
    sub_1D4E0D060();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_1D4DD27AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1D4DD24D4(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1D4DD3564(0, &qword_1EC7E42B8, MEMORY[0x1E69E6DC8]);
    sub_1D4E0D040();

    sub_1D4D9EA28((*(v8 + 56) + 32 * v6), a2);
    sub_1D4E0CF10();
    sub_1D4E0D060();
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D4DD28A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D4DD3564(0, &qword_1EC7E42C0, MEMORY[0x1E69E6EC8]);
  v31 = a2;
  result = sub_1D4E0D0A0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      sub_1D4DD88F8(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v33 = v20;
    v21 = (v19 + 32 * v18);
    if (v31)
    {
      sub_1D4D9EA28(v21, v32);
    }

    else
    {
      sub_1D4D9E980(v21, v32);
    }

    sub_1D4E0CF10();
    result = sub_1D4E0CA90();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v20;
    result = sub_1D4D9EA28(v32, (*(v7 + 56) + 32 * v25));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D4DD2B64(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D4DD245C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D4DD37F0();
  if ((sub_1D4E0D040() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D4DD245C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D4E0D1B0();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 48 * v11;

    return sub_1D4DD3858(a1, v16);
  }

  else
  {
    sub_1D4DD2DE0(v11, a2, a3, a1, v15);

    return sub_1D4E0CA10();
  }
}

_OWORD *sub_1D4DD2C98(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D4DD24D4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_1D4DD3564(0, &qword_1EC7E42B8, MEMORY[0x1E69E6DC8]);
  if ((sub_1D4E0D040() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1D4DD24D4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_1D4E0CF10();
    result = sub_1D4E0D1B0();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    return sub_1D4D9EA28(a1, v14);
  }

  else
  {
    sub_1D4DD2E3C(v9, a2, a1, v13);
  }
}

unint64_t sub_1D4DD2DE0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1D4DD2E3C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D4D9EA28(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D4DD2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D4D9E980(a3, a1);
}

uint64_t sub_1D4DD2EE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D4DD2EA4((a2 + 1), *a1, (a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_1D4DD2F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1D4DD3320(a1, a2, a3, v29);
  v27[2] = v29[0];
  v27[3] = v29[1];
  v27[4] = v29[2];
  v28 = v30;
  sub_1D4E0CA10();

  while (1)
  {
    sub_1D4DD335C(&v26);
    v7 = v26;
    if (!v26)
    {
      sub_1D4DD355C();
    }

    sub_1D4D9EA28(v27, v25);
    v8 = *a5;
    v10 = sub_1D4DD24D4(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D4DD3564(0, &qword_1EC7E42B8, MEMORY[0x1E69E6DC8]);
        sub_1D4E0D050();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D4DD28A4(v13, a4 & 1);
      v15 = sub_1D4DD24D4(v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v10 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1D4D9E980(v25, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);

        v18 = (v17[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_1D4D9EA28(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v19[6] + 8 * v10) = v7;
    sub_1D4D9EA28(v25, (v19[7] + 32 * v10));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1D4E0CF10();
  result = sub_1D4E0D1B0();
  __break(1u);
  return result;
}

void sub_1D4DD3140()
{
  if (!qword_1EC7E3780)
  {
    v0 = sub_1D4E0CEE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3780);
    }
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t type metadata accessor for Configuration()
{
  result = qword_1EC7E42A0;
  if (!qword_1EC7E42A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4DD3254()
{
  result = sub_1D4E0C830();
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

uint64_t sub_1D4DD3320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1D4DD335C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    sub_1D4D9E980(*(v3 + 56) + 32 * v10, &v15);
    *&v18[0] = v11;
    sub_1D4D9EA28(&v15, (v18 + 8));

    v13 = *&v18[0];
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15 = v13;
      v16 = *(v18 + 8);
      v17 = *(&v18[1] + 8);
      v14(&v15);
      return sub_1D4DD35D8(&v15, sub_1D4DD362C);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        memset(v18, 0, 40);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D4DD34E4()
{
  result = qword_1EC7E42B0;
  if (!qword_1EC7E42B0)
  {
    type metadata accessor for Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E42B0);
  }

  return result;
}

void sub_1D4DD3564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D4E0CF10();
    v7 = a3(a1, v6, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6930]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D4DD35D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D4DD362C()
{
  if (!qword_1EC7E42C8)
  {
    sub_1D4E0CF10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7E42C8);
    }
  }
}

uint64_t sub_1D4DD369C(uint64_t a1, uint64_t a2)
{
  sub_1D4D9E368();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D4DD3700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D4DD3764(uint64_t a1)
{
  sub_1D4DD3700(0, &qword_1EC7E3A00, sub_1D4D9E368, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D4DD37F0()
{
  if (!qword_1EC7E42D0)
  {
    sub_1D4D9E368();
    v0 = sub_1D4E0D070();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E42D0);
    }
  }
}

uint64_t sub_1D4DD3858(uint64_t a1, uint64_t a2)
{
  sub_1D4D9E368();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Never.createBehavior()()
{
  sub_1D4E0C870();
  sub_1D4E0C860();
  sub_1D4D8E454();
  v1 = sub_1D4E0CD30();

  return MEMORY[0x1EEE6DFA0](sub_1D4DD3A00, v1, v0);
}

uint64_t sub_1D4DD3A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4DD3B18;

  return static Never.createBehavior()();
}

uint64_t sub_1D4DD3B18()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t dispatch thunk of static EngineComponentSpecification.createBehavior()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4DD3D4C;

  return v9(a1, a2, a3);
}

uint64_t sub_1D4DD3D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

SonicKit::SonicEntitlementError_optional __swiftcall SonicEntitlementError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D4DD3E7C()
{
  result = qword_1EC7E42D8;
  if (!qword_1EC7E42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E42D8);
  }

  return result;
}

uint64_t sub_1D4DD3ED8@<X0>(uint64_t *a1@<X8>)
{
  result = SonicEntitlementError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D4DD3F04()
{
  result = qword_1EC7E42E0;
  if (!qword_1EC7E42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E42E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SonicEntitlementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SonicEntitlementError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void NSFileManager.sonicContainerURL.getter()
{
  sub_1D4DD4308(0, &qword_1EC7E42E8, MEMORY[0x1E69D38D0]);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1D4E0CAC0();
  v3 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v3)
  {
    sub_1D4E0C770();
  }

  else
  {
    sub_1D4DD42B4();
    sub_1D4E0C8D0();
    sub_1D4E0C8C0();
    sub_1D4E0C880();
    sub_1D4E0C8C0();
    sub_1D4DD4308(0, &qword_1EC7E42F8, MEMORY[0x1E69D38D8]);
    sub_1D4DD436C();
    swift_allocError();
    sub_1D4E0C8E0();
    swift_willThrow();
  }
}

unint64_t sub_1D4DD42B4()
{
  result = qword_1EC7E42F0;
  if (!qword_1EC7E42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E42F0);
  }

  return result;
}

void sub_1D4DD4308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D4DD42B4();
    v7 = a3(a1, &type metadata for SonicEntitlementError, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D4DD436C()
{
  result = qword_1EC7E4300;
  if (!qword_1EC7E4300)
  {
    sub_1D4DD4308(255, &qword_1EC7E42F8, MEMORY[0x1E69D38D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4300);
  }

  return result;
}

uint64_t sub_1D4DD43E0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "token-ttl-in-seconds";
  }

  else
  {
    v4 = "hls-key-server-url";
  }

  if (a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (a2)
  {
    v6 = "hls-key-server-url";
  }

  else
  {
    v6 = "token-ttl-in-seconds";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D4E0D170();
  }

  return v8 & 1;
}

uint64_t sub_1D4DD4484(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000065646FLL;
  v3 = 0x437972746E756F63;
  v4 = a1;
  v5 = 0x437972746E756F63;
  v6 = 0xEB0000000065646FLL;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000012;
      v6 = 0x80000001D4E32330;
      break;
    case 2:
      v5 = 0x6465636E61686E65;
      v6 = 0xEE006F696475612DLL;
      break;
    case 3:
      v5 = 0x757165722D737066;
      v6 = 0xEB00000000747365;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x747265632D737066;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000012;
      v2 = 0x80000001D4E32330;
      break;
    case 2:
      v3 = 0x6465636E61686E65;
      v2 = 0xEE006F696475612DLL;
      break;
    case 3:
      v3 = 0x757165722D737066;
      v2 = 0xEB00000000747365;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x747265632D737066;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D4E0D170();
  }

  return v8 & 1;
}

uint64_t sub_1D4DD4630()
{
  v1 = sub_1D4E0C850();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1D4E0C840();
  sub_1D4E0C840();
  sub_1D4DD8110();
  v8 = OUTLINED_FUNCTION_21_3();
  v9 = *(v3 + 8);
  v9(v0, v1);
  v9(v7, v1);
  return v8 & 1;
}

uint64_t sub_1D4DD4744()
{
  v1 = sub_1D4E0C850();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1D4E0C840();
  sub_1D4E0C840();
  sub_1D4DD8110();
  v8 = OUTLINED_FUNCTION_21_3();
  v9 = *(v3 + 8);
  v9(v0, v1);
  v9(v7, v1);
  return v8 & 1;
}

uint64_t sub_1D4DD4994(unsigned __int8 a1, char a2)
{
  v2 = 1684632420;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684632420;
  switch(v4)
  {
    case 1:
      v5 = 0x666E692D79616C70;
      v3 = 0xE90000000000006FLL;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v3 = 0x80000001D4E322C0;
      break;
    case 3:
      v5 = 0x6F726665726F7473;
      v3 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x666E692D79616C70;
      v6 = 0xE90000000000006FLL;
      break;
    case 2:
      v2 = 0xD000000000000014;
      v6 = 0x80000001D4E322C0;
      break;
    case 3:
      v2 = 0x6F726665726F7473;
      v6 = 0xEA0000000000746ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D4E0D170();
  }

  return v8 & 1;
}

uint64_t sub_1D4DD4B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1D4E0D170();
  }
}

uint64_t sub_1D4DD4B34()
{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_22_3();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4B74()
{
  sub_1D4E0D1D0();
  sub_1D4E0CB50();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4BC4()
{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_22_3();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4C04()
{
  sub_1D4E0D1D0();
  sub_1D4DD4E84();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4C4C()
{
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x1DA6E0F50](v0);
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4C94(char a1)
{
  sub_1D4E0D1D0();
  sub_1D4DD5E88(a1);
  sub_1D4E0CB50();

  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4CF8()
{
  sub_1D4E0CB50();
}

uint64_t sub_1D4DD4D60()
{
  sub_1D4E0CB50();
}

uint64_t sub_1D4DD4E84()
{
  sub_1D4E0CB50();
}

uint64_t sub_1D4DD4F78()
{
  sub_1D4E0D1D0();
  sub_1D4E0CB50();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD4FC4()
{
  sub_1D4E0D1D0();
  OUTLINED_FUNCTION_22_3();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD500C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](a2);
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD5050()
{
  sub_1D4E0D1D0();
  sub_1D4DD4E84();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD5094()
{
  sub_1D4E0D1D0();
  OUTLINED_FUNCTION_22_3();
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD50DC(uint64_t a1, char a2)
{
  sub_1D4E0D1D0();
  sub_1D4DD5E88(a2);
  sub_1D4E0CB50();

  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD513C()
{
  sub_1D4E0D1D0();
  sub_1D4E0CB50();

  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD51B8(uint64_t a1)
{
  result = MEMORY[0x1DA6E0B80](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_1D4E0CA10();
    sub_1D4DD8BAC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t BagURL.url(from:account:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D4E0CAC0();
  v7 = [a1 URLFromURLString:v6 account:a2];

  if (v7)
  {
    sub_1D4E0C770();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D4E0C780();

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v9);
}

uint64_t BagURL.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_20();
  sub_1D4E0D220();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_20();
    v5 = sub_1D4E0D180();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t BagURL.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E0D240();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D4E0D190();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1D4DD5470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D4E0D170() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C646572616873 && a2 == 0xEF676E696E657473)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D4E0D170();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D4DD5580(char a1)
{
  sub_1D4E0D1D0();
  MEMORY[0x1DA6E0F50](a1 & 1);
  return sub_1D4E0D1F0();
}

uint64_t sub_1D4DD55C8(char a1)
{
  if (a1)
  {
    return 0x694C646572616873;
  }

  else
  {
    return 0x746C7561666564;
  }
}

void sub_1D4DD560C()
{
  OUTLINED_FUNCTION_14_3();
  v15[2] = v1;
  v16 = v0;
  v15[1] = v2;
  v4 = v3;
  OUTLINED_FUNCTION_5_3();
  sub_1D4DD7C2C(0, v5, v6, &type metadata for MusicBag.MusicAPIDomains.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  OUTLINED_FUNCTION_10();
  v10 = v9;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D4DD7B84();
  sub_1D4E0D250();
  v14 = v16;
  sub_1D4E0D120();
  if (!v14)
  {
    sub_1D4E0D120();
  }

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_15_3();
}

void sub_1D4DD5780()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  sub_1D4DD7C2C(0, v3, v4, &type metadata for MusicBag.MusicAPIDomains.CodingKeys, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D4DD7B84();
  sub_1D4E0D230();
  if (!v0)
  {
    sub_1D4E0D0E0();
    sub_1D4E0D0E0();
    v6 = OUTLINED_FUNCTION_12_5();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_1D4DD594C()
{
  v0 = sub_1D4E0D0C0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D4DD59A0(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_1D4DD59D8()
{
  OUTLINED_FUNCTION_14_3();
  v21 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  sub_1D4DD7C2C(0, v4, v5, v6, MEMORY[0x1E69E6F58]);
  v8 = v7;
  OUTLINED_FUNCTION_10();
  v10 = v9;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *v0;
  v15 = v0[1];
  v20 = v0[2];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4DD7BD8();
  sub_1D4E0CA10();
  sub_1D4E0D250();
  v22 = v14;
  v23 = v15;
  sub_1D4DD670C();
  v16 = v21;
  sub_1D4E0D130();

  if (!v16)
  {
    v22 = v20;
    OUTLINED_FUNCTION_2_3();
    sub_1D4DD92DC(0, v17, v18, v19);
    sub_1D4DD7C94(&qword_1EC7E43B8, sub_1D4DD670C);
    sub_1D4E0D130();
  }

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_15_3();
}

void sub_1D4DD5BE0()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v1;
  v12 = v3;
  OUTLINED_FUNCTION_4_3();
  sub_1D4DD7C2C(0, v4, v5, &type metadata for MusicBag.EnhancedAudio.CodingKeys, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D4DD7BD8();
  OUTLINED_FUNCTION_16_2();
  sub_1D4E0D230();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1D4DD6CB0();
    sub_1D4E0D100();
    OUTLINED_FUNCTION_2_3();
    sub_1D4DD92DC(0, v7, v8, v9);
    sub_1D4DD7C94(&qword_1EC7E43D0, sub_1D4DD6CB0);
    sub_1D4E0D100();
    v10 = OUTLINED_FUNCTION_10_3();
    v11(v10);
    *v12 = v13;
    v12[1] = v14;
    v12[2] = v13;
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_1D4DD5E3C()
{
  v0 = sub_1D4E0D0C0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D4DD5E88(char a1)
{
  result = 0x437972746E756F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6465636E61686E65;
      break;
    case 3:
      result = 0x757165722D737066;
      break;
    case 4:
      result = 0x747265632D737066;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4DD5F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4DD5470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4DD5FE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DD5540();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DD6008(uint64_t a1)
{
  v2 = sub_1D4DD7B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4DD6044(uint64_t a1)
{
  v2 = sub_1D4DD7B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D4DD6080(void *a1@<X8>)
{
  sub_1D4DD5780();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1D4DD60F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DD594C();
  *a1 = result;
  return result;
}

unint64_t sub_1D4DD6124@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4DD59A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D4DD6158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DD594C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DD618C(uint64_t a1)
{
  v2 = sub_1D4DD7BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4DD61C8(uint64_t a1)
{
  v2 = sub_1D4DD7BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4DD6258@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DD5E3C();
  *a1 = result;
  return result;
}

unint64_t sub_1D4DD6288@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4DD5E88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D4DD62BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4DD5E3C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DD6300(uint64_t a1)
{
  v2 = sub_1D4DD6610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4DD633C(uint64_t a1)
{
  v2 = sub_1D4DD6610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicBag.encode(to:)()
{
  OUTLINED_FUNCTION_14_3();
  v37 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  sub_1D4DD7C2C(0, v4, v5, &type metadata for MusicBag.CodingKeys, MEMORY[0x1E69E6F58]);
  OUTLINED_FUNCTION_10();
  v7 = v6;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = v0[2];
  v35 = v0[3];
  v36 = v11;
  v12 = v0[4];
  v33 = v0[5];
  v34 = v12;
  v13 = v0[6];
  v31 = v0[7];
  v32 = v13;
  v14 = v0[8];
  v29 = v0[9];
  v30 = v14;
  v15 = v0[10];
  v26 = v0[11];
  v27 = v0[12];
  v28 = v15;
  v16 = v3[3];
  v17 = v3;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1D4DD6610();
  sub_1D4E0D250();
  LOBYTE(v38) = 0;
  v20 = v37;
  sub_1D4E0D120();
  if (!v20)
  {
    v21 = v31;
    v22 = v32;
    v24 = v29;
    v23 = v30;
    v38 = v36;
    v39 = v35;
    v40 = v34;
    v41 = v33;
    sub_1D4DD6664();
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_23_2();
    v38 = v22;
    v39 = v21;
    v40 = v23;
    v25 = sub_1D4DD66B8();
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_23_2();
    if (v25)
    {
    }

    else
    {

      v38 = v24;
      v39 = v28;
      sub_1D4DD670C();
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_23_2();

      v38 = v26;
      v39 = v27;
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_23_2();
    }
  }

  (*(v7 + 8))(v10, v19);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_1D4DD6610()
{
  result = qword_1EC7E4310;
  if (!qword_1EC7E4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4310);
  }

  return result;
}

unint64_t sub_1D4DD6664()
{
  result = qword_1EC7E4318;
  if (!qword_1EC7E4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4318);
  }

  return result;
}

unint64_t sub_1D4DD66B8()
{
  result = qword_1EC7E4320;
  if (!qword_1EC7E4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4320);
  }

  return result;
}

unint64_t sub_1D4DD670C()
{
  result = qword_1EC7E4328;
  if (!qword_1EC7E4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4328);
  }

  return result;
}

void MusicBag.init(from:)()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v1;
  v23 = v3;
  OUTLINED_FUNCTION_6_4();
  sub_1D4DD7C2C(0, v4, v5, &type metadata for MusicBag.CodingKeys, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D4DD6610();
  sub_1D4E0D230();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    LOBYTE(v25) = 0;
    OUTLINED_FUNCTION_16_2();
    v7 = sub_1D4E0D0E0();
    v22 = v8;
    sub_1D4DD6C08();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_16_2();
    sub_1D4E0D100();
    v18 = v25;
    v21 = v26;
    v9 = v27;
    v20 = v28;
    sub_1D4DD6C5C();
    OUTLINED_FUNCTION_9_2();
    sub_1D4E0D100();
    v16 = v25;
    v17 = v26;
    v19 = v27;
    LOBYTE(v24[0]) = 3;
    sub_1D4DD6CB0();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_16_2();
    sub_1D4E0D100();
    v14 = v25;
    v15 = v26;
    OUTLINED_FUNCTION_16_2();
    sub_1D4E0D100();
    v10 = OUTLINED_FUNCTION_3_3();
    v11(v10);
    v13 = v38;
    v12 = v39;
    v24[0] = v7;
    v24[1] = v22;
    v24[2] = v18;
    v24[3] = v21;
    v24[4] = v9;
    v24[5] = v20;
    v24[6] = v16;
    v24[7] = v17;
    v24[8] = v19;
    v24[9] = v14;
    v24[10] = v15;
    v24[11] = v38;
    v24[12] = v39;
    memcpy(v23, v24, 0x68uLL);
    sub_1D4DD6D04(v24, &v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v25 = v7;
    v26 = v22;
    v27 = v18;
    v28 = v21;
    v29 = v9;
    v30 = v20;
    v31 = v16;
    v32 = v17;
    v33 = v19;
    v34 = v14;
    v35 = v15;
    v36 = v13;
    v37 = v12;
    sub_1D4DD6D3C(&v25);
  }

  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_1D4DD6C08()
{
  result = qword_1EC7E4338;
  if (!qword_1EC7E4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4338);
  }

  return result;
}

unint64_t sub_1D4DD6C5C()
{
  result = qword_1EC7E4340;
  if (!qword_1EC7E4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4340);
  }

  return result;
}

unint64_t sub_1D4DD6CB0()
{
  result = qword_1EC7E4348;
  if (!qword_1EC7E4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4348);
  }

  return result;
}

uint64_t static MusicBag.bag(for:)(uint64_t a1)
{
  sub_1D4DD8168(0, &qword_1EC7E4350, MEMORY[0x1E69E8798]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v2);
  v7 = a1;
  (*(v4 + 104))(&v6[-v3], *MEMORY[0x1E69E8790]);
  return sub_1D4E0CDE0();
}

void sub_1D4DD6EAC(uint64_t a1, void *a2)
{
  v45 = a1;
  aBlock[13] = *MEMORY[0x1E69E9840];
  sub_1D4DD8168(0, &qword_1EC7E43E0, MEMORY[0x1E69E8780]);
  v39 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - v4;
  sub_1D4DD8168(0, &qword_1EC7E43E8, MEMORY[0x1E69E87A0]);
  v44 = v5;
  v42 = *(v5 - 8);
  v40 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - v6;
  sub_1D4DD81E8();
  v43 = sub_1D4DD7D14(0x636973754DLL, 0xE500000000000000, 3157553, 0xE300000000000000, 0, a2);
  v47 = [objc_opt_self() uninitializedToken];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D4DD831C(0, 5, 0);
  v7 = 0;
  v8 = aBlock[0];
  do
  {
    v9 = 0xEB0000000065646FLL;
    v10 = 0x437972746E756F63;
    switch(byte_1F507B1A8[v7 + 32])
    {
      case 1:
        v10 = 0xD000000000000012;
        v9 = 0x80000001D4E32330;
        break;
      case 2:
        v10 = 0x6465636E61686E65;
        v9 = 0xEE006F696475612DLL;
        break;
      case 3:
        v10 = 0x757165722D737066;
        v9 = 0xEB00000000747365;
        break;
      case 4:
        v9 = 0xE800000000000000;
        v10 = 0x747265632D737066;
        break;
      default:
        break;
    }

    aBlock[0] = v8;
    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      sub_1D4DD831C((v11 > 1), v12 + 1, 1);
      v8 = aBlock[0];
    }

    ++v7;
    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = v10;
    v13[5] = v9;
  }

  while (v7 != 5);
  sub_1D4DD51B8(v8);
  v14 = sub_1D4E0CDF0();

  v15 = v42;
  v16 = v41;
  v17 = v44;
  (*(v42 + 16))(v41, v45, v44);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(&v19[v18], v16, v17);
  aBlock[4] = sub_1D4DD833C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4DD808C;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  v21 = v43;
  v22 = [v43 cachedValuesForKeys:v14 observationToken:&v47 updateHandler:v20];
  _Block_release(v20);

  sub_1D4E0C9B0();
  v23 = v47;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  v25 = v21;
  sub_1D4E0CDB0();
  v26 = objc_opt_self();
  v27 = sub_1D4E0C9A0();
  aBlock[0] = 0;
  v28 = [v26 dataWithJSONObject:v27 options:0 error:aBlock];

  v29 = aBlock[0];
  if (v28)
  {
    v30 = sub_1D4E0C7E0();
    v32 = v31;

    sub_1D4E0C6D0();
    swift_allocObject();
    sub_1D4E0C6C0();
    sub_1D4DD7600();
    sub_1D4E0C6B0();

    memcpy(__dst, aBlock, sizeof(__dst));
    v35 = v37;
    sub_1D4E0CDC0();
    sub_1D4DCBBA8(v30, v32);
    (*(v38 + 8))(v35, v39);
  }

  else
  {
    v33 = v29;
    v34 = sub_1D4E0C760();

    swift_willThrow();
    aBlock[0] = v34;
    sub_1D4E0CDD0();
  }
}

unint64_t sub_1D4DD75D0(uint64_t a1)
{
  *(a1 + 8) = sub_1D4DD7600();
  result = sub_1D4DD7654();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D4DD7600()
{
  result = qword_1EC7E4358;
  if (!qword_1EC7E4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4358);
  }

  return result;
}

unint64_t sub_1D4DD7654()
{
  result = qword_1EC7E4360;
  if (!qword_1EC7E4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4360);
  }

  return result;
}

uint64_t sub_1D4DD76A8(uint64_t a1, int a2)
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

uint64_t sub_1D4DD76E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D4DD773C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D4DD777C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
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

uint64_t sub_1D4DD77F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D4DD7838(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MusicBag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicBag.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4DD7A00()
{
  result = qword_1EC7E4368;
  if (!qword_1EC7E4368)
  {
    sub_1D4DD92DC(255, &qword_1EC7E4370, &type metadata for MusicBag.CodingKeys, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4368);
  }

  return result;
}

unint64_t sub_1D4DD7A80()
{
  result = qword_1EC7E4378;
  if (!qword_1EC7E4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4378);
  }

  return result;
}

unint64_t sub_1D4DD7AD8()
{
  result = qword_1EC7E4380;
  if (!qword_1EC7E4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4380);
  }

  return result;
}

unint64_t sub_1D4DD7B30()
{
  result = qword_1EC7E4388;
  if (!qword_1EC7E4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4388);
  }

  return result;
}

unint64_t sub_1D4DD7B84()
{
  result = qword_1EC7E4398;
  if (!qword_1EC7E4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E4398);
  }

  return result;
}

unint64_t sub_1D4DD7BD8()
{
  result = qword_1EC7E43A8;
  if (!qword_1EC7E43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E43A8);
  }

  return result;
}

void sub_1D4DD7C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D4DD7C94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_2_3();
    sub_1D4DD92DC(255, v5, v6, v7);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D4DD7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = sub_1D4E0CAC0();

  v9 = sub_1D4E0CAC0();

  v10 = [swift_getObjCClassFromMetadata() bagForProfile:v8 profileVersion:v9 processInfo:a5 account:a6];

  return v10;
}

uint64_t sub_1D4DD7DCC()
{
  __src[13] = *MEMORY[0x1E69E9840];
  sub_1D4DD8168(0, &qword_1EC7E43E0, MEMORY[0x1E69E8780]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &__dst[-v3];
  v5 = objc_opt_self();
  v6 = sub_1D4E0C9A0();
  __src[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:__src];

  v8 = __src[0];
  if (v7)
  {
    v9 = sub_1D4E0C7E0();
    v11 = v10;

    sub_1D4E0C6D0();
    swift_allocObject();
    sub_1D4E0C6C0();
    sub_1D4DD7600();
    sub_1D4E0C6B0();

    memcpy(__dst, __src, sizeof(__dst));
    sub_1D4DD8168(0, &qword_1EC7E43E8, MEMORY[0x1E69E87A0]);
    sub_1D4E0CDC0();
    sub_1D4DCBBA8(v9, v11);
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    v12 = v8;
    v13 = sub_1D4E0C760();

    swift_willThrow();
    __src[0] = v13;
    sub_1D4DD8168(0, &qword_1EC7E43E8, MEMORY[0x1E69E87A0]);
    return sub_1D4E0CDD0();
  }
}

uint64_t sub_1D4DD808C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1D4E0C9B0();

  v1(v2);
}

unint64_t sub_1D4DD8110()
{
  result = qword_1EC7E43D8;
  if (!qword_1EC7E43D8)
  {
    sub_1D4E0C850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E43D8);
  }

  return result;
}

void sub_1D4DD8168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D4DA1130(255, &qword_1EE08A670);
    v7 = a3(a1, &type metadata for MusicBag, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D4DD81E8()
{
  result = qword_1EC7E3F78;
  if (!qword_1EC7E3F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7E3F78);
  }

  return result;
}

char *sub_1D4DD822C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

char *sub_1D4DD8254(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}

char *sub_1D4DD8278(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_6(a3, result);
  }

  return result;
}