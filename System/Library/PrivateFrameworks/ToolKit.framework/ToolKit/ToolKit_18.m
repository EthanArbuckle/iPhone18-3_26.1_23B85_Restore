void sub_1C8DFF934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v33;
    v6 = sub_1C8D3F274(v2);
    v7 = 0;
    v29 = v2 + 56;
    v24 = v2 + 64;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v28 = v5;
        v26 = v7;
        v27 = v4;
        v9 = *(v2 + 48) + 40 * v6;
        v30 = *v9;
        v31 = *(v9 + 16);
        v32 = *(v9 + 32);
        v10 = SystemTypeProtocol.Identifier.rawValue.getter();
        v12 = v11;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_30;
        }

        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v6 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v29 + 8 * v8);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v3;
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C8CAF698(v6, v27, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v27, 0);
LABEL_19:
          v3 = v18;
        }

        v7 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1C8DFFB9C(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();

      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFB9C(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v6;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316320, &qword_1C9084E90);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      v5 = *(a1 + 16);
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v6;
  }
}

uint64_t sub_1C8DFFCB8(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();

      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFCB8(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v5;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312C98, &qword_1C9069590);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();

      OUTLINED_FUNCTION_20_13();
      return v5;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_38_11(a1);
      sub_1C9063F4C();
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v5;
  }
}

uint64_t sub_1C8DFFDDC(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();
      sub_1C8E0682C();
      OUTLINED_FUNCTION_65_5();
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8DFFDDC(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v6;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316310, &qword_1C9084E88);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      v5 = *(a1 + 16);
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v6;
  }
}

uint64_t sub_1C8DFFEF4(unint64_t a1)
{
  v5 = a1 >> 61;
  result = 7958113;
  switch(v5)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      __dst[0] = v10;
      __dst[1] = 0xE300000000000000;
      sub_1C8D3ED80();
      OUTLINED_FUNCTION_65_5();
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      __dst[0] = v11;
      __dst[1] = v12;

      v13 = sub_1C8DFFEF4(v1);
      MEMORY[0x1CCA81A90](v13);

      OUTLINED_FUNCTION_340();

      goto LABEL_9;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      __dst[0] = v8;
      __dst[1] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316358, &qword_1C9084EB0);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      MEMORY[0x1CCA81A90](v2, v3);

      OUTLINED_FUNCTION_340();
LABEL_9:
      result = __dst[0];
      break;
    case 5uLL:
      return result;
    default:
      memcpy(__dst, (a1 + 16), 0x61uLL);
      v16 = 2650985;
      v17 = 0xE300000000000000;
      memcpy(v15, __dst, sizeof(v15));
      sub_1C8CC1340(__dst, v14);
      sub_1C8CC1340(__dst, v14);
      v7 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v7);

      OUTLINED_FUNCTION_340();
      sub_1C8CC15FC(__dst);
      result = v16;
      break;
  }

  return result;
}

uint64_t sub_1C8E00098(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();
      sub_1C8E06880();
      OUTLINED_FUNCTION_65_5();
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8E00098(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v5;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316328, &qword_1C9084E98);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();

      OUTLINED_FUNCTION_20_13();
      return v5;
    case 5uLL:
      return result;
    default:
      OUTLINED_FUNCTION_38_11(a1);
      sub_1C9063F4C();
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v5;
  }
}

uint64_t sub_1C8E001B8(unint64_t a1)
{
  v2 = a1 >> 61;
  result = 7958113;
  switch(v2)
  {
    case 1uLL:
      v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = 2649705;
      sub_1C8D3AEB8();

      v8 = sub_1C906433C();
      goto LABEL_9;
    case 2uLL:
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = 678719342;

      v11 = sub_1C8E001B8(v10);
      MEMORY[0x1CCA81A90](v11);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      goto LABEL_6;
    case 3uLL:
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = 677670497;
      goto LABEL_8;
    case 4uLL:
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = 2650735;
LABEL_8:
      v16 = v6;

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316360, &qword_1C9084EB8);
      v8 = MEMORY[0x1CCA81C60](v5, v12);
LABEL_9:
      v13 = v8;
      v14 = v9;

      MEMORY[0x1CCA81A90](v13, v14);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      return v16;
    case 5uLL:
      return result;
    default:
      v16 = 2650985;
      v15 = *(a1 + 16);
      swift_retain_n();
      v4 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v4);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
LABEL_6:

      return v16;
  }
}

uint64_t sub_1C8E003A8(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();
      sub_1C8E06928();
      OUTLINED_FUNCTION_65_5();
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8E003A8(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v6;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316348, &qword_1C9084EA8);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      v5 = *(a1 + 16);
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v6;
  }
}

uint64_t sub_1C8E004C0(unint64_t a1)
{
  v3 = a1 >> 61;
  result = 7958113;
  switch(v3)
  {
    case 1uLL:
      OUTLINED_FUNCTION_4_24(a1);
      OUTLINED_FUNCTION_45_12();
      sub_1C8E068D4();
      OUTLINED_FUNCTION_65_5();
      sub_1C906433C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_7_22(a1);
      OUTLINED_FUNCTION_63_7();
      sub_1C8E004C0(v1);
      OUTLINED_FUNCTION_48_8();

      OUTLINED_FUNCTION_20_13();

      return v6;
    case 3uLL:
      OUTLINED_FUNCTION_6_20(a1);
      goto LABEL_7;
    case 4uLL:
      OUTLINED_FUNCTION_3_30(a1);
LABEL_7:
      OUTLINED_FUNCTION_49_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316338, &qword_1C9084EA0);
      OUTLINED_FUNCTION_61_6();
LABEL_8:
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_35_12();
      goto LABEL_9;
    case 5uLL:
      return result;
    default:
      v5 = *(a1 + 16);
      OUTLINED_FUNCTION_18_14();
      sub_1C9063F4C();
      OUTLINED_FUNCTION_414();
LABEL_9:

      OUTLINED_FUNCTION_20_13();
      return v6;
  }
}

uint64_t static TypeDefinitionQuery.local()@<X0>(void *a1@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v2 = qword_1EC316148;
  OUTLINED_FUNCTION_2();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = qword_1EC311370;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_22_18(&qword_1EC316150);
  v5 = MEMORY[0x1E69E7CD0];
  a1[2] = v2;
  a1[3] = v6;
  a1[4] = v3;
  a1[5] = v5;
  v9 = OUTLINED_FUNCTION_12_16(v7, v8);

  return j__swift_bridgeObjectRetain(v9);
}

uint64_t TypeDefinitionQuery.rowID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TypeDefinitionQuery.typeID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.sourceContainer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.sourceDevice.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t TypeDefinitionQuery.coercibleToType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t TypeDefinitionQuery.systemProtocol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t TypeDefinitionQuery.assistantVersionRange.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8E05190(v2);
}

uint64_t TypeDefinitionQuery.assistantVersionRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 80);
  result = sub_1C8CC7E94(*(v1 + 72));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

uint64_t static TypeDefinitionQuery.all()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v2 = qword_1EC316148;
  v3 = qword_1EC311370;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_20();
  }

  v4 = OUTLINED_FUNCTION_22_18(&qword_1EC316150);
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 40) = MEMORY[0x1E69E7CD0];
  v7 = OUTLINED_FUNCTION_12_16(v5, v6);

  return j__swift_bridgeObjectRetain(v7);
}

uint64_t static TypeDefinitionQuery.from(device:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  v5 = qword_1EC316148;
  OUTLINED_FUNCTION_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = qword_1EC311370;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_22_18(&qword_1EC316150);
  v8 = MEMORY[0x1E69E7CD0];
  a2[2] = v5;
  a2[3] = v9;
  a2[4] = v6;
  a2[5] = v8;
  v12 = OUTLINED_FUNCTION_12_16(v10, v11);

  return j__swift_bridgeObjectRetain(v12);
}

void TypeDefinitionQuery.shouldFilterOut(model:)(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v4 = *(a1 + 24);
    v5 = *(v1 + 80);
    v6 = *(a1 + 64);
    v7 = MEMORY[0x1E69E7CC0];
    switch(*(a1 + 96))
    {
      case 1:
      case 2:

        break;
      default:
        break;
    }

    v8 = *(v7 + 16);

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v11 = v7 + (v9 << 6);
    while (v8 != v9)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v12 = (v11 + 64);
      ++v9;
      v13 = *(v11 + 88);
      v11 += 64;
      if (!v13)
      {
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v29 = *v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v10[2];
          sub_1C8D01378();
          v10 = v20;
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_176(v16);
          sub_1C8D01378();
          v10 = v21;
        }

        v10[2] = v17 + 1;
        v18 = &v10[3 * v17];
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = v29;
        goto LABEL_5;
      }
    }

    v22 = v10 + 6;
    v23 = -v10[2];
    v24 = -1;
    do
    {
      if (v23 + v24 == -1)
      {
        break;
      }

      if (++v24 >= v10[2])
      {
        goto LABEL_21;
      }

      v25 = v22 + 3;
      v26 = *v22;
      v30 = *(v22 - 1);
      v31 = v26;
      v27 = v2(&v30);
      v22 = v25;
    }

    while ((v27 & 1) != 0);
    v28 = OUTLINED_FUNCTION_94();
    sub_1C8CC7E94(v28);
  }
}

uint64_t TypeDefinitionQuery.where(_:_:)@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(a2, v2, 0x58uLL);
  v7[11] = v4;
  v7[12] = v5;
  sub_1C8E051A0(__dst, v7);
  sub_1C8E05190(v4);
  return swift_setAtWritableKeyPath();
}

uint64_t TypeDefinitionQuery.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v21 = *(v0 + 80);
  v22 = *(v0 + 72);
  sub_1C906478C();
  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  v9 = sub_1C8DFFCB8(v2);
  MEMORY[0x1CCA81A90](v9);

  MEMORY[0x1CCA81A90](0x3A44496570797420, 0xE900000000000020);
  v10 = sub_1C8E001B8(v1);
  MEMORY[0x1CCA81A90](v10);

  MEMORY[0x1CCA81A90](0x203A646E696B20, 0xE700000000000000);
  if (*(v4 + 16))
  {
    OUTLINED_FUNCTION_47_8();
    v23 = v11;
    v24 = v12;
    sub_1C8E051D8();
    v13 = sub_1C906435C();
    MEMORY[0x1CCA81A90](v13);

    v14 = v23;
    v15 = v24;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7958113;
  }

  MEMORY[0x1CCA81A90](v14, v15);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90](0xD000000000000012);
  v16 = sub_1C8DFFEF4(v3);
  MEMORY[0x1CCA81A90](v16);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90](0xD000000000000012);
  v17 = CoercibleTypePropertyFilter.debugDescription.getter();
  MEMORY[0x1CCA81A90](v17);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  v18 = sub_1C8E0505C(v7, v8);
  MEMORY[0x1CCA81A90](v18);

  OUTLINED_FUNCTION_51_8();
  MEMORY[0x1CCA81A90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316168, &qword_1C9084380);
  v19 = sub_1C906462C();
  MEMORY[0x1CCA81A90](v19);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t TypeKindPropertyFilter.debugDescription.getter()
{
  if (!*(*v0 + 16))
  {
    return 7958113;
  }

  OUTLINED_FUNCTION_47_8();
  v4 = v1;
  sub_1C8E051D8();
  v2 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v2);

  return v4;
}

uint64_t CoercibleTypePropertyFilter.debugDescription.getter()
{
  if ((v0[1] & 1) == 0)
  {
    v1 = *v0;
    sub_1C8D2B12C();
    if (v2)
    {
      return 7958113;
    }
  }

  OUTLINED_FUNCTION_47_8();
  v6 = v4;
  sub_1C9063C4C();
  sub_1C8E0522C();
  OUTLINED_FUNCTION_94();
  v5 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v5);

  OUTLINED_FUNCTION_340();
  return v6;
}

uint64_t sub_1C8E01160(const void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C90620BC();
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  memcpy(__dst, a1, sizeof(__dst));
  v15 = *a2;
  v16 = *(a2 + 8);
  (*(v9 + 16))(v14, a3, v6);
  v17 = sub_1C902E158();
  (*(v9 + 8))(a3, v6);
  return v17;
}

uint64_t sub_1C8E01294@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  sub_1C8D16AE0(__dst, &v5);
  return sub_1C8D15484(v6, a2);
}

uint64_t sub_1C8E01308(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C90620BC();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = v2 + *(*v2 + 136);
  memcpy(__dst, v14, sizeof(__dst));
  OUTLINED_FUNCTION_2();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  memcpy(v24, (v14 + 8), sizeof(v24));

  sub_1C8E051A0(__dst, &v25);

  v23 = v15;
  v16 = *v2;
  v17 = v2 + *(*v2 + 144);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v25 = v18;
  v26 = v17;
  (*(v8 + 16))(v13, v2 + *(v16 + 152), v5);
  Request = type metadata accessor for TypeDefinitionQueryRequest();
  v20 = *(Request + 48);
  v21 = *(Request + 52);
  swift_allocObject();
  return sub_1C8E01160(&v23, &v25, v13);
}

void sub_1C8E014B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315200, &unk_1C9084E10);
  OUTLINED_FUNCTION_11(v26);
  v227 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v226 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313288, &qword_1C906B0C0);
  v33 = OUTLINED_FUNCTION_11(v32);
  v224 = v34;
  v225 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v222 = v37;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_147();
  v223 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3132A0, &unk_1C9084E20);
  v41 = OUTLINED_FUNCTION_11(v40);
  v219 = v42;
  v220 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v46);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315210, &qword_1C907C0A0);
  v47 = OUTLINED_FUNCTION_11(v233);
  v221 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v52);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133D0, &qword_1C906B560);
  v53 = OUTLINED_FUNCTION_11(v218);
  v217 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v58);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315218, &qword_1C907C0A8);
  OUTLINED_FUNCTION_11(v215);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v62);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  OUTLINED_FUNCTION_11(v214);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  v67 = OUTLINED_FUNCTION_11(v209);
  v206 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v72);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  v73 = OUTLINED_FUNCTION_11(v234);
  v237 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_12();
  v228 = v77;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_216();
  v229 = v80;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_216();
  v230 = v82;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_216();
  v231 = v84;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v86);
  v87 = sub_1C90627EC();
  v88 = OUTLINED_FUNCTION_11(v87);
  v194 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_15();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  v235 = OUTLINED_FUNCTION_11(v92);
  v236 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v235);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_147();
  v232 = v98;
  v99 = v20;
  v100 = v20 + *(*v20 + 136);
  v101 = *v100;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  v102 = sub_1C9062E6C();
  __swift_project_value_buffer(v102, qword_1EC390958);
  v103 = OUTLINED_FUNCTION_125();
  sub_1C8E05EB0(v103, v104, v101, v105);
  v106 = *(v100 + 8);
  v107 = OUTLINED_FUNCTION_125();
  sub_1C8E05EB0(v107, v108, v109, v110);
  v238 = *(v100 + 16);

  v111 = a10;
  sub_1C8E02848();

  if (!v111)
  {
    v189 = v26;
    v112 = *(v100 + 64);
    v238 = *(v100 + 56);
    v239 = v112;
    v113 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRetain(v113);
    sub_1C8E02AA8(v25, v114, v115, v116, v117, v118, v119, v120, v184, v186, v188, v189, v192, v194, v197, v200, v202, v204, v206, v209);
    v121 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRelease(v121, v122);
    v123 = *(v100 + 48);
    v238 = *(v100 + 40);
    v239 = v123;
    v124 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRetain(v124);
    sub_1C8E036E0(v25, v125, v126, v127, v128, v129, v130, v131, v185, v187, v25, v190, v193, v195, v198, v201, v203, v205, v207, v210);
    v132 = OUTLINED_FUNCTION_334();
    j__swift_bridgeObjectRelease(v132, v133);
    if (qword_1EC3112F0 != -1)
    {
      swift_once();
    }

    v134 = __swift_project_value_buffer(v235, qword_1EC3909E8);
    (*(v236 + 16))(v232, v134, v235);
    sub_1C8D5ED2C(*(v100 + 32), &v238);
    if (qword_1EDA69640 != -1)
    {
      swift_once();
    }

    v135 = __swift_project_value_buffer(v102, qword_1EDA6EAF0);
    sub_1C8E061A0(v232, v135);

    sub_1C8D5F064(*(v100 + 24), &v238);
    sub_1C8E294C8();
    OUTLINED_FUNCTION_116();
    sub_1C8E064C4(v136, v137);

    v138 = OUTLINED_FUNCTION_23(&v228);
    v139(v138, v87);
    if (qword_1EDA69688 != -1)
    {
      swift_once();
    }

    v141 = qword_1EDA6EB98;
    v140 = unk_1EDA6EBA0;
    v196 = *(*v99 + 152);
    sub_1C906206C();
    OUTLINED_FUNCTION_123(&v231);
    v141();

    OUTLINED_FUNCTION_14_0();
    sub_1C8D28184(v142, &qword_1EC3133C8, &unk_1C909F250);
    OUTLINED_FUNCTION_40_10(&v232);
    sub_1C9062A1C();
    v143 = *(v208 + 8);
    v143(v102, v211);
    sub_1C8D28184(&qword_1EC316238, &qword_1EC315238, &qword_1C907C0B0);
    OUTLINED_FUNCTION_13_3();
    sub_1C8D28184(v144, &qword_1EC3133C8, &unk_1C909F250);
    v145 = v235;
    sub_1C906295C();
    v143(v140, v211);
    sub_1C8D28184(&qword_1EC316240, &qword_1EC315238, &qword_1C907C0B0);
    OUTLINED_FUNCTION_40_10(&v230);
    sub_1C9062A1C();
    v147 = v236 + 8;
    v146 = *(v236 + 8);
    v146(v199, v145);
    v148 = sub_1C8D28184(&qword_1EC316248, &qword_1EC316230, &unk_1C9084E40);
    sub_1C8D28184(&qword_1EC316250, &qword_1EC315238, &qword_1C907C0B0);
    v149 = v234;
    a10 = v148;
    sub_1C906296C();
    v151 = v237 + 8;
    v150 = *(v237 + 8);
    v152 = OUTLINED_FUNCTION_332();
    v150(v152);
    v236 = v147;
    v212 = v146;
    v146(v140, v145);
    if (qword_1EC3112F8 != -1)
    {
      OUTLINED_FUNCTION_15_16();
    }

    OUTLINED_FUNCTION_10(v214, qword_1EC390A00);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v153, v154, v155);
    OUTLINED_FUNCTION_37_12();
    sub_1C9062B1C();
    OUTLINED_FUNCTION_50_9(&v237);
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    OUTLINED_FUNCTION_296(&v236);
    v156(v213, v214);
    v157 = OUTLINED_FUNCTION_332();
    v150(v157);
    if (qword_1EC311300 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_10(v215, qword_1EC390A18);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v158, v159, v160);
    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_123(&v239);
    sub_1C9062B1C();
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    OUTLINED_FUNCTION_296(&v240);
    v161(v146, v215);
    v162 = OUTLINED_FUNCTION_77_3();
    v150(v162);
    v237 = v151;
    v228 = v150;
    if (qword_1EC311310 != -1)
    {
      swift_once();
    }

    v163 = qword_1EC390A48;
    sub_1C906206C();
    OUTLINED_FUNCTION_123(&a10);
    v163();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_80_2(v164);
    sub_1C9062A1C();
    v165 = *(v217 + 8);
    v165(v146, v218);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_80_2(v166);
    v167 = v229;
    sub_1C906295C();
    v165(v216, v218);
    v228(v167, v149);
    if (qword_1EC311318 != -1)
    {
      swift_once();
    }

    v229 = __swift_project_value_buffer(v233, qword_1EC390A58);
    if (qword_1EC311278 != -1)
    {
      swift_once();
    }

    v168 = qword_1EC3908D0;
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_50_9(&a14);
    v168();

    sub_1C8D28184(&qword_1EC316278, &qword_1EC3132A0, &unk_1C9084E20);
    OUTLINED_FUNCTION_54_5(&a15);
    sub_1C9062B1C();
    v169 = *(v219 + 8);
    v169(v218, v220);
    sub_1C8D28184(&qword_1EC316280, &qword_1EC315210, &qword_1C907C0A0);
    sub_1C8D28184(&qword_1EC316288, &qword_1EC3132A0, &unk_1C9084E20);
    OUTLINED_FUNCTION_123(&a16);
    v170 = v233;
    sub_1C906296C();
    v169(v168, v220);
    sub_1C8D28184(&qword_1EC316290, &qword_1EC315210, &qword_1C907C0A0);
    OUTLINED_FUNCTION_54_5(&a17);
    sub_1C9062B1C();
    v171 = *(v221 + 8);
    v171(&qword_1EC3132A0, v170);
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    v171(v168, v170);
    v172 = OUTLINED_FUNCTION_332();
    (v228)(v172);
    if (qword_1EC311320 != -1)
    {
      swift_once();
    }

    v173 = qword_1EC390A70;
    v174 = OUTLINED_FUNCTION_64_3();
    v173(v174);

    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v175, v176, v177);
    sub_1C9062B1C();
    v178 = *(v224 + 8);
    v178(v222, v225);
    OUTLINED_FUNCTION_50_9(&a18);
    OUTLINED_FUNCTION_69_3();
    sub_1C906294C();
    v178(v223, v225);
    v179 = OUTLINED_FUNCTION_332();
    v180 = v228;
    (v228)(v179);
    if (qword_1EC311328 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_10(v191, qword_1EC390A80);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_80_2(v181);
    sub_1C9062A1C();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_80_2(v182);
    OUTLINED_FUNCTION_334();
    sub_1C906295C();
    (*(v227 + 8))(v226, v191);
    v183 = OUTLINED_FUNCTION_77_3();
    v180(v183);
    v212(v232, v235);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E02848()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  if (*(*v0 + 16))
  {
    sub_1C8DFF6BC(*v0);
    v11 = *(v5 + 32);
    OUTLINED_FUNCTION_56_6();
    v12();
    v19[1] = v2;
    if (qword_1EC3112D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C9062E6C();
    __swift_project_value_buffer(v13, qword_1EC390988);
    v20[3] = v13;
    v20[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_10_0(v13);
    (*(v14 + 16))();
    v21[3] = sub_1C90627EC();
    v21[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162F0, &qword_1C9084E80);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v15, &qword_1EC3162F0, &qword_1C9084E80);
    sub_1C8E067D8();
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v20);

    OUTLINED_FUNCTION_28_10();
    sub_1C8D28184(v16, v17, v18);
    sub_1C906292C();
    (*(v5 + 8))(v10, v3);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E02AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v159 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15_0();
  v156 = sub_1C90627DC();
  v32 = OUTLINED_FUNCTION_11(v156);
  v155 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  OUTLINED_FUNCTION_11(v38);
  v160 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v43);
  v165 = sub_1C90627EC();
  v44 = OUTLINED_FUNCTION_11(v165);
  v166 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v146[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v146[-v51];
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C0, &unk_1C9084E60);
  v53 = OUTLINED_FUNCTION_11(v161);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v57);
  v60 = *v20;
  if (*(*v20 + 16))
  {
    v148 = v59;
    v149 = v38;
    v150 = v52;
    v151 = v58;
    v152 = v22;
    v153 = v28;
    v154 = v26;
    v164 = v21;
    v61 = v20[8];
    a10 = v60;
    v62 = v60 + 56;
    v63 = 1 << *(v60 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v60 + 56);
    j__swift_bridgeObjectRetain(v60);
    v147 = v61;
    j__swift_bridgeObjectRetain(v60);
    v66 = 0;
    v67 = (v63 + 63) >> 6;
    v158 = v49;
    v157 = v60;
    while (v65)
    {
LABEL_10:
      v69 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v70 = *(v60 + 48) + 40 * (v69 | (v66 << 6));
      if (!*(v70 + 32))
      {
        v71 = *v70;
        v22 = *(v70 + 8);
        sub_1C8D54590(*v70, v22, *(v70 + 16), *(v70 + 24), 0);

        v72 = sub_1C906316C();
        if (*(v72 + 16) && (v73 = sub_1C8CAE064(), (v74 & 1) != 0))
        {
          v75 = (*(v72 + 56) + 16 * v73);
          v76 = v75[1];
          v163 = *v75;
          v162 = v76;
        }

        else
        {

          v163 = 0x446E776F6E6B6E55;
          v162 = 0xED00006E69616D6FLL;
        }

        v178 = v71;
        v179 = v22;
        v180[0] = 0;
        v180[1] = 0;
        v181 = 0;

        sub_1C8F1E818(&v178, &v168);
        OUTLINED_FUNCTION_62_1();
        sub_1C8E067C4(v168, v169, v170, v171, v172);
        v174 = v71;
        v175 = v22;
        v176[0] = v163;
        v176[1] = v162;
        v177 = 1;
        sub_1C8D874AC(&v168, &v174);
        OUTLINED_FUNCTION_62_1();
        sub_1C8D3ED20(v168, v169, v170, v171, v172);
        v49 = v158;
        v60 = v157;
      }
    }

    while (1)
    {
      v68 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v68 >= v67)
      {
        break;
      }

      v65 = *(v62 + 8 * v68);
      ++v66;
      if (v65)
      {
        v66 = v68;
        goto LABEL_10;
      }
    }

    v77 = a10;
    v78 = v164;
    sub_1C8DFF934(a10);
    v80 = v79;
    v164 = v78;
    if (v147)
    {

      v167[0] = v80;
      v62 = v149;
      if (qword_1EC311400 == -1)
      {
LABEL_18:
        v81 = sub_1C9062E6C();
        OUTLINED_FUNCTION_10(v81, qword_1EC390BB8);
        v171 = v81;
        v172 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v168);
        OUTLINED_FUNCTION_10_0(v81);
        (*(v82 + 16))();
        v83 = OUTLINED_FUNCTION_94();
        __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_116();
        sub_1C8D28184(v85, v86, v87);
        OUTLINED_FUNCTION_123(&v175);
        sub_1C90640CC();
        __swift_destroy_boxed_opaque_existential_1(&v168);

        v88 = v161;
        if (qword_1EC3112F8 != -1)
        {
          OUTLINED_FUNCTION_15_16();
        }

        OUTLINED_FUNCTION_10(v62, qword_1EC390A00);
        v89 = v165;
        v171 = v165;
        v172 = MEMORY[0x1E699FE60];
        v90 = __swift_allocate_boxed_opaque_existential_1(&v168);
        v91 = v166;
        (*(v166 + 16))(v90, v22, v89);
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_56_6();
        sub_1C8D28184(v92, v93, v94);
        OUTLINED_FUNCTION_40_10(&a10);
        sub_1C906292C();
        __swift_destroy_boxed_opaque_existential_1(&v168);
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_56_6();
        sub_1C8D28184(v95, v96, v97);
        OUTLINED_FUNCTION_50_9(v176);
        v98 = &qword_1EC312558;
        sub_1C9062B0C();
        v99 = OUTLINED_FUNCTION_23(&a11);
        v100(v99, v62);
        v171 = MEMORY[0x1E69E6530];
        v172 = MEMORY[0x1E69A0178];
        v168 = 0;
        OUTLINED_FUNCTION_60_6();
        sub_1C9062BCC();
        v101 = OUTLINED_FUNCTION_17_14(&v173);
        v102 = v88;
        v163 = v103;
        v103(v101, v88);
        (*(v91 + 8))(v22, v89);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        goto LABEL_34;
      }

LABEL_37:
      OUTLINED_FUNCTION_26_10();
      swift_once();
      goto LABEL_18;
    }

    v104 = *(v79 + 16);
    v163 = v104;
    if (v104)
    {
      v157 = v77;
      v173 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v104, 0);
      v162 = v80;
      v80 += 40;
      v105 = v173;
      v106 = v104;
      do
      {
        v108 = *(v80 - 8);
        v107 = *v80;
        v109 = qword_1EC311400;

        if (v109 != -1)
        {
          OUTLINED_FUNCTION_26_10();
          swift_once();
        }

        v110 = sub_1C9062E6C();
        __swift_project_value_buffer(v110, qword_1EC390BB8);
        v171 = v110;
        v172 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v168);
        OUTLINED_FUNCTION_10_0(v110);
        (*(v111 + 16))();
        v167[3] = MEMORY[0x1E69E6158];
        v167[4] = MEMORY[0x1E69A0130];
        v167[0] = v108;
        v167[1] = v107;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v167, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        v173 = v105;
        v113 = *(v105 + 16);
        v112 = *(v105 + 24);
        if (v113 >= v112 >> 1)
        {
          v117 = OUTLINED_FUNCTION_176(v112);
          sub_1C8D09DBC(v117, v113 + 1, 1);
          v105 = v173;
        }

        *(v105 + 16) = v113 + 1;
        OUTLINED_FUNCTION_53_7();
        (*(v116 + 32))(v114 + v115 * v113, v49, v165);
        v80 += 16;
        --v106;
      }

      while (v106);
    }

    else
    {

      v105 = MEMORY[0x1E69E7CC0];
    }

    v168 = v105;
    OUTLINED_FUNCTION_54_5(&v179);
    sub_1C90627AC();
    v118 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
    OUTLINED_FUNCTION_2_36();
    OUTLINED_FUNCTION_116();
    sub_1C8D28184(v120, v121, v122);
    v123 = MEMORY[0x1E699FE60];
    v124 = v150;
    OUTLINED_FUNCTION_125();
    sub_1C90640DC();
    OUTLINED_FUNCTION_296(v180);
    v125(v80, v156);

    v22 = v161;
    if (qword_1EC3112F8 != -1)
    {
      OUTLINED_FUNCTION_15_16();
    }

    v126 = v149;
    OUTLINED_FUNCTION_10(v149, qword_1EC390A00);
    v127 = v165;
    v171 = v165;
    v172 = v123;
    __swift_allocate_boxed_opaque_existential_1(&v168);
    OUTLINED_FUNCTION_54_5(&a18);
    (*(v128 + 16))();
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_56_6();
    sub_1C8D28184(v129, v130, v131);
    OUTLINED_FUNCTION_40_10(&a10);
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(&v168);
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_56_6();
    sub_1C8D28184(v132, v133, v134);
    OUTLINED_FUNCTION_50_9(v176);
    v98 = v123;
    sub_1C9062B0C();
    v135 = OUTLINED_FUNCTION_23(&a11);
    v136(v135, v126);
    v171 = MEMORY[0x1E69E6530];
    v172 = MEMORY[0x1E69A0178];
    v168 = v163;
    OUTLINED_FUNCTION_60_6();
    sub_1C9062D8C();
    v137 = OUTLINED_FUNCTION_17_14(&v173);
    v163 = v138;
    v138(v137, v22);
    (*(v80 + 8))(v124, v127);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    v102 = v22;
LABEL_34:
    v139 = v154;
    OUTLINED_FUNCTION_123(&v177);
    (*(v140 + 32))(v152, v159, v139);
    OUTLINED_FUNCTION_37_12();
    v141 = v98;
    sub_1C9062BEC();
    OUTLINED_FUNCTION_31_9(&qword_1EC3162E0, &qword_1EC316230, &unk_1C9084E40);
    OUTLINED_FUNCTION_77_3();
    sub_1C9062A6C();
    v142 = v163;
    (v163)(&qword_1EC315228, v102);
    v143 = *(v22 + 8);
    v144 = OUTLINED_FUNCTION_334();
    v145(v144);
    v142(v141, v102);
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8E036E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141[-v33];
  v149 = sub_1C90627DC();
  v35 = OUTLINED_FUNCTION_11(v149);
  v148 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_0(v40 - v39);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315240, &qword_1C907C0B8);
  OUTLINED_FUNCTION_11(v152);
  v150 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v45);
  v46 = sub_1C90627EC();
  v163 = OUTLINED_FUNCTION_11(v46);
  v164 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_12();
  v162 = v50;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_147();
  v154 = v52;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C0, &unk_1C9084E60);
  v53 = OUTLINED_FUNCTION_11(v153);
  v151 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v141[-v58];
  v161 = sub_1C9063C4C();
  v60 = OUTLINED_FUNCTION_11(v161);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_15();
  v160 = (v66 - v65);
  v67 = *v20;
  if (!*(v67 + 16))
  {
    goto LABEL_33;
  }

  v143 = v34;
  v144 = v26;
  v145 = v29;
  v146 = v27;
  v147 = v21;
  v68 = *(v24 + 8);
  v69 = v67 + 56;
  v70 = 1 << *(v67 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v67 + 56);
  j__swift_bridgeObjectRetain(v67);
  v142 = v68;
  j__swift_bridgeObjectRetain(v67);
  v73 = 0;
  v74 = (v70 + 63) >> 6;
  v155 = v62 + 8;
  v156 = v62 + 16;
  v75 = MEMORY[0x1E69E7CC0];
  v158 = v67;
  v159 = v59;
  v157 = v62;
  if (v72)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v76 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_27_10();
      swift_once();
      goto LABEL_25;
    }

    if (v76 >= v74)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v73;
    if (v72)
    {
      v73 = v76;
      do
      {
LABEL_9:
        v77 = *(v67 + 48) + *(v62 + 72) * (__clz(__rbit64(v72)) | (v73 << 6));
        v78 = v160;
        v79 = v161;
        (*(v62 + 16))(v160, v77, v161);
        v80 = sub_1C9063C1C();
        v81 = v62;
        v83 = v82;
        (*(v81 + 8))(v78, v79);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = v75[2];
          sub_1C8D00CA4();
          v75 = v89;
        }

        v85 = v75[2];
        v84 = v75[3];
        v86 = v75;
        if (v85 >= v84 >> 1)
        {
          OUTLINED_FUNCTION_176(v84);
          sub_1C8D00CA4();
          v86 = v90;
        }

        v72 &= v72 - 1;
        v86[2] = v85 + 1;
        v75 = v86;
        v87 = &v86[2 * v85];
        v87[4] = v80;
        v87[5] = v83;
        v67 = v158;
        v62 = v157;
      }

      while (v72);
    }
  }

  v91 = v142;
  j__swift_bridgeObjectRelease(v67, v142);
  if (v91)
  {
    v92 = v75[2];
    v161 = v92;
    if (v92)
    {
      a10 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v92, 0);
      v160 = v75;
      v93 = v75 + 5;
      v94 = a10;
      do
      {
        v96 = *(v93 - 1);
        v95 = *v93;
        v97 = qword_1EC311480;

        if (v97 != -1)
        {
          OUTLINED_FUNCTION_27_10();
          swift_once();
        }

        v98 = sub_1C9062E6C();
        __swift_project_value_buffer(v98, qword_1EC390C98);
        v167 = v98;
        v168 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(v166);
        OUTLINED_FUNCTION_10_0(v98);
        (*(v99 + 16))();
        v165[3] = MEMORY[0x1E69E6158];
        v165[4] = MEMORY[0x1E69A0130];
        v165[0] = v96;
        v165[1] = v95;
        v100 = v162;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v165, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(v166);
        a10 = v94;
        v69 = *(v94 + 16);
        v101 = *(v94 + 24);
        if (v69 >= v101 >> 1)
        {
          v105 = OUTLINED_FUNCTION_176(v101);
          sub_1C8D09DBC(v105, v69 + 1, 1);
          v100 = v162;
          v94 = a10;
        }

        *(v94 + 16) = v69 + 1;
        OUTLINED_FUNCTION_53_7();
        (*(v104 + 32))(v102 + v103 * v69, v100);
        v93 += 2;
        --v92;
      }

      while (v92);
    }

    else
    {

      v94 = MEMORY[0x1E69E7CC0];
    }

    v166[0] = v94;
    OUTLINED_FUNCTION_54_5(&a10);
    sub_1C90627AC();
    v118 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
    OUTLINED_FUNCTION_2_36();
    OUTLINED_FUNCTION_116();
    sub_1C8D28184(v120, v121, v122);
    v74 = MEMORY[0x1E699FE60];
    v123 = v154;
    OUTLINED_FUNCTION_125();
    sub_1C90640DC();
    OUTLINED_FUNCTION_296(&a11);
    v124(v69, v149);

    if (qword_1EC311308 != -1)
    {
      OUTLINED_FUNCTION_30_14();
    }

    v125 = v152;
    OUTLINED_FUNCTION_10(v152, qword_1EC390A30);
    v126 = v163;
    v167 = v163;
    v168 = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v166);
    v128 = v164;
    (*(v164 + 16))(boxed_opaque_existential_1, v123, v126);
    OUTLINED_FUNCTION_3_2();
    sub_1C8D28184(v129, v130, &qword_1C907C0B8);
    OUTLINED_FUNCTION_40_10(&a13);
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(v166);
    OUTLINED_FUNCTION_0_51();
    sub_1C8D28184(v131, &qword_1EC315240, &qword_1C907C0B8);
    OUTLINED_FUNCTION_78_5();
    v132 = OUTLINED_FUNCTION_23(&a14);
    v133(v132, v125);
    v167 = MEMORY[0x1E69E6530];
    v168 = MEMORY[0x1E69A0178];
    v166[0] = v161;
    sub_1C9062D8C();
    OUTLINED_FUNCTION_17_14(&a15);
    OUTLINED_FUNCTION_73_3();
    v134();
    (*(v128 + 8))(v123, v126);
    goto LABEL_32;
  }

  v165[0] = v75;
  v74 = v154;
  if (qword_1EC311480 != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v106 = sub_1C9062E6C();
  __swift_project_value_buffer(v106, qword_1EC390C98);
  v167 = v106;
  v168 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v166);
  OUTLINED_FUNCTION_10_0(v106);
  (*(v107 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_2_36();
  sub_1C8D28184(v108, &qword_1EC312558, &qword_1C9066990);
  sub_1C90640CC();
  __swift_destroy_boxed_opaque_existential_1(v166);

  if (qword_1EC311308 != -1)
  {
    OUTLINED_FUNCTION_30_14();
  }

  v109 = v152;
  OUTLINED_FUNCTION_10(v152, qword_1EC390A30);
  v110 = v163;
  v167 = v163;
  v168 = MEMORY[0x1E699FE60];
  v111 = __swift_allocate_boxed_opaque_existential_1(v166);
  v112 = v164;
  (*(v164 + 16))(v111, v74, v110);
  OUTLINED_FUNCTION_3_2();
  sub_1C8D28184(v113, &qword_1EC315240, &qword_1C907C0B8);
  OUTLINED_FUNCTION_40_10(&a13);
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(v166);
  OUTLINED_FUNCTION_0_51();
  sub_1C8D28184(v114, &qword_1EC315240, &qword_1C907C0B8);
  OUTLINED_FUNCTION_78_5();
  v115 = OUTLINED_FUNCTION_23(&a14);
  v116(v115, v109);
  v167 = MEMORY[0x1E69E6530];
  v168 = MEMORY[0x1E69A0178];
  v166[0] = 0;
  sub_1C9062BCC();
  OUTLINED_FUNCTION_17_14(&a15);
  OUTLINED_FUNCTION_73_3();
  v117();
  (*(v112 + 8))(v154, v110);
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v166);
  OUTLINED_FUNCTION_40_10(&v168);
  v136 = v143;
  v137 = v146;
  (*(v135 + 32))(v143, v144, v146);
  OUTLINED_FUNCTION_67_5();
  sub_1C9062BEC();
  OUTLINED_FUNCTION_31_9(&qword_1EC3162E0, &qword_1EC316230, &unk_1C9084E40);
  sub_1C9062A6C();
  v138 = OUTLINED_FUNCTION_77_3();
  v139 = v162;
  v162(v138);
  (*(v74 + 8))(v136, v137);
  v140 = OUTLINED_FUNCTION_334();
  v139(v140);
LABEL_33:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E0425C()
{
  v0 = sub_1C902E57C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static TypeKindPropertyFilter.any.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21();
  }

  *a1 = qword_1EC316148;
}

uint64_t static TypeKindPropertyFilter.Kind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else if (v3 != 5)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v3 != 4 && (sub_1C8E5A138(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C8E0438C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8E04454(char a1)
{
  if (a1)
  {
    return 0x746172656D756E65;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1C8E04490(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E04520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E0438C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E04548(uint64_t a1)
{
  v2 = sub_1C8E05284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E04584(uint64_t a1)
{
  v2 = sub_1C8E05284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E045C0(uint64_t a1)
{
  v2 = sub_1C8E05380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E045FC(uint64_t a1)
{
  v2 = sub_1C8E05380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E0463C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E04490(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E04668(uint64_t a1)
{
  v2 = sub_1C8E052D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E046A4(uint64_t a1)
{
  v2 = sub_1C8E052D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypeKindPropertyFilter.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v35 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316170, &qword_1C9084388);
  v5 = OUTLINED_FUNCTION_11(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v32 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316178, &qword_1C9084390);
  v12 = OUTLINED_FUNCTION_11(v11);
  v30 = v13;
  v31 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316180, &qword_1C9084398);
  OUTLINED_FUNCTION_11(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_0();
  v23 = *v0;
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E05284();
  sub_1C9064E1C();
  if (v23 == 5)
  {
    sub_1C8E05380();
    OUTLINED_FUNCTION_79_4();
    (*(v30 + 8))(v18, v31);
  }

  else
  {
    sub_1C8E052D8();
    v27 = v32;
    OUTLINED_FUNCTION_79_4();
    sub_1C8E0532C();
    v28 = v34;
    sub_1C9064B0C();
    OUTLINED_FUNCTION_59_8();
    v29(v27, v28);
  }

  v25 = OUTLINED_FUNCTION_66_5();
  v26(v25, v19);
  OUTLINED_FUNCTION_198();
}

uint64_t TypeKindPropertyFilter.Kind.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](1);
  if (v1 == 4)
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();

  return sub_1C8D2FEF0();
}

uint64_t TypeKindPropertyFilter.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  if (v1 == 5)
  {
    MEMORY[0x1CCA82810](0);
  }

  else
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9064D9C();
    if (v1 != 4)
    {
      sub_1C8D2FEF0();
    }
  }

  return sub_1C9064DBC();
}

void TypeKindPropertyFilter.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_196();
  v71 = v12;
  v15 = v14;
  v67 = v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161A0, &qword_1C90843A0);
  OUTLINED_FUNCTION_11(v70);
  v68 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161A8, &qword_1C90843A8);
  OUTLINED_FUNCTION_11(v23);
  v66 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3161B0, &unk_1C90843B0);
  OUTLINED_FUNCTION_11(v28);
  v69 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62 - v33;
  v35 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1C8E05284();
  v36 = v71;
  sub_1C9064DEC();
  if (v36)
  {
    goto LABEL_8;
  }

  v63 = v23;
  v64 = v13;
  v65 = v22;
  v71 = v15;
  v37 = v70;
  v38 = sub_1C9064A9C();
  sub_1C8CB8914(v38, 0);
  if (v40 == v41 >> 1)
  {
LABEL_7:
    v47 = sub_1C90647DC();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v49 = &type metadata for TypeKindPropertyFilter.Kind;
    sub_1C906499C();
    sub_1C90647CC();
    v51 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v47);
    (*(v52 + 104))(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_59_8();
    v53(v34, v28);
    v15 = v71;
LABEL_8:
    v54 = v15;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v72 = *(v39 + v40);
    sub_1C8CB891C(v40 + 1);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      if (v72)
      {
        sub_1C8E052D8();
        sub_1C906498C();
        v46 = v67;
        sub_1C8E053D4();
        sub_1C90649EC();
        v56 = v69;
        swift_unknownObjectRelease();
        v59 = OUTLINED_FUNCTION_66_5();
        v60(v59, v37);
        (*(v56 + 8))(v34, v28);
      }

      else
      {
        sub_1C8E05380();
        v55 = v64;
        sub_1C906498C();
        v46 = v67;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v55, v63);
        OUTLINED_FUNCTION_59_8();
        v57 = OUTLINED_FUNCTION_332();
        v58(v57);
        a12 = 5;
      }

      *v46 = a12;
      v54 = v71;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C8E04FCC()
{
  v1 = *v0;
  sub_1C9064D7C();
  if (v1 == 5)
  {
    MEMORY[0x1CCA82810](0);
  }

  else
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9064D9C();
    if (v1 != 4)
    {
      sub_1C8D2FEF0();
    }
  }

  return sub_1C9064DBC();
}

uint64_t sub_1C8E0505C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 679046753;
  }

  else
  {
    v2 = 678194273;
  }

  v5 = v2 | 0x203A666F00000000;
  sub_1C8D3EBC0();
  v3 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v3);

  return v5;
}

uint64_t static SystemTypeProtocolFilter.any.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC311370 != -1)
  {
    OUTLINED_FUNCTION_20();
  }

  v2 = qword_1EC316150;
  v3 = byte_1EC316158;
  *a1 = qword_1EC316150;
  *(a1 + 8) = v3;

  return j__swift_bridgeObjectRetain(v2);
}

uint64_t static SystemTypeProtocolFilter.implementing(any:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

uint64_t static SystemTypeProtocolFilter.implementing(all:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t sub_1C8E05190(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C8E051D8()
{
  result = qword_1EC316160;
  if (!qword_1EC316160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316160);
  }

  return result;
}

unint64_t sub_1C8E0522C()
{
  result = qword_1EDA66688;
  if (!qword_1EDA66688)
  {
    sub_1C9063C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66688);
  }

  return result;
}

unint64_t sub_1C8E05284()
{
  result = qword_1EC316188;
  if (!qword_1EC316188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316188);
  }

  return result;
}

unint64_t sub_1C8E052D8()
{
  result = qword_1EC316190;
  if (!qword_1EC316190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316190);
  }

  return result;
}

unint64_t sub_1C8E0532C()
{
  result = qword_1EDA60920;
  if (!qword_1EDA60920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60920);
  }

  return result;
}

unint64_t sub_1C8E05380()
{
  result = qword_1EC316198;
  if (!qword_1EC316198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316198);
  }

  return result;
}

unint64_t sub_1C8E053D4()
{
  result = qword_1EDA60918;
  if (!qword_1EDA60918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60918);
  }

  return result;
}

unint64_t sub_1C8E05428(uint64_t a1)
{
  result = sub_1C8E05450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E05450()
{
  result = qword_1EC3161B8;
  if (!qword_1EC3161B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161B8);
  }

  return result;
}

unint64_t sub_1C8E054A8()
{
  result = qword_1EC3161C0;
  if (!qword_1EC3161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161C0);
  }

  return result;
}

unint64_t sub_1C8E054FC(uint64_t a1)
{
  result = sub_1C8E05524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E05524()
{
  result = qword_1EC3161C8;
  if (!qword_1EC3161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161C8);
  }

  return result;
}

unint64_t sub_1C8E05578(uint64_t a1)
{
  result = sub_1C8E055A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E055A0()
{
  result = qword_1EC3161D0;
  if (!qword_1EC3161D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161D0);
  }

  return result;
}

unint64_t sub_1C8E055F4(uint64_t a1)
{
  result = sub_1C8E0561C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8E0561C()
{
  result = qword_1EC3161D8;
  if (!qword_1EC3161D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit27AssistantSchemaVersionRangeVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8E0569C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C8E056DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TypeDefinitionQueryRequest()
{
  result = qword_1EC3161E0;
  if (!qword_1EC3161E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for TypeKindPropertyFilter.Kind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 5;
    if (v6 < 4)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    if (v9 + 1 >= 2)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8E05964(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C8E05984(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_1C8E059C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8E05A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TypeKindPropertyFilter.Kind.EnumerationCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E05BF4()
{
  result = qword_1EC3161F0;
  if (!qword_1EC3161F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161F0);
  }

  return result;
}

unint64_t sub_1C8E05C4C()
{
  result = qword_1EC3161F8;
  if (!qword_1EC3161F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3161F8);
  }

  return result;
}

unint64_t sub_1C8E05CA4()
{
  result = qword_1EC316200;
  if (!qword_1EC316200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316200);
  }

  return result;
}

unint64_t sub_1C8E05CFC()
{
  result = qword_1EC316208;
  if (!qword_1EC316208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316208);
  }

  return result;
}

unint64_t sub_1C8E05D54()
{
  result = qword_1EC316210;
  if (!qword_1EC316210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316210);
  }

  return result;
}

unint64_t sub_1C8E05DAC()
{
  result = qword_1EC316218;
  if (!qword_1EC316218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316218);
  }

  return result;
}

unint64_t sub_1C8E05E04()
{
  result = qword_1EC316220;
  if (!qword_1EC316220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316220);
  }

  return result;
}

unint64_t sub_1C8E05E5C()
{
  result = qword_1EC316228;
  if (!qword_1EC316228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316228);
  }

  return result;
}

uint64_t sub_1C8E05EB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316230, &unk_1C9084E40);
  OUTLINED_FUNCTION_11(v6);
  v34 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = sub_1C90627EC();
  v18 = OUTLINED_FUNCTION_11(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v25 = v24 - v23;
  v26 = sub_1C9062E6C();
  v37[3] = v26;
  v37[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_10_0(v26);
  (*(v27 + 16))();
  a4(v37, a3);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8D3F0C4(v16, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    v28 = v34;
    (*(v34 + 32))(v12, v35, v6);
    v36[3] = v17;
    v36[4] = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v20 + 16))(boxed_opaque_existential_1, v25, v17);
    OUTLINED_FUNCTION_28_10();
    sub_1C8D28184(v30, v31, v32);
    sub_1C906292C();
    (*(v28 + 8))(v12, v6);
    (*(v20 + 8))(v25, v17);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1C8E061A0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1C90627EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C9062E6C();
  v24[3] = v17;
  v24[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a2, v17);
  sub_1C902CF6C(v24);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C8D3F0C4(v11, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v4 + 32))(v7, v22, v3);
    v23[3] = v12;
    v23[4] = MEMORY[0x1E699FE60];
    v19 = __swift_allocate_boxed_opaque_existential_1(v23);
    (*(v13 + 16))(v19, v16, v12);
    sub_1C8D28184(&qword_1EC3162B8, &qword_1EC315238, &qword_1C907C0B0);
    sub_1C906292C();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1C8E064C4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1C90627EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = v16;
  v25[4] = MEMORY[0x1E699FE60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v18 = *(v12 + 16);
  v18(boxed_opaque_existential_1, a2, v11);
  sub_1C902CF6C(v25);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8D3F0C4(v10, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v19 = v22;
    (*(v22 + 32))(v6, v23, v3);
    v24[3] = v11;
    v24[4] = MEMORY[0x1E699FE60];
    v20 = __swift_allocate_boxed_opaque_existential_1(v24);
    v18(v20, v15, v11);
    sub_1C8D28184(&qword_1EC3162B8, &qword_1EC315238, &qword_1C907C0B0);
    sub_1C906292C();
    (*(v19 + 8))(v6, v3);
    (*(v12 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1C8E067C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C8D3ED20(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1C8E067D8()
{
  result = qword_1EC316300;
  if (!qword_1EC316300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316300);
  }

  return result;
}

unint64_t sub_1C8E0682C()
{
  result = qword_1EC316318;
  if (!qword_1EC316318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316318);
  }

  return result;
}

unint64_t sub_1C8E06880()
{
  result = qword_1EC316330;
  if (!qword_1EC316330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316330);
  }

  return result;
}

unint64_t sub_1C8E068D4()
{
  result = qword_1EC316340;
  if (!qword_1EC316340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316340);
  }

  return result;
}

unint64_t sub_1C8E06928()
{
  result = qword_1EC316350;
  if (!qword_1EC316350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_12()
{
}

void OUTLINED_FUNCTION_35_12()
{

  JUMPOUT(0x1CCA81A90);
}

void OUTLINED_FUNCTION_61_6()
{

  JUMPOUT(0x1CCA81C60);
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_1C9062B0C();
}

uint64_t OUTLINED_FUNCTION_79_4()
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_80_2(unint64_t *a1)
{

  return sub_1C8D28184(a1, v1, v2);
}

void sub_1C8E06AB0()
{
  OUTLINED_FUNCTION_67_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316530, &qword_1C90729E8);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_35();
  v6 = type metadata accessor for IndexingLog.IndexingEvent(v5);
  v7 = OUTLINED_FUNCTION_24_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_136();
    v16 = sub_1C8D16D78(v14, v15, &qword_1C90729E8);
    OUTLINED_FUNCTION_112_2(v16, v17, &qword_1EC313FA8, &unk_1C9085260, type metadata accessor for IndexingLog.IndexingEvent, type metadata accessor for IndexingLog.IndexingEvent);

    v18 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v18, v19, &qword_1C90729E8);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v20, v21, v22);
    v23 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_11();
    sub_1C8D64304();

    OUTLINED_FUNCTION_217_0();
  }
}

void sub_1C8E06C14()
{
  OUTLINED_FUNCTION_67_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316540, &qword_1C9072A00);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_35();
  v6 = type metadata accessor for IndexingLog.WALEvent(v5);
  v7 = OUTLINED_FUNCTION_24_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_136();
    v16 = sub_1C8D16D78(v14, v15, &qword_1C9072A00);
    OUTLINED_FUNCTION_112_2(v16, v17, &qword_1EC313FB8, &qword_1C9085270, type metadata accessor for IndexingLog.WALEvent, type metadata accessor for IndexingLog.WALEvent);

    v18 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v18, v19, &qword_1C9072A00);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v20, v21, v22);
    v23 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_11();
    sub_1C8D6442C();

    OUTLINED_FUNCTION_217_0();
  }
}

void sub_1C8E06D78()
{
  OUTLINED_FUNCTION_67_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316550, &qword_1C9072A08);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_35();
  v6 = type metadata accessor for IndexingLog.VacuumEvent(v5);
  v7 = OUTLINED_FUNCTION_24_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_136();
    v16 = sub_1C8D16D78(v14, v15, &qword_1C9072A08);
    OUTLINED_FUNCTION_112_2(v16, v17, &qword_1EC313FC0, &qword_1C9072450, type metadata accessor for IndexingLog.VacuumEvent, type metadata accessor for IndexingLog.VacuumEvent);

    v18 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v18, v19, &qword_1C9072A08);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v20, v21, v22);
    v23 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_11();
    sub_1C8D64540();

    OUTLINED_FUNCTION_217_0();
  }
}

uint64_t sub_1C8E06EDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C8D1D824(a1, v9);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1C8D6478C(v9, a2);
    *v2 = v8;
    v5 = sub_1C90648DC();
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  else
  {
    sub_1C8D16D78(a1, &qword_1EC316428, &unk_1C9085050);
    sub_1C8E1ADDC(a2, v9);
    v7 = sub_1C90648DC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1C8D16D78(v9, &qword_1EC316428, &unk_1C9085050);
  }
}

uint64_t sub_1C8E07004(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E30, &unk_1C907A7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ConcreteResolvable();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1C8D16D78(a1, &qword_1EC314E30, &unk_1C907A7A0);
    sub_1C8E1AC90(&qword_1EC3164A0, &qword_1C9085180, type metadata accessor for ConcreteResolvable, type metadata accessor for ConcreteResolvable, v7);

    return sub_1C8D16D78(v7, &qword_1EC314E30, &unk_1C907A7A0);
  }

  else
  {
    sub_1C8E1BAB4(a1, v11, type metadata accessor for ConcreteResolvable);
    v14 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1C8D64930();

    *v2 = v16;
  }

  return result;
}

void sub_1C8E071DC()
{
  OUTLINED_FUNCTION_67_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC31A4B0, &unk_1C9085240);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_35();
  v6 = type metadata accessor for ToolKitProtoIndexingLogEntry(v5);
  v7 = OUTLINED_FUNCTION_24_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_136();
    v16 = sub_1C8D16D78(v14, v15, &unk_1C9085240);
    OUTLINED_FUNCTION_112_2(v16, v17, &unk_1EC316520, &unk_1C9072420, type metadata accessor for ToolKitProtoIndexingLogEntry, type metadata accessor for ToolKitProtoIndexingLogEntry);

    v18 = OUTLINED_FUNCTION_211();
    sub_1C8D16D78(v18, v19, &unk_1C9085240);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_136();
    sub_1C8E1BAB4(v20, v21, v22);
    v23 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_11();
    sub_1C8D64A44();

    OUTLINED_FUNCTION_217_0();
  }
}

uint64_t sub_1C8E07340()
{
  v0 = sub_1C9061C4C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C9061C3C();
  qword_1EDA63300 = result;
  return result;
}

uint64_t sub_1C8E07380()
{
  result = sub_1C8E073A0();
  qword_1EDA632E8 = result;
  return result;
}

uint64_t sub_1C8E073A0()
{
  v0 = sub_1C90648DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C9061C8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1C9061C7C();
  v9 = qword_1EC3112B0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EC314E18);
  (*(v1 + 16))(v4, v10, v0);
  v15 = MEMORY[0x1E69E6370];
  v14[0] = 1;
  v11 = sub_1C9061C6C();
  sub_1C8E06EDC(v14, v4);
  v11(v13, 0);

  return v8;
}

uint64_t sub_1C8E07524()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  OUTLINED_FUNCTION_11(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(&v11 - v8, v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v1, v7);
  sub_1C906349C();
  return (*(v3 + 8))(v9, v1);
}

void sub_1C8E07618(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v10[-v7];
  v9 = *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping);
  if (v9 != v2)
  {
    (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v3, v6);
    if (v9)
    {
      memset(v10, 0, sizeof(v10));
    }

    else
    {
      *v10 = 1;
      memset(&v10[8], 0, 32);
    }

    v11 = 3;
    sub_1C90634AC();
    (*(v4 + 8))(v8, v3);
  }
}

void sub_1C8E07764(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping);
  *(v1 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping) = a1;
  sub_1C8E07618(v2);
}

uint64_t sub_1C8E0777C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_identifier;
  v4 = sub_1C906204C();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

char *sub_1C8E077EC(void *a1)
{
  v2 = v1;
  v4 = sub_1C9063D3C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v44 = v10 - v9;
  v11 = &v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  v13 = type metadata accessor for ToolInvocation();
  __swift_storeEnumTagSinglePayload(&v2[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream;
  sub_1C90634CC();
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_isStepping] = 0;
  v43 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_identifier;
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v15 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation;
  *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation] = 0;
  v16 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client;
  *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client] = a1;
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated] = 0;
  v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed] = 0;
  type metadata accessor for ToolDatabase();
  v17 = a1;
  v18 = ToolDatabase.__allocating_init(readonly:)(2);
  if (v45)
  {

    sub_1C8D16D78(v11, &unk_1EC316490, &qword_1C9085158);
    sub_1C8D16D78(&v2[v12], &qword_1EC316440, &dword_1C908BFE0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
    OUTLINED_FUNCTION_13_1(v19);
    (*(v20 + 8))(&v2[v14]);
    v21 = sub_1C906204C();
    OUTLINED_FUNCTION_13_1(v21);
    (*(v22 + 8))(&v2[v43]);

    type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
    v23 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v24 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v17;
    *&v2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_database] = v18;
    v46.receiver = v2;
    v46.super_class = type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
    v26 = objc_msgSendSuper2(&v46, sel_init);
    v27 = *&v26[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client];
    v2 = v26;
    [v27 setDelegate_];
    v28 = *MEMORY[0x1E69E10F8];
    sub_1C906371C();
    v29 = sub_1C9063D1C();
    v30 = sub_1C906446C();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_17_0();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_55_5();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315138;
      v33 = [v2 debugDescription];
      sub_1C9063EEC();

      v34 = OUTLINED_FUNCTION_206_0();
      v37 = sub_1C8CACE04(v34, v35, v36);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1C8C9B000, v29, v30, "Session %s created", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v38 = OUTLINED_FUNCTION_36_10();
      MEMORY[0x1CCA833A0](v38);
      v39 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v39);
    }

    else
    {
    }

    (*(v41 + 8))(v44, v42);
  }

  return v2;
}

uint64_t sub_1C8E07BF4()
{
  OUTLINED_FUNCTION_7();
  v1[34] = v2;
  v1[35] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v1[36] = OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for ToolInvocation();
  v1[37] = v6;
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  v1[38] = OUTLINED_FUNCTION_39();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v1[39] = v9;
  OUTLINED_FUNCTION_46(v9);
  v1[40] = v10;
  v12 = *(v11 + 64);
  v1[41] = OUTLINED_FUNCTION_39();
  v13 = sub_1C9063D3C();
  v1[42] = v13;
  OUTLINED_FUNCTION_46(v13);
  v1[43] = v14;
  v16 = *(v15 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C8E085AC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  v4 = *(v3 + 400);
  *v2 = *v0;
  *(v1 + 408) = v5;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8E08A64(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1C8E08B34;

  return sub_1C8E07BF4();
}

uint64_t sub_1C8E08B34()
{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_377();
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v0;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  v11 = v5[2];
  v12 = OUTLINED_FUNCTION_94();
  v13(v12);
  _Block_release(v5);

  OUTLINED_FUNCTION_6_0();

  return v14();
}

uint64_t sub_1C8E08CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316510, &qword_1C9085200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1C90642AC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1C9085210;
  v10[5] = v9;
  sub_1C8E1A5BC(0, 0, v7, &unk_1C9085220, v10);
}

uint64_t sub_1C8E08DB0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  v11 = sub_1C9063D3C();
  v12 = OUTLINED_FUNCTION_11(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  v21 = v2;
  v22 = sub_1C9063D1C();
  v23 = sub_1C906446C();

  if (os_log_type_enabled(v22, v23))
  {
    v37 = v11;
    v24 = OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_55_5();
    v39 = swift_slowAlloc();
    *v24 = 136315394;
    v36 = v23;
    v25 = [v21 debugDescription];
    sub_1C9063EEC();
    v38 = a2;

    v26 = OUTLINED_FUNCTION_145();
    v29 = sub_1C8CACE04(v26, v27, v28);

    *(v24 + 4) = v29;
    a2 = v38;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v38;
    _os_log_impl(&dword_1C8C9B000, v22, v36, "Session %s received event: %ld", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    result = (*(v14 + 8))(v19, v37);
  }

  else
  {

    result = (*(v14 + 8))(v19, v11);
  }

  if (a2 == 1)
  {
    *(v21 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated) = 1;
    (*(v7 + 16))(v3, v21 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v5);
    sub_1C8E1AF00();
    v31 = swift_allocError();
    *v32 = 0;
    sub_1C90634BC();

    v33 = *(v7 + 8);
    v34 = OUTLINED_FUNCTION_212();
    return v35(v34);
  }

  return result;
}

void sub_1C8E0912C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164E0, &unk_1C90851D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v7 = &v29[-v6];
  v8 = [a1 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1C8CBE304(&qword_1EDA60498, type metadata accessor for ProgressUserInfoKey);
  v9 = sub_1C9063E0C();

  sub_1C8E9E540(*MEMORY[0x1E69E1328], v9, &v30);

  if (!v32)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164F8, &qword_1C90851E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = v34;
  v11 = *MEMORY[0x1E69E1310];
  sub_1C9063EEC();
  sub_1C8E9E59C(v10, &v30);

  if (!v32)
  {
    goto LABEL_14;
  }

  sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

  v12 = v34;
  v13 = *MEMORY[0x1E69E1320];
  sub_1C9063EEC();
  sub_1C8E9E59C(v10, &v30);

  if (!v32)
  {

LABEL_14:

LABEL_15:
    sub_1C8D16D78(&v30, &qword_1EC3164F0, &qword_1C907A7D0);
    return;
  }

  sub_1C8CB78AC(0, &qword_1EDA60458, 0x1E696AEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v14 = v34;
  v15 = *MEMORY[0x1E69E1318];
  sub_1C9063EEC();
  sub_1C8E9E59C(v10, &v30);

  if (!v32)
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v16 = v34;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      (*(v3 + 16))(v7, Strong + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v2);

      [v12 floatValue];
      v20 = v19;
      v21 = sub_1C9063EEC();
      v23 = v22;
      v24 = sub_1C9063EEC();
      v30 = v20;
      *&v31 = v21;
      *(&v31 + 1) = v23;
      *&v32 = v24;
      *(&v32 + 1) = v25;
      v33 = 1;
      sub_1C90634AC();
      sub_1C8E1B758(v30, v31, *(&v31 + 1), v32, *(&v32 + 1), v33);
      (*(v3 + 8))(v7, v2);
    }

    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      (*(v3 + 16))(v7, v26 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession__eventStream, v2);

      [v12 floatValue];
      v30 = v28;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      sub_1C90634AC();

      (*(v3 + 8))(v7, v2);
      return;
    }
  }
}

void sub_1C8E09618()
{
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v1 = 0;
  }

  else
  {
    if ((*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed) & 1) == 0)
    {
      return;
    }

    v1 = 1;
  }

  sub_1C8E1AF00();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
}

uint64_t sub_1C8E09694()
{
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C8E096D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E096EC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 40);
  v14 = *(v0 + 24);
  sub_1C8E07764(1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E097D4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0B7A8(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C8E097D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8E098F0()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C8E07764(0);
  swift_willThrow();
  OUTLINED_FUNCTION_6_0();
  v5 = v0[8];

  return v4();
}

uint64_t sub_1C8E09964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for ToolExecutionResult(0);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E30, &unk_1C907A7A0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for ToolInvocation();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = sub_1C9063D3C();
  v4[33] = v11;
  v12 = *(v11 - 8);
  v4[34] = v12;
  v13 = *(v12 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E09B4C, 0, 0);
}

uint64_t sub_1C8E09B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v30 = v26[37];
  v31 = v26[32];
  v33 = v26[20];
  v32 = v26[21];
  v34 = v26[19];
  v26[38] = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v35 = OUTLINED_FUNCTION_148();
  sub_1C8E1B5B4(v35, v36, v37);
  sub_1C8D4F62C(v32, (v26 + 2), &unk_1EC316490, &qword_1C9085158);
  v38 = v34;
  v39 = sub_1C9063D1C();
  LOBYTE(v34) = sub_1C906446C();

  v40 = os_log_type_enabled(v39, v34);
  v41 = v26[37];
  v42 = v26[34];
  v123 = v26[33];
  v43 = v26[32];
  if (v40)
  {
    v44 = v26[19];
    swift_slowAlloc();
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_208_2();
    *v27 = 136315650;
    v45 = [v44 debugDescription];
    sub_1C9063EEC();
    v121 = v41;

    v46 = OUTLINED_FUNCTION_206_0();
    v49 = sub_1C8CACE04(v46, v47, v48);

    *(v27 + 4) = v49;
    OUTLINED_FUNCTION_71_5();
    v50 = ToolInvocation.debugDescription.getter();
    v52 = v51;
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v43, v53);
    sub_1C8CACE04(v50, v52, &a14);
    OUTLINED_FUNCTION_123_3();

    *(v27 + 14) = v43;
    *(v27 + 22) = 1024;
    v54 = v26[5] != 0;
    sub_1C8D16D78((v26 + 2), &unk_1EC316490, &qword_1C9085158);
    *(v27 + 24) = v54;
    OUTLINED_FUNCTION_157_1();
    _os_log_impl(v55, v56, v57, v58, v59, 0x1Cu);
    OUTLINED_FUNCTION_122_4();
    v60 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v60);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v61 = *(v42 + 8);
    v61(v121, v123);
  }

  else
  {
    sub_1C8D16D78((v26 + 2), &unk_1EC316490, &qword_1C9085158);

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v43, v62);
    v61 = *(v42 + 8);
    v61(v41, v123);
  }

  v26[39] = v61;
  v63 = v26[19];
  sub_1C8E09618();
  v64 = v26[28];
  v65 = v26[20];
  v66 = v26[21];
  v67 = swift_allocBox();
  v69 = v68;
  v26[40] = v67;
  OUTLINED_FUNCTION_1_47();
  sub_1C8E1B5B4(v65, v70, v71);
  if (*(v66 + 24))
  {
    v72 = v26[27];
    sub_1C8E9E284(*(v69 + *(v26[28] + 24)), v72);
    v73 = type metadata accessor for ConcreteResolvable();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v73);
    sub_1C8D16D78(v72, &qword_1EC314E30, &unk_1C907A7A0);
    if (EnumTagSinglePayload == 1)
    {
      v75 = v26[26];
      type metadata accessor for TypedValue.PrimitiveValue(0);
      v76 = swift_allocBox();
      *v77 = 1;
      swift_storeEnumTagMultiPayload();
      *v75 = v76;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v73);
      v81 = OUTLINED_FUNCTION_203();
      sub_1C8E07004(v81);
    }
  }

  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v82 = v26[31];
  v83 = v26[28];
  v84 = qword_1EDA632E8;
  OUTLINED_FUNCTION_1_47();
  v85 = OUTLINED_FUNCTION_211();
  sub_1C8E1B5B4(v85, v86, v87);
  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v88, v89);
  v26[41] = sub_1C9061C5C();
  v26[42] = v90;
  OUTLINED_FUNCTION_222_2();
  v91 = v26[31];
  v92 = v26[25];
  v93 = v26[21];
  v122 = v26[28];
  v124 = v26[20];
  v94 = v26[19];
  OUTLINED_FUNCTION_0_52();
  sub_1C8E1B4B8(v95, v96);
  sub_1C8D4F62C(v93, (v26 + 7), &unk_1EC316490, &qword_1C9085158);
  v97 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler;
  swift_beginAccess();
  sub_1C8D4F5E4((v26 + 7), v94 + v97, &unk_1EC316490, &qword_1C9085158);
  swift_endAccess();
  OUTLINED_FUNCTION_1_47();
  v98 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v98, v99, v100);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v122);
  v104 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  swift_beginAccess();
  sub_1C8D4F5E4(v92, v94 + v104, &qword_1EC316440, &dword_1C908BFE0);
  swift_endAccess();
  v105 = swift_task_alloc();
  v26[43] = v105;
  v105[2] = v94;
  v105[3] = v84;
  v105[4] = v82;
  v105[5] = v124;
  v105[6] = v67;
  v106 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v26[44] = v107;
  *v107 = v108;
  v107[1] = sub_1C8E0A180;
  v109 = v26[24];
  v110 = v26[22];
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_70_2();

  return MEMORY[0x1EEE6DE38](v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, v122, v124, a14, a15, a16, a17, a18);
}

uint64_t sub_1C8E0A180()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C8E0A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_91_3();
  v19 = v18[38];
  v20 = v18[36];
  v21 = v18[30];
  v23 = v18[23];
  v22 = v18[24];
  v25 = v18[19];
  v24 = v18[20];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  OUTLINED_FUNCTION_243_1(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_181_0();
  sub_1C8E1B5B4(v29, v30, v31);
  v32 = v25;
  v33 = sub_1C9063D1C();
  v34 = sub_1C906446C();

  v35 = OUTLINED_FUNCTION_187_4();
  v36 = v18[39];
  v37 = v18[36];
  v38 = v18[33];
  v39 = v18[30];
  v40 = v18[23];
  if (v35)
  {
    v83 = v18[39];
    v41 = v18[19];
    v77 = v18[41];
    v79 = v18[42];
    v81 = v18[34];
    v42 = swift_slowAlloc();
    a15 = OUTLINED_FUNCTION_183_4();
    *v42 = 136315650;
    v43 = [v41 debugDescription];
    sub_1C9063EEC();
    a9 = v38;

    v44 = OUTLINED_FUNCTION_127();
    v47 = sub_1C8CACE04(v44, v45, v46);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    ToolInvocation.debugDescription.getter();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v39, v48);
    v49 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v49, v50, v51);
    OUTLINED_FUNCTION_137_2();
    *(v42 + 14) = v39;
    *(v42 + 22) = 2080;
    ToolExecutionResult.debugDescription.getter();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_30_15();
    sub_1C8E1B4B8(v40, v52);
    v53 = OUTLINED_FUNCTION_276();
    sub_1C8CACE04(v53, v54, v55);
    OUTLINED_FUNCTION_105_2();

    *(v42 + 24) = v40;
    _os_log_impl(&dword_1C8C9B000, v33, v34, "Session %s did execute tool invocation %s with result: %s", v42, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    sub_1C8CE7B78(v77, v79);

    v83(v37, v38);
  }

  else
  {
    sub_1C8CE7B78(v18[41], v18[42]);

    OUTLINED_FUNCTION_30_15();
    sub_1C8E1B4B8(v40, v56);
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v39, v57);
    v58 = OUTLINED_FUNCTION_127();
    v36(v58);
  }

  v59 = v18[40];
  v61 = v18[36];
  v60 = v18[37];
  v62 = v18[35];
  v64 = v18[31];
  v63 = v18[32];
  v65 = v18[30];
  v76 = v18[29];
  v78 = v18[27];
  v80 = v18[26];
  v82 = v18[25];
  v84 = v18[23];
  v66 = v18[19];
  sub_1C8E1BAB4(v18[24], v18[18], type metadata accessor for ToolExecutionResult);

  sub_1C8E07764(0);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_70_2();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, v76, v78, v80, v82, v84, a15, a16, a17, a18);
}

uint64_t sub_1C8E0A5AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v29 = v26[45];
  v30 = v26[43];
  v31 = v26[38];
  v32 = v26[35];
  v33 = v26[29];
  v35 = v26[19];
  v34 = v26[20];

  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v36 = OUTLINED_FUNCTION_125();
  sub_1C8E1B5B4(v36, v37, v38);
  v39 = v35;
  v40 = v29;
  v41 = sub_1C9063D1C();
  v42 = sub_1C906444C();

  if (os_log_type_enabled(v41, v42))
  {
    v96 = v26[35];
    v98 = v26[39];
    v90 = v26[45];
    v92 = v26[34];
    v94 = v26[33];
    v43 = v26[29];
    v44 = v26[19];
    OUTLINED_FUNCTION_55_5();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_130_3();
    OUTLINED_FUNCTION_208_2();
    *v45 = 136315650;
    v47 = [v44 debugDescription];
    v48 = sub_1C9063EEC();
    v50 = v49;

    v51 = sub_1C8CACE04(v48, v50, &a14);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2080;
    ToolInvocation.debugDescription.getter();
    OUTLINED_FUNCTION_153_4();
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v43, v52);
    v53 = OUTLINED_FUNCTION_181_0();
    sub_1C8CACE04(v53, v54, v55);
    OUTLINED_FUNCTION_105_2();

    *(v45 + 14) = v43;
    *(v45 + 22) = 2112;
    v56 = v90;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v57;
    *v46 = v57;
    _os_log_impl(&dword_1C8C9B000, v41, v42, "Session %s failed to execute tool invocation %s due to %@", v45, 0x20u);
    sub_1C8D16D78(v46, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_122_4();
    v58 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v58);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v98(v96, v94);
  }

  else
  {
    v59 = v26[39];
    v61 = v26[34];
    v60 = v26[35];
    v62 = v26[33];
    v63 = v26[29];

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v63, v64);
    v65 = OUTLINED_FUNCTION_209();
    v59(v65);
  }

  v66 = v26[45];
  v67 = v26[41];
  v68 = v26[42];
  v69 = v26[40];
  swift_willThrow();
  v70 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v70, v71);

  v73 = v26[36];
  v72 = v26[37];
  v74 = v26[35];
  v76 = v26[31];
  v75 = v26[32];
  v78 = v26[29];
  v77 = v26[30];
  v79 = v26[27];
  v91 = v26[26];
  v93 = v26[25];
  v95 = v26[24];
  v97 = v26[23];
  v99 = v26[45];
  v80 = v26[19];
  sub_1C8E07764(0);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70_2();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, v91, v93, v95, v97, v99, a14, a15, a16, a17, a18);
}

void sub_1C8E0A8E8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v22 = a5;
  v23 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ToolInvocation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&a2[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client];
  v16 = sub_1C9061EFC();
  sub_1C8E1B5B4(v22, v15, type metadata accessor for ToolInvocation);
  (*(v8 + 16))(v11, v23, v7);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1C8E1BAB4(v15, v19 + v17, type metadata accessor for ToolInvocation);
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_1C8E1B60C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C8E0B6D0;
  aBlock[3] = &block_descriptor_176;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  [v24 stepWithEncodedToolInvocation:v16 completionHandler:v20];
  _Block_release(v20);
}

void sub_1C8E0ABC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a5;
  v89 = a8;
  v85 = a4;
  v86 = a7;
  v87 = a3;
  v84 = type metadata accessor for TypedValue.ID(0);
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v76 - v20;
  v21 = type metadata accessor for ToolInvocation();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v76 - v26;
  v28 = type metadata accessor for ToolExecutionResult(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v76 - v37;
  v39 = swift_projectBox();
  v91 = 0;
  memset(v90, 0, sizeof(v90));
  v40 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentDialogHandler;
  swift_beginAccess();
  sub_1C8D4F5E4(v90, a6 + v40, &unk_1EC316490, &qword_1C9085158);
  swift_endAccess();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v21);
  v41 = OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_currentInvocation;
  swift_beginAccess();
  v42 = a6 + v41;
  v43 = v88;
  sub_1C8D4F5E4(v38, v42, &qword_1EC316440, &dword_1C908BFE0);
  swift_endAccess();
  if (v43)
  {
    type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
    v44 = v43;
    *&v90[0] = sub_1C8E0B408(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
    sub_1C906425C();
  }

  else
  {
    v45 = v81;
    v78 = v24;
    v46 = v84;
    v77 = v31;
    v48 = v82;
    v47 = v83;
    v88 = v28;
    v49 = v85;
    v50 = (v86 + *(v21 + 20));
    v51 = v50[27];
    v86 = v50[28];
    if (v87)
    {
      *&v90[0] = v50[7];

      v52 = swift_unknownObjectRetain_n();
      TypedValue.ID.init(propertyListObject:typeInstance:)(v52, v90, v47);
      swift_beginAccess();
      sub_1C8E1B5B4(v39, v78, type metadata accessor for ToolInvocation);
      v59 = v80;
      sub_1C8E1B5B4(v47, v80, type metadata accessor for TypedValue.ID);
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v46);
      v60 = v49;
      if (v49)
      {
        v61 = [v49 undoContext];
        v62 = v88;
        v63 = v79;
        if (v61)
        {

          sub_1C8E40058();
          v64 = 0;
        }

        else
        {
          v64 = 1;
        }

        v71 = v80;
        v72 = v77;
        v73 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v63, v64, 1, v73);
        v70 = [v60 didRunOpensIntent];
      }

      else
      {
        v69 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        v63 = v79;
        __swift_storeEnumTagSinglePayload(v79, 1, 1, v69);
        v70 = 0;
        v62 = v88;
        v71 = v80;
        v72 = v77;
      }

      v74 = v78;
      v75 = [v60 attribution];
      sub_1C8E1BAB4(v74, v72, type metadata accessor for ToolInvocation);
      sub_1C8D4F550(v71, v72 + v62[5], &unk_1EC3164C0, &qword_1C9072100);
      sub_1C8D4F550(v63, v72 + v62[6], &qword_1EC3164B8, &unk_1C9085198);
      *(v72 + v62[7]) = v70;
      *(v72 + v62[8]) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
      sub_1C906426C();
      swift_unknownObjectRelease();
      sub_1C8E1B4B8(v47, type metadata accessor for TypedValue.ID);
    }

    else
    {
      swift_beginAccess();
      v53 = v39;
      v54 = v27;
      sub_1C8E1B5B4(v53, v27, type metadata accessor for ToolInvocation);
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
      if (v49)
      {
        v55 = [v49 undoContext];
        v56 = v88;
        v57 = v34;
        if (v55)
        {

          sub_1C8E40058();
          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        v67 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v48, v58, 1, v67);
        v66 = [v49 didRunOpensIntent];
      }

      else
      {
        v65 = type metadata accessor for ToolExecutionResult.UndoContext(0);
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v65);
        v66 = 0;
        v56 = v88;
        v57 = v34;
      }

      v68 = [v49 attribution];
      sub_1C8E1BAB4(v54, v57, type metadata accessor for ToolInvocation);
      sub_1C8D4F550(v45, v57 + v56[5], &unk_1EC3164C0, &qword_1C9072100);
      sub_1C8D4F550(v48, v57 + v56[6], &qword_1EC3164B8, &unk_1C9085198);
      *(v57 + v56[7]) = v66;
      *(v57 + v56[8]) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
      sub_1C906426C();
    }
  }
}

void *sub_1C8E0B408(void *a1)
{
  v2 = sub_1C9061D6C();
  v3 = [v2 domain];
  v4 = sub_1C9063EEC();
  v6 = v5;

  v7 = *MEMORY[0x1E69E11F8];
  if (v4 == sub_1C9063EEC() && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1C9064C2C();

    if ((v10 & 1) == 0)
    {
LABEL_10:
      if ([v2 wf_isCancelledStepError])
      {
        type metadata accessor for ToolExecutorError(0);
        sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError);
        a1 = swift_allocError();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        goto LABEL_13;
      }

      v12 = [v2 domain];
      v13 = sub_1C9063EEC();
      v15 = v14;

      v16 = *MEMORY[0x1E69ACC88];
      if (v13 == sub_1C9063EEC() && v15 == v17)
      {
      }

      else
      {
        v19 = sub_1C9064C2C();

        if ((v19 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v20 = [v2 code] - 4001;
      if (v20 <= 0x18 && ((0x1F7FFFFu >> v20) & 1) != 0)
      {
        v21 = byte_1C908528A[v20];
        type metadata accessor for ToolExecutorError(0);
        sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError);
        a1 = swift_allocError();
        *v22 = v21;
        goto LABEL_12;
      }

LABEL_24:

      v23 = a1;
      return a1;
    }
  }

  if ([v2 code] != 4)
  {
    goto LABEL_10;
  }

  sub_1C8E1AF00();
  a1 = swift_allocError();
  *v11 = 0;
LABEL_13:

  return a1;
}

uint64_t sub_1C8E0B6D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    v10 = sub_1C9063EEC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_unknownObjectRetain();
  v13 = a4;
  v14 = a5;
  v9(v10, v12, a3, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_1C8E0B7A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v6 + 176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v13 = sub_1C906345C();
  *(v6 + 208) = v13;
  v14 = *(v13 - 8);
  *(v6 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0B944, 0, 0);
}

uint64_t sub_1C8E0BBD8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E0BCD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v6 + 176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v13 = sub_1C906345C();
  *(v6 + 208) = v13;
  v14 = *(v13 - 8);
  *(v6 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0BE6C, 0, 0);
}

uint64_t sub_1C8E0C100(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v20;
  *(v8 + 160) = v21;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 280) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_1C9063C8C();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_1C9063CBC();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v15 = sub_1C906345C();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0C2A8, 0, 0);
}

uint64_t sub_1C8E0C54C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C8E0C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 272);
  v17 = *(v14 + 248);
  sub_1C8E1A054();
  if (v16)
  {
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_15();
    v19(v18);

    v20 = OUTLINED_FUNCTION_32_3();
    sub_1C8CE7B78(v20, v21);
    v22 = OUTLINED_FUNCTION_107();
    sub_1C8CE7B78(v22, v23);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_101();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C8E0C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 248);
  sub_1C8E1A054();
  v17 = OUTLINED_FUNCTION_17_15();
  v18(v17);

  v19 = OUTLINED_FUNCTION_32_3();
  sub_1C8CE7B78(v19, v20);
  v21 = OUTLINED_FUNCTION_107();
  sub_1C8CE7B78(v21, v22);

  OUTLINED_FUNCTION_6_0();
  v23 = *(v14 + 272);
  OUTLINED_FUNCTION_101();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C8E0C7E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 256) = a4;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 104) = a1;
  v8 = sub_1C9063C8C();
  *(v7 + 144) = v8;
  v9 = *(v8 - 8);
  *(v7 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v11 = sub_1C9063CBC();
  *(v7 + 176) = v11;
  v12 = *(v11 - 8);
  *(v7 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v14 = sub_1C906345C();
  *(v7 + 208) = v14;
  v15 = *(v14 - 8);
  *(v7 + 216) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0C984, 0, 0);
}

uint64_t sub_1C8E0CC28()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C8E0CD20()
{
  v1 = v0[31];
  v2 = v0[28];
  sub_1C8E1A054();
  if (!v1)
  {
    OUTLINED_FUNCTION_33_10();
    v4 = v0[16];
    v3 = v0[17];
    v6 = OUTLINED_FUNCTION_110_3(v5);
    v7(v6);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_170();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_170();
}

void sub_1C8E0CE00()
{
  v1 = v0[28];
  sub_1C8E1A054();
  OUTLINED_FUNCTION_33_10();
  v3 = v0[16];
  v2 = v0[17];
  v5 = OUTLINED_FUNCTION_110_3(v4);
  v6(v5);

  OUTLINED_FUNCTION_6_0();
  v7 = v0[31];
  OUTLINED_FUNCTION_170();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C8E0CEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  *(v5 + 256) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = sub_1C9063C8C();
  *(v5 + 144) = v6;
  v7 = *(v6 - 8);
  *(v5 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v9 = sub_1C9063CBC();
  *(v5 + 176) = v9;
  v10 = *(v9 - 8);
  *(v5 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v12 = sub_1C906345C();
  *(v5 + 208) = v12;
  v13 = *(v12 - 8);
  *(v5 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0D07C, 0, 0);
}

uint64_t sub_1C8E0D320()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C8E0D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = v10[31];
  v12 = v10[28];
  sub_1C8E1A054();
  if (v11)
  {
    OUTLINED_FUNCTION_151_4();
  }

  else
  {
    OUTLINED_FUNCTION_33_10();
    v14 = OUTLINED_FUNCTION_110_3(v13);
    v15(v14);

    v16 = v10[12];

    v17 = v10[1];
    OUTLINED_FUNCTION_151_4();

    v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_1C8E0D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = *(v10 + 224);
  sub_1C8E1A054();
  OUTLINED_FUNCTION_33_10();
  v13 = OUTLINED_FUNCTION_110_3(v12);
  v14(v13);

  OUTLINED_FUNCTION_6_0();
  v15 = *(v10 + 248);
  OUTLINED_FUNCTION_151_4();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C8E0D5AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v6 + 176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v13 = sub_1C906345C();
  *(v6 + 208) = v13;
  v14 = *(v13 - 8);
  *(v6 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0D748, 0, 0);
}

uint64_t sub_1C8E0D9DC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C8E0DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = *(v10 + 248);
  v12 = *(v10 + 224);
  sub_1C8E1A054();
  if (v11)
  {
    OUTLINED_FUNCTION_151_4();
  }

  else
  {
    OUTLINED_FUNCTION_33_10();
    v14 = OUTLINED_FUNCTION_110_3(v13);
    v15(v14);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_151_4();

    v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_1C8E0DB94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v20;
  *(v8 + 160) = v21;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 280) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_1C9063C8C();
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_1C9063CBC();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v15 = sub_1C906345C();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0DD3C, 0, 0);
}

uint64_t sub_1C8E0DFE0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C8E0E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 272);
  v17 = *(v14 + 248);
  sub_1C8E1A054();
  if (v16)
  {
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_15();
    v19(v18);

    v20 = OUTLINED_FUNCTION_32_3();
    sub_1C8E1B1D8(v20, v21);

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_101();

    v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C8E0E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v16 = *(v14 + 248);
  sub_1C8E1A054();
  v17 = OUTLINED_FUNCTION_17_15();
  v18(v17);

  v19 = OUTLINED_FUNCTION_32_3();
  sub_1C8E1B1D8(v19, v20);

  OUTLINED_FUNCTION_6_0();
  v21 = *(v14 + 272);
  OUTLINED_FUNCTION_101();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C8E0E27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a4;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  v7 = sub_1C9063C8C();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  v10 = sub_1C9063CBC();
  *(v6 + 176) = v10;
  v11 = *(v10 - 8);
  *(v6 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v13 = sub_1C906345C();
  *(v6 + 208) = v13;
  v14 = *(v13 - 8);
  *(v6 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0E418, 0, 0);
}

uint64_t sub_1C8E0E6AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E0E6C4()
{
  OUTLINED_FUNCTION_7();
  if (qword_1EC311438 != -1)
  {
    OUTLINED_FUNCTION_117_1();
  }

  v1 = type metadata accessor for TypedValueResolutionOptions(0);
  v2 = __swift_project_value_buffer(v1, qword_1EC390C30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_1C8E1BB40;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_1C8E0E790(v7, v5, v2);
}

uint64_t sub_1C8E0E790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E0E7A8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v4;
  *v4 = v5;
  v4[1] = sub_1C8E0E878;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0BCD0(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C8E0E878()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8E0E994()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1C8E0E9F0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_39();
  v9 = type metadata accessor for TypedValueResolutionOptions(0);
  v1[6] = v9;
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_39();
  v13 = *v3;
  v1[7] = v12;
  v1[8] = v13;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C8E0EAA8()
{
  OUTLINED_FUNCTION_133();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_1C9061EBC();
  OUTLINED_FUNCTION_100_4(v3);
  *v2 = 0xF000000000000007;
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_100_4(v2 + v5);
  v6 = *(v4 + 28);
  type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_100_4(v2 + v6);
  v7 = *v2;
  sub_1C8CD1784(v1);
  sub_1C8D076D8(v7);
  *v2 = v1;
  *(v2 + 8) = 1;
  sub_1C8D4F5E4(v3, v2 + v5, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v2 + v6, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_100_4(v2 + v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[9] = v8;
  *v8 = v9;
  v8[1] = sub_1C8E0EBF8;
  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return sub_1C8E0E790(v13, v11, v10);
}

uint64_t sub_1C8E0EBF8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E0ECF0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v3);

  OUTLINED_FUNCTION_7_10();

  return v4();
}

uint64_t sub_1C8E0ED64()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[5];
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v3);

  OUTLINED_FUNCTION_6_0();
  v5 = v0[10];

  return v4();
}

uint64_t sub_1C8E0EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1C9061EBC();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for TypedValueResolutionRequest(0);
  v4[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for TypedValueResolutionOptions(0);
  v4[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v14 = type metadata accessor for TypedValue.ID(0);
  v4[26] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v16 = sub_1C9063D3C();
  v4[30] = v16;
  v17 = *(v16 - 8);
  v4[31] = v17;
  v18 = *(v17 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E0F074, 0, 0);
}

uint64_t sub_1C8E0F074()
{
  OUTLINED_FUNCTION_148_2();
  v129 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  *(v0 + 280) = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_243_1(v7, v8, v9);
  OUTLINED_FUNCTION_16_17();
  v10 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v10, v11, v12);
  v13 = v6;
  v14 = sub_1C9063D1C();
  sub_1C906446C();

  if (OUTLINED_FUNCTION_195_2())
  {
    v122 = *(v0 + 248);
    v123 = *(v0 + 240);
    v125 = *(v0 + 272);
    v15 = *(v0 + 232);
    v16 = *(v0 + 200);
    v17 = *(v0 + 64);
    OUTLINED_FUNCTION_55_5();
    v18 = swift_slowAlloc();
    v127.n128_u64[0] = OUTLINED_FUNCTION_183_4();
    *v18 = 136315650;
    v19 = [v17 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_153_4();

    v20 = OUTLINED_FUNCTION_181_0();
    v23 = sub_1C8CACE04(v20, v21, v22);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    TypedValue.ID.debugDescription.getter();
    OUTLINED_FUNCTION_153_4();
    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(v15, v24);
    v25 = OUTLINED_FUNCTION_181_0();
    sub_1C8CACE04(v25, v26, v27);
    OUTLINED_FUNCTION_105_2();

    *(v18 + 14) = v15;
    *(v18 + 22) = 2080;
    *(v0 + 48) = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
    v28 = sub_1C906462C();
    OUTLINED_FUNCTION_3_31();
    sub_1C8E1B4B8(v16, v29);
    v30 = OUTLINED_FUNCTION_209();
    sub_1C8CACE04(v30, v31, v32);
    OUTLINED_FUNCTION_244_2();
    *(v18 + 24) = v28;
    OUTLINED_FUNCTION_79_5();
    _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    swift_arrayDestroy();
    v38 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v38);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v39 = *(v122 + 8);
    v39(v125, v123);
  }

  else
  {
    v40 = *(v0 + 272);
    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    v43 = *(v0 + 232);
    v44 = *(v0 + 200);

    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(v43, v45);
    v39 = *(v42 + 8);
    v46 = OUTLINED_FUNCTION_209();
    (v39)(v46);
    OUTLINED_FUNCTION_3_31();
    sub_1C8E1B4B8(v44, v47);
  }

  *(v0 + 288) = v39;
  v48 = *(v0 + 64);
  sub_1C8E09618();
  v49 = [*(*(v0 + 64) + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client) runRequest];
  v50 = [v49 runSource];

  if (!v50)
  {
    goto LABEL_10;
  }

  v51 = *MEMORY[0x1E69E1410];
  v52 = sub_1C9063EEC();
  v54 = v53;
  v56 = v52 == sub_1C9063EEC() && v54 == v55;
  if (v56)
  {
  }

  else
  {
    OUTLINED_FUNCTION_148();
    v57 = sub_1C9064C2C();

    if ((v57 & 1) == 0)
    {
LABEL_10:
      v58 = 1;
      goto LABEL_13;
    }
  }

  v59 = *(v0 + 176);
  sub_1C9061DCC();
  v58 = 0;
LABEL_13:
  v60 = *(v0 + 184);
  v61 = *(v0 + 160);
  v63 = *(v0 + 80);
  v62 = *(v0 + 88);
  __swift_storeEnumTagSinglePayload(*(v0 + 176), v58, 1, v62);
  sub_1C8D4F62C(v63 + *(v60 + 24), v61, &qword_1EC312700, &qword_1C9066AC0);
  v64 = OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_108_2(v64, v65, v62);
  if (v56)
  {
    v66 = *(v0 + 160);
    v67 = *(v0 + 88);
    sub_1C8D4F62C(*(v0 + 176), *(v0 + 168), &qword_1EC312700, &qword_1C9066AC0);
    v68 = OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_108_2(v68, v69, v67);
    if (!v56)
    {
      sub_1C8D16D78(*(v0 + 160), &qword_1EC312700, &qword_1C9066AC0);
    }
  }

  else
  {
    v70 = *(v0 + 88);
    (*(*(v0 + 96) + 32))(*(v0 + 168), *(v0 + 160), v70);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  }

  v74 = *(v0 + 80);
  v126 = *v74;
  v75 = *v74;
  if ((~*v74 & 0xF000000000000007) == 0)
  {
    v75 = *(*(v0 + 72) + *(*(v0 + 208) + 24));
  }

  v76 = *(v0 + 184);
  v77 = *(v0 + 144);
  v79 = *(v0 + 120);
  v78 = *(v0 + 128);
  v80 = *(v0 + 112);
  v124 = *(v0 + 88);
  v81 = *(v74 + 8);
  sub_1C8D4F62C(*(v0 + 168), *(v0 + 152), &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D4F62C(v74 + *(v76 + 28), v80, &qword_1EC316440, &dword_1C908BFE0);
  *v78 = v75;
  *(v78 + 8) = v81;
  sub_1C8D4F62C(v80, v78 + *(v79 + 24), &qword_1EC316440, &dword_1C908BFE0);
  v82 = OUTLINED_FUNCTION_145();
  sub_1C8D4F62C(v82, v83, &qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_108_2(v77, 1, v124);
  if (v56)
  {
    sub_1C8CD1784(v126);
  }

  else
  {
    v84 = *(v0 + 96);
    (*(v84 + 32))(*(v0 + 104), *(v0 + 144), *(v0 + 88));
    v85 = objc_allocWithZone(MEMORY[0x1E696AE98]);
    sub_1C8CD1784(v126);
    v86 = sub_1C9061DDC();
    v87 = [v85 initWithURL:v86 readonly:0];

    v88 = *(v84 + 8);
    v89 = OUTLINED_FUNCTION_145();
    v90(v89);
    if (v87)
    {
      v91 = *(v0 + 152);
      v92 = *(v0 + 112);
      v128[0] = v87;
      sub_1C8E42C40(v128, &v127);

      sub_1C8D16D78(v92, &qword_1EC316440, &dword_1C908BFE0);
      sub_1C8D16D78(v91, &qword_1EC312700, &qword_1C9066AC0);
      v93 = v127;
      goto LABEL_25;
    }
  }

  v94 = *(v0 + 152);
  sub_1C8D16D78(*(v0 + 112), &qword_1EC316440, &dword_1C908BFE0);
  sub_1C8D16D78(v94, &qword_1EC312700, &qword_1C9066AC0);
  v93 = xmmword_1C9065DB0;
LABEL_25:
  OUTLINED_FUNCTION_106_3(*(v0 + 128), *(v0 + 136), *(v0 + 120), v93);
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v95 = *(v0 + 208);
  v96 = *(v0 + 72);
  v97 = qword_1EDA632E8;
  sub_1C8CBE304(&qword_1EDA60E00, type metadata accessor for TypedValue.ID);
  OUTLINED_FUNCTION_148();
  *(v0 + 296) = sub_1C9061C5C();
  *(v0 + 304) = v98;
  v99 = *(v0 + 136);
  v100 = *(v0 + 120);
  OUTLINED_FUNCTION_102_3();
  sub_1C8CBE304(v101, v102);
  *(v0 + 312) = sub_1C9061C5C();
  *(v0 + 320) = v103;
  OUTLINED_FUNCTION_64();
  v104 = *(v0 + 64);
  v105 = OUTLINED_FUNCTION_125();
  sub_1C8CE9144(v105, v106);
  v107 = OUTLINED_FUNCTION_208_0();
  sub_1C8CE9144(v107, v108);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 328) = v109;
  *v109 = v110;
  v109[1] = sub_1C8E0FB18;
  v111 = *(v0 + 64);
  v130 = v97;
  v131 = v100;
  OUTLINED_FUNCTION_115_1();

  return sub_1C8E0C100(v112, v113, v114, v115, v116, v117, v118, v119);
}

uint64_t sub_1C8E0FB18()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E0FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_224_1();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  v40 = *(v36 + 16);
  v39 = *(v36 + 24);
  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16();
  }

  v41 = *(v36 + 336);
  sub_1C8D39E40();
  sub_1C9061C2C();
  if (v41)
  {
    v42 = v41;
    v43 = *(v36 + 312);
    v44 = *(v36 + 320);
    v46 = *(v36 + 168);
    v45 = *(v36 + 176);
    v47 = *(v36 + 136);
    sub_1C8CE7B78(*(v36 + 296), *(v36 + 304));
    v48 = OUTLINED_FUNCTION_94();
    sub_1C8CE7B78(v48, v49);
    v50 = OUTLINED_FUNCTION_125();
    sub_1C8CE7B78(v50, v51);
    OUTLINED_FUNCTION_4_25();
    sub_1C8E1B4B8(v47, v52);
    OUTLINED_FUNCTION_191_5(v46);
    OUTLINED_FUNCTION_191_5(v45);
    v53 = *(v36 + 280);
    v54 = *(v36 + 256);
    v55 = *(v36 + 216);
    v57 = *(v36 + 64);
    v56 = *(v36 + 72);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    v58 = OUTLINED_FUNCTION_134();
    sub_1C8E1B5B4(v58, v59, v60);
    v61 = v57;
    v62 = v42;
    v63 = sub_1C9063D1C();
    v64 = sub_1C906444C();

    os_log_type_enabled(v63, v64);
    OUTLINED_FUNCTION_200_3();
    if (v65)
    {
      v161 = v57;
      v66 = *(v36 + 64);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      v150 = OUTLINED_FUNCTION_81_2();
      a24 = OUTLINED_FUNCTION_130_3();
      *v46 = 136315650;
      v67 = [v66 debugDescription];
      sub_1C9063EEC();

      v68 = OUTLINED_FUNCTION_300();
      sub_1C8CACE04(v68, v69, v70);
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_60_7();
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v54, v71);
      v72 = OUTLINED_FUNCTION_211();
      sub_1C8CACE04(v72, v73, v74);
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_63_8();
      v75 = v42;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 24) = v76;
      *v150 = v76;
      OUTLINED_FUNCTION_98_3(&dword_1C8C9B000, v77, v64, "Session %s failed to resolve reference %s due to %@");
      sub_1C8D16D78(v150, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_185_3();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      (v61)(v161, v40);
    }

    else
    {

      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v54, v119);
      v120 = OUTLINED_FUNCTION_211();
      (v61)(v120);
    }

    OUTLINED_FUNCTION_59_9();
    a13 = v121;
    a14 = v122;
    a15 = v123;
    v149 = *(v36 + 160);
    v152 = *(v36 + 152);
    v154 = *(v36 + 144);
    v156 = *(v36 + 136);
    v158 = *(v36 + 128);
    v160 = *(v36 + 112);
    v163 = *(v36 + 104);
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v78 = *(v36 + 280);
    v79 = *(v36 + 264);
    v80 = *(v36 + 224);
    v81 = *(v36 + 192);
    v83 = *(v36 + 72);
    v82 = *(v36 + 80);
    v84 = *(v36 + 64);
    v85 = *(v36 + 32);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    sub_1C8E1B5B4(v83, v80, v86);
    OUTLINED_FUNCTION_16_17();
    sub_1C8E1B5B4(v82, v81, v87);

    v88 = v84;
    v89 = sub_1C9063D1C();
    LOBYTE(v79) = sub_1C906446C();

    v148 = v79;
    v90 = os_log_type_enabled(v89, v79);
    v151 = *(v36 + 312);
    v153 = *(v36 + 320);
    v91 = *(v36 + 288);
    v155 = *(v36 + 248);
    v157 = *(v36 + 240);
    v159 = *(v36 + 264);
    v92 = *(v36 + 224);
    v93 = *(v36 + 192);
    v95 = *(v36 + 168);
    v94 = *(v36 + 176);
    v162 = *(v36 + 136);
    if (v90)
    {
      a15 = *(v36 + 168);
      v96 = *(v36 + 64);
      a11 = *(v36 + 296);
      a12 = *(v36 + 304);
      a14 = *(v36 + 288);
      v97 = swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_186_4();
      a23 = a10;
      *v97 = 136315906;
      v98 = [v96 debugDescription];
      a13 = v94;
      v99 = sub_1C9063EEC();
      a9 = v85;
      v101 = v100;

      v102 = sub_1C8CACE04(v99, v101, &a23);

      *(v97 + 4) = v102;
      *(v97 + 12) = 2080;
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v92, v103);
      v104 = OUTLINED_FUNCTION_245();
      sub_1C8CACE04(v104, v105, v106);
      OUTLINED_FUNCTION_123_3();

      *(v97 + 14) = v92;
      *(v97 + 22) = 2080;
      *(v36 + 40) = *v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
      v107 = sub_1C906462C();
      v109 = v108;
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v93, v110);
      v111 = sub_1C8CACE04(v107, v109, &a23);

      *(v97 + 24) = v111;
      *(v97 + 32) = 2080;
      a24 = a9;
      v113 = TypedValue.debugDescription.getter(v112);
      sub_1C8CACE04(v113, v114, &a23);
      OUTLINED_FUNCTION_241_2();
      *(v97 + 34) = v93;
      _os_log_impl(&dword_1C8C9B000, v89, v148, "Session %s successfully resolved reference %s (coercing to: %s) into: %s", v97, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a11, a12);
      sub_1C8CE7B78(v151, v153);
      v115 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v115, v116);

      a14(v159, v157);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v162, v117);
      OUTLINED_FUNCTION_191_5(a15);
      OUTLINED_FUNCTION_191_5(a13);
      v118 = a9;
    }

    else
    {
      sub_1C8CE7B78(*(v36 + 296), *(v36 + 304));
      sub_1C8CE7B78(v151, v153);
      v124 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v124, v125);

      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v92, v126);
      v91(v159, v157);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v162, v127);
      sub_1C8D16D78(v95, &qword_1EC312700, &qword_1C9066AC0);
      sub_1C8D16D78(v94, &qword_1EC312700, &qword_1C9066AC0);
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v93, v128);
      v118 = v85;
    }

    v130 = *(v36 + 264);
    v129 = *(v36 + 272);
    v131 = *(v36 + 256);
    v133 = *(v36 + 224);
    v132 = *(v36 + 232);
    v134 = *(v36 + 216);
    v135 = *(v36 + 192);
    v136 = *(v36 + 200);
    v138 = *(v36 + 168);
    v137 = *(v36 + 176);
    v149 = *(v36 + 160);
    v152 = *(v36 + 152);
    v154 = *(v36 + 144);
    v156 = *(v36 + 136);
    v158 = *(v36 + 128);
    v160 = *(v36 + 112);
    v163 = *(v36 + 104);
    **(v36 + 56) = v118;

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_144_2();

  return v140(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14, a15, v149, v152, v154, v156, v158, v160, v163, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1C8E103C8()
{
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[17];
  sub_1C8CE7B78(v0[37], v0[38]);
  v7 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v7, v8);
  OUTLINED_FUNCTION_4_25();
  sub_1C8E1B4B8(v6, v9);
  OUTLINED_FUNCTION_191_5(v5);
  OUTLINED_FUNCTION_191_5(v4);
  v10 = v0[42];
  OUTLINED_FUNCTION_78_6();
  v11 = v0[8];
  v12 = v0[9];
  sub_1C906371C();
  OUTLINED_FUNCTION_7_23();
  v13 = OUTLINED_FUNCTION_212();
  sub_1C8E1B5B4(v13, v14, v15);
  v16 = v11;
  v17 = v10;
  v18 = sub_1C9063D1C();
  v19 = sub_1C906444C();

  os_log_type_enabled(v18, v19);
  v20 = v0[36];
  v22 = v0[31];
  v21 = v0[32];
  OUTLINED_FUNCTION_213_2();
  if (v23)
  {
    v47 = v21;
    v24 = v0[8];
    OUTLINED_FUNCTION_55_5();
    swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_130_3();
    *v1 = 136315650;
    v25 = [v24 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_196_4();
    v26 = OUTLINED_FUNCTION_300();
    sub_1C8CACE04(v26, v27, v28);
    OUTLINED_FUNCTION_193_3();
    OUTLINED_FUNCTION_60_7();
    TypedValue.ID.debugDescription.getter();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(&qword_1EC312700, v29);
    v30 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v30, v31, v32);
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_63_8();
    v33 = v10;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 24) = v34;
    *v42 = v34;
    OUTLINED_FUNCTION_98_3(&dword_1C8C9B000, v35, v19, "Session %s failed to resolve reference %s due to %@");
    sub_1C8D16D78(v42, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v20(v47, v1);
  }

  else
  {

    OUTLINED_FUNCTION_2_37();
    sub_1C8E1B4B8(&qword_1EC312700, v36);
    v37 = OUTLINED_FUNCTION_163_3();
    (v20)(v37);
  }

  OUTLINED_FUNCTION_59_9();
  v40 = v0[20];
  v41 = v0[19];
  v43 = v0[18];
  v44 = v0[17];
  v45 = v0[16];
  v46 = v0[14];
  v48 = v0[13];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v38();
}

uint64_t sub_1C8E1071C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C8E10744, 0, 0);
}

uint64_t sub_1C8E10744()
{
  OUTLINED_FUNCTION_133();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = *(v0[21] + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v0[26] = sub_1C9061EFC();
  OUTLINED_FUNCTION_203();
  v0[27] = sub_1C9061EFC();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C8E10888;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316408, &qword_1C9085048);
  OUTLINED_FUNCTION_96_2(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1C8E1BB50;
  v0[13] = &block_descriptor_91;
  v0[14] = v6;
  v8 = OUTLINED_FUNCTION_178_1();
  [v8 v9];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C8E10888()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E10984()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  **(v0 + 160) = *(v0 + 144);

  OUTLINED_FUNCTION_7_10();

  return v3();
}

uint64_t sub_1C8E109EC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v5 = v0[28];

  return v4();
}

uint64_t sub_1C8E10A5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1C8E10AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_1C8E10B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 104) = v4;
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 65) = *(a2 + 48);
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E10B38()
{
  OUTLINED_FUNCTION_4_2();
  *(v0 + 16) = *(v0 + 88);
  v1 = *(v0 + 65);
  v2 = *(v0 + 120);
  *(v0 + 32) = *(v0 + 104);
  *(v0 + 48) = v2;
  *(v0 + 64) = v1;
  if (qword_1EC311438 != -1)
  {
    OUTLINED_FUNCTION_117_1();
  }

  v3 = type metadata accessor for TypedValueResolutionOptions(0);
  v4 = __swift_project_value_buffer(v3, qword_1EC390C30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 136) = v5;
  *v5 = v6;
  v5[1] = sub_1C8E10C2C;
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);

  return sub_1C8E10D64(v7, v0 + 16, v4);
}

uint64_t sub_1C8E10C2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v12();
  }
}

uint64_t sub_1C8E10D40()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 144);
  return v2();
}

uint64_t sub_1C8E10D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E10D94()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v0[10];
  v1 = v0[11];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = sub_1C8E10E6C;
  v6 = v0[11];
  v7 = v0[9];
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0BCD0(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C8E10E6C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 96);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8E10F88()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_1C8E10FE4()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  v5 = v4;
  *(v1 + 72) = v6;
  *(v1 + 80) = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for TypedValueResolutionOptions(0);
  *(v1 + 96) = v10;
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_39();
  v13 = *(v5 + 16);
  *(v1 + 112) = *v5;
  *(v1 + 128) = v13;
  *(v1 + 144) = *(v5 + 32);
  *(v1 + 65) = *(v5 + 48);
  *(v1 + 160) = *v3;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C8E110C0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v22[0] = *(v0 + 65);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_1C9061EBC();
  v20 = *(v0 + 128);
  v21 = *(v0 + 112);
  OUTLINED_FUNCTION_100_4(v6);
  *v5 = 0xF000000000000007;
  v7 = *(v4 + 24);
  OUTLINED_FUNCTION_100_4(v5 + v7);
  v8 = *(v4 + 28);
  type metadata accessor for ToolInvocation();
  OUTLINED_FUNCTION_100_4(v5 + v8);
  v9 = *v5;
  sub_1C8CD1784(v1);
  sub_1C8D076D8(v9);
  *v5 = v1;
  *(v5 + 8) = 1;
  sub_1C8D4F5E4(v6, v5 + v7, &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D16D78(v5 + v8, &qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_100_4(v5 + v8);
  *(v0 + 16) = v21;
  *(v0 + 32) = v20;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v22[0];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 168) = v10;
  *v10 = v11;
  v10[1] = sub_1C8E11234;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  OUTLINED_FUNCTION_128();

  return sub_1C8E10D64(v15, v16, v17);
}

uint64_t sub_1C8E11234()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C8E1132C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v3);

  OUTLINED_FUNCTION_7_10();

  return v4();
}

uint64_t sub_1C8E113A0()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[13];
  v2 = v0[11];
  OUTLINED_FUNCTION_3_31();
  sub_1C8E1B4B8(v1, v3);

  OUTLINED_FUNCTION_6_0();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1C8E11418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  v5 = sub_1C9061EBC();
  v4[63] = v5;
  v6 = *(v5 - 8);
  v4[64] = v6;
  v7 = *(v6 + 64) + 15;
  v4[65] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0) - 8) + 64) + 15;
  v4[66] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0) - 8) + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v10 = type metadata accessor for TypedValueResolutionRequest(0);
  v4[69] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v12 = type metadata accessor for TypedValueResolutionOptions(0);
  v4[72] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v14 = sub_1C9063D3C();
  v4[75] = v14;
  v15 = *(v14 - 8);
  v4[76] = v15;
  v16 = *(v15 + 64) + 15;
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E11644, 0, 0);
}

uint64_t sub_1C8E11644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, __n128 a15, __int128 a16, __int128 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_141_4();
  a30 = v32;
  a31 = v33;
  OUTLINED_FUNCTION_148_2();
  a29 = v31;
  v34 = *(v31 + 632);
  v35 = *(v31 + 592);
  v37 = *(v31 + 488);
  v36 = *(v31 + 496);
  v38 = *(v31 + 480);
  *(v31 + 640) = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_16_17();
  v39 = OUTLINED_FUNCTION_134();
  sub_1C8E1B5B4(v39, v40, v41);
  v42 = v38;
  sub_1C8E1AFE8(v37, v31 + 144);
  v43 = sub_1C9063D1C();
  sub_1C906446C();

  sub_1C8E1B044(v37);
  if (OUTLINED_FUNCTION_195_2())
  {
    v123 = *(v31 + 608);
    v125 = *(v31 + 600);
    v127 = *(v31 + 632);
    v44 = *(v31 + 592);
    v45 = *(v31 + 480);
    v46 = *(v31 + 488);
    OUTLINED_FUNCTION_55_5();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_183_4();
    OUTLINED_FUNCTION_208_2();
    *v47 = 136315650;
    v48 = [v45 debugDescription];
    sub_1C9063EEC();
    v50 = v49;

    v51 = OUTLINED_FUNCTION_207_2();
    sub_1C8CACE04(v51, v52, v53);
    OUTLINED_FUNCTION_244_2();
    *(v47 + 4) = v48;
    *(v47 + 12) = 2080;
    v54 = *(v46 + 16);
    a15 = *v46;
    a16 = v54;
    a17 = *(v46 + 32);
    a18 = *(v46 + 48);
    v55 = TypedValue.DeferredValue.debugDescription.getter();
    sub_1C8CACE04(v55, v56, &a14);
    OUTLINED_FUNCTION_152_3();

    *(v47 + 14) = v50;
    *(v47 + 22) = 2080;
    *(v31 + 464) = *v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
    v57 = sub_1C906462C();
    OUTLINED_FUNCTION_3_31();
    sub_1C8E1B4B8(v44, v58);
    v59 = OUTLINED_FUNCTION_209();
    sub_1C8CACE04(v59, v60, v61);
    OUTLINED_FUNCTION_244_2();
    *(v47 + 24) = v57;
    OUTLINED_FUNCTION_79_5();
    _os_log_impl(v62, v63, v64, v65, v66, 0x20u);
    swift_arrayDestroy();
    v67 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v67);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v68 = *(v123 + 8);
    v68(v127, v125);
  }

  else
  {
    v69 = *(v31 + 632);
    v70 = *(v31 + 608);
    v71 = *(v31 + 600);
    v72 = *(v31 + 592);

    v68 = *(v70 + 8);
    v73 = OUTLINED_FUNCTION_209();
    (v68)(v73);
    OUTLINED_FUNCTION_3_31();
    sub_1C8E1B4B8(v72, v74);
  }

  *(v31 + 648) = v68;
  v75 = *(v31 + 480);
  sub_1C8E09618();
  v76 = *(v31 + 496);
  v128 = *v76;
  v77 = *v76;
  if ((~*v76 & 0xF000000000000007) == 0)
  {
    v77 = *(*(v31 + 488) + 8);
  }

  v78 = *(v31 + 576);
  v79 = *(v31 + 560);
  v80 = *(v31 + 536);
  v81 = *(v31 + 528);
  v124 = *(v31 + 552);
  v126 = *(v31 + 504);
  v82 = *(v76 + 8);
  sub_1C8D4F62C(v76 + *(v78 + 24), *(v31 + 544), &qword_1EC312700, &qword_1C9066AC0);
  sub_1C8D4F62C(v76 + *(v78 + 28), v81, &qword_1EC316440, &dword_1C908BFE0);
  *v79 = v77;
  *(v79 + 8) = v82;
  sub_1C8D4F62C(v81, v79 + *(v124 + 24), &qword_1EC316440, &dword_1C908BFE0);
  v83 = OUTLINED_FUNCTION_181_0();
  sub_1C8D4F62C(v83, v84, &qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_108_2(v80, 1, v126);
  if (v85)
  {
    sub_1C8CD1784(v128);
  }

  else
  {
    v86 = *(v31 + 536);
    v87 = *(v31 + 520);
    v88 = *(v31 + 512);
    v89 = *(v88 + 32);
    v90 = OUTLINED_FUNCTION_178_1();
    v91(v90);
    v92 = objc_allocWithZone(MEMORY[0x1E696AE98]);
    sub_1C8CD1784(v128);
    v93 = sub_1C9061DDC();
    v94 = [v92 initWithURL:v93 readonly:0];

    v95 = *(v88 + 8);
    v96 = OUTLINED_FUNCTION_181_0();
    v97(v96);
    if (v94)
    {
      v98 = *(v31 + 544);
      v99 = *(v31 + 528);
      a14 = v94;
      sub_1C8E42C40(&a14, &a15);

      sub_1C8D16D78(v99, &qword_1EC316440, &dword_1C908BFE0);
      sub_1C8D16D78(v98, &qword_1EC312700, &qword_1C9066AC0);
      v100 = a15;
      goto LABEL_12;
    }
  }

  v101 = *(v31 + 544);
  sub_1C8D16D78(*(v31 + 528), &qword_1EC316440, &dword_1C908BFE0);
  sub_1C8D16D78(v101, &qword_1EC312700, &qword_1C9066AC0);
  v100 = xmmword_1C9065DB0;
LABEL_12:
  OUTLINED_FUNCTION_106_3(*(v31 + 560), *(v31 + 568), *(v31 + 552), v100);
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v102 = *(v31 + 488);
  v103 = *(v102 + 48);
  v104 = *(v102 + 32);
  *(v31 + 312) = *(v102 + 16);
  *(v31 + 328) = v104;
  *(v31 + 344) = v103;
  v106 = *(v102 + 16);
  v105 = *(v102 + 32);
  *(v31 + 384) = *(v102 + 48);
  *(v31 + 352) = v106;
  *(v31 + 368) = v105;
  sub_1C8E1B098(v31 + 312, v31 + 392);
  sub_1C8DF2098();
  *(v31 + 656) = sub_1C9061C5C();
  *(v31 + 664) = v107;
  v108 = *(v31 + 568);
  v109 = *(v31 + 552);
  sub_1C8D43CA8(*(v31 + 352), *(v31 + 360), *(v31 + 368), *(v31 + 376), *(v31 + 384));
  OUTLINED_FUNCTION_102_3();
  sub_1C8CBE304(v110, v111);
  v112 = sub_1C9061C5C();
  *(v31 + 672) = 0;
  *(v31 + 680) = v112;
  *(v31 + 688) = v113;
  v114 = *(*(v31 + 480) + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  OUTLINED_FUNCTION_125();
  *(v31 + 696) = sub_1C9061EFC();
  *(v31 + 704) = sub_1C9061EFC();
  *(v31 + 16) = v31;
  *(v31 + 56) = v31 + 432;
  v115 = OUTLINED_FUNCTION_129_2();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316408, &qword_1C9085048);
  OUTLINED_FUNCTION_14_22(v116);
  OUTLINED_FUNCTION_174_3(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_31_10();
  *(v31 + 104) = v117;
  *(v31 + 112) = v115;
  v118 = OUTLINED_FUNCTION_178_1();
  [v118 v119];
  OUTLINED_FUNCTION_115_1();

  return MEMORY[0x1EEE6DEC8](v120);
}

uint64_t sub_1C8E11F1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 712) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E12018()
{
  v135 = v0;
  v2 = *(v0 + 696);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16();
  }

  v5 = *(v0 + 672);
  sub_1C8D39E40();
  sub_1C9061C2C();
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v9 = *(v0 + 664);
    v10 = *(v0 + 656);
    v11 = *(v0 + 568);
    OUTLINED_FUNCTION_4_25();
    sub_1C8E1B4B8(v12, v13);
    v14 = OUTLINED_FUNCTION_203();
    sub_1C8CE7B78(v14, v15);
    sub_1C8CE7B78(v8, v7);
    v16 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v16, v17);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    v20 = *(v0 + 480);
    v21 = *(v0 + 488);
    sub_1C906371C();
    v22 = v20;
    sub_1C8E1AFE8(v21, v0 + 200);
    v23 = v6;
    v24 = sub_1C9063D1C();
    v25 = sub_1C906444C();

    sub_1C8E1B044(v21);
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 648);
    v28 = *(v0 + 616);
    v29 = *(v0 + 608);
    if (v26)
    {
      v122 = *(v0 + 600);
      v124 = *(v0 + 648);
      v30 = *(v0 + 480);
      v31 = *(v0 + 488);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_2();
      v130 = OUTLINED_FUNCTION_68_3();
      *v29 = 136315650;
      v32 = [v30 debugDescription];
      v33 = sub_1C9063EEC();

      v34 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v34, v35, v36);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_50_10();
      v37 = v31[1];
      v131 = *v31;
      v132 = v37;
      v133 = v31[2];
      v134 = *(v31 + 48);
      v38 = TypedValue.DeferredValue.debugDescription.getter();
      sub_1C8CACE04(v38, v39, &v130);
      OUTLINED_FUNCTION_152_3();

      *(v29 + 14) = v33;
      OUTLINED_FUNCTION_113_2();
      v40 = v6;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v41);
      OUTLINED_FUNCTION_240_2(&dword_1C8C9B000, v42, v43, "Session %s failed to resolve deferred value %s due to %@");
      sub_1C8D16D78(v1, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      v124(v28, v122);
    }

    else
    {

      v93 = OUTLINED_FUNCTION_211();
      v27(v93);
    }

    v94 = *(v0 + 632);
    v95 = *(v0 + 624);
    v96 = *(v0 + 616);
    OUTLINED_FUNCTION_61_7();
    v126 = *(v0 + 528);
    v128 = *(v0 + 520);
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v44 = *(v0 + 640);
    v45 = *(v0 + 624);
    v46 = *(v0 + 584);
    v48 = *(v0 + 488);
    v47 = *(v0 + 496);
    v49 = *(v0 + 480);
    v50 = *(v0 + 448);
    sub_1C906371C();
    OUTLINED_FUNCTION_16_17();
    sub_1C8E1B5B4(v47, v46, v51);
    v52 = v49;
    sub_1C8E1AFE8(v48, v0 + 256);

    v53 = sub_1C9063D1C();
    LOBYTE(v45) = sub_1C906446C();

    sub_1C8E1B044(v48);

    v54 = os_log_type_enabled(v53, v45);
    v123 = *(v0 + 680);
    v125 = *(v0 + 688);
    v55 = *(v0 + 648);
    v127 = *(v0 + 608);
    v56 = *(v0 + 584);
    v57 = *(v0 + 568);
    if (v54)
    {
      v120 = *(v0 + 624);
      v121 = *(v0 + 568);
      v58 = *(v0 + 480);
      v59 = *(v0 + 488);
      v117 = *(v0 + 656);
      v118 = *(v0 + 664);
      v119 = *(v0 + 600);
      v60 = swift_slowAlloc();
      v115 = OUTLINED_FUNCTION_186_4();
      v130 = v115;
      *v60 = 136315906;
      v61 = [v58 debugDescription];
      v116 = v55;
      v62 = sub_1C9063EEC();

      v63 = OUTLINED_FUNCTION_32_3();
      sub_1C8CACE04(v63, v64, v65);
      OUTLINED_FUNCTION_173_3();
      *(v60 + 4) = v61;
      *(v60 + 12) = 2080;
      v66 = v59[1];
      v131 = *v59;
      v132 = v66;
      v133 = v59[2];
      v134 = *(v59 + 48);
      v67 = TypedValue.DeferredValue.debugDescription.getter();
      sub_1C8CACE04(v67, v68, &v130);
      OUTLINED_FUNCTION_205_2();

      *(v60 + 14) = v62;
      *(v60 + 22) = 2080;
      *(v0 + 456) = *v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316448, &qword_1C9085090);
      sub_1C906462C();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v56, v69);
      v70 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v70, v71, v72);
      v73 = OUTLINED_FUNCTION_197_3();
      *(v60 + 24) = v0 + 456;
      *(v60 + 32) = 2080;
      *&v131 = v50;
      v74 = TypedValue.debugDescription.getter(v73);
      v76 = sub_1C8CACE04(v74, v75, &v130);

      *(v60 + 34) = v76;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v77, v78, v79, v80, v60, 0x2Au);
      OUTLINED_FUNCTION_121_2(v81, v82, v83, v84, v85, v86, v87, v88, v114, v50, v115);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(v117, v118);
      sub_1C8CE7B78(v123, v125);
      v89 = OUTLINED_FUNCTION_148();
      sub_1C8CE7B78(v89, v90);

      v116(v120, v119);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v121, v91);
    }

    else
    {
      sub_1C8CE7B78(*(v0 + 656), *(v0 + 664));
      sub_1C8CE7B78(v123, v125);
      v98 = OUTLINED_FUNCTION_148();
      sub_1C8CE7B78(v98, v99);

      v100 = OUTLINED_FUNCTION_245();
      (v55)(v100);
      OUTLINED_FUNCTION_4_25();
      sub_1C8E1B4B8(v57, v101);
      OUTLINED_FUNCTION_3_31();
      sub_1C8E1B4B8(v56, v102);
    }

    v92 = v50;
    v103 = *(v0 + 632);
    v104 = *(v0 + 624);
    v105 = *(v0 + 616);
    v106 = *(v0 + 592);
    v107 = *(v0 + 584);
    v108 = *(v0 + 568);
    v109 = *(v0 + 560);
    v110 = *(v0 + 544);
    v111 = *(v0 + 536);
    v112 = *(v0 + 528);
    v129 = *(v0 + 520);
    **(v0 + 472) = v92;

    OUTLINED_FUNCTION_7_10();
  }

  return v97();
}

uint64_t sub_1C8E129B0(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E129CC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 40) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E12A84;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_1C8E0C7E8(v7, "injectValue", 11, 2, v5, v5, v6);
}

uint64_t sub_1C8E12A84()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8E12B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(type metadata accessor for TypedValue.ID(0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_1C9063D3C();
  v3[25] = v5;
  v6 = *(v5 - 8);
  v3[26] = v6;
  v7 = *(v6 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E12C78, 0, 0);
}

uint64_t sub_1C8E12C78()
{
  v42 = v0;
  v2 = v0[29];
  v3 = v0[21];
  v4 = v0[22];
  v0[30] = *MEMORY[0x1E69E10F8];
  sub_1C906371C();

  v5 = v3;
  v6 = sub_1C9063D1C();
  sub_1C906446C();

  v7 = OUTLINED_FUNCTION_195_2();
  v8 = v0[29];
  v10 = v0[25];
  v9 = v0[26];
  if (v7)
  {
    v11 = v0[21];
    v40 = v0[22];
    OUTLINED_FUNCTION_164_2();
    v41[0] = OUTLINED_FUNCTION_95_2();
    *v8 = 136315394;
    v12 = [v11 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v13 = OUTLINED_FUNCTION_325();
    sub_1C8CACE04(v13, v14, v15);
    OUTLINED_FUNCTION_173_3();
    OUTLINED_FUNCTION_50_10();
    v41[1] = v40;
    v17 = TypedValue.debugDescription.getter(v16);
    sub_1C8CACE04(v17, v18, v41);
    OUTLINED_FUNCTION_194_3();
    *(v8 + 14) = v1;
    OUTLINED_FUNCTION_79_5();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    OUTLINED_FUNCTION_189_3();
    v24 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v24);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v2 = *(v9 + 8);
    v2(v8, v10);
  }

  else
  {

    v25 = OUTLINED_FUNCTION_203_3();
    v2(v25, v10);
  }

  v0[31] = v2;
  v26 = v0[21];
  sub_1C8E09618();
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v0[18] = v0[22];
  sub_1C8D381AC();
  v27 = sub_1C9061C5C();
  v0[32] = 0;
  v0[33] = v27;
  v0[34] = v28;
  OUTLINED_FUNCTION_11_6();
  v29 = v0[21];
  sub_1C8CB78AC(0, &qword_1EC3164D0, 0x1E69E0DB8);
  v30 = OUTLINED_FUNCTION_276();
  sub_1C8CE9144(v30, v31);
  v32 = OUTLINED_FUNCTION_276();
  v34 = sub_1C8E29064(v32, v33);
  v0[35] = v34;
  v35 = *(v29 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1C8E13190;
  v36 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164D8, &qword_1C90851D0);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_174_3(COERCE_DOUBLE(1107296256));
  v0[12] = sub_1C8E13A94;
  v0[13] = &block_descriptor_199;
  v0[14] = v36;
  [v35 injectContentAsVariable:v34 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_225_2();

  return MEMORY[0x1EEE6DEC8](v37);
}

uint64_t sub_1C8E13190()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E1328C()
{
  v101 = v0;
  v2 = v0[22];
  v3 = v0[19];
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  v100 = v2;
  TypedValue.typeIdentifier.getter();
  v5 = v0[32];
  v6 = v0[24];
  if (v2 >> 60 == 3)
  {
    OUTLINED_FUNCTION_50();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v100 = v7 | 0x2000000000000000;
  }

  else
  {
    v100 = v4;
  }

  swift_unknownObjectRetain();

  TypedValue.ID.init(propertyListObject:typeInstance:)(v3, &v100, v6);
  if (v5)
  {
    v8 = v5;
    v9 = v0[35];
    sub_1C8CE7B78(v0[33], v0[34]);

    swift_unknownObjectRelease();

    v10 = v0[30];
    v11 = v0[27];
    v12 = v0[21];
    v13 = v0[22];
    sub_1C906371C();
    v14 = v12;

    v15 = v8;
    v16 = sub_1C9063D1C();
    v17 = sub_1C906444C();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[31];
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[25];
    if (v18)
    {
      v92 = v0[22];
      v97 = v0[31];
      v23 = v0[21];
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_2();
      v99 = OUTLINED_FUNCTION_68_3();
      *v21 = 136315650;
      v24 = [v23 debugDescription];
      sub_1C9063EEC();
      OUTLINED_FUNCTION_153_4();

      v25 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v25, v26, v27);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_50_10();
      v100 = v92;
      v29 = TypedValue.debugDescription.getter(v28);
      sub_1C8CACE04(v29, v30, &v99);
      OUTLINED_FUNCTION_152_3();

      *(v21 + 14) = v20;
      OUTLINED_FUNCTION_113_2();
      v31 = v8;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v32);
      OUTLINED_FUNCTION_240_2(&dword_1C8C9B000, v33, v34, "Session %s failed to inject value %s due to %@");
      sub_1C8D16D78(v1, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      v97(v20, v22);
    }

    else
    {

      v74 = OUTLINED_FUNCTION_181_0();
      v19(v74);
    }

    v75 = v0[28];
    v76 = v0[29];
    v77 = v0[27];
    v79 = v0[23];
    v78 = v0[24];
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v35 = v0[30];
    v36 = v0[28];
    v37 = v0[23];
    v39 = v0[21];
    v38 = v0[22];
    sub_1C8E1BAB4(v0[24], v0[20], type metadata accessor for TypedValue.ID);
    sub_1C906371C();
    OUTLINED_FUNCTION_7_23();
    v40 = OUTLINED_FUNCTION_203();
    sub_1C8E1B5B4(v40, v41, v42);
    v43 = v39;

    v44 = sub_1C9063D1C();
    v45 = sub_1C906446C();

    v46 = os_log_type_enabled(v44, v45);
    v48 = v0[34];
    v47 = v0[35];
    v95 = v47;
    v96 = v0[33];
    v49 = v0[31];
    v98 = v0[28];
    v50 = v0[25];
    v51 = v0[26];
    v52 = v0[23];
    if (v46)
    {
      v89 = v0[22];
      v94 = v0[31];
      v53 = v0[21];
      OUTLINED_FUNCTION_55_5();
      v93 = v50;
      v54 = swift_slowAlloc();
      v90 = OUTLINED_FUNCTION_183_4();
      v99 = v90;
      *v54 = 136315650;
      v55 = [v53 debugDescription];
      v91 = v48;
      v56 = sub_1C9063EEC();
      v58 = v57;

      sub_1C8CACE04(v56, v58, &v99);
      v59 = OUTLINED_FUNCTION_197_3();
      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      v100 = v89;
      v60 = TypedValue.debugDescription.getter(v59);
      sub_1C8CACE04(v60, v61, &v99);
      OUTLINED_FUNCTION_205_2();

      *(v54 + 14) = v58;
      *(v54 + 22) = 2080;
      TypedValue.ID.debugDescription.getter();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v52, v62);
      v63 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v63, v64, v65);
      OUTLINED_FUNCTION_197_3();
      *(v54 + 24) = v52;
      _os_log_impl(&dword_1C8C9B000, v44, v45, "Session %s successfully injected value %s as %s", v54, 0x20u);
      OUTLINED_FUNCTION_121_2(v66, v67, v68, v69, v70, v71, v72, v73, v88, v89, v90);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      swift_unknownObjectRelease();

      sub_1C8CE7B78(v96, v91);
      v94(v98, v93);
    }

    else
    {

      swift_unknownObjectRelease();

      sub_1C8CE7B78(v96, v48);
      OUTLINED_FUNCTION_2_37();
      sub_1C8E1B4B8(v52, v81);
      v49(v98, v50);
    }

    v83 = v0[28];
    v82 = v0[29];
    v84 = v0[27];
    v86 = v0[23];
    v85 = v0[24];

    OUTLINED_FUNCTION_7_10();
  }

  return v80();
}

void sub_1C8E13850()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  swift_willThrow();
  v6 = OUTLINED_FUNCTION_94();
  sub_1C8CE7B78(v6, v7);

  v8 = v0[36];
  OUTLINED_FUNCTION_236_1();
  v9 = v2;

  v10 = v8;
  v11 = sub_1C9063D1C();
  sub_1C906444C();

  v12 = OUTLINED_FUNCTION_187_4();
  v13 = v0[31];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  if (v12)
  {
    v43 = v0[22];
    v44 = v0[31];
    v17 = v0[21];
    OUTLINED_FUNCTION_55_5();
    swift_slowAlloc();
    OUTLINED_FUNCTION_81_2();
    v45[0] = OUTLINED_FUNCTION_68_3();
    *v15 = 136315650;
    v18 = [v17 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_88();

    v19 = OUTLINED_FUNCTION_211();
    sub_1C8CACE04(v19, v20, v21);
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_50_10();
    v45[1] = v43;
    v23 = TypedValue.debugDescription.getter(v22);
    sub_1C8CACE04(v23, v24, v45);
    OUTLINED_FUNCTION_168_4();
    *(v15 + 14) = v14;
    OUTLINED_FUNCTION_113_2();
    v25 = v8;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_131_1(v26);
    OUTLINED_FUNCTION_86_3(&dword_1C8C9B000, v27, v28, "Session %s failed to inject value %s due to %@");
    sub_1C8D16D78(v1, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_85_2();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v37 = OUTLINED_FUNCTION_216_1(v29, v30, v31, v32, v33, v34, v35, v36, v42, v43, v16, v14);
    v38(v37);
  }

  else
  {

    v39 = OUTLINED_FUNCTION_211();
    v13(v39);
  }

  OUTLINED_FUNCTION_227_1();

  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_225_2();

  __asm { BRAA            X1, X16 }
}

uint64_t *sub_1C8E13A94(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1C8E10A5C(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1C8E10AE8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8E13B1C()
{
  OUTLINED_FUNCTION_4_2();
  memcpy((v0 + 16), v1, 0x50uLL);
  *(v0 + 112) = 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1C8E13BE0;

  return sub_1C8E13D1C();
}

uint64_t sub_1C8E13BE0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_160_4();

    return v13(v12);
  }
}

uint64_t sub_1C8E13CF8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 104);
  return v2();
}

uint64_t sub_1C8E13D1C()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 96) = v5;
  memcpy((v1 + 16), v6, 0x50uLL);
  *(v1 + 144) = *v3;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C8E13D9C()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 96);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1C8E13E88;
  v6 = *(v0 + 112);

  return sub_1C8E0CEE4("enumerateValueSet", 17, 2, &unk_1C9085018, v3);
}

uint64_t sub_1C8E13E88()
{
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 120);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1C8E13FC4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_1C8E14020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 721) = a6;
  *(v6 + 520) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = type metadata accessor for Query();
  *(v6 + 528) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 536) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3163F0, &unk_1C9085038);
  *(v6 + 544) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  v11 = type metadata accessor for ToolInvocation();
  *(v6 + 584) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  v13 = sub_1C9063D3C();
  *(v6 + 616) = v13;
  v14 = *(v13 - 8);
  *(v6 + 624) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E141DC, 0, 0);
}

uint64_t sub_1C8E14AE4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 712) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E1560C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = a2[1];
  *(v5 + 48) = *a2;
  *(v5 + 64) = v6;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E1562C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v4 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  *(v2 + 40) = v4;
  *(v2 + 56) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_1C8E15708;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0E27C(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1C8E15708()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8E15824()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1C8E15880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[24] = a1;
  v8[25] = a2;
  v9 = *(a7 - 8);
  v8[32] = v9;
  v10 = *(v9 + 64) + 15;
  v8[33] = swift_task_alloc();
  v11 = sub_1C9063D3C();
  v8[34] = v11;
  v12 = *(v11 - 8);
  v8[35] = v12;
  v13 = *(v12 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E159B4, 0, 0);
}

uint64_t sub_1C8E15E58()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E15F54()
{
  v111 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16();
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 240);
  v5 = *(v0 + 192);
  v6 = *(*(v0 + 248) + 16);
  sub_1C9061C2C();
  if (v3)
  {
    sub_1C8CE7B78(*(v0 + 336), *(v0 + 344));
    v7 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v7, v8);
    v9 = *(v0 + 312);
    v10 = *(v0 + 288);
    OUTLINED_FUNCTION_228_2();
    v11 = v1;
    OUTLINED_FUNCTION_12_17();
    v12 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B348(v12, v13, v14, v15, v16);
    v17 = v3;
    v18 = sub_1C9063D1C();
    v19 = sub_1C906444C();

    OUTLINED_FUNCTION_11_19();
    v20 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B348(v20, v21, v22, v23, v24);

    v25 = os_log_type_enabled(v18, v19);
    v26 = *(v0 + 320);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v29 = *(v0 + 272);
    if (v25)
    {
      v106 = *(v0 + 320);
      v99 = OUTLINED_FUNCTION_126_1();
      v101 = v30;
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      OUTLINED_FUNCTION_75_2();
      v108 = OUTLINED_FUNCTION_68_3();
      *v28 = 136315650;
      v31 = [v26 debugDescription];
      sub_1C9063EEC();
      OUTLINED_FUNCTION_153_4();

      v32 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v32, v33, v34);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_38_12();
      v110 = v99;
      v109 = v101;
      v35 = DisplayRepresentation.ResolvingRequest.debugDescription.getter();
      sub_1C8CACE04(v35, v36, &v108);
      OUTLINED_FUNCTION_152_3();

      OUTLINED_FUNCTION_239_1();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124_2(v37);
      OUTLINED_FUNCTION_237_2(&dword_1C8C9B000, v38, v39, "Session %s failed to fetch display value using request: %s due to error: %@");
      sub_1C8D16D78(v11, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v40 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v40);

      v106(v27, v29);
    }

    else
    {

      v83 = OUTLINED_FUNCTION_181_0();
      (v26)(v83);
    }

    v84 = *(v0 + 296);
    v85 = *(v0 + 304);
    v86 = *(v0 + 288);
    v87 = *(v0 + 264);
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v105 = v2;
    v107 = v1;
    v41 = *(v0 + 312);
    v42 = *(v0 + 296);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    v45 = *(v0 + 240);
    v104 = *(v0 + 232);
    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    v50 = *(v0 + 192);
    sub_1C906371C();
    v51 = *(v44 + 16);
    v52 = OUTLINED_FUNCTION_134();
    v53(v52);
    v54 = v48;
    OUTLINED_FUNCTION_12_17();
    sub_1C8E1B348(v49, v47, v46, v104, v55);
    v56 = sub_1C9063D1C();
    LOBYTE(v42) = sub_1C906446C();

    OUTLINED_FUNCTION_11_19();
    sub_1C8E1B348(v49, v47, v46, v104, v57);
    v58 = os_log_type_enabled(v56, v42);
    v59 = *(v0 + 320);
    v60 = *(v0 + 296);
    v61 = *(v0 + 272);
    v62 = *(v0 + 280);
    v64 = *(v0 + 256);
    v63 = *(v0 + 264);
    if (v58)
    {
      v95 = *(v0 + 248);
      v103 = *(v0 + 272);
      v65 = *(v0 + 240);
      v66 = *(v0 + 200);
      v96 = *(v0 + 224);
      v97 = *(v0 + 208);
      v98 = *(v0 + 336);
      v100 = *(v0 + 344);
      v102 = *(v0 + 296);
      v67 = swift_slowAlloc();
      v108 = OUTLINED_FUNCTION_183_4();
      *v67 = 136315650;
      v68 = [v66 debugDescription];
      v69 = sub_1C9063EEC();
      v71 = v70;

      v72 = sub_1C8CACE04(v69, v71, &v108);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = *(v95 + 8);
      v74 = sub_1C9064C3C();
      v76 = v75;
      (*(v64 + 8))(v63, v65);
      sub_1C8CACE04(v74, v76, &v108);
      OUTLINED_FUNCTION_123_3();

      *(v67 + 14) = v63;
      *(v67 + 22) = 2080;
      v110 = v96;
      v109 = v97;
      v77 = DisplayRepresentation.ResolvingRequest.debugDescription.getter();
      sub_1C8CACE04(v77, v78, &v108);
      OUTLINED_FUNCTION_241_2();
      *(v67 + 24) = v74;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v79, v80, v81, v82, v67, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(v98, v100);
      sub_1C8CE7B78(v105, v107);

      v59(v102, v103);
    }

    else
    {
      v89 = *(v0 + 240);
      sub_1C8CE7B78(*(v0 + 336), *(v0 + 344));
      sub_1C8CE7B78(v105, v107);

      (*(v64 + 8))(v63, v89);
      v59(v60, v61);
    }

    v91 = *(v0 + 296);
    v90 = *(v0 + 304);
    v92 = *(v0 + 288);
    v93 = *(v0 + 264);

    OUTLINED_FUNCTION_7_10();
  }

  return v88();
}

uint64_t sub_1C8E1672C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1C8E10A5C(v5, a3);
  }

  v7 = a2;
  OUTLINED_FUNCTION_152_3();
  sub_1C9061F3C();
  v9 = v8;

  v10 = OUTLINED_FUNCTION_94();

  return sub_1C8E10AC8(v10, v11, v9);
}

uint64_t sub_1C8E167BC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_4(v4);
  *v5 = v6;
  v5[1] = sub_1C8E1685C;

  return sub_1C8E1693C(v3, v1, 1);
}

uint64_t sub_1C8E1685C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8E1693C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E16958()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i8[0] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_1C8E16A2C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_175_2();

  return sub_1C8E0D5AC(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C8E16A2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8E16B48()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1C8E16BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 336) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = type metadata accessor for ToolInvocation();
  *(v4 + 208) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  v7 = sub_1C9063D3C();
  *(v4 + 240) = v7;
  v8 = *(v7 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E16CCC, 0, 0);
}

uint64_t sub_1C8E16CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74_2();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_91_3();
  a24 = v26;
  v29 = *(v26 + 272);
  v30 = *(v26 + 232);
  v32 = *(v26 + 192);
  v31 = *(v26 + 200);
  *(v26 + 280) = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  OUTLINED_FUNCTION_1_47();
  v33 = OUTLINED_FUNCTION_134();
  sub_1C8E1B5B4(v33, v34, v35);
  v36 = v32;
  v37 = sub_1C9063D1C();
  v38 = sub_1C906446C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v26 + 272);
  v42 = *(v26 + 240);
  v41 = *(v26 + 248);
  v43 = *(v26 + 232);
  if (v39)
  {
    v44 = *(v26 + 192);
    OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_95_2();
    OUTLINED_FUNCTION_208_2();
    *v40 = 136315394;
    v45 = [v44 debugDescription];
    sub_1C9063EEC();

    v46 = OUTLINED_FUNCTION_206_0();
    v49 = sub_1C8CACE04(v46, v47, v48);

    *(v40 + 4) = v49;
    OUTLINED_FUNCTION_71_5();
    v50 = ToolInvocation.debugDescription.getter();
    v52 = v51;
    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v43, v53);
    sub_1C8CACE04(v50, v52, &a14);
    OUTLINED_FUNCTION_123_3();

    *(v40 + 14) = v43;
    OUTLINED_FUNCTION_157_1();
    _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
    OUTLINED_FUNCTION_189_3();
    v59 = OUTLINED_FUNCTION_19_16();
    MEMORY[0x1CCA833A0](v59);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v43 = *(v41 + 8);
    v43(v40, v42);
  }

  else
  {

    OUTLINED_FUNCTION_0_52();
    sub_1C8E1B4B8(v43, v60);
    v61 = OUTLINED_FUNCTION_203_3();
    v43(v61, v42);
  }

  *(v26 + 288) = v43;
  if (qword_1EDA632E0 != -1)
  {
    OUTLINED_FUNCTION_10_20();
  }

  v62 = *(v26 + 200);
  v63 = *(v26 + 208);
  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v64, v65);
  OUTLINED_FUNCTION_145();
  v66 = sub_1C9061C5C();
  *(v26 + 296) = 0;
  *(v26 + 304) = v66;
  *(v26 + 312) = v67;
  v68 = *(v26 + 336);
  v69 = *(*(v26 + 192) + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v70 = sub_1C9061EFC();
  *(v26 + 320) = v70;
  *(v26 + 16) = v26;
  *(v26 + 56) = v26 + 168;
  v71 = OUTLINED_FUNCTION_129_2();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316408, &qword_1C9085048);
  OUTLINED_FUNCTION_14_22(v72);
  OUTLINED_FUNCTION_174_3(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_31_10();
  *(v26 + 104) = v73;
  *(v26 + 112) = v71;
  [v69 fetchToolInvocationSummaryForInvocation:v70 fetchingDefaultValues:v68 completionHandler:v26 + 80];
  OUTLINED_FUNCTION_70_2();

  return MEMORY[0x1EEE6DEC8](v74);
}

uint64_t sub_1C8E171D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E172D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, void (*a12)(uint64_t, void), uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17, void (*a18)(uint64_t, _DWORD *), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_141_4();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_148_2();
  a32 = v34;
  v40 = *(v34 + 168);
  v39 = *(v34 + 176);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16();
  }

  v41 = *(v34 + 296);
  v42 = qword_1EDA63300;
  sub_1C8E1B464();
  sub_1C9061C2C();
  if (v41)
  {
    v43 = v41;
    sub_1C8CE7B78(*(v34 + 304), *(v34 + 312));
    v44 = OUTLINED_FUNCTION_125();
    sub_1C8CE7B78(v44, v45);
    OUTLINED_FUNCTION_78_6();
    v47 = *(v34 + 192);
    v46 = *(v34 + 200);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    v48 = OUTLINED_FUNCTION_212();
    sub_1C8E1B5B4(v48, v49, v50);
    v51 = v47;
    v52 = v41;
    v53 = sub_1C9063D1C();
    sub_1C906444C();

    OUTLINED_FUNCTION_187_4();
    v54 = *(v34 + 288);
    v56 = *(v34 + 248);
    v55 = *(v34 + 256);
    OUTLINED_FUNCTION_213_2();
    if (v57)
    {
      a18 = v54;
      v58 = *(v34 + 192);
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      a17 = v35;
      OUTLINED_FUNCTION_81_2();
      a16 = OUTLINED_FUNCTION_68_3();
      a20 = a16;
      *v35 = 136315650;
      [v58 debugDescription];
      sub_1C9063EEC();
      a14 = v56;
      a15 = v55;
      OUTLINED_FUNCTION_196_4();
      v59 = OUTLINED_FUNCTION_300();
      sub_1C8CACE04(v59, v60, v61);
      OUTLINED_FUNCTION_193_3();
      OUTLINED_FUNCTION_60_7();
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v42, v62);
      v63 = OUTLINED_FUNCTION_211();
      sub_1C8CACE04(v63, v64, v65);
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_63_8();
      v66 = v43;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_131_1(v67);
      OUTLINED_FUNCTION_86_3(&dword_1C8C9B000, v68, v69, "Session %s failed to fetch invocation summary for invocation: %s due to error: %@");
      sub_1C8D16D78(v36, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_185_3();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      a18(v55, v35);
    }

    else
    {

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v42, v99);
      v100 = OUTLINED_FUNCTION_127();
      v54(v100);
    }

    OUTLINED_FUNCTION_119_5();

    OUTLINED_FUNCTION_28_11();
  }

  else
  {
    v70 = *(v34 + 280);
    v71 = *(v34 + 264);
    v72 = *(v34 + 224);
    v74 = *(v34 + 192);
    v73 = *(v34 + 200);
    v76 = *(v34 + 144);
    v75 = *(v34 + 152);
    v77 = *(v34 + 160);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    sub_1C8E1B5B4(v73, v72, v78);
    v79 = v74;

    v80 = sub_1C9063D1C();
    LODWORD(v72) = sub_1C906446C();

    LODWORD(a15) = v72;
    v81 = os_log_type_enabled(v80, v72);
    v82 = *(v34 + 288);
    v83 = *(v34 + 264);
    a17 = *(v34 + 248);
    a18 = *(v34 + 240);
    v84 = *(v34 + 224);
    if (v81)
    {
      log = v80;
      v85 = *(v34 + 192);
      a13 = *(v34 + 304);
      a14 = *(v34 + 312);
      a16 = v76;
      v86 = swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_183_4();
      a19 = a9;
      *v86 = 136315650;
      v87 = [v85 debugDescription];
      a11 = v83;
      a12 = v82;
      v88 = sub_1C9063EEC();
      v90 = v89;

      sub_1C8CACE04(v88, v90, &a19);
      OUTLINED_FUNCTION_197_3();
      *(v86 + 4) = v87;
      *(v86 + 12) = 2080;
      a20 = a16;
      a21 = v75;
      a22 = v77;
      v91 = ToolInvocationSummary.debugDescription.getter();
      sub_1C8CACE04(v91, v92, &a19);
      OUTLINED_FUNCTION_205_2();

      *(v86 + 14) = v90;
      *(v86 + 22) = 2080;
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v84, v93);
      v94 = OUTLINED_FUNCTION_208_0();
      sub_1C8CACE04(v94, v95, v96);
      OUTLINED_FUNCTION_197_3();
      *(v86 + 24) = v84;
      _os_log_impl(&dword_1C8C9B000, log, a15, "Session %s did fetch invocation summary: %s for invocation: %s", v86, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v76 = a16;
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a13, a14);
      v97 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v97, v98);

      a12(a11, a18);
    }

    else
    {
      sub_1C8CE7B78(*(v34 + 304), *(v34 + 312));
      v101 = OUTLINED_FUNCTION_125();
      sub_1C8CE7B78(v101, v102);

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v84, v103);
      v82(v83, a18);
    }

    v105 = *(v34 + 264);
    v104 = *(v34 + 272);
    v106 = *(v34 + 256);
    v108 = *(v34 + 224);
    v107 = *(v34 + 232);
    v109 = *(v34 + 216);
    v110 = *(v34 + 184);
    *v110 = v76;
    v110[1] = v75;
    v110[2] = v77;

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_115_1();

  return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C8E17A68(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  return OUTLINED_FUNCTION_199();
}

uint64_t sub_1C8E17A84()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = OUTLINED_FUNCTION_212();
  sub_1C8E1B188(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v8;
  *v8 = v9;
  v8[1] = sub_1C8E17B5C;
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_1C8E0DB94(v12, "transformAction", 15, 2, v13, v13, v10, v11);
}

uint64_t sub_1C8E17B5C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t sub_1C8E17C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = type metadata accessor for ToolInvocation();
  v6[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v9 = sub_1C9063D3C();
  v6[32] = v9;
  v10 = *(v9 - 8);
  v6[33] = v10;
  v11 = *(v10 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E17D4C, 0, 0);
}

uint64_t sub_1C8E181C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8E182BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, uint64_t a11, uint64_t a12, __n128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18, void (*a19)(uint64_t, uint64_t), uint64_t a20, __int128 a21, __n128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_165_4();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_210_2();
  a32 = v34;
  v38 = *(v34 + 176);
  v37 = *(v34 + 184);

  if (qword_1EDA632F8 != -1)
  {
    OUTLINED_FUNCTION_13_16();
  }

  v39 = *(v34 + 312);
  v40 = *(v34 + 240);
  v41 = *(v34 + 192);
  OUTLINED_FUNCTION_15_17();
  sub_1C8CBE304(v42, v43);
  sub_1C9061C2C();
  if (v39)
  {
    sub_1C8CE7B78(*(v34 + 320), *(v34 + 328));
    v44 = OUTLINED_FUNCTION_148();
    sub_1C8CE7B78(v44, v45);
    v46 = *(v34 + 296);
    v47 = *(v34 + 272);
    OUTLINED_FUNCTION_228_2();
    v48 = v37;
    v49 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B188(v49, v50);
    v51 = v39;
    v52 = sub_1C9063D1C();
    v53 = sub_1C906444C();

    v54 = OUTLINED_FUNCTION_65_6();
    sub_1C8E1B1D8(v54, v55);

    v56 = os_log_type_enabled(v52, v53);
    v57 = *(v34 + 304);
    v59 = *(v34 + 264);
    v58 = *(v34 + 272);
    v60 = *(v34 + 256);
    if (v56)
    {
      a19 = *(v34 + 304);
      a13 = OUTLINED_FUNCTION_126_1();
      a14 = v61;
      OUTLINED_FUNCTION_55_5();
      swift_slowAlloc();
      a18 = v59;
      OUTLINED_FUNCTION_75_2();
      a20 = OUTLINED_FUNCTION_68_3();
      *v59 = 136315650;
      v62 = [v57 debugDescription];
      sub_1C9063EEC();
      a16 = v60;
      a17 = v58;
      OUTLINED_FUNCTION_153_4();

      v63 = OUTLINED_FUNCTION_181_0();
      sub_1C8CACE04(v63, v64, v65);
      OUTLINED_FUNCTION_105_2();

      OUTLINED_FUNCTION_38_12();
      a21 = a14;
      a22 = a13;
      v66 = TransformableAction.debugDescription.getter();
      sub_1C8CACE04(v66, v67, &a20);
      OUTLINED_FUNCTION_152_3();

      OUTLINED_FUNCTION_239_1();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124_2(v68);
      OUTLINED_FUNCTION_237_2(&dword_1C8C9B000, v69, v70, "Session %s failed to convert action: %s due to error: %@");
      sub_1C8D16D78(v48, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v71 = OUTLINED_FUNCTION_19_16();
      MEMORY[0x1CCA833A0](v71);

      a19(v58, v60);
    }

    else
    {

      v113 = OUTLINED_FUNCTION_181_0();
      (v57)(v113);
    }

    v114 = *(v34 + 280);
    v115 = *(v34 + 288);
    v116 = *(v34 + 272);
    v117 = *(v34 + 248);
    swift_willThrow();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    a19 = v37;
    v72 = *(v34 + 296);
    v73 = *(v34 + 280);
    v74 = *(v34 + 248);
    v76 = *(v34 + 224);
    v75 = *(v34 + 232);
    v78 = *(v34 + 208);
    v77 = *(v34 + 216);
    v80 = *(v34 + 192);
    v79 = *(v34 + 200);
    sub_1C906371C();
    OUTLINED_FUNCTION_1_47();
    v81 = OUTLINED_FUNCTION_207_2();
    sub_1C8E1B5B4(v81, v82, v83);
    v84 = v79;
    v85 = OUTLINED_FUNCTION_107();
    sub_1C8E1B188(v85, v86);
    v87 = sub_1C9063D1C();
    LODWORD(v73) = sub_1C906446C();

    v88 = OUTLINED_FUNCTION_107();
    sub_1C8E1B1D8(v88, v89);
    LODWORD(a18) = v73;
    v90 = os_log_type_enabled(v87, v73);
    v91 = *(v34 + 304);
    v92 = *(v34 + 256);
    v93 = *(v34 + 264);
    v94 = *(v34 + 248);
    if (v90)
    {
      v95 = *(v34 + 200);
      a9 = *(v34 + 224);
      a10 = *(v34 + 208);
      *&a14 = *(v34 + 328);
      a13.n128_u64[0] = *(v34 + 320);
      a17 = *(v34 + 280);
      v96 = swift_slowAlloc();
      a16 = v92;
      a20 = OUTLINED_FUNCTION_183_4();
      *v96 = 136315650;
      v97 = [v95 debugDescription];
      sub_1C9063EEC();
      a12 = v93;
      OUTLINED_FUNCTION_209_0();

      v98 = OUTLINED_FUNCTION_245();
      v101 = sub_1C8CACE04(v98, v99, v100);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      ToolInvocation.debugDescription.getter();
      OUTLINED_FUNCTION_209_0();
      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v94, v102);
      v103 = OUTLINED_FUNCTION_245();
      sub_1C8CACE04(v103, v104, v105);
      OUTLINED_FUNCTION_123_3();

      *(v96 + 14) = v94;
      *(v96 + 22) = 2080;
      a21 = a10;
      a22 = a9;
      v106 = TransformableAction.debugDescription.getter();
      v108 = sub_1C8CACE04(v106, v107, &a20);

      *(v96 + 24) = v108;
      OUTLINED_FUNCTION_215_1();
      _os_log_impl(v109, v110, v111, v112, v96, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      sub_1C8CE7B78(a13.n128_i64[0], a14);
      sub_1C8CE7B78(v38, a19);

      v91(a17, v92);
    }

    else
    {
      sub_1C8CE7B78(*(v34 + 320), *(v34 + 328));
      sub_1C8CE7B78(v38, a19);

      OUTLINED_FUNCTION_0_52();
      sub_1C8E1B4B8(v94, v118);
      v119 = OUTLINED_FUNCTION_127();
      (v91)(v119);
    }

    v121 = *(v34 + 280);
    v120 = *(v34 + 288);
    v122 = *(v34 + 272);
    v123 = *(v34 + 248);

    OUTLINED_FUNCTION_7_10();
  }

  OUTLINED_FUNCTION_142_3();

  return v125(v124, v125, v126, v127, v128, v129, v130, v131, a9.n128_u64[0], a9.n128_u64[1], a10, *(&a10 + 1), a11, a12, a13.n128_u64[0], a13.n128_u64[1], a14, *(&a14 + 1), a15, a16, a17, a18, a19, a20, a21, *(&a21 + 1), a22.n128_u64[0], a22.n128_u64[1], a23, a24, a25, a26);
}

uint64_t sub_1C8E18A2C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  v3[1] = sub_1C8E1BB44;

  return sub_1C8E18ABC(v1, 1);
}

uint64_t sub_1C8E18ABC(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v4 = *(*(type metadata accessor for ToolExecutionResult(0) - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v5 = *(*(type metadata accessor for ToolInvocation() - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E18B7C, 0, 0);
}

uint64_t sub_1C8E18B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_202();
  v17 = *(v16 + 200);
  v18 = v17 + *(type metadata accessor for ToolExecutionResult.UndoContext(0) + 24);
  v19 = *(v18 + 8);
  if (v19)
  {
    v49 = *(v16 + 224);
    v20 = *(v16 + 248);
    v21 = *v18;

    sub_1C906478C();

    MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90CB1A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316480, &unk_1C9085140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C906BAE0;
    *(inited + 32) = 0x6F6974617265706FLL;
    *(inited + 40) = 0xE90000000000006ELL;
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v19;
    *(v23 + 32) = 0xD00000000000001CLL;
    *(v23 + 40) = 0x80000001C90CB1C0;
    if (v20)
    {
      v24 = 1868852853;
    }

    else
    {
      v24 = 1868850546;
    }

    v25 = type metadata accessor for TypedValue.EnumerationValue(0);
    swift_allocBox();
    OUTLINED_FUNCTION_97_4();
    v26 = *(v25 + 24);
    v27 = type metadata accessor for DisplayRepresentation(0);
    __swift_storeEnumTagSinglePayload(v21 + v26, 1, 1, v27);
    *v21 = v23 | 0x4000000000000000;
    v21[1] = v24;
    v21[2] = 0xE400000000000000;
    *(inited + 72) = &type metadata for TypedValue;
    *(inited + 80) = &protocol witness table for TypedValue;
    *(inited + 48) = v20 | 0x1000000000000000;
    *(inited + 88) = 0x6E656B6F74;
    *(inited + 96) = 0xE500000000000000;
    type metadata accessor for TypedValue.PrimitiveValue(0);
    swift_allocBox();
    OUTLINED_FUNCTION_97_4();
    *v21 = sub_1C906200C();
    v21[1] = v28;
    swift_storeEnumTagMultiPayload();
    *(inited + 128) = &type metadata for TypedValue;
    *(inited + 136) = &protocol witness table for TypedValue;
    *(inited + 104) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E78, &qword_1C907AA80);
    sub_1C9063E2C();
    ToolInvocation.init(localToolId:parameterValuesByKey:)();
    *(v16 + 192) = 0;
    *(v16 + 176) = 0u;
    *(v16 + 160) = 0u;
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v16 + 232) = v29;
    *v29 = v30;
    v29[1] = sub_1C8E18EF4;
    v31 = *(v16 + 216);
    v32 = *(v16 + 224);
    v33 = *(v16 + 208);
    OUTLINED_FUNCTION_128();

    return sub_1C8E096D4(v34, v35, v36);
  }

  else
  {
    type metadata accessor for ToolExecutorError(0);
    sub_1C8CBE304(&qword_1EC316478, type metadata accessor for ToolExecutorError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v40 = *(v16 + 216);
    v39 = *(v16 + 224);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_128();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C8E18EF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (v0)
  {
    sub_1C8D16D78(v3 + 160, &unk_1EC316490, &qword_1C9085158);
  }

  else
  {
    v9 = *(v3 + 216);
    sub_1C8D16D78(v3 + 160, &unk_1EC316490, &qword_1C9085158);
    OUTLINED_FUNCTION_30_15();
    sub_1C8E1B4B8(v9, v10);
  }

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C8E1902C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_0_52();
  sub_1C8E1B4B8(v2, v3);

  OUTLINED_FUNCTION_7_10();

  return v4();
}

uint64_t sub_1C8E1909C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[28];
  OUTLINED_FUNCTION_0_52();
  sub_1C8E1B4B8(v2, v3);
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t sub_1C8E1910C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_87_4(v2);
  *v3 = v4;
  v3[1] = sub_1C8E1BB44;

  return sub_1C8E18ABC(v1, 0);
}

uint64_t sub_1C8E191AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8E1BB44;

  return sub_1C8E096D4(a1, a2, a3);
}

uint64_t sub_1C8E1925C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8E1BB44;

  return sub_1C8E0E790(a1, a2, a3);
}

uint64_t sub_1C8E1930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8E1BB44;

  return sub_1C8E10D64(a1, a2, a3);
}

uint64_t sub_1C8E193BC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8E1BB44;

  return sub_1C8E129B0(a1, a2);
}

uint64_t sub_1C8E19464()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E19520;

  return sub_1C8E13D1C();
}

uint64_t sub_1C8E19520()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_377();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1C8E19610()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8E18A2C();
}

uint64_t sub_1C8E196A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8E1910C();
}

uint64_t sub_1C8E19738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8E167BC();
}

uint64_t sub_1C8E197E0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8E1BB44;

  return sub_1C8E1693C(a1, a2, a3);
}

uint64_t sub_1C8E19890(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C8E1BB44;

  return sub_1C8E1560C(a1, a2, a3, a4);
}

uint64_t sub_1C8E19950(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8E1BB44;

  return sub_1C8E17A68(a1, a2);
}

uint64_t sub_1C8E199F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8E1BB44;

  return sub_1C8E0E6AC(a1, a2);
}

uint64_t sub_1C8E19AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8E0E9F0();
}

uint64_t sub_1C8E19B50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8E1BB44;

  return sub_1C8E10B08(a1, a2);
}

uint64_t sub_1C8E19BF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB44;

  return sub_1C8E10FE4();
}

uint64_t sub_1C8E19CA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C8E1BB54;

  return sub_1C8E13B1C();
}

char *static ToolExecutor.simulateRunnerExitForSession<A>(_:)()
{
  type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = *&result[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client];

    return [v1 forTestingOnly_simulateXPCInterruption];
  }

  return result;
}

void sub_1C8E19DC4()
{
  sub_1C8E19F04();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C8E19F5C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1C906204C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C8E19F04()
{
  if (!qword_1EDA664B8)
  {
    type metadata accessor for ToolInvocation();
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA664B8);
    }
  }
}

void sub_1C8E19F5C()
{
  if (!qword_1EDA6B4C0)
  {
    v0 = sub_1C90634DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6B4C0);
    }
  }
}

uint64_t sub_1C8E19FAC()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_132_1();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_29_13(v5);

  return sub_1C8E14020(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C8E1A054()
{
  v0 = sub_1C9063CCC();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C9063C8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C9063CBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906340C();
  v32 = sub_1C906343C();
  v31 = v13;
  sub_1C906344C();
  v14 = sub_1C9063C9C();
  sub_1C9063CDC();
  v27 = sub_1C906452C();
  v15 = v14;
  result = sub_1C906461C();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  v24 = v12;
  v25 = v9;
  v26 = v4;
  if ((v31 & 1) == 0)
  {
    if (v32)
    {
      v17 = v14;
      v19 = v29;
      v18 = v30;
      v20 = v28;
LABEL_9:

      sub_1C9063D0C();

      if ((*(v19 + 88))(v20, v18) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v20, v18);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1C9063C6C();
      v15 = v17;
      _os_signpost_emit_with_name_impl(&dword_1C8C9B000, v17, v27, v23, v32, v21, v22, 2u);
      MEMORY[0x1CCA833A0](v22, -1, -1);
      v9 = v25;
      v4 = v26;
      v12 = v24;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v32))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    v17 = v14;
    v19 = v29;
    v18 = v30;
    v20 = v28;
    if (v32 >> 16 <= 0x10)
    {
      v32 = &v33;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C8E1A3EC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C8E1BB44;

  return v7();
}