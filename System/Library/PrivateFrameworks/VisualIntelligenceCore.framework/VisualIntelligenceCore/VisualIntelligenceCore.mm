void *sub_1D878692C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D878695C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_1D878698C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D8786A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8B15970();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8786A34(uint64_t a1, int a2)
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

uint64_t sub_1D8786A54(uint64_t result, int a2, int a3)
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

unint64_t sub_1D8786AD4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1D8786AF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D8786B40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62828);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8786C70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62828);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroundingProcessor.GroundingError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GroundingProcessor.GroundingError(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8786DF0(uint64_t a1)
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

uint64_t sub_1D8786E0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D8786E2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8786ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8786F7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8787028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87870CC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62868);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62860);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1D8787250(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62868);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62860);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D8787414(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D87874C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8787564(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62A60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8787694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62A60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D87877E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8787894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8787948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_1D8B14960();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D87879C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_1D8B14960();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D8787A3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8787AE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8787B8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8787CBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8787DEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8787F1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D878804C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D878817C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D87882AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8788358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87883FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D878852C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D878865C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EC8);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1D8788834(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EC8);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D8788A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8788AB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8788B5C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F08);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1D8788D34(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D8B14960();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F08);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D8788F40(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D8788F58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63120);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D878941C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B14960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D87894D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B14960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore9AcmeStateO_0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8789634(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D878965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventLookupItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8789718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventLookupItem();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D87897D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D87898A0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D8789AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8789B84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8789C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8789CB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8789D48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActionPin.Pill.Source(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8789DF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionPin.Pill.Source(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8789E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8789F04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BuiltInAction(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D878A350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D878A418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D878A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D8B14F20();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D878A600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CVBundle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D8B14F20();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D878A724()
{
  v1 = type metadata accessor for CVBundle(0);
  v2 = *(v1 - 8);
  v15 = *(v2 + 80);
  v3 = (v15 + 40) & ~v15;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for BundleSelector.Output(0);
  v12 = *(*(v5 - 8) + 80);
  v14 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12;
  v13 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  type metadata accessor for CVBundle.BundleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_1D8B13240();
  v9 = *(*(v8 - 8) + 8);
  v9(v6, v8);
  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  if (!(*(v2 + 48))(v0 + v14, 1, v1))
  {
    v10 = swift_getEnumCaseMultiPayload();
    v9(v0 + v14, v8);
    if (v10 != 1)
    {
      type metadata accessor for CVTrackSnapshot(0);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v14 + v13, v15 | v12 | 7);
}

uint64_t sub_1D878A9F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878AA28()
{
  v1 = sub_1D8B14E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  type metadata accessor for CVBundle.BundleType(0);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v10 = sub_1D8B13240();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  if (v2 != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  type metadata accessor for CVBundle(0);

  v11 = *(v6 + 24);
  v12 = sub_1D8B14F20();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1D878AC70()
{
  v1 = *(type metadata accessor for CVBundle(0) - 8);
  v39 = *(v1 + 80);
  v2 = (v39 + 32) & ~v39;
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
  v38 = *(v4 + 80);
  v5 = (v2 + v3 + v38) & ~v38;
  v6 = *(v4 + 64);
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  v35 = *(v8 + 80);
  v34 = (v5 + v6 + v35) & ~v35;
  v9 = (((*(v8 + 64) + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v40 = *(*(v36 - 8) + 80);
  v10 = v9 + v40 + 8;
  v37 = *(*(v36 - 8) + 64);
  swift_unknownObjectRelease();
  type metadata accessor for CVBundle.BundleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v8 + 8);
  v12(v0 + v2, v7);
  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  v13 = v10 & ~v40;
  v14 = v40;

  v15 = (v0 + v5);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 1)
  {
    if (v16 == 2)
    {

      goto LABEL_23;
    }

    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_23;
      }

LABEL_18:

      goto LABEL_23;
    }

    v26 = sub_1D8B145A0();
LABEL_22:
    (*(*(v26 - 8) + 8))(v15, v26);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  if (v16 == 1)
  {
    v17 = type metadata accessor for VisualLookupClassifier.Result(0);
    if (!(*(*(v17 - 1) + 48))(v0 + v5, 1, v17))
    {
      v12(v0 + v5, v7);
      v18 = v15 + v17[5];
      v12(v18, v7);
      v19 = type metadata accessor for GenericParseDataResult();

      v32 = &v18[*(v19 + 28)];
      v33 = type metadata accessor for VisualUnderstandingContainer(0);
      v20 = *(v33 + 20);
      v21 = sub_1D8B13830();
      v22 = *(v21 - 8);
      v31 = v21;
      if (!(*(v22 + 48))(&v32[v20], 1))
      {
        (*(v22 + 8))(&v32[v20], v31);
      }

      v23 = &v32[*(v33 + 24)];
      v24 = v23[1];
      if (v24 >> 60 != 15)
      {
        sub_1D87A1598(*v23, v24);
      }

      v15 = (v15 + v17[9]);
      type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
      v25 = swift_getEnumCaseMultiPayload();
      v14 = v40;
      if (v25 == 2)
      {
        goto LABEL_18;
      }

      if (v25 != 1)
      {
        if (v25)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      v26 = sub_1D8B138B0();
      goto LABEL_22;
    }
  }

LABEL_23:
  v12(v0 + v34, v7);

  v27 = swift_getEnumCaseMultiPayload();
  v12(v0 + v13, v7);
  if (v27 != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  v28 = *(v36 + 24);
  v29 = sub_1D8B14F20();
  (*(*(v29 - 8) + 8))(v0 + v13 + v28, v29);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v37, v39 | v38 | v35 | v14 | 7);
}

uint64_t sub_1D878B2C0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64388);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D878B2F4()
{
  v1 = type metadata accessor for BuiltInActionExecutor.Request();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v24 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v3;
  type metadata accessor for BuiltInAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_11;
      }

      v9 = sub_1D8B13E30();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v0 + v3, 1, v9))
      {
        (*(v10 + 8))(v0 + v3, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v11 = v7 + v1[9];
  v12 = type metadata accessor for CVBundle(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    type metadata accessor for CVBundle.BundleType(0);
    v13 = swift_getEnumCaseMultiPayload();
    v14 = sub_1D8B13240();
    (*(*(v14 - 8) + 8))(v11, v14);
    if (v13 != 1)
    {
      type metadata accessor for CVTrackSnapshot(0);
    }

    v3 = (v2 + 56) & ~v2;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v7 + v1[14];
  v16 = type metadata accessor for ExecutionParameter();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v18 = swift_getEnumCaseMultiPayload();
    switch(v18)
    {
      case 3:

        v20 = *(type metadata accessor for TapToRadarDraftPayload() + 24);
        v21 = sub_1D8B13000();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(v15 + v20, 1, v21))
        {
          (*(v22 + 8))(v15 + v20, v21);
        }

        break;
      case 2:
        v19 = sub_1D8B14E80();
        (*(*(v19 - 8) + 8))(v15, v19);
        break;
      case 0:

        break;
    }
  }

  v17 = (v3 + v4 + v6) & ~v6;
  (*(v5 + 8))(v0 + v17, v25);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v24, v2 | v6 | 7);
}

uint64_t sub_1D878B7CC()
{

  sub_1D87A1598(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1D878B814()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D878B84C()
{
  sub_1D87A1598(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878B884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for BuiltInAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[13]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D878BA10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for BuiltInAction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D878BB9C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA645B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D878BBCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D878BBDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D878BC1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878BC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionPin(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ActionPin.Pill(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D878BD54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionPin(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ActionPin.Pill(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D878BE50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D878BF0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878BFC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878BFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D878C064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D878C0D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StillAppConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D878C180(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StillAppConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878C224()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878C3D4()
{
  sub_1D88C3978(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D878C410()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878C448()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878C554(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SaliencyStreamConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D878C600(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SaliencyStreamConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878C6A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D878C6E0()
{

  sub_1D88C3978(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1D878C744()
{

  sub_1D88C3978(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1D878C790()
{
  swift_unknownObjectRelease();

  sub_1D88C3978(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1D878C7EC()
{
  v1 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 103) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v7 = v0 + v3 + v1[7];
  v8 = v7 + *(type metadata accessor for DetectionRequest(0) + 20);
  type metadata accessor for DetectionRequest.Originator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:

      break;
    case 2:
      v10 = sub_1D8B13240();
      (*(*(v10 - 8) + 8))(v8, v10);
      break;
    case 0:
      sub_1D87A1598(*v8, *(v8 + 8));
      break;
  }

  sub_1D88C3978(*(v0 + v4), *(v0 + v4 + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  v11 = v0 + v6;
  v12 = *(v0 + v6 + 64);
  if (v12 >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 135) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1D878C9B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878C9E8()
{
  v1 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = v5 + *(type metadata accessor for DetectionRequest(0) + 20);
  type metadata accessor for DetectionRequest.Originator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:

      break;
    case 2:
      v8 = sub_1D8B13240();
      (*(*(v8 - 8) + 8))(v6, v8);
      break;
    case 0:
      sub_1D87A1598(*v6, *(v6 + 8));
      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D878CB44()
{
  v1 = *(type metadata accessor for ProcessorState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = v5 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v12 = swift_getEnumCaseMultiPayload();
    switch(v12)
    {
      case 3:

        break;
      case 2:
        v14 = sub_1D8B13240();
        (*(*(v14 - 8) + 8))(v11, v14);
        break;
      case 0:
        sub_1D87A1598(*v11, *(v11 + 8));
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = v5 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v10 = swift_getEnumCaseMultiPayload();
    switch(v10)
    {
      case 3:

        break;
      case 2:
        v13 = sub_1D8B13240();
        (*(*(v13 - 8) + 8))(v9, v13);
        break;
      case 0:
        sub_1D87A1598(*v9, *(v9 + 8));
        break;
    }

    type metadata accessor for DetectionResult(0);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_25;
    }

    v7 = v5 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v8 = swift_getEnumCaseMultiPayload();
    switch(v8)
    {
      case 3:

        break;
      case 2:
        v15 = sub_1D8B13240();
        (*(*(v15 - 8) + 8))(v7, v15);
        break;
      case 0:
        sub_1D87A1598(*v7, *(v7 + 8));
        break;
    }
  }

LABEL_25:
  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (((v16 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D88C3978(*(v0 + v16), *(v0 + v16 + 8));

  return MEMORY[0x1EEE6BDD0](v0, v17 + 8, v2 | 7);
}

uint64_t sub_1D878CE4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D878CEAC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CVBundle(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  type metadata accessor for CVBundle.BundleType(0);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v10 = sub_1D8B13240();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  if (v2 != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1D878D08C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D878D164()
{
  v1 = *(type metadata accessor for BundleSelector.Output(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for CVBundle(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    type metadata accessor for CVBundle.BundleType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_1D8B13240();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    if (EnumCaseMultiPayload != 1)
    {
      type metadata accessor for CVTrackSnapshot(0);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D878D320()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D878D390()
{
  MEMORY[0x1DA721450](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878D3CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D878D45C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BundleManager.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D878D508(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BundleManager.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1D8B134B0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D878D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1D8B134B0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D878D710()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

uint64_t sub_1D878D760()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 193, 7);
}

uint64_t sub_1D878D80C()
{
  v1 = sub_1D8B131D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D878D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B13240();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D878D984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B13240();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878DA38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D878DA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D878DC18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D878DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D878DD34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D878DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CVBundle.BundleType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D878DF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CVBundle.BundleType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D878DFD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B15340();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D8B150F0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D878E0F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B15340();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D8B150F0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D878E21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleClassification(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RefinementStateInternal(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D878E30C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BundleClassification(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RefinementStateInternal(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D878E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for BundleManager.Configuration(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D878E530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CVBundle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 80) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for BundleManager.Configuration(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D878E6A0()
{
  MEMORY[0x1DA721450](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878E6D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D878E854()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D878E88C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D878E970()
{
  v1 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  type metadata accessor for CVBundle.BundleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  if (EnumCaseMultiPayload != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  type metadata accessor for CVBundle(0);

  v7 = v0 + v3 + *(v1 + 24);

  v8 = type metadata accessor for BundleManager.Configuration(0);
  v9 = *(v8 + 32);
  v10 = sub_1D8B15340();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  v11 = *(v8 + 40);
  v12 = sub_1D8B150F0();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D878EBB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D878EBEC()
{
  v1 = type metadata accessor for BundleClassification(0);
  v46 = *(*(v1 - 8) + 80);
  v2 = (v46 + 32) & ~v46;
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for CVBundle(0) - 8);
  v45 = *(v4 + 80);
  v5 = (v2 + v3 + v45) & ~v45;
  v43 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v6 = *(*(v44 - 8) + 80);
  v7 = v43 + v6;
  v8 = *(*(v44 - 8) + 64);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  type metadata accessor for BundleClassification.ClassificationType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v8;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      v11 = type metadata accessor for VisualLookupClassifier.Result(0);
      if ((*(*(v11 - 8) + 48))(v9, 1, v11))
      {
        goto LABEL_20;
      }

      v42 = v6;
      v12 = sub_1D8B13240();
      v13 = *(*(v12 - 8) + 8);
      v13(v9, v12);
      v41 = v11;
      v14 = (v9 + *(v11 + 20));
      v13(v14, v12);
      v15 = type metadata accessor for GenericParseDataResult();

      v16 = v14 + *(v15 + 28);
      v40 = type metadata accessor for VisualUnderstandingContainer(0);
      v17 = *(v40 + 20);
      v18 = sub_1D8B13830();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(&v16[v17], 1, v18))
      {
        (*(v19 + 8))(&v16[v17], v18);
      }

      v20 = &v16[*(v40 + 24)];
      v21 = v20[1];
      if (v21 >> 60 != 15)
      {
        sub_1D87A1598(*v20, v21);
      }

      v22 = v9 + *(v41 + 36);
      type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
      v23 = swift_getEnumCaseMultiPayload();
      v6 = v42;
      if (v23 != 2)
      {
        if (v23 == 1)
        {
          v38 = sub_1D8B138B0();
          (*(*(v38 - 8) + 8))(v22, v38);
          goto LABEL_20;
        }

        if (v23)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_16:

    goto LABEL_20;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 4:
      v24 = sub_1D8B145A0();
      (*(*(v24 - 8) + 8))(v9, v24);
      break;
    case 5:
      goto LABEL_16;
  }

LABEL_20:
  v25 = v9 + *(v1 + 20);
  if (*v25 != 2)
  {
    sub_1D88E1004(*(v25 + 1), *(v25 + 2), v25[24]);
  }

  v26 = (v7 + 96) & ~v6;
  v27 = v0 + v5;
  type metadata accessor for CVBundle.BundleType(0);
  v28 = swift_getEnumCaseMultiPayload();
  v29 = sub_1D8B13240();
  v30 = *(*(v29 - 8) + 8);
  v30(v27, v29);
  if (v28 != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  v31 = swift_getEnumCaseMultiPayload();
  v30(v0 + v26, v29);
  if (v31 != 1)
  {
    type metadata accessor for CVTrackSnapshot(0);
  }

  v32 = v0 + v26 + *(v44 + 24);

  v33 = type metadata accessor for BundleManager.Configuration(0);
  v34 = *(v33 + 32);
  v35 = sub_1D8B15340();
  (*(*(v35 - 8) + 8))(v32 + v34, v35);

  v36 = *(v33 + 40);
  v37 = sub_1D8B150F0();
  (*(*(v37 - 8) + 8))(v32 + v36, v37);

  return MEMORY[0x1EEE6BDD0](v0, v26 + v47, v46 | v45 | v6 | 7);
}

uint64_t sub_1D878F334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B15340();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_1D878F400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B15340();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D878F568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D878F5FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1D878F670(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D878F778()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EE8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D878F7E4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F20);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D878F814()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D878F854()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D878F92C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 24))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1D878F980(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D878F998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for TapToRadarDraft() + 48) + 16);
}

uint64_t sub_1D878F9E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 60) + 16);
  return result;
}

uint64_t sub_1D878FA24(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 60) + 16) = v3;
  return result;
}

uint64_t sub_1D878FA5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a2 = *(a1 + *(result + 84) + 16);
  return result;
}

uint64_t sub_1D878FA98(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(a2 + *(result + 84) + 16) = v3;
  return result;
}

uint64_t sub_1D878FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D878FB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D878FC58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D878FCA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D878FE2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D878FE6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D878FF54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B131D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8790084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D8B131D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D87901B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D87901F0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA667C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D8790220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13FE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D8790348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D8B13FE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D879045C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D8B14060();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D8790500(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_1D8B14060();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87905A0()
{
  v1 = sub_1D8B140C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8790678()
{
  v1 = (type metadata accessor for GreymatterAvailability.AvailabilityKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 43) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v1[7];
  v6 = sub_1D8B14060();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D8790768()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D87907A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D89AF648(v1);
}

void sub_1D87907FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D89AFB38(v1);
}

uint64_t sub_1D8790858()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D87909B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D8790A00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8790A38()
{
  v1 = sub_1D8B135E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8790B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B151E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D8B15160();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D8790C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D8B151E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D8B15160();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D8790D84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B15130();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1D8B131D0();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[7];
      goto LABEL_3;
    }

    v14 = type metadata accessor for LoggingSignposter(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D8790EF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D8B15130();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1D8B131D0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_3;
  }

  v14 = type metadata accessor for LoggingSignposter(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D87910C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D89BFDBC(v1, v2);
}

uint64_t sub_1D8791138()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D87911AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8791290()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D87912C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8791398()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8791404()
{
  v1 = (type metadata accessor for TextSummarizer() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_1D8B15340();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 24, v2 | 7);
}

uint64_t sub_1D8791500(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8B15340();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D87915AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B15340();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87916E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D89D7B58();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8791718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D89D7C60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D8791740(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1D89D7D1C(v1, v2);
}

uint64_t sub_1D87918D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D89D733C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D879193C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D89D7554(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8791B98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GenericParseDataResult();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D8791D0C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for GenericParseDataResult();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D8791E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8791F34()
{
  v1 = 0x6177417373616C63;
  v2 = 0x676E696E6E7572;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 1701736302;
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

uint64_t sub_1D8791FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8792064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D879211C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA672D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D879214C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D8792460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B145A0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D87924CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D8B145A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8792550(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B13240();
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
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1D8B145A0();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DetectionRequest.Originator(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D87926C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D8B13240();
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
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1D8B145A0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DetectionRequest.Originator(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D8792840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8792900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D87929BC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_1D87A1598(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D8792A98()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1D8792B88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8792BC0()
{
  v1 = 0x6E69646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D8792C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A5706C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8792CF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8792D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8792D6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8792E48()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8792F34()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8792F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetectionRequest.Originator(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D879302C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetectionRequest.Originator(0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D87930E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D87931A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetectionRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D879325C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67AE8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D8793294()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v17 = v1;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v0 + v4 + v2[7];
  v11 = v10 + *(type metadata accessor for DetectionRequest(0) + 20);
  type metadata accessor for DetectionRequest.Originator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:

      break;
    case 2:
      v13 = sub_1D8B13240();
      (*(*(v13 - 8) + 8))(v11, v13);
      break;
    case 0:
      sub_1D87A1598(*v11, *(v11 + 8));
      break;
  }

  (*(v5 + 8))(v0 + v7, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + v8);
  v14 = v0 + v9;
  v15 = *(v0 + v9 + 64);
  if (v15 >= 2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + 135) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | v6 | 7);
}

uint64_t sub_1D87934C8()
{
  v1 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = v5 + *(type metadata accessor for DetectionRequest(0) + 20);
  type metadata accessor for DetectionRequest.Originator(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:

      break;
    case 2:
      v8 = sub_1D8B13240();
      (*(*(v8 - 8) + 8))(v6, v8);
      break;
    case 0:
      sub_1D87A1598(*v6, *(v6 + 8));
      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D8793624()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D8793674()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D87936AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D87936F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D8793734()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D8793834()
{
  v1 = *(type metadata accessor for ProcessorState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v23 = v4;
    v15 = v9 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v16 = swift_getEnumCaseMultiPayload();
    switch(v16)
    {
      case 3:

        break;
      case 2:
        v18 = sub_1D8B13240();
        (*(*(v18 - 8) + 8))(v15, v18);
        break;
      case 0:
        sub_1D87A1598(*v15, *(v15 + 8));
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v23 = v4;
    v13 = v9 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v14 = swift_getEnumCaseMultiPayload();
    switch(v14)
    {
      case 3:

        break;
      case 2:
        v17 = sub_1D8B13240();
        (*(*(v17 - 8) + 8))(v13, v17);
        break;
      case 0:
        sub_1D87A1598(*v13, *(v13 + 8));
        break;
    }

    type metadata accessor for DetectionResult(0);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_25;
    }

    v23 = v4;
    v11 = v9 + *(type metadata accessor for DetectionRequest(0) + 20);
    type metadata accessor for DetectionRequest.Originator(0);
    v12 = swift_getEnumCaseMultiPayload();
    switch(v12)
    {
      case 3:

        break;
      case 2:
        v19 = sub_1D8B13240();
        (*(*(v19 - 8) + 8))(v11, v19);
        break;
      case 0:
        sub_1D87A1598(*v11, *(v11 + 8));
        break;
    }
  }

  v4 = v23;
LABEL_25:
  v20 = (v3 + v4 + v7) & ~v7;
  v21 = (((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v20, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v21 + 8, v2 | v7 | 7);
}

uint64_t sub_1D8793BE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DetectionRequest(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8793C8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetectionRequest(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVSafeAreaPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CVSafeAreaPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1D8793D7C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8793D98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1D8793F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A6CC88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D87940E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D87941A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D87942D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D87943A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetectionRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D8794460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for VisualUnderstandingContainer(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D8794584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for VisualUnderstandingContainer(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D87946BC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6765526567616D69;
  if (v1 != 5)
  {
    v3 = 0x74616E696769726FLL;
  }

  v4 = 0x6E6F697461746F72;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x7372656E726F63;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D87947FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D87948B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8794968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
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
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
    v13 = ((4 * v12) & 0xC) == 0;
    v14 = ((4 * v12) & 0xC | (v12 >> 2)) ^ 0xF;
    if (v13)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t sub_1D8794A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
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
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1D8794B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for VisualUnderstandingContainer(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D8794C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for VisualUnderstandingContainer(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D8794D60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B13240();
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
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for VisualUnderstandingContainer(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[13];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DetectionRequest.Originator(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D8794ED4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D8B13240();
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
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for VisualUnderstandingContainer(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[13];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DetectionRequest.Originator(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D879505C()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1D8795194()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1D8795240()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 33, v10 | 7);
}

uint64_t sub_1D87953A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8795438()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D8795478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8795534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D87955EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D8B138B0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D8795710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D8B138B0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D8795894()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_1D87A1598(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D8795970()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1D8795A28()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_1D8795B18()
{

  return MEMORY[0x1EEE6BDD0](v0, 93, 7);
}

uint64_t sub_1D8795B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8795C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8795CEC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8795D24()
{
  MEMORY[0x1DA721450](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8795D5C()
{
  v1 = sub_1D8B13240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8795E48()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 0x657275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_1D8796004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D87960BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8796324()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D87963B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D879647C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1D8796534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProcessorState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D87965E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProcessorState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87966BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8796720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D879681C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 4, v3 | 7);
}

uint64_t sub_1D8796900()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8796958()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8796990@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D8796A18@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_1D8796B28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8796BC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8796C24()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D8796C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StillAppConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D8796D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StillAppConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D8796DD4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D8796E20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8796E6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 83, 7);
}

uint64_t sub_1D8796EB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8796EF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for BundleManager.Configuration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D8796FA4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for BundleManager.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8797044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D87970D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8797110()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D8797158@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D87971A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D87971E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1D8797234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  return sub_1D87C65F0(v3 + v4, a2);
}

uint64_t sub_1D8797294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D87972EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8797340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8B0AAA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8797388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8B0ABB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D87973D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D8B138B0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D87974F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D8B13720();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D8797618()
{
  v1 = sub_1D8B13240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D8797718()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D87977B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Angle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Angle(uint64_t result, int a2, int a3)
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

__n128 sub_1D8797830@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double sub_1D879784C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 32));
  *a2 = result;
  return result;
}

VisualIntelligenceCore::AnnotationViewConfiguration __swiftcall AnnotationViewConfiguration.init(showDetectionRequests:showPinsAndBoxes:showSafeAreaAndReticule:showSelectedSubjectReticule:showText:)(Swift::Bool showDetectionRequests, Swift::Bool showPinsAndBoxes, Swift::Bool showSafeAreaAndReticule, Swift::Bool showSelectedSubjectReticule, Swift::Bool showText)
{
  *v5 = showDetectionRequests;
  v5[1] = showPinsAndBoxes;
  v5[2] = showSafeAreaAndReticule;
  v5[3] = showSelectedSubjectReticule;
  v5[4] = showText;
  result.showDetectionRequests = showDetectionRequests;
  return result;
}

uint64_t _s22VisualIntelligenceCore16ImageSearchErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8797A18()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8797A5C()
{
  v1 = *v0;
  v2 = 0x74786554776F6873;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000015;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8797B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8799B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8797B40(uint64_t a1)
{
  v2 = sub_1D8799AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8797B7C(uint64_t a1)
{
  v2 = sub_1D8799AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnnotationViewConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA622A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v11[2] = v1[2];
  v11[3] = v8;
  v9 = v1[3];
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8799AE0();
  sub_1D8B16DD0();
  v16 = 0;
  sub_1D8B16AA0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_1D8B16AA0();
  v14 = 2;
  sub_1D8B16AA0();
  v13 = 3;
  sub_1D8B16AA0();
  v12 = 4;
  sub_1D8B16AA0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AnnotationViewConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA622B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8799AE0();
  sub_1D8B16DB0();
  if (!v2)
  {
    v24 = 0;
    v9 = sub_1D8B169D0();
    v23 = 1;
    v10 = sub_1D8B169D0();
    v22 = 2;
    v19 = sub_1D8B169D0();
    v21 = 3;
    v18 = sub_1D8B169D0();
    v20 = 4;
    v12 = sub_1D8B169D0();
    v16 = v10 & 1;
    v17 = v9 & 1;
    v13 = v19 & 1;
    v14 = v18 & 1;
    (*(v6 + 8))(v8, v5);
    v15 = v16;
    *a2 = v17;
    a2[1] = v15;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double default argument 0 of BundleClassification.ClassificationType.barcode(_:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D8B190C0;
  *(a1 + 16) = 0xE700000000000000;
  *(a1 + 24) = 0x7974706D65;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return result;
}

id default argument 1 of static InProcessMediaFrame.pixelBufferForJpg(named:in:)()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

double default argument 0 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D8B190D0;
  return result;
}

unint64_t default argument 1 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D893DF5C(&unk_1F5426928);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 3;
  return result;
}

uint64_t default argument 2 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8A50334(&unk_1F5426A48);
  *a1 = result;
  *(a1 + 8) = 1056964608;
  return result;
}

uint64_t default argument 3 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(a1 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(a1 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v2 = type metadata accessor for InternalSettings();
  v3 = sub_1D8B15940();
  LODWORD(v2) = [v2 BOOLForKey:v3 defaultValue:0];

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(a1 + 13) = v4;
  v5 = type metadata accessor for BundleManager.Configuration(0);
  v6 = v5[8];
  v7 = *MEMORY[0x1E69C9A80];
  v8 = sub_1D8B15340();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *(a1 + v5[9]) = MEMORY[0x1E69E7CD0];
  v9 = v5[10];
  v10 = *MEMORY[0x1E69DFC20];
  v11 = sub_1D8B150F0();
  result = (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  *(a1 + v5[11]) = 2;
  return result;
}

double default argument 4 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  *&result = 10;
  *(a1 + 48) = xmmword_1D8B190E0;
  *(a1 + 64) = 1;
  return result;
}

void default argument 5 of SaliencyStreamConfiguration.init(entryPoint:cvCoordinatorConfiguration:trackManagerConfiguration:bundleManagerConfiguration:bundleSelectorConfiguration:actionPredictorConfiguration:)(uint64_t a1@<X8>)
{
  *a1 = 0x402E000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 1000;
  *(a1 + 32) = 0x3FF8000000000000;
}

uint64_t default argument 0 of BundleClassification.ClassificationType.verticalContent(_:)@<X0>(void *a1@<X8>)
{
  *a1 = 0x7974706D65;
  a1[1] = 0xE500000000000000;
  v2 = *MEMORY[0x1E69C9C08];
  v3 = sub_1D8B145A0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t _s22VisualIntelligenceCore22GreymatterAvailabilityV11isAvailable_14languageOptionSbAC17UseCaseIdentifierO_16GenerativeModels0mnE0V08LanguageI0OtFfA0__0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A12A0];
  v3 = sub_1D8B14060();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D8798744()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D87987B8()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D87988C0(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA623D8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D879892C(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA623D8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D879899C(uint64_t a1)
{
  v2 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

BOOL sub_1D8798A24(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D8798A7C(uint64_t a1, id *a2)
{
  result = sub_1D8B15950();
  *a2 = 0;
  return result;
}

uint64_t sub_1D8798AF4(uint64_t a1, id *a2)
{
  v3 = sub_1D8B15960();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D8798B74@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8B15970();
  v2 = sub_1D8B15940();

  *a1 = v2;
  return result;
}

uint64_t sub_1D8798BB8()
{
  swift_getWitnessTable();

  return sub_1D8B13D60();
}

uint64_t sub_1D8798C24()
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8798C98()
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8798E54()
{
  sub_1D8B16D20();
  swift_getWitnessTable();
  sub_1D8B13D70();
  return sub_1D8B16D80();
}

uint64_t sub_1D8798EB8()
{
  swift_getWitnessTable();

  return sub_1D8B13D60();
}

uint64_t sub_1D8798F24()
{
  swift_getWitnessTable();

  return sub_1D8B13D60();
}

uint64_t sub_1D8798F90(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA62488, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1D879A36C(&qword_1ECA62490, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D879904C()
{
  v0 = sub_1D8B15970();
  v2 = v1;
  if (v0 == sub_1D8B15970() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D8B16BA0();
  }

  return v5 & 1;
}

uint64_t sub_1D87990E4(uint64_t a1)
{
  v2 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D8799150(uint64_t a1)
{
  v2 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D87991BC(void *a1, uint64_t a2)
{
  v4 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D8799270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D87992EC()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D8799358()
{
  swift_getWitnessTable();

  return sub_1D8B13D60();
}

uint64_t sub_1D87993C4(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA62600, type metadata accessor for NLLanguage);
  v3 = sub_1D879A36C(&qword_1ECA62608, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8799480(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA62590, type metadata accessor for CIImageOption);
  v3 = sub_1D879A36C(&qword_1ECA62598, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D879953C(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA62478, type metadata accessor for Key);
  v3 = sub_1D879A36C(&qword_1ECA62480, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D87995F8(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA625A0, type metadata accessor for URLResourceKey);
  v3 = sub_1D879A36C(&qword_1ECA625A8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D87996B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D8B15940();

  *a1 = v2;
  return result;
}

uint64_t sub_1D87996FC(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA62610, type metadata accessor for TCTextCompositionAssistantOptionKey);
  v3 = sub_1D879A36C(&qword_1ECA62618, type metadata accessor for TCTextCompositionAssistantOptionKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D87997B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D879A36C(&unk_1ECA62410, type metadata accessor for SummarizationClientError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D879983C(uint64_t a1)
{
  v2 = sub_1D879A36C(&qword_1ECA625B0, type metadata accessor for VNBarcodeSymbology);
  v3 = sub_1D879A36C(&qword_1ECA625B8, type metadata accessor for VNBarcodeSymbology);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D87998F8()
{
  v0 = sub_1D8B15970();
  v1 = MEMORY[0x1DA71F050](v0);

  return v1;
}

uint64_t sub_1D8799934()
{
  sub_1D8B15970();
  sub_1D8B15A60();
}

uint64_t sub_1D8799988()
{
  sub_1D8B15970();
  sub_1D8B16D20();
  sub_1D8B15A60();
  v0 = sub_1D8B16D80();

  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D8799AE0()
{
  result = qword_1ECA622B0;
  if (!qword_1ECA622B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA622B0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D8799B80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D8B406C0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B406E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B40700 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B40720 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74786554776F6873 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D8799D40(void *a1)
{
  a1[1] = sub_1D8799D78();
  a1[2] = sub_1D8799DCC();
  result = sub_1D8799E20();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8799D78()
{
  result = qword_1ECA62320;
  if (!qword_1ECA62320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62320);
  }

  return result;
}

unint64_t sub_1D8799DCC()
{
  result = qword_1ECA62328;
  if (!qword_1ECA62328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62328);
  }

  return result;
}

unint64_t sub_1D8799E20()
{
  result = qword_1ECA62330;
  if (!qword_1ECA62330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62330);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationViewConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotationViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D879A064(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D879A084(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationViewConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotationViewConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D879A288()
{
  result = qword_1ECA623B8;
  if (!qword_1ECA623B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA623B8);
  }

  return result;
}

uint64_t sub_1D879A36C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D879A534()
{
  result = qword_1ECA62400;
  if (!qword_1ECA62400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62400);
  }

  return result;
}

unint64_t sub_1D879AA0C()
{
  result = qword_1ECA62468;
  if (!qword_1ECA62468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62468);
  }

  return result;
}

unint64_t sub_1D879AA64()
{
  result = qword_1ECA62470;
  if (!qword_1ECA62470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62470);
  }

  return result;
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

uint64_t sub_1D879AB08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D879AB28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_1D879AEBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1D879B1DC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1D879B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000019 && 0x80000001D8B40740 == a2;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B40760 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

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

uint64_t sub_1D879B2FC(uint64_t a1)
{
  v2 = sub_1D879B500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D879B338(uint64_t a1)
{
  v2 = sub_1D879B500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA626E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D879B500();
  sub_1D8B16DD0();
  v12 = 0;
  sub_1D8B16AA0();
  if (!v2)
  {
    v11 = 1;
    sub_1D8B16AA0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D879B500()
{
  result = qword_1ECA626E8;
  if (!qword_1ECA626E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA626E8);
  }

  return result;
}

uint64_t MapsConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA626F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D879B500();
  sub_1D8B16DB0();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1D8B169D0();
    v13 = 1;
    v11 = sub_1D8B169D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D879B708(void *a1)
{
  a1[1] = sub_1D879B740();
  a1[2] = sub_1D879B794();
  result = sub_1D879B7E8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D879B740()
{
  result = qword_1ECA626F8;
  if (!qword_1ECA626F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA626F8);
  }

  return result;
}

unint64_t sub_1D879B794()
{
  result = qword_1ECA62700;
  if (!qword_1ECA62700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62700);
  }

  return result;
}

unint64_t sub_1D879B7E8()
{
  result = qword_1ECA62708;
  if (!qword_1ECA62708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MapsConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for MapsConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapsConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D879BB58()
{
  result = qword_1ECA62710;
  if (!qword_1ECA62710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62710);
  }

  return result;
}

unint64_t sub_1D879BBB0()
{
  result = qword_1ECA62718;
  if (!qword_1ECA62718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62718);
  }

  return result;
}

unint64_t sub_1D879BC08()
{
  result = qword_1ECA62720;
  if (!qword_1ECA62720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62720);
  }

  return result;
}

uint64_t sub_1D879BC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879FEC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D879BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879FF18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D879BD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879FF6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D879BD70@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1D879BDA8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1D879BDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879FFC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D879BE30@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D879BE48()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1D879BE64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1D879BE80(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1D879BEA0()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D879BF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87A0014();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D879BF58()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

BOOL sub_1D879BFC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_1D879C04C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3320);
  __swift_project_value_buffer(v0, qword_1ECAA3320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D8B1AB50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "requested_features";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D8B14B90();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 4;
  *v9 = "num_inline_items";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "ios_version";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 10;
  *v13 = "user_agent";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 12;
  *v15 = "entrypoint";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 13;
  *v17 = "context_data";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 14;
  *v19 = "sensor_source";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 15;
  *v21 = "experimental_options";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 16;
  *v22 = "interaction_type";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 17;
  *v24 = "debug_request_id";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879C410()
{
  result = sub_1D8B149C0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 12)
      {
        if (result <= 14)
        {
          if (result == 13)
          {
            sub_1D879C608();
            goto LABEL_5;
          }

          v3 = v0;
          sub_1D879FF6C();
          goto LABEL_29;
        }

        switch(result)
        {
          case 15:
            v4 = v0;
            sub_1D879FFC0();
            goto LABEL_26;
          case 16:
            v3 = v0;
            sub_1D87A0014();
            goto LABEL_29;
          case 17:
            goto LABEL_4;
        }
      }

      else if (result <= 5)
      {
        if (result == 1)
        {
          v4 = v0;
          sub_1D879FEC4();
LABEL_26:
          v0 = v4;
          sub_1D8B149D0();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_1D8B14A20();
        }
      }

      else
      {
        if (result == 6 || result == 10)
        {
LABEL_4:
          sub_1D8B14A40();
          goto LABEL_5;
        }

        if (result == 12)
        {
          v3 = v0;
          sub_1D879FF18();
LABEL_29:
          v0 = v3;
          sub_1D8B149F0();
        }
      }

LABEL_5:
      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D879C608()
{
  type metadata accessor for Lens_RequestConfig(0);
  type metadata accessor for Lens_RequestConfig.ContextData(0);
  sub_1D879F868(&qword_1ECA62770, type metadata accessor for Lens_RequestConfig.ContextData);
  return sub_1D8B14A70();
}

uint64_t sub_1D879C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1D879FEC4(), result = sub_1D8B14AE0(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1D8B14B30(), !v4))
    {
      v9 = *(v3 + 24);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_1D8B14B50(), !v4))
      {
        v11 = *(v3 + 40);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (!v12 || (result = sub_1D8B14B50(), !v4))
        {
          if (!*(v3 + 48) || (sub_1D879FF18(), result = sub_1D8B14B00(), !v4))
          {
            result = sub_1D879C954(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 64))
              {
                sub_1D879FF6C();
                sub_1D8B14B00();
              }

              if (*(*(v3 + 80) + 16))
              {
                sub_1D879FFC0();
                sub_1D8B14AE0();
              }

              if (*(v3 + 88))
              {
                sub_1D87A0014();
                sub_1D8B14B00();
              }

              v13 = *(v3 + 112);
              v14 = HIBYTE(v13) & 0xF;
              if ((v13 & 0x2000000000000000) == 0)
              {
                v14 = *(v3 + 104) & 0xFFFFFFFFFFFFLL;
              }

              if (v14)
              {
                sub_1D8B14B50();
              }

              type metadata accessor for Lens_RequestConfig(0);
              return sub_1D8B14940();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D879C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62828);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_RequestConfig.ContextData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_RequestConfig(0);
  sub_1D87A0E38(a1 + *(v12 + 56), v7, &qword_1ECA62828);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62828);
  }

  sub_1D87A0D70(v7, v11, type metadata accessor for Lens_RequestConfig.ContextData);
  sub_1D879F868(&qword_1ECA62770, type metadata accessor for Lens_RequestConfig.ContextData);
  sub_1D8B14B80();
  return sub_1D87A0DD8(v11, type metadata accessor for Lens_RequestConfig.ContextData);
}

uint64_t sub_1D879CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = v4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  sub_1D8B14950();
  v5 = *(a1 + 56);
  v6 = type metadata accessor for Lens_RequestConfig.ContextData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D879CC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D879CCB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D879CD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879F868(&qword_1ECA627F8, type metadata accessor for Lens_RequestConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D879CE18(uint64_t a1)
{
  v2 = sub_1D879F868(&qword_1ECA62790, type metadata accessor for Lens_RequestConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D879CE84()
{
  sub_1D879F868(&qword_1ECA62790, type metadata accessor for Lens_RequestConfig);

  return sub_1D8B14AC0();
}

uint64_t sub_1D879CF04()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3338);
  __swift_project_value_buffer(v0, qword_1ECAA3338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIMILAR_IMAGES";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EXACT_MATCH";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RELATED_QUERY";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ANSWER";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AI_OVERVIEW";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879D1F0()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3350);
  __swift_project_value_buffer(v0, qword_1ECAA3350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "APPLE_LIVE_VIEWFINDER";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "APPLE_SCREENSHOT";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879D424()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3368);
  __swift_project_value_buffer(v0, qword_1ECAA3368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SENSOR_SOURCE_DEFAULT";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SENSOR_SOURCE_FRONT_CAMERA";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SENSOR_SOURCE_REAR_CAMERA";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879D658()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3380);
  __swift_project_value_buffer(v0, qword_1ECAA3380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D8B1AB60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "EXPERIMENTAL_OPTION_NONE";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D8B14B90();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "EXPERIMENTAL_OPTION_ENABLE_DEBUG_LOGGING";
  *(v8 + 8) = 40;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "EXPERIMENTAL_OPTION_DISABLE_PRIVATE_ACCESS_TOKEN_AUTH";
  *(v10 + 1) = 53;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "EXPERIMENTAL_OPTION_ENABLE_ADTEST";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "EXPERIMENTAL_OPTION_DEPRECATE_LVS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "EXPERIMENTAL_OPTION_ENABLE_ADS";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879D93C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3398);
  __swift_project_value_buffer(v0, qword_1ECAA3398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INTERACTION_TYPE_NONE";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTERACTION_TYPE_REGION_SELECTION";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879DB28()
{
  result = MEMORY[0x1DA71EFA0](0x747865746E6F432ELL, 0xEC00000061746144);
  qword_1ECAA33B0 = 0xD000000000000012;
  *algn_1ECAA33B8 = 0x80000001D8B40780;
  return result;
}

uint64_t sub_1D879DB9C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA33C0);
  __swift_project_value_buffer(v0, qword_1ECAA33C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "app_bundle_id";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D8B14B90();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D8B14BA0();
}

uint64_t sub_1D879DD08()
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D8B14A40();
    }
  }

  return result;
}

uint64_t sub_1D879DD78()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D8B14B50(), !v1))
  {
    type metadata accessor for Lens_RequestConfig.ContextData(0);
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D879DE0C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D879DE34()
{
  if (qword_1ECA61FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAA33B0;

  return v0;
}

uint64_t sub_1D879DE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D879DF10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D879DFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879F868(&qword_1ECA62848, type metadata accessor for Lens_RequestConfig.ContextData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D879E078(uint64_t a1)
{
  v2 = sub_1D879F868(&qword_1ECA62770, type metadata accessor for Lens_RequestConfig.ContextData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D879E0E4()
{
  sub_1D879F868(&qword_1ECA62770, type metadata accessor for Lens_RequestConfig.ContextData);

  return sub_1D8B14AC0();
}

uint64_t sub_1D879E160(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  sub_1D8B14960();
  sub_1D879F868(&unk_1ECA64F40, MEMORY[0x1E69AAC08]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D879E21C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA33D8);
  __swift_project_value_buffer(v0, qword_1ECAA33D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "language";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "region";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "time_zone";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879E438()
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1D8B14A40();
    }
  }

  return result;
}

uint64_t sub_1D879E4C8()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D8B14B50(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_1D8B14B50(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1D8B14B50(), !v1))
      {
        type metadata accessor for Lens_Locale(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D879E5C0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D879E610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D879E684(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D879E74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879F868(&qword_1ECA62850, type metadata accessor for Lens_Locale);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D879E7EC(uint64_t a1)
{
  v2 = sub_1D879F868(&qword_1ECA62750, type metadata accessor for Lens_Locale);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D879E858()
{
  sub_1D879F868(&qword_1ECA62750, type metadata accessor for Lens_Locale);

  return sub_1D8B14AC0();
}

uint64_t sub_1D879E8D8()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA33F0);
  __swift_project_value_buffer(v0, qword_1ECAA33F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_bytes";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_query";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "request_config";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D879EB28()
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D8B14A40();
      }

      else if (result == 6)
      {
        sub_1D879ECB8();
      }
    }

    else if (result == 1)
    {
      sub_1D8B14A00();
    }

    else if (result == 2)
    {
      sub_1D879EC04();
    }
  }

  return result;
}

uint64_t sub_1D879EC04()
{
  type metadata accessor for Lens_FetchVisualDataRequest(0);
  type metadata accessor for Lens_Locale(0);
  sub_1D879F868(&qword_1ECA62750, type metadata accessor for Lens_Locale);
  return sub_1D8B14A70();
}

uint64_t sub_1D879ECB8()
{
  type metadata accessor for Lens_FetchVisualDataRequest(0);
  type metadata accessor for Lens_RequestConfig(0);
  sub_1D879F868(&qword_1ECA62790, type metadata accessor for Lens_RequestConfig);
  return sub_1D8B14A70();
}

uint64_t sub_1D879ED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1D8B14B10();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1D879EE8C(v3, a1, a2, a3);
  if (!v4)
  {
    v14 = v3[3];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1D8B14B50();
    }

    sub_1D879F09C(v3, a1, a2, a3);
    type metadata accessor for Lens_FetchVisualDataRequest(0);
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D879EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62868);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_Locale(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VisualDataRequest = type metadata accessor for Lens_FetchVisualDataRequest(0);
  sub_1D87A0E38(a1 + *(VisualDataRequest + 28), v7, &qword_1ECA62868);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62868);
  }

  sub_1D87A0D70(v7, v11, type metadata accessor for Lens_Locale);
  sub_1D879F868(&qword_1ECA62750, type metadata accessor for Lens_Locale);
  sub_1D8B14B80();
  return sub_1D87A0DD8(v11, type metadata accessor for Lens_Locale);
}

uint64_t sub_1D879F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_RequestConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VisualDataRequest = type metadata accessor for Lens_FetchVisualDataRequest(0);
  sub_1D87A0E38(a1 + *(VisualDataRequest + 32), v7, &qword_1ECA62860);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62860);
  }

  sub_1D87A0D70(v7, v11, type metadata accessor for Lens_RequestConfig);
  sub_1D879F868(&qword_1ECA62790, type metadata accessor for Lens_RequestConfig);
  sub_1D8B14B80();
  return sub_1D87A0DD8(v11, type metadata accessor for Lens_RequestConfig);
}

uint64_t sub_1D879F2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1D8B1ABB0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  sub_1D8B14950();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Lens_Locale(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Lens_RequestConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1D879F3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D879F41C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D879F4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D879F868(&qword_1ECA62858, type metadata accessor for Lens_FetchVisualDataRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D879F584@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D8B14BB0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D879F620(uint64_t a1)
{
  v2 = sub_1D879F868(&qword_1ECA62730, type metadata accessor for Lens_FetchVisualDataRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D879F68C()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D879F6E4()
{
  sub_1D879F868(&qword_1ECA62730, type metadata accessor for Lens_FetchVisualDataRequest);

  return sub_1D8B14AC0();
}

uint64_t sub_1D879F760()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D879F868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D879FC28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D879FE70(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D879FEC4()
{
  result = qword_1ECA62800;
  if (!qword_1ECA62800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62800);
  }

  return result;
}

unint64_t sub_1D879FF18()
{
  result = qword_1ECA62808;
  if (!qword_1ECA62808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62808);
  }

  return result;
}

unint64_t sub_1D879FF6C()
{
  result = qword_1ECA62810;
  if (!qword_1ECA62810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62810);
  }

  return result;
}

unint64_t sub_1D879FFC0()
{
  result = qword_1ECA62818;
  if (!qword_1ECA62818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62818);
  }

  return result;
}

unint64_t sub_1D87A0014()
{
  result = qword_1ECA62820;
  if (!qword_1ECA62820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62820);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D87A0104@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1D8B12D00();
    if (v10)
    {
      v11 = sub_1D8B12D20();
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
      result = sub_1D8B12D10();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_1D8B12D00();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D8B12D20();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D8B12D10();
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

uint64_t sub_1D87A0334(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D87A04C4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D87A1598(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D87A0104(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D87A1598(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D87A04C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D8B12D00();
  v11 = result;
  if (result)
  {
    result = sub_1D8B12D20();
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

  sub_1D8B12D10();
  sub_1D87A0104(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D87A057C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1D87A1544(a3, a4);
          return sub_1D87A0334(v13, a2, a3, a4) & 1;
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

uint64_t sub_1D87A06E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_RequestConfig.ContextData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62840);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if ((sub_1D88F38E0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D8B16BA0() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v14)
    {
      goto LABEL_26;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_26;
  }

  v30 = type metadata accessor for Lens_RequestConfig(0);
  v16 = *(v30 + 56);
  v17 = *(v11 + 48);
  sub_1D87A0E38(a1 + v16, v13, &qword_1ECA62828);
  v18 = a2 + v16;
  v19 = v17;
  sub_1D87A0E38(v18, &v13[v17], &qword_1ECA62828);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_1D87A0E38(v13, v10, &qword_1ECA62828);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      sub_1D87A0D70(&v13[v19], v7, type metadata accessor for Lens_RequestConfig.ContextData);
      if (*v10 == *v7 && v10[1] == v7[1] || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D8B14960();
        sub_1D879F868(&unk_1ECA64F40, MEMORY[0x1E69AAC08]);
        v24 = sub_1D8B158C0();
        sub_1D87A0DD8(v7, type metadata accessor for Lens_RequestConfig.ContextData);
        sub_1D87A0DD8(v10, type metadata accessor for Lens_RequestConfig.ContextData);
        sub_1D87A14E4(v13, &qword_1ECA62828);
        if ((v24 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

      sub_1D87A0DD8(v7, type metadata accessor for Lens_RequestConfig.ContextData);
      sub_1D87A0DD8(v10, type metadata accessor for Lens_RequestConfig.ContextData);
      v21 = &qword_1ECA62828;
LABEL_25:
      sub_1D87A14E4(v13, v21);
      goto LABEL_26;
    }

    sub_1D87A0DD8(v10, type metadata accessor for Lens_RequestConfig.ContextData);
LABEL_24:
    v21 = &qword_1ECA62840;
    goto LABEL_25;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_24;
  }

  sub_1D87A14E4(v13, &qword_1ECA62828);
LABEL_32:
  v25 = *(a1 + 64);
  v26 = *(a2 + 64);
  if (*(a2 + 72) == 1)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        if (v25 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v25 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v25)
    {
      goto LABEL_26;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_26;
  }

  if (sub_1D88F38E0(*(a1 + 80), *(a2 + 80)))
  {
    v27 = *(a1 + 88);
    v28 = *(a2 + 88);
    if (*(a1 + 96))
    {
      v27 = v27 != 0;
    }

    if (*(a2 + 96) == 1)
    {
      if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v27)
      {
        goto LABEL_26;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_26;
    }

    if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112) || (sub_1D8B16BA0() & 1) != 0)
    {
      sub_1D8B14960();
      sub_1D879F868(&unk_1ECA64F40, MEMORY[0x1E69AAC08]);
      v22 = sub_1D8B158C0();
      return v22 & 1;
    }
  }

LABEL_26:
  v22 = 0;
  return v22 & 1;
}