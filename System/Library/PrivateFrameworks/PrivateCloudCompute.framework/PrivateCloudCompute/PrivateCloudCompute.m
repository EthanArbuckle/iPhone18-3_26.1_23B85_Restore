uint64_t sub_1CEF337A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF337EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF3382C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1CEF33898(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CEFA8070();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CEF33944(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8070();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF339E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF33A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF33D5C@<X0>(uint64_t *a1@<X8>)
{
  result = PrivateCloudComputeError.underlying.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CEF33D88(uint64_t *a1)
{
  v1 = *a1;

  return PrivateCloudComputeError.underlying.setter(v2);
}

uint64_t sub_1CEF33DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CEF33E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CEF33F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF33FF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF34098()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CEF340E0()
{
  if (*v0)
  {
    result = 0x7466417972746572;
  }

  else
  {
    result = 0x6E6F73616572;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF343AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF34458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF344FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1CEFA8030();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1CEF345AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF3464C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1CEFA8030();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1CEF346FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF3479C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RopesResponseMetadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CEF348D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RopesResponseMetadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CEF34A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF34AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF34B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CEFA8070();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CEF34CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CEFA8070();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CEF34DEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF34E24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEF41BE0(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEF34E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrustedRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CEFA8030();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CEF34F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TrustedRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CEFA8030();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CEF35074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1CEF82B4C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CEF35748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1CEFA8030();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1CEF35800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF35970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CEFA8070();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1CEFA8030();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CEF35AF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CEFA8070();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1CEFA8030();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1CEF35C80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CEFA8070();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1CEF35DB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CEFA8070();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1CEF35EF4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF35F3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF3617C()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EDE37CA8);
  __swift_project_value_buffer(v0, qword_1EDE37CA8);
  return sub_1CEFA8210();
}

uint64_t DefaultConfiguration.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v7 = type metadata accessor for ConfigurationIndex();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v113 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v104 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = (&v104 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v115 = (&v104 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v105 = (&v104 - v18);
  v19 = sub_1CEFA85B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v104 - v23;
  v118 = *(a2 - 8);
  v25 = *(v118 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v106 = &v104 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v112 = &v104 - v31;
  v116 = v7;
  if ((*(a1 + *(v7 + 36)) & 1) != 0 || (sub_1CEFA8320(), v32 = os_variant_allows_internal_security_policies(), , v32))
  {
    v104 = v28;
    v110 = v8;
    v111 = a4;
    v33 = *a1;
    v34 = a1[1];
    v35 = a1[2];
    v36 = a1[3];
    v117 = a2;
    v109 = a1;
    v37 = v114;
    v38 = *(v114 + 8);

    v39 = v36;
    v40 = v117;
    v38(v33, v34, v35, v39, v117, v37);
    if ((*(v118 + 48))(v24, 1, v40) == 1)
    {
      (*(v20 + 8))(v24, v19);
      if (qword_1EDE37CA0 != -1)
      {
        swift_once();
      }

      v41 = sub_1CEFA8220();
      __swift_project_value_buffer(v41, qword_1EDE37CA8);
      v42 = v109;
      v43 = v110;
      v44 = *(v110 + 2);
      v45 = v107;
      v46 = v116;
      v44(v107, v109, v116);
      v47 = v108;
      v44(v108, v42, v46);
      v48 = v113;
      v44(v113, v42, v46);
      v49 = sub_1CEFA8200();
      v50 = sub_1CEFA8550();
      v115 = v49;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v119 = v114;
        *v51 = 136315650;
        v52 = *v45;
        v53 = v45[1];
        v54 = v45;
        v55 = *(v43 + 1);

        v55(v54, v46);
        v110 = v55;
        v56 = sub_1CEF36C9C(v52, v53, &v119);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        v57 = *(v47 + 2);
        v58 = *(v47 + 3);

        v55(v47, v46);
        v59 = sub_1CEF36C9C(v57, v58, &v119);

        *(v51 + 14) = v59;
        *(v51 + 22) = 2080;
        v60 = *(v46 + 32);
        v61 = v117;
        LODWORD(v112) = v50;
        v62 = *(v118 + 16);
        v63 = v42;
        v64 = v113;
        v62(v104, &v113[v60], v117);
        v65 = sub_1CEFA8310();
        v67 = v66;
        v68 = v64;
        v42 = v63;
        v110(v68, v46);
        v69 = sub_1CEF36C9C(v65, v67, &v119);

        *(v51 + 24) = v69;
        v70 = v115;
        _os_log_impl(&dword_1CEF32000, v115, v112, "Configuration defaultValue %s %s = %s", v51, 0x20u);
        v71 = v114;
        swift_arrayDestroy();
        MEMORY[0x1D3867270](v71, -1, -1);
        MEMORY[0x1D3867270](v51, -1, -1);
      }

      else
      {

        v102 = *(v43 + 1);
        v102(v48, v46);
        v102(v47, v46);
        v102(v45, v46);
        v61 = v117;
        v62 = *(v118 + 16);
      }

      return (v62)(v111, v42 + *(v46 + 32), v61);
    }

    else
    {
      v72 = v112;
      v113 = *(v118 + 32);
      v114 = v118 + 32;
      (v113)(v112, v24, v40);
      if (qword_1EDE37CA0 != -1)
      {
        swift_once();
      }

      v73 = sub_1CEFA8220();
      __swift_project_value_buffer(v73, qword_1EDE37CA8);
      v74 = v109;
      v75 = v110;
      v76 = *(v110 + 2);
      v77 = v105;
      v78 = v116;
      v76(v105, v109, v116);
      v76(v115, v74, v78);
      v79 = *(v118 + 16);
      v80 = v106;
      v79(v106, v72, v40);
      v81 = sub_1CEFA8200();
      v82 = sub_1CEFA8550();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        LODWORD(v108) = v82;
        v84 = v83;
        v109 = swift_slowAlloc();
        v119 = v109;
        *v84 = 136315650;
        v107 = v81;
        v85 = *v77;
        v86 = v77[1];
        v87 = *(v75 + 1);

        v87(v77, v78);
        v88 = sub_1CEF36C9C(v85, v86, &v119);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2080;
        v89 = v115;
        isa = v115[2].isa;
        v91 = v115[3].isa;

        v87(v89, v78);
        v92 = sub_1CEF36C9C(isa, v91, &v119);
        v40 = v117;

        *(v84 + 14) = v92;
        *(v84 + 22) = 2080;
        v79(v104, v80, v40);
        v93 = sub_1CEFA8310();
        v95 = v94;
        (*(v118 + 8))(v80, v40);
        v96 = sub_1CEF36C9C(v93, v95, &v119);
        v72 = v112;

        *(v84 + 24) = v96;
        v97 = v107;
        _os_log_impl(&dword_1CEF32000, v107, v108, "Configuration read %s %s = %s", v84, 0x20u);
        v98 = v109;
        swift_arrayDestroy();
        MEMORY[0x1D3867270](v98, -1, -1);
        MEMORY[0x1D3867270](v84, -1, -1);
      }

      else
      {

        (*(v118 + 8))(v80, v40);
        v103 = *(v75 + 1);
        v103(v115, v78);
        v103(v77, v78);
      }

      return (v113)(v111, v72, v40);
    }
  }

  else
  {
    v99 = *(v118 + 16);
    v100 = a1 + *(v116 + 32);

    return v99(a4, v100, a2);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1CEF36C9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CEF36D68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CEF37314(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1CEF36D68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CEF36E74(a5, a6);
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
    result = sub_1CEFA8690();
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

uint64_t sub_1CEF36E74(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CEF36EC0(a1, a2);
  sub_1CEF36FF0(&unk_1F4BDEF70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1CEF36EC0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CEF874F0(v5, 0);
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

  result = sub_1CEFA8690();
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
        v10 = sub_1CEFA8360();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CEF874F0(v10, 0);
        result = sub_1CEFA8630();
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

uint64_t sub_1CEF36FF0(uint64_t result)
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

  result = sub_1CEF370DC(result, v12, 1, v3);
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

char *sub_1CEF370DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8EB0, &qword_1CEFA9318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t getEnumTagSinglePayload for DefaultConfiguration(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultConfiguration(_WORD *result, int a2, int a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1CEF37314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t ClientConfigurationKey.domain.getter()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

PrivateCloudCompute::ClientConfigurationKey_optional __swiftcall ClientConfigurationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8980();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
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
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ClientConfigurationKey.rawValue.getter()
{
  result = 0x6D6E6F7269766E65;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 3:
    case 0x16:
    case 0x17:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x4145416563726F66;
      break;
    case 8:
    case 0x23:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x657573734974746CLL;
      break;
    case 0xA:
      result = 0x657573734974746FLL;
      break;
    case 0xB:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xF:
    case 0x15:
      result = 0xD000000000000024;
      break;
    case 0x11:
    case 0x1F:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0x656469727265766FLL;
      break;
    case 0x13:
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0xD000000000000019;
      break;
    case 0x18:
      result = 0xD000000000000023;
      break;
    case 0x1A:
      result = 0x6974704F74736574;
      break;
    case 0x1B:
    case 0x1C:
      result = 0xD000000000000021;
      break;
    case 0x1E:
      result = 0xD000000000000025;
      break;
    case 0x20:
      result = 0xD000000000000019;
      break;
    case 0x21:
    case 0x26:
      result = 0xD00000000000001ALL;
      break;
    case 0x22:
      result = 0xD00000000000001DLL;
      break;
    case 0x24:
      result = 0xD000000000000022;
      break;
    case 0x25:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF37A04(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ClientConfigurationKey.rawValue.getter();
  v4 = v3;
  if (v2 == ClientConfigurationKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CEFA8950();
  }

  return v7 & 1;
}

uint64_t sub_1CEF37AA0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF37B08()
{
  v2 = *v0;
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();
}

uint64_t sub_1CEF37B6C()
{
  v1 = *v0;
  sub_1CEFA8A00();
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

unint64_t sub_1CEF37BDC@<X0>(unint64_t *a1@<X8>)
{
  result = ClientConfigurationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConfigurationIndex.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfigurationIndex.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfigurationIndex.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfigurationIndex.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*ConfigurationIndex.defaultValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t (*ConfigurationIndex.isAllowedOnCustomerBuilds.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

void static ConfigurationIndex.environment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  *(a1 + 8) = 0x80000001CEFB4430;
  *(a1 + 16) = 0x6D6E6F7269766E65;
  *(a1 + 24) = 0xEB00000000746E65;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.ignoreCertificateErrors.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000017;
  *(a1 + 24) = 0x80000001CEFB3D60;
  *(a1 + 32) = 0;
}

void static ConfigurationIndex.rateLimitRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = 0x80000001CEFB3D80;
  *(a1 + 32) = 0x6D696C657461722FLL;
  *(a1 + 40) = 0xEB00000000737469;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.rateLimitRequestMinimumSpacing.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3DA0;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.prefetchRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000013;
  *(a1 + 24) = 0x80000001CEFB3DF0;
  *(a1 + 32) = 0x637465666572702FLL;
  *(a1 + 40) = 0xE900000000000068;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.trustedRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000012;
  *(a1 + 24) = 0x80000001CEFB3E10;
  *(a1 + 32) = 0x656B6F766E692FLL;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.forceAEADKey.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  strcpy((a1 + 16), "forceAEADKey");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.lttIssuer.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x657573734974746CLL;
  *(a1 + 24) = 0xE900000000000072;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x80000001CEFB4920;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.ottIssuer.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x657573734974746FLL;
  *(a1 + 24) = 0xE900000000000072;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x80000001CEFB4940;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.maxCachedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000015;
  *(a1 + 24) = 0x80000001CEFB3E60;
  *(a1 + 32) = 12;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxPrefetchedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB3E80;
  *(a1 + 32) = 60;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxTotalAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = 0x80000001CEFB3EA0;
  *(a1 + 32) = 87;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxInlineAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000015;
  *(a1 + 24) = 0x80000001CEFB3EC0;
  *(a1 + 32) = 27;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.prewarmAttestationsValidityInSeconds.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000024;
  *(a1 + 24) = 0x80000001CEFB3EE0;
  *(a1 + 32) = 0x409C200000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxPrefetchBatches.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000012;
  *(a1 + 24) = 0x80000001CEFB3F10;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxCachedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = 0x80000001CEFB4060;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.trustedProxyMaxInlineAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = 0x80000001CEFB4090;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.trustedProxyMaxPrefetchBatches.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB40C0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxPrefetchedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000025;
  *(a1 + 24) = 0x80000001CEFB40E0;
  *(a1 + 32) = 60;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxTotalAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = 0x80000001CEFB4110;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.maxProtobufRandomizedPaddingSize.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = 0x80000001CEFB3F30;
  *(a1 + 32) = 2048;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.overrideCellID.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  strcpy((a1 + 16), "overrideCellID");
  *(a1 + 31) = -18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

void static ConfigurationIndex.overrideNodeKind.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000010;
  *(a1 + 24) = 0x80000001CEFB3F60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.rateLimiterSessionTimeout.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB3F80;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterSessionLengthForSoftening.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000024;
  *(a1 + 24) = 0x80000001CEFB3FA0;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterDefaultJitterFactor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3FD0;
  *(a1 + 32) = 0x3FB999999999999ALL;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterMaximumRateLimitTtl.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3FF0;
  *(a1 + 32) = 0x40F5180000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterMaximumRateLimitDuration.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000023;
  *(a1 + 24) = 0x80000001CEFB4010;
  *(a1 + 32) = 0x40F5180000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimitUnmatchedRequestStorageTimeout.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000027;
  *(a1 + 24) = 0x80000001CEFB3DC0;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.testSignalHeader.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000010;
  *(a1 + 24) = 0x80000001CEFB4040;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.testOptions.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x6974704F74736574;
  *(a1 + 24) = 0xEB00000000736E6FLL;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.trustedProxyRequestBypass.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB4140;
  *(a1 + 32) = 2;
}

void static ConfigurationIndex.trustedProxyResponseBypass.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ALL;
  *(a1 + 24) = 0x80000001CEFB4160;
  *(a1 + 32) = 1;
}

void static ConfigurationIndex.trustedProxyRoutingGroupAlias.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001DLL;
  *(a1 + 24) = 0x80000001CEFB4180;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.routingGroupAlias.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000011;
  *(a1 + 24) = 0x80000001CEFB41A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.liveOnTargetBuild.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000011;
  *(a1 + 24) = 0x80000001CEFB3E30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.enforceWorkloadParametersFiltering.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000022;
  *(a1 + 24) = 0x80000001CEFB41C0;
  *(a1 + 32) = 1;
}

void static ConfigurationIndex.proposedLiveOnEnvironment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB41F0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.bootFixedLiveOnEnvironment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ALL;
  *(a1 + 24) = 0x80000001CEFB4210;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

unint64_t sub_1CEF388B4()
{
  result = qword_1EC4A8EB8;
  if (!qword_1EC4A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EB8);
  }

  return result;
}

unint64_t sub_1CEF3890C()
{
  result = qword_1EC4A8EC0;
  if (!qword_1EC4A8EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A8EC8, &qword_1CEFA93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientConfigurationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientConfigurationKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEF38B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CEF38BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1CEF38D34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

Swift::Int_optional __swiftcall Int.init(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v2 = sub_1CEFA82F0();

  v3 = sub_1CEFA82F0();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v2, v3, &keyExistsAndHasValidFormat);

  v5 = keyExistsAndHasValidFormat == 0;
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  result.value = v6;
  result.is_nil = v5;
  return result;
}

void sub_1CEF3909C(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v2 = sub_1CEFA82F0();

  v3 = sub_1CEFA82F0();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v2, v3, &keyExistsAndHasValidFormat);

  v5 = keyExistsAndHasValidFormat == 0;
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CEF39178@<X0>(_BYTE *a1@<X8>)
{
  result = _sSb19PrivateCloudComputeE14defaultsDomain4nameSbSgSS_SStcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_1CEF391CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CEF39A48();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::Double_optional __swiftcall Double.init(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v2 = sub_1CEF39984();
  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1CEF39218@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CEF39984();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CEF3924C@<X0>(uint64_t *a1@<X8>)
{
  result = _sSS19PrivateCloudComputeE14defaultsDomain4nameSSSgSS_SStcfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CEF392A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  v16 = *(v15 + 24);
  Optional<A>.init(defaultsDomain:name:)(v12, v17, v18, v19, v16, v20);
  v21 = *(v16 - 8);
  v22 = 1;
  if ((*(v21 + 48))(v14, 1, v16) != 1)
  {
    (*(v21 + 32))(v11, v14, v16);
    (*(v21 + 56))(v11, 0, 1, v16);
    (*(v7 + 32))(a4, v11, a2);
    v22 = 0;
  }

  return (*(v7 + 56))(a4, v22, 1, a2);
}

Swift::Void __swiftcall String.defaultsWrite(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v2 = sub_1CEFA82F0();
  v3 = sub_1CEFA82F0();
  v4 = sub_1CEFA82F0();
  CFPreferencesSetAppValue(v2, v3, v4);
}

void sub_1CEF39500()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_1CEFA82F0();
  v4 = sub_1CEFA82F0();
  v5 = sub_1CEFA82F0();
  CFPreferencesSetAppValue(v3, v4, v5);
}

void Optional<A>.defaultsWrite(defaultsDomain:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v18, v17);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    (*(v6 + 8))(v10, a5);
    v19 = sub_1CEFA82F0();
    v20 = sub_1CEFA82F0();
    CFPreferencesSetAppValue(v19, 0, v20);
  }

  else
  {
    (*(v13 + 32))(v16, v10, v12);
    v21 = sub_1CEFA82F0();
    v22 = sub_1CEFA8940();
    v23 = sub_1CEFA82F0();
    CFPreferencesSetAppValue(v21, v22, v23);

    swift_unknownObjectRelease();
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t _sSS19PrivateCloudComputeE14defaultsDomain4nameSSSgSS_SStcfC_0()
{
  v0 = sub_1CEFA82F0();

  v1 = sub_1CEFA82F0();

  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _sSb19PrivateCloudComputeE14defaultsDomain4nameSbSgSS_SStcfC_0()
{
  v6 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_1CEFA82F0();

  v1 = sub_1CEFA82F0();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    result = AppBooleanValue != 0;
  }

  else
  {
    result = 2;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CEF39984()
{
  v0 = sub_1CEFA82F0();

  v1 = sub_1CEFA82F0();

  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1CEF39A48()
{
  v0 = sub_1CEFA82F0();

  v1 = sub_1CEFA82F0();

  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && swift_dynamicCast())
  {
    v3 = 0;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  return v4 | (v3 << 32);
}

const char *PrivateCloudComputeFeatureFlags.feature.getter()
{
  v1 = "trustedProxyProtocol";
  v2 = "fetchAuthTokenOnPrewarm";
  if (*v0 != 2)
  {
    v2 = "featureUsageAnalyzer";
  }

  if (*v0)
  {
    v1 = "forceTrustedProxyProtocol";
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

uint64_t PrivateCloudComputeFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t _s19PrivateCloudCompute07TrustedbC5ErrorO012UnauthorizedE4InfoV6ReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF39C84()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

unint64_t sub_1CEF39CCC()
{
  result = qword_1EC4A8ED0;
  if (!qword_1EC4A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8ED0);
  }

  return result;
}

const char *sub_1CEF39D34()
{
  v1 = "trustedProxyProtocol";
  v2 = "fetchAuthTokenOnPrewarm";
  if (*v0 != 2)
  {
    v2 = "featureUsageAnalyzer";
  }

  if (*v0)
  {
    v1 = "forceTrustedProxyProtocol";
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

uint64_t getEnumTagSinglePayload for PrivateCloudComputeFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CEF39EE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7759204;
    v14 = 0x6172656D65687065;
    v15 = 0xE90000000000006CLL;
    if (a1 != 8)
    {
      v14 = 0x69746E6172617571;
      v15 = 0xEA0000000000656ELL;
    }

    if (a1 != 7)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0xE200000000000000;
    v17 = 24945;
    if (a1 != 5)
    {
      v17 = 1718773104;
      v16 = 0xE400000000000000;
    }

    if (a1 <= 6u)
    {
      v10 = v17;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = 0xE600000000000000;
    v6 = 0x6E6F6576696CLL;
    v7 = 0xE300000000000000;
    v8 = 7627125;
    if (a1 != 3)
    {
      v8 = 0x676E6967617473;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x7972726163;
    if (a1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v9 = 0x69746375646F7270;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE200000000000000;
        if (v10 != 24945)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v10 != 1718773104)
        {
LABEL_57:
          v18 = sub_1CEFA8950();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v2 = 0xE300000000000000;
      if (v10 != 7759204)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v2 = 0xE90000000000006CLL;
      if (v10 != 0x6172656D65687065)
      {
        goto LABEL_57;
      }
    }

    else if (v10 != 0x69746E6172617571)
    {
      goto LABEL_57;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x7972726163)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v2 = 0xEA00000000006E6FLL;
      if (v10 != 0x69746375646F7270)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v2 = 0xE600000000000000;
    if (v10 != 0x6E6F6576696CLL)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE300000000000000;
    if (v10 != 7627125)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x676E6967617473)
    {
      goto LABEL_57;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_1CEF3A19C()
{
  sub_1CEFA8340();
}

PrivateCloudCompute::TC2Environment_optional __swiftcall TC2Environment.init(name:)(Swift::String name)
{
  v2 = v1;
  result.value = TC2Environment.init(rawValue:)(name).value;
  *v2 = v4;
  return result;
}

PrivateCloudCompute::TC2Environment_optional __swiftcall TC2Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CEF3A380()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 7759204;
    v7 = 0x6172656D65687065;
    if (v1 != 8)
    {
      v7 = 0x69746E6172617571;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 24945;
    if (v1 != 5)
    {
      v8 = 1718773104;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x69746375646F7270;
    v3 = 0x6E6F6576696CLL;
    v4 = 7627125;
    if (v1 != 3)
    {
      v4 = 0x676E6967617473;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7972726163;
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
}

unint64_t TC2Environment.ropesHostname.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000018;
    v7 = 0xD00000000000001ELL;
    if (v1 != 8)
    {
      v7 = 0xD00000000000002ALL;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000019;
    if (v1 == 5)
    {
      v8 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    if (v1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    v3 = *v0 <= 2u;
    if (v1 >= 2)
    {
      v4 = 0xD000000000000026;
    }

    else
    {
      v4 = 0x70612E7365706F72;
    }

    if (*v0 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t TC2Environment.ropesUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8ED8, &qword_1CEFA96F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v51 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v51 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v51 - v30;
  v32 = *v1;
  if (v32 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v32 != 2)
      {
        if (v32 != 3)
        {
          sub_1CEFA7F00();
          v45 = sub_1CEFA7F10();
          v46 = *(v45 - 8);
          result = (*(v46 + 48))(v19, 1, v45);
          if (result != 1)
          {
            return (*(v46 + 32))(v52, v19, v45);
          }

          goto LABEL_36;
        }

        sub_1CEFA7F00();
        v33 = sub_1CEFA7F10();
        v34 = *(v33 - 8);
        result = (*(v34 + 48))(v22, 1, v33);
        if (result != 1)
        {
          return (*(v34 + 32))(v52, v22, v33);
        }

        goto LABEL_33;
      }

      sub_1CEFA7F00();
      v41 = sub_1CEFA7F10();
      v42 = *(v41 - 8);
      result = (*(v42 + 48))(v25, 1, v41);
      if (result != 1)
      {
        return (*(v42 + 32))(v52, v25, v41);
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_12:
    if (v32)
    {
      sub_1CEFA7F00();
      v47 = sub_1CEFA7F10();
      v48 = *(v47 - 8);
      result = (*(v48 + 48))(v28, 1, v47);
      if (result != 1)
      {
        return (*(v48 + 32))(v52, v28, v47);
      }

      goto LABEL_38;
    }

    sub_1CEFA7F00();
    v37 = sub_1CEFA7F10();
    v38 = *(v37 - 8);
    result = (*(v38 + 48))(v31, 1, v37);
    if (result != 1)
    {
      return (*(v38 + 32))(v52, v31, v37);
    }

    goto LABEL_34;
  }

  if (*v1 > 6u)
  {
    if (v32 == 7)
    {
      sub_1CEFA7F00();
      v43 = sub_1CEFA7F10();
      v44 = *(v43 - 8);
      result = (*(v44 + 48))(v10, 1, v43);
      if (result != 1)
      {
        return (*(v44 + 32))(v52, v10, v43);
      }

      goto LABEL_32;
    }

    if (v32 == 8)
    {
      sub_1CEFA7F00();
      v28 = sub_1CEFA7F10();
      v36 = *(v28 - 1);
      if ((*(v36 + 48))(v7, 1, v28) == 1)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v7 = v29;
      sub_1CEFA7F00();
      v28 = sub_1CEFA7F10();
      v36 = *(v28 - 1);
      result = (*(v36 + 48))(v7, 1, v28);
      if (result == 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    return (*(v36 + 32))(v52, v7, v28);
  }

  if (v32 == 5)
  {
    sub_1CEFA7F00();
    v39 = sub_1CEFA7F10();
    v40 = *(v39 - 8);
    result = (*(v40 + 48))(v16, 1, v39);
    if (result != 1)
    {
      return (*(v40 + 32))(v52, v16, v39);
    }

    goto LABEL_35;
  }

  sub_1CEFA7F00();
  v49 = sub_1CEFA7F10();
  v50 = *(v49 - 8);
  result = (*(v50 + 48))(v13, 1, v49);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  return (*(v50 + 32))(v52, v13, v49);
}

uint64_t TC2Environment.configUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8ED8, &qword_1CEFA96F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v51 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v51 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v51 - v30;
  v32 = *v1;
  if (v32 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v32 != 2)
      {
        if (v32 != 3)
        {
          sub_1CEFA7F00();
          v45 = sub_1CEFA7F10();
          v46 = *(v45 - 8);
          result = (*(v46 + 48))(v19, 1, v45);
          if (result != 1)
          {
            return (*(v46 + 32))(v52, v19, v45);
          }

          goto LABEL_36;
        }

        sub_1CEFA7F00();
        v33 = sub_1CEFA7F10();
        v34 = *(v33 - 8);
        result = (*(v34 + 48))(v22, 1, v33);
        if (result != 1)
        {
          return (*(v34 + 32))(v52, v22, v33);
        }

        goto LABEL_33;
      }

      sub_1CEFA7F00();
      v41 = sub_1CEFA7F10();
      v42 = *(v41 - 8);
      result = (*(v42 + 48))(v25, 1, v41);
      if (result != 1)
      {
        return (*(v42 + 32))(v52, v25, v41);
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_12:
    if (v32)
    {
      sub_1CEFA7F00();
      v47 = sub_1CEFA7F10();
      v48 = *(v47 - 8);
      result = (*(v48 + 48))(v28, 1, v47);
      if (result != 1)
      {
        return (*(v48 + 32))(v52, v28, v47);
      }

      goto LABEL_38;
    }

    sub_1CEFA7F00();
    v37 = sub_1CEFA7F10();
    v38 = *(v37 - 8);
    result = (*(v38 + 48))(v31, 1, v37);
    if (result != 1)
    {
      return (*(v38 + 32))(v52, v31, v37);
    }

    goto LABEL_34;
  }

  if (*v1 > 6u)
  {
    if (v32 == 7)
    {
      sub_1CEFA7F00();
      v43 = sub_1CEFA7F10();
      v44 = *(v43 - 8);
      result = (*(v44 + 48))(v10, 1, v43);
      if (result != 1)
      {
        return (*(v44 + 32))(v52, v10, v43);
      }

      goto LABEL_32;
    }

    if (v32 == 8)
    {
      sub_1CEFA7F00();
      v28 = sub_1CEFA7F10();
      v36 = *(v28 - 1);
      if ((*(v36 + 48))(v7, 1, v28) == 1)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v7 = v29;
      sub_1CEFA7F00();
      v28 = sub_1CEFA7F10();
      v36 = *(v28 - 1);
      result = (*(v36 + 48))(v7, 1, v28);
      if (result == 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    return (*(v36 + 32))(v52, v7, v28);
  }

  if (v32 == 5)
  {
    sub_1CEFA7F00();
    v39 = sub_1CEFA7F10();
    v40 = *(v39 - 8);
    result = (*(v40 + 48))(v16, 1, v39);
    if (result != 1)
    {
      return (*(v40 + 32))(v52, v16, v39);
    }

    goto LABEL_35;
  }

  sub_1CEFA7F00();
  v49 = sub_1CEFA7F10();
  v50 = *(v49 - 8);
  result = (*(v50 + 48))(v13, 1, v49);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  return (*(v50 + 32))(v52, v13, v49);
}

uint64_t sub_1CEF3B590()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEF3A19C();
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3B5E0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEF3A19C();
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3B630@<X0>(uint64_t *a1@<X8>)
{
  result = TC2Environment.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Environment.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1CEFA80C0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E83BC368 + v3);

  return v5(a2, v6, v4);
}

unint64_t sub_1CEF3B6E4()
{
  result = qword_1EC4A8EE0;
  if (!qword_1EC4A8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EE0);
  }

  return result;
}

unint64_t sub_1CEF3B73C()
{
  result = qword_1EC4A8EE8;
  if (!qword_1EC4A8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A8EF0, &qword_1CEFA9798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TC2Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TC2Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CEF3B8F4()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4A8EF8);
  __swift_project_value_buffer(v0, qword_1EC4A8EF8);
  return sub_1CEFA8210();
}

PCCServerEnvironment __swiftcall PCCServerEnvironment.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t PCCServerEnvironment.selectedEnvironmentName()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF3BAC0;

  return sub_1CEF3C74C();
}

uint64_t sub_1CEF3BAC0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1CEF3BD44(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CEF3BDEC;

  return sub_1CEF3C74C();
}

uint64_t sub_1CEF3BDEC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v5)
    {
      v7 = *(v3 + 16);
      v8 = sub_1CEFA7EF0();

      v7[2](v7, 0, v8);
      v9 = v7;
LABEL_6:
      _Block_release(v9);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v10 = *(v3 + 16);
      v8 = sub_1CEFA82F0();

      v10[2](v10, v8, 0);
      v9 = v10;
      goto LABEL_6;
    }
  }

LABEL_9:
  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_1CEF3BFAC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1CEF3D620;

  return v7();
}

uint64_t sub_1CEF3C094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1CEF3C17C;

  return v8();
}

uint64_t sub_1CEF3C17C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CEF3C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1CEF3D2B4(a3, v25 - v11);
  v13 = sub_1CEFA84F0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEF3D55C(v12, &qword_1EC4A8F18, &qword_1CEFAC050);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1CEFA84E0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1CEFA8480();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1CEFA8320() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1CEF3D55C(a3, &qword_1EC4A8F18, &qword_1CEFAC050);

    return v23;
  }

LABEL_8:
  sub_1CEF3D55C(a3, &qword_1EC4A8F18, &qword_1CEFAC050);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CEF3C55C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CEF3C654;

  return v7(a1);
}

uint64_t sub_1CEF3C654()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CEF3C74C()
{
  v1 = type metadata accessor for PrivateCloudComputeError();
  v0[6] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0) - 8) + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF3C814, 0, 0);
}

uint64_t sub_1CEF3C814()
{
  v25 = v0;
  sub_1CEFA8320();
  v1 = os_variant_allows_internal_security_policies();

  if (!v1)
  {
    if (qword_1EC4A8E70 != -1)
    {
      swift_once();
    }

    v6 = 0xEA00000000006E6FLL;
    v7 = 0x69746375646F7270;
    v8 = sub_1CEFA8220();
    __swift_project_value_buffer(v8, qword_1EC4A8EF8);
    v9 = sub_1CEFA8200();
    v10 = sub_1CEFA8550();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_15;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v13 = 0x69746375646F7270;
    v14 = 0xEA00000000006E6FLL;
LABEL_14:
    *(v11 + 4) = sub_1CEF36C9C(v13, v14, &v24);
    _os_log_impl(&dword_1CEF32000, v9, v10, "current environment=%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D3867270](v12, -1, -1);
    MEMORY[0x1D3867270](v11, -1, -1);
LABEL_15:

LABEL_17:
    v18 = v0[7];
    v17 = v0[8];

    v19 = v0[1];

    return v19(v7, v6);
  }

  v2 = NSUserName();
  v3 = sub_1CEFA8300();
  v5 = v4;

  if (v3 == 0x7075746573626D5FLL && v5 == 0xEC00000072657375)
  {

LABEL_10:
    if (qword_1EC4A8E70 != -1)
    {
      swift_once();
    }

    v7 = 0x7972726163;
    v16 = sub_1CEFA8220();
    __swift_project_value_buffer(v16, qword_1EC4A8EF8);
    v9 = sub_1CEFA8200();
    v10 = sub_1CEFA8550();
    if (!os_log_type_enabled(v9, v10))
    {

      v6 = 0xE500000000000000;
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v6 = 0xE500000000000000;
    v13 = 0x7972726163;
    v14 = 0xE500000000000000;
    goto LABEL_14;
  }

  v15 = sub_1CEFA8950();

  if (v15)
  {
    goto LABEL_10;
  }

  type metadata accessor for TC2Client();
  inited = swift_initStackObject();
  v0[9] = inited;
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  LOBYTE(v24) = 1;
  v22 = sub_1CEF9360C(0x100000000);
  v0[10] = v22;
  *(inited + 16) = v22;
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_1CEF3CBF4;

  return sub_1CEF9FAC8();
}

uint64_t sub_1CEF3CBF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v6 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1CEF3CCF4, 0, 0);
}

uint64_t sub_1CEF3CCF4()
{
  v1 = v0[13];
  v2 = v0[12] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    swift_setDeallocating();

    sub_1CEF94458();

    v5 = v0[12];
    v6 = v0[13];
    v8 = v0[7];
    v7 = v0[8];

    v9 = v0[1];

    return v9(v5, v6);
  }

  else
  {
    v24 = v0[9];
    v25 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];

    sub_1CEF3D494();
    swift_allocError();
    v23 = v14;
    v15 = sub_1CEFA8030();
    v16 = *(*(v15 - 8) + 56);
    v16(v12, 1, 1, v15);
    sub_1CEFA8650();

    v17 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v17);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v0[5] = 45;
    v18 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v18);

    v19 = v13[5];
    v16(&v11[v19], 1, 1, v15);
    v20 = &v11[v13[6]];
    v21 = &v11[v13[7]];
    *v11 = 21;
    sub_1CEF3D4EC(v12, &v11[v19]);
    *v20 = 0;
    v20[1] = 0;
    *v21 = 0xD000000000000025;
    v21[1] = 0x80000001CEFB4FA0;
    sub_1CEF3D55C(v12, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v11[v13[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF3D5BC(v11, v23);
    swift_willThrow();
    swift_setDeallocating();

    sub_1CEF94458();

    v22 = v0[1];

    return v22();
  }
}

unint64_t type metadata accessor for PCCServerEnvironment()
{
  result = qword_1EC4A8F10;
  if (!qword_1EC4A8F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4A8F10);
  }

  return result;
}

uint64_t sub_1CEF3D03C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CEF3D620;

  return sub_1CEF3BD44(v2);
}

uint64_t sub_1CEF3D0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CEF3D620;

  return sub_1CEF3BFAC(v2, v3, v5);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CEF3D1E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CEF3C17C;

  return sub_1CEF3C094(a1, v4, v5, v7);
}

uint64_t sub_1CEF3D2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CEF3D620;

  return sub_1CEF3C55C(a1, v5);
}

uint64_t sub_1CEF3D3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CEF3C17C;

  return sub_1CEF3C55C(a1, v5);
}

unint64_t sub_1CEF3D494()
{
  result = qword_1EDE38038;
  if (!qword_1EDE38038)
  {
    type metadata accessor for PrivateCloudComputeError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38038);
  }

  return result;
}

uint64_t sub_1CEF3D4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D55C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CEF3D5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D628()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x64696C61766E69;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x64696C6176;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0x6F54797269707865;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF3D71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF43260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF3D750(uint64_t a1)
{
  v2 = sub_1CEF418EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D78C(uint64_t a1)
{
  v2 = sub_1CEF418EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D7D4(uint64_t a1)
{
  v2 = sub_1CEF419E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D810(uint64_t a1)
{
  v2 = sub_1CEF419E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D854()
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3D898()
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3D8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF3D970(uint64_t a1)
{
  v2 = sub_1CEF41AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D9AC(uint64_t a1)
{
  v2 = sub_1CEF41AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D9E8(uint64_t a1)
{
  v2 = sub_1CEF41940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DA24(uint64_t a1)
{
  v2 = sub_1CEF41940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DA60(uint64_t a1)
{
  v2 = sub_1CEF41A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DA9C(uint64_t a1)
{
  v2 = sub_1CEF41A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DAD8()
{
  if (*v0)
  {
    result = 0x797269707865;
  }

  else
  {
    result = 0x654B63696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF3DB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF3DBF4(uint64_t a1)
{
  v2 = sub_1CEF41B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DC30(uint64_t a1)
{
  v2 = sub_1CEF41B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DC6C(uint64_t a1)
{
  v2 = sub_1CEF41994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DCA8(uint64_t a1)
{
  v2 = sub_1CEF41994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DCE4(uint64_t a1)
{
  v2 = sub_1CEF41A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DD20(uint64_t a1)
{
  v2 = sub_1CEF41A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.Node.ValidationResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F28, &qword_1CEFA9880);
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v83 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F30, &qword_1CEFA9888);
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F38, &qword_1CEFA9890);
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F40, &qword_1CEFA9898);
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F48, &qword_1CEFA98A0);
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v70 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F50, &qword_1CEFA98A8);
  v72 = *(v71 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v88 = &v70 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F58, &qword_1CEFA98B0);
  v73 = *(v87 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v20 = &v70 - v19;
  v21 = sub_1CEFA8030();
  v86 = *(v21 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F60, &qword_1CEFA98B8);
  v94 = *(v29 - 8);
  v95 = v29;
  v30 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v70 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF418EC();
  v96 = v32;
  sub_1CEFA8A60();
  sub_1CEF41F24(v92, v28, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v35 = v95;
      v36 = v96;
      if (EnumCaseMultiPayload == 5)
      {
        LOBYTE(v97) = 5;
        sub_1CEF41994();
        v50 = v80;
        sub_1CEFA8820();
        v52 = v81;
        v51 = v82;
      }

      else
      {
        LOBYTE(v97) = 6;
        sub_1CEF41940();
        v50 = v83;
        sub_1CEFA8820();
        v52 = v84;
        v51 = v85;
      }
    }

    else
    {
      v35 = v95;
      v36 = v96;
      if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v97) = 3;
        sub_1CEF41A3C();
        v37 = v74;
        sub_1CEFA8820();
        (*(v75 + 8))(v37, v76);
        return (*(v94 + 8))(v36, v35);
      }

      LOBYTE(v97) = 4;
      sub_1CEF419E8();
      v50 = v77;
      sub_1CEFA8820();
      v52 = v78;
      v51 = v79;
    }

    (*(v52 + 8))(v50, v51);
    return (*(v94 + 8))(v36, v35);
  }

  v39 = v88;
  v38 = v89;
  v41 = v90;
  v40 = v91;
  v42 = v24;
  v43 = v87;
  if (EnumCaseMultiPayload)
  {
    v44 = v95;
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v28;
      v46 = v28[1];
      LOBYTE(v97) = 1;
      sub_1CEF41AE4();
      v47 = v96;
      sub_1CEFA8820();
      v48 = v71;
      sub_1CEFA8880();

      (*(v72 + 8))(v39, v48);
      return (*(v94 + 8))(v47, v44);
    }

    else
    {
      LOBYTE(v97) = 2;
      sub_1CEF41A90();
      v64 = v38;
      v65 = v96;
      sub_1CEFA8820();
      (*(v41 + 1))(v64, v40);
      return (*(v94 + 8))(v65, v44);
    }
  }

  else
  {
    v54 = *v28;
    v53 = v28[1];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0);
    v56 = v86;
    v57 = *(v86 + 32);
    v58 = v28 + *(v55 + 48);
    v90 = v42;
    v57(v42, v58, v21);
    LOBYTE(v97) = 0;
    sub_1CEF41B38();
    v59 = v20;
    v60 = v95;
    v61 = v96;
    sub_1CEFA8820();
    v91 = v53;
    v92 = v54;
    v97 = v54;
    v98 = v53;
    v99 = 0;
    sub_1CEF41B8C();
    v62 = v43;
    v63 = v93;
    sub_1CEFA88D0();
    if (v63)
    {
      (*(v73 + 8))(v59, v43);
      (*(v56 + 8))(v90, v21);
      (*(v94 + 8))(v61, v60);
      return sub_1CEF41BE0(v92, v91);
    }

    else
    {
      v67 = v91;
      v66 = v92;
      LOBYTE(v97) = 1;
      sub_1CEF41CEC(&qword_1EDE380D8, MEMORY[0x1E6969530]);
      v68 = v90;
      sub_1CEFA88D0();
      v69 = v73;
      sub_1CEF41BE0(v66, v67);
      (*(v69 + 8))(v59, v62);
      (*(v86 + 8))(v68, v21);
      return (*(v94 + 8))(v96, v95);
    }
  }
}

uint64_t Prefetch.Response.Node.ValidationResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F98, &qword_1CEFA98C8);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FA0, &qword_1CEFA98D0);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FA8, &qword_1CEFA98D8);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v83 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FB0, &qword_1CEFA98E0);
  v92 = *(v108 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v103 = &v83 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FB8, &qword_1CEFA98E8);
  v89 = *(v91 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v83 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FC0, &qword_1CEFA98F0);
  v88 = *(v90 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v101 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FC8, &qword_1CEFA98F8);
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD0, &unk_1CEFA9900);
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - v23;
  v25 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v83 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v83 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1CEF418EC();
  v37 = v112;
  sub_1CEFA8A50();
  if (v37)
  {
    goto LABEL_12;
  }

  v83 = v29;
  v84 = v32;
  v38 = v107;
  v39 = v108;
  v86 = 0;
  v41 = v109;
  v40 = v110;
  v87 = v25;
  v85 = v34;
  v112 = v24;
  v42 = sub_1CEFA8800();
  v43 = v21;
  if (*(v42 + 16) != 1 || (v44 = *(v42 + 32), v44 == 7))
  {
    v52 = sub_1CEFA8680();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
    *v54 = v87;
    v56 = v43;
    v57 = v112;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    goto LABEL_10;
  }

  if (*(v42 + 32) <= 2u)
  {
    if (!*(v42 + 32))
    {
      v115 = 0;
      sub_1CEF41B38();
      v64 = v112;
      v65 = v21;
      v66 = v86;
      sub_1CEFA8710();
      if (v66)
      {
        (*(v106 + 8))(v64, v21);
        goto LABEL_11;
      }

      v114 = 0;
      sub_1CEF41C98();
      v67 = v84;
      v68 = v94;
      sub_1CEFA87D0();
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0) + 48);
      sub_1CEFA8030();
      v113 = 1;
      sub_1CEF41CEC(&qword_1EC4A8FE8, MEMORY[0x1E6969530]);
      sub_1CEFA87D0();
      (*(v93 + 8))(v38, v68);
      v82 = v67;
      (*(v106 + 8))(v64, v65);
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    v60 = v86;
    if (v44 != 1)
    {
      v117 = 2;
      sub_1CEF41A90();
      v69 = v102;
      v70 = v43;
      v71 = v112;
      sub_1CEFA8710();
      if (v60)
      {
        (*(v106 + 8))(v71, v70);
        goto LABEL_11;
      }

      (*(v89 + 8))(v69, v91);
      (*(v106 + 8))(v71, v70);
      swift_unknownObjectRelease();
      v51 = v85;
      swift_storeEnumTagMultiPayload();
LABEL_35:
      v77 = v111;
      v45 = v105;
      goto LABEL_36;
    }

    v116 = 1;
    sub_1CEF41AE4();
    v61 = v101;
    v56 = v21;
    v57 = v112;
    sub_1CEFA8710();
    if (!v60)
    {
      v62 = v90;
      v79 = sub_1CEFA8780();
      v81 = v80;
      (*(v88 + 8))(v61, v62);
      (*(v106 + 8))(v112, v56);
      swift_unknownObjectRelease();
      v82 = v83;
      *v83 = v79;
      *(v82 + 8) = v81;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v51 = v85;
      sub_1CEF41C34(v82, v85);
      goto LABEL_35;
    }

LABEL_10:
    (*(v106 + 8))(v57, v56);
    goto LABEL_11;
  }

  if (*(v42 + 32) > 4u)
  {
    v45 = v105;
    v46 = v112;
    if (v44 != 5)
    {
      v121 = 6;
      sub_1CEF41940();
      v74 = v21;
      v75 = v86;
      sub_1CEFA8710();
      v76 = v106;
      if (!v75)
      {
        (*(v99 + 8))(v40, v100);
        (*(v76 + 8))(v46, v74);
        swift_unknownObjectRelease();
        v51 = v85;
        goto LABEL_33;
      }

      (*(v106 + 8))(v46, v74);
      goto LABEL_11;
    }

    v120 = 5;
    sub_1CEF41994();
    v48 = v21;
    v63 = v86;
    sub_1CEFA8710();
    v50 = v106;
    if (!v63)
    {
      (*(v97 + 8))(v41, v98);
      (*(v50 + 8))(v46, v21);
      swift_unknownObjectRelease();
      v51 = v85;
      goto LABEL_33;
    }
  }

  else
  {
    v45 = v105;
    v46 = v112;
    if (v44 == 3)
    {
      v118 = 3;
      sub_1CEF41A3C();
      v47 = v103;
      v48 = v43;
      v49 = v86;
      sub_1CEFA8710();
      v50 = v106;
      if (!v49)
      {
        (*(v92 + 8))(v47, v39);
        (*(v50 + 8))(v46, v43);
        swift_unknownObjectRelease();
        v51 = v85;
LABEL_33:
        swift_storeEnumTagMultiPayload();
        v77 = v111;
LABEL_36:
        sub_1CEF41C34(v51, v45);
        v58 = v77;
        return __swift_destroy_boxed_opaque_existential_0(v58);
      }
    }

    else
    {
      v119 = 4;
      sub_1CEF419E8();
      v72 = v104;
      v48 = v43;
      v73 = v86;
      sub_1CEFA8710();
      v50 = v106;
      if (!v73)
      {
        (*(v95 + 8))(v72, v96);
        (*(v50 + 8))(v46, v43);
        swift_unknownObjectRelease();
        v51 = v85;
        goto LABEL_33;
      }
    }
  }

  (*(v50 + 8))(v46, v48);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v58 = v111;
  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1CEF3F484()
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

uint64_t sub_1CEF3F4B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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

BOOL sub_1CEF3F4EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1CEF3F518()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_1CEF3F54C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 34;
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

uint64_t sub_1CEF3F580()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t Prefetch.Response.Node.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prefetch.Response.Node.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prefetch.Response.Node.cloudOSVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prefetch.Response.Node.cloudOSVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prefetch.Response.Node.cloudOSReleaseType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Prefetch.Response.Node.cloudOSReleaseType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Prefetch.Response.Node.validationResult.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prefetch.Response.Node(0) + 28);

  return sub_1CEF41D54(a1, v3);
}

uint64_t Prefetch.Response.Node.savedToCache.setter(char a1)
{
  result = type metadata accessor for Prefetch.Response.Node(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Prefetch.Response.Node.udid.getter()
{
  v1 = (v0 + *(type metadata accessor for Prefetch.Response.Node(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Prefetch.Response.Node.udid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Prefetch.Response.Node(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Prefetch.Response.Node.init(identifier:cloudOSVersion:cloudOSReleaseType:validationResult:savedToCache:udid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for Prefetch.Response.Node(0);
  v19 = (a9 + v18[9]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_1CEF41C34(a7, a9 + v18[7]);
  *(a9 + v18[8]) = a8;
  *v19 = a10;
  v19[1] = a11;
  return result;
}

unint64_t sub_1CEF3FA80()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x436F546465766173;
  if (v1 != 4)
  {
    v3 = 1684628597;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000012;
  if (v1 == 1)
  {
    v4 = 0x56534F64756F6C63;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CEF3FB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF434B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF3FB84(uint64_t a1)
{
  v2 = sub_1CEF41ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3FBC0(uint64_t a1)
{
  v2 = sub_1CEF41ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.Node.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FF0, &qword_1CEFA9910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF41ED0();
  sub_1CEFA8A60();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_1CEFA8880();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24[14] = 1;
    sub_1CEFA8880();
    v15 = v3[4];
    v16 = v3[5];
    v24[13] = 2;
    sub_1CEFA8880();
    v17 = type metadata accessor for Prefetch.Response.Node(0);
    v18 = v17[7];
    v24[12] = 3;
    type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    sub_1CEF41CEC(&qword_1EDE37BD0, type metadata accessor for Prefetch.Response.Node.ValidationResult);
    sub_1CEFA88D0();
    v19 = *(v3 + v17[8]);
    v24[11] = 4;
    sub_1CEFA8890();
    v20 = (v3 + v17[9]);
    v21 = *v20;
    v22 = v20[1];
    v24[10] = 5;
    sub_1CEFA8830();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Prefetch.Response.Node.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FF8, &qword_1CEFA9918);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Prefetch.Response.Node(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CEF41ED0();
  v17 = v10;
  v18 = v33;
  sub_1CEFA8A50();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v19 = v6;
  v40 = 0;
  v20 = v31;
  *v14 = sub_1CEFA8780();
  v14[1] = v21;
  v39 = 1;
  v14[2] = sub_1CEFA8780();
  v14[3] = v22;
  v38 = 2;
  v14[4] = sub_1CEFA8780();
  v14[5] = v23;
  v37 = 3;
  sub_1CEF41CEC(&qword_1EC4A9000, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  sub_1CEFA87D0();
  sub_1CEF41C34(v19, v14 + v11[7]);
  v36 = 4;
  *(v14 + v11[8]) = sub_1CEFA8790() & 1;
  v35 = 5;
  v25 = sub_1CEFA8730();
  v27 = v26;
  v28 = (v14 + v11[9]);
  (*(v20 + 8))(v17, v32);
  *v28 = v25;
  v28[1] = v27;
  sub_1CEF41F24(v14, v30, type metadata accessor for Prefetch.Response.Node);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_1CEF41F8C(v14, type metadata accessor for Prefetch.Response.Node);
}

uint64_t Prefetch.Response.nodes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Prefetch.Response.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Prefetch.Response.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Prefetch.Response.init(id:nodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v7 = sub_1CEFA8070();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a1, v7);
  *a3 = a2;
  return result;
}

uint64_t sub_1CEF4053C()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 0x7365646F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1CEF40568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF40638(uint64_t a1)
{
  v2 = sub_1CEF42044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF40674(uint64_t a1)
{
  v2 = sub_1CEF42044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9008, &qword_1CEFA9920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF42044();
  sub_1CEFA8A60();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9010, &qword_1CEFA9928);
  sub_1CEF42098(&qword_1EDE379A8, qword_1EDE37B20);
  sub_1CEFA88D0();
  if (!v2)
  {
    v11 = *(type metadata accessor for Prefetch.Response(0) + 20);
    v13[6] = 1;
    sub_1CEFA8070();
    sub_1CEF41CEC(&qword_1EDE380D0, MEMORY[0x1E69695A8]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Prefetch.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1CEFA8070();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9018, &qword_1CEFA9930);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Prefetch.Response(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF42044();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = a1;
  v15 = v13;
  v17 = v28;
  v16 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9010, &qword_1CEFA9928);
  v32 = 0;
  sub_1CEF42098(&qword_1EC4A9020, &qword_1EC4A9028);
  v18 = v30;
  sub_1CEFA87D0();
  v23 = v15;
  v24 = v33;
  *v15 = v33;
  v31 = 1;
  sub_1CEF41CEC(&qword_1EC4A9030, MEMORY[0x1E69695A8]);
  sub_1CEFA87D0();
  (*(v17 + 8))(v9, v18);
  v19 = *(v10 + 20);
  v20 = v23;
  (*(v26 + 32))(&v23[v19], v6, v16);
  sub_1CEF41F24(v20, v27, type metadata accessor for Prefetch.Response);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_1CEF41F8C(v20, type metadata accessor for Prefetch.Response);
}

uint64_t Prefetch.workloadType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prefetch.workloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prefetch.workloadParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

PrivateCloudCompute::Prefetch __swiftcall Prefetch.init(workloadType:workloadParameters:)(PrivateCloudCompute::Prefetch workloadType, Swift::OpaquePointer_optional workloadParameters)
{
  *v2 = workloadType.workloadType;
  v2[1]._countAndFlagsBits = workloadParameters.value._rawValue;
  workloadType.workloadParameters = workloadParameters;
  return workloadType;
}

uint64_t sub_1CEF40D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1CEFA7E60();
    if (v10)
    {
      v11 = sub_1CEFA7E90();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1CEFA7E80();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1CEFA7E60();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1CEFA7E90();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1CEFA7E80();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CEF40FAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1CEF4113C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1CEF41BE0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1CEF40D7C(v14, a3, a4, &v13);
  v10 = v4;
  sub_1CEF41BE0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1CEF4113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1CEFA7E60();
  v11 = result;
  if (result)
  {
    result = sub_1CEFA7E90();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CEFA7E80();
  sub_1CEF40D7C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1CEF411F4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1CEF43738(a3, a4);
          return sub_1CEF40FAC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV16ValidationResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CEFA8030();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v48 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9060, &qword_1CEFAA478);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = (&v48 + *(v20 + 56) - v21);
  v23 = a1;
  v24 = &v48 - v21;
  sub_1CEF41F24(v23, &v48 - v21, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  sub_1CEF41F24(a2, v22, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_32;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v26 = v51;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CEF41F24(v24, v15, type metadata accessor for Prefetch.Response.Node.ValidationResult);
      v28 = *v15;
      v27 = v15[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v28 == *v22 && v27 == v22[1])
        {
          v45 = v22[1];
        }

        else
        {
          v30 = v22[1];
          v31 = sub_1CEFA8950();

          if ((v31 & 1) == 0)
          {
            sub_1CEF41F8C(v24, type metadata accessor for Prefetch.Response.Node.ValidationResult);
            goto LABEL_28;
          }
        }

LABEL_32:
        sub_1CEF41F8C(v24, type metadata accessor for Prefetch.Response.Node.ValidationResult);
        v35 = 1;
        return v35 & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_32;
    }

LABEL_27:
    sub_1CEF436D0(v24);
    goto LABEL_28;
  }

  v50 = v24;
  sub_1CEF41F24(v24, v17, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  v32 = *v17;
  v33 = v17[1];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0) + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v26 + 8))(v17 + v34, v4);
    sub_1CEF41BE0(v32, v33);
    v24 = v50;
    goto LABEL_27;
  }

  v36 = v22[1];
  v48 = *v22;
  v49 = v33;
  v37 = *(v26 + 32);
  v38 = v17 + v34;
  v39 = v36;
  v37(v10, v38, v4);
  v40 = v22 + v34;
  v41 = v8;
  v42 = v48;
  v37(v41, v40, v4);
  v43 = v49;
  if (sub_1CEF411F4(v32, v49, v42, v39))
  {
    v35 = sub_1CEFA8000();
    sub_1CEF41BE0(v42, v39);
    sub_1CEF41BE0(v32, v43);
    v44 = *(v26 + 8);
    v44(v41, v4);
    v44(v10, v4);
    sub_1CEF41F8C(v50, type metadata accessor for Prefetch.Response.Node.ValidationResult);
    return v35 & 1;
  }

  sub_1CEF41BE0(v42, v39);
  sub_1CEF41BE0(v32, v43);
  v47 = *(v26 + 8);
  v47(v41, v4);
  v47(v10, v4);
  sub_1CEF41F8C(v50, type metadata accessor for Prefetch.Response.Node.ValidationResult);
LABEL_28:
  v35 = 0;
  return v35 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1CEF418EC()
{
  result = qword_1EDE37C40;
  if (!qword_1EDE37C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C40);
  }

  return result;
}

unint64_t sub_1CEF41940()
{
  result = qword_1EC4A8F68;
  if (!qword_1EC4A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F68);
  }

  return result;
}

unint64_t sub_1CEF41994()
{
  result = qword_1EC4A8F70;
  if (!qword_1EC4A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F70);
  }

  return result;
}

unint64_t sub_1CEF419E8()
{
  result = qword_1EC4A8F78;
  if (!qword_1EC4A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F78);
  }

  return result;
}

unint64_t sub_1CEF41A3C()
{
  result = qword_1EDE37C58;
  if (!qword_1EDE37C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C58);
  }

  return result;
}

unint64_t sub_1CEF41A90()
{
  result = qword_1EC4A8F80;
  if (!qword_1EC4A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F80);
  }

  return result;
}

unint64_t sub_1CEF41AE4()
{
  result = qword_1EC4A8F88;
  if (!qword_1EC4A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F88);
  }

  return result;
}

unint64_t sub_1CEF41B38()
{
  result = qword_1EDE37C28;
  if (!qword_1EDE37C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C28);
  }

  return result;
}

unint64_t sub_1CEF41B8C()
{
  result = qword_1EDE380E8;
  if (!qword_1EDE380E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE380E8);
  }

  return result;
}

uint64_t sub_1CEF41BE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CEF41C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CEF41C98()
{
  result = qword_1EC4A8FE0;
  if (!qword_1EC4A8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8FE0);
  }

  return result;
}

uint64_t sub_1CEF41CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CEF41D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1CEFA8950() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Prefetch.Response.Node(0);
  if ((_s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV16ValidationResultO2eeoiySbAI_AItFZ_0(a1 + v6[7], a2 + v6[7]) & 1) == 0 || *(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v8 = v6[9];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (v12)
    {
      v13 = *v9 == *v11 && v10 == v12;
      if (v13 || (sub_1CEFA8950() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v12;
}

unint64_t sub_1CEF41ED0()
{
  result = qword_1EDE37C80;
  if (!qword_1EDE37C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C80);
  }

  return result;
}

uint64_t sub_1CEF41F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF41F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF4200C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CEF42044()
{
  result = qword_1EDE37C98;
  if (!qword_1EDE37C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C98);
  }

  return result;
}

uint64_t sub_1CEF42098(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9010, &qword_1CEFA9928);
    sub_1CEF41CEC(a2, type metadata accessor for Prefetch.Response.Node);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_1CEF42148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CEF42190(uint64_t result, int a2, int a3)
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

void sub_1CEF42208()
{
  sub_1CEF4228C();
  if (v0 <= 0x3F)
  {
    sub_1CEFA8070();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF4228C()
{
  if (!qword_1EDE379B0)
  {
    type metadata accessor for Prefetch.Response.Node(255);
    v0 = sub_1CEFA8470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE379B0);
    }
  }
}

void sub_1CEF4230C()
{
  type metadata accessor for Prefetch.Response.Node.ValidationResult(319);
  if (v0 <= 0x3F)
  {
    sub_1CEF423B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF423B0()
{
  if (!qword_1EDE385E8[0])
  {
    v0 = sub_1CEFA85B0();
    if (!v1)
    {
      atomic_store(v0, qword_1EDE385E8);
    }
  }
}

void sub_1CEF42450()
{
  sub_1CEF424C4();
  if (v0 <= 0x3F)
  {
    sub_1CEF42530();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CEF424C4()
{
  if (!qword_1EDE380F0)
  {
    sub_1CEFA8030();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE380F0);
    }
  }
}

uint64_t sub_1CEF42530()
{
  result = qword_1EDE379C0;
  if (!qword_1EDE379C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDE379C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prefetch.Response.Node.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Prefetch.Response.Node.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Prefetch.Response.Node.ValidationResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Prefetch.Response.Node.ValidationResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateLimitInfo.WorkloadTag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RateLimitInfo.WorkloadTag.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF429CC()
{
  result = qword_1EC4A9038;
  if (!qword_1EC4A9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9038);
  }

  return result;
}

unint64_t sub_1CEF42A24()
{
  result = qword_1EC4A9040;
  if (!qword_1EC4A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9040);
  }

  return result;
}

unint64_t sub_1CEF42A7C()
{
  result = qword_1EC4A9048;
  if (!qword_1EC4A9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9048);
  }

  return result;
}

unint64_t sub_1CEF42AD4()
{
  result = qword_1EC4A9050;
  if (!qword_1EC4A9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9050);
  }

  return result;
}

unint64_t sub_1CEF42B2C()
{
  result = qword_1EC4A9058;
  if (!qword_1EC4A9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9058);
  }

  return result;
}

unint64_t sub_1CEF42B84()
{
  result = qword_1EDE37C88;
  if (!qword_1EDE37C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C88);
  }

  return result;
}

unint64_t sub_1CEF42BDC()
{
  result = qword_1EDE37C90;
  if (!qword_1EDE37C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C90);
  }

  return result;
}

unint64_t sub_1CEF42C34()
{
  result = qword_1EDE37C70;
  if (!qword_1EDE37C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C70);
  }

  return result;
}

unint64_t sub_1CEF42C8C()
{
  result = qword_1EDE37C78;
  if (!qword_1EDE37C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C78);
  }

  return result;
}

unint64_t sub_1CEF42CE4()
{
  result = qword_1EDE37C18;
  if (!qword_1EDE37C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C18);
  }

  return result;
}

unint64_t sub_1CEF42D3C()
{
  result = qword_1EDE37C20;
  if (!qword_1EDE37C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C20);
  }

  return result;
}

unint64_t sub_1CEF42D94()
{
  result = qword_1EDE37C08;
  if (!qword_1EDE37C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C08);
  }

  return result;
}

unint64_t sub_1CEF42DEC()
{
  result = qword_1EDE37C10;
  if (!qword_1EDE37C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C10);
  }

  return result;
}

unint64_t sub_1CEF42E44()
{
  result = qword_1EDE37C60;
  if (!qword_1EDE37C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C60);
  }

  return result;
}

unint64_t sub_1CEF42E9C()
{
  result = qword_1EDE37C68;
  if (!qword_1EDE37C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C68);
  }

  return result;
}

unint64_t sub_1CEF42EF4()
{
  result = qword_1EDE37C48;
  if (!qword_1EDE37C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C48);
  }

  return result;
}

unint64_t sub_1CEF42F4C()
{
  result = qword_1EDE37C50;
  if (!qword_1EDE37C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C50);
  }

  return result;
}

unint64_t sub_1CEF42FA4()
{
  result = qword_1EDE37BF8;
  if (!qword_1EDE37BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BF8);
  }

  return result;
}

unint64_t sub_1CEF42FFC()
{
  result = qword_1EDE37C00;
  if (!qword_1EDE37C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C00);
  }

  return result;
}

unint64_t sub_1CEF43054()
{
  result = qword_1EDE37BD8;
  if (!qword_1EDE37BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BD8);
  }

  return result;
}

unint64_t sub_1CEF430AC()
{
  result = qword_1EDE37BE0;
  if (!qword_1EDE37BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BE0);
  }

  return result;
}

unint64_t sub_1CEF43104()
{
  result = qword_1EDE37BE8;
  if (!qword_1EDE37BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BE8);
  }

  return result;
}

unint64_t sub_1CEF4315C()
{
  result = qword_1EDE37BF0;
  if (!qword_1EDE37BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BF0);
  }

  return result;
}

unint64_t sub_1CEF431B4()
{
  result = qword_1EDE37C30;
  if (!qword_1EDE37C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C30);
  }

  return result;
}

unint64_t sub_1CEF4320C()
{
  result = qword_1EDE37C38;
  if (!qword_1EDE37C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C38);
  }

  return result;
}

uint64_t sub_1CEF43260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CEFB5020 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CEFB5040 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F54797269707865 && a2 == 0xEE00656772614C6FLL || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CEFB5060 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5080 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1CEF434B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56534F64756F6C63 && a2 == 0xEE006E6F69737265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB50A0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB50C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436F546465766173 && a2 == 0xEC00000065686361 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1CEF436D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9060, &qword_1CEFAA478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CEF43738(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t TrustedRequest.init(id:workloadType:workloadParameters:featureIdentifier:sessionIdentifier:bundleIdentifierOverride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = type metadata accessor for TrustedRequest(0);
  v21 = v11[6];
  v12 = (a9 + v11[7]);
  v27 = (a9 + v11[8]);
  v13 = (a9 + v11[9]);
  v14 = v11[10];
  v15 = sub_1CEFA8070();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(a9 + v14, 1, 1, v15);
  v18 = *(v16 + 32);
  v18(a9, a1, v15);
  v19 = (a9 + v11[5]);
  *v19 = a2;
  v19[1] = a3;
  *(a9 + v21) = a4;
  *v12 = a8;
  v12[1] = a10;
  *v13 = a5;
  v13[1] = a6;
  sub_1CEF43944(a9 + v14);
  v18(a9 + v14, a7, v15);
  result = (v17)(a9 + v14, 0, 1, v15);
  *v27 = 0;
  v27[1] = 0;
  return result;
}

uint64_t sub_1CEF43944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ErrorCodableValue.init<A>(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v47 = a3;
  v49 = a4;
  v46 = sub_1CEFA84C0();
  v43 = *(v46 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA8250();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - v18;
  v20 = *(a2 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v17);
  v44 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  v26 = v20[2];
  v48 = a1;
  v27 = a1;
  v28 = v26;
  v26(&v43 - v24, v27, a2);
  if (!swift_dynamicCast())
  {
    v37 = v45;
    v36 = v46;
    if (swift_dynamicCast())
    {
      v38 = v20[1];
      v38(v48, a2);
      (*(v43 + 8))(v37, v36);
      result = (v38)(v25, a2);
      v29 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 0uLL;
      v34 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v39 = v20[1];
    v39(v25, a2);
    v40 = v44;
    v41 = v48;
    v28(v44, v48, a2);
    ErrorCodableValue.NSErrorCodableValue.init<A>(error:)(v40, a2, v50);
    result = (v39)(v41, a2);
    v29 = v50[0];
    v32 = v50[1];
    v33 = v50[2];
    v34 = 2;
    v35 = v51;
    goto LABEL_7;
  }

  (*(v9 + 32))(v16, v19, v8);
  (*(v9 + 16))(v13, v16, v8);
  ErrorCodableValue.NWErrorCodableValue.init(error:)(v13, v50);
  (*(v9 + 8))(v16, v8);
  if (BYTE4(v50[0]) == 255)
  {
    goto LABEL_6;
  }

  v29 = LODWORD(v50[0]) | (BYTE4(v50[0]) << 32);
  v30 = v20[1];
  v30(v48, a2);
  result = (v30)(v25, a2);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0uLL;
LABEL_7:
  v42 = v49;
  *v49 = v29;
  v42[1] = v32;
  v42[2] = v33;
  *(v42 + 3) = v35;
  *(v42 + 40) = v34;
  return result;
}

uint64_t ErrorCodableValue.NWErrorCodableValue.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CEFA8250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E6977D68])
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    v11 = sub_1CEFA8240();
    result = (*(v5 + 8))(a1, v4);
    v13 = v11;
  }

  else if (v9 == *MEMORY[0x1E6977D58])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v8, v4);
    v13 = *v8 | 0x100000000;
  }

  else if (v9 == *MEMORY[0x1E6977D60])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v8, v4);
    v13 = *v8 | 0x200000000;
  }

  else
  {
    v14 = *MEMORY[0x1E6977D70];
    v15 = *(v5 + 8);
    v16 = v9;
    v15(a1, v4);
    if (v16 == v14)
    {
      result = (*(v5 + 96))(v8, v4);
      v13 = *v8 | 0x300000000;
    }

    else
    {
      result = (v15)(v8, v4);
      v13 = 0xFF00000000;
    }
  }

  *a2 = v13;
  *(a2 + 4) = BYTE4(v13);
  return result;
}

uint64_t ErrorCodableValue.CancellationCodableValue.init(error:)(uint64_t a1)
{
  v2 = sub_1CEFA84C0();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

char *ErrorCodableValue.NSErrorCodableValue.init<A>(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_1CEFA8920();
  v71 = a2;
  v72 = a3;
  v69 = v6;
  v70 = a1;
  if (v10)
  {
    v11 = v10;
    (*(v6 + 8))(v9, a2);
  }

  else
  {
    v11 = swift_allocError();
    (*(v6 + 32))(v12, v9, a2);
  }

  v13 = sub_1CEFA7EF0();

  v14 = [v13 domain];
  v68 = sub_1CEFA8300();
  v67 = v15;

  v66 = [v13 code];
  v74 = v13;
  v16 = [v13 userInfo];
  v17 = sub_1CEFA82B0();

  v18 = sub_1CEF48D44(v17, sub_1CEF491A4, sub_1CEF491A4);
  v73 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  result = sub_1CEFA86D0();
  v20 = 0;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v75 = result + 64;
  v76 = result;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_13:
      v28 = v25 | (v20 << 6);
      v29 = (*(v18 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_1CEF37314(*(v18 + 56) + 32 * v28, v77);
      sub_1CEF37314(v77, v81);

      if (!swift_dynamicCast())
      {
        v79 = 0;
        v80 = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v77, v78[1]);
        sub_1CEFA8930();
      }

      v32 = v79;
      v33 = v80;
      result = __swift_destroy_boxed_opaque_existential_0(v77);
      *&v75[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      v34 = v76;
      v35 = (*(v76 + 6) + 16 * v28);
      *v35 = v30;
      v35[1] = v31;
      v36 = (*(v34 + 7) + 16 * v28);
      *v36 = v32;
      v36[1] = v33;
      v37 = *(v34 + 2);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      *(v34 + 2) = v39;
      if (!v23)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v20 >= v24)
      {
        break;
      }

      v27 = *(v18 + 64 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    v40 = [v74 userInfo];
    v41 = sub_1CEFA82B0();

    v42 = v73;
    v43 = sub_1CEF48D44(v41, sub_1CEF48FB0, sub_1CEF48FB0);
    v75 = v42;

    v44 = 1 << *(v43 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v43 + 64);
    v47 = (v44 + 63) >> 6;

    v48 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    while (v46)
    {
LABEL_27:
      v51 = __clz(__rbit64(v46)) | (v48 << 6);
      v52 = (*(v43 + 48) + 16 * v51);
      v53 = *v52;
      v54 = v52[1];
      sub_1CEF37314(*(v43 + 56) + 32 * v51, v78);
      v77[0] = v53;
      v77[1] = v54;

      v55 = sub_1CEF47250(v53, v54, v78);
      result = sub_1CEF48EB4(v77);
      v56 = *(v55 + 16);
      v57 = *(v49 + 2);
      v58 = v57 + v56;
      if (__OFADD__(v57, v56))
      {
        goto LABEL_43;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v58 > *(v49 + 3) >> 1)
      {
        if (v57 <= v58)
        {
          v59 = v57 + v56;
        }

        else
        {
          v59 = v57;
        }

        result = sub_1CEF480E4(result, v59, 1, v49);
        v49 = result;
      }

      v46 &= v46 - 1;
      if (*(v55 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v56)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v56)
        {
          v60 = *(v49 + 2);
          v38 = __OFADD__(v60, v56);
          v61 = v60 + v56;
          if (v38)
          {
            goto LABEL_46;
          }

          *(v49 + 2) = v61;
        }
      }

      else
      {

        if (v56)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v47)
      {

        (*(v69 + 8))(v70, v71);

        v62 = v72;
        v63 = v67;
        *v72 = v68;
        v62[1] = v63;
        v64 = v76;
        v62[2] = v66;
        v62[3] = v64;
        v62[4] = v49;
        return result;
      }

      v46 = *(v43 + 64 + 8 * v50);
      ++v48;
      if (v46)
      {
        v48 = v50;
        goto LABEL_27;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void ErrorCodableValue.unwrap()()
{
  v1 = sub_1CEFA8250();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      sub_1CEFA84C0();
      sub_1CEF48F68(&qword_1EC4A9088, MEMORY[0x1E69E8550]);
      swift_allocError();
      _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
    }

    else
    {
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v16 = v0 + 8;
      v14 = *(v0 + 8);
      v15 = *(v16 + 8);
      sub_1CEF48F1C();
      codableValue.domain._countAndFlagsBits = v6;
      codableValue.domain._object = v14;
      codableValue.code = v15;
      codableValue.userInfo._rawValue = v13;
      codableValue.underlyingErrors._rawValue = v12;

      NSError.init(codableValue:)(v17, &codableValue);
    }
  }

  else
  {
    sub_1CEF48F68(&qword_1EC4A9090, MEMORY[0x1E6977D78]);
    swift_allocError();
    v8 = v7;
    if (BYTE4(v6) > 1u)
    {
      *v5 = v6;
      if (BYTE4(v6) == 2)
      {
        v11 = MEMORY[0x1E6977D60];
      }

      else
      {
        v11 = MEMORY[0x1E6977D70];
      }
    }

    else if (BYTE4(v6))
    {
      *v5 = v6;
      v11 = MEMORY[0x1E6977D58];
    }

    else
    {
      v9 = sub_1CEFA8230();
      if ((v9 & 0x100000000) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      *v5 = v10;
      v11 = MEMORY[0x1E6977D68];
    }

    (*(v2 + 104))(v5, *v11, v1);
    (*(v2 + 32))(v8, v5, v1);
  }
}

uint64_t NWError.init(codableValue:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v2 = a1;
  LODWORD(a1) = *a1;
  if (*(v2 + 4) > 1u)
  {
    v4 = MEMORY[0x1E6977D60];
    if (*(v2 + 4) != 2)
    {
      v4 = MEMORY[0x1E6977D70];
    }
  }

  else if (*(v2 + 4))
  {
    v4 = MEMORY[0x1E6977D58];
  }

  else
  {
    a1 = sub_1CEFA8230();
    if ((a1 & 0x100000000) != 0)
    {
      LODWORD(a1) = 1;
    }

    v4 = MEMORY[0x1E6977D68];
  }

  *a2 = a1;
  v5 = *v4;
  v6 = sub_1CEFA8250();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

void __swiftcall NSError.init(codableValue:)(NSError *__return_ptr retstr, PrivateCloudCompute::ErrorCodableValue::NSErrorCodableValue *codableValue)
{
  v3 = sub_1CEFA8250();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  object = codableValue->domain._object;
  countAndFlagsBits = codableValue->domain._countAndFlagsBits;
  rawValue = codableValue->userInfo._rawValue;
  code = codableValue->code;
  v10 = codableValue->underlyingErrors._rawValue;
  v11 = sub_1CEF47D80(rawValue);
  v12 = v11;
  v13 = *(v10 + 2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = *(v10 + 8);
      v15 = v10[72];
      v16 = *MEMORY[0x1E696AA08];
      v17 = *(v10 + 2);
      v67 = *(v10 + 3);
      v68 = v17;
      v18 = sub_1CEFA8300();
      v20 = v19;
      codableValuea.domain = v68;
      *&codableValuea.code = v67;
      codableValuea.underlyingErrors._rawValue = v14;
      v72 = v15;
      ErrorCodableValue.unwrap()();
      v22 = v21;
      swift_getErrorValue();
      v23 = v12;
      v24 = v69;
      v25 = v70;
      codableValuea.userInfo._rawValue = v70;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&codableValuea.domain._countAndFlagsBits);
      (*(*(v25 - 1) + 16))(boxed_opaque_existential_0, v24, v25);

      sub_1CEF49BC0(&codableValuea, v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v23;
      sub_1CEF4967C(v74, v18, v20, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v56 = v11;
      v58 = rawValue;
      v59 = object;
      v28 = *MEMORY[0x1E696A750];
      v54 = sub_1CEFA8300();
      v55 = v29;
      *&v74[0] = MEMORY[0x1E69E7CC0];

      sub_1CEF49BA0(0, v13, 0);
      v30 = *&v74[0];
      v63 = *MEMORY[0x1E6977D70];
      *&v67 = v4 + 104;
      v62 = *MEMORY[0x1E6977D60];
      v61 = *MEMORY[0x1E6977D58];
      v60 = *MEMORY[0x1E6977D68];
      v66 = (v4 + 32);
      v57 = v10;
      v31 = v10 + 72;
      do
      {
        v32 = *(v31 - 5);
        if (*v31)
        {
          if (*v31 == 1)
          {
            sub_1CEFA84C0();
            sub_1CEF48F68(&qword_1EC4A9088, MEMORY[0x1E69E8550]);
            v33 = swift_allocError();
            _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
          }

          else
          {
            v40 = *(v31 - 2);
            v39 = *(v31 - 1);
            v41 = v7;
            v42 = v3;
            v43 = *(v31 - 4);
            v44 = *(v31 - 3);
            v68._countAndFlagsBits = sub_1CEF48F1C();
            codableValuea.domain._countAndFlagsBits = v32;
            codableValuea.domain._object = v43;
            codableValuea.code = v44;
            codableValuea.userInfo._rawValue = v40;
            v3 = v42;
            v7 = v41;
            codableValuea.underlyingErrors._rawValue = v39;

            NSError.init(codableValue:)(v45, &codableValuea);
            v33 = v46;
          }
        }

        else
        {
          sub_1CEF48F68(&qword_1EC4A9090, MEMORY[0x1E6977D78]);
          v33 = swift_allocError();
          v35 = v34;
          if (BYTE4(v32) > 1u)
          {
            *v7 = v32;
            if (BYTE4(v32) == 2)
            {
              v38 = &v76;
            }

            else
            {
              v38 = &v76 + 4;
            }
          }

          else if (BYTE4(v32))
          {
            *v7 = v32;
            v38 = &v75 + 4;
          }

          else
          {
            v36 = sub_1CEFA8230();
            if ((v36 & 0x100000000) != 0)
            {
              v37 = 1;
            }

            else
            {
              v37 = v36;
            }

            *v7 = v37;
            v38 = &v75;
          }

          (*v67)(v7, *(v38 - 64), v3);
          (*v66)(v35, v7, v3);
        }

        *&v74[0] = v30;
        v48 = *(v30 + 16);
        v47 = *(v30 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1CEF49BA0((v47 > 1), v48 + 1, 1);
          v30 = *&v74[0];
        }

        v31 += 48;
        *(v30 + 16) = v48 + 1;
        *(v30 + 8 * v48 + 32) = v33;
        --v13;
      }

      while (v13);

      codableValuea.userInfo._rawValue = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
      codableValuea.domain._countAndFlagsBits = v30;
      sub_1CEF49BC0(&codableValuea, v74);
      v49 = v56;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v49;
      sub_1CEF4967C(v74, v54, v55, v50);
    }
  }

  v51 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v52 = sub_1CEFA82F0();
  v53 = sub_1CEFA82A0();

  [v51 initWithDomain:v52 code:code userInfo:v53];
}

uint64_t sub_1CEF44FF4(uint64_t a1)
{
  v2 = sub_1CEF49D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45030(uint64_t a1)
{
  v2 = sub_1CEF49D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4506C()
{
  v1 = 0x616C6C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F7774656ELL;
  }
}

uint64_t sub_1CEF450CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF4B79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF450F4(uint64_t a1)
{
  v2 = sub_1CEF49C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45130(uint64_t a1)
{
  v2 = sub_1CEF49C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4516C(uint64_t a1)
{
  v2 = sub_1CEF49DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF451A8(uint64_t a1)
{
  v2 = sub_1CEF49DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF451E4(uint64_t a1)
{
  v2 = sub_1CEF49C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45220(uint64_t a1)
{
  v2 = sub_1CEF49C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90A0, &qword_1CEFAA4A8);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90A8, &qword_1CEFAA4B0);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90B0, &qword_1CEFAA4B8);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90B8, &qword_1CEFAA4C0);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[3];
  v33 = v1[2];
  v34 = v18;
  v31 = v1[4];
  v32 = v20;
  v21 = *(v1 + 40);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF49C34();
  sub_1CEFA8A60();
  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v44) = 1;
      sub_1CEF49D30();
      v23 = v43;
      sub_1CEFA8820();
      sub_1CEF49D84();
      v24 = v38;
      sub_1CEFA88D0();
      (*(v37 + 8))(v9, v24);
      return (*(v42 + 8))(v17, v23);
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_1CEF49C88();
      v28 = v39;
      v29 = v43;
      sub_1CEFA8820();
      v44 = v19;
      v45 = v34;
      v46 = v33;
      v47 = v32;
      v48 = v31;
      sub_1CEF49CDC();
      v30 = v41;
      sub_1CEFA88D0();
      (*(v40 + 8))(v28, v30);
      return (*(v42 + 8))(v17, v29);
    }
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1CEF49DD8();
    v26 = v43;
    sub_1CEFA8820();
    LODWORD(v44) = v19;
    BYTE4(v44) = BYTE4(v19);
    sub_1CEF49E2C();
    v27 = v36;
    sub_1CEFA88D0();
    (*(v35 + 8))(v13, v27);
    return (*(v42 + 8))(v17, v26);
  }
}

uint64_t ErrorCodableValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90F8, &qword_1CEFAA4C8);
  v46 = *(v44 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v40[-v4];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9100, &qword_1CEFAA4D0);
  v45 = *(v42 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9108, &qword_1CEFAA4D8);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9110, &unk_1CEFAA4E0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CEF49C34();
  v19 = v49;
  sub_1CEFA8A50();
  if (!v19)
  {
    v49 = v13;
    v21 = v47;
    v20 = v48;
    v22 = sub_1CEFA8800();
    v23 = (2 * *(v22 + 16)) | 1;
    v54 = v22;
    v55 = v22 + 32;
    v56 = 0;
    v57 = v23;
    v24 = sub_1CEF3F484();
    if (v24 == 3 || v56 != v57 >> 1)
    {
      v28 = sub_1CEFA8680();
      swift_allocError();
      v29 = v16;
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
      *v31 = &type metadata for ErrorCodableValue;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v49 + 8))(v29, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          LOBYTE(v50) = 1;
          sub_1CEF49D30();
          v25 = v7;
          sub_1CEFA8710();
          v26 = v49;
          sub_1CEF49ED4();
          v27 = v42;
          sub_1CEFA87D0();
          (*(v45 + 8))(v25, v27);
          (*(v26 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0uLL;
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_1CEF49C88();
          sub_1CEFA8710();
          v34 = v49;
          sub_1CEF49E80();
          v35 = v44;
          sub_1CEFA87D0();
          (*(v46 + 8))(v21, v35);
          (*(v34 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v36 = v50;
          v37 = v51;
          v38 = v52;
          v39 = v53;
        }
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_1CEF49DD8();
        sub_1CEFA8710();
        sub_1CEF49F28();
        sub_1CEFA87D0();
        (*(v43 + 8))(v11, v8);
        (*(v49 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v37 = 0;
        v38 = 0;
        v36 = v50 | (BYTE4(v50) << 32);
        v39 = 0uLL;
      }

      *v20 = v36;
      *(v20 + 8) = v37;
      *(v20 + 16) = v38;
      *(v20 + 24) = v39;
      *(v20 + 40) = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1CEF45DC4()
{
  v1 = 0x7869736F70;
  v2 = 7564404;
  if (*v0 != 2)
  {
    v2 = 0x7261774169666977;
  }

  if (*v0)
  {
    v1 = 7564900;
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

uint64_t sub_1CEF45E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF4B8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF45E5C(uint64_t a1)
{
  v2 = sub_1CEF49F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45E98(uint64_t a1)
{
  v2 = sub_1CEF49F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45ED4(uint64_t a1)
{
  v2 = sub_1CEF4A078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45F10(uint64_t a1)
{
  v2 = sub_1CEF4A078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45F4C(uint64_t a1)
{
  v2 = sub_1CEF4A0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45F88(uint64_t a1)
{
  v2 = sub_1CEF4A0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45FC4(uint64_t a1)
{
  v2 = sub_1CEF4A024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF46000(uint64_t a1)
{
  v2 = sub_1CEF4A024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF460BC(uint64_t a1)
{
  v2 = sub_1CEF49FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF460F8(uint64_t a1)
{
  v2 = sub_1CEF49FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.NWErrorCodableValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9130, &qword_1CEFAA4F0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9138, &qword_1CEFAA4F8);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9140, &qword_1CEFAA500);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9148, &qword_1CEFAA508);
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9150, &qword_1CEFAA510);
  v18 = *(v42 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v21 = &v32 - v20;
  v43 = *v2;
  v22 = *(v2 + 4);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF49F7C();
  sub_1CEFA8A60();
  v24 = (v18 + 8);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v46 = 2;
      sub_1CEF4A024();
      v26 = v36;
      v25 = v42;
      sub_1CEFA8820();
      v27 = v38;
      sub_1CEFA88E0();
      v28 = v37;
    }

    else
    {
      v47 = 3;
      sub_1CEF49FD0();
      v26 = v39;
      v25 = v42;
      sub_1CEFA8820();
      v27 = v41;
      sub_1CEFA88E0();
      v28 = v40;
    }

    (*(v28 + 8))(v26, v27);
  }

  else
  {
    if (v22)
    {
      v45 = 1;
      sub_1CEF4A078();
      v29 = v42;
      sub_1CEFA8820();
      v30 = v35;
      sub_1CEFA88E0();
      (*(v34 + 8))(v13, v30);
      return (*v24)(v21, v29);
    }

    v44 = 0;
    sub_1CEF4A0CC();
    v25 = v42;
    sub_1CEFA8820();
    sub_1CEFA88E0();
    (*(v33 + 8))(v17, v14);
  }

  return (*v24)(v21, v25);
}

uint64_t ErrorCodableValue.NWErrorCodableValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9180, &qword_1CEFAA518);
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9188, &qword_1CEFAA520);
  v56 = *(v52 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v58 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9190, &qword_1CEFAA528);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9198, &qword_1CEFAA530);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A0, &qword_1CEFAA538);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1CEF49F7C();
  v23 = v62;
  sub_1CEFA8A50();
  if (!v23)
  {
    v24 = v15;
    v50 = v12;
    v51 = 0;
    v25 = v11;
    v27 = v58;
    v26 = v59;
    v62 = v17;
    v29 = v60;
    v28 = v61;
    v30 = sub_1CEFA8800();
    v31 = (2 * *(v30 + 16)) | 1;
    v64 = v30;
    v65 = v30 + 32;
    v66 = 0;
    v67 = v31;
    v32 = sub_1CEF43794();
    if (v32 == 4 || v66 != v67 >> 1)
    {
      v36 = sub_1CEFA8680();
      swift_allocError();
      v38 = v37;
      v39 = v20;
      v40 = v16;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20) + 48);
      *v38 = &type metadata for ErrorCodableValue.NWErrorCodableValue;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v62 + 8))(v39, v40);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v63);
    }

    v68 = v32;
    if (v32 <= 1u)
    {
      if (!v32)
      {
        v69 = 0;
        sub_1CEF4A0CC();
        v33 = v51;
        sub_1CEFA8710();
        if (!v33)
        {
          v34 = v50;
          v35 = sub_1CEFA87E0();
          (*(v53 + 8))(v24, v34);
          (*(v62 + 8))(v20, v16);
          swift_unknownObjectRelease();
LABEL_22:
          *v28 = v35;
          *(v28 + 4) = v68;
          return __swift_destroy_boxed_opaque_existential_0(v63);
        }

        goto LABEL_14;
      }

      v69 = 1;
      sub_1CEF4A078();
      v46 = v51;
      sub_1CEFA8710();
      if (!v46)
      {
        v47 = v54;
        v35 = sub_1CEFA87E0();
        (*(v55 + 8))(v25, v47);
        v44 = v62;
        goto LABEL_21;
      }

LABEL_14:
      (*(v62 + 8))(v20, v16);
      goto LABEL_9;
    }

    if (v32 == 2)
    {
      v69 = 2;
      sub_1CEF4A024();
      v43 = v51;
      sub_1CEFA8710();
      v44 = v62;
      if (v43)
      {
        goto LABEL_14;
      }

      v45 = v52;
      v35 = sub_1CEFA87E0();
      (*(v56 + 8))(v27, v45);
    }

    else
    {
      v69 = 3;
      sub_1CEF49FD0();
      v48 = v26;
      v49 = v51;
      sub_1CEFA8710();
      v44 = v62;
      if (v49)
      {
        (*(v62 + 8))(v20, v16);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v63);
      }

      v35 = sub_1CEFA87E0();
      (*(v57 + 8))(v48, v29);
    }

LABEL_21:
    (*(v44 + 8))(v20, v16);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  return __swift_destroy_boxed_opaque_existential_0(v63);
}

uint64_t sub_1CEF46E00(uint64_t a1)
{
  v2 = sub_1CEF4A120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF46E3C(uint64_t a1)
{
  v2 = sub_1CEF4A120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.CancellationCodableValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A8, &qword_1CEFAA540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A120();
  sub_1CEFA8A60();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1CEF46FDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A8, &qword_1CEFAA540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A120();
  sub_1CEFA8A60();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.underlyingErrors.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1CEF47250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E696AA08];
  if (sub_1CEFA8300() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_1CEFA8950();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1CEF37314(a3, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
  if (swift_dynamicCast())
  {
    v10 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1CEFAA480;
    ErrorValue = swift_getErrorValue();
    v13 = v44;
    v14 = v45;
    v15 = *(*(v44 - 8) + 64);
    MEMORY[0x1EEE9AC00](ErrorValue);
    v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    ErrorCodableValue.init<A>(error:)(v17, v13, v14, (v11 + 32));

    return v11;
  }

LABEL_10:
  v19 = *MEMORY[0x1E696A750];
  if (sub_1CEFA8300() == a1 && v20 == a2)
  {
  }

  else
  {
    v22 = sub_1CEFA8950();

    if ((v22 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1CEF37314(a3, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = v52;
  v24 = v52[2];
  if (!v24)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v52 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v24, 0);
  v25 = 4;
  v11 = v52;
  do
  {
    v26 = v23[v25];
    v27 = swift_getErrorValue();
    v28 = v46;
    v29 = v47;
    v30 = *(*(v46 - 8) + 64);
    MEMORY[0x1EEE9AC00](v27);
    v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32);
    ErrorCodableValue.init<A>(error:)(v32, v28, v29, &v48);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v52 = v11;
    v39 = *(v11 + 16);
    v38 = *(v11 + 24);
    if (v39 >= v38 >> 1)
    {
      v42 = v49;
      v43 = v48;
      sub_1CEF4B298((v38 > 1), v39 + 1, 1);
      v35 = v42;
      v34 = v43;
      v11 = v52;
    }

    *(v11 + 16) = v39 + 1;
    v40 = v11 + 48 * v39;
    *(v40 + 32) = v34;
    *(v40 + 48) = v35;
    *(v40 + 64) = v36;
    *(v40 + 72) = v37;
    ++v25;
    --v24;
  }

  while (v24);

  return v11;
}

unint64_t sub_1CEF4763C()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x6F666E4972657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

uint64_t sub_1CEF476B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CEF4BA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CEF476D8(uint64_t a1)
{
  v2 = sub_1CEF4A174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF47714(uint64_t a1)
{
  v2 = sub_1CEF4A174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91B8, &qword_1CEFAA548);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v17 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A174();
  sub_1CEFA8A60();
  LOBYTE(v22) = 0;
  v12 = v20;
  sub_1CEFA8880();
  if (!v12)
  {
    v14 = v17;
    v15 = v18;
    LOBYTE(v22) = 1;
    sub_1CEFA88B0();
    v22 = v15;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108);
    sub_1CEFA88D0();
    v22 = v14;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    sub_1CEF4A288(&qword_1EC4A91D8, sub_1CEF4A1C8);
    sub_1CEFA88D0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91E8, &qword_1CEFAA560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A174();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_1CEFA8780();
  v13 = v12;
  v14 = v11;
  LOBYTE(v22) = 1;
  v20 = sub_1CEFA87B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v21 = 2;
  sub_1CEF4A21C(&qword_1EDE379D0);
  sub_1CEFA87D0();
  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
  v21 = 3;
  sub_1CEF4A288(&qword_1EC4A91F0, sub_1CEF4A300);
  sub_1CEFA87D0();
  (*(v6 + 8))(v9, v5);
  v16 = v22;
  *a2 = v14;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}