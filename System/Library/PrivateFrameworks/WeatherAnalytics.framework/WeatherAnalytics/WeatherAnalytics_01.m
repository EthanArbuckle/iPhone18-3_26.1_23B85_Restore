uint64_t sub_220C0B348(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
          v14 = a3[8];
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0B4DC()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
          v12 = v2[8];
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0B66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C0B75C()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0B8B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220C0B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3A8, &unk_220CA8AC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C0B9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C3A8, &unk_220CA8AC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C0BAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C410, &qword_220CA8D20);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0BBDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C410, &qword_220CA8D20);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C0BCE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C0BD68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C0BE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0BEE8()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0BF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C0C03C()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C0C100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220C0C154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C588, &qword_220CA9390);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220C0C1E4(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v14 = a3[7];
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_220C0C328(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C630, &unk_220CA95E0);
      v18 = OUTLINED_FUNCTION_4(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v16 = a4[7];
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C0C474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v4 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C0C560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  v8 = sub_220CA0494();
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C0C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220C0C7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_220C0C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0C9BC()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0CAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24));
    if (v11 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = *(v3 + *(a3 + 24));
    }

    v13 = v12 - 4;
    if (v11 >= 4)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220C0CB5C()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 4;
  }

  return result;
}

uint64_t sub_220C0CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220C0CD58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C0CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220C0CF00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C0CFE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A0, &qword_220CAAE20);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A8, &qword_220CAAE28);
            v14 = a3[9];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0D1C8()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A0, &qword_220CAAE20);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C8A8, &qword_220CAAE28);
            v12 = v2[9];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0D3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220C0D44C()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C0D510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0D60C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C958, &qword_220CAB080);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C0D710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA04D4();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_220C0D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220CA04D4();
  result = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C0D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0DAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CA88, &qword_220CABA70);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C0DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C0DC50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C0DDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0DEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CBD0, &qword_220CAC480);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C0DFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA04D4();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_220C0E094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220CA04D4();
  result = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C0E1B8()
{
  OUTLINED_FUNCTION_13_4();
  v3 = type metadata accessor for GeocodeTaskFailedEvent();
  OUTLINED_FUNCTION_3_15(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_19_1();
  v11(v12);
  v13 = OUTLINED_FUNCTION_7_9();
  v11(v13);
  OUTLINED_FUNCTION_21_0();
  v14 = *(v2 + *(v0 + 36) + 8);

  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_220C0E29C()
{
  OUTLINED_FUNCTION_13_4();
  v2 = type metadata accessor for GeocodeTaskFailedEvent();
  OUTLINED_FUNCTION_3_15(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_19_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_7_9();
  v9(v11);
  OUTLINED_FUNCTION_21_0();
  v12 = *(v1 + *(v0 + 36) + 8);

  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_220C0E378()
{
  OUTLINED_FUNCTION_13_4();
  v1 = type metadata accessor for GeocodeTaskCompletedEvent();
  OUTLINED_FUNCTION_3_15(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_19_1();
  v9(v10);
  v11 = OUTLINED_FUNCTION_7_9();
  v9(v11);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_220C0E44C()
{
  OUTLINED_FUNCTION_13_4();
  v0 = type metadata accessor for GeocodeTaskCompletedEvent();
  OUTLINED_FUNCTION_3_15(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_19_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_7_9();
  v7(v9);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_220C0E6B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v14 = a3[9];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0E898()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v12 = v2[9];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C0EB64()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0ED04(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == v3)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == v3)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_220C0EF78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v18 = OUTLINED_FUNCTION_4(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF08, &qword_220CADE48);
        v21 = OUTLINED_FUNCTION_4(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
          v24 = OUTLINED_FUNCTION_4(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
            v27 = OUTLINED_FUNCTION_4(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[9];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CF10, &unk_220CADE50);
              v30 = OUTLINED_FUNCTION_4(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[10];
              }

              else
              {
                v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                v16 = a4[11];
              }
            }
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C0F1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, v3, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == v3)
  {
    v9 = v12;
    v10 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v4 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C0F2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  v8 = sub_220CA0494();
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return result;
    }

    v11 = result;
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_220C0F47C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
                v31 = OUTLINED_FUNCTION_4(v30);
                if (*(v32 + 84) == a2)
                {
                  v9 = v31;
                  v14 = a3[11];
                }

                else
                {
                  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
                  v34 = OUTLINED_FUNCTION_4(v33);
                  if (*(v35 + 84) == a2)
                  {
                    v9 = v34;
                    v14 = a3[12];
                  }

                  else
                  {
                    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
                    v37 = OUTLINED_FUNCTION_4(v36);
                    if (*(v38 + 84) == a2)
                    {
                      v9 = v37;
                      v14 = a3[13];
                    }

                    else
                    {
                      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                      v40 = OUTLINED_FUNCTION_4(v39);
                      if (*(v41 + 84) == a2)
                      {
                        v9 = v40;
                        v14 = a3[14];
                      }

                      else
                      {
                        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
                        v43 = OUTLINED_FUNCTION_4(v42);
                        if (*(v44 + 84) == a2)
                        {
                          v9 = v43;
                          v14 = a3[15];
                        }

                        else
                        {
                          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
                          v14 = a3[16];
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

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C0F870()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
              v26 = OUTLINED_FUNCTION_4(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[10];
              }

              else
              {
                v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
                v29 = OUTLINED_FUNCTION_4(v28);
                if (*(v30 + 84) == v3)
                {
                  v7 = v29;
                  v12 = v2[11];
                }

                else
                {
                  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFE8, &qword_220CAE150);
                  v32 = OUTLINED_FUNCTION_4(v31);
                  if (*(v33 + 84) == v3)
                  {
                    v7 = v32;
                    v12 = v2[12];
                  }

                  else
                  {
                    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF0, &unk_220CAE158);
                    v35 = OUTLINED_FUNCTION_4(v34);
                    if (*(v36 + 84) == v3)
                    {
                      v7 = v35;
                      v12 = v2[13];
                    }

                    else
                    {
                      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
                      v38 = OUTLINED_FUNCTION_4(v37);
                      if (*(v39 + 84) == v3)
                      {
                        v7 = v38;
                        v12 = v2[14];
                      }

                      else
                      {
                        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CFF8, &qword_220CAE168);
                        v41 = OUTLINED_FUNCTION_4(v40);
                        if (*(v42 + 84) == v3)
                        {
                          v7 = v41;
                          v12 = v2[15];
                        }

                        else
                        {
                          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D000, &qword_220CAE170);
                          v12 = v2[16];
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

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C0FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 28) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C0FD50()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 28) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C10044()
{
  OUTLINED_FUNCTION_13_4();
  v2 = type metadata accessor for VisibleLocationFailedLoadingEvent();
  OUTLINED_FUNCTION_3_15(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);

  v8 = v0[7];
  v9 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 8);
  v11(v1 + v4 + v8, v9);
  v11(v1 + v4 + v0[8], v9);
  v12 = *(v1 + v4 + v0[9] + 8);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_220C10140()
{
  OUTLINED_FUNCTION_13_4();
  v2 = type metadata accessor for VisibleLocationFailedLoadingEvent();
  OUTLINED_FUNCTION_3_15(v2);
  v5 = *(v4 + 64);
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = v0[7];
  v8 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 8);
  v10(v6 + v7, v8);
  v10(v6 + v0[8], v8);
  v11 = *(v6 + v0[9] + 8);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_220C10234()
{
  OUTLINED_FUNCTION_13_4();
  v2 = type metadata accessor for VisibleLocationFinishedLoadingEvent();
  OUTLINED_FUNCTION_3_15(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64) + v7;
  v9 = v1 + v7;
  v10 = *(v0 + 28);
  v11 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 8);
  v13(v9 + v10, v11);
  v13(v9 + *(v0 + 32), v11);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_220C104D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C10584()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C10630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  OUTLINED_FUNCTION_4(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_6_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_220C106D8()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C107C4@<X0>(uint64_t *a1@<X8>)
{
  result = SessionData.userSegmentationTreatmentIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_220C107F4@<X0>(uint64_t *a1@<X8>)
{
  result = SessionData.userSegmentationSegmentSetIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_220C10824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_220C10908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_220C10A58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C10CD0()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D320, &qword_220CAFF60);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D328, &qword_220CAFF68);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C898, &qword_220CAFF70);
              v26 = OUTLINED_FUNCTION_4(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[10];
              }

              else
              {
                v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D330, &qword_220CAFF78);
                v12 = v2[11];
              }
            }
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C10F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C11034()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C11164()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220C11214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C11310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C11414(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220CA04D4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220C1149C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220CA04D4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220C115BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C11670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C117B0()
{
  OUTLINED_FUNCTION_0_25();
  result = sub_220C9FD54();
  *v0 = v2;
  return result;
}

uint64_t sub_220C117D8()
{
  OUTLINED_FUNCTION_0_25();
  result = sub_220C9FD84();
  *v0 = v2;
  return result;
}

uint64_t sub_220C11800()
{
  OUTLINED_FUNCTION_0_25();
  result = sub_220C9FD64();
  *v0 = v2;
  return result;
}

uint64_t sub_220C11828()
{
  OUTLINED_FUNCTION_0_25();
  result = sub_220C9FD74();
  *v0 = v2;
  return result;
}

uint64_t sub_220C11850()
{
  OUTLINED_FUNCTION_0_25();
  result = sub_220C9FD44();
  *v0 = v2;
  return result;
}

uint64_t sub_220C118C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C1197C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C11A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C11B5C()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C11C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C11D44()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C11EAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220C11EEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220C11F3C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220C11F7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220C12010(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
                v31 = OUTLINED_FUNCTION_4(v30);
                if (*(v32 + 84) == a2)
                {
                  v9 = v31;
                  v14 = a3[11];
                }

                else
                {
                  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
                  v34 = OUTLINED_FUNCTION_4(v33);
                  if (*(v35 + 84) == a2)
                  {
                    v9 = v34;
                    v14 = a3[12];
                  }

                  else
                  {
                    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
                    v37 = OUTLINED_FUNCTION_4(v36);
                    if (*(v38 + 84) == a2)
                    {
                      v9 = v37;
                      v14 = a3[13];
                    }

                    else
                    {
                      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
                      v40 = OUTLINED_FUNCTION_4(v39);
                      if (*(v41 + 84) == a2)
                      {
                        v9 = v40;
                        v14 = a3[14];
                      }

                      else
                      {
                        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
                        v14 = a3[15];
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

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C123B8()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
              v26 = OUTLINED_FUNCTION_4(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[10];
              }

              else
              {
                v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
                v29 = OUTLINED_FUNCTION_4(v28);
                if (*(v30 + 84) == v3)
                {
                  v7 = v29;
                  v12 = v2[11];
                }

                else
                {
                  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
                  v32 = OUTLINED_FUNCTION_4(v31);
                  if (*(v33 + 84) == v3)
                  {
                    v7 = v32;
                    v12 = v2[12];
                  }

                  else
                  {
                    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
                    v35 = OUTLINED_FUNCTION_4(v34);
                    if (*(v36 + 84) == v3)
                    {
                      v7 = v35;
                      v12 = v2[13];
                    }

                    else
                    {
                      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
                      v38 = OUTLINED_FUNCTION_4(v37);
                      if (*(v39 + 84) == v3)
                      {
                        v7 = v38;
                        v12 = v2[14];
                      }

                      else
                      {
                        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
                        v12 = v2[15];
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

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C1275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220C12804()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  result = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_220C12940()
{
  v1 = (sub_220CA0A24() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 8))(v5);
  sub_220C04814(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 9));
  v8 = *(v0 + v4 + 16);

  return MEMORY[0x2821FE8E8](v0, v4 + 29, v2 | 7);
}

uint64_t sub_220C12A40()
{
  v1 = *(sub_220CA09D4() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 80);
  v8 = (v4 + v3 + v7 + 2) & ~v7;
  v10 = *(v9 + 64);
  v11 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      v12 = sub_220CA0684();
      OUTLINED_FUNCTION_1(v12);
      (*(v13 + 8))(v11);
      break;
    case 0x12u:
      v17 = sub_220CA0684();
      OUTLINED_FUNCTION_1(v17);
      (*(v18 + 8))(v11);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF20, &unk_220CA6BA0);
      v20 = *(v11 + *(v19 + 48));

      v21 = *(v19 + 64);
      v22 = sub_220CA07F4();
      if (!__swift_getEnumTagSinglePayload(v11 + v21, 1, v22))
      {
        (*(*(v22 - 8) + 8))(v11 + v21);
      }

      break;
    default:
      break;
  }

  v14 = sub_220CA0994();
  if (!__swift_getEnumTagSinglePayload(v0 + v8, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v0 + v8, v14);
  }

  v15 = (v10 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + v15 + 8);

  return MEMORY[0x2821FE8E8](v0, v15 + 21, v2 | v7 | 7);
}

uint64_t sub_220C12D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C12E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  v9 = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v14 = OUTLINED_FUNCTION_4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220C12F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220CA04D4();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  else
  {
    v12 = *(v3 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_220C12FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220CA04D4();
  result = OUTLINED_FUNCTION_4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C130D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220C13184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220C132B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v12 = OUTLINED_FUNCTION_4(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v16 = OUTLINED_FUNCTION_4(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        v19 = OUTLINED_FUNCTION_4(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          v22 = OUTLINED_FUNCTION_4(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v25 = OUTLINED_FUNCTION_4(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[9];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              v28 = OUTLINED_FUNCTION_4(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[10];
              }

              else
              {
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v14 = a3[11];
              }
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220C13528()
{
  OUTLINED_FUNCTION_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
    v10 = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
      v14 = OUTLINED_FUNCTION_4(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
        v17 = OUTLINED_FUNCTION_4(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
          v20 = OUTLINED_FUNCTION_4(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
            v23 = OUTLINED_FUNCTION_4(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[9];
            }

            else
            {
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
              v26 = OUTLINED_FUNCTION_4(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[10];
              }

              else
              {
                v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
                v12 = v2[11];
              }
            }
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t sub_220C1379C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220CA0494();
  v7 = OUTLINED_FUNCTION_4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220CA04D4();
  v12 = OUTLINED_FUNCTION_4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220C1388C()
{
  OUTLINED_FUNCTION_15();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_220CA04D4();
    result = OUTLINED_FUNCTION_4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

uint64_t WeatherJSONData.json.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WeatherJSONData.json.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C13D88(uint64_t a1, uint64_t a2)
{
  if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C13E28()
{
  sub_220CA11F4();
  MEMORY[0x223D95580](0);
  return sub_220CA1214();
}

uint64_t sub_220C13E94()
{
  sub_220CA11F4();
  MEMORY[0x223D95580](0);
  return sub_220CA1214();
}

uint64_t sub_220C13ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C13D88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C13F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220BFE610();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220C13F4C(uint64_t a1)
{
  v2 = sub_220C14138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C13F88(uint64_t a1)
{
  v2 = sub_220C14138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherJSONData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5A0, &qword_220CA1980);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C14138();
  sub_220CA1254();
  sub_220CA10C4();
  return (*(v7 + 8))(v11, v2);
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

unint64_t sub_220C14138()
{
  result = qword_27CF7B5A8;
  if (!qword_27CF7B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5A8);
  }

  return result;
}

uint64_t WeatherJSONData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5B0, &qword_220CA1988);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C14138();
  sub_220CA1234();
  if (!v2)
  {
    v15 = sub_220CA0FF4();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C142F4()
{
  result = qword_27CF7B5B8;
  if (!qword_27CF7B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5B8);
  }

  return result;
}

unint64_t sub_220C1434C()
{
  result = qword_27CF7B5C0;
  if (!qword_27CF7B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5C0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_220C14410(uint64_t a1, int a2)
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

uint64_t sub_220C14450(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LocationData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherJSONData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C14594()
{
  result = qword_27CF7B5C8;
  if (!qword_27CF7B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5C8);
  }

  return result;
}

unint64_t sub_220C145EC()
{
  result = qword_27CF7B5D0;
  if (!qword_27CF7B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5D0);
  }

  return result;
}

unint64_t sub_220C14644()
{
  result = qword_27CF7B5D8;
  if (!qword_27CF7B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationListPositionData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocationListPositionData(uint64_t result, int a2, int a3)
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

WeatherAnalytics::LocationCondition_optional __swiftcall LocationCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA1194();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t LocationCondition.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      return 0x6F64616E726F74;
    case 2:
      return 0x6C616369706F7274;
    case 3:
      return 0x6E61636972727568;
    case 4:
    case 0x29:
      OUTLINED_FUNCTION_0_4();
      return v5 + 1;
    case 5:
      return 0x737265646E756874;
    case 6:
    case 0x24:
    case 0x2D:
      OUTLINED_FUNCTION_0_4();
      return v6 - 1;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0xD000000000000011;
    case 9:
    case 0xB:
      return 0x676E697A65657266;
    case 0xA:
      return 0x656C7A7A697264;
    case 0xC:
      return 0x737265776F6873;
    case 0xD:
      return 1852399986;
    case 0xE:
      return 0x72756C46776F6E73;
    case 0xF:
      return 0x776F6853776F6E73;
    case 0x10:
      return 0x53676E69776F6C62;
    case 0x11:
      return 2003791475;
    case 0x12:
      return 1818845544;
    case 0x13:
      return 0x7465656C73;
    case 0x14:
      return 0x657A614874737564;
    case 0x15:
      v2 = 1734831974;
      goto LABEL_39;
    case 0x16:
      return 1702519144;
    case 0x17:
      v2 = 1802464627;
      goto LABEL_39;
    case 0x18:
      return 0x7972657473756C62;
    case 0x19:
      v2 = 1684957559;
      goto LABEL_39;
    case 0x1A:
      return 1684828003;
    case 0x1B:
      return 0x7364756F6C63;
    case 0x1C:
      return 0xD000000000000011;
    case 0x1D:
      v4 = 1953722221;
      goto LABEL_43;
    case 0x1E:
      return 0xD000000000000011;
    case 0x1F:
      v4 = 1953653104;
LABEL_43:
      result = v4 | 0x6C43796C00000000;
      break;
    case 0x20:
      result = 0x67694E7261656C63;
      break;
    case 0x21:
      v2 = 1852732787;
LABEL_39:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 0x22:
      result = 0x6867694E72696166;
      break;
    case 0x23:
      result = 0x79614472696166;
      break;
    case 0x25:
      result = 7630696;
      break;
    case 0x26:
    case 0x2E:
      OUTLINED_FUNCTION_0_4();
      result = v9 | 4;
      break;
    case 0x27:
    case 0x2F:
      OUTLINED_FUNCTION_0_4();
      result = v7 + 5;
      break;
    case 0x28:
      OUTLINED_FUNCTION_0_4();
      result = v3 + 9;
      break;
    case 0x2A:
      OUTLINED_FUNCTION_0_4();
      result = v8 + 3;
      break;
    case 0x2B:
      result = 0x6F6E537976616568;
      break;
    case 0x2C:
      result = 0x6472617A7A696C62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C14DA0()
{
  result = qword_27CF7B5E0;
  if (!qword_27CF7B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5E0);
  }

  return result;
}

uint64_t sub_220C14E18@<X0>(uint64_t *a1@<X8>)
{
  result = LocationCondition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C1505C()
{
  result = qword_27CF7B5E8;
  if (!qword_27CF7B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B5E8);
  }

  return result;
}

uint64_t LocationAccessDataProvider.__allocating_init(locationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_220BF9210(a1, v2 + 16);
  return v2;
}

uint64_t LocationAccessDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220C15240()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0018);
  __swift_project_value_buffer(v0, qword_2812D0018);
  return sub_220CA0244();
}

uint64_t AppSessionEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t AppSessionEndEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.orientationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_10() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AppSessionEndEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.temperatureScaleData.setter()
{
  v0 = *(OUTLINED_FUNCTION_10() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AppSessionEndEvent.sessionEndData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.sessionEndData.setter()
{
  v0 = *(OUTLINED_FUNCTION_10() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AppSessionEndEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_10() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AppSessionEndEvent.notificationSettingsData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.notificationSettingsData.setter()
{
  v0 = *(OUTLINED_FUNCTION_10() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for AppSessionEndEvent(0);
  v6 = v5[5];
  v7 = *MEMORY[0x277CEACF0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v8);
  (*(v9 + 104))(a1 + v6, v7);
  v10 = v5[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 104))(a1 + v10, v7);
  v13 = v5[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B608, &qword_220CA1EA8);
  OUTLINED_FUNCTION_0_0(v14);
  (*(v15 + 104))(a1 + v13, v2);
  v16 = v5[8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v17);
  (*(v18 + 104))(a1 + v16, v2);
  v19 = v5[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B618, &qword_220CA1EB8);
  OUTLINED_FUNCTION_0_0(v20);
  v22 = *(v21 + 104);

  return v22(a1 + v19, v7);
}

uint64_t AppSessionEndEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t AppSessionEndEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppSessionEndEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t AppSessionEndEvent.Model.sessionEndData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppSessionEndEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for AppSessionEndEvent.Model(v0) + 32);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t AppSessionEndEvent.Model.notificationSettingsData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for AppSessionEndEvent.Model(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 4);
  *v0 = v5;
  return result;
}

uint64_t AppSessionEndEvent.Model.init(eventData:orientationData:temperatureScaleData:sessionEndData:timedData:notificationSettingsData:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a6;
  v14 = *(a6 + 4);
  v15 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v15);
  (*(v16 + 32))(a7, a1);
  v17 = type metadata accessor for AppSessionEndEvent.Model(0);
  *(a7 + v17[5]) = v10;
  *(a7 + v17[6]) = v11;
  *(a7 + v17[7]) = v12;
  v18 = v17[8];
  v19 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v19);
  result = (*(v20 + 32))(a7 + v18, a5);
  v22 = a7 + v17[9];
  *(v22 + 4) = v14;
  *v22 = v13;
  return result;
}

uint64_t sub_220C15DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x456E6F6973736573 && a2 == 0xEE0061746144646ELL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x8000000220CB4BB0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_220CA1154();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C16020(unsigned __int8 a1)
{
  sub_220CA11F4();
  MEMORY[0x223D95580](a1);
  return sub_220CA1214();
}

uint64_t sub_220C16068(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x746E6569726FLL;
      goto LABEL_4;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x456E6F6973736573;
      break;
    case 4:
      v3 = 0x4464656D6974;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C16158()
{
  v1 = *v0;
  sub_220CA11F4();
  MEMORY[0x223D95580](v1);
  return sub_220CA1214();
}

uint64_t sub_220C161A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C15DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C161EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C15FE0();
  *a1 = result;
  return result;
}

uint64_t sub_220C16214(uint64_t a1)
{
  v2 = sub_220C16540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C16250(uint64_t a1)
{
  v2 = sub_220C16540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B620, &qword_220CA1EC0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C16540();
  sub_220CA1254();
  v33 = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_16();
  if (!v2)
  {
    v16 = type metadata accessor for AppSessionEndEvent.Model(0);
    v32 = *(v3 + v16[5]);
    v31 = 1;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
    v30 = *(v3 + v16[6]);
    v29 = 2;
    sub_220BFF604();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
    v28 = *(v3 + v16[7]);
    v27 = 3;
    sub_220C06B24();
    OUTLINED_FUNCTION_9();
    sub_220CA1104();
    v17 = v16[8];
    v26 = 4;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_16();
    v20 = (v3 + v16[9]);
    v21 = *v20;
    v25 = *(v20 + 4);
    v24 = v21;
    v23[15] = 5;
    sub_220C04388();
    OUTLINED_FUNCTION_9();
    sub_220CA1094();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C16540()
{
  result = qword_2812D0008;
  if (!qword_2812D0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0008);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220CA04D4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v38 = v6;
  v39 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v11 = v10 - v9;
  v12 = sub_220CA0494();
  v13 = OUTLINED_FUNCTION_3(v12);
  v43 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v19 = v18 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B628, &qword_220CA1EC8);
  v20 = OUTLINED_FUNCTION_3(v41);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v40 = type metadata accessor for AppSessionEndEvent.Model(0);
  v23 = OUTLINED_FUNCTION_1(v40);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v42 = v27 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C16540();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v29, v30);
  sub_220CA1034();
  (*(v43 + 32))(v42, v19, v12);
  sub_220BFE564();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  *(v42 + v40[5]) = v48;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  *(v42 + v40[6]) = v47;
  sub_220C06AD0();
  OUTLINED_FUNCTION_8_0();
  sub_220CA1034();
  *(v42 + v40[7]) = v46;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v31, v32);
  sub_220CA1034();
  (*(v38 + 32))(v42 + v40[8], v11, v39);
  sub_220C04330();
  OUTLINED_FUNCTION_8_0();
  sub_220CA0FC4();
  v33 = OUTLINED_FUNCTION_12();
  v34(v33);
  v35 = v42 + v40[9];
  *(v35 + 4) = v45;
  *v35 = v44;
  sub_220C16AE4(v42, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C16B48(v42);
}

uint64_t sub_220C16AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C16B48(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C16C60()
{
  sub_220CA0494();
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812D03E8);
    if (v1 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_2812CFC28);
      if (v2 <= 0x3F)
      {
        sub_220CA04D4();
        if (v3 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_2812CF648);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppSessionEndEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C16E44()
{
  result = qword_27CF7B630;
  if (!qword_27CF7B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B630);
  }

  return result;
}

unint64_t sub_220C16E9C()
{
  result = qword_2812CFFF8;
  if (!qword_2812CFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFFF8);
  }

  return result;
}

unint64_t sub_220C16EF4()
{
  result = qword_2812D0000;
  if (!qword_2812D0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0000);
  }

  return result;
}

WeatherAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_220C16FA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3A7D4();
}

unint64_t sub_220C16FB4()
{
  result = qword_27CF7B638;
  if (!qword_27CF7B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B638);
  }

  return result;
}

uint64_t sub_220C170CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C17158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C170CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C17184(uint64_t a1)
{
  v2 = sub_220C1733C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C171C0(uint64_t a1)
{
  v2 = sub_220C1733C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoarseLocationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B640, &qword_220CA2240);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1733C();
  sub_220CA1254();
  v15 = v11;
  sub_220C17390();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C1733C()
{
  result = qword_2812CFEA0[0];
  if (!qword_2812CFEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CFEA0);
  }

  return result;
}

unint64_t sub_220C17390()
{
  result = qword_2812CFCA0[0];
  if (!qword_2812CFCA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CFCA0);
  }

  return result;
}

uint64_t CoarseLocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B648, &qword_220CA2248);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1733C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C17544();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C17544()
{
  result = qword_27CF7B650;
  if (!qword_27CF7B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B650);
  }

  return result;
}

unint64_t sub_220C1759C()
{
  result = qword_2812CFE80;
  if (!qword_2812CFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE80);
  }

  return result;
}

unint64_t sub_220C175F4()
{
  result = qword_2812CFE88;
  if (!qword_2812CFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoarseLocationStatus(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CoarseLocationData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CoarseLocationData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C1787C()
{
  result = qword_27CF7B658;
  if (!qword_27CF7B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B658);
  }

  return result;
}

unint64_t sub_220C178D4()
{
  result = qword_2812CFE90;
  if (!qword_2812CFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE90);
  }

  return result;
}

unint64_t sub_220C1792C()
{
  result = qword_2812CFE98;
  if (!qword_2812CFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFE98);
  }

  return result;
}

WeatherAnalytics::WindFeedback_optional __swiftcall WindFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WindFeedback.rawValue.getter()
{
  v1 = 0x74726F7065527361;
  if (*v0 != 1)
  {
    v1 = 1936942444;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701998445;
  }
}

unint64_t sub_220C17A3C()
{
  result = qword_27CF7B660;
  if (!qword_27CF7B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B660);
  }

  return result;
}

uint64_t sub_220C17AB4@<X0>(uint64_t *a1@<X8>)
{
  result = WindFeedback.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WindFeedback(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C17C68()
{
  result = qword_27CF7B668;
  if (!qword_27CF7B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B668);
  }

  return result;
}

uint64_t AppData.appVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppData.appBuildNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppData.appBuildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_220C17DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C17EEC(char a1)
{
  sub_220CA11F4();
  MEMORY[0x223D95580](a1 & 1);
  return sub_220CA1214();
}

uint64_t sub_220C17F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C17DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C17F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C17EAC();
  *a1 = result;
  return result;
}

uint64_t sub_220C17FA0(uint64_t a1)
{
  v2 = sub_220BFFBE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C17FDC(uint64_t a1)
{
  v2 = sub_220BFFBE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B678, &qword_220CA2578);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220BFFBE4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v14 = sub_220CA0FF4();
  v16 = v15;
  v24 = 1;
  v17 = sub_220CA0FF4();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C18224(uint64_t a1, int a2)
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

uint64_t sub_220C18264(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C18380()
{
  result = qword_27CF7B680;
  if (!qword_27CF7B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B680);
  }

  return result;
}

uint64_t sub_220C18504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706552796E6E7573 && a2 == 0xEB0000000074726FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000220CB4BD0 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F7065526E696172 && a2 == 0xEA00000000007472;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7065527465656C73 && a2 == 0xEB0000000074726FLL;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F706552776F6E73 && a2 == 0xEA00000000007472)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_220C186C8(char a1)
{
  result = 0x706552796E6E7573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 1852399986;
      goto LABEL_5;
    case 3:
      result = 0x7065527465656C73;
      break;
    case 4:
      v3 = 2003791475;
LABEL_5:
      result = v3 | 0x6F70655200000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C18504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C18794@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C186C0();
  *a1 = result;
  return result;
}

uint64_t sub_220C187BC(uint64_t a1)
{
  v2 = sub_220C18A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C187F8(uint64_t a1)
{
  v2 = sub_220C18A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConditionsFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B688, &qword_220CA2780);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - v10;
  v12 = *v1;
  v13 = v1[1];
  v23 = v1[2];
  v24 = v13;
  v14 = v1[3];
  v21 = v1[4];
  v22 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C18A4C();
  sub_220CA1254();
  v33 = 0;
  sub_220CA10D4();
  if (!v2)
  {
    v17 = v22;
    v16 = v23;
    v18 = v21;
    v32 = v24;
    v31 = 1;
    sub_220C18AA0();
    sub_220CA1094();
    v30 = v16;
    v29 = 2;
    sub_220C18AF4();
    OUTLINED_FUNCTION_1_0();
    v28 = v17;
    v27 = 3;
    OUTLINED_FUNCTION_1_0();
    v26 = v18;
    v25 = 4;
    OUTLINED_FUNCTION_1_0();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C18A4C()
{
  result = qword_27CF7B690;
  if (!qword_27CF7B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B690);
  }

  return result;
}

unint64_t sub_220C18AA0()
{
  result = qword_27CF7B698;
  if (!qword_27CF7B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B698);
  }

  return result;
}

unint64_t sub_220C18AF4()
{
  result = qword_27CF7B6A0;
  if (!qword_27CF7B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6A0);
  }

  return result;
}

uint64_t ConditionsFeedbackData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6A8, &qword_220CA2788);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C18A4C();
  sub_220CA1234();
  if (!v2)
  {
    v29 = 0;
    v14 = sub_220CA1004();
    v27 = 1;
    sub_220C18DA0();
    sub_220CA0FC4();
    v20 = v28;
    v25 = 2;
    sub_220C18DF4();
    OUTLINED_FUNCTION_0_5();
    v19 = v26;
    v23 = 3;
    OUTLINED_FUNCTION_0_5();
    v18 = v24;
    v21 = 4;
    OUTLINED_FUNCTION_0_5();
    (*(v8 + 8))(v12, v5);
    v16 = v22;
    *a2 = v14 & 1;
    v17 = v19;
    a2[1] = v20;
    a2[2] = v17;
    a2[3] = v18;
    a2[4] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C18DA0()
{
  result = qword_27CF7B6B0;
  if (!qword_27CF7B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6B0);
  }

  return result;
}

unint64_t sub_220C18DF4()
{
  result = qword_27CF7B6B8;
  if (!qword_27CF7B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6B8);
  }

  return result;
}

unint64_t sub_220C18E4C()
{
  result = qword_27CF7B6C0;
  if (!qword_27CF7B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6C0);
  }

  return result;
}

unint64_t sub_220C18EA4()
{
  result = qword_27CF7B6C8;
  if (!qword_27CF7B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionsFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C190A8()
{
  result = qword_27CF7B6D0;
  if (!qword_27CF7B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6D0);
  }

  return result;
}

unint64_t sub_220C19100()
{
  result = qword_27CF7B6D8;
  if (!qword_27CF7B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6D8);
  }

  return result;
}

unint64_t sub_220C19158()
{
  result = qword_27CF7B6E0;
  if (!qword_27CF7B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6E0);
  }

  return result;
}

uint64_t sub_220C19274()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812D0378);
  __swift_project_value_buffer(v0, qword_2812D0378);
  return sub_220CA0244();
}

uint64_t FirstLaunchEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t FirstLaunchEvent.data.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t FirstLaunchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6E8, &qword_220CA29A0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t FirstLaunchEvent.Model.data.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(a1, v1, 0x60uLL);
  return sub_220C194BC(__dst, &v4);
}

uint64_t sub_220C19528(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C195B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C19528(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C195E0(uint64_t a1)
{
  v2 = sub_220C197E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1961C(uint64_t a1)
{
  v2 = sub_220C197E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FirstLaunchEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B6F0, &qword_220CA29A8);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14[-v9 - 8];
  memcpy(__dst, v1, 0x60uLL);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C194BC(__dst, v15);
  sub_220C197E0();
  sub_220CA1254();
  memcpy(v15, __dst, sizeof(v15));
  sub_220C19834();
  sub_220CA1104();
  memcpy(v14, v15, sizeof(v14));
  sub_220C19888(v14);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C197E0()
{
  result = qword_27CF7B6F8;
  if (!qword_27CF7B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B6F8);
  }

  return result;
}

unint64_t sub_220C19834()
{
  result = qword_2812CFC78;
  if (!qword_2812CFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC78);
  }

  return result;
}

uint64_t FirstLaunchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B700, &qword_220CA29B0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &__src[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C197E0();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C19A48();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    memcpy(a2, __src, 0x60uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C19A48()
{
  result = qword_2812CFC70;
  if (!qword_2812CFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC70);
  }

  return result;
}

uint64_t type metadata accessor for FirstLaunchEvent()
{
  result = qword_2812D0338;
  if (!qword_2812D0338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220C19B50()
{
  sub_220C19BBC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220C19BBC()
{
  if (!qword_2812D0E78)
  {
    sub_220C19A48();
    sub_220C19834();
    v0 = sub_220CA0044();
    if (!v1)
    {
      atomic_store(v0, &qword_2812D0E78);
    }
  }
}

uint64_t sub_220C19C2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_220C19C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FirstLaunchEvent.Model.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C19D84()
{
  result = qword_27CF7B708;
  if (!qword_27CF7B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B708);
  }

  return result;
}

unint64_t sub_220C19DDC()
{
  result = qword_27CF7B710;
  if (!qword_27CF7B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B710);
  }

  return result;
}

unint64_t sub_220C19E34()
{
  result = qword_27CF7B718;
  if (!qword_27CF7B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B718);
  }

  return result;
}

WeatherAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_220C19EE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3ADCC();
}

unint64_t sub_220C19EF4()
{
  result = qword_27CF7B720;
  if (!qword_27CF7B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterfaceOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t LocationViewLoadPerfLogData.dataFirstAppearedDate.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t LocationViewLoadPerfLogData.dataFirstAppearedDate.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t LocationViewLoadPerfLogData.firstWeatherDataAge.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t LocationViewLoadPerfLogData.firstWeatherDataAge.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t LocationViewLoadPerfLogData.init(offlineDuration:emptyDuration:populatedDuration:dataFirstAppearedDate:firstWeatherDataAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

uint64_t sub_220C1A1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44656E696C66666FLL && a2 == 0xEF6E6F6974617275;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7275447974706D65 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000220CB4BF0 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000220CB4C10 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x8000000220CB4C30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_220C1A380(char a1)
{
  result = 0x44656E696C66666FLL;
  switch(a1)
  {
    case 1:
      result = 0x7275447974706D65;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1A1C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1A478(uint64_t a1)
{
  v2 = sub_220C1A6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1A4B4(uint64_t a1)
{
  v2 = sub_220C1A6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationViewLoadPerfLogData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B728, &qword_220CA2D20);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[3];
  v21 = v1[2];
  v22 = v12;
  v20 = v14;
  v19 = *(v1 + 32);
  v18 = v1[5];
  v17[1] = *(v1 + 48);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1A6EC();
  sub_220CA1254();
  v27 = 0;
  OUTLINED_FUNCTION_1_1();
  sub_220CA1124();
  if (!v2)
  {
    v26 = 1;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1124();
    v25 = 2;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1124();
    v24 = 3;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10B4();
    v23 = 4;
    OUTLINED_FUNCTION_1_1();
    sub_220CA10B4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C1A6EC()
{
  result = qword_27CF7B730;
  if (!qword_27CF7B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B730);
  }

  return result;
}

uint64_t LocationViewLoadPerfLogData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B738, &qword_220CA2D28);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1A6EC();
  sub_220CA1234();
  if (!v2)
  {
    v32 = 0;
    OUTLINED_FUNCTION_0_6();
    v14 = sub_220CA1054();
    v31 = 1;
    OUTLINED_FUNCTION_0_6();
    v15 = sub_220CA1054();
    v30 = 2;
    OUTLINED_FUNCTION_0_6();
    v27 = sub_220CA1054();
    v29 = 3;
    OUTLINED_FUNCTION_0_6();
    v16 = sub_220CA0FE4();
    v25 = v17;
    v26 = v16;
    v28 = 4;
    OUTLINED_FUNCTION_0_6();
    v19 = sub_220CA0FE4();
    v20 = v12;
    v22 = v21;
    (*(v8 + 8))(v20, v5);
    *a2 = v14;
    *(a2 + 8) = v15;
    v23 = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = v23;
    *(a2 + 32) = v25 & 1;
    *(a2 + 40) = v19;
    *(a2 + 48) = v22 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_220C1A9A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220C1A9C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewLoadPerfLogData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C1AAF0()
{
  result = qword_27CF7B740;
  if (!qword_27CF7B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B740);
  }

  return result;
}

unint64_t sub_220C1AB48()
{
  result = qword_27CF7B748;
  if (!qword_27CF7B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B748);
  }

  return result;
}

unint64_t sub_220C1ABA0()
{
  result = qword_27CF7B750;
  if (!qword_27CF7B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B750);
  }

  return result;
}

uint64_t sub_220C1AC40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C1ACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1AC40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C1ACF8(uint64_t a1)
{
  v2 = sub_220C1AEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1AD34(uint64_t a1)
{
  v2 = sub_220C1AEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapOriginationData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B758, &qword_220CA2F40);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1AEB0();
  sub_220CA1254();
  v15 = v11;
  sub_220C1AF04();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C1AEB0()
{
  result = qword_27CF7B760;
  if (!qword_27CF7B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B760);
  }

  return result;
}

unint64_t sub_220C1AF04()
{
  result = qword_27CF7B768;
  if (!qword_27CF7B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B768);
  }

  return result;
}

uint64_t MapOriginationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B770, &qword_220CA2F48);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1AEB0();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C1B0B8();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C1B0B8()
{
  result = qword_27CF7B778;
  if (!qword_27CF7B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B778);
  }

  return result;
}

unint64_t sub_220C1B110()
{
  result = qword_27CF7B780;
  if (!qword_27CF7B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B780);
  }

  return result;
}

unint64_t sub_220C1B168()
{
  result = qword_27CF7B788;
  if (!qword_27CF7B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B788);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOriginationData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MapOriginationData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C1B378()
{
  result = qword_27CF7B790;
  if (!qword_27CF7B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B790);
  }

  return result;
}

unint64_t sub_220C1B3D0()
{
  result = qword_27CF7B798;
  if (!qword_27CF7B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B798);
  }

  return result;
}

unint64_t sub_220C1B428()
{
  result = qword_27CF7B7A0;
  if (!qword_27CF7B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B7A0);
  }

  return result;
}

uint64_t sub_220C1B544()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7B7D8);
  __swift_project_value_buffer(v0, qword_27CF7B7D8);
  return sub_220CA0244();
}

uint64_t TemperatureScaleChangeEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t TemperatureScaleChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t TemperatureScaleChangeEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for TemperatureScaleChangeEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t TemperatureScaleChangeEvent.temperatureScaleData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for TemperatureScaleChangeEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*TemperatureScaleChangeEvent.temperatureScaleData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for TemperatureScaleChangeEvent(v0) + 20);
  return nullsub_1;
}

uint64_t TemperatureScaleChangeEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for TemperatureScaleChangeEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t TemperatureScaleChangeEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for TemperatureScaleChangeEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*TemperatureScaleChangeEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for TemperatureScaleChangeEvent(v0) + 24);
  return nullsub_1;
}

uint64_t TemperatureScaleChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for TemperatureScaleChangeEvent(0);
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t TemperatureScaleChangeEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t TemperatureScaleChangeEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for TemperatureScaleChangeEvent.Model(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t TemperatureScaleChangeEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for TemperatureScaleChangeEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t TemperatureScaleChangeEvent.Model.init(eventData:temperatureScaleData:privateUserData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v11);
  (*(v12 + 32))(a4, a1);
  result = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  v14 = a4 + *(result + 24);
  *v14 = v7;
  *(v14 + 8) = v8;
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  return result;
}

uint64_t sub_220C1BC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C1BD30(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C1BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1BC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1BDCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1BD28();
  *a1 = result;
  return result;
}

uint64_t sub_220C1BDF4(uint64_t a1)
{
  v2 = sub_220C1C08C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1BE30(uint64_t a1)
{
  v2 = sub_220C1C08C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureScaleChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F8, &qword_220CA3158);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1C08C();
  sub_220CA1254();
  LOBYTE(v21) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    v14 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
    LOBYTE(v21) = *(v3 + *(v14 + 20));
    v25 = 1;
    sub_220BFF604();
    sub_220CA1104();
    v15 = (v3 + *(v14 + 24));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 4);
    LOBYTE(v15) = *(v15 + 20);
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v24 = v15;
    v25 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C1C08C()
{
  result = qword_27CF7B800;
  if (!qword_27CF7B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B800);
  }

  return result;
}

uint64_t TemperatureScaleChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v34 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B808, &qword_220CA3160);
  v11 = OUTLINED_FUNCTION_3(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1C08C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v22 = v34;
  LOBYTE(v38) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  v23 = v35;
  sub_220CA1034();
  (*(v22 + 32))(v20, v23, v4);
  v42 = 1;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_4_2();
  v20[*(v15 + 20)] = v38;
  v42 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_2();
  v24 = OUTLINED_FUNCTION_3_1();
  v25(v24);
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = &v20[*(v15 + 24)];
  *v29 = v38;
  *(v29 + 1) = v26;
  *(v29 + 4) = v27;
  v29[20] = v28;
  sub_220C1C424(v20, v33);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_220C1C488(v20);
}

uint64_t sub_220C1C424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C1C488(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureScaleChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C1C54C()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C1C658(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604);
    if (v1 <= 0x3F)
    {
      sub_220C1C658(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C1C658(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220C1C6FC()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleChangeEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C1C860()
{
  result = qword_27CF7B830;
  if (!qword_27CF7B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B830);
  }

  return result;
}

unint64_t sub_220C1C8B8()
{
  result = qword_27CF7B838;
  if (!qword_27CF7B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B838);
  }

  return result;
}

unint64_t sub_220C1C910()
{
  result = qword_27CF7B840;
  if (!qword_27CF7B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B840);
  }

  return result;
}

uint64_t sub_220C1CA2C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812CF3E8);
  __swift_project_value_buffer(v0, qword_2812CF3E8);
  return sub_220CA0244();
}

uint64_t FollowingLocationListEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t FollowingLocationListEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t FollowingLocationListEvent.followingLocationListData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t FollowingLocationListEvent.followingLocationListData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*FollowingLocationListEvent.followingLocationListData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 20);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t FollowingLocationListEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*FollowingLocationListEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 24);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.coarseLocationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t FollowingLocationListEvent.coarseLocationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for FollowingLocationListEvent(v2) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*FollowingLocationListEvent.coarseLocationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for FollowingLocationListEvent(v0) + 28);
  return nullsub_1;
}

uint64_t FollowingLocationListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for FollowingLocationListEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B848, &unk_220CA3388);
  OUTLINED_FUNCTION_0_0(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = v5[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v10);
  (*(v11 + 104))(a1 + v9, v2);
  v12 = v5[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B850, &qword_220CA3398);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);

  return v15(a1 + v12, v2);
}

uint64_t FollowingLocationListEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t FollowingLocationListEvent.Model.followingLocationListData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for FollowingLocationListEvent.Model(v2) + 20));
  v4 = *v3;
  LODWORD(v3) = *(v3 + 2);
  *v0 = v4;
  *(v0 + 8) = v3;
}

uint64_t FollowingLocationListEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for FollowingLocationListEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t FollowingLocationListEvent.Model.coarseLocationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for FollowingLocationListEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

int *FollowingLocationListEvent.Model.init(eventData:followingLocationListData:privateUserData:coarseLocationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 4);
  v12 = *(a3 + 20);
  v13 = *a4;
  v14 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v14);
  (*(v15 + 32))(a5, a1);
  result = type metadata accessor for FollowingLocationListEvent.Model(0);
  v17 = a5 + result[5];
  *v17 = v7;
  *(v17 + 8) = v8;
  v18 = a5 + result[6];
  *v18 = v9;
  *(v18 + 8) = v10;
  *(v18 + 16) = v11;
  *(v18 + 20) = v12;
  *(a5 + result[7]) = v13;
  return result;
}

uint64_t sub_220C1D2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000220CB4C50 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x8000000220CB4C70 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

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

unint64_t sub_220C1D42C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0x5565746176697270;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1D2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1D4FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1D424();
  *a1 = result;
  return result;
}

uint64_t sub_220C1D524(uint64_t a1)
{
  v2 = sub_220C1D7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1D560(uint64_t a1)
{
  v2 = sub_220C1D7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowingLocationListEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B858, &qword_220CA33A0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1D7E8();
  sub_220CA1254();
  LOBYTE(v25) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  OUTLINED_FUNCTION_11_1();
  if (!v2)
  {
    v14 = type metadata accessor for FollowingLocationListEvent.Model(0);
    v15 = (v3 + v14[5]);
    v16 = *v15;
    LODWORD(v15) = *(v15 + 2);
    v25 = v16;
    LODWORD(v26) = v15;
    v29 = 1;
    v17 = sub_220C1D83C();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_11_1();

    if (!v17)
    {
      v18 = (v3 + v14[6]);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v18 + 4);
      LOBYTE(v18) = *(v18 + 20);
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v28 = v18;
      v29 = 2;
      v22 = sub_220BFF788();

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_11_1();

      if (!v22)
      {
        LOBYTE(v25) = *(v3 + v14[7]);
        v29 = 3;
        sub_220C175F4();
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_11_1();
      }
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C1D7E8()
{
  result = qword_27CF7B860;
  if (!qword_27CF7B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B860);
  }

  return result;
}

unint64_t sub_220C1D83C()
{
  result = qword_2812CF4E8;
  if (!qword_2812CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4E8);
  }

  return result;
}

uint64_t FollowingLocationListEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v37 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B868, &qword_220CA33A8);
  v11 = OUTLINED_FUNCTION_3(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v17 = type metadata accessor for FollowingLocationListEvent.Model(0);
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1D7E8();
  v41 = v16;
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v37;
  LOBYTE(v42) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  v25 = v38;
  sub_220CA1034();
  (*(v24 + 32))(v22, v25, v4);
  v46 = 1;
  sub_220C1DCA4();
  sub_220CA1034();
  v26 = v43;
  v27 = &v22[v17[5]];
  *v27 = v42;
  *(v27 + 2) = v26;
  v46 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = &v22[v17[6]];
  *v31 = v42;
  *(v31 + 1) = v28;
  *(v31 + 4) = v29;
  v31[20] = v30;
  v46 = 3;
  sub_220C1759C();
  sub_220CA1034();
  v32 = OUTLINED_FUNCTION_7_1();
  v33(v32);
  v22[v17[7]] = v42;
  sub_220C1DCF8(v22, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C1DD5C(v22);
}

unint64_t sub_220C1DCA4()
{
  result = qword_2812CF4E0;
  if (!qword_2812CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF4E0);
  }

  return result;
}

uint64_t sub_220C1DCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingLocationListEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C1DD5C(uint64_t a1)
{
  v2 = type metadata accessor for FollowingLocationListEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C1DE20()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C1DF7C(319, &qword_2812D0DD8, sub_220C1DCA4, sub_220C1D83C);
    if (v1 <= 0x3F)
    {
      sub_220C1DF7C(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        sub_220C1DF7C(319, &qword_2812D0E10, sub_220C1759C, sub_220C175F4);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220C1DF7C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220C1E020()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FollowingLocationListEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C1E188()
{
  result = qword_27CF7B880;
  if (!qword_27CF7B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B880);
  }

  return result;
}

unint64_t sub_220C1E1E0()
{
  result = qword_27CF7B888;
  if (!qword_27CF7B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B888);
  }

  return result;
}

unint64_t sub_220C1E238()
{
  result = qword_27CF7B890;
  if (!qword_27CF7B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B890);
  }

  return result;
}

WeatherAnalytics::ViewAction_optional __swiftcall ViewAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewAction.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x6976614E72657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1E394(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3C5E4();
}

unint64_t sub_220C1E3A4()
{
  result = qword_27CF7B898;
  if (!qword_27CF7B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B898);
  }

  return result;
}

uint64_t sub_220C1E41C@<X0>(uint64_t *a1@<X8>)
{
  result = ViewAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C1E5D0()
{
  result = qword_2812D0838;
  if (!qword_2812D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0838);
  }

  return result;
}

uint64_t sub_220C1E6EC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7B8D0);
  __swift_project_value_buffer(v0, qword_27CF7B8D0);
  return sub_220CA0244();
}

uint64_t WidgetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WidgetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t WidgetExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.privateUserData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.viewData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.typeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.typeData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.displayModeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.displayModeData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.locationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_11_2() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t WidgetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for WidgetExposureEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v5[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 104);
  v22 = OUTLINED_FUNCTION_16_0();
  v23(v22);
  v24 = v5[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F0, &qword_220CA3710);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  v30 = v5[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8F8, &qword_220CA3718);
  OUTLINED_FUNCTION_0_0(v31);
  v33 = *(v32 + 104);
  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
  v36 = v5[10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B900, &qword_220CA3720);
  OUTLINED_FUNCTION_0_0(v37);
  v39 = *(v38 + 104);

  return v39(a1 + v36, v2);
}

uint64_t WidgetExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t WidgetExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(v2) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WidgetExposureEvent.Model.viewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetExposureEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t WidgetExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetExposureEvent.Model(v0) + 28);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetExposureEvent.Model.typeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t WidgetExposureEvent.Model.displayModeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t WidgetExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for WidgetExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t WidgetExposureEvent.Model.init(eventData:privateUserData:viewData:timedData:typeData:displayModeData:locationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 4);
  v13 = *(a2 + 20);
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + 8);
  v17 = *a5;
  v27 = *a6;
  v28 = *a7;
  v18 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v18);
  (*(v19 + 32))(a8, a1);
  v20 = type metadata accessor for WidgetExposureEvent.Model(0);
  v21 = a8 + v20[5];
  *v21 = v10;
  *(v21 + 8) = v11;
  *(v21 + 16) = v12;
  *(v21 + 20) = v13;
  v22 = a8 + v20[6];
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  v23 = v20[7];
  v24 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v24);
  result = (*(v25 + 32))(a8 + v23, a4);
  *(a8 + v20[8]) = v17;
  *(a8 + v20[9]) = v27;
  *(a8 + v20[10]) = v28;
  return result;
}