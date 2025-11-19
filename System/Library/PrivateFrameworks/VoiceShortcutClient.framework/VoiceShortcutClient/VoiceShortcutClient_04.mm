unint64_t sub_1B1E3DB58()
{
  result = qword_1EB784E68;
  if (!qword_1EB784E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E68);
  }

  return result;
}

uint64_t ProtobufUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

uint64_t OnewayProtobufRepresentable.protobuf.getter(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  OUTLINED_FUNCTION_3_9(a1, a1, a2);
  return v2(&v4);
}

void OnewayProtobufRepresentable<>.protobufBytes(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  a13 = *v31;
  (*(v27 + 16))(&a13, v29, v27);
  if (!v23)
  {
    sub_1B1F1A3F0();
    (*(v34 + 8))(v39, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable.init(protobuf:)()
{
  OUTLINED_FUNCTION_34();
  v32 = v2;
  v33 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v4 + 8);
  v34 = v6;
  v35 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  OUTLINED_FUNCTION_5_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_11();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v32 - v28;
  (*(v13 + 16))(v18, v8, v11);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    v30 = *(v13 + 8);
    v30(v18, v11);
    type metadata accessor for ProtobufRepresentableError();
    swift_getWitnessTable();
    swift_allocError();
    *v31 = AssociatedTypeWitness;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v30(v8, v11);
  }

  else
  {
    (*(v20 + 32))(v29, v18, AssociatedTypeWitness);
    (*(v20 + 16))(v26, v29, AssociatedTypeWitness);
    (*(v4 + 16))(v26, v34, v4);
    (*(v13 + 8))(v8, v11);
    (*(v20 + 8))(v29, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable.init(optionalProtobuf:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v44 = v3;
  OUTLINED_FUNCTION_5_0();
  v41 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v9;
  v10 = *(v9 + 8);
  v45 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  OUTLINED_FUNCTION_5_0();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_11();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v39 - v30;
  (*(v15 + 16))(v20, v2, v13);
  if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness) == 1)
  {
    v32 = *(v15 + 8);
    v32(v2, v13);
    v32(v20, v13);
    v33 = 1;
    v34 = v44;
    v35 = v45;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v34, v33, 1, v35);
    goto LABEL_7;
  }

  v40 = v2;
  (*(v22 + 32))(v31, v20, AssociatedTypeWitness);
  v36 = (*(v22 + 16))(v28, v31, AssociatedTypeWitness);
  OUTLINED_FUNCTION_3_9(v36, v37, v42);
  v35 = v45;
  v38(v28, v45);
  if (!v0)
  {
    (*(v15 + 8))(v40, v13);
    (*(v22 + 8))(v31, AssociatedTypeWitness);
    v34 = v44;
    (*(v41 + 32))(v44, v43, v35);
    v33 = 0;
    goto LABEL_6;
  }

  (*(v15 + 8))(v40, v13);
  (*(v22 + 8))(v31, AssociatedTypeWitness);
LABEL_7:
  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable<>.init(protobufBytes:compressionAlgorithm:)()
{
  OUTLINED_FUNCTION_34();
  v58 = v2;
  v59 = v1;
  v54 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v52 = v15;
  v60[5] = *MEMORY[0x1E69E9840];
  v16 = sub_1B1F1A3D0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = v4;
  v18 = *(v4 + 8);
  v53 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_11();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  if (v8)
  {
    v51 = v27;
    v31 = OUTLINED_FUNCTION_1_15();
    sub_1B1E0E714(v31, v32);
    v56 = v14;
    v57 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_1_15();
    v33 = sub_1B1F1A250();
    v60[0] = 0;
    v34 = [v33 decompressedDataUsingAlgorithm:v10 error:v60];

    v35 = v60[0];
    if (!v34)
    {
      v49 = v35;
      sub_1B1F1A1C0();

      swift_willThrow();
      v46 = OUTLINED_FUNCTION_1_15();
      goto LABEL_8;
    }

    v51 = v27;
    v56 = v14;
    v57 = v12;
    v36 = v34;
    sub_1B1F1A290();
  }

  memset(v60, 0, 40);
  v37 = OUTLINED_FUNCTION_1_15();
  sub_1B1E0E714(v37, v38);
  sub_1B1F1A3C0();
  OUTLINED_FUNCTION_1_15();
  v39 = v59;
  sub_1B1F1A3E0();
  if (!v39)
  {
    v40 = v51;
    v41 = (*(v21 + 16))(v51, v30, AssociatedTypeWitness);
    OUTLINED_FUNCTION_3_9(v41, v42, v55);
    v43(v40, v53);
    (*(v21 + 8))(v30, AssociatedTypeWitness);
  }

  v44 = OUTLINED_FUNCTION_1_15();
  sub_1B1E03C48(v44, v45);
  v46 = v56;
  v47 = v57;
LABEL_8:
  sub_1B1E03C48(v46, v47);
  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E3E8B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B1E3E930(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

unint64_t sub_1B1E3E980()
{
  result = qword_1EB784E80;
  if (!qword_1EB784E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtobufUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1E3EB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getMetatypeMetadata();
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E3EB74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
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
    goto LABEL_22;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B1E3EC98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ProtobufRepresentableEscapeHatchCoding(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E3EF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74694B6C6F6F74 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001B1F390C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1B1E3F074(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x74694B6C6F6F74;
      break;
    case 2:
      result = 0x6867696C746F7073;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E3F108(uint64_t a1)
{
  v2 = sub_1B1E3FCCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F144(uint64_t a1)
{
  v2 = sub_1B1E3FCCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E3EF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E3F1B0(uint64_t a1)
{
  v2 = sub_1B1E3F998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F1EC(uint64_t a1)
{
  v2 = sub_1B1E3F998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F228(uint64_t a1)
{
  v2 = sub_1B1E3FA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F264(uint64_t a1)
{
  v2 = sub_1B1E3FA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F2A0(uint64_t a1)
{
  v2 = sub_1B1E3FAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F2DC(uint64_t a1)
{
  v2 = sub_1B1E3FAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F318(uint64_t a1)
{
  v2 = sub_1B1E3FBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F354(uint64_t a1)
{
  v2 = sub_1B1E3FBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v82 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E88, &qword_1B1F2F540);
  v5 = OUTLINED_FUNCTION_0(v4);
  v80 = v6;
  v81 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v79 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E90, &qword_1B1F2F548);
  v12 = OUTLINED_FUNCTION_0(v11);
  v77 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v76 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E98, &qword_1B1F2F550);
  v19 = OUTLINED_FUNCTION_0(v18);
  v74 = v20;
  v75 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v73 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EA0, &qword_1B1F2F558);
  v26 = OUTLINED_FUNCTION_0(v25);
  v71 = v27;
  v72 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v70 - v31;
  v33 = type metadata accessor for VoiceShortcutClientRequest.Automations();
  v34 = OUTLINED_FUNCTION_10(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_3();
  v39 = v38 - v37;
  v40 = type metadata accessor for VoiceShortcutClientRequest();
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EA8, &qword_1B1F2F560);
  v45 = OUTLINED_FUNCTION_0(v44);
  v83 = v46;
  v84 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v49);
  v50 = v3[3];
  __swift_project_boxed_opaque_existential_0(v3, v50);
  sub_1B1E3F998();
  sub_1B1F1B830();
  sub_1B1E3F9EC(v82, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = *v1;
      v64 = *(v1 + 8);
      v65 = *(v1 + 16);
      LOBYTE(v85) = 1;
      sub_1B1E3FBF4();
      v66 = v73;
      OUTLINED_FUNCTION_25_3();
      v85 = v63;
      v86 = v64;
      v87 = v65;
      sub_1B1E3FC48();
      v67 = v75;
      sub_1B1F1B2B0();
      (*(v74 + 8))(v66, v67);
      v68 = OUTLINED_FUNCTION_18_5();
      v69(v68, v32);
      sub_1B1E3FC9C(v63, v64, v65);
      break;
    case 2u:
      v52 = *v1;
      v53 = *(v1 + 8);
      v54 = *(v1 + 16);
      LOBYTE(v85) = 2;
      sub_1B1E3FAF8();
      v55 = v76;
      OUTLINED_FUNCTION_25_3();
      v85 = v52;
      v86 = v53;
      LOBYTE(v87) = v54;
      sub_1B1E3FB4C();
      v56 = v78;
      sub_1B1F1B2B0();
      (*(v77 + 8))(v55, v56);
      v57 = OUTLINED_FUNCTION_18_5();
      v58(v57, v32);
      sub_1B1E3FBA0(v52, v53, v54);
      break;
    case 3u:
      LOBYTE(v85) = 3;
      sub_1B1E3FA50();
      v59 = v79;
      OUTLINED_FUNCTION_34_0();
      sub_1B1E3FAA4();
      v60 = v81;
      sub_1B1F1B2B0();
      (*(v80 + 8))(v59, v60);
      goto LABEL_5;
    default:
      sub_1B1E42188(v1, v39, type metadata accessor for VoiceShortcutClientRequest.Automations);
      LOBYTE(v85) = 0;
      sub_1B1E3FCCC();
      OUTLINED_FUNCTION_34_0();
      sub_1B1E42290(&qword_1EB784EF0);
      v51 = v72;
      sub_1B1F1B2B0();
      (*(v71 + 8))(v32, v51);
      sub_1B1E3FD20(v39);
LABEL_5:
      v61 = OUTLINED_FUNCTION_18_5();
      v62(v61, v50);
      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for VoiceShortcutClientRequest()
{
  result = qword_1EB784F98;
  if (!qword_1EB784F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B1E3F998()
{
  result = qword_1EB784EB0;
  if (!qword_1EB784EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EB0);
  }

  return result;
}

uint64_t sub_1B1E3F9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceShortcutClientRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E3FA50()
{
  result = qword_1EB784EB8;
  if (!qword_1EB784EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EB8);
  }

  return result;
}

unint64_t sub_1B1E3FAA4()
{
  result = qword_1EB784EC0;
  if (!qword_1EB784EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EC0);
  }

  return result;
}

unint64_t sub_1B1E3FAF8()
{
  result = qword_1EB784EC8;
  if (!qword_1EB784EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EC8);
  }

  return result;
}

unint64_t sub_1B1E3FB4C()
{
  result = qword_1EB784ED0;
  if (!qword_1EB784ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784ED0);
  }

  return result;
}

uint64_t sub_1B1E3FBA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 != 1)
  {
    if (a3 >> 6)
    {
      return result;
    }
  }
}

unint64_t sub_1B1E3FBF4()
{
  result = qword_1EB784ED8;
  if (!qword_1EB784ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784ED8);
  }

  return result;
}

unint64_t sub_1B1E3FC48()
{
  result = qword_1EB784EE0;
  if (!qword_1EB784EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EE0);
  }

  return result;
}

void sub_1B1E3FC9C(id a1, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 13) & 3;
  if (v3 == 1)
  {
    sub_1B1E3FCBC(a1, a2, a3 & 0x9FFF);
  }

  else if (!v3)
  {
  }
}

uint64_t sub_1B1E3FCBC(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
  }

  return result;
}

unint64_t sub_1B1E3FCCC()
{
  result = qword_1EB784EE8;
  if (!qword_1EB784EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EE8);
  }

  return result;
}

uint64_t sub_1B1E3FD20(uint64_t a1)
{
  v2 = type metadata accessor for VoiceShortcutClientRequest.Automations();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void VoiceShortcutClientRequest.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v121 = v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EF8, &qword_1B1F2F568);
  OUTLINED_FUNCTION_0(v120);
  v112 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v116 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F00, &qword_1B1F2F570);
  v11 = OUTLINED_FUNCTION_0(v10);
  v110 = v12;
  v111 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v115 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F08, &qword_1B1F2F578);
  v18 = OUTLINED_FUNCTION_0(v17);
  v108 = v19;
  v109 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  v114 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F10, &qword_1B1F2F580);
  v25 = OUTLINED_FUNCTION_0(v24);
  v106 = v26;
  v107 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v113 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F18, &unk_1B1F2F588);
  v32 = OUTLINED_FUNCTION_0(v31);
  v118 = v33;
  v119 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  v117 = type metadata accessor for VoiceShortcutClientRequest();
  v37 = OUTLINED_FUNCTION_10(v117);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v99 - v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_26_1();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v99 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v99 - v50;
  v53 = v3[3];
  v52 = v3[4];
  v122 = v3;
  __swift_project_boxed_opaque_existential_0(v3, v53);
  sub_1B1E3F998();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_8;
  }

  v105 = v49;
  v102 = v1;
  v103 = v45;
  v104 = v42;
  v54 = v121;
  v55 = v119;
  v56 = sub_1B1F1B210();
  sub_1B1E32BFC(v56, 0);
  if (v58 == v59 >> 1)
  {
LABEL_7:
    v66 = v55;
    v67 = v117;
    v68 = sub_1B1F1AFE0();
    swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v70 = v67;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = OUTLINED_FUNCTION_13_4();
    v73(v72, v66);
LABEL_8:
    v74 = v122;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_35();
    return;
  }

  v101 = 0;
  if (v58 < (v59 >> 1))
  {
    v100 = *(v57 + v58);
    sub_1B1E32BF8(v58 + 1);
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    if (v61 == v63 >> 1)
    {
      v64 = v54;
      switch(v100)
      {
        case 1:
          LOBYTE(v123) = 1;
          sub_1B1E3FBF4();
          OUTLINED_FUNCTION_4_10();
          sub_1B1E4223C();
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_2_12();
          v93(v92);
          v94 = OUTLINED_FUNCTION_10_4();
          v95(v94);
          v96 = v124;
          v80 = v102;
          *v102 = v123;
          *(v80 + 16) = v96;
          goto LABEL_13;
        case 2:
          LOBYTE(v123) = 2;
          sub_1B1E3FAF8();
          OUTLINED_FUNCTION_4_10();
          sub_1B1E421E8();
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_2_12();
          v76(v75);
          v77 = OUTLINED_FUNCTION_10_4();
          v78(v77);
          v79 = v124;
          v80 = v103;
          *v103 = v123;
          *(v80 + 16) = v79;
          goto LABEL_13;
        case 3:
          LOBYTE(v123) = 3;
          sub_1B1E3FA50();
          OUTLINED_FUNCTION_4_10();
          sub_1B1E42134();
          OUTLINED_FUNCTION_14_7();
          OUTLINED_FUNCTION_17_3();
          swift_unknownObjectRelease();
          v81 = OUTLINED_FUNCTION_2_12();
          v82(v81);
          v83 = OUTLINED_FUNCTION_10_4();
          v84(v83);
          v80 = v104;
LABEL_13:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_16();
          v89 = v51;
          sub_1B1E42188(v80, v51, v97);
          v91 = v122;
          break;
        default:
          LOBYTE(v123) = 0;
          sub_1B1E3FCCC();
          OUTLINED_FUNCTION_4_10();
          type metadata accessor for VoiceShortcutClientRequest.Automations();
          sub_1B1E42290(&qword_1EB784F38);
          v65 = v105;
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          v85 = OUTLINED_FUNCTION_2_12();
          v86(v85);
          v87 = OUTLINED_FUNCTION_13_4();
          v88(v87, v55);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_16();
          v89 = v51;
          sub_1B1E42188(v65, v51, v90);
          v64 = v121;
          v91 = v122;
          break;
      }

      OUTLINED_FUNCTION_1_16();
      sub_1B1E42188(v89, v64, v98);
      v74 = v91;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1E405F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E406B8(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B1E406EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_24_4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E40780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E405F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E407A8(uint64_t a1)
{
  v2 = sub_1B1E422D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E407E4(uint64_t a1)
{
  v2 = sub_1B1E422D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E40820(uint64_t a1)
{
  v2 = sub_1B1E42328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4085C(uint64_t a1)
{
  v2 = sub_1B1E42328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E40898(uint64_t a1)
{
  v2 = sub_1B1E423D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E408D4(uint64_t a1)
{
  v2 = sub_1B1E423D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutResponse.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F40, &qword_1B1F2F598);
  v5 = OUTLINED_FUNCTION_0(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F48, &qword_1B1F2F5A0);
  v13 = OUTLINED_FUNCTION_0(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F50, &qword_1B1F2F5A8);
  OUTLINED_FUNCTION_0(v43);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  v25 = *v0;
  v39 = v0[1];
  v40 = v25;
  v27 = v0[2];
  v26 = v0[3];
  v28 = v0[5];
  v37 = v0[4];
  v38 = v26;
  v35 = v0[6];
  v36 = v28;
  v29 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1B1E422D4();
  sub_1B1F1B830();
  if (v27)
  {
    LOBYTE(v44) = 1;
    sub_1B1E42328();
    v30 = v43;
    sub_1B1F1B240();
    v44 = v40;
    v45 = v39;
    v46 = v27;
    v47 = v38;
    v48 = v37;
    v49 = v36;
    v50 = v35;
    sub_1B1E4237C();
    v31 = v42;
    sub_1B1F1B2B0();
    (*(v41 + 8))(v11, v31);
    (*(v19 + 8))(v24, v30);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1B1E423D0();
    v32 = v43;
    sub_1B1F1B240();
    (*(v33 + 8))(v1, v34);
    (*(v19 + 8))(v24, v32);
  }

  OUTLINED_FUNCTION_35();
}

void VoiceShortcutResponse.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v56 = v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F78, &qword_1B1F2F5B0);
  OUTLINED_FUNCTION_0(v58);
  v55 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F80, &qword_1B1F2F5B8);
  OUTLINED_FUNCTION_0(v8);
  v54 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784F88, &qword_1B1F2F5C0);
  OUTLINED_FUNCTION_0(v15);
  v57 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_1B1E422D4();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_8;
  }

  v52 = v8;
  v53 = v14;
  v64 = v2;
  v23 = sub_1B1F1B210();
  sub_1B1E32BFC(v23, 0);
  if (v25 == v26 >> 1)
  {
LABEL_7:
    v32 = sub_1B1F1AFE0();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v34 = &type metadata for VoiceShortcutResponse;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = OUTLINED_FUNCTION_12_5();
    v37(v36);
    v2 = v64;
LABEL_8:
    v38 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_35();
    return;
  }

  if (v25 < (v26 >> 1))
  {
    v51 = *(v24 + v25);
    sub_1B1E32BF8(v25 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v51)
      {
        LOBYTE(v59) = 1;
        sub_1B1E42328();
        sub_1B1F1B180();
        v31 = v56;
        sub_1B1E42424();
        sub_1B1F1B200();
        v40 = v57;
        swift_unknownObjectRelease();
        v43 = OUTLINED_FUNCTION_27_2();
        v44(v43);
        (*(v40 + 8))(v21, v15);
        v45 = v59;
        v46 = v60;
        v47 = v61;
        v48 = v62;
        v49 = v63;
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_1B1E423D0();
        v39 = v53;
        sub_1B1F1B180();
        v31 = v56;
        swift_unknownObjectRelease();
        (*(v54 + 8))(v39, v52);
        v41 = OUTLINED_FUNCTION_12_5();
        v42(v41);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v45 = 0uLL;
        v49 = 0uLL;
      }

      *v31 = v45;
      *(v31 + 16) = v46;
      *(v31 + 24) = v47;
      *(v31 + 32) = v48;
      *(v31 + 40) = v49;
      v38 = v64;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

BOOL sub_1B1E41154(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1B1E00CB0(*a1, *a2);
}

uint64_t sub_1B1E4116C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1B1E07E50(*v1);
}

uint64_t sub_1B1E41180(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1B1E00CC0(a1, *v2);
}

uint64_t sub_1B1E41194(uint64_t a1, void *a2)
{
  sub_1B1F1B7C0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1B1E00CC0(v8, *v2);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E411E0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1B1E406B8(*v1);
}

uint64_t sub_1B1E411F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1B1E405F4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1B1E41228(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_1B1E01608();
}

uint64_t sub_1B1E41254@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1B1E33B60();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E41288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E412DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B1E41330(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1B1E41354(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1B1E30118();
}

uint64_t sub_1B1E4137C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = OUTLINED_FUNCTION_17_1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B1E413B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E41408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B1E4145C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1B1F1B7C0();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E414DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E41530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void VoiceShortcutResponseWithValue.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v52 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_32_1();
  type metadata accessor for VoiceShortcutResponseWithValue.ErrorCodingKeys();
  OUTLINED_FUNCTION_8_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v9 = sub_1B1F1B2C0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v49 = v11;
  v50 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v54 = v15;
  OUTLINED_FUNCTION_32_1();
  type metadata accessor for VoiceShortcutResponseWithValue.SuccessCodingKeys();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v16 = sub_1B1F1B2C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v47 = v18;
  v48 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v45 = v22;
  v46 = *(v7 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v44 = v26 - v25;
  v27 = *(v3 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_1();
  v51 = v7;
  type metadata accessor for VoiceShortcutResponseWithValue.CodingKeys();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  v55 = sub_1B1F1B2C0();
  OUTLINED_FUNCTION_0(v55);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  v33 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_1B1F1B830();
  (*(v27 + 16))(v1, v52, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v1[1];
    v53 = *v1;
    v35 = v1[2];
    v36 = v1[3];
    v38 = v1[4];
    v37 = v1[5];
    v39 = v1[6];
    sub_1B1F1B240();
    sub_1B1E4237C();
    sub_1B1F1B2B0();
    (*(v49 + 8))(v54, v50);
    v40 = OUTLINED_FUNCTION_28_2();
    v41(v40);
  }

  else
  {
    (*(v46 + 32))(v44, v1, v51);
    sub_1B1F1B240();
    sub_1B1F1B2B0();
    (*(v47 + 8))(v45, v48);
    (*(v46 + 8))(v44, v51);
    v42 = OUTLINED_FUNCTION_28_2();
    v43(v42);
  }

  OUTLINED_FUNCTION_35();
}

void VoiceShortcutResponseWithValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v22;
  a20 = v23;
  v115 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v110 = v30;
  v31 = type metadata accessor for VoiceShortcutResponseWithValue.ErrorCodingKeys();
  OUTLINED_FUNCTION_8_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v108 = v31;
  v107 = v32;
  v101 = sub_1B1F1B220();
  OUTLINED_FUNCTION_0(v101);
  v100 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v109 = v37;
  OUTLINED_FUNCTION_20_4();
  v38 = type metadata accessor for VoiceShortcutResponseWithValue.SuccessCodingKeys();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_1();
  v105 = v38;
  v104 = v39;
  v99 = sub_1B1F1B220();
  OUTLINED_FUNCTION_0(v99);
  v98 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17();
  v106 = v44;
  OUTLINED_FUNCTION_20_4();
  type metadata accessor for VoiceShortcutResponseWithValue.CodingKeys();
  OUTLINED_FUNCTION_6_9();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1B1F1B220();
  v112 = OUTLINED_FUNCTION_0(v45);
  v113 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_30_1();
  v102 = v27;
  v103 = v25;
  v50 = type metadata accessor for VoiceShortcutResponseWithValue();
  v51 = OUTLINED_FUNCTION_0(v50);
  v111 = v52;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](v51);
  v57 = &v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v96 - v59;
  v61 = v29;
  v62 = v29[3];
  v63 = v29[4];
  a10 = v61;
  __swift_project_boxed_opaque_existential_0(v61, v62);
  v64 = v115;
  sub_1B1F1B810();
  if (!v64)
  {
    v115 = v27;
    v97 = v57;
    WitnessTable = v60;
    v65 = v112;
    *&v116 = sub_1B1F1B210();
    sub_1B1F1A9F0();
    swift_getWitnessTable();
    *&v120 = sub_1B1F1AEF0();
    *(&v120 + 1) = v66;
    *&v121 = v67;
    *(&v121 + 1) = v68;
    sub_1B1F1AEE0();
    swift_getWitnessTable();
    sub_1B1F1ACB0();
    v69 = v116;
    if (v116 == 2 || (v96 = v120, v116 = v120, v117 = v121, (sub_1B1F1ACC0() & 1) == 0))
    {
      v76 = sub_1B1F1AFE0();
      swift_allocError();
      v78 = v77;
      v79 = v65;
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
      *v78 = v50;
      sub_1B1F1B190();
      OUTLINED_FUNCTION_15_8();
      (*(*(v76 - 8) + 104))(v78, *MEMORY[0x1E69E6AF8], v76);
      swift_willThrow();
      (*(v113 + 8))(v21, v79);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v69)
      {
        LOBYTE(v116) = 1;
        v70 = v109;
        OUTLINED_FUNCTION_33_1();
        v71 = v110;
        v72 = v111;
        v73 = v113;
        sub_1B1E42424();
        v74 = v70;
        v75 = v101;
        sub_1B1F1B200();
        OUTLINED_FUNCTION_13_2(&a11);
        v84(v74, v75);
        v85 = OUTLINED_FUNCTION_19_4();
        v86(v85);
        OUTLINED_FUNCTION_16_5();
        swift_unknownObjectRelease();
        v87 = v118;
        v88 = v117;
        v89 = v97;
        *v97 = v116;
        v89[1] = v88;
        *(v89 + 4) = v87;
        *(v89 + 40) = v119;
        swift_storeEnumTagMultiPayload();
        v90 = *(v72 + 32);
        v91 = OUTLINED_FUNCTION_22_4();
        v90(v91);
      }

      else
      {
        LOBYTE(v116) = 0;
        v81 = v106;
        OUTLINED_FUNCTION_33_1();
        v73 = v113;
        v82 = v111;
        v83 = v99;
        sub_1B1F1B200();
        OUTLINED_FUNCTION_13_2(&a9);
        v92(v81, v83);
        v93 = OUTLINED_FUNCTION_19_4();
        v94(v93);
        OUTLINED_FUNCTION_16_5();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v90 = *(v82 + 32);
        v95 = OUTLINED_FUNCTION_22_4();
        v90(v95);
        v71 = v110;
      }

      (v90)(v71, v73, v50);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a10);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E42134()
{
  result = qword_1EB784F20;
  if (!qword_1EB784F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F20);
  }

  return result;
}

uint64_t sub_1B1E42188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1B1E421E8()
{
  result = qword_1EB784F28;
  if (!qword_1EB784F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F28);
  }

  return result;
}

unint64_t sub_1B1E4223C()
{
  result = qword_1EB784F30;
  if (!qword_1EB784F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F30);
  }

  return result;
}

uint64_t sub_1B1E42290(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoiceShortcutClientRequest.Automations();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E422D4()
{
  result = qword_1EB784F58;
  if (!qword_1EB784F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F58);
  }

  return result;
}

unint64_t sub_1B1E42328()
{
  result = qword_1EB784F60;
  if (!qword_1EB784F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F60);
  }

  return result;
}

unint64_t sub_1B1E4237C()
{
  result = qword_1EB784F68;
  if (!qword_1EB784F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F68);
  }

  return result;
}

unint64_t sub_1B1E423D0()
{
  result = qword_1EB784F70;
  if (!qword_1EB784F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F70);
  }

  return result;
}

unint64_t sub_1B1E42424()
{
  result = qword_1EB784F90;
  if (!qword_1EB784F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784F90);
  }

  return result;
}

uint64_t sub_1B1E424D8()
{
  result = type metadata accessor for VoiceShortcutClientRequest.Automations();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient0aB8ResponseO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1B1E42588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B1E425D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_1B1E42638(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1E42680(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E426EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 56;
  if (*(v3 + 64) > 0x38uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
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
    goto LABEL_22;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B1E42810(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x38)
  {
    v5 = 56;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1B1E429D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceShortcutClientRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E42BDC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E42C8C()
{
  result = qword_1EB7851A8;
  if (!qword_1EB7851A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851A8);
  }

  return result;
}

unint64_t sub_1B1E42CE4()
{
  result = qword_1EB7851B0;
  if (!qword_1EB7851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851B0);
  }

  return result;
}

unint64_t sub_1B1E42D3C()
{
  result = qword_1EB7851B8;
  if (!qword_1EB7851B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851B8);
  }

  return result;
}

unint64_t sub_1B1E42D94()
{
  result = qword_1EB7851C0;
  if (!qword_1EB7851C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851C0);
  }

  return result;
}

unint64_t sub_1B1E42DEC()
{
  result = qword_1EB7851C8;
  if (!qword_1EB7851C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851C8);
  }

  return result;
}

unint64_t sub_1B1E42E44()
{
  result = qword_1EB7851D0;
  if (!qword_1EB7851D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851D0);
  }

  return result;
}

unint64_t sub_1B1E42E9C()
{
  result = qword_1EB7851D8;
  if (!qword_1EB7851D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851D8);
  }

  return result;
}

unint64_t sub_1B1E42FF0()
{
  result = qword_1EB7851E0;
  if (!qword_1EB7851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851E0);
  }

  return result;
}

unint64_t sub_1B1E43048()
{
  result = qword_1EB7851E8;
  if (!qword_1EB7851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851E8);
  }

  return result;
}

unint64_t sub_1B1E430A0()
{
  result = qword_1EB7851F0;
  if (!qword_1EB7851F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851F0);
  }

  return result;
}

unint64_t sub_1B1E430F8()
{
  result = qword_1EB7851F8;
  if (!qword_1EB7851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7851F8);
  }

  return result;
}

unint64_t sub_1B1E43150()
{
  result = qword_1EB785200;
  if (!qword_1EB785200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785200);
  }

  return result;
}

unint64_t sub_1B1E431A8()
{
  result = qword_1EB785208;
  if (!qword_1EB785208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785208);
  }

  return result;
}

unint64_t sub_1B1E43200()
{
  result = qword_1EB785210;
  if (!qword_1EB785210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785210);
  }

  return result;
}

unint64_t sub_1B1E43258()
{
  result = qword_1EB785218;
  if (!qword_1EB785218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785218);
  }

  return result;
}

unint64_t sub_1B1E432B0()
{
  result = qword_1EB785220;
  if (!qword_1EB785220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785220);
  }

  return result;
}

unint64_t sub_1B1E43308()
{
  result = qword_1EB785228;
  if (!qword_1EB785228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785228);
  }

  return result;
}

unint64_t sub_1B1E43360()
{
  result = qword_1EB785230;
  if (!qword_1EB785230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785230);
  }

  return result;
}

unint64_t sub_1B1E433B8()
{
  result = qword_1EB785238;
  if (!qword_1EB785238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785238);
  }

  return result;
}

unint64_t sub_1B1E43410()
{
  result = qword_1EB785240;
  if (!qword_1EB785240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785240);
  }

  return result;
}

unint64_t sub_1B1E43468()
{
  result = qword_1EB785248;
  if (!qword_1EB785248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785248);
  }

  return result;
}

unint64_t sub_1B1E434C0()
{
  result = qword_1EB785250;
  if (!qword_1EB785250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785250);
  }

  return result;
}

unint64_t sub_1B1E43518()
{
  result = qword_1EB785258;
  if (!qword_1EB785258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785258);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_1B1F1B510();
}

uint64_t OUTLINED_FUNCTION_33_1()
{
  v2 = *(v0 - 256);

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v2 = *(v0 - 112);

  return sub_1B1F1B240();
}

uint64_t static LNSystemEntityValueType.supportedValueTypeIdentifiers.getter()
{
  sub_1B1E438F8();
  v0 = sub_1B1F1AE50();
  v1 = *(v0 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B1E3B244(0, v1, 0);
    v2 = v23;
    result = sub_1B1E4393C(v0);
    v5 = result;
    v6 = v0 + 64;
    v7 = v1 - 1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v0 + 32))
      {
        if ((*(v6 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_18;
        }

        if (v4 != *(v0 + 36))
        {
          goto LABEL_19;
        }

        v20 = v7;
        v21 = v4;
        v8 = (*(v0 + 48) + 16 * v5);
        v10 = *v8;
        v9 = v8[1];
        v22 = v2;
        v11 = *(*(v0 + 56) + 8 * v5);
        sub_1B1F1A760();
        v12 = v11;
        v13 = [v12 bundleIdentifier];
        v14 = sub_1B1F1A890();
        v16 = v15;

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](46, 0xE100000000000000);

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](v10, v9);

        sub_1B1F1A760();
        MEMORY[0x1B273D1A0](0x797469746E45, 0xE600000000000000);
        v2 = v22;

        v18 = *(v22 + 16);
        v17 = *(v22 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1B1E3B244(v17 > 1, v18 + 1, 1);
          v2 = v22;
        }

        *(v2 + 16) = v18 + 1;
        v19 = v2 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        if (v5 >= -(-1 << *(v0 + 32)))
        {
          goto LABEL_20;
        }

        v6 = v0 + 64;
        if ((*(v0 + 64 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_21;
        }

        if (v21 != *(v0 + 36))
        {
          goto LABEL_22;
        }

        result = sub_1B1F1AF30();
        if (!v20)
        {

          return v2;
        }

        v5 = result;
        v4 = *(v0 + 36);
        v7 = v20 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1B1E438F8()
{
  result = qword_1EB785260;
  if (!qword_1EB785260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB785260);
  }

  return result;
}

uint64_t sub_1B1E4393C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B1F1AF10();
  v4 = *(a1 + 36);
  return result;
}

uint64_t CodableError.errorDomain.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1B1F1A760();
  return v1;
}

uint64_t CodableError.localizedDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B1F1A760();
  return v1;
}

uint64_t CodableError.localizedFailureReason.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1B1F1A760();
  return v1;
}

void CodableError.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B1F1A1B0();
  v18 = [v4 code];
  v5 = [v4 domain];
  v6 = sub_1B1F1A890();
  v8 = v7;

  v9 = [v4 localizedDescription];
  v10 = sub_1B1F1A890();
  v12 = v11;

  v13 = [v4 localizedFailureReason];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B1F1A890();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  *a2 = v18;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v15;
  a2[6] = v17;
}

uint64_t sub_1B1E43B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B1F390E0 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001B1F39100 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1B1E43CA8(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      result = 0x6D6F44726F727265;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E43D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E43B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E43D74(uint64_t a1)
{
  v2 = sub_1B1E43FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E43DB0(uint64_t a1)
{
  v2 = sub_1B1E43FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785268, &qword_1B1F30390);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v18 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v18[4] = v1[2];
  v18[5] = v12;
  v15 = v1[5];
  v18[2] = v1[4];
  v18[3] = v14;
  v18[0] = v1[6];
  v18[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E43FAC();
  sub_1B1F1B830();
  v22 = 0;
  sub_1B1F1B290();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B270();
    v20 = 2;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B270();
    v19 = 3;
    OUTLINED_FUNCTION_1_17();
    sub_1B1F1B250();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1B1E43FAC()
{
  result = qword_1EB785270;
  if (!qword_1EB785270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785270);
  }

  return result;
}

uint64_t CodableError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785278, &qword_1B1F30398);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E43FAC();
  sub_1B1F1B810();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = 0;
  OUTLINED_FUNCTION_0_15();
  v14 = sub_1B1F1B1E0();
  v33 = 1;
  OUTLINED_FUNCTION_0_15();
  v15 = sub_1B1F1B1C0();
  v18 = v17;
  v29 = v15;
  v32 = 2;
  OUTLINED_FUNCTION_0_15();
  v28 = sub_1B1F1B1C0();
  v30 = v19;
  v31 = 3;
  OUTLINED_FUNCTION_0_15();
  v20 = sub_1B1F1B1A0();
  v22 = v21;
  v23 = *(v8 + 8);
  v27 = v20;
  v23(v12, v5);
  v24 = v28;
  v25 = v29;
  *a2 = v14;
  a2[1] = v25;
  a2[2] = v18;
  a2[3] = v24;
  v26 = v27;
  a2[4] = v30;
  a2[5] = v26;
  a2[6] = v22;
  sub_1B1F1A760();
  sub_1B1F1A760();
  sub_1B1F1A760();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B1E44270(uint64_t a1)
{
  v2 = sub_1B1E445A0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E442AC(uint64_t a1)
{
  v2 = sub_1B1E445A0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E44320(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1B1E44360(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for CodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E4449C()
{
  result = qword_1EB785280;
  if (!qword_1EB785280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785280);
  }

  return result;
}

unint64_t sub_1B1E444F4()
{
  result = qword_1EB785288;
  if (!qword_1EB785288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785288);
  }

  return result;
}

unint64_t sub_1B1E4454C()
{
  result = qword_1EB785290;
  if (!qword_1EB785290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785290);
  }

  return result;
}

unint64_t sub_1B1E445A0()
{
  result = qword_1EB785298;
  if (!qword_1EB785298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785298);
  }

  return result;
}

uint64_t sub_1B1E445F8()
{
  sub_1B1F1AFA0();

  v1 = type metadata accessor for Queue.Job(0);
  v2 = (v0 + *(v1 + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xEA00000000003E6CLL;
    v3 = 0x6562616C206F6E3CLL;
  }

  sub_1B1F1A760();
  MEMORY[0x1B273D1A0](v3, v4);

  MEMORY[0x1B273D1A0](1029990688, 0xE400000000000000);
  v5 = *(v1 + 20);
  sub_1B1F1A350();
  sub_1B1E47954();
  v6 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0x62616C20626F4A3CLL;
}

uint64_t Queue.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Queue.init()();
  return v3;
}

uint64_t Queue.init()()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A0, &qword_1B1F30638);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  OUTLINED_FUNCTION_0(v37);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  v18 = OUTLINED_FUNCTION_0(v36);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v34 - v25;
  type metadata accessor for Queue.Job(0);
  (*(v5 + 104))(v10, *MEMORY[0x1E69E8650], v3);
  v35 = v17;
  sub_1B1F1AA90();
  (*(v5 + 8))(v10, v3);
  v27 = v37;
  (*(v12 + 16))(v39 + OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation, v17, v37);
  v28 = sub_1B1F1AA80();
  v29 = v38;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v28);
  v30 = v36;
  (*(v20 + 16))(v24, v26, v36);
  v31 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v20 + 32))(v32 + v31, v24, v30);
  sub_1B1E459C8(0, 0, v29, &unk_1B1F30658, v32);

  sub_1B1E05950(v29);
  (*(v12 + 8))(v35, v27);
  (*(v20 + 8))(v26, v30);
  return v39;
}

uint64_t sub_1B1E44B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Queue.Job(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852C0, &qword_1B1F306F8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB7852C8, &unk_1B1F30700);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = sub_1B1F1A500();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E44CE8, 0, 0);
}

uint64_t sub_1B1E44CE8()
{
  v0[17] = "ToolKitSync";
  if (qword_1ED84F030 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[16];
  v2 = qword_1ED84F038;
  v3 = swift_task_alloc();
  *(v3 + 16) = "ToolKitSync";
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1B1E07904;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_1B1E07944(v5);
  os_unfair_lock_unlock(v2 + 4);

  v6 = v0[16];

  v7 = sub_1B1F1A4E0();
  v8 = sub_1B1F1AD00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B1DE3000, v7, v8, "queue: queue started", v9, 2u);
    OUTLINED_FUNCTION_5();
  }

  v10 = v0[16];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[2];

  v15 = *(v12 + 8);
  v0[18] = v15;
  v15(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  sub_1B1F1AB00();
  v0[19] = 0;
  v16 = *(MEMORY[0x1E69E8678] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[20] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_2_14(v17);

  return MEMORY[0x1EEE6D9C8](v19);
}

uint64_t sub_1B1E44EF4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E44FDC()
{
  v63 = v0;
  v1 = v0[7];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[3]);
  v3 = v0[19];
  v4 = v0[17];
  if (EnumTagSinglePayload == 1)
  {
    v5 = v0[15];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v6 = qword_1ED84F038;
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1B1E07904;
    *(v8 + 24) = v7;
    v9 = v6 + 4;

    os_unfair_lock_lock(v6 + 4);
    sub_1B1E07944(v10);
    if (!v3)
    {
      v11 = v0[15];
      os_unfair_lock_unlock(v6 + 4);

      v12 = sub_1B1F1A4E0();
      v13 = sub_1B1F1AD00();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1B1DE3000, v12, v13, "queue: queue finished", v14, 2u);
        OUTLINED_FUNCTION_5();
      }

      v15 = v0[18];
      v17 = v0[15];
      v16 = v0[16];
      v19 = v0[13];
      v18 = v0[14];
      v20 = v0[11];
      v21 = v0[12];
      v22 = v0[10];
      v57 = v0[7];
      v58 = v0[6];
      v59 = v0[5];
      v61 = v0[4];

      v15(v17, v20);

      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_16_6();

      __asm { BRAA            X1, X16 }
    }

    goto LABEL_9;
  }

  v25 = v0[14];
  sub_1B1E479AC(v1, v0[6]);
  v26 = qword_1ED84F038;
  v27 = swift_task_alloc();
  *(v27 + 16) = v4;
  v28 = swift_task_alloc();
  *(v28 + 16) = sub_1B1E07904;
  *(v28 + 24) = v27;
  v9 = v26 + 4;

  os_unfair_lock_lock(v26 + 4);
  sub_1B1E07944(v29);
  if (v3)
  {
LABEL_9:
    os_unfair_lock_unlock(v9);
    OUTLINED_FUNCTION_16_6();
  }

  v32 = v0[14];
  v34 = v0[5];
  v33 = v0[6];
  os_unfair_lock_unlock(v26 + 4);

  sub_1B1E47548(v33, v34);
  v35 = sub_1B1F1A4E0();
  v36 = sub_1B1F1AD00();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[18];
  v39 = v0[14];
  v40 = v0[11];
  v41 = v0[12];
  v42 = v0[5];
  if (v37)
  {
    v43 = swift_slowAlloc();
    v60 = v38;
    v44 = swift_slowAlloc();
    v62 = v44;
    *v43 = 136315138;
    v45 = sub_1B1E445F8();
    v47 = v46;
    sub_1B1E475AC(v42);
    v48 = sub_1B1DF61DC(v45, v47, &v62);

    *(v43 + 4) = v48;
    OUTLINED_FUNCTION_17_4(&dword_1B1DE3000, v49, v50, "queue: executing job: %s");
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();

    v51 = OUTLINED_FUNCTION_14_8();
    v60(v51);
  }

  else
  {

    sub_1B1E475AC(v42);
    v52 = OUTLINED_FUNCTION_14_8();
    v38(v52);
  }

  v53 = *v0[6];
  v54 = *(MEMORY[0x1E69E86A8] + 4);
  v55 = swift_task_alloc();
  v0[21] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  *v55 = v0;
  v55[1] = sub_1B1E4546C;
  OUTLINED_FUNCTION_16_6();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1B1E4546C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E45568()
{
  v36 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  v4 = qword_1ED84F038;
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_1B1E07904;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_1B1E07944(v7);
  if (v1)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    v9 = v0[13];
    v10 = v0[6];
    v11 = v0[4];
    os_unfair_lock_unlock(v4 + 4);

    sub_1B1E47548(v10, v11);
    v12 = sub_1B1F1A4E0();
    v13 = sub_1B1F1AD00();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[18];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    v19 = v0[4];
    if (v14)
    {
      v20 = swift_slowAlloc();
      v34 = v15;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = sub_1B1E445F8();
      v24 = v23;
      sub_1B1E475AC(v19);
      v25 = sub_1B1DF61DC(v22, v24, &v35);

      *(v20 + 4) = v25;
      OUTLINED_FUNCTION_17_4(&dword_1B1DE3000, v26, v27, "queue: executed job: %s");
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();

      v28 = OUTLINED_FUNCTION_14_8();
      v34(v28);
    }

    else
    {

      sub_1B1E475AC(v19);
      v29 = OUTLINED_FUNCTION_14_8();
      v15(v29);
    }

    sub_1B1E475AC(v0[6]);
    v0[19] = 0;
    v30 = *(MEMORY[0x1E69E8678] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v0[20] = v31;
    *v31 = v32;
    v33 = OUTLINED_FUNCTION_2_14();

    return MEMORY[0x1EEE6D9C8](v33);
  }
}

uint64_t sub_1B1E457E8()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[7];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1B1E475AC(v6);

  OUTLINED_FUNCTION_2_0();
  v10 = v0[22];

  return v9();
}

uint64_t sub_1B1E458DC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B1E05D18;
  v8 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E44B1C(v8, v9, v10, v11);
}

uint64_t sub_1B1E459C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B1E058E0(a3, v23 - v10);
  v12 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E05950(v11);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1F1AA20();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1F1A8E0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t Queue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation;
  (*(v4 + 16))(&v13 - v8, v1 + OBJC_IVAR____TtC19VoiceShortcutClient5Queue_taskStreamContinuation, v2);
  sub_1B1F1AAE0();
  v11 = *(v4 + 8);
  v11(v9, v2);
  v11((v1 + v10), v2);
  return v1;
}

uint64_t Queue.__deallocating_deinit()
{
  Queue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Queue.enqueue(label:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B8, &qword_1B1F30660);
  v8 = OUTLINED_FUNCTION_0(v7);
  v62 = v9;
  v63 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v57 - v13;
  v14 = sub_1B1F1A500();
  v15 = OUTLINED_FUNCTION_0(v14);
  v59 = v16;
  v60 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Queue.Job(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v57 - v30);
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v57 - v34;
  v36 = sub_1B1F1AA80();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = a3;
  v37[5] = a4;

  v38 = sub_1B1E46490(0, 0, v35, &unk_1B1F30670, v37);
  v39 = v31 + *(v22 + 28);
  sub_1B1F1A340();
  v40 = (v31 + *(v22 + 32));
  *v40 = v58;
  v40[1] = a2;
  *v31 = v38;
  v41 = qword_1ED84F030;
  v42 = sub_1B1F1A760();
  if (v41 != -1)
  {
    v42 = OUTLINED_FUNCTION_1_1();
  }

  v43 = qword_1ED84F038;
  v44 = MEMORY[0x1EEE9AC00](v42);
  *(&v57 - 2) = "ToolKitSync";
  MEMORY[0x1EEE9AC00](v44);
  *(&v57 - 2) = sub_1B1DE7A98;
  *(&v57 - 1) = v45;

  os_unfair_lock_lock(v43 + 4);
  sub_1B1DE7A64(v46);
  os_unfair_lock_unlock(v43 + 4);

  sub_1B1E47548(v31, v29);
  v47 = sub_1B1F1A4E0();
  v48 = sub_1B1F1AD00();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64 = v50;
    *v49 = 136315138;
    v51 = sub_1B1E445F8();
    v53 = v52;
    sub_1B1E475AC(v29);
    v54 = sub_1B1DF61DC(v51, v53, &v64);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_1B1DE3000, v47, v48, "queue: enqueuing job: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  else
  {

    sub_1B1E475AC(v29);
  }

  (*(v59 + 8))(v20, v60);
  sub_1B1E47548(v31, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  v55 = v61;
  sub_1B1F1AAD0();
  (*(v62 + 8))(v55, v63);
  return sub_1B1E475AC(v31);
}

uint64_t sub_1B1E46218(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B1E46300;

  return v8();
}

uint64_t sub_1B1E46300()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_1B1E463E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B1E05D18;
  v8 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E46218(v8, v9, v10, v5);
}

uint64_t sub_1B1E46490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1B1E058E0(a3, v23 - v10);
  v12 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E05950(v11);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1F1AA20();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1F1A8E0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B1E05950(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1E05950(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t Queue.enqueueAndWait<A>(label:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  OUTLINED_FUNCTION_5_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E46718()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v14 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v14;
  *(v3 + 56) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_1B1E46818;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_5_1();

  return sub_1B1E47314(v9, v10, v11, v12, v3);
}

uint64_t sub_1B1E46818()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_2_0();

    return v13();
  }
}

uint64_t sub_1B1E46938()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_2_0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1B1E46994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a7;
  v55 = a4;
  v62 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B8, &qword_1B1F30660);
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v53 - v13;
  v14 = sub_1B1F1A500();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Queue.Job(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v53 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v53 - v30;
  v32 = sub_1B1F1AA80();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v54;
  v33[5] = a1;
  v33[6] = a2;
  v33[7] = a3;

  v34 = sub_1B1E46490(0, 0, v31, &unk_1B1F306F0, v33);
  v35 = v27 + *(v19 + 28);
  sub_1B1F1A340();
  v36 = (v27 + *(v19 + 32));
  *v36 = v55;
  v36[1] = a5;
  *v27 = v34;
  v37 = qword_1ED84F030;
  v38 = sub_1B1F1A760();
  if (v37 != -1)
  {
    v38 = swift_once();
  }

  v39 = qword_1ED84F038;
  v40 = MEMORY[0x1EEE9AC00](v38);
  *(&v53 - 2) = "ToolKitSync";
  MEMORY[0x1EEE9AC00](v40);
  *(&v53 - 2) = sub_1B1E07904;
  *(&v53 - 1) = v41;

  os_unfair_lock_lock(v39 + 4);
  sub_1B1E07944(v42);
  os_unfair_lock_unlock(v39 + 4);

  sub_1B1E47548(v27, v25);
  v43 = sub_1B1F1A4E0();
  v44 = sub_1B1F1AD00();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63 = v46;
    *v45 = 136315138;
    v47 = sub_1B1E445F8();
    v49 = v48;
    sub_1B1E475AC(v25);
    v50 = sub_1B1DF61DC(v47, v49, &v63);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1B1DE3000, v43, v44, "queue: enqueuing waiting job: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1B273F720](v46, -1, -1);
    MEMORY[0x1B273F720](v45, -1, -1);
  }

  else
  {

    sub_1B1E475AC(v25);
  }

  (*(v57 + 8))(v17, v58);
  sub_1B1E47548(v27, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852A8, &qword_1B1F30640);
  v51 = v59;
  sub_1B1F1AAD0();
  (*(v60 + 8))(v51, v61);
  return sub_1B1E475AC(v27);
}

uint64_t sub_1B1E46EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v9 = *(*(a7 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v7[5] = v10;
  v14 = (a5 + *a5);
  v11 = a5[1];
  v12 = swift_task_alloc();
  v7[6] = v12;
  *v12 = v7;
  v12[1] = sub_1B1E46FD4;

  return v14(v10);
}

uint64_t sub_1B1E46FD4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E470D0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1E47208(v2, v3, v1);
  v4 = v0[5];

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_1B1E47168()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1E47280((v0 + 2), v1, v2, v3);
  v4 = v0[5];

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_1B1E47208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1B1E47280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_1B1E47314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B1F1AA20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B1E473A8, v6, v8);
}

uint64_t sub_1B1E473A8()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B1E4744C;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1E4744C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1B1E47548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Queue.Job(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E475AC(uint64_t a1)
{
  v2 = type metadata accessor for Queue.Job(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B1E47640()
{
  sub_1B1E476FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1E476FC()
{
  if (!qword_1EB783258)
  {
    type metadata accessor for Queue.Job(255);
    v0 = sub_1B1F1AAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783258);
    }
  }
}

void sub_1B1E4777C()
{
  sub_1B1E47818();
  if (v0 <= 0x3F)
  {
    sub_1B1F1A350();
    if (v1 <= 0x3F)
    {
      sub_1B1E36AB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B1E47818()
{
  if (!qword_1EB783250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
    v0 = sub_1B1F1AB40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783250);
    }
  }
}

uint64_t sub_1B1E47890()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1B1E05460;
  v10 = OUTLINED_FUNCTION_4_11();

  return sub_1B1E46EAC(v10, v11, v12, v5, v7, v6, v4);
}

unint64_t sub_1B1E47954()
{
  result = qword_1EB783AC8;
  if (!qword_1EB783AC8)
  {
    sub_1B1F1A350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AC8);
  }

  return result;
}

uint64_t sub_1B1E479AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Queue.Job(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_17_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B1E47A38()
{
  v1 = swift_slowAlloc();
  v2 = *(v0 + 16);
  xpc_connection_get_audit_token();
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return result;
}

double sub_1B1E47A78@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_slowAlloc();
  v4 = *(v1 + 16);
  xpc_connection_get_audit_token();
  v5 = v3[1];
  *v11.val = *v3;
  *&v11.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v11);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B1F1A860();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, 0);

    if (v9)
    {
      *(a1 + 24) = swift_getObjectType();

      *a1 = v9;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t XPCIncomingConnection.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCIncomingConnection.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t XPCIncomingConnection.description.getter()
{
  sub_1B1F1AFA0();

  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v3 = MEMORY[0x1B273FA10](v1);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_1B1E47D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v6[2] = *(*v2 + 80);
  v6[3] = a2;
  v6[4] = a1;
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v4 = sub_1B1F1A7C0();

  sub_1B1E49E44(sub_1B1E49FCC, v6, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E47E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B1F1AAF0();
  v5 = sub_1B1F1AEB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = sub_1B1F1A350();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  (*(v6 + 16))(v9, a3, v5);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E47FE8(uint64_t a1)
{
  v2 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = a1;
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v3 = sub_1B1F1A7C0();

  sub_1B1E49E44(sub_1B1E49FB0, v5, v2, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E480AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1F1AAF0();
  v4 = sub_1B1F1AEB0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = sub_1B1F1A350();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v3);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E48218()
{
  v1 = v0[2];
  v5[2] = *(*v0 + 80);
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v2 = sub_1B1F1A7C0();
  v3 = sub_1B1F1A770();

  sub_1B1E49E44(sub_1B1E49F94, v5, v1, v2, v3);

  return v5[5];
}

uint64_t sub_1B1E48300@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  result = sub_1B1F1A790();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E48378()
{
  v1 = *(*v0 + 80);
  v2 = sub_1B1F1AAC0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-v4];
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1A340();
  v13 = v0;
  v14 = v10;
  sub_1B1E48754(v5);
  sub_1B1F1AB20();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B1E484E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  v19[1] = a1;
  v5 = *a2;
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v20 = *(v5 + 80);
  v9 = sub_1B1F1AAF0();
  v10 = sub_1B1F1AEB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  (*(*(v9 - 8) + 16))(v19 - v13, a1, v9);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v9);
  v15 = v21;
  sub_1B1E47D6C(v14, v21);
  (*(v11 + 8))(v14, v10);
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a2;
  (*(v7 + 32))(v17 + v16, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_1B1F1AAB0();
}

uint64_t sub_1B1E48754@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8650];
  v3 = sub_1B1F1AAC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B1E487CC()
{
  v1 = *v0;
  sub_1B1E48218();
  v3 = *(v1 + 80);
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  sub_1B1F1A770();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E488AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1F1AAA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(v5 + 16))(v8, a2, a3);
  sub_1B1F1AAF0();
  sub_1B1F1AAD0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B1E48A34()
{
  v1 = *v0;
  sub_1B1E48218();
  v3 = *(v1 + 80);
  sub_1B1F1A350();
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  sub_1B1F1A770();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t *sub_1B1E48B78()
{
  v1 = *v0;
  sub_1B1F1A350();
  v2 = *(v1 + 80);
  sub_1B1F1AAF0();
  sub_1B1DF7854();
  v5 = sub_1B1F1A6E0();
  v3 = sub_1B1F1A7C0();
  v0[2] = sub_1B1DF78B4(&v5, v3);
  return v0;
}

uint64_t *ToManyStream.init()@<X0>(uint64_t **a1@<X8>)
{
  type metadata accessor for ToManyStream.Factory();
  result = sub_1B1E48B44();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E48CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v6[2] = *(*v2 + 80);
  v6[3] = a2;
  v6[4] = a1;
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v4 = sub_1B1F1A7C0();
  sub_1B1E49E44(sub_1B1E49F74, v6, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E48DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v5 = sub_1B1F1ABC0();
  v6 = sub_1B1F1AEB0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_1B1F1A350();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  (*(*(v5 - 8) + 16))(v9, a3, v5);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E48F80(uint64_t a1)
{
  v2 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = a1;
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v3 = sub_1B1F1A7C0();
  sub_1B1E49E44(sub_1B1E49F58, v5, v2, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1B1E49060(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v3 = sub_1B1F1ABC0();
  v4 = sub_1B1F1AEB0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = sub_1B1F1A350();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v3);
  sub_1B1DF7854();
  sub_1B1F1A7C0();
  return sub_1B1F1A7E0();
}

uint64_t sub_1B1E491F0()
{
  v1 = v0[2];
  v5[2] = *(*v0 + 80);
  sub_1B1F1A350();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v2 = sub_1B1F1A7C0();
  v3 = sub_1B1F1A9F0();
  sub_1B1E49E44(sub_1B1E49E28, v5, v1, v2, v3);

  return v5[5];
}

uint64_t sub_1B1E492E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B1F1A350();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  sub_1B1F1A790();
  sub_1B1F1A770();
  swift_getWitnessTable();
  result = sub_1B1F1AA00();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E493D0()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v2 = sub_1B1F1AB90();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-v4];
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1A340();
  v13 = v0;
  v14 = v10;
  sub_1B1E4977C(v5);
  sub_1B1F1ABD0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B1E4955C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = sub_1B1F1A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B1E48CD4(a1, a3);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(v5 + 80);
  *(v11 + 24) = v9;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  return sub_1B1F1AB80();
}

uint64_t sub_1B1E4971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1E48F80(a3);
  }

  return result;
}

uint64_t sub_1B1E4977C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v3 = sub_1B1F1AB90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B1E49820()
{
  v1 = *v0;
  sub_1B1E491F0();
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1F1A9F0();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E49904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v9 = sub_1B1F1AB70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(v5 + 16))(v8, a2, a3);
  sub_1B1F1ABC0();
  sub_1B1F1ABA0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B1E49AC4()
{
  v1 = *v0;
  sub_1B1E491F0();
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1F1A9F0();
  swift_getWitnessTable();
  sub_1B1F1A970();
}

uint64_t sub_1B1E49BA8(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  return sub_1B1F1ABB0();
}

uint64_t sub_1B1E49C90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B1E49D8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B1E49ED0(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1B1E4A02C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_1B1F1A350() - 8);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1B1E4971C(a1, v5, v6);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_1B1F1A350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B1E4A1B4()
{
  v1 = *(sub_1B1F1A350() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v0 + 24);
  return sub_1B1E47FE8(v2);
}

uint64_t sub_1B1E4A224()
{
  v0 = sub_1B1F1A200();
  v18 = *(v0 - 8);
  v1 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B1F1ACF0();
  sub_1B1E4F2C8(&qword_1EB783AF8, MEMORY[0x1E6968EB0]);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1B1F1AEC0();
    if (!v22)
    {
      break;
    }

    sub_1B1E077D8(&v21, v20);
    sub_1B1DF63A0(v20, v19);
    sub_1B1DEA98C(0, &qword_1EB7835E0, 0x1E69635F8);
    swift_dynamicCast();
    v5 = v23;
    v6 = [v23 bundleIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B1F1A890();
      v10 = v9;

      v11 = [v5 persistentIdentifier];
      __swift_destroy_boxed_opaque_existential_1(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v4 + 16);
        sub_1B1E2B2C8();
        v4 = v15;
      }

      v12 = *(v4 + 16);
      if (v12 >= *(v4 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v4 = v16;
      }

      *(v4 + 16) = v12 + 1;
      v13 = (v4 + 24 * v12);
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v11;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  (*(v18 + 8))(v3, v0);
  return v4;
}

uint64_t LaunchServicesSnapshot.State.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return OUTLINED_FUNCTION_6_8();
}

VoiceShortcutClient::LaunchServicesSnapshot::State __swiftcall LaunchServicesSnapshot.State.init(bundleId:persistentIdentifier:)(Swift::String bundleId, __C::LSPersistentIdentifier persistentIdentifier)
{
  *v2 = bundleId;
  *(v2 + 16) = persistentIdentifier;
  result.bundleId = bundleId;
  result.persistentIdentifier = persistentIdentifier;
  return result;
}

uint64_t static LaunchServicesSnapshot.State.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B1F1B510() & 1) == 0)
  {
    return 0;
  }

  sub_1B1F1A290();
  v5 = sub_1B1F1A290();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_28_3();
  v9 = MEMORY[0x1B273CB00](v8);
  sub_1B1E03C48(v5, v7);
  v10 = OUTLINED_FUNCTION_28_3();
  sub_1B1E03C48(v10, v11);
  return v9 & 1;
}

uint64_t sub_1B1E4A590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B1F39270 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4A660(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1B1E4A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4A590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4A6CC(uint64_t a1)
{
  v2 = sub_1B1E4F274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4A708(uint64_t a1)
{
  v2 = sub_1B1E4F274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LaunchServicesSnapshot.State.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853D0, &qword_1B1F308B0);
  OUTLINED_FUNCTION_0(v5);
  v16 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_0();
  v10 = *v0;
  v11 = v0[1];
  v15 = v0[2];
  v12 = v4[4];
  OUTLINED_FUNCTION_44(v4, v4[3]);
  sub_1B1E4F274();
  sub_1B1F1B830();
  sub_1B1F1B270();
  if (!v1)
  {
    OUTLINED_FUNCTION_33_2();
    type metadata accessor for LSPersistentIdentifier(0);
    OUTLINED_FUNCTION_14_9();
    sub_1B1E4F2C8(v13, v14);
    OUTLINED_FUNCTION_31_1();
    sub_1B1F1B2B0();
  }

  (*(v16 + 8))(v2, v5);
  OUTLINED_FUNCTION_35();
}

uint64_t LaunchServicesSnapshot.State.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B1F1A900();
  sub_1B1F1A290();
  OUTLINED_FUNCTION_6_8();
  sub_1B1F1A2A0();
  v4 = OUTLINED_FUNCTION_28_3();

  return sub_1B1E03C48(v4, v5);
}

uint64_t LaunchServicesSnapshot.State.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_35_0();
  sub_1B1F1A900();
  sub_1B1F1A290();
  sub_1B1F1A2A0();
  v4 = OUTLINED_FUNCTION_6_8();
  sub_1B1E03C48(v4, v5);
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.State.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853E0, &qword_1B1F308B8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E4F274();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = sub_1B1F1B1C0();
    v12 = v11;
    type metadata accessor for LSPersistentIdentifier(0);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_14_9();
    sub_1B1E4F2C8(v13, v14);
    OUTLINED_FUNCTION_36_0();
    sub_1B1F1B200();
    v15 = OUTLINED_FUNCTION_30_2();
    v16(v15);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v18;
    sub_1B1F1A760();
    v17 = v18;
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E4ABC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v4 = sub_1B1F1A290();
  v6 = v5;
  sub_1B1F1A2A0();
  sub_1B1E03C48(v4, v6);
  return sub_1B1F1B7F0();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.uuid.getter()
{
  v0 = sub_1B1F1A350();
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_6_8();

  return v4(v3);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.init(uuid:sequenceNumber:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  v4 = sub_1B1F1A350();
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 32))(v3, v1);
  result = OUTLINED_FUNCTION_10_5();
  *(v3 + v7) = v0;
  return result;
}

BOOL static LaunchServicesSnapshot.DatabaseVersion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_24_5();
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2(v0);
  return v1 != 0;
}

uint64_t sub_1B1E4AD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4AE38(char a1)
{
  if (a1)
  {
    return 0x65636E6575716573;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1B1E4AE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4AD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4AEA4(uint64_t a1)
{
  v2 = sub_1B1E4F330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4AEE0(uint64_t a1)
{
  v2 = sub_1B1E4F330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853E8, &qword_1B1F308C0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E4F330();
  sub_1B1F1B830();
  v18[15] = 0;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v14, v15);
  OUTLINED_FUNCTION_37_0();
  sub_1B1F1B2B0();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0) + 20));
    OUTLINED_FUNCTION_33_2();
    sub_1B1F1B290();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.hash(into:)()
{
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v1, v2);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  return MEMORY[0x1B273E060](*(v0 + v3));
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_35_0();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v1, v2);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v0 + v3));
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.DatabaseVersion.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = sub_1B1F1A350();
  v4 = OUTLINED_FUNCTION_0(v3);
  v27 = v5;
  v28 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853F0, &qword_1B1F308C8);
  OUTLINED_FUNCTION_0(v29);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  v20 = v19 - v18;
  v21 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E4F330();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_1B1E4F2C8(v22, v23);
    OUTLINED_FUNCTION_37_0();
    sub_1B1F1B200();
    (*(v27 + 32))(v20, v10, v28);
    OUTLINED_FUNCTION_33_2();
    v24 = sub_1B1F1B1E0();
    v25 = OUTLINED_FUNCTION_32_2();
    v26(v25);
    *(v20 + *(v14 + 20)) = v24;
    sub_1B1E4F588();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1B1E4F5E0(v20, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E4B4A4(uint64_t a1, uint64_t a2)
{
  sub_1B1F1B7C0();
  sub_1B1F1A350();
  sub_1B1E4F2C8(&qword_1ED84EFE8, MEMORY[0x1E69695A8]);
  sub_1B1F1A800();
  MEMORY[0x1B273E060](*(v2 + *(a2 + 20)));
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E4B570()
{
  OUTLINED_FUNCTION_8_8();
  v2 = *(v0 + v1);

  return sub_1B1F1A760();
}

uint64_t LaunchServicesSnapshot.init(version:state:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  sub_1B1E4F588();
  v4 = sub_1B1E4B618(v0);

  sub_1B1E4F5E0(v1, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  result = OUTLINED_FUNCTION_8_8();
  *(v3 + v6) = v4;
  return result;
}

uint64_t sub_1B1E4B618(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = MEMORY[0x1E69E7CC8];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v5 = *(v2 - 2);
    v4 = *(v2 - 1);
    v6 = *v2;
    v7 = v3[2];
    sub_1B1F1A760();
    v8 = v6;
    if (v7)
    {
      sub_1B1DEBED8();
      if (v9)
      {
        break;
      }
    }

    sub_1B1F1A760();
    v10 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1B1DEBED8();
    if (__OFADD__(v3[2], (v12 & 1) == 0))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7854D0, &qword_1B1F310F8);
    if (sub_1B1F1B0C0())
    {
      v15 = sub_1B1DEBED8();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_17;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = (v3[7] + 24 * v13);
      v18 = v17[1];
      v19 = v17[2];
      *v17 = v5;
      v17[1] = v4;
      v17[2] = v10;
    }

    else
    {
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v20 = (v3[6] + 16 * v13);
      *v20 = v5;
      v20[1] = v4;
      v21 = (v3[7] + 24 * v13);
      *v21 = v5;
      v21[1] = v4;
      v21[2] = v10;

      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_15;
      }

      v3[2] = v24;
    }

    v2 += 3;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_17:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t LaunchServicesSnapshot.init(version:stateByBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B1E4F3A4(a1, a3);
  result = OUTLINED_FUNCTION_8_8();
  *(a3 + v6) = a2;
  return result;
}

uint64_t LaunchServicesSnapshot.setting(stateByContainerId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_10();
  sub_1B1E4F588();
  OUTLINED_FUNCTION_8_8();
  *(a2 + v4) = a1;

  return sub_1B1F1A760();
}

uint64_t static LaunchServicesSnapshot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_24_5();
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2(v2);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_8();
  v5 = *(v1 + v4);
  v6 = *(v0 + v4);

  return sub_1B1E38FD4(v5, v6);
}

uint64_t sub_1B1E4B8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4279426574617473 && a2 == 0xEF6449656C646E75)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E4B9AC(char a1)
{
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1B273E060](a1 & 1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E4B9EC(char a1)
{
  if (a1)
  {
    return 0x4279426574617473;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1B1E4BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E4B8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E4BA60(uint64_t a1)
{
  v2 = sub_1B1E4F408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E4BA9C(uint64_t a1)
{
  v2 = sub_1B1E4F408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchServicesSnapshot.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7853F8, &qword_1B1F308D0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E4F408();
  sub_1B1F1B830();
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_15_9();
  sub_1B1E4F2C8(v13, v14);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_31_1();
  sub_1B1F1B2B0();
  if (!v2)
  {
    v16 = *(v4 + *(type metadata accessor for LaunchServicesSnapshot(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785408, &qword_1B1F308D8);
    sub_1B1E4F4B0(&qword_1EB785410, sub_1B1E4F45C);
    OUTLINED_FUNCTION_31_1();
    sub_1B1F1B2B0();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t LaunchServicesSnapshot.hash(into:)(const void *a1)
{
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v3, v4);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v1 + v5));
  OUTLINED_FUNCTION_8_8();
  v7 = *(v1 + v6);

  return sub_1B1E3BDC0(a1, v7);
}

uint64_t LaunchServicesSnapshot.hashValue.getter()
{
  OUTLINED_FUNCTION_35_0();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v1, v2);
  sub_1B1F1A800();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x1B273E060](*(v0 + v3));
  OUTLINED_FUNCTION_8_8();
  sub_1B1E3BDC0(v6, *(v0 + v4));
  return sub_1B1F1B7F0();
}

void LaunchServicesSnapshot.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v31[1] = v3;
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  v34 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785420, &qword_1B1F308E0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v32 = v12;
  v33 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v18 = type metadata accessor for LaunchServicesSnapshot(0);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  v24 = v23 - v22;
  v25 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E4F408();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v26 = v24;
    v27 = v32;
    OUTLINED_FUNCTION_15_9();
    sub_1B1E4F2C8(v28, v29);
    OUTLINED_FUNCTION_37_0();
    v30 = v33;
    sub_1B1F1B200();
    sub_1B1E4F3A4(v34, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785408, &qword_1B1F308D8);
    OUTLINED_FUNCTION_33_2();
    sub_1B1E4F4B0(&qword_1EB783288, sub_1B1E4F534);
    OUTLINED_FUNCTION_36_0();
    sub_1B1F1B200();
    (*(v27 + 8))(v17, v30);
    *(v26 + *(v18 + 20)) = v35;
    sub_1B1E4F588();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1B1E4F5E0(v26, type metadata accessor for LaunchServicesSnapshot);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t static LaunchServicesSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  result = static LaunchServicesSnapshot.DatabaseVersion.current.getter(v2);
  if (!v1)
  {
    sub_1B1E4F588();
    v9 = sub_1B1E4B618(MEMORY[0x1E69E7CC0]);
    sub_1B1E4F5E0(v2, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    result = type metadata accessor for LaunchServicesSnapshot(0);
    *(a1 + *(result + 20)) = v9;
  }

  return result;
}

uint64_t sub_1B1E4C1B8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B1E05460;

  return static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)(a1, a2, a3);
}

uint64_t static LaunchServicesSnapshot.partial(_:failIfContainerNotFound:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return OUTLINED_FUNCTION_16_7();
}

uint64_t sub_1B1E4C280()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 40) = v7;
  *v7 = v8;
  v7[1] = sub_1B1E4C390;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9, v3, v5, 0, 0, &unk_1B1F30900, v4, v3);
}

uint64_t sub_1B1E4C390()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E4C4B4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    OUTLINED_FUNCTION_2_0();

    return v10();
  }
}

uint64_t sub_1B1E4C4B4()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_2_0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1B1E4C510()
{
  OUTLINED_FUNCTION_1();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1B1E05D18;

  return static LaunchServicesSnapshot.complete()(v1);
}

uint64_t sub_1B1E4C5B0()
{
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = type metadata accessor for LaunchServicesSnapshot(v2);
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v1 + 24) = v5;
  *v5 = v6;
  v5[1] = sub_1B1E4C694;
  v7 = *(v1 + 16);

  return MEMORY[0x1EEE6DD58](v7, v0, v3, 0, 0, &unk_1B1F30920, 0, v0);
}

uint64_t sub_1B1E4C694()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B1E4C7B0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_2_0();

    return v9();
  }
}

uint64_t sub_1B1E4C7B0()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 32);
  return v2();
}

BOOL LaunchServicesSnapshot.isEqualInProvenance(to:)()
{
  if ((sub_1B1F1A310() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_29_2(v0);
  return v1 != 0;
}

uint64_t sub_1B1E4C858(uint64_t a1, uint64_t a2)
{
  sub_1B1F1B7C0();
  sub_1B1F1A350();
  sub_1B1E4F2C8(&qword_1ED84EFE8, MEMORY[0x1E69695A8]);
  sub_1B1F1A800();
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  MEMORY[0x1B273E060](*(v2 + *(v4 + 20)));
  sub_1B1E3BDC0(v6, *(v2 + *(a2 + 20)));
  return sub_1B1F1B7F0();
}

unint64_t LaunchServicesSnapshot.debugDescription.getter()
{
  v2 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_3_10();
  sub_1B1E4F588();
  v5 = sub_1B1F1A350();
  OUTLINED_FUNCTION_0_16();
  sub_1B1E4F2C8(v6, v7);
  v8 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v8);

  (*(*(v5 - 8) + 8))(v1, v5);
  MEMORY[0x1B273D1A0](1031151660, 0xE400000000000000);
  v14 = *(v0 + *(v3 + 28));
  v9 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v9);

  MEMORY[0x1B273D1A0](2113065, 0xE300000000000000);
  OUTLINED_FUNCTION_8_8();
  v11 = *(v0 + v10);
  sub_1B1F1A760();
  v12 = sub_1B1F1A740();
  MEMORY[0x1B273D1A0](v12);

  MEMORY[0x1B273D1A0](0x73656C646E756220, 0xE800000000000000);
  return 0xD00000000000001DLL;
}

uint64_t static LaunchServicesSnapshot.DatabaseVersion.current.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v10 = 0;
  v11[0] = 0;
  [v2 getKnowledgeUUID:v11 andSequenceNumber:&v10];

  v4 = v11[0];
  if (v11[0] && v10)
  {
    v5 = v10;
    v6 = v4;
    v7 = [v5 integerValue];
    sub_1B1F1A320();

    result = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
    *(a1 + *(result + 20)) = v7;
  }

  else
  {
    sub_1B1E4F770();
    swift_allocError();
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1E4CC54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 200) = a4;
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854B8, &qword_1B1F310E0);
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v9 = *(*(type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0) - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E4CDA4, 0, 0);
}

uint64_t sub_1B1E4CDA4()
{
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(*(v0 + 168));
  v1 = *(v0 + 112);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v40 = *(v0 + 200);
  v5 = -1;
  v6 = -1 << *(*(v0 + 112) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v42 = *(v0 + 112);
  v9 = sub_1B1F1A760();
  v12 = 0;
  v41 = v3;
  v39 = v8;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v9, v10, v11);
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v15 = *(v0 + 144);
        v14 = *(v0 + 152);
        v16 = (*(v42 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7)))));
        v17 = *v16;
        v18 = v16[1];
        v19 = sub_1B1F1AA80();
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        v21 = (v20 + 16);
        *(v20 + 24) = 0;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        *(v20 + 48) = v40;
        OUTLINED_FUNCTION_28_3();
        sub_1B1E503C0();
        LODWORD(v15) = __swift_getEnumTagSinglePayload(v15, 1, v19);
        sub_1B1F1A760();
        v22 = *(v0 + 144);
        if (v15 == 1)
        {
          sub_1B1E0BDB8(*(v0 + 144), &qword_1EB783E48, &qword_1B1F30630);
        }

        else
        {
          sub_1B1F1AA70();
          (*(*(v19 - 8) + 8))(v22, v19);
        }

        if (*v21)
        {
          v23 = *(v20 + 24);
          v24 = *v21;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_1B1F1AA20();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = **(v0 + 104);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 152);
        v7 &= v7 - 1;
        *(v0 + 48) = 1;
        *(v0 + 56) = v29;
        *(v0 + 64) = v28;
        swift_task_create();

        v9 = sub_1B1E0BDB8(v30, &qword_1EB783E48, &qword_1B1F30630);
        v3 = v41;
        v8 = v39;
      }

      while (v7);
    }
  }

  v31 = *(v0 + 136);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);

  v34 = *v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785428, &qword_1B1F308F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1AB50();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  sub_1B1E504D0(&qword_1EB7854C0, &qword_1EB7854B8, &qword_1B1F310E0);
  v35 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 184) = v36;
  *v36 = v37;
  v9 = OUTLINED_FUNCTION_9_9(v36);

  return MEMORY[0x1EEE6D8C8](v9, v10, v11);
}

uint64_t sub_1B1E4D1D0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[22];
    (*(v3[16] + 8))(v3[17], v3[15]);

    v10 = sub_1B1E4D5BC;
  }

  else
  {
    v10 = sub_1B1E4D2F4;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B1E4D2F4()
{
  v1 = *(v0 + 80);
  if (v1 == 1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    sub_1B1E50524(*(v0 + 72), *(v0 + 80), *(v0 + 88));
    sub_1B1E4DAB4(v3);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    if (v2)
    {
      OUTLINED_FUNCTION_1_18();
      sub_1B1E4F5E0(v4, v6);

      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v10 = *(v0 + 144);
      v9 = *(v0 + 152);
      v11 = *(v0 + 136);

      OUTLINED_FUNCTION_19_5();
    }

    else
    {
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 136);
      v28 = *(v0 + 144);
      v29 = *(v0 + 96);
      v30 = *(v0 + 168);
      sub_1B1E4F588();
      sub_1B1E4F588();
      v31 = sub_1B1E4B618(v5);

      sub_1B1E4F5E0(v25, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      sub_1B1E4F5E0(v4, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      OUTLINED_FUNCTION_8_8();
      *(v29 + v32) = v31;

      OUTLINED_FUNCTION_6();
    }

    return v12();
  }

  else
  {
    v13 = *(v0 + 176);
    if (v1)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 88);
      sub_1B1E50578(v14, *(v0 + 80), v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v0 + 176);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v13 + 16);
        v34 = *(v0 + 176);
        sub_1B1E2B2C8();
        v13 = v35;
      }

      v17 = *(v13 + 16);
      if (v17 >= *(v13 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v13 = v36;
      }

      sub_1B1E50524(v14, v1, v15);
      *(v13 + 16) = v17 + 1;
      v18 = (v13 + 24 * v17);
      v18[4] = v14;
      v18[5] = v1;
      v18[6] = v15;
    }

    *(v0 + 176) = v13;
    sub_1B1E504D0(&qword_1EB7854C0, &qword_1EB7854B8, &qword_1B1F310E0);
    v19 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    *(v0 + 184) = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_9_9();

    return MEMORY[0x1EEE6D8C8](v22, v23, v24);
  }
}

uint64_t sub_1B1E4D5BC()
{
  v1 = v0[21];
  OUTLINED_FUNCTION_1_18();
  sub_1B1E4F5E0(v2, v3);
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];

  OUTLINED_FUNCTION_2_0();

  return v10();
}

uint64_t sub_1B1E4D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1E4D688, 0, 0);
}

uint64_t sub_1B1E4D688()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B1DEA98C(0, &qword_1EB7854C8, 0x1E6963620);
  sub_1B1F1A760();
  v3 = OUTLINED_FUNCTION_6_8();
  v5 = sub_1B1E4D75C(v3, v4, 0);
  sub_1B1E4D844(v5, *(v0 + 16));
  OUTLINED_FUNCTION_6();

  return v6();
}

id sub_1B1E4D75C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B1F1A860();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1B1F1A1C0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1B1E4D844(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = sub_1B1F1A890();
    v7 = v6;

    v4 = [a1 persistentIdentifier];
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v4;
}

uint64_t sub_1B1E4D8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  sub_1B1E503C0();
  v10 = sub_1B1F1AA80();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B1E0BDB8(v9, &qword_1EB783E48, &qword_1B1F30630);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1B1F1AA20();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

void sub_1B1E4DAB4(uint64_t a1)
{
  v3 = sub_1B1F1A500();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40[-v18];
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(&v40[-v18]);
  if (!v1)
  {
    v47 = v17;
    v48 = v14;
    v43 = v11;
    v20 = sub_1B1F1A310();
    if ((v20 & 1) == 0 || *&v19[*(v7 + 20)] != *(a1 + *(v7 + 20)))
    {
      v45 = v3;
      if (qword_1ED84F030 != -1)
      {
        v20 = swift_once();
      }

      v46 = v40;
      v21 = qword_1ED84F038;
      v22 = MEMORY[0x1EEE9AC00](v20);
      v44 = v40;
      *&v40[-16] = "ToolKit";
      MEMORY[0x1EEE9AC00](v22);
      *&v40[-16] = sub_1B1DE7A98;
      *&v40[-8] = v23;

      os_unfair_lock_lock(v21 + 4);
      sub_1B1DE7A64(v24);
      v26 = v47;
      v25 = v48;
      os_unfair_lock_unlock(v21 + 4);

      sub_1B1E4F588();
      sub_1B1E4F588();
      v27 = sub_1B1F1A4E0();
      v28 = sub_1B1F1AD10();
      v46 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        *v29 = 136315394;
        v44 = v6;
        sub_1B1E4F588();
        v30 = sub_1B1F1A8D0();
        v41 = v28;
        v32 = v31;
        sub_1B1E4F5E0(v26, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        v33 = sub_1B1DF61DC(v30, v32, &v50);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        sub_1B1E4F588();
        v34 = sub_1B1F1A8D0();
        v36 = v35;
        sub_1B1E4F5E0(v25, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        v37 = sub_1B1DF61DC(v34, v36, &v50);

        *(v29 + 14) = v37;
        v38 = v46;
        _os_log_impl(&dword_1B1DE3000, v46, v41, "LS version changed while we were reading it. This might cause inconsistencies in our view of LS (before=%s, current=%s", v29, 0x16u);
        v39 = v42;
        swift_arrayDestroy();
        MEMORY[0x1B273F720](v39, -1, -1);
        MEMORY[0x1B273F720](v29, -1, -1);

        (*(v49 + 8))(v44, v45);
      }

      else
      {

        sub_1B1E4F5E0(v25, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        sub_1B1E4F5E0(v26, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
        (*(v49 + 8))(v6, v45);
      }

      sub_1B1E5036C();
      swift_allocError();
      swift_willThrow();
    }

    sub_1B1E4F5E0(v19, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  }
}

uint64_t sub_1B1E4DFCC()
{
  OUTLINED_FUNCTION_1();
  v0[3] = v1;
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A8, &unk_1B1F310A8);
  v0[5] = v3;
  v4 = *(v3 - 8);
  v0[6] = v4;
  v5 = *(v4 + 64) + 15;
  v0[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  OUTLINED_FUNCTION_8(v9);
  v11 = *(v10 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E4E0FC, 0, 0);
}

uint64_t sub_1B1E4E0FC()
{
  static LaunchServicesSnapshot.DatabaseVersion.current.getter(v0[10]);
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  sub_1B1F1AA80();
  OUTLINED_FUNCTION_41();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1B1E4D8DC(v2, &unk_1B1F310C0, v4);
  sub_1B1E0BDB8(v2, &qword_1EB783E48, &qword_1B1F30630);
  OUTLINED_FUNCTION_41();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1B1E4D8DC(v2, &unk_1B1F310D0, v5);
  sub_1B1E0BDB8(v2, &qword_1EB783E48, &qword_1B1F30630);
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  OUTLINED_FUNCTION_28_3();
  sub_1B1F1AB50();
  v0[11] = MEMORY[0x1E69E7CC0];
  v7 = sub_1B1E504D0(&qword_1EB783630, &qword_1EB7854A8, &unk_1B1F310A8);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[12] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_11_5(v9);

  return MEMORY[0x1EEE6D8C8](v0 + 2, v11, v7);
}

uint64_t sub_1B1E4E330()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[11];
    (*(v3[6] + 8))(v3[7], v3[5]);

    v10 = sub_1B1E4E720;
  }

  else
  {
    v10 = sub_1B1E4E454;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B1E4E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    isUniquelyReferenced_nonNull_native = v3[11];
    v6 = *(v4 + 16);
    v7 = *(isUniquelyReferenced_nonNull_native + 16);
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v3[11];
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v8 + 24) >> 1)
      {
        v9 = v3[11];
        sub_1B1E2B2C8();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      if (*(v4 + 16))
      {
        if ((*(v8 + 24) >> 1) - *(v8 + 16) >= v6)
        {
          swift_arrayInitWithCopy();

          if (!v6)
          {
            goto LABEL_14;
          }

          v10 = *(v8 + 16);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (!v11)
          {
            *(v8 + 16) = v12;
            goto LABEL_14;
          }

LABEL_24:
          __break(1u);
          return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, a2, a3);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (!v6)
      {
LABEL_14:
        v3[11] = v8;
        v23 = sub_1B1E504D0(&qword_1EB783630, &qword_1EB7854A8, &unk_1B1F310A8);
        v24 = *(MEMORY[0x1E69E85A8] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        v3[12] = v25;
        *v25 = v26;
        OUTLINED_FUNCTION_11_5();
        isUniquelyReferenced_nonNull_native = (v3 + 2);
        a3 = v23;

        return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, a2, a3);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v13 = v3[13];
  v14 = v3[10];
  (*(v3[6] + 8))(v3[7], v3[5]);
  sub_1B1E4DAB4(v14);
  v16 = v3[10];
  v15 = v3[11];
  if (v13)
  {
    OUTLINED_FUNCTION_1_18();
    sub_1B1E4F5E0(v16, v17);

    v19 = v3[9];
    v18 = v3[10];
    v21 = v3[7];
    v20 = v3[8];

    OUTLINED_FUNCTION_19_5();
  }

  else
  {
    v28 = v3[8];
    v27 = v3[9];
    v29 = v3[7];
    v30 = v3[3];
    v31 = v3[10];
    sub_1B1E4F588();
    sub_1B1E4F588();
    v32 = sub_1B1E4B618(v15);

    sub_1B1E4F5E0(v27, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    sub_1B1E4F5E0(v16, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
    OUTLINED_FUNCTION_8_8();
    *(v30 + v33) = v32;

    OUTLINED_FUNCTION_6();
  }

  return v22();
}

uint64_t sub_1B1E4E720()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[10];
  OUTLINED_FUNCTION_1_18();
  sub_1B1E4F5E0(v2, v3);
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  OUTLINED_FUNCTION_2_0();

  return v9();
}

uint64_t sub_1B1E4E7CC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() enumeratorWithOptions_];
  v3 = sub_1B1E4A224();

  *v1 = v3;
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E4E890()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  sub_1B1E4E8EC();
  *v1 = v2;
  OUTLINED_FUNCTION_6();

  return v3();
}

void sub_1B1E4E8EC()
{
  sub_1B1DEA98C(0, &qword_1EB7835C8, 0x1E69635D0);
  v0 = sub_1B1F1AE60();
  v1 = sub_1B1DEBAA4(v0);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B273D840](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v4;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v7 = [v4 bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B1F1A890();
      v18 = v10;

      v17 = [v5 persistentIdentifier];
      v11 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v3 + 16);
        sub_1B1E2B2C8();
        v3 = v15;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_1B1E2B2C8();
        v3 = v16;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v11;
      v13[5] = v18;
      v13[6] = v17;
      v2 = v6;
    }

    else
    {

      ++v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1B1E4EAA0()
{
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t LaunchServicesSnapshot.DatabaseVersion.majorVersionEqual(to:)()
{
  v0 = OUTLINED_FUNCTION_25_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  v14 = v13 - v12;
  sub_1B1E503C0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B1E0BDB8(v7, &qword_1EB785440, &qword_1B1F30928);
    v15 = 0;
  }

  else
  {
    sub_1B1E4F3A4(v7, v14);
    v15 = sub_1B1F1A310();
    OUTLINED_FUNCTION_1_18();
    sub_1B1E4F5E0(v14, v16);
  }

  return v15 & 1;
}

uint64_t LSPersistentIdentifier.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B800();
  if (!v1)
  {
    OUTLINED_FUNCTION_44(v8, v8[3]);
    sub_1B1E0EDAC();
    sub_1B1F1B520();
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_25_0();
    v4 = sub_1B1F1A250();
    v6 = OUTLINED_FUNCTION_25_0();
    sub_1B1E03C48(v6, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t LSPersistentIdentifier.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_25_0();
  sub_1B1F1B820();
  v4 = sub_1B1F1A290();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1B1E0EF20();
  sub_1B1F1B550();
  sub_1B1E03C48(v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B1E4EDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LSPersistentIdentifier.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B1E4EE00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A0, &qword_1B1F310A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785478, &unk_1B1F30CB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = OBJC_IVAR____TtCV19VoiceShortcutClient22LaunchServicesSnapshotP33_2DE8BE4BDEA9300B3DAFA689E06A50638Observer_continuation;
  swift_beginAccess();
  sub_1B1E503C0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1B1E0BDB8(v8, &qword_1EB7854A0, &qword_1B1F310A0);
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1B1F1AA40();
    (*(v10 + 8))(v13, v9);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    swift_beginAccess();
    sub_1B1E501CC(v6, v1 + v14);
    return swift_endAccess();
  }

  return result;
}

id sub_1B1E4F06C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCV19VoiceShortcutClient22LaunchServicesSnapshotP33_2DE8BE4BDEA9300B3DAFA689E06A50638Observer_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785478, &unk_1B1F30CB0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B1E4F10C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1E4F1A0()
{
  sub_1B1F1A290();
  OUTLINED_FUNCTION_6_8();
  sub_1B1F1A2A0();
  v0 = OUTLINED_FUNCTION_28_3();

  return sub_1B1E03C48(v0, v1);
}

uint64_t sub_1B1E4F1F8()
{
  sub_1B1F1A890();
  sub_1B1F1A900();
}

unint64_t sub_1B1E4F274()
{
  result = qword_1EB7833F8;
  if (!qword_1EB7833F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833F8);
  }

  return result;
}

uint64_t sub_1B1E4F2C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B1E4F330()
{
  result = qword_1EB783830;
  if (!qword_1EB783830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783830);
  }

  return result;
}

uint64_t sub_1B1E4F3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E4F408()
{
  result = qword_1EB783418;
  if (!qword_1EB783418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783418);
  }

  return result;
}

unint64_t sub_1B1E4F45C()
{
  result = qword_1EB785418;
  if (!qword_1EB785418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785418);
  }

  return result;
}

uint64_t sub_1B1E4F4B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785408, &qword_1B1F308D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E4F534()
{
  result = qword_1EB7833E0;
  if (!qword_1EB7833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833E0);
  }

  return result;
}

uint64_t sub_1B1E4F588()
{
  OUTLINED_FUNCTION_24_5();
  v2 = v1(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);
  return v0;
}

uint64_t sub_1B1E4F5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E4F638()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1B1E05D18;

  return sub_1B1E4CC54(v4, v2, v5, v6);
}

uint64_t sub_1B1E4F6E4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_0(v1);

  return sub_1B1E4DFCC();
}

unint64_t sub_1B1E4F770()
{
  result = qword_1EB785438;
  if (!qword_1EB785438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785438);
  }

  return result;
}

unint64_t sub_1B1E4F7C8()
{
  result = qword_1EB785448;
  if (!qword_1EB785448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785448);
  }

  return result;
}

unint64_t sub_1B1E4F870()
{
  result = qword_1EB785450;
  if (!qword_1EB785450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785450);
  }

  return result;
}

uint64_t sub_1B1E4F8C4(void *a1)
{
  a1[1] = sub_1B1E4F2C8(&qword_1EB7837D8, type metadata accessor for LaunchServicesSnapshot);
  a1[2] = sub_1B1E4F2C8(&qword_1EB7837E0, type metadata accessor for LaunchServicesSnapshot);
  a1[3] = sub_1B1E4F2C8(&qword_1EB783800, type metadata accessor for LaunchServicesSnapshot);
  result = sub_1B1E4F2C8(&unk_1EB7837F0, type metadata accessor for LaunchServicesSnapshot);
  a1[4] = result;
  return result;
}

void sub_1B1E4FA08()
{
  type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(319);
  if (v0 <= 0x3F)
  {
    sub_1B1E4FA8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1E4FA8C()
{
  if (!qword_1EB783290)
  {
    v0 = sub_1B1F1A7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783290);
    }
  }
}

uint64_t sub_1B1E4FB24()
{
  result = sub_1B1F1A350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1E4FBC0()
{
  sub_1B1E4FC50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1E4FC50()
{
  if (!qword_1EB785470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785478, &unk_1B1F30CB0);
    v0 = sub_1B1F1AEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB785470);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LaunchServicesSnapshot.DatabaseVersion.LaunchServicesError(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1B1E4FD80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1E4FE60()
{
  result = qword_1EB785480;
  if (!qword_1EB785480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785480);
  }

  return result;
}

unint64_t sub_1B1E4FEB8()
{
  result = qword_1EB785488;
  if (!qword_1EB785488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785488);
  }

  return result;
}

unint64_t sub_1B1E4FF10()
{
  result = qword_1EB785490;
  if (!qword_1EB785490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785490);
  }

  return result;
}

unint64_t sub_1B1E4FF68()
{
  result = qword_1EB785498;
  if (!qword_1EB785498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785498);
  }

  return result;
}

unint64_t sub_1B1E4FFC0()
{
  result = qword_1EB783408;
  if (!qword_1EB783408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783408);
  }

  return result;
}

unint64_t sub_1B1E50018()
{
  result = qword_1EB783410;
  if (!qword_1EB783410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783410);
  }

  return result;
}

unint64_t sub_1B1E50070()
{
  result = qword_1EB783820;
  if (!qword_1EB783820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783820);
  }

  return result;
}

unint64_t sub_1B1E500C8()
{
  result = qword_1EB783828;
  if (!qword_1EB783828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783828);
  }

  return result;
}

unint64_t sub_1B1E50120()
{
  result = qword_1EB7833E8;
  if (!qword_1EB7833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833E8);
  }

  return result;
}

unint64_t sub_1B1E50178()
{
  result = qword_1EB7833F0;
  if (!qword_1EB7833F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833F0);
  }

  return result;
}

uint64_t sub_1B1E501CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7854A0, &qword_1B1F310A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E5023C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_0(v4);

  return sub_1B1E4E7AC(v6);
}

uint64_t sub_1B1E502D4()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_0(v4);

  return sub_1B1E4E870(v6);
}

unint64_t sub_1B1E5036C()
{
  result = qword_1EB7854B0;
  if (!qword_1EB7854B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7854B0);
  }

  return result;
}

uint64_t sub_1B1E503C0()
{
  OUTLINED_FUNCTION_24_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_6_8();
  v7(v6);
  return v0;
}

uint64_t sub_1B1E50418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_18_0(v7);

  return sub_1B1E4D660(v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B1E504D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1B1E50524(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
    sub_1B1E50534(a1, a2, a3);
  }
}

void sub_1B1E50534(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_1B1E50578(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_1B1F1A760();

    v3 = a3;
  }
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  result = type metadata accessor for LaunchServicesSnapshot(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E4D1D0;
  v2 = *(v1 + 136);
  v3 = *(v1 + 120);
  return v1 + 72;
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t result)
{
  *(result + 8) = sub_1B1E4E330;
  v2 = *(v1 + 56);
  v3 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_1B1F1B7C0();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t XPCSecureCodedArray.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t XPCSecureCodedArray.init(from:)(uint64_t *a1)
{
  sub_1B1E507D0();
  [swift_getObjCClassFromMetadata() classForCoder];
  sub_1B1E50814();
  v2 = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_17(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E507D0()
{
  result = qword_1EB7854E0;
  if (!qword_1EB7854E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7854E0);
  }

  return result;
}

unint64_t sub_1B1E50814()
{
  result = qword_1EB7854E8[0];
  if (!qword_1EB7854E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7854E8);
  }

  return result;
}

uint64_t XPCSecureCodedArray.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);

  sub_1B1E50814();
  v5 = OUTLINED_FUNCTION_13();
  return OUTLINED_FUNCTION_0_17(v5, v6);
}

uint64_t XPCSecureCoded.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t XPCSecureCoded.init(from:)(uint64_t *a1)
{
  sub_1B1E50814();
  v2 = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_17(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t XPCSecureCoded.encode(to:)()
{
  sub_1B1E50814();
  v0 = OUTLINED_FUNCTION_13();
  return OUTLINED_FUNCTION_0_17(v0, v1);
}

uint64_t sub_1B1E509F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E50A48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for XPCSecureCodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1E50B7C()
{
  result = qword_1EB785650;
  if (!qword_1EB785650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785650);
  }

  return result;
}

uint64_t ToolKitIndexingReason.id.getter()
{
  OUTLINED_FUNCTION_87();
  v0 = sub_1B1F1A350();
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_6_8();

  return v4(v3);
}

uint64_t ToolKitIndexingReason.trigger.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = v1 + *(type metadata accessor for ToolKitIndexingReason(v2) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v0 = *v3;
  *(v0 + 8) = v5;
  v6 = *(v3 + 16);
  *(v0 + 16) = v6;

  return sub_1B1E50C7C(v4, v5, v6);
}

uint64_t sub_1B1E50C7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_1B1F1A760();
  }

  return result;
}

unint64_t ToolKitIndexingReason.changeset.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = (v1 + *(type metadata accessor for ToolKitIndexingReason(v2) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;

  return sub_1B1E50CE0(v4);
}

unint64_t sub_1B1E50CE0(unint64_t result)
{
  if (result >= 2)
  {
    sub_1B1F1A760();
    sub_1B1F1A760();

    return sub_1B1F1A760();
  }

  return result;
}

unint64_t ToolKitIndexingReason.Trigger.debugDescription.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    OUTLINED_FUNCTION_62();
    sub_1B1F1AFA0();

    v11 = 0x286C61756E616D2ELL;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1B273D1A0](v2, v3);

    goto LABEL_11;
  }

  if (*(v0 + 16) == 1)
  {
    v11 = 0x676E69747365742ELL;
    MEMORY[0x1B273D1A0](v1, v0[1]);
LABEL_11:
    MEMORY[0x1B273D1A0](41, 0xE100000000000000);
    return v11;
  }

  result = 0x6E5574737269662ELL;
  v5 = *v0;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_10_6();
      result = v6 - 5;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      OUTLINED_FUNCTION_10_6();
      result = v8 + 4;
      break;
    case 4:
      OUTLINED_FUNCTION_10_6();
      result = v7 + 5;
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      result = v9 + 9;
      break;
    case 6:
      OUTLINED_FUNCTION_10_6();
      result = v10 - 4;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0x657272656665642ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static ToolKitIndexingReason.Trigger.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v20 = OUTLINED_FUNCTION_6_8();
      sub_1B1E5120C(v20, v21, 0);
      v22 = OUTLINED_FUNCTION_43_0();
      sub_1B1E5120C(v22, v23, 0);
      v24 = v4 ^ v2 ^ 1;
      return v24 & 1;
    }

LABEL_19:
    v31 = OUTLINED_FUNCTION_43_0();
    sub_1B1E50C7C(v31, v32, v6);
    v33 = OUTLINED_FUNCTION_6_8();
    sub_1B1E5120C(v33, v34, v3);
    v35 = OUTLINED_FUNCTION_43_0();
    sub_1B1E5120C(v35, v36, v6);
    v24 = 0;
    return v24 & 1;
  }

  if (v3 != 1)
  {
    v25 = *a1;
    switch(v2)
    {
      case 1:
        if (v6 != 2 || v4 != 1 || v5 != 0)
        {
          goto LABEL_19;
        }

        v71 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v71, v72, 2);
        v24 = 1;
        v46 = 1;
        v47 = 0;
        v48 = 2;
        goto LABEL_22;
      case 2:
        if (v6 != 2 || v4 != 2 || v5 != 0)
        {
          goto LABEL_19;
        }

        v59 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v59, v60, 2);
        v29 = 2;
        break;
      case 3:
        if (v6 != 2 || v4 != 3 || v5 != 0)
        {
          goto LABEL_19;
        }

        v63 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v63, v64, 2);
        v29 = 3;
        break;
      case 4:
        if (v6 != 2 || v4 != 4 || v5 != 0)
        {
          goto LABEL_19;
        }

        v51 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v51, v52, 2);
        v29 = 4;
        break;
      case 5:
        if (v6 != 2 || v4 != 5 || v5 != 0)
        {
          goto LABEL_19;
        }

        v75 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v75, v76, 2);
        v29 = 5;
        break;
      case 6:
        if (v6 != 2 || v4 != 6 || v5 != 0)
        {
          goto LABEL_19;
        }

        v79 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v79, v80, 2);
        v29 = 6;
        break;
      case 7:
        if (v6 != 2 || v4 != 7 || v5 != 0)
        {
          goto LABEL_19;
        }

        v67 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v67, v68, 2);
        v29 = 7;
        break;
      case 8:
        if (v6 != 2 || v4 != 8 || v5 != 0)
        {
          goto LABEL_19;
        }

        v83 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v83, v84, 2);
        v29 = 8;
        break;
      case 9:
        if (v6 != 2 || v4 != 9 || v5 != 0)
        {
          goto LABEL_19;
        }

        v55 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v55, v56, 2);
        v29 = 9;
        break;
      default:
        if (v6 != 2 || (v5 | v4) != 0)
        {
          goto LABEL_19;
        }

        v27 = OUTLINED_FUNCTION_6_8();
        sub_1B1E5120C(v27, v28, 2);
        v29 = 0;
        break;
    }

    sub_1B1E5120C(v29, 0, 2);
    v24 = 1;
    return v24 & 1;
  }

  if (v6 != 1)
  {
    v30 = a1[1];
    sub_1B1F1A760();
    goto LABEL_19;
  }

  if (v2 != v4 || a1[1] != v5)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = sub_1B1F1B510();
    v9 = OUTLINED_FUNCTION_43_0();
    sub_1B1E50C7C(v9, v10, 1);
    v11 = OUTLINED_FUNCTION_16_8();
    sub_1B1E50C7C(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_16_8();
    sub_1B1E5120C(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_43_0();
    sub_1B1E5120C(v17, v18, 1);
    return v8 & 1;
  }

  v24 = 1;
  v37 = OUTLINED_FUNCTION_16_8();
  sub_1B1E50C7C(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_16_8();
  sub_1B1E50C7C(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_16_8();
  sub_1B1E5120C(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_16_8();
LABEL_22:
  sub_1B1E5120C(v46, v47, v48);
  return v24 & 1;
}

uint64_t sub_1B1E5120C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B1E51224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6E557473726966 && a2 == 0xEB000000006B636FLL;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C756465686373 && a2 == 0xEF6465746F6F4272;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B1F39500 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001B1F39520 == a2;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001B1F39540 == a2;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x80000001B1F39560 == a2;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001B1F39580 == a2;
                if (v12 || (sub_1B1F1B510() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001B1F395A0 == a2;
                  if (v13 || (sub_1B1F1B510() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6465727265666564 && a2 == 0xEC0000006C6C7546;
                    if (v14 || (sub_1B1F1B510() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6465727265666564 && a2 == 0xED000061746C6544;
                      if (v15 || (sub_1B1F1B510() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x676E6974736574 && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1B1F1B510();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1B1E515D4(char a1)
{
  result = 0x6C61756E616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C6E557473726966;
      break;
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
    case 10:
      result = 0x6465727265666564;
      break;
    case 11:
      result = 0x676E6974736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E5173C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E517C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E5184C(uint64_t a1)
{
  v2 = sub_1B1E52AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51888(uint64_t a1)
{
  v2 = sub_1B1E52AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E518C4(uint64_t a1)
{
  v2 = sub_1B1E52B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51900(uint64_t a1)
{
  v2 = sub_1B1E52B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E51224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E5196C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E515CC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E51994(uint64_t a1)
{
  v2 = sub_1B1E52898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E519D0(uint64_t a1)
{
  v2 = sub_1B1E52898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51A0C(uint64_t a1)
{
  v2 = sub_1B1E52940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51A48(uint64_t a1)
{
  v2 = sub_1B1E52940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51A84(uint64_t a1)
{
  v2 = sub_1B1E52994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51AC0(uint64_t a1)
{
  v2 = sub_1B1E52994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51AFC(uint64_t a1)
{
  v2 = sub_1B1E52C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51B38(uint64_t a1)
{
  v2 = sub_1B1E52C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51B74(uint64_t a1)
{
  v2 = sub_1B1E52A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51BB0(uint64_t a1)
{
  v2 = sub_1B1E52A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51BEC(uint64_t a1)
{
  v2 = sub_1B1E52A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51C28(uint64_t a1)
{
  v2 = sub_1B1E52A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5173C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E51C94(uint64_t a1)
{
  v2 = sub_1B1E52C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51CD0(uint64_t a1)
{
  v2 = sub_1B1E52C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51D0C(uint64_t a1)
{
  v2 = sub_1B1E52BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51D48(uint64_t a1)
{
  v2 = sub_1B1E52BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51D84(uint64_t a1)
{
  v2 = sub_1B1E52B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51DC0(uint64_t a1)
{
  v2 = sub_1B1E52B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51DFC(uint64_t a1)
{
  v2 = sub_1B1E529E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51E38(uint64_t a1)
{
  v2 = sub_1B1E529E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E51E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E517C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E51EA4(uint64_t a1)
{
  v2 = sub_1B1E528EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E51EE0(uint64_t a1)
{
  v2 = sub_1B1E528EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Trigger.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785660, &qword_1B1F31310);
  v34 = OUTLINED_FUNCTION_0(v33);
  v148 = v35;
  v149 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17();
  v147 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785668, &qword_1B1F31318);
  v41 = OUTLINED_FUNCTION_0(v40);
  v145 = v42;
  v146 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  v144 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785670, &qword_1B1F31320);
  v48 = OUTLINED_FUNCTION_0(v47);
  v142 = v49;
  v143 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_17();
  v141 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785678, &qword_1B1F31328);
  v55 = OUTLINED_FUNCTION_0(v54);
  v139 = v56;
  v140 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_17();
  v138 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785680, &qword_1B1F31330);
  v62 = OUTLINED_FUNCTION_0(v61);
  v136 = v63;
  v137 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_17();
  v135 = v67;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785688, &qword_1B1F31338);
  OUTLINED_FUNCTION_0(v134);
  v133 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v72);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785690, &qword_1B1F31340);
  OUTLINED_FUNCTION_0(v132);
  v131 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v77);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785698, &qword_1B1F31348);
  OUTLINED_FUNCTION_0(v130);
  v129 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v82);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856A0, &qword_1B1F31350);
  OUTLINED_FUNCTION_0(v128);
  v127 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v87);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856A8, &qword_1B1F31358);
  OUTLINED_FUNCTION_0(v126);
  v125 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v92);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856B0, &qword_1B1F31360);
  OUTLINED_FUNCTION_0(v124);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7856B8, &qword_1B1F31368);
  OUTLINED_FUNCTION_0(v97);
  v99 = v98;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_38_1();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7856C0, &qword_1B1F31370);
  v151[0] = OUTLINED_FUNCTION_0(v103);
  v151[1] = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_14_10();
  v108 = v27[1];
  v153 = *v27;
  v109 = *(v27 + 16);
  v110 = v32;
  v112 = v32[3];
  v111 = v32[4];
  OUTLINED_FUNCTION_44(v110, v112);
  sub_1B1E52898();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  if (!v109)
  {
    v154 = 0;
    sub_1B1E52C88();
    v113 = v151[0];
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    sub_1B1F1B280();
    (*(v99 + 8))(v28, v97);
    v116 = OUTLINED_FUNCTION_47();
    goto LABEL_5;
  }

  if (v109 == 1)
  {
    a17 = 11;
    sub_1B1E528EC();
    v113 = v151[0];
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    sub_1B1F1B270();
    v114 = OUTLINED_FUNCTION_25_5();
    v115(v114, v149);
    v116 = OUTLINED_FUNCTION_36_1();
LABEL_5:
    v117(v116, v113);
    goto LABEL_20;
  }

  switch(v153)
  {
    case 1:
      v156 = 2;
      sub_1B1E52BE0();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&v152);
      v120 = &v153;
      goto LABEL_15;
    case 2:
      v157 = 3;
      sub_1B1E52B8C();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&v158);
      v120 = &a9;
      goto LABEL_15;
    case 3:
      a10 = 4;
      sub_1B1E52B38();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&a18);
      v120 = &a19;
      goto LABEL_15;
    case 4:
      a11 = 5;
      sub_1B1E52AE4();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&a21);
      v120 = &a22;
      goto LABEL_15;
    case 5:
      a12 = 6;
      sub_1B1E52A90();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&a24);
      v120 = &a25;
      goto LABEL_15;
    case 6:
      a13 = 7;
      sub_1B1E52A3C();
      OUTLINED_FUNCTION_11_6();
      goto LABEL_18;
    case 7:
      a14 = 8;
      sub_1B1E529E8();
      OUTLINED_FUNCTION_11_6();
      goto LABEL_18;
    case 8:
      a15 = 9;
      sub_1B1E52994();
      OUTLINED_FUNCTION_11_6();
      goto LABEL_18;
    case 9:
      a16 = 10;
      sub_1B1E52940();
      OUTLINED_FUNCTION_11_6();
LABEL_18:
      v118 = OUTLINED_FUNCTION_37_1();
      break;
    default:
      v155 = 1;
      sub_1B1E52C34();
      OUTLINED_FUNCTION_11_6();
      v118 = OUTLINED_FUNCTION_15_10(&v150);
      v120 = v151;
LABEL_15:
      v121 = *(v120 - 32);
      break;
  }

  v119(v118, v121);
  v122 = OUTLINED_FUNCTION_19_6();
  v123(v122, v109);
LABEL_20:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E52898()
{
  result = qword_1EB7839C8;
  if (!qword_1EB7839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839C8);
  }

  return result;
}

unint64_t sub_1B1E528EC()
{
  result = qword_1EB7856D0;
  if (!qword_1EB7856D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856D0);
  }

  return result;
}

unint64_t sub_1B1E52940()
{
  result = qword_1EB783968;
  if (!qword_1EB783968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783968);
  }

  return result;
}

unint64_t sub_1B1E52994()
{
  result = qword_1EB7856E0;
  if (!qword_1EB7856E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856E0);
  }

  return result;
}

unint64_t sub_1B1E529E8()
{
  result = qword_1EB7856E8;
  if (!qword_1EB7856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856E8);
  }

  return result;
}

unint64_t sub_1B1E52A3C()
{
  result = qword_1EB7856F0;
  if (!qword_1EB7856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856F0);
  }

  return result;
}

unint64_t sub_1B1E52A90()
{
  result = qword_1EB7856F8;
  if (!qword_1EB7856F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7856F8);
  }

  return result;
}

unint64_t sub_1B1E52AE4()
{
  result = qword_1EB785700;
  if (!qword_1EB785700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785700);
  }

  return result;
}

unint64_t sub_1B1E52B38()
{
  result = qword_1EB785708;
  if (!qword_1EB785708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785708);
  }

  return result;
}

unint64_t sub_1B1E52B8C()
{
  result = qword_1EB7834D0;
  if (!qword_1EB7834D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834D0);
  }

  return result;
}

unint64_t sub_1B1E52BE0()
{
  result = qword_1EB785718;
  if (!qword_1EB785718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785718);
  }

  return result;
}

unint64_t sub_1B1E52C34()
{
  result = qword_1EB785720;
  if (!qword_1EB785720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785720);
  }

  return result;
}

unint64_t sub_1B1E52C88()
{
  result = qword_1EB785728;
  if (!qword_1EB785728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785728);
  }

  return result;
}

uint64_t ToolKitIndexingReason.Trigger.hash(into:)()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = *(v0 + 8);
      MEMORY[0x1B273E060](11);

      return sub_1B1F1A900();
    }

    else
    {
      switch(*v0)
      {
        case 1:
          v3 = 2;
          break;
        case 2:
          v3 = 3;
          break;
        case 3:
          v3 = 4;
          break;
        case 4:
          v3 = 5;
          break;
        case 5:
          v3 = 6;
          break;
        case 6:
          v3 = 7;
          break;
        case 7:
          v3 = 8;
          break;
        case 8:
          v3 = 9;
          break;
        case 9:
          v3 = 10;
          break;
        default:
          v3 = 1;
          break;
      }

      return MEMORY[0x1B273E060](v3);
    }
  }

  else
  {
    MEMORY[0x1B273E060](0);
    return sub_1B1F1B7E0();
  }
}

uint64_t ToolKitIndexingReason.Trigger.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_35_0();
  ToolKitIndexingReason.Trigger.hash(into:)();
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.Trigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_34();
  a26 = v30;
  a27 = v31;
  v232 = v27;
  v33 = v32;
  v226 = v34;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785730, &qword_1B1F31378);
  OUTLINED_FUNCTION_0(v225);
  v198 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17();
  v224 = v39;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785738, &qword_1B1F31380);
  OUTLINED_FUNCTION_0(v227);
  v217 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17();
  v223 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785740, &qword_1B1F31388);
  v46 = OUTLINED_FUNCTION_0(v45);
  v215 = v47;
  v216 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_17();
  v222 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785748, &qword_1B1F31390);
  v53 = OUTLINED_FUNCTION_0(v52);
  v213 = v54;
  v214 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_17();
  v221 = v58;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785750, &qword_1B1F31398);
  OUTLINED_FUNCTION_0(v212);
  v211 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_17();
  v230 = v63;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785758, &qword_1B1F313A0);
  OUTLINED_FUNCTION_0(v209);
  v210 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v68);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785760, &qword_1B1F313A8);
  OUTLINED_FUNCTION_0(v203);
  v208 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_17();
  v220 = v73;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785768, &qword_1B1F313B0);
  OUTLINED_FUNCTION_0(v207);
  v206 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_17();
  v219 = v78;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785770, &qword_1B1F313B8);
  OUTLINED_FUNCTION_0(v205);
  v204 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_17();
  v228 = v83;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785778, &qword_1B1F313C0);
  OUTLINED_FUNCTION_0(v202);
  v201 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_17();
  v218 = v88;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785780, &qword_1B1F313C8);
  OUTLINED_FUNCTION_0(v200);
  v199 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_21_4();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785788, &qword_1B1F313D0);
  OUTLINED_FUNCTION_0(v93);
  v197 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v191 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785790, &qword_1B1F313D8);
  OUTLINED_FUNCTION_0(v100);
  v102 = v101;
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_14_10();
  v106 = v33[3];
  v107 = v33[4];
  v231 = v33;
  OUTLINED_FUNCTION_44(v33, v106);
  sub_1B1E52898();
  OUTLINED_FUNCTION_68();
  v108 = v232;
  sub_1B1F1B810();
  if (!v108)
  {
    v195 = v99;
    v196 = v29;
    v194 = v93;
    v109 = v228;
    v110 = v229;
    v111 = v230;
    v232 = v102;
    v112 = v28;
    v113 = sub_1B1F1B210();
    sub_1B1E32BFC(v113, 0);
    if (v115 != v114 >> 1)
    {
      OUTLINED_FUNCTION_40();
      v193 = 0;
      OUTLINED_FUNCTION_65();
      if (v118 == v119)
      {
        __break(1u);
        return;
      }

      v192 = *(v117 + v116);
      sub_1B1E32BF8(v116 + 1);
      v121 = v120;
      v123 = v122;
      swift_unknownObjectRelease();
      v124 = v227;
      if (v121 == v123 >> 1)
      {
        v126 = v225;
        v125 = v226;
        switch(v192)
        {
          case 1:
            v233[5] = 1;
            sub_1B1E52C34();
            v160 = v196;
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&v231);
            v161(v160, v200);
            v162 = OUTLINED_FUNCTION_3_11();
            v163(v162);
            v190 = 0;
            v100 = 0;
            goto LABEL_18;
          case 2:
            v233[6] = 2;
            sub_1B1E52BE0();
            v150 = v218;
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(v233);
            v151(v150, v202);
            v152 = OUTLINED_FUNCTION_3_11();
            v153(v152);
            OUTLINED_FUNCTION_48();
            v190 = 1;
            goto LABEL_23;
          case 3:
            v233[7] = 3;
            sub_1B1E52B8C();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&a10);
            v154(v109, v205);
            v155 = OUTLINED_FUNCTION_3_11();
            v156(v155);
            v100 = 0;
            v190 = 2;
LABEL_18:
            v189 = 2;
            goto LABEL_23;
          case 4:
            a10 = 4;
            sub_1B1E52B38();
            v142 = v219;
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&a19);
            v143(v142, v207);
            v144 = OUTLINED_FUNCTION_3_11();
            v145(v144);
            OUTLINED_FUNCTION_48();
            v190 = 3;
            goto LABEL_23;
          case 5:
            a11 = 5;
            sub_1B1E52AE4();
            v164 = v220;
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&a21);
            v165(v164, v203);
            v166 = OUTLINED_FUNCTION_3_11();
            v167(v166);
            OUTLINED_FUNCTION_48();
            v190 = 4;
            goto LABEL_23;
          case 6:
            a12 = 6;
            sub_1B1E52A90();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&a23);
            v168(v110, v209);
            v169 = OUTLINED_FUNCTION_3_11();
            v170(v169);
            OUTLINED_FUNCTION_48();
            v190 = 5;
            goto LABEL_23;
          case 7:
            a13 = 7;
            sub_1B1E52A3C();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&a24);
            v157(v111, v212);
            v158 = OUTLINED_FUNCTION_3_11();
            v159(v158);
            OUTLINED_FUNCTION_48();
            v190 = 6;
            goto LABEL_23;
          case 8:
            a14 = 8;
            sub_1B1E529E8();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            v178 = OUTLINED_FUNCTION_36_1();
            v179(v178);
            v180 = OUTLINED_FUNCTION_3_11();
            v181(v180);
            OUTLINED_FUNCTION_48();
            v190 = 7;
            goto LABEL_23;
          case 9:
            a15 = 9;
            sub_1B1E52994();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            v146 = OUTLINED_FUNCTION_36_1();
            v147(v146);
            v148 = OUTLINED_FUNCTION_3_11();
            v149(v148);
            OUTLINED_FUNCTION_48();
            v190 = 8;
            goto LABEL_23;
          case 10:
            a16 = 10;
            sub_1B1E52940();
            OUTLINED_FUNCTION_8_9();
            swift_unknownObjectRelease();
            v171 = OUTLINED_FUNCTION_25_5();
            v172(v171, v124);
            v173 = OUTLINED_FUNCTION_3_11();
            v174(v173);
            OUTLINED_FUNCTION_48();
            v190 = 9;
LABEL_23:
            v131 = v231;
            goto LABEL_24;
          case 11:
            a17 = 11;
            sub_1B1E528EC();
            v141 = v224;
            OUTLINED_FUNCTION_8_9();
            v175 = v112;
            v230 = v100;
            v176 = sub_1B1F1B1C0();
            v131 = v231;
            v177 = v232;
            v190 = v176;
            v100 = v182;
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&v230);
            v183(v141, v126);
            (*(v177 + 8))(v175, v230);
            v189 = 1;
            goto LABEL_25;
          default:
            v233[4] = 0;
            sub_1B1E52C88();
            v127 = v195;
            OUTLINED_FUNCTION_8_9();
            v128 = v194;
            v129 = sub_1B1F1B1D0();
            v131 = v231;
            v130 = v232;
            v184 = v129;
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_13_2(&v229);
            v185(v127, v128);
            v186 = *(v130 + 8);
            v187 = OUTLINED_FUNCTION_86();
            v188(v187);
            v100 = 0;
            v189 = 0;
            v190 = v184 & 1;
LABEL_25:
            v125 = v226;
LABEL_24:
            *v125 = v190;
            *(v125 + 8) = v100;
            *(v125 + 16) = v189;
            break;
        }

        goto LABEL_10;
      }
    }

    v132 = v100;
    v133 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v135 = v134;
    v136 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v135 = &type metadata for ToolKitIndexingReason.Trigger;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    v137 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v133);
    (*(v138 + 104))(v135);
    swift_willThrow();
    swift_unknownObjectRelease();
    v139 = OUTLINED_FUNCTION_19_6();
    v140(v139, v132);
  }

  v131 = v231;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v131);
  OUTLINED_FUNCTION_35();
}