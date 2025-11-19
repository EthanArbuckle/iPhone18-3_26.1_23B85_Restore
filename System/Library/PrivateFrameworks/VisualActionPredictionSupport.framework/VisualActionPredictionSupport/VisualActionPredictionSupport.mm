uint64_t sub_1D9E3AB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D9F2AD0C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D9E3AC34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D9F2AD0C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3AD68@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for PredictionScope(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PredictionScope(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9E3B138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9E3B1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedActionSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D9E3B214()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3B24C()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3B360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 33);
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

uint64_t sub_1D9E3B430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisualContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 33) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D9E3B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PredictedAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for VisualContext();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 40);
      if (v14 > 2)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_1D9E3B628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PredictedAction();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for VisualContext();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for VisualContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D9E3B808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for VisualContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3B940(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedActionSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D9E3B9EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PredictedActionSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3BA90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PredictedActionSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D9E3BB3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PredictedActionSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3BBE4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3BC24()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3BEFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3BF4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3BF84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3BFCC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3C00C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    v11 = (v10 >> 5) & 0xFFFFFF87 | (8 * ((v10 >> 1) & 0xF));
    v12 = v11 ^ 0x7F;
    v13 = 128 - v11;
    if (v12 >= 0x79)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

double sub_1D9E3C158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 24);
    result = 0.0;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 80) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_1D9E3C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D9E3C340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D9E3C3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D9E3C4C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9E3C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

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

uint64_t sub_1D9E3C654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9E3C754()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9E3C830()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3C868()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3C8A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3C8E0()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3C9AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v3 = sub_1D9F2B30C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

_OWORD *sub_1D9E3CA7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1D9E3CA94@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1D9F2A97C();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1D9E3CAD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1D9F2A97C();
  *a2 = v5;
  return result;
}

double sub_1D9E3CB14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_1D9F2A97C();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1D9E3CB9C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3CBD4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3CC0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D9E3CD64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3CE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D9E3CEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D9E3CF54()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3D020()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D068()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3D0A8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1D9E3D194()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9E3D1D4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D9E3D20C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D244()
{
  v1 = *(v0 + 5);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);
  v8 = *&v0[v5 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9E3D320()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3D358()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D9E3D43C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3D474()
{
  v1 = *(v0 + 24);

  sub_1D9E84B4C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D9E3D4B8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9E3D4F0()
{
  v1 = type metadata accessor for ServiceEnvelope();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 24);

  v6 = sub_1D9F2AD7C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_1D9F2AD0C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[7] + 8);

  v10 = (v0 + v3 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1D9E4015C(*v10, v11);
  }

  v12 = *(v0 + v3 + v1[9]);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D9E3D668()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9E3D6A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3D84C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D9F2AF7C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1D9F2B4CC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1D9F2AFFC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1D9E3D9B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D9F2AF7C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1D9F2B4CC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1D9F2AFFC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D9E3DB24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3DB5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9E3DB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D9E3DC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
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

uint64_t sub_1D9E3DCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9F2AD7C();
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

uint64_t sub_1D9E3DDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3DE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9F2AD0C();
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

uint64_t sub_1D9E3E038()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

uint64_t sub_1D9E3E09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE4FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E3E0C4()
{
  v1 = 120;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 121;
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

uint64_t sub_1D9E3E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EE5110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E3E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Contact.Identity(0);
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

uint64_t sub_1D9E3E20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Contact.Identity(0);
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

uint64_t sub_1D9E3E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D9E3E39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB755B0, &qword_1D9F420E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D9E3E6DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9E3E734()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D9E3E77C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D9E3E7BC()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D9E3E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9F2AD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D9E3E934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D9F2AD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D9E3EA48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9E3EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
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

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_1D9E3EB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 + 1);
  }

  return result;
}

BOOL sub_1D9E3EC78(void *a1, uint64_t *a2)
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

void *sub_1D9E3ECA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D9E3ECD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1D9E3EDAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D9E3EE4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D9E3EE88(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_1D9E3EEF4(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1D9E3EFE8(uint64_t a1, int a2)
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

uint64_t sub_1D9E3F008(uint64_t result, int a2, int a3)
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

void sub_1D9E3F044(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D9E3F090()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D9F2ADAC();
}

uint64_t sub_1D9E3F0DC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D9F2AD9C();
}

uint64_t sub_1D9E3F134()
{
  sub_1D9F2BAFC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D9F2AD9C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3F19C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D9F2AD8C();
}

uint64_t sub_1D9E3F270(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport18CancellationReasonO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport14ServiceFailureO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9E3F314(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 17))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E3F368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D9E3F3CC(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_1D9E3F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void sub_1D9E3F498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v34 - v7;
  v9 = sub_1D9F2B77C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9F2AB4C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1D9F2AB3C();
  empty = xpc_dictionary_create_empty();
  sub_1D9F2B76C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v36[3] = &type metadata for XPCValueContainer;
    v36[0] = empty;
    swift_unknownObjectRetain();
    v18 = sub_1D9F2AB2C();
    sub_1D9EAE614(v36, v13);
    v18(v35, 0);
    v19 = *(v37 + 16);
    v20 = v34[1];
    v21 = sub_1D9F2AB1C();
    if (v20)
    {
      sub_1D9E3F7D8();
      swift_allocError();
      *v23 = v20;
      *(v23 + 8) = 0;
      *(v23 + 16) = 32;
      swift_willThrow();
      v24 = v20;

      swift_unknownObjectRelease();
    }

    else
    {
      v25 = v21;
      v26 = v22;
      sub_1D9F2A93C();
      v27 = type metadata accessor for ServiceEnvelope();
      v28 = a3 + v27[5];
      sub_1D9F2ACEC();
      v29 = (*(v37 + 40))(a1);
      v31 = v30;

      *(a3 + v27[6]) = 0;
      v32 = (a3 + v27[7]);
      *v32 = v29;
      v32[1] = v31;
      v33 = (a3 + v27[8]);
      *v33 = v25;
      v33[1] = v26;
      *(a3 + v27[9]) = empty;
    }
  }
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

unint64_t sub_1D9E3F7D8()
{
  result = qword_1ECB72CA8;
  if (!qword_1ECB72CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CA8);
  }

  return result;
}

uint64_t NSQualityOfService.dispatchQoS.getter(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return sub_1D9F2AFDC();
    }

    if (a1 == 9)
    {
      return sub_1D9F2AF9C();
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return sub_1D9F2AFEC();
      case 25:
        return sub_1D9F2AFBC();
      case 33:
        return sub_1D9F2AFCC();
    }
  }

  return sub_1D9F2AFAC();
}

uint64_t type metadata accessor for ServiceEnvelope()
{
  result = qword_1EE0F2B48;
  if (!qword_1EE0F2B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9E3F8E8()
{
  sub_1D9F2AD7C();
  if (v0 <= 0x3F)
  {
    sub_1D9F2AD0C();
    if (v1 <= 0x3F)
    {
      sub_1D9E3F9EC(319, &qword_1EE0F2358);
      if (v2 <= 0x3F)
      {
        sub_1D9E3F9EC(319, &qword_1EE0F3878);
        if (v3 <= 0x3F)
        {
          sub_1D9E3F9EC(319, &qword_1EE0F2A08);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9E3F9EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D9F2B59C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D9E3FA48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D9E3FB50()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3FBC4()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA743920](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E3FC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D9E400BC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1D9E3FC48()
{
  result = qword_1ECB72CB0;
  if (!qword_1ECB72CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CB0);
  }

  return result;
}

unint64_t sub_1D9E3FCA0()
{
  result = qword_1ECB72CB8;
  if (!qword_1ECB72CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CB8);
  }

  return result;
}

unint64_t sub_1D9E3FCF8()
{
  result = qword_1ECB72CC0;
  if (!qword_1ECB72CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CC0);
  }

  return result;
}

unint64_t sub_1D9E3FD50()
{
  result = qword_1ECB72CC8;
  if (!qword_1ECB72CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72CC8);
  }

  return result;
}

uint64_t sub_1D9E3FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v38 = a4;
  v39 = a3;
  v41[5] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1D9F2B77C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ServiceEnvelope();
  v18 = (v6 + *(v17 + 32));
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    sub_1D9E3F7D8();
    swift_allocError();
    *v20 = xmmword_1D9F2CD00;
    *(v20 + 16) = 0x80;
    return swift_willThrow();
  }

  else
  {
    v22 = v17;
    v36 = a2;
    v37 = v5;
    v23 = *v18;
    v24 = sub_1D9F2AB0C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v35 = v23;
    sub_1D9E400F4(v23, v19);
    sub_1D9F2AAFC();
    sub_1D9F2B76C();
    result = (*(v13 + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v27 = *(v6 + *(v22 + 36));
      if (v27)
      {
        v28 = &type metadata for XPCValueContainer;
      }

      else
      {
        v28 = 0;
        v41[1] = 0;
        v41[2] = 0;
      }

      v41[0] = v27;
      v41[3] = v28;
      swift_unknownObjectRetain();
      v29 = sub_1D9F2AAEC();
      sub_1D9EAE614(v41, v16);
      v29(v40, 0);
      v30 = *(v39 + 8);
      v31 = v35;
      v32 = v37;
      sub_1D9F2AADC();
      if (v32)
      {
        sub_1D9E3F7D8();
        swift_allocError();
        *v33 = v32;
        *(v33 + 8) = 0;
        *(v33 + 16) = 64;
        swift_willThrow();
      }

      return sub_1D9E40148(v31, v19);
    }
  }

  return result;
}

uint64_t sub_1D9E400BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D9E400F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D9E40148(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D9E4015C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D9E4015C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AppRecord.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9E401F0()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x6D6574737973;
  v4 = 0x6C616E7265746E69;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1919251317;
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

uint64_t sub_1D9E40284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E45C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E402C4(uint64_t a1)
{
  v2 = sub_1D9E43D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E40300(uint64_t a1)
{
  v2 = sub_1D9E43D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40348(uint64_t a1)
{
  v2 = sub_1D9E43E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E40384(uint64_t a1)
{
  v2 = sub_1D9E43E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E403C8()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4040C()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E40470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEF657079546E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9E40500(uint64_t a1)
{
  v2 = sub_1D9E43DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4053C(uint64_t a1)
{
  v2 = sub_1D9E43DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40578(uint64_t a1)
{
  v2 = sub_1D9E43E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E405B4(uint64_t a1)
{
  v2 = sub_1D9E43E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E405F0(uint64_t a1)
{
  v2 = sub_1D9E43F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E4062C(uint64_t a1)
{
  v2 = sub_1D9E43F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E40668(uint64_t a1)
{
  v2 = sub_1D9E43EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E406A4(uint64_t a1)
{
  v2 = sub_1D9E43EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.Metadata.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CD0, &qword_1D9F2CF90);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v45 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CD8, &qword_1D9F2CF98);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v42 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CE0, &qword_1D9F2CFA0);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v39 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CE8, &qword_1D9F2CFA8);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CF0, &qword_1D9F2CFB0);
  v36 = *(v16 - 8);
  v17 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CF8, &qword_1D9F2CFB8);
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v23 = &v35 - v22;
  v24 = v1[1];
  v35 = *v1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E43D68();
  sub_1D9F2BB8C();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v52 = 2;
      sub_1D9E43E64();
      v27 = v39;
      v26 = v49;
      sub_1D9F2B8FC();
      v29 = v40;
      v28 = v41;
    }

    else
    {
      if (v24 != 3)
      {
        goto LABEL_8;
      }

      v53 = 3;
      sub_1D9E43E10();
      v27 = v42;
      v26 = v49;
      sub_1D9F2B8FC();
      v29 = v43;
      v28 = v44;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v48 + 8))(v23, v26);
  }

  if (!v24)
  {
    v50 = 0;
    sub_1D9E43F0C();
    v34 = v49;
    sub_1D9F2B8FC();
    (*(v36 + 8))(v19, v16);
    return (*(v48 + 8))(v23, v34);
  }

  if (v24 != 1)
  {
LABEL_8:
    v54 = 4;
    sub_1D9E43DBC();
    v30 = v45;
    v31 = v49;
    sub_1D9F2B8FC();
    v32 = v47;
    sub_1D9F2B95C();
    (*(v46 + 8))(v30, v32);
    return (*(v48 + 8))(v23, v31);
  }

  v51 = 1;
  sub_1D9E43EB8();
  v26 = v49;
  sub_1D9F2B8FC();
  (*(v37 + 8))(v15, v38);
  return (*(v48 + 8))(v23, v26);
}

uint64_t AppRecord.Metadata.Kind.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1DA7438F0](v2);
    }

    if (v1 == 3)
    {
      v2 = 3;
      return MEMORY[0x1DA7438F0](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1DA7438F0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1DA7438F0](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1DA7438F0](4);

  return sub_1D9F2B18C();
}

uint64_t AppRecord.Metadata.Kind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v3);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D30, &qword_1D9F2CFC0);
  v57 = *(v55 - 8);
  v3 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v61 = &v48 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D38, &qword_1D9F2CFC8);
  v54 = *(v56 - 8);
  v5 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v58 = &v48 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D40, &qword_1D9F2CFD0);
  v51 = *(v53 - 8);
  v7 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v60 = &v48 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D48, &qword_1D9F2CFD8);
  v50 = *(v52 - 8);
  v9 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D50, &qword_1D9F2CFE0);
  v49 = *(v12 - 8);
  v13 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D58, &qword_1D9F2CFE8);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v20 = &v48 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D9E43D68();
  v23 = v62;
  sub_1D9F2BB7C();
  if (!v23)
  {
    v24 = v15;
    v48 = v12;
    v25 = v60;
    v26 = v61;
    v62 = v17;
    v27 = v16;
    v28 = v20;
    v29 = sub_1D9F2B8DC();
    v30 = *(v29 + 16);
    if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 5) : (v32 = 1), v32))
    {
      v33 = sub_1D9F2B6BC();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
      *v35 = &type metadata for AppRecord.Metadata.Kind;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v29 + 32) <= 1u)
      {
        if (*(v29 + 32))
        {
          v65 = 1;
          sub_1D9E43EB8();
          sub_1D9F2B7DC();
          (*(v50 + 8))(v11, v52);
          (*(v62 + 8))(v20, v27);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 1;
        }

        else
        {
          v64 = 0;
          sub_1D9E43F0C();
          sub_1D9F2B7DC();
          (*(v49 + 8))(v24, v48);
          (*(v62 + 8))(v20, v27);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 0;
        }
      }

      else
      {
        v52 = v29;
        v38 = v62;
        if (v31 == 2)
        {
          v66 = 2;
          sub_1D9E43E64();
          sub_1D9F2B7DC();
          (*(v51 + 8))(v25, v53);
          (*(v38 + 8))(v28, v27);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 2;
        }

        else
        {
          v39 = v27;
          v40 = v28;
          if (v31 == 3)
          {
            v67 = 3;
            sub_1D9E43E10();
            v41 = v58;
            sub_1D9F2B7DC();
            (*(v54 + 8))(v41, v56);
            (*(v38 + 8))(v28, v39);
            swift_unknownObjectRelease();
            v42 = 0;
            v43 = 3;
          }

          else
          {
            v68 = 4;
            sub_1D9E43DBC();
            sub_1D9F2B7DC();
            v44 = v39;
            v45 = v55;
            v42 = sub_1D9F2B84C();
            v43 = v46;
            (*(v57 + 8))(v26, v45);
            (*(v38 + 8))(v40, v44);
            swift_unknownObjectRelease();
          }
        }
      }

      v47 = v59;
      *v59 = v42;
      v47[1] = v43;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1D9E41644()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_1D9E41678()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
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

uint64_t sub_1D9E416AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

BOOL sub_1D9E416E0()
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

uint64_t sub_1D9E4170C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
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

uint64_t sub_1D9E41740()
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

uint64_t sub_1D9E41774()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 26;
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

uint64_t sub_1D9E417A8()
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

uint64_t sub_1D9E417DC()
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

uint64_t sub_1D9E41810()
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

uint64_t sub_1D9E41874()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v3);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E4192C()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1DA7438F0](v2);
    }

    if (v1 == 3)
    {
      v2 = 3;
      return MEMORY[0x1DA7438F0](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1DA7438F0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1DA7438F0](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1DA7438F0](4);

  return sub_1D9F2B18C();
}

uint64_t sub_1D9E419DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1DA7438F0](v3);
      return sub_1D9F2BB4C();
    }
  }

  MEMORY[0x1DA7438F0](4);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D9E43FAC(v2, v3);
}

__n128 AppRecord.Metadata.init(kind:isLaunchProhibited:appTags:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t sub_1D9E41AC8()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73676154707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1D9E41B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E45DD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E41B48(uint64_t a1)
{
  v2 = sub_1D9E4408C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E41B84(uint64_t a1)
{
  v2 = sub_1D9E4408C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D68, &qword_1D9F2CFF8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v17 = *(v1 + 16);
  v14[0] = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E43FAC(v8, v9);
  sub_1D9E4408C();
  sub_1D9F2BB8C();
  v15 = v8;
  v16 = v9;
  v18 = 0;
  sub_1D9E440E0();
  v11 = v14[1];
  sub_1D9F2B9AC();
  sub_1D9E44134(v15, v16);
  if (!v11)
  {
    v12 = v14[0];
    LOBYTE(v15) = 1;
    sub_1D9F2B96C();
    v15 = v12;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120);
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AppRecord.Metadata.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    v5 = *v0;
    MEMORY[0x1DA7438F0](4);
    sub_1D9F2B18C();
    goto LABEL_12;
  }

  if (!v1)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  MEMORY[0x1DA7438F0](v4);
LABEL_12:
  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_1D9F2B18C();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t AppRecord.Metadata.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D80, &qword_1D9F2D008);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E4408C();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_1D9E44190();
  sub_1D9F2B89C();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v16 = sub_1D9F2B85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
  v17 = 2;
  sub_1D9E441E4(&qword_1EE0F1118);
  sub_1D9F2B89C();
  v16 &= 1u;
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v13;
  sub_1D9E43FAC(v12, v11);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D9E44134(v12, v11);
}

uint64_t sub_1D9E42210()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42270()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  sub_1D9F2BAFC();
  AppRecord.Metadata.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_1D9E43FAC(v2, v3);
}

uint64_t sub_1D9E424D0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42518()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.localizedName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 AppRecord.init(bundleIdentifier:metadata:state:protectionState:localizedName:genre:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unsigned __int8 *a8@<X7>, __n128 *a9@<X8>)
{
  v9 = a3[1].n128_u8[0];
  v10 = a3[1].n128_u64[1];
  v11 = *a4;
  v12 = *a5;
  v13 = *a8;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  result = *a3;
  a9[1] = *a3;
  a9[2].n128_u8[0] = v9;
  a9[2].n128_u64[1] = v10;
  a9[3].n128_u64[0] = v11;
  a9[3].n128_u64[1] = v12;
  a9[4].n128_u64[0] = a6;
  a9[4].n128_u64[1] = a7;
  a9[5].n128_u8[0] = v13;
  return result;
}

uint64_t _s29VisualActionPredictionSupport16DateTimeScheduleV10RecurrenceV9DayOfWeekO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E42628()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9E4266C()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x69746365746F7270;
  v4 = 0x657A696C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x65726E6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6574617473;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D9E42738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E45EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E4276C(uint64_t a1)
{
  v2 = sub_1D9E44448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E427A8(uint64_t a1)
{
  v2 = sub_1D9E44448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppRecord.encode(to:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D90, &qword_1D9F2D010) - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v24 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v36 = *(v1 + 32);
  v11 = v1[5];
  v12 = v1[6];
  v29 = v9;
  v30 = v11;
  v13 = v1[8];
  v27 = v1[7];
  v28 = v12;
  v25 = v1[9];
  v26 = v13;
  HIDWORD(v24) = *(v1 + 80);
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1D9E44448();
  sub_1D9F2BB8C();
  LOBYTE(v32) = 0;
  v19 = v6;
  v20 = v31;
  sub_1D9F2B95C();
  if (!v20)
  {
    v21 = v27;
    v22 = v28;
    v32 = v29;
    v33 = v10;
    v34 = v36;
    v35 = v30;
    v37 = 1;
    sub_1D9E43FAC(v29, v10);
    sub_1D9E4449C();

    sub_1D9F2B9AC();
    sub_1D9E44134(v32, v33);

    v32 = v22;
    v37 = 2;
    sub_1D9E444F0();
    sub_1D9F2B9AC();
    v32 = v21;
    v37 = 3;
    sub_1D9E44544();
    sub_1D9F2B9AC();
    LOBYTE(v32) = 4;
    sub_1D9F2B95C();
    LOBYTE(v32) = BYTE4(v24);
    v37 = 5;
    sub_1D9E44598();
    sub_1D9F2B9AC();
  }

  return (*(v3 + 8))(v19, v18);
}

uint64_t AppRecord.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v17 = v0[8];
  v9 = v0[9];
  v10 = *(v0 + 80);
  sub_1D9F2B18C();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = 2;
      goto LABEL_11;
    }

    if (v4 == 3)
    {
      v11 = 3;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1DA7438F0](4);
    sub_1D9F2B18C();
    goto LABEL_12;
  }

  if (!v4)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v11 = 1;
LABEL_11:
  MEMORY[0x1DA7438F0](v11);
LABEL_12:
  sub_1D9F2BB1C();
  MEMORY[0x1DA7438F0](*(v7 + 16));
  v12 = *(v7 + 16);
  if (v12)
  {
    v13 = (v7 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1D9F2B18C();

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  MEMORY[0x1DA7438F0](v6);
  MEMORY[0x1DA7438F0](v8);
  sub_1D9F2B18C();
  return MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v10]);
}

uint64_t AppRecord.hashValue.getter()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72DC0, &qword_1D9F2D018);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E44448();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_1D9F2B84C();
  v13 = v12;
  LOBYTE(v28) = 1;
  sub_1D9E445EC();
  sub_1D9F2B89C();
  v26 = v34;
  v44 = v35;
  v27 = v36;
  LOBYTE(v28) = 2;
  sub_1D9E44640();
  sub_1D9F2B89C();
  v24 = v34;
  LOBYTE(v28) = 3;
  sub_1D9E44694();
  sub_1D9F2B89C();
  v23 = v34;
  LOBYTE(v34) = 4;
  v22 = sub_1D9F2B84C();
  v25 = v14;
  v45 = 5;
  sub_1D9E446E8();
  sub_1D9F2B89C();
  (*(v6 + 8))(v9, v5);
  *&v28 = v11;
  v15 = v26;
  *(&v28 + 1) = v13;
  v29 = v26;
  v16 = *(&v26 + 1);
  LOBYTE(v30) = v44;
  v17 = v27;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v23;
  *&v32 = v22;
  *(&v32 + 1) = v25;
  v18 = v46;
  v33 = v46;
  *(a2 + 80) = v46;
  v19 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v19;
  *(a2 + 64) = v32;
  v20 = v29;
  *a2 = v28;
  *(a2 + 16) = v20;
  sub_1D9E4473C(&v28, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v34 = v11;
  *(&v34 + 1) = v13;
  v35 = v15;
  v36 = v16;
  v37 = v44;
  v38 = v17;
  v39 = v24;
  v40 = v23;
  v41 = v22;
  v42 = v25;
  v43 = v18;
  return sub_1D9E44774(&v34);
}

uint64_t sub_1D9E43104()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E43148()
{
  sub_1D9F2BAFC();
  AppRecord.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t AppRecord.isSystem.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 > 3)
  {

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 4u >> (v2 & 0xF);
  }

  sub_1D9E44134(v1, v2);
  sub_1D9E44134(0, 2uLL);
  return v3 & 1;
}

uint64_t AppRecord.isInternal.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  if (v2 < 3)
  {
    goto LABEL_5;
  }

  if (v2 != 3)
  {
    v5 = v0[2];
    v6 = v2;

    v2 = v6;
    v1 = v5;
LABEL_5:
    sub_1D9E44134(v1, v2);
    v7 = sub_1D9E44134(0, 3uLL);
    v10[0] = 0x6C616E7265746E69;
    v10[1] = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v10;
    v4 = sub_1D9E43AC0(sub_1D9E447A4, v9, v3);
    return v4 & 1;
  }

  sub_1D9E44134(v1, 3uLL);
  sub_1D9E44134(0, 3uLL);
  v4 = 1;
  return v4 & 1;
}

uint64_t AppRecord.isHidden.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v5[0] = 0x6E6564646968;
  v5[1] = 0xE600000000000000;
  v4[2] = v5;
  return (sub_1D9E43AC0(sub_1D9E461EC, v4, v1) | v2) & 1;
}

BOOL AppRecord.isLaunchable.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  result = 0;
  if ((v2 & 7) == 3 && (v2 & 8) == 0)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = *(v1 + 56);
    v9[0] = 0x6E6564646968;
    v9[1] = 0xE600000000000000;
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v9;
    if (!((sub_1D9E43AC0(sub_1D9E461EC, v8, v6) | v3) & 1 | ((v5 & 3) != 0)))
    {
      return 1;
    }
  }

  return result;
}

unint64_t AppRecord.CategoryID.stringRepresentation.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7373656E69737562;
      break;
    case 2:
      result = 0x72656874616577;
      break;
    case 3:
      result = 0x656974696C697475;
      break;
    case 4:
      result = 0x6C6576617274;
      break;
    case 5:
      result = 0x7374726F7073;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x69746375646F7270;
      break;
    case 9:
      result = 0x6469566F746F6870;
      break;
    case 0xA:
      result = 1937204590;
      break;
    case 0xB:
      result = 0x697461676976616ELL;
      break;
    case 0xC:
      result = 0x636973756DLL;
      break;
    case 0xD:
      result = 0x6C7974736566696CLL;
      break;
    case 0xE:
      result = 0x694668746C616568;
      break;
    case 0xF:
      result = 0x73656D6167;
      break;
    case 0x10:
      result = 0x65636E616E6966;
      break;
    case 0x11:
      result = 0x6961747265746E65;
      break;
    case 0x12:
      result = 0x6F69746163756465;
      break;
    case 0x13:
      result = 0x736B6F6F62;
      break;
    case 0x14:
      result = 0x6C61636964656DLL;
      break;
    case 0x15:
      result = 0x6E6174737377656ELL;
      break;
    case 0x16:
      result = 0x73676F6C61746163;
      break;
    case 0x17:
      result = 0x6E697244646F6F66;
      break;
    case 0x18:
      result = 0x676E6970706F6873;
      break;
    case 0x19:
      result = 0x7372656B63697473;
      break;
    case 0x1A:
      result = 0x65706F6C65766564;
      break;
    case 0x1B:
      result = 0x7363696870617267;
      break;
    default:
      return result;
  }

  return result;
}

VisualActionPredictionSupport::AppRecord::CategoryID_optional __swiftcall AppRecord.CategoryID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  switch(rawValue)
  {
    case 6000:
      v2 = 1;
      goto LABEL_3;
    case 6001:
      *v1 = 2;
      return rawValue;
    case 6002:
      *v1 = 3;
      return rawValue;
    case 6003:
      *v1 = 4;
      return rawValue;
    case 6004:
      *v1 = 5;
      return rawValue;
    case 6005:
      *v1 = 6;
      return rawValue;
    case 6006:
      *v1 = 7;
      return rawValue;
    case 6007:
      *v1 = 8;
      return rawValue;
    case 6008:
      *v1 = 9;
      return rawValue;
    case 6009:
LABEL_3:
      *v1 = v2;
      return rawValue;
    case 6010:
      *v1 = 11;
      return rawValue;
    case 6011:
      *v1 = 12;
      return rawValue;
    case 6012:
      *v1 = 13;
      return rawValue;
    case 6013:
      *v1 = 14;
      return rawValue;
    case 6014:
      *v1 = 15;
      return rawValue;
    case 6015:
      *v1 = 16;
      return rawValue;
    case 6016:
      *v1 = 17;
      return rawValue;
    case 6017:
      *v1 = 18;
      return rawValue;
    case 6018:
      *v1 = 19;
      return rawValue;
    case 6019:
      goto LABEL_6;
    case 6020:
      *v1 = 20;
      return rawValue;
    case 6021:
      *v1 = 21;
      return rawValue;
    case 6022:
      *v1 = 22;
      return rawValue;
    case 6023:
      *v1 = 23;
      return rawValue;
    case 6024:
      *v1 = 24;
      return rawValue;
    case 6025:
      *v1 = 25;
      return rawValue;
    case 6026:
      *v1 = 26;
      return rawValue;
    case 6027:
      *v1 = 27;
      return rawValue;
    default:
      if (rawValue)
      {
LABEL_6:
        *v1 = 28;
      }

      else
      {
        *v1 = 0;
      }

      return rawValue;
  }
}

uint64_t sub_1D9E43918()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v1]);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E439A0()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](qword_1D9F2E0B8[v1]);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E43AC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1D9E44134(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1D9E44134(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1D9E44134(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1D9E44134(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1D9E44134(*a1, 1uLL);
      sub_1D9E44134(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1D9E43FAC(*a2, *(a2 + 8));
    sub_1D9E43FAC(v2, v3);
    sub_1D9E44134(v2, v3);
    sub_1D9E44134(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1D9E43FAC(*a1, v3);
    sub_1D9E43FAC(v2, v3);
    sub_1D9E44134(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = *a1;
  v11 = sub_1D9F2BA1C();
  sub_1D9E43FAC(v4, v5);
  sub_1D9E43FAC(v2, v3);
  sub_1D9E44134(v2, v3);
  sub_1D9E44134(v4, v5);
  return v11 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D9E43D68()
{
  result = qword_1ECB72D00;
  if (!qword_1ECB72D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D00);
  }

  return result;
}

unint64_t sub_1D9E43DBC()
{
  result = qword_1ECB72D08;
  if (!qword_1ECB72D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D08);
  }

  return result;
}

unint64_t sub_1D9E43E10()
{
  result = qword_1ECB72D10;
  if (!qword_1ECB72D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D10);
  }

  return result;
}

unint64_t sub_1D9E43E64()
{
  result = qword_1ECB72D18;
  if (!qword_1ECB72D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D18);
  }

  return result;
}

unint64_t sub_1D9E43EB8()
{
  result = qword_1ECB72D20;
  if (!qword_1ECB72D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D20);
  }

  return result;
}

unint64_t sub_1D9E43F0C()
{
  result = qword_1ECB72D28;
  if (!qword_1ECB72D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D28);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1D9E43FAC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport9AppRecordV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v12 = *a1;
  v13 = v2;
  v10 = v5;
  v11 = v6;
  sub_1D9E43FAC(v12, v2);
  sub_1D9E43FAC(v5, v6);
  LOBYTE(v5) = _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(&v12, &v10);
  sub_1D9E44134(v10, v11);
  sub_1D9E44134(v12, v13);
  if (v5 & 1) == 0 || ((v3 ^ v7))
  {
    return 0;
  }

  return sub_1D9E49670(v4, v8);
}

unint64_t sub_1D9E4408C()
{
  result = qword_1ECB72D70;
  if (!qword_1ECB72D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D70);
  }

  return result;
}

unint64_t sub_1D9E440E0()
{
  result = qword_1ECB72D78;
  if (!qword_1ECB72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D78);
  }

  return result;
}

uint64_t sub_1D9E44134(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
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

unint64_t sub_1D9E44190()
{
  result = qword_1ECB72D88;
  if (!qword_1ECB72D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D88);
  }

  return result;
}

uint64_t sub_1D9E441E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL _s29VisualActionPredictionSupport9AppRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = *(a1 + 56);
  v23 = *(a1 + 48);
  v19 = *(a1 + 72);
  v20 = *(a1 + 64);
  v6 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v21 = *(a2 + 56);
  v17 = *(a2 + 72);
  v18 = *(a2 + 64);
  v16 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v15 = v6;
  v26 = v2;
  v27 = v3;
  v24 = v8;
  v25 = v7;
  sub_1D9E43FAC(v2, v3);

  sub_1D9E43FAC(v8, v7);

  sub_1D9E43FAC(v2, v3);
  sub_1D9E43FAC(v8, v7);
  v12 = _s29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO2eeoiySbAG_AGtFZ_0(&v26, &v24);
  sub_1D9E44134(v24, v25);
  sub_1D9E44134(v26, v27);
  if ((v12 & 1) == 0 || v4 != v9)
  {
    sub_1D9E44134(v8, v7);

    sub_1D9E44134(v2, v3);

    return 0;
  }

  v14 = sub_1D9E49670(v5, v11);
  sub_1D9E44134(v8, v7);

  sub_1D9E44134(v2, v3);

  result = 0;
  if ((v14 & 1) != 0 && v23 == v10 && v22 == v21)
  {
    if (v20 == v18 && v19 == v17 || (sub_1D9F2BA1C() & 1) != 0)
    {
      return qword_1D9F2E0B8[v15] == qword_1D9F2E0B8[v16];
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D9E44448()
{
  result = qword_1ECB72D98;
  if (!qword_1ECB72D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72D98);
  }

  return result;
}

unint64_t sub_1D9E4449C()
{
  result = qword_1ECB72DA0;
  if (!qword_1ECB72DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DA0);
  }

  return result;
}

unint64_t sub_1D9E444F0()
{
  result = qword_1ECB72DA8;
  if (!qword_1ECB72DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DA8);
  }

  return result;
}

unint64_t sub_1D9E44544()
{
  result = qword_1ECB72DB0;
  if (!qword_1ECB72DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DB0);
  }

  return result;
}

unint64_t sub_1D9E44598()
{
  result = qword_1ECB72DB8;
  if (!qword_1ECB72DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DB8);
  }

  return result;
}

unint64_t sub_1D9E445EC()
{
  result = qword_1ECB72DC8;
  if (!qword_1ECB72DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DC8);
  }

  return result;
}

unint64_t sub_1D9E44640()
{
  result = qword_1ECB72DD0;
  if (!qword_1ECB72DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DD0);
  }

  return result;
}

unint64_t sub_1D9E44694()
{
  result = qword_1ECB72DD8;
  if (!qword_1ECB72DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DD8);
  }

  return result;
}

unint64_t sub_1D9E446E8()
{
  result = qword_1ECB72DE0;
  if (!qword_1ECB72DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DE0);
  }

  return result;
}

uint64_t sub_1D9E447C0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C() & 1;
  }
}

unint64_t sub_1D9E4481C()
{
  result = qword_1ECB72DE8;
  if (!qword_1ECB72DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DE8);
  }

  return result;
}

unint64_t sub_1D9E44874()
{
  result = qword_1ECB72DF0;
  if (!qword_1ECB72DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DF0);
  }

  return result;
}

unint64_t sub_1D9E448CC()
{
  result = qword_1ECB72DF8;
  if (!qword_1ECB72DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72DF8);
  }

  return result;
}

unint64_t sub_1D9E44924()
{
  result = qword_1ECB72E00;
  if (!qword_1ECB72E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E00);
  }

  return result;
}

unint64_t sub_1D9E44978()
{
  result = qword_1EE0F12F0;
  if (!qword_1EE0F12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12F0);
  }

  return result;
}

unint64_t sub_1D9E449D0()
{
  result = qword_1EE0F12E8;
  if (!qword_1EE0F12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12E8);
  }

  return result;
}

unint64_t sub_1D9E44A28()
{
  result = qword_1ECB72E08;
  if (!qword_1ECB72E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E08);
  }

  return result;
}

unint64_t sub_1D9E44A80()
{
  result = qword_1ECB72E10;
  if (!qword_1ECB72E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E10);
  }

  return result;
}

unint64_t sub_1D9E44AD4()
{
  result = qword_1EE0F1300;
  if (!qword_1EE0F1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1300);
  }

  return result;
}

unint64_t sub_1D9E44B2C()
{
  result = qword_1EE0F12F8;
  if (!qword_1EE0F12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F12F8);
  }

  return result;
}

unint64_t sub_1D9E44B84()
{
  result = qword_1ECB72E18;
  if (!qword_1ECB72E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E18);
  }

  return result;
}

unint64_t sub_1D9E44BDC()
{
  result = qword_1ECB72E20;
  if (!qword_1ECB72E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport9AppRecordV8MetadataV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D9E44C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1D9E44CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_1D9E44D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9E44D70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D9E44DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D9E44E20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1D9E44E80(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.CategoryID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRecord.CategoryID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppRecord.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppRecord.Metadata.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppRecord.Metadata.Kind.OtherCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppRecord.Metadata.Kind.OtherCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1D9E45548()
{
  result = qword_1ECB72E28;
  if (!qword_1ECB72E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E28);
  }

  return result;
}

unint64_t sub_1D9E455A0()
{
  result = qword_1ECB72E30;
  if (!qword_1ECB72E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E30);
  }

  return result;
}

unint64_t sub_1D9E455F8()
{
  result = qword_1ECB72E38;
  if (!qword_1ECB72E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E38);
  }

  return result;
}

unint64_t sub_1D9E45650()
{
  result = qword_1ECB72E40;
  if (!qword_1ECB72E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E40);
  }

  return result;
}

unint64_t sub_1D9E456A8()
{
  result = qword_1ECB72E48;
  if (!qword_1ECB72E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E48);
  }

  return result;
}

unint64_t sub_1D9E45700()
{
  result = qword_1ECB72E50;
  if (!qword_1ECB72E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E50);
  }

  return result;
}

unint64_t sub_1D9E45758()
{
  result = qword_1ECB72E58;
  if (!qword_1ECB72E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E58);
  }

  return result;
}

unint64_t sub_1D9E457B0()
{
  result = qword_1ECB72E60;
  if (!qword_1ECB72E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E60);
  }

  return result;
}

unint64_t sub_1D9E45808()
{
  result = qword_1ECB72E68;
  if (!qword_1ECB72E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E68);
  }

  return result;
}

unint64_t sub_1D9E45860()
{
  result = qword_1ECB72E70;
  if (!qword_1ECB72E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E70);
  }

  return result;
}

unint64_t sub_1D9E458B8()
{
  result = qword_1ECB72E78;
  if (!qword_1ECB72E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E78);
  }

  return result;
}

unint64_t sub_1D9E45910()
{
  result = qword_1ECB72E80;
  if (!qword_1ECB72E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E80);
  }

  return result;
}

unint64_t sub_1D9E45968()
{
  result = qword_1ECB72E88;
  if (!qword_1ECB72E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E88);
  }

  return result;
}

unint64_t sub_1D9E459C0()
{
  result = qword_1ECB72E90;
  if (!qword_1ECB72E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E90);
  }

  return result;
}

unint64_t sub_1D9E45A18()
{
  result = qword_1ECB72E98;
  if (!qword_1ECB72E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72E98);
  }

  return result;
}

unint64_t sub_1D9E45A70()
{
  result = qword_1ECB72EA0;
  if (!qword_1ECB72EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EA0);
  }

  return result;
}

unint64_t sub_1D9E45AC8()
{
  result = qword_1ECB72EA8;
  if (!qword_1ECB72EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EA8);
  }

  return result;
}

unint64_t sub_1D9E45B20()
{
  result = qword_1ECB72EB0;
  if (!qword_1ECB72EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EB0);
  }

  return result;
}

unint64_t sub_1D9E45B78()
{
  result = qword_1ECB72EB8;
  if (!qword_1ECB72EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EB8);
  }

  return result;
}

unint64_t sub_1D9E45BD0()
{
  result = qword_1ECB72EC0;
  if (!qword_1ECB72EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EC0);
  }

  return result;
}

uint64_t sub_1D9E45C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E45DD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9F47FE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73676154707061 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E45EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9F48000 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF65746174536E6FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1D9E46100()
{
  result = qword_1ECB72EC8;
  if (!qword_1ECB72EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72EC8);
  }

  return result;
}

uint64_t sub_1D9E46224()
{
  v1 = *v0;
  v2 = 0x656C6C6174736E69;
  v3 = 0x6168436574617473;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x6573616261746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6174736E696E75;
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

uint64_t sub_1D9E462E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9E48648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9E4630C(uint64_t a1)
{
  v2 = sub_1D9E47CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46348(uint64_t a1)
{
  v2 = sub_1D9E47CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46384(uint64_t a1)
{
  v2 = sub_1D9E47D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E463C0(uint64_t a1)
{
  v2 = sub_1D9E47D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E463FC(uint64_t a1)
{
  v2 = sub_1D9E47E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46438(uint64_t a1)
{
  v2 = sub_1D9E47E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46474(uint64_t a1)
{
  v2 = sub_1D9E47D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E464B0(uint64_t a1)
{
  v2 = sub_1D9E47D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E464EC(uint64_t a1)
{
  v2 = sub_1D9E47DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46528(uint64_t a1)
{
  v2 = sub_1D9E47DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E46564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9F48040 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9E465F8(uint64_t a1)
{
  v2 = sub_1D9E47E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E46634(uint64_t a1)
{
  v2 = sub_1D9E47E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72ED0, &qword_1D9F2E1A0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72ED8, &qword_1D9F2E1A8);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EE0, &qword_1D9F2E1B0);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EE8, &qword_1D9F2E1B8);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EF0, &qword_1D9F2E1C0);
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72EF8, &unk_1D9F2E1C8);
  v59 = *(v21 - 8);
  v60 = v21;
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v57 = *v2;
  v25 = *(v2 + 8);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E47CDC();
  v58 = v24;
  sub_1D9F2BB8C();
  if (v25 <= 1)
  {
    if (v25)
    {
      LOBYTE(v61) = 1;
      sub_1D9E47E2C();
      v44 = v60;
      v45 = v58;
      sub_1D9F2B8FC();
      v61 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
      sub_1D9E441E4(&qword_1EE0F1120);
      sub_1D9F2B9AC();
      (*(v47 + 8))(v16, v13);
      v31 = *(v59 + 8);
      v32 = v45;
      v35 = v44;
      return v31(v32, v35);
    }

    v33 = v17;
    LOBYTE(v61) = 0;
    sub_1D9E47E80();
    v28 = v60;
    v34 = v58;
    sub_1D9F2B8FC();
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120);
    sub_1D9F2B9AC();
    (*(v46 + 8))(v20, v33);
    v31 = *(v59 + 8);
    v32 = v34;
  }

  else
  {
    if (v25 == 2)
    {
      LOBYTE(v61) = 2;
      sub_1D9E47DD8();
      v36 = v48;
      v37 = v60;
      v38 = v58;
      sub_1D9F2B8FC();
      v61 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
      sub_1D9E441E4(&qword_1EE0F1120);
      v39 = v50;
      sub_1D9F2B9AC();
      (*(v49 + 8))(v36, v39);
      return (*(v59 + 8))(v38, v37);
    }

    if (v25 != 3)
    {
      LOBYTE(v61) = 4;
      sub_1D9E47D30();
      v41 = v51;
      v42 = v60;
      v43 = v58;
      sub_1D9F2B8FC();
      (*(v53 + 8))(v41, v54);
      return (*(v59 + 8))(v43, v42);
    }

    LOBYTE(v61) = 3;
    sub_1D9E47D84();
    v27 = v52;
    v28 = v60;
    v29 = v58;
    sub_1D9F2B8FC();
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E441E4(&qword_1EE0F1120);
    v30 = v56;
    sub_1D9F2B9AC();
    (*(v55 + 8))(v27, v30);
    v31 = *(v59 + 8);
    v32 = v29;
  }

  v35 = v28;
  return v31(v32, v35);
}

uint64_t AppEvent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      MEMORY[0x1DA7438F0](1);
      result = MEMORY[0x1DA7438F0](*(v1 + 16));
      v16 = *(v1 + 16);
      if (v16)
      {
        v17 = (v1 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;

          sub_1D9F2B18C();

          v17 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      MEMORY[0x1DA7438F0](0);
      result = MEMORY[0x1DA7438F0](*(v1 + 16));
      v8 = *(v1 + 16);
      if (v8)
      {
        v9 = (v1 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_1D9F2B18C();

          v9 += 2;
          --v8;
        }

        while (v8);
      }
    }
  }

  else if (v2 == 2)
  {
    MEMORY[0x1DA7438F0](2);
    result = MEMORY[0x1DA7438F0](*(v1 + 16));
    v12 = *(v1 + 16);
    if (v12)
    {
      v13 = (v1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;

        sub_1D9F2B18C();

        v13 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else if (v2 == 3)
  {
    MEMORY[0x1DA7438F0](3);
    result = MEMORY[0x1DA7438F0](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;

        sub_1D9F2B18C();

        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    return MEMORY[0x1DA7438F0](4);
  }

  return result;
}

uint64_t AppEvent.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D9F2BAFC();
  AppEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t AppEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F30, &qword_1D9F2E1D8);
  v56 = *(v60 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v52[-v4];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F38, &qword_1D9F2E1E0);
  v63 = *(v59 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v52[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F40, &qword_1D9F2E1E8);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F48, &qword_1D9F2E1F0);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F50, &qword_1D9F2E1F8);
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72F58, &unk_1D9F2E200);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52[-v21];
  v23 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D9E47CDC();
  v25 = v69;
  sub_1D9F2BB7C();
  if (!v25)
  {
    v26 = v17;
    v54 = v14;
    v28 = v66;
    v27 = v67;
    v69 = v19;
    v29 = v22;
    v30 = sub_1D9F2B8DC();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_1D9E41644();
    if (v32 != 5 && v72 == v73 >> 1)
    {
      v53 = v32;
      if (v32 <= 1u)
      {
        if (!v32)
        {
          LOBYTE(v74) = 0;
          sub_1D9E47E80();
          v43 = v26;
          sub_1D9F2B7DC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
          sub_1D9E441E4(&qword_1EE0F1118);
          v48 = v54;
          sub_1D9F2B89C();
          (*(v55 + 8))(v43, v48);
          (*(v69 + 8))(v22, v18);
          swift_unknownObjectRelease();
LABEL_17:
          v51 = v74;
          goto LABEL_18;
        }

        LOBYTE(v74) = 1;
        sub_1D9E47E2C();
        sub_1D9F2B7DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
        sub_1D9E441E4(&qword_1EE0F1118);
        v49 = v58;
        sub_1D9F2B89C();
        v50 = v69;
        (*(v57 + 8))(v13, v49);
        (*(v50 + 8))(v22, v18);
      }

      else
      {
        v33 = v65;
        if (v32 == 2)
        {
          LOBYTE(v74) = 2;
          sub_1D9E47DD8();
          v44 = v29;
          sub_1D9F2B7DC();
          v45 = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
          sub_1D9E441E4(&qword_1EE0F1118);
          v46 = v62;
          sub_1D9F2B89C();
          (*(v61 + 8))(v28, v46);
          (*(v45 + 8))(v44, v18);
          swift_unknownObjectRelease();
          v51 = v74;
          v41 = v68;
LABEL_19:
          *v33 = v51;
          *(v33 + 8) = v53;
          return __swift_destroy_boxed_opaque_existential_1(v41);
        }

        v34 = v69;
        if (v32 != 3)
        {
          LOBYTE(v74) = 4;
          sub_1D9E47D30();
          v47 = v64;
          sub_1D9F2B7DC();
          (*(v56 + 8))(v47, v60);
          (*(v34 + 8))(v29, v18);
          swift_unknownObjectRelease();
          v51 = 0;
LABEL_18:
          v41 = v68;
          v33 = v65;
          goto LABEL_19;
        }

        LOBYTE(v74) = 3;
        sub_1D9E47D84();
        sub_1D9F2B7DC();
        v66 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
        sub_1D9E441E4(&qword_1EE0F1118);
        v35 = v59;
        sub_1D9F2B89C();
        (*(v63 + 8))(v27, v35);
        (*(v34 + 8))(v29, v66);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v36 = v18;
    v37 = sub_1D9F2B6BC();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v39 = &type metadata for AppEvent;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v69 + 8))(v22, v36);
    swift_unknownObjectRelease();
  }

  v41 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D9E47A5C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D9F2BAFC();
  AppEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E47AB4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D9F2BAFC();
  AppEvent.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport8AppEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v5 == 1)
      {
        LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
        sub_1D9E48818(v4, 1u);
        sub_1D9E48818(v2, 1u);
        sub_1D9E4882C(v2, 1u);
        v7 = v4;
        v8 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(a2 + 8))
    {
      v6 = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 0);
      sub_1D9E48818(v2, 0);
      sub_1D9E4882C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }
  }

  else if (v3 == 2)
  {
    if (v5 == 2)
    {
      LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 2u);
      sub_1D9E48818(v2, 2u);
      sub_1D9E4882C(v2, 2u);
      v7 = v4;
      v8 = 2;
      goto LABEL_19;
    }
  }

  else if (v3 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v6) = sub_1D9E49670(*a1, *a2);
      sub_1D9E48818(v4, 3u);
      sub_1D9E48818(v2, 3u);
      sub_1D9E4882C(v2, 3u);
      v7 = v4;
      v8 = 3;
LABEL_19:
      sub_1D9E4882C(v7, v8);
      return v6 & 1;
    }
  }

  else if (v5 == 4 && v4 == 0)
  {
    sub_1D9E4882C(*a1, 4u);
    sub_1D9E4882C(0, 4u);
    return 1;
  }

  sub_1D9E48818(*a2, *(a2 + 8));
  sub_1D9E48818(v2, v3);
  sub_1D9E4882C(v2, v3);
  sub_1D9E4882C(v4, v5);
  return 0;
}

unint64_t sub_1D9E47CDC()
{
  result = qword_1ECB72F00;
  if (!qword_1ECB72F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F00);
  }

  return result;
}

unint64_t sub_1D9E47D30()
{
  result = qword_1ECB72F08;
  if (!qword_1ECB72F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F08);
  }

  return result;
}

unint64_t sub_1D9E47D84()
{
  result = qword_1ECB72F10;
  if (!qword_1ECB72F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F10);
  }

  return result;
}

unint64_t sub_1D9E47DD8()
{
  result = qword_1ECB72F18;
  if (!qword_1ECB72F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F18);
  }

  return result;
}

unint64_t sub_1D9E47E2C()
{
  result = qword_1ECB72F20;
  if (!qword_1ECB72F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F20);
  }

  return result;
}

unint64_t sub_1D9E47E80()
{
  result = qword_1ECB72F28;
  if (!qword_1ECB72F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F28);
  }

  return result;
}

unint64_t sub_1D9E47ED8()
{
  result = qword_1ECB72F60;
  if (!qword_1ECB72F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport8AppEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D9E47F5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9E47FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D9E47FE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D9E48074()
{
  result = qword_1ECB72F68;
  if (!qword_1ECB72F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F68);
  }

  return result;
}

unint64_t sub_1D9E480CC()
{
  result = qword_1ECB72F70;
  if (!qword_1ECB72F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F70);
  }

  return result;
}

unint64_t sub_1D9E48124()
{
  result = qword_1ECB72F78;
  if (!qword_1ECB72F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F78);
  }

  return result;
}

unint64_t sub_1D9E4817C()
{
  result = qword_1ECB72F80;
  if (!qword_1ECB72F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F80);
  }

  return result;
}

unint64_t sub_1D9E481D4()
{
  result = qword_1ECB72F88;
  if (!qword_1ECB72F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F88);
  }

  return result;
}

unint64_t sub_1D9E4822C()
{
  result = qword_1ECB72F90;
  if (!qword_1ECB72F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F90);
  }

  return result;
}

unint64_t sub_1D9E48284()
{
  result = qword_1ECB72F98;
  if (!qword_1ECB72F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72F98);
  }

  return result;
}

unint64_t sub_1D9E482DC()
{
  result = qword_1ECB72FA0;
  if (!qword_1ECB72FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FA0);
  }

  return result;
}

unint64_t sub_1D9E48334()
{
  result = qword_1ECB72FA8;
  if (!qword_1ECB72FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FA8);
  }

  return result;
}

unint64_t sub_1D9E4838C()
{
  result = qword_1ECB72FB0;
  if (!qword_1ECB72FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FB0);
  }

  return result;
}

unint64_t sub_1D9E483E4()
{
  result = qword_1ECB72FB8;
  if (!qword_1ECB72FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FB8);
  }

  return result;
}

unint64_t sub_1D9E4843C()
{
  result = qword_1ECB72FC0;
  if (!qword_1ECB72FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FC0);
  }

  return result;
}

unint64_t sub_1D9E48494()
{
  result = qword_1ECB72FC8;
  if (!qword_1ECB72FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FC8);
  }

  return result;
}

unint64_t sub_1D9E484EC()
{
  result = qword_1ECB72FD0;
  if (!qword_1ECB72FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FD0);
  }

  return result;
}

unint64_t sub_1D9E48544()
{
  result = qword_1ECB72FD8;
  if (!qword_1ECB72FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FD8);
  }

  return result;
}

unint64_t sub_1D9E4859C()
{
  result = qword_1ECB72FE0;
  if (!qword_1ECB72FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FE0);
  }

  return result;
}

unint64_t sub_1D9E485F4()
{
  result = qword_1ECB72FE8;
  if (!qword_1ECB72FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FE8);
  }

  return result;
}

uint64_t sub_1D9E48648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6174736E696E75 && a2 == 0xEB0000000064656CLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000006465676ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9F48020 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xED00007465736552)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E48818(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1D9E4882C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }

  return result;
}

uint64_t VerticalIntegrationContentClassification.caption.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D9E488AC()
{
  if (*v0)
  {
    result = 0x6E6F6974706163;
  }

  else
  {
    result = 0x79726F6765746163;
  }

  *v0;
  return result;
}

uint64_t sub_1D9E488E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E489C4(uint64_t a1)
{
  v2 = sub_1D9E491AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E48A00(uint64_t a1)
{
  v2 = sub_1D9E491AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VerticalIntegrationContentClassification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72FF0, &qword_1D9F2EA30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E491AC();
  sub_1D9F2BB8C();
  v16 = v9;
  v15 = 0;
  sub_1D9E49200();
  sub_1D9F2B94C();
  if (!v2)
  {
    v14 = 1;
    sub_1D9F2B95C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t VerticalIntegrationContentClassification.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0 == 34)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9F2BB1C();
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  return sub_1D9F2B18C();
}

uint64_t VerticalIntegrationContentClassification.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v1 != 34)
  {
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t VerticalIntegrationContentClassification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73008, &qword_1D9F2EA38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E491AC();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v18 = 0;
    sub_1D9E49254();
    sub_1D9F2B83C();
    v11 = v19;
    v17 = 1;
    v13 = sub_1D9F2B84C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E48F24()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0 == 34)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9F2BB1C();
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  return sub_1D9F2B18C();
}

uint64_t sub_1D9E48FD0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  if (v1 != 34)
  {
    VisualContentCategory.rawValue.getter();
    sub_1D9F2B18C();
  }

  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport40VerticalIntegrationContentClassificationV2eeoiySbAC_ACtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (*a1 == 34)
  {
    if (v4 == 34)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 == 34)
  {
    return 0;
  }

  v14 = *a1;
  v8 = VisualContentCategory.rawValue.getter();
  v10 = v9;
  if (v8 == VisualContentCategory.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = sub_1D9F2BA1C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_10:
  if (v2 == v5 && v3 == v6)
  {
    return 1;
  }

  return sub_1D9F2BA1C();
}

unint64_t sub_1D9E491AC()
{
  result = qword_1ECB72FF8;
  if (!qword_1ECB72FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB72FF8);
  }

  return result;
}

unint64_t sub_1D9E49200()
{
  result = qword_1ECB73000;
  if (!qword_1ECB73000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73000);
  }

  return result;
}

unint64_t sub_1D9E49254()
{
  result = qword_1ECB73010;
  if (!qword_1ECB73010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73010);
  }

  return result;
}

unint64_t sub_1D9E492AC()
{
  result = qword_1ECB73018;
  if (!qword_1ECB73018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73018);
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

uint64_t sub_1D9E49314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9E4935C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VerticalIntegrationContentClassification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VerticalIntegrationContentClassification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9E49500()
{
  result = qword_1ECB73020;
  if (!qword_1ECB73020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73020);
  }

  return result;
}

unint64_t sub_1D9E49558()
{
  result = qword_1ECB73028;
  if (!qword_1ECB73028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73028);
  }

  return result;
}

unint64_t sub_1D9E495B0()
{
  result = qword_1ECB73030;
  if (!qword_1ECB73030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73030);
  }

  return result;
}

uint64_t sub_1D9E49670(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E49700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D8, &unk_1D9F2F590);
  v13 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v51 - v14;
  v62 = type metadata accessor for Feedback.Event(0);
  v16 = *(*(v62 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v62);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v51 - v26;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    return 0;
  }

  if (!v27 || a1 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v59 = a1 + v29;
  v56 = v25;
  v57 = a2 + v29;
  v54 = v15;
  v55 = (v69 + 32);
  v30 = (v69 + 8);
  v66 = v69 + 16;
  v58 = *(v24 + 72);
  v31 = v60;
  v52 = v12;
  v53 = v23;
  v51 = v20;
  v64 = v27;
  while (1)
  {
    v32 = v28;
    v33 = v58 * v28;
    result = sub_1D9E51E08(v59 + v33, v31, type metadata accessor for Feedback.Event);
    v61 = v32;
    if (v32 == v64)
    {
      goto LABEL_32;
    }

    sub_1D9E51E08(v57 + v33, v23, type metadata accessor for Feedback.Event);
    v35 = *(v63 + 48);
    sub_1D9E51E08(v31, v15, type metadata accessor for Feedback.Event);
    sub_1D9E51E08(v23, &v15[v35], type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1D9E51E08(v15, v20, type metadata accessor for Feedback.Event);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v30)(v20, v4);
      goto LABEL_26;
    }

    (*v55)(v12, &v15[v35], v4);
    v49 = sub_1D9F2AD3C();
    v50 = *v30;
    (*v30)(v12, v4);
    v50(v20, v4);
    sub_1D9E51F3C(v15, type metadata accessor for Feedback.Event);
    if ((v49 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_6:
    v28 = v61 + 1;
    sub_1D9E51F3C(v23, type metadata accessor for Feedback.Event);
    sub_1D9E51F3C(v31, type metadata accessor for Feedback.Event);
    if (v28 == v64)
    {
      return 1;
    }
  }

  v36 = v56;
  sub_1D9E51E08(v15, v56, type metadata accessor for Feedback.Event);
  v37 = *v36;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {

LABEL_26:
    sub_1D9E51FE8(v15, &qword_1ECB731D8, &unk_1D9F2F590);
LABEL_27:
    sub_1D9E51F3C(v23, type metadata accessor for Feedback.Event);
    sub_1D9E51F3C(v31, type metadata accessor for Feedback.Event);
    return 0;
  }

  v38 = *&v15[v35];
  v39 = *(v37 + 16);
  if (v39 != *(v38 + 16))
  {
LABEL_23:

    sub_1D9E51F3C(v54, type metadata accessor for Feedback.Event);
    v23 = v53;
    v31 = v60;
    goto LABEL_27;
  }

  if (!v39 || v37 == v38)
  {
LABEL_5:

    v15 = v54;
    sub_1D9E51F3C(v54, type metadata accessor for Feedback.Event);
    v12 = v52;
    v23 = v53;
    v31 = v60;
    v20 = v51;
    goto LABEL_6;
  }

  v40 = 0;
  v41 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v67 = v37 + v41;
  v65 = v38 + v41;
  while (v40 < *(v37 + 16))
  {
    v42 = *(v69 + 72) * v40;
    v43 = *(v69 + 16);
    result = v43(v10, v67 + v42, v4);
    if (v40 >= *(v38 + 16))
    {
      goto LABEL_31;
    }

    v44 = v10;
    v45 = v68;
    v43(v68, v65 + v42, v4);
    sub_1D9E51C60(&qword_1ECB731E0, MEMORY[0x1E69695A8]);
    v46 = sub_1D9F2B10C();
    v47 = *v30;
    v48 = v45;
    v10 = v44;
    (*v30)(v48, v4);
    result = (v47)(v44, v4);
    if ((v46 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v39 == ++v40)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D9E49DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1D9E51C60(&qword_1ECB731E0, MEMORY[0x1E69695A8]);
    v22 = sub_1D9F2B10C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E49FC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E4A0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    while (1)
    {
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 1);
      v8 = *v4;
      v10 = v4[1];
      v11 = v4[3];
      v48 = v4[5];
      v46 = v4[7];
      v12 = *(v3 - 3);
      v13 = *(v3 - 2);
      v15 = *(v3 - 1);
      v14 = *v3;
      v16 = v3[1];
      v17 = v3[2];
      v18 = v3[3];
      v45 = v3[4];
      v47 = v3[5];
      v44 = v3[6];
      v49 = v3[7];
      v41 = v4[6];
      v42 = v4[4];
      v43 = v4[2];
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v4 - 4) != *(v3 - 4) || v6 != v12)
        {
          v19 = v4[3];
          v39 = v3[2];
          v40 = v4[1];
          v20 = v3[3];
          v21 = *v4;
          v37 = *v3;
          v38 = *(v4 - 2);
          v22 = v3[1];
          v23 = sub_1D9F2BA1C();
          v14 = v37;
          v7 = v38;
          v16 = v22;
          v8 = v21;
          v18 = v20;
          v17 = v39;
          v10 = v40;
          v11 = v19;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9)
      {
        if (!v15)
        {
          return 0;
        }

        if (v7 != v13 || v9 != v15)
        {
          v24 = v11;
          v25 = v18;
          v26 = v8;
          v27 = v14;
          v28 = v16;
          v29 = sub_1D9F2BA1C();
          v16 = v28;
          v14 = v27;
          v8 = v26;
          v18 = v25;
          v11 = v24;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v15)
      {
        return 0;
      }

      if (v10)
      {
        if (!v16)
        {
          return 0;
        }

        if (v8 != v14 || v10 != v16)
        {
          v30 = v11;
          v31 = v18;
          v32 = sub_1D9F2BA1C();
          v18 = v31;
          v11 = v30;
          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v11)
      {
        v33 = v49;
        v35 = v47;
        v34 = v48;
        if (!v18 || (v43 != v17 || v11 != v18) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = v49;
        v35 = v47;
        v34 = v48;
        if (v18)
        {
          return 0;
        }
      }

      if (v34)
      {
        v36 = v46;
        if (!v35 || (v42 != v45 || v34 != v35) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v36 = v46;
        if (v35)
        {
          return 0;
        }
      }

      if (v36)
      {
        if (!v33 || (v41 != v44 || v36 != v33) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v33)
      {
        return 0;
      }

      v4 += 12;
      v3 += 12;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1D9E4A370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v8 = i[1];
      v9 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v9) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_1D9F2BA1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9E4A49C(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1D9F2AC4C();
    v15 = *(v4 + 72);
    while (1)
    {
      sub_1D9E51E70(v13, v10, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51E70(v14, v8, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51C60(&qword_1ECB731C0, MEMORY[0x1E6968FB0]);
      if ((sub_1D9F2B10C() & 1) == 0)
      {
LABEL_17:
        sub_1D9E51FE8(v8, &qword_1ECB731B8, &unk_1D9F2F580);
        sub_1D9E51FE8(v10, &qword_1ECB731B8, &unk_1D9F2F580);
        return 0;
      }

      v16 = *(v25 + 28);
      v17 = &v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v8[v16];
      v20 = *(v19 + 1);
      v21 = v20 == 0;
      if (!v18)
      {
        goto LABEL_5;
      }

      if (!v20)
      {
        goto LABEL_17;
      }

      if (*v17 != *v19 || v18 != v20)
      {
        break;
      }

      sub_1D9E51FE8(v8, &qword_1ECB731B8, &unk_1D9F2F580);
      sub_1D9E51FE8(v10, &qword_1ECB731B8, &unk_1D9F2F580);
LABEL_6:
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    v21 = sub_1D9F2BA1C();
LABEL_5:
    sub_1D9E51FE8(v8, &qword_1ECB731B8, &unk_1D9F2F580);
    sub_1D9E51FE8(v10, &qword_1ECB731B8, &unk_1D9F2F580);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1D9E4A738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v39 = a2 + 32;
  v40 = a1 + 32;
  v14 = 0xEE00656C75646568;
  v15 = 0x637320746E657645;
  v36 = 0x80000001D9F47C20;
  v37 = 0x80000001D9F47C50;
  v34 = 0x80000001D9F47BC0;
  v35 = 0x80000001D9F47BF0;
  v33 = 0x80000001D9F47B90;
  v38 = v12;
  while (2)
  {
    if (v13 == v12)
    {
      goto LABEL_71;
    }

    v16 = v13 + 1;
    v17 = (v40 + 16 * v13);
    v18 = *(v17 + 1);
    v19 = *v17;
    v20 = v39 + 16 * v13;
    v21 = *(v20 + 8);
    v22 = 0xEE00656C75646568;
    v23 = 0x637320746E657645;
    switch(v19)
    {
      case 1:
        break;
      case 2:
        v23 = 0xD000000000000013;
        v22 = v34;
        break;
      case 3:
        v22 = 0xE900000000000074;
        v23 = 0x73696C206F646F54;
        break;
      case 4:
        v23 = 0x676E6970706F6853;
        v22 = 0xED00007473696C20;
        break;
      case 5:
        v23 = 0xD000000000000010;
        v22 = v35;
        break;
      case 6:
        v22 = 0xE400000000000000;
        v23 = 1970169165;
        break;
      case 7:
        v22 = 0xEA00000000007473;
        v23 = 0x696C20726568744FLL;
        break;
      case 8:
        v22 = 0xE400000000000000;
        v23 = 1768319319;
        break;
      case 9:
        v23 = 0xD000000000000013;
        v22 = v36;
        break;
      case 10:
        v23 = 0x6E2072656B636F4CLL;
        v22 = 0xED00007265626D75;
        break;
      case 11:
        v22 = 0xE700000000000000;
        v23 = 0x74706965636552;
        break;
      case 12:
        v23 = 0xD000000000000011;
        v22 = v37;
        break;
      case 13:
        v22 = 0xEA0000000000746ELL;
        v23 = 0x6F726665726F7453;
        break;
      case 14:
        v22 = 0xE700000000000000;
        v23 = 0x746375646F7250;
        break;
      case 15:
        v22 = 0xE500000000000000;
        v23 = 0x726568744FLL;
        break;
      default:
        v23 = 0xD000000000000011;
        v22 = v33;
        break;
    }

    switch(*v20)
    {
      case 1:
        goto LABEL_51;
      case 2:
        v14 = v34;
        if (v23 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 3:
        v14 = 0xE900000000000074;
        if (v23 != 0x73696C206F646F54)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 4:
        v14 = 0xED00007473696C20;
        if (v23 != 0x676E6970706F6853)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 5:
        v14 = v35;
        if (v23 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 6:
        v14 = 0xE400000000000000;
        if (v23 != 1970169165)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 7:
        v14 = 0xEA00000000007473;
        if (v23 != 0x696C20726568744FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 8:
        v14 = 0xE400000000000000;
        if (v23 != 1768319319)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 9:
        v14 = v36;
        if (v23 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xA:
        v15 = 0x6E2072656B636F4CLL;
        v14 = 0xED00007265626D75;
LABEL_51:
        if (v23 == v15)
        {
          goto LABEL_52;
        }

        goto LABEL_55;
      case 0xB:
        v14 = 0xE700000000000000;
        v24 = 0x706965636552;
        goto LABEL_28;
      case 0xC:
        v14 = v37;
        if (v23 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xD:
        v14 = 0xEA0000000000746ELL;
        if (v23 != 0x6F726665726F7453)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xE:
        v14 = 0xE700000000000000;
        v24 = 0x6375646F7250;
LABEL_28:
        if (v23 != (v24 & 0xFFFFFFFFFFFFLL | 0x74000000000000))
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 0xF:
        v14 = 0xE500000000000000;
        if (v23 != 0x726568744FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      default:
        v14 = v33;
        if (v23 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

LABEL_52:
        if (v22 == v14)
        {
        }

        else
        {
LABEL_55:
          v25 = sub_1D9F2BA1C();

          if ((v25 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v26 = *(v18 + 16);
        if (v26 != *(v21 + 16))
        {
LABEL_66:

          return 0;
        }

        v41 = v16;
        if (!v26 || v18 == v21)
        {
LABEL_5:

          result = 1;
          v12 = v38;
          v13 = v41;
          v14 = 0xEE00656C75646568;
          v15 = 0x637320746E657645;
          if (v41 == v38)
          {
            return result;
          }

          continue;
        }

        v27 = 0;
        v28 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v29 = v18 + v28;
        v30 = v21 + v28;
        while (v27 < *(v18 + 16))
        {
          v31 = *(v42 + 72) * v27;
          result = sub_1D9E51E08(v29 + v31, v11, type metadata accessor for DetectedEntity);
          if (v27 >= *(v21 + 16))
          {
            goto LABEL_70;
          }

          sub_1D9E51E08(v30 + v31, v8, type metadata accessor for DetectedEntity);
          v32 = static DetectedEntity.== infix(_:_:)(v11, v8);
          sub_1D9E51F3C(v8, type metadata accessor for DetectedEntity);
          result = sub_1D9E51F3C(v11, type metadata accessor for DetectedEntity);
          if ((v32 & 1) == 0)
          {
            goto LABEL_66;
          }

          if (v26 == ++v27)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_1D9E4AE4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E4AEA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E4AF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QueryResult.DisplayItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_14:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    sub_1D9E51F9C();
    v16 = *(v5 + 72);
    while (1)
    {
      sub_1D9E51E08(v14, v11, type metadata accessor for QueryResult.DisplayItem);
      sub_1D9E51E08(v15, v9, type metadata accessor for QueryResult.DisplayItem);
      v17 = *v11;
      v18 = *v9;
      if ((sub_1D9F2B56C() & 1) == 0 || (v11[1] != v9[1] || v11[2] != v9[2]) && (sub_1D9F2BA1C() & 1) == 0)
      {
        break;
      }

      v19 = _s29VisualActionPredictionSupport17ExecutionFollowupV2eeoiySbAC_ACtFZ_0(v11 + *(v4 + 24), v9 + *(v4 + 24));
      sub_1D9E51F3C(v9, type metadata accessor for QueryResult.DisplayItem);
      sub_1D9E51F3C(v11, type metadata accessor for QueryResult.DisplayItem);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_1D9E51F3C(v9, type metadata accessor for QueryResult.DisplayItem);
    sub_1D9E51F3C(v11, type metadata accessor for QueryResult.DisplayItem);
    goto LABEL_14;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1D9E4B17C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_1D9E51E08(v19, v16, a4);
        sub_1D9E51E08(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_1D9E51F3C(v13, a4);
        sub_1D9E51F3C(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1D9E4B318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 1);
      v9 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v6 != v8 || *&v7 != *&v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1D9F2BA1C();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v6 != v8 || *&v7 != *&v9)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D9E4B3EC(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = (a1 + 72);
      v4 = (a2 + 72);
      while (1)
      {
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(v3 - 5), *(v4 - 5)), vceqq_s64(*(v3 - 3), *(v4 - 3))))) & 1) == 0)
        {
          goto LABEL_129;
        }

        v5 = *(v3 - 1);
        v6 = *v3;
        v8 = *(v4 - 1);
        v7 = *v4;
        v9 = *v3 >> 62;
        v10 = *v4 >> 62;
        if (v9 == 3)
        {
          break;
        }

        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v17 = *(v5 + 16);
            v16 = *(v5 + 24);
            v14 = __OFSUB__(v16, v17);
            v11 = v16 - v17;
            if (v14)
            {
              goto LABEL_134;
            }

            goto LABEL_24;
          }

          v11 = 0;
          if (v10 <= 1)
          {
            goto LABEL_25;
          }
        }

        else if (v9)
        {
          LODWORD(v11) = HIDWORD(v5) - v5;
          if (__OFSUB__(HIDWORD(v5), v5))
          {
            goto LABEL_133;
          }

          v11 = v11;
          if (v10 <= 1)
          {
LABEL_25:
            if (v10)
            {
              LODWORD(v15) = HIDWORD(v8) - v8;
              if (__OFSUB__(HIDWORD(v8), v8))
              {
                goto LABEL_132;
              }

              v15 = v15;
            }

            else
            {
              v15 = BYTE6(v7);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v11 = BYTE6(v6);
          if (v10 <= 1)
          {
            goto LABEL_25;
          }
        }

LABEL_18:
        if (v10 != 2)
        {
          if (v11)
          {
            goto LABEL_129;
          }

          goto LABEL_6;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        v14 = __OFSUB__(v12, v13);
        v15 = v12 - v13;
        if (v14)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
        }

LABEL_29:
        if (v11 != v15)
        {
          goto LABEL_129;
        }

        if (v11 < 1)
        {
          goto LABEL_6;
        }

        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v24 = *(v5 + 16);
            v63 = *(v3 - 1);
            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v25 = sub_1D9F2AA7C();
            if (v25)
            {
              v26 = sub_1D9F2AA9C();
              if (__OFSUB__(v24, v26))
              {
                goto LABEL_136;
              }

              v25 += v24 - v26;
            }

            result = sub_1D9F2AA8C();
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                if (v8 >> 32 < v8)
                {
                  goto LABEL_140;
                }

                v27 = sub_1D9F2AA7C();
                if (v27)
                {
                  v28 = sub_1D9F2AA9C();
                  if (__OFSUB__(v8, v28))
                  {
                    goto LABEL_152;
                  }

                  v27 += v8 - v28;
                }

                v29 = sub_1D9F2AA8C();
                if (v29 >= (v8 >> 32) - v8)
                {
                  v30 = (v8 >> 32) - v8;
                }

                else
                {
                  v30 = v29;
                }

                result = v25;
                if (!v25)
                {
                  goto LABEL_164;
                }

                if (!v27)
                {
                  goto LABEL_163;
                }

                goto LABEL_123;
              }

              __s1[0] = v8;
              LOWORD(__s1[1]) = v7;
              BYTE2(__s1[1]) = BYTE2(v7);
              BYTE3(__s1[1]) = BYTE3(v7);
              BYTE4(__s1[1]) = BYTE4(v7);
              BYTE5(__s1[1]) = BYTE5(v7);
              if (!v25)
              {
                goto LABEL_160;
              }

LABEL_127:
              v56 = BYTE6(v7);
              v57 = __s1;
              result = v25;
LABEL_128:
              v58 = memcmp(result, v57, v56);
              sub_1D9E4015C(v8, v7);
              sub_1D9E4015C(v63, v6);
              if (v58)
              {
                goto LABEL_129;
              }

              goto LABEL_6;
            }

            v60 = v25;
            v47 = *(v8 + 16);
            v46 = *(v8 + 24);
            v27 = sub_1D9F2AA7C();
            if (v27)
            {
              v48 = sub_1D9F2AA9C();
              if (__OFSUB__(v47, v48))
              {
                goto LABEL_150;
              }

              v27 += v47 - v48;
            }

            v14 = __OFSUB__(v46, v47);
            v49 = v46 - v47;
            if (v14)
            {
              goto LABEL_145;
            }

            v50 = sub_1D9F2AA8C();
            if (v50 >= v49)
            {
              v30 = v49;
            }

            else
            {
              v30 = v50;
            }

            result = v60;
            if (!v60)
            {
              goto LABEL_166;
            }

            if (!v27)
            {
              goto LABEL_165;
            }

LABEL_123:
            if (result == v27)
            {
              sub_1D9E4015C(v8, v7);
              sub_1D9E4015C(v63, v6);
              goto LABEL_6;
            }

            v56 = v30;
            v57 = v27;
            goto LABEL_128;
          }

          memset(__s1, 0, 14);
          if (!v10)
          {
LABEL_85:
            __s2 = v8;
            v65 = v7;
            v66 = BYTE2(v7);
            v67 = BYTE3(v7);
            v68 = BYTE4(v7);
            v69 = BYTE5(v7);
            if (memcmp(__s1, &__s2, BYTE6(v7)))
            {
              goto LABEL_129;
            }

            goto LABEL_6;
          }

          v62 = v5;
          if (v10 == 2)
          {
            v36 = *(v8 + 16);
            v35 = *(v8 + 24);
            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v22 = sub_1D9F2AA7C();
            if (v22)
            {
              v37 = sub_1D9F2AA9C();
              if (__OFSUB__(v36, v37))
              {
                goto LABEL_148;
              }

              v22 += v36 - v37;
            }

            v14 = __OFSUB__(v35, v36);
            v18 = v35 - v36;
            if (v14)
            {
              goto LABEL_142;
            }

            result = sub_1D9F2AA8C();
            if (!v22)
            {
              __break(1u);
LABEL_154:
              sub_1D9F2AA8C();
LABEL_155:
              __break(1u);
LABEL_156:
              result = sub_1D9F2AA8C();
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
              return result;
            }
          }

          else
          {
            v18 = (v8 >> 32) - v8;
            if (v8 >> 32 < v8)
            {
              goto LABEL_138;
            }

            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v41 = sub_1D9F2AA7C();
            if (!v41)
            {
              goto LABEL_154;
            }

            v42 = v41;
            v43 = sub_1D9F2AA9C();
            if (__OFSUB__(v8, v43))
            {
              goto LABEL_144;
            }

            v22 = (v8 - v43 + v42);
            result = sub_1D9F2AA8C();
            if (!v22)
            {
              goto LABEL_155;
            }
          }
        }

        else
        {
          if (v9)
          {
            v31 = v5;
            if (v5 > v5 >> 32)
            {
              goto LABEL_135;
            }

            v63 = *(v3 - 1);
            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v25 = sub_1D9F2AA7C();
            if (v25)
            {
              v32 = sub_1D9F2AA9C();
              if (__OFSUB__(v31, v32))
              {
                goto LABEL_137;
              }

              v25 += v31 - v32;
            }

            result = sub_1D9F2AA8C();
            if (v10 == 2)
            {
              v61 = v25;
              v52 = *(v8 + 16);
              v51 = *(v8 + 24);
              v27 = sub_1D9F2AA7C();
              if (v27)
              {
                v53 = sub_1D9F2AA9C();
                if (__OFSUB__(v52, v53))
                {
                  goto LABEL_151;
                }

                v27 += v52 - v53;
              }

              v14 = __OFSUB__(v51, v52);
              v54 = v51 - v52;
              if (v14)
              {
                goto LABEL_147;
              }

              v55 = sub_1D9F2AA8C();
              if (v55 >= v54)
              {
                v30 = v54;
              }

              else
              {
                v30 = v55;
              }

              result = v61;
              if (!v61)
              {
                goto LABEL_162;
              }

              if (!v27)
              {
                goto LABEL_161;
              }
            }

            else
            {
              if (v10 != 1)
              {
                __s1[0] = v8;
                LOWORD(__s1[1]) = v7;
                BYTE2(__s1[1]) = BYTE2(v7);
                BYTE3(__s1[1]) = BYTE3(v7);
                BYTE4(__s1[1]) = BYTE4(v7);
                BYTE5(__s1[1]) = BYTE5(v7);
                if (!v25)
                {
                  goto LABEL_159;
                }

                goto LABEL_127;
              }

              if (v8 >> 32 < v8)
              {
                goto LABEL_146;
              }

              v27 = sub_1D9F2AA7C();
              if (v27)
              {
                v33 = sub_1D9F2AA9C();
                if (__OFSUB__(v8, v33))
                {
                  goto LABEL_153;
                }

                v27 += v8 - v33;
              }

              v34 = sub_1D9F2AA8C();
              if (v34 >= (v8 >> 32) - v8)
              {
                v30 = (v8 >> 32) - v8;
              }

              else
              {
                v30 = v34;
              }

              result = v25;
              if (!v25)
              {
                goto LABEL_168;
              }

              if (!v27)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_123;
          }

          __s1[0] = *(v3 - 1);
          LOWORD(__s1[1]) = v6;
          BYTE2(__s1[1]) = BYTE2(v6);
          BYTE3(__s1[1]) = BYTE3(v6);
          BYTE4(__s1[1]) = BYTE4(v6);
          BYTE5(__s1[1]) = BYTE5(v6);
          if (!v10)
          {
            goto LABEL_85;
          }

          v62 = v5;
          if (v10 == 1)
          {
            v18 = (v8 >> 32) - v8;
            if (v8 >> 32 < v8)
            {
              goto LABEL_139;
            }

            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v19 = sub_1D9F2AA7C();
            if (!v19)
            {
              goto LABEL_156;
            }

            v20 = v19;
            v21 = sub_1D9F2AA9C();
            if (__OFSUB__(v8, v21))
            {
              goto LABEL_143;
            }

            v22 = (v8 - v21 + v20);
            result = sub_1D9F2AA8C();
            if (!v22)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v39 = *(v8 + 16);
            v38 = *(v8 + 24);
            sub_1D9E400F4(v5, v6);
            sub_1D9E400F4(v8, v7);
            v22 = sub_1D9F2AA7C();
            if (v22)
            {
              v40 = sub_1D9F2AA9C();
              if (__OFSUB__(v39, v40))
              {
                goto LABEL_149;
              }

              v22 += v39 - v40;
            }

            v14 = __OFSUB__(v38, v39);
            v18 = v38 - v39;
            if (v14)
            {
              goto LABEL_141;
            }

            result = sub_1D9F2AA8C();
            if (!v22)
            {
              goto LABEL_158;
            }
          }
        }

        if (result >= v18)
        {
          v44 = v18;
        }

        else
        {
          v44 = result;
        }

        v45 = memcmp(__s1, v22, v44);
        sub_1D9E4015C(v8, v7);
        sub_1D9E4015C(v62, v6);
        if (v45)
        {
          goto LABEL_129;
        }

LABEL_6:
        v3 += 6;
        v4 += 6;
        if (!--v2)
        {
          goto LABEL_130;
        }
      }

      v11 = 0;
      if (!v5 && v6 == 0xC000000000000000 && *v4 >> 62 == 3)
      {
        v11 = 0;
        if (!v8 && v7 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_24:
      if (v10 <= 1)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_130:
    result = 1;
  }

  else
  {
LABEL_129:
    result = 0;
  }

  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9E4BC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v51 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v50 = 0;
    return v50 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v51 = *(v9 + 72);
  while (1)
  {
    result = sub_1D9E51E08(v14, v11, type metadata accessor for PredictedAction);
    if (!v12)
    {
      break;
    }

    v53 = v14;
    v54 = v12;
    v52 = v15;
    sub_1D9E51E08(v15, v8, type metadata accessor for PredictedAction);
    if ((sub_1D9F2AD3C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v17 = v4[5];
    v18 = *&v11[v17];
    v19 = *&v11[v17 + 8];
    v20 = &v8[v17];
    v21 = v18 == *v20 && v19 == *(v20 + 1);
    if (!v21 && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v22 = &v11[v4[6]];
    v23 = *(v22 + 1);
    v24 = *(v22 + 2);
    v25 = *(v22 + 3);
    v26 = *(v22 + 4);
    v27 = *(v22 + 5);
    v28 = v22[48];
    v62 = *v22;
    v63 = v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v67 = v27;
    v68 = v28;
    v29 = &v8[v4[6]];
    v31 = *(v29 + 1);
    v32 = *(v29 + 2);
    v33 = *(v29 + 3);
    v35 = *(v29 + 4);
    v34 = *(v29 + 5);
    v36 = v29[48];
    v55 = *v29;
    v30 = v55;
    v56 = v31;
    v57 = v32;
    v58 = v33;
    v59 = v35;
    v60 = v34;
    v61 = v36;
    sub_1D9E51CA8(v62, v23, v24, v25, v26, v27, v28);
    sub_1D9E51CA8(v30, v31, v32, v33, v35, v34, v36);
    LOBYTE(v34) = _s29VisualActionPredictionSupport09PredictedB0V6SourceO2eeoiySbAE_AEtFZ_0(&v62, &v55);
    sub_1D9E51D58(v55, v56, v57, v58, v59, v60, v61);
    sub_1D9E51D58(v62, v63, v64, v65, v66, v67, v68);
    if ((v34 & 1) == 0)
    {
      goto LABEL_27;
    }

    v37 = v4[7];
    v38 = *&v11[v37];
    v39 = *&v11[v37 + 8];
    v40 = &v8[v37];
    if ((v38 != *v40 || v39 != *(v40 + 1)) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_27;
    }

    v41 = v4[8];
    v42 = *&v11[v41];
    v43 = *&v11[v41 + 8];
    v44 = &v8[v41];
    if ((v42 != *v44 || v43 != *(v44 + 1)) && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v11[v4[9]] != v8[v4[9]] || (v45 = v4[10], v46 = &v11[v45], v47 = v11[v45], v48 = &v8[v45], v47 != *v48) || ((v46[1] ^ v48[1]) & 1) != 0)
    {
LABEL_27:
      sub_1D9E51F3C(v8, type metadata accessor for PredictedAction);
      sub_1D9E51F3C(v11, type metadata accessor for PredictedAction);
      v50 = 0;
      return v50 & 1;
    }

    v49 = v48[2] ^ v46[2];
    sub_1D9E51F3C(v8, type metadata accessor for PredictedAction);
    sub_1D9E51F3C(v11, type metadata accessor for PredictedAction);
    if ((v49 & 1) == 0)
    {
      v12 = v54 - 1;
      v15 = v52 + v51;
      v14 = v53 + v51;
      if (v54 != 1)
      {
        continue;
      }
    }

    v50 = v49 ^ 1;
    return v50 & 1;
  }

  __break(1u);
  return result;
}