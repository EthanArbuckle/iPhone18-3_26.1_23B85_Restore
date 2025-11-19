uint64_t sub_1E0FE08E0()
{
  v1 = sub_1E10ADCFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E0FE09C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E0FE0A80(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE0C58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE0E48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessTokenResource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE0EF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessTokenResource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE0F98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E0FE0FD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E0FE1008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E0FE107C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = *(a3 + 16);
    if (v10)
    {
      MEMORY[0x1EEE9AC00](a4, a5);
      v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = *(a3 + 24);
      *v12 = sub_1E10AE20C();
      v14 = v12 + 1;
      v15 = (*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
      do
      {
        v16 = *v15++;
        *v14++ = sub_1E10AE20C();
        --v10;
      }

      while (v10);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      v18 = *(a3 + 24);
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 60), a2);
  }
}

uint64_t sub_1E0FE11C4(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      MEMORY[0x1EEE9AC00](a5, a6);
      v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = *(a4 + 24);
      *v11 = sub_1E10AE20C();
      v13 = v11 + 1;
      v14 = (*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
      do
      {
        v15 = *v14++;
        *v13++ = sub_1E10AE20C();
        --v9;
      }

      while (v9);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      v17 = *(a4 + 24);
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v7 + *(a4 + 60), a2, a2);
  }

  return result;
}

uint64_t sub_1E0FE130C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE13B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE1490(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE1668(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE1854(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time();
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
      v13 = sub_1E10ADACC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E0FE1978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Time();
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
      v13 = sub_1E10ADACC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E0FE1A9C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = *(a3 + 16);
    if (v10)
    {
      v24[1] = v24;
      MEMORY[0x1EEE9AC00](a4, a5);
      v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = *(a3 + 24);
      v14 = *(a3 + 40);
      type metadata accessor for PartialEvent();
      v15 = 0;
      *v12 = sub_1E10AE20C();
      v16 = *(a3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(a3 + 48) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v18 = v15;
        v19 = *(v16 + 8 * v15);
        v20 = *(v17 + 8 * v15);
        type metadata accessor for PartialEvent();
        ++v15;
        v12[v18 + 1] = sub_1E10AE20C();
      }

      while (v10 != v15);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      v22 = *(a3 + 24);
      v23 = *(a3 + 40);
      type metadata accessor for PartialEvent();
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 60), a2);
  }
}

uint64_t sub_1E0FE1C34(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v23[1] = v23;
      MEMORY[0x1EEE9AC00](a5, a6);
      v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = *(a4 + 24);
      v13 = *(a4 + 40);
      type metadata accessor for PartialEvent();
      v14 = 0;
      *v11 = sub_1E10AE20C();
      v15 = *(a4 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(a4 + 48) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v17 = v14;
        v18 = *(v15 + 8 * v14);
        v19 = *(v16 + 8 * v14);
        type metadata accessor for PartialEvent();
        ++v14;
        v11[v17 + 1] = sub_1E10AE20C();
      }

      while (v9 != v14);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    else
    {
      v21 = *(a4 + 24);
      v22 = *(a4 + 40);
      type metadata accessor for PartialEvent();
      TupleTypeMetadata = sub_1E10AE20C();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v7 + *(a4 + 60), a2, a2);
  }

  return result;
}

uint64_t sub_1E0FE1DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 40);
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v5 = sub_1E10AE3AC();
  return (*(*(v5 - 8) + 48))(a1, a2, v5);
}

uint64_t sub_1E0FE1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = *(a4 + 40);
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v6 = sub_1E10AE3AC();
  return (*(*(v6 - 8) + 56))(a1, a2, a2, v6);
}

uint64_t sub_1E0FE1F38(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE20BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
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

uint64_t sub_1E0FE2304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
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

uint64_t sub_1E0FE23C0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 72);
  v39 = *(v0 + 32);
  v1 = v39;
  v36 = v2;
  v37 = v3;
  v40 = v2;
  v41 = v3;
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v38 = sub_1E10AE36C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v39 == 1)
  {
    v7 = *(v36.n128_u64[1] & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(v37.n128_u64[1] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for EventService.RequestType();
  }

  else
  {
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v37, v36);
    if (v1)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      v14 = (v11 & 0xFFFFFFFFFFFFFFFELL);
      v15 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = v1;
      do
      {
        v17 = *v13++;
        v18 = *v14++;
        *v15++ = type metadata accessor for EventService.RequestType();
        --v16;
      }

      while (v16);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v19 = (v5 + 88) & ~v5;
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = v5;
  v24 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(TupleTypeMetadata - 8);
  v26 = *(v25 + 80);
  v27 = (v24 + v26 + 17) & ~v26;
  v37.n128_u64[0] = *(v25 + 64);
  v36.n128_u64[0] = v23 | v26;
  v28 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v19, v38);
  v29 = *(v0 + v20);

  v30 = *(v0 + v21);

  v31 = *(v0 + v22);

  v32 = *(v0 + v22 + 8);

  v33 = *(v0 + v24 + 8);

  (*(v25 + 8))(v0 + v27, TupleTypeMetadata);
  return swift_deallocObject();
}

uint64_t sub_1E0FE267C()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E0FE26C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1E0FE27BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E0FE27F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E0FE2860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
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

uint64_t sub_1E0FE2920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
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

uint64_t sub_1E0FE2A20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE2ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE2B70(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for EventAttributes.Time(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1E0FE2D48(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for EventAttributes.Time(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A070, &qword_1E10B4E40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A078, &qword_1E10B4E48);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E0FE2F28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE2FD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE3078(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE31FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3380(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EventAttributes.Time(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE342C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EventAttributes.Time(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE34D8()
{
  if (*v0)
  {
    result = 0x4E79616C70736964;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1E0FE3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADCBC();
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

uint64_t sub_1E0FE35D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E10ADCBC();
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

uint64_t sub_1E0FE3694(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE3740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE37E4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE3968(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3B80(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE3D04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE3E98()
{
  v1 = sub_1E10ADBBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for PartialEventConfiguration(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 48) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4 + 8);

  v10 = *(v0 + v4 + 24);

  v11 = *(v0 + v4 + 40);

  v12 = *(v0 + v6 + 8);

  v13 = *(v0 + v6 + 24);

  v14 = *(v0 + v6 + 32);

  v15 = v0 + v6 + v5[7];
  v16 = *(v15 + 8);

  v17 = *(type metadata accessor for AccessTokenResource() + 20);
  v18 = sub_1E10ADCBC();
  (*(*(v18 - 8) + 8))(v15 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_1E0FE4070()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1E0FE40B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADCBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADCBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4208(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1E0FE438C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Time();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E0FE4510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE45BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Time();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1E0FE4660@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1E0FE4678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E0FE46CC(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate);
  *(*a2 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1E0FE4718()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E0FE4784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E10ADACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E10ADE6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E0FE4874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E10ADACC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E10ADE6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E0FE4970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1E10ADACC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E0FE49E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1E10ADACC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E0FE4A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E10ADBBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4B14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E10ADBBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Music();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E0FE4C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Music();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0FE4D40()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x5474736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_1E0FE4D88()
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

uint64_t sub_1E0FE4DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E10A21A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FE4DF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Time();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E0FE4EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Time();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E0FE4FBC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

id SHShazamEventsServiceInterface()
{
  if (SHShazamEventsServiceInterface_onceToken != -1)
  {
    SHShazamEventsServiceInterface_cold_1();
  }

  v1 = SHShazamEventsServiceInterface_interface;

  return v1;
}

void __SHShazamEventsServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BF85B0];
  v1 = SHShazamEventsServiceInterface_interface;
  SHShazamEventsServiceInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_eventWithIdentifier_requestTypes_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithParticipantIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithVenueIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_scheduleWithGroupIdentifier_requestTypes_startDate_completionHandler_ argumentIndex:1 ofReply:0];
  [SHShazamEventsServiceInterface_interface setClasses:v8 forSelector:sel_partialEventsWithGeoRequests_requestTypes_completionHandler_ argumentIndex:1 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [SHShazamEventsServiceInterface_interface setClasses:v7 forSelector:sel_partialEventsWithGeoRequests_requestTypes_completionHandler_ argumentIndex:0 ofReply:0];
}

id SHShazamEventsClientInterface()
{
  if (SHShazamEventsClientInterface_onceToken != -1)
  {
    SHShazamEventsClientInterface_cold_1();
  }

  v1 = SHShazamEventsClientInterface_interface;

  return v1;
}

uint64_t __SHShazamEventsClientInterface_block_invoke()
{
  SHShazamEventsClientInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BF82B0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1E0FE5278(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1E10ADCFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - v17;
  sub_1E10ADCEC();
  v19 = sub_1E10AE29C();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = *(v2 + 16);
  (*(v10 + 16))(v14, v18, v9);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v20;
  (*(v10 + 32))(&v22[v21], v14, v9);
  v23 = &v22[(v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v27;
  *(v23 + 1) = a2;

  v24 = sub_1E0FE579C(0, 0, v8, &unk_1E10AF9A8, v22);
  v28 = v18;
  v29 = v24;
  os_unfair_lock_lock((v20 + 24));
  sub_1E0FE60D0((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  return (*(v10 + 8))(v18, v9);
}

uint64_t sub_1E0FE54F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1E0FE55E4;

  return v10();
}

uint64_t sub_1E0FE55E4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E0FE56E0, 0, 0);
}

uint64_t sub_1E0FE56E0()
{
  v2 = v0[2];
  v1 = v0[3];
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1E0FE6524((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E0FE579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v28 - v12;
  sub_1E0FE62DC(a3, v28 - v12);
  v14 = sub_1E10AE29C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1E0FE634C(v13);
  }

  else
  {
    sub_1E10AE28C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1E10AE23C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1E10AE08C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1E0FE634C(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E0FE634C(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1E0FE5A5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_1E1079774(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_1E0FE5AD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));

    sub_1E10AE2BC();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      result = swift_bridgeObjectRelease_n();
      *a1 = MEMORY[0x1E69E7CC8];
      return result;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0FE5C10()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for VenueAttributes.Geo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VenueAttributes.Geo(uint64_t result, int a2, int a3)
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

uint64_t sub_1E0FE5CE4(uint64_t a1, int a2)
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

uint64_t sub_1E0FE5D04(uint64_t result, int a2, int a3)
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

void sub_1E0FE5D40(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1E0FE5D8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_1E1014068(a2);
  if (v5)
  {
    v6 = result;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E10160CC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1E10ADCFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
    v12 = *(*(v9 + 56) + 8 * v6);

    result = sub_1E10792A4(v6, v9);
    *a1 = v9;
  }

  return result;
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

uint64_t sub_1E0FE5EA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E10ADCFC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E0FE5FDC;

  return sub_1E0FE54F8(a1, v7, v8, v9, v1 + v6, v11);
}

uint64_t sub_1E0FE5FDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E0FE60EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE61E4;

  return v7(a1);
}

uint64_t sub_1E0FE61E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E0FE62DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FE634C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0FE63B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E0FE6540;

  return sub_1E0FE60EC(a1, v5);
}

uint64_t sub_1E0FE646C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E0FE5FDC;

  return sub_1E0FE60EC(a1, v5);
}

uint64_t Sport.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Sport.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Sport.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Sport()
{
  result = qword_1EE17E908;
  if (!qword_1EE17E908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Sport.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Sport() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Sport.details.getter()
{
  v1 = *(v0 + *(type metadata accessor for Sport() + 44));
}

uint64_t Sport.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Sport() + 52));
}

uint64_t Sport.league.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport() + 56);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 96) = v6;
  return sub_1E0FEDC50(v12, v11, &qword_1ECE88C88, &qword_1E10AF9D8);
}

uint64_t Sport.gameCard.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport() + 60);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
}

uint64_t Sport.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Sport() + 64);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
}

unint64_t sub_1E0FE69F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1701669236;
      break;
    case 4:
      result = 0x65756E6576;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 7:
      result = 0x736C6961746564;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7374656B636974;
      break;
    case 10:
      result = 0x65756761656CLL;
      break;
    case 11:
      result = 0x64726143656D6167;
      break;
    case 12:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0FE6B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FEE0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FE6B78(uint64_t a1)
{
  v2 = sub_1E0FED974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FE6BB4(uint64_t a1)
{
  v2 = sub_1E0FED974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C90, &qword_1E10AF9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v48 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FED974();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v83 = *v3;
  *(&v83 + 1) = v13;
  LOBYTE(v73) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v83 = *(v3 + 16);
    *(&v83 + 1) = v14;
    v84 = *(v3 + 32);
    LOBYTE(v73) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CA0, &qword_1E10AF9E8);
    sub_1E0FEDEAC(&qword_1ECE88CA8, &qword_1ECE88CA0, &qword_1E10AF9E8);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v83) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Sport();
    v18 = v17[7];
    v93 = 3;
    type metadata accessor for Time();
    sub_1E0FF04A0(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v89 = v19[6];
    v90 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v91 = v19[8];
    v92 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v85 = v19[2];
    v86 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v87 = v19[4];
    v88 = v27;
    v28 = v19[1];
    v83 = *v19;
    v84 = v28;
    v79 = v89;
    v80 = v22;
    v29 = v19[9];
    v81 = v91;
    v82 = v29;
    v75 = v85;
    v76 = v26;
    v77 = v87;
    v78 = v21;
    v73 = v83;
    v74 = v25;
    v72 = 4;
    sub_1E0FE6720(&v83, v71);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v71[6] = v79;
    v71[7] = v80;
    v71[8] = v81;
    v71[9] = v82;
    v71[2] = v75;
    v71[3] = v76;
    v71[4] = v77;
    v71[5] = v78;
    v71[0] = v73;
    v71[1] = v74;
    sub_1E0FEDAB8(v71);
    v30 = v17[9];
    LOBYTE(v63[0]) = 5;
    type metadata accessor for EventAttribution();
    sub_1E0FF04A0(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v63[0]) = 6;
    sub_1E10ADBBC();
    sub_1E0FF04A0(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE85C();
    *&v63[0] = *(v3 + v17[11]);
    LOBYTE(v56) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
    sub_1E0FEDE14(&qword_1ECE88CD0, &qword_1ECE88CD8);
    sub_1E10AE8AC();
    v32 = v17[12];
    LOBYTE(v63[0]) = 8;
    type metadata accessor for TicketAttribution();
    sub_1E0FF04A0(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v70 = *(v3 + v17[13]);
    v69 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E0FEDB0C(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
    v33 = (v3 + v17[14]);
    v34 = v33[3];
    v35 = v33[5];
    v66 = v33[4];
    v67 = v35;
    v36 = v33[1];
    v63[0] = *v33;
    v63[1] = v36;
    v37 = v33[3];
    v39 = *v33;
    v38 = v33[1];
    v64 = v33[2];
    v65 = v37;
    v40 = v33[5];
    v60 = v66;
    v61 = v40;
    v56 = v39;
    v57 = v38;
    v68 = *(v33 + 12);
    v62 = *(v33 + 12);
    v58 = v64;
    v59 = v34;
    v55 = 10;
    sub_1E0FEDC50(v63, v53, &qword_1ECE88C88, &qword_1E10AF9D8);
    sub_1E0FEDBA8();
    sub_1E10AE85C();
    v53[4] = v60;
    v53[5] = v61;
    v54 = v62;
    v53[0] = v56;
    v53[1] = v57;
    v53[2] = v58;
    v53[3] = v59;
    sub_1E0FF0440(v53, &qword_1ECE88C88, &qword_1E10AF9D8);
    v41 = (v3 + v17[15]);
    v42 = *(v41 + 2);
    v43 = *(v41 + 3);
    v50 = *v41;
    v51 = v42;
    v52 = v43;
    v49 = 11;
    sub_1E0FEDBFC();

    sub_1E10AE85C();

    v44 = (v3 + v17[16]);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v50 = *v44;
    v51 = v46;
    v52 = v45;
    v49 = 12;

    sub_1E10AE85C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Sport.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v88 = (&v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = &v85 - v12;
  v13 = sub_1E10ADBBC();
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v87 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v89 = &v85 - v22;
  v23 = type metadata accessor for EventAttribution();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v86 = (&v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v85 - v32;
  v34 = *v1;
  v35 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v36 = v1[2];
  v37 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v38 = v1[6];
  v39 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v40 = type metadata accessor for Sport();
  v41 = v1 + v40[7];
  sub_1E10ADACC();
  sub_1E0FF04A0(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v42 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E0FF04A0(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v43 = (v2 + v40[8]);
  v44 = v43[7];
  v103 = v43[6];
  v104 = v44;
  v45 = v43[9];
  v105 = v43[8];
  v106 = v45;
  v46 = v43[3];
  v99 = v43[2];
  v100 = v46;
  v47 = v43[5];
  v101 = v43[4];
  v102 = v47;
  v48 = v43[1];
  v97 = *v43;
  v98 = v48;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v40[9], v33, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v24 + 48))(v33, 1, v23) == 1)
  {
    sub_1E10AE9EC();
    v49 = v90;
  }

  else
  {
    v50 = v86;
    sub_1E0FEDD58(v33, v86, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v51 = *v50;
    v52 = v50[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v53 = *(v23 + 20);
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    v49 = v90;
    sub_1E10ADFFC();
    sub_1E0FF03E0(v50, type metadata accessor for EventAttribution);
  }

  v54 = v89;
  sub_1E0FEDC50(v2 + v40[10], v89, &qword_1ECE88C78, &qword_1E10B5E50);
  v55 = v91;
  if ((*(v91 + 48))(v54, 1, v49) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v56 = v87;
    (*(v55 + 32))(v87, v54, v49);
    sub_1E10AE9EC();
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    (*(v55 + 8))(v56, v49);
  }

  v57 = *(v2 + v40[11]);
  MEMORY[0x1E12EE160](*(v57 + 16));
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = (v57 + 32);
    do
    {
      v97 = *v59;
      v60 = v59[1];
      v61 = v59[2];
      v62 = v59[4];
      v100 = v59[3];
      v101 = v62;
      v98 = v60;
      v99 = v61;
      v63 = v59[5];
      v64 = v59[6];
      v65 = v59[8];
      v104 = v59[7];
      v105 = v65;
      v102 = v63;
      v103 = v64;
      sub_1E0FEDC50(&v97, v95, &qword_1ECE88CE0, &qword_1E10B6B50);
      sub_1E0FEA750();
      sub_1E0FF0440(&v97, &qword_1ECE88CE0, &qword_1E10B6B50);
      v59 += 9;
      --v58;
    }

    while (v58);
  }

  v66 = v92;
  sub_1E0FEDC50(v2 + v40[12], v92, &qword_1ECE88C80, &qword_1E10AF9D0);
  v67 = v94;
  if ((*(v93 + 48))(v66, 1, v94) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v68 = v88;
    sub_1E0FEDD58(v66, v88, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v69 = *v68;
    v70 = v68[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v71 = *(v67 + 20);
    sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E0FF03E0(v68, type metadata accessor for TicketAttribution);
  }

  sub_1E0FEBCA4(a1, *(v2 + v40[13]));
  v72 = v2 + v40[14];
  v73 = *(v72 + 5);
  v95[4] = *(v72 + 4);
  v95[5] = v73;
  v96 = *(v72 + 12);
  v74 = *(v72 + 1);
  v95[0] = *v72;
  v95[1] = v74;
  v75 = *(v72 + 3);
  v95[2] = *(v72 + 2);
  v95[3] = v75;
  sub_1E0FEC350();
  v76 = (v2 + v40[15]);
  if (v76[3])
  {
    v78 = v76[1];
    v77 = v76[2];
    v79 = *v76;
    sub_1E10AE9EC();
    MEMORY[0x1E12EE160](v79);
    MEMORY[0x1E12EE160](v78);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1E10AE9EC();
  }

  v80 = (v2 + v40[16]);
  if (!v80[3])
  {
    return sub_1E10AE9EC();
  }

  v82 = v80[1];
  v81 = v80[2];
  v83 = *v80;
  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v83);
  MEMORY[0x1E12EE160](v82);
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.hashValue.getter()
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Sport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v90 = v87 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v91 = v87 - v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = v87 - v14;
  v15 = type metadata accessor for Time();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D20, &qword_1E10AFA00);
  v93 = *(v21 - 8);
  v94 = v21;
  v22 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v87 - v25;
  v27 = type metadata accessor for Sport();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[3];
  v34 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E0FED974();
  v95 = v26;
  v35 = v96;
  sub_1E10AEA3C();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v119);
  }

  v87[1] = v15;
  v88 = v27;
  v36 = v20;
  v96 = v32;
  LOBYTE(v101) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v38 = *(&v109 + 1);
  v39 = v96;
  *v96 = v109;
  v39[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CA0, &qword_1E10AF9E8);
  LOBYTE(v101) = 1;
  sub_1E0FEDEAC(&qword_1ECE88D28, &qword_1ECE88CA0, &qword_1E10AF9E8);
  sub_1E10AE7FC();
  v40 = *(&v109 + 1);
  v39[2] = v109;
  v39[3] = v40;
  *(v39 + 2) = v110;
  LOBYTE(v109) = 2;
  v87[0] = 0;
  v39[6] = sub_1E10AE7BC();
  v39[7] = v41;
  LOBYTE(v109) = 3;
  sub_1E0FF04A0(&qword_1EE17EE88, type metadata accessor for Time);
  sub_1E10AE7FC();
  v42 = v88;
  sub_1E0FEDD58(v36, v39 + v88[7], type metadata accessor for Time);
  v108 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  v43 = (v39 + v42[8]);
  v44 = v116;
  v43[6] = v115;
  v43[7] = v44;
  v45 = v118;
  v43[8] = v117;
  v43[9] = v45;
  v46 = v112;
  v43[2] = v111;
  v43[3] = v46;
  v47 = v114;
  v43[4] = v113;
  v43[5] = v47;
  v48 = v110;
  *v43 = v109;
  v43[1] = v48;
  type metadata accessor for EventAttribution();
  LOBYTE(v101) = 5;
  sub_1E0FF04A0(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  v49 = v92;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v49, v39 + v42[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E10ADBBC();
  LOBYTE(v101) = 6;
  sub_1E0FF04A0(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  v50 = v91;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v50, v39 + v42[10], &qword_1ECE88C78, &qword_1E10B5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
  LOBYTE(v98) = 7;
  sub_1E0FEDE14(&qword_1ECE88D40, &qword_1ECE88D48);
  sub_1E10AE7FC();
  *(v39 + v42[11]) = v101;
  type metadata accessor for TicketAttribution();
  LOBYTE(v101) = 8;
  sub_1E0FF04A0(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v51 = v90;
  sub_1E10AE7AC();
  v92 = 0;
  sub_1E0FEDEF4(v51, v96 + v88[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  LOBYTE(v98) = 9;
  sub_1E0FEDB0C(&qword_1ECE88D58, &qword_1ECE88D60);
  v71 = v92;
  sub_1E10AE7FC();
  LODWORD(v91) = v71 == 0;
  v92 = v71;
  if (v71 || (*(v96 + v88[13]) = v101, v100 = 10, sub_1E0FEDF5C(), v72 = v92, sub_1E10AE7AC(), (v92 = v72) != 0))
  {
    (*(v93 + 8))(v95, v94);
    __swift_destroy_boxed_opaque_existential_1(v119);
    LODWORD(v119) = 0;
    v73 = 0;
  }

  else
  {
    v75 = v96 + v88[14];
    v76 = v106;
    *(v75 + 4) = v105;
    *(v75 + 5) = v76;
    *(v75 + 12) = v107;
    v77 = v102;
    *v75 = v101;
    *(v75 + 1) = v77;
    v78 = v104;
    *(v75 + 2) = v103;
    *(v75 + 3) = v78;
    v97 = 11;
    sub_1E0FEDFB0();
    v79 = v92;
    sub_1E10AE7AC();
    v92 = v79;
    if (v79)
    {
      (*(v93 + 8))(v95, v94);
      __swift_destroy_boxed_opaque_existential_1(v119);
      v73 = 0;
      LODWORD(v119) = 1;
    }

    else
    {
      v80 = (v96 + v88[15]);
      v81 = v99;
      *v80 = v98;
      v80[1] = v81;
      v97 = 12;
      v82 = v92;
      sub_1E10AE7AC();
      v92 = v82;
      if (!v82)
      {
        (*(v93 + 8))(v95, v94);
        v83 = v89;
        v84 = v96;
        v85 = (v96 + v88[16]);
        v86 = v99;
        *v85 = v98;
        v85[1] = v86;
        sub_1E0FF0378(v84, v83, type metadata accessor for Sport);
        __swift_destroy_boxed_opaque_existential_1(v119);
        return sub_1E0FF03E0(v84, type metadata accessor for Sport);
      }

      (*(v93 + 8))(v95, v94);
      __swift_destroy_boxed_opaque_existential_1(v119);
      LODWORD(v119) = 1;
      v73 = 1;
    }
  }

  v74 = v96[1];

  LODWORD(v95) = 1;
  v64 = v96;
  v65 = v96[3];

  v66 = v64[5];

  v52 = v96;
  v53 = v96[7];

  v67 = v88;
  sub_1E0FF03E0(v52 + v88[7], type metadata accessor for Time);
  v54 = (v52 + v67[8]);
  v55 = v54[7];
  v115 = v54[6];
  v116 = v55;
  v56 = v54[9];
  v117 = v54[8];
  v118 = v56;
  v57 = v54[3];
  v111 = v54[2];
  v112 = v57;
  v58 = v54[5];
  v113 = v54[4];
  v114 = v58;
  v59 = v54[1];
  v109 = *v54;
  v110 = v59;
  sub_1E0FEDAB8(&v109);
  sub_1E0FF0440(v52 + v67[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E0FF0440(v52 + v67[10], &qword_1ECE88C78, &qword_1E10B5E50);
  if (v95)
  {
    v68 = *(v52 + v67[11]);
  }

  result = sub_1E0FF0440(v52 + v67[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v91)
  {
    v69 = *(v52 + v67[13]);

    if (v119)
    {
LABEL_9:
      v60 = v52 + v67[14];
      v61 = *(v60 + 5);
      v113 = *(v60 + 4);
      v114 = v61;
      *&v115 = *(v60 + 12);
      v62 = *(v60 + 1);
      v109 = *v60;
      v110 = v62;
      v63 = *(v60 + 3);
      v111 = *(v60 + 2);
      v112 = v63;
      result = sub_1E0FF0440(&v109, &qword_1ECE88C88, &qword_1E10AF9D8);
      if (v73)
      {
        goto LABEL_13;
      }

      return result;
    }
  }

  else if (v119)
  {
    goto LABEL_9;
  }

  if (v73)
  {
LABEL_13:
    v70 = *(v52 + v67[15] + 24);
  }

  return result;
}

uint64_t sub_1E0FE8A20()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E0FE8A50()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t sub_1E0FE8A9C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E0FE8B04@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a2[6] = v25;
  a2[7] = v6;
  v17 = v3[9];
  a2[8] = v8;
  a2[9] = v17;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v5;
  *a2 = v16;
  a2[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t sub_1E0FE8B90()
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE8BD4()
{
  sub_1E10AE9CC();
  Sport.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE8C40@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Sport.Competitor.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Sport.Competitor.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Sport.Competitor.imageAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E0FE8DCC()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7373416567616D69;
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

uint64_t sub_1E0FE8E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FEE4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FE8E40(uint64_t a1)
{
  v2 = sub_1E0FEE004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FE8E7C(uint64_t a1)
{
  v2 = sub_1E0FEE004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.Competitor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D78, &qword_1E10AFA08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v19 = v1[3];
  v20 = v12;
  v13 = *(v1 + 3);
  v17 = *(v1 + 2);
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE004();

  sub_1E10AEA5C();
  *&v22 = v10;
  *(&v22 + 1) = v11;
  v24 = 0;
  sub_1E0FED9C8();
  v15 = v21;
  sub_1E10AE8AC();

  if (!v15)
  {
    LOBYTE(v22) = 1;
    sub_1E10AE86C();
    v22 = v17;
    v23 = v18;
    v24 = 2;
    sub_1E0FEDBFC();

    sub_1E10AE85C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Sport.Competitor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v8)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v6);
  MEMORY[0x1E12EE160](v5);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Competitor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v8)
  {
    MEMORY[0x1E12EE160](v6);
    MEMORY[0x1E12EE160](v5);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1E10AEA0C();
}

uint64_t Sport.Competitor.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88D88, &qword_1E10AFA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE004();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v30 = a2;
  v14 = v34;
  v13 = v35;
  LOBYTE(v34) = 1;
  v15 = sub_1E10AE7BC();
  v28 = v14;
  *(&v29 + 1) = v16;
  *&v29 = v15;
  v43 = 2;
  sub_1E0FEDFB0();
  sub_1E10AE7AC();
  (*(v6 + 8))(v11, v5);
  v27 = v41;
  v17 = v42;
  v26 = *(&v41 + 1);
  v18 = *(&v42 + 1);
  v19 = v28;
  *&v31[0] = v28;
  *(&v31[0] + 1) = v13;
  v20 = v29;
  v31[1] = v29;
  v32 = v41;
  v33 = v42;
  v21 = v29;
  v22 = v30;
  *v30 = v31[0];
  v22[1] = v21;
  v23 = v33;
  v22[2] = v32;
  v22[3] = v23;
  sub_1E0FEE058(v31, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34 = v19;
  v35 = v13;
  v36 = v20;
  v37 = v27;
  v38 = v26;
  v39 = v17;
  v40 = v18;
  return sub_1E0FEE090(&v34);
}

uint64_t sub_1E0FE9548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E0FE9578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E0FE9590()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v8)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v6);
  MEMORY[0x1E12EE160](v5);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E0FE964C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v8)
  {
    MEMORY[0x1E12EE160](v6);
    MEMORY[0x1E12EE160](v5);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.id.getter()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

CGColorRef Sport.Detail.prominentColor.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  if (*(v2 + 32))
  {
    return sub_1E1072EB8(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t Sport.Detail.score.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E0FE97FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697465706D6F63 && a2 == 0xEA0000000000726FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F487369 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E696D6F72705FLL && a2 == 0xEF726F6C6F43746ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E0FE99E4(unsigned __int8 a1)
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](a1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9A2C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x74736F487369;
  v3 = 0x65726F6373;
  if (a1 != 3)
  {
    v3 = 0x656E696D6F72705FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x74697465706D6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1E0FE9AC4(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E0FE99AC(*a1, *a2);
}

uint64_t sub_1E0FE9AD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E0FE99E4(*v1);
}

uint64_t sub_1E0FE9AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E0FE99BC(a1, *v2);
}

uint64_t sub_1E0FE9AF0(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E0FE99BC(v7, *v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9B38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E0FE9A2C(*v1);
}

uint64_t sub_1E0FE9B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E0FE97FC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E0FE9B74@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E0FF0168();
  *a2 = result;
  return result;
}

uint64_t sub_1E0FE9BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E0FE9BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Sport.Detail.Score.final.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E0FE9C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C616E6966 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E10AE8FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E0FE9CF4()
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](0);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9D38()
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](0);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E0FE9C78(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E0FE9DC0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E0FE9CEC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E0FE9DF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E0FE9E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Sport.League.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Sport.League.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Sport.League.logo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

CGColorRef Sport.League.color.getter()
{
  if (*(v0 + 96))
  {
    return sub_1E1072EB8(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0FE9F28()
{
  v1 = *v0;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9F70()
{
  v1 = *v0;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FE9FB4()
{
  v1 = 25705;
  v2 = 1869049708;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F635FLL;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_1E0FEA010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FF0170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FEA038(uint64_t a1)
{
  v2 = sub_1E0FEE6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FEA074(uint64_t a1)
{
  v2 = sub_1E0FEE6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sport.League.eventSchedule(service:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(v1 + 96);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = swift_task_alloc();
  *(v2 + 120) = v7;
  *v7 = v2;
  v7[1] = sub_1E0FEA168;

  return sub_1E106C264(v3);
}

uint64_t sub_1E0FEA168(uint64_t a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(v5 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E0FEA2A4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

BOOL static Sport.Detail.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Sport.Detail();
  v9 = v8[9];
  v10 = *(*(a4 + 24) + 8);
  if ((sub_1E10AE03C() & 1) == 0 || *(a1 + v8[10]) != *(a2 + v8[10]))
  {
    return 0;
  }

  v11 = v8[11];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (!v13)
  {
    if (!v15)
    {

      goto LABEL_21;
    }

    v18 = v14[1];
LABEL_18:

    return 0;
  }

  if (!v15)
  {
    goto LABEL_18;
  }

  if (*v12 != *v14 || v13 != v15)
  {
    v17 = v14[1];
    if ((sub_1E10AE8FC() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_21:
  v20 = v8[12];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 32);
  v23 = a2 + v20;
  v24 = *(v23 + 4);
  if (v22)
  {
    if (v24)
    {
      v25 = *v21 == *v23 && v21[1] == *(v23 + 1);
      v26 = v25 && v21[2] == *(v23 + 2);
      if (v26 && (*(v21 + 3) == *(v23 + 3) && v22 == v24 || (sub_1E10AE8FC() & 1) != 0))
      {
        return 1;
      }
    }

    return 0;
  }

  return !v24;
}

uint64_t Sport.Detail.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v26 = *(a2 + 16);
  v27 = a2;
  v28 = v5;
  type metadata accessor for Sport.Detail.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  v14 = v3[1];
  *&v30 = *v3;
  *(&v30 + 1) = v14;
  v33 = 0;
  sub_1E0FED9C8();
  v15 = v29;
  sub_1E10AE8AC();
  if (!v15)
  {
    v16 = v27;
    v17 = v27[9];
    LOBYTE(v30) = 1;
    v18 = *(v28 + 16);
    sub_1E10AE8AC();
    v19 = *(v3 + v16[10]);
    LOBYTE(v30) = 2;
    sub_1E10AE87C();
    v20 = (v3 + v16[11]);
    v21 = v20[1];
    *&v30 = *v20;
    *(&v30 + 1) = v21;
    v33 = 3;
    type metadata accessor for Sport.Detail.Score();

    swift_getWitnessTable();
    sub_1E10AE85C();

    v22 = v3 + v16[12];
    v23 = *(v22 + 4);
    v24 = *(v22 + 1);
    v30 = *v22;
    v31 = v24;
    v32 = v23;
    v33 = 4;
    sub_1E0FEE620();
    sub_1E10AE85C();
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1E0FEA750()
{
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v10)
  {
    MEMORY[0x1E12EE160](v8);
    MEMORY[0x1E12EE160](v7);
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  v11 = *(v0 + 80);
  sub_1E10AE9EC();
  if (!v0[12])
  {
    sub_1E10AE9EC();
    if (v0[17])
    {
      goto LABEL_5;
    }

    return sub_1E10AE9EC();
  }

  v12 = v0[11];
  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v0[17])
  {
    return sub_1E10AE9EC();
  }

LABEL_5:
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  sub_1E10AE9EC();
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1E12EE180](v17);
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1E12EE180](v18);
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E12EE180](v19);

  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Detail.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v7 = *(a2 + 16);
  v8 = *(*(a2 + 24) + 24);
  v9 = v2 + *(a2 + 36);
  sub_1E10ADFFC();
  v10 = *(v3 + *(a2 + 40));
  sub_1E10AE9EC();
  v11 = (v3 + *(a2 + 44));
  v21 = *v11;
  v22 = v11[1];
  type metadata accessor for Sport.Detail.Score();
  sub_1E10AE4EC();

  swift_getWitnessTable();
  sub_1E10AE4FC();

  v12 = (v3 + *(a2 + 48));
  if (!v12[4])
  {
    return sub_1E10AE9EC();
  }

  v14 = v12[2];
  v13 = v12[3];
  v16 = *v12;
  v15 = v12[1];
  sub_1E10AE9EC();
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1E12EE180](v17);
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1E12EE180](v18);
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E12EE180](v19);
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Detail.hashValue.getter(uint64_t a1)
{
  sub_1E10AE9CC();
  Sport.Detail.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>)
{
  v39 = a4;
  v41 = *(a2 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](a5, a6);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Sport.Detail.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1E10AE81C();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  v40 = a3;
  v17 = type metadata accessor for Sport.Detail();
  v38 = *(v17 - 1);
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v37 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v16;
  v24 = v46;
  sub_1E10AEA3C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v42;
  v26 = v22;
  v50 = 0;
  sub_1E0FEDD04();
  v27 = v44;
  sub_1E10AE7FC();
  v28 = *(&v47 + 1);
  *v26 = v47;
  *(v26 + 1) = v28;
  v46 = v28;
  LOBYTE(v47) = 1;
  v29 = *(v40 + 8);
  sub_1E10AE7FC();
  (*(v41 + 32))(&v26[v17[9]], v25, a2);
  LOBYTE(v47) = 2;
  v42 = 0;
  v30 = a1;
  v26[v17[10]] = sub_1E10AE7CC() & 1;
  type metadata accessor for Sport.Detail.Score();
  v50 = 3;
  swift_getWitnessTable();
  sub_1E10AE7AC();
  v31 = v43;
  *&v26[v17[11]] = v47;
  v50 = 4;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v32 = &v26[v17[12]];
  (*(v31 + 8))(v45, v27);
  v33 = v49;
  v34 = v48;
  *v32 = v47;
  *(v32 + 1) = v34;
  *(v32 + 4) = v33;
  v35 = v38;
  (*(v38 + 16))(v39, v26, v17);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v35 + 8))(v26, v17);
}

uint64_t sub_1E0FEAFB4(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  Sport.Detail.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEB030@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E0FEE5D0();
  a1[1] = v2;
}

uint64_t static Sport.Detail.Score.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t Sport.Detail.Score.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for Sport.Detail.Score.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  v13 = v2[1];
  v16[1] = *v2;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  sub_1E10AE86C();
  return (*(v7 + 8))(v12, v6);
}

uint64_t Sport.Detail.Score.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.Detail.Score.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Sport.Detail.Score.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for Sport.Detail.Score.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E10AE81C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA3C();
  if (!v2)
  {
    v12 = v18;
    v13 = sub_1E10AE7BC();
    v15 = v14;
    (*(v5 + 8))(v10, v4);
    *v12 = v13;
    v12[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E0FEB414()
{
  sub_1E10AE9CC();
  Sport.Detail.Score.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEB450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return Sport.Detail.Score.init(from:)(a1, a3);
}

uint64_t Sport.League.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88DA0, &qword_1E10AFA20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v24 = v1[3];
  v25 = v12;
  v13 = *(v1 + 3);
  v21 = *(v1 + 2);
  v22 = v13;
  v14 = *(v1 + 4);
  v19 = *(v1 + 5);
  v20 = v14;
  v23 = v1[12];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE6E0();

  sub_1E10AEA5C();
  *&v27 = v10;
  *(&v27 + 1) = v11;
  v30 = 0;
  sub_1E0FED9C8();
  v16 = v26;
  sub_1E10AE8AC();

  if (!v16)
  {
    v17 = v23;
    LOBYTE(v27) = 1;
    sub_1E10AE86C();
    v28 = v22;
    v27 = v21;
    v30 = 2;
    sub_1E0FEDBFC();

    sub_1E10AE85C();

    v28 = v19;
    v27 = v20;
    v29 = v17;
    v30 = 3;
    sub_1E0FEE620();
    sub_1E10AE85C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Sport.League.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v16 = v0[10];
  v17 = v0[11];
  v11 = v0[12];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v8)
  {
    sub_1E10AE9EC();
    if (v11)
    {
      goto LABEL_3;
    }

    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v6);
  MEMORY[0x1E12EE160](v5);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v11)
  {
    return sub_1E10AE9EC();
  }

LABEL_3:
  sub_1E10AE9EC();
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E12EE180](v12);
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E12EE180](v13);
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E12EE180](v14);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Sport.League.hashValue.getter()
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t Sport.League.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88DB0, &qword_1E10AFA28);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FEE6E0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  LOBYTE(v39) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v13 = v46;
  v37 = v47;
  LOBYTE(v46) = 1;
  v14 = sub_1E10AE7BC();
  v36 = v15;
  v34 = v14;
  v35 = v13;
  LOBYTE(v39) = 2;
  sub_1E0FEDFB0();
  sub_1E10AE7AC();
  v33 = v47;
  v16 = v49;
  v31 = v46;
  v32 = v48;
  v62 = 3;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v38);
  v29 = v60;
  v30 = *(&v59 + 1);
  v27 = v16;
  v28 = *(&v60 + 1);
  v17 = v61;
  v18 = v16;
  v20 = v34;
  v19 = v35;
  v38 = v59;
  *&v39 = v35;
  v21 = v36;
  *(&v39 + 1) = v37;
  *&v40 = v34;
  v22 = v31;
  *(&v40 + 1) = v36;
  *&v41 = v31;
  *(&v41 + 1) = v33;
  *&v42 = v32;
  *(&v42 + 1) = v18;
  v43 = v59;
  v44 = v60;
  v45 = v61;
  *(a2 + 96) = v61;
  v23 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v23;
  v24 = v40;
  *a2 = v39;
  *(a2 + 16) = v24;
  v25 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v25;
  sub_1E0FEE734(&v39, &v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46 = v19;
  v47 = v37;
  v48 = v20;
  v49 = v21;
  v50 = v22;
  v51 = v33;
  v52 = v32;
  v53 = v27;
  v54 = v38;
  v55 = v30;
  v56 = v29;
  v57 = v28;
  v58 = v17;
  return sub_1E0FEE76C(&v46);
}

uint64_t sub_1E0FEBBF0()
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEBC34()
{
  sub_1E10AE9CC();
  Sport.League.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FEBCA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Ticket();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v10);
  if (v10)
  {
    v12 = *(v3 + 24);
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1E0FF0378(v13, v9, type metadata accessor for Ticket);
      v15 = *v9;
      v16 = v9[1];
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      v17 = v9[2];
      v18 = v9[3];
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      sub_1E10ADBBC();
      sub_1E0FF04A0(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
      sub_1E10ADFFC();
      result = sub_1E0FF03E0(v9, type metadata accessor for Ticket);
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1E0FEBE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 16);
      v17[0] = *v5;
      v17[1] = v6;
      v7 = *(v5 + 80);
      v20 = *(v5 + 64);
      v21 = v7;
      v22 = *(v5 + 96);
      v8 = *(v5 + 48);
      v18 = *(v5 + 32);
      v19 = v8;
      sub_1E0FF02C8(v17, v16);
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      if (*(&v19 + 1))
      {
        v9 = v18;
        v10 = v20;
        v15 = v21;
        v11 = v22;
        sub_1E10AE9EC();
        MEMORY[0x1E12EE160](v9);
        MEMORY[0x1E12EE160](*(&v9 + 1));

        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        if (v11)
        {
          sub_1E10AE9EC();
          if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = v10;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x1E12EE180](v12);
          if ((*(&v10 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v13 = *(&v10 + 1);
          }

          else
          {
            v13 = 0;
          }

          MEMORY[0x1E12EE180](v13);
          if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v14 = v15;
          }

          else
          {
            v14 = 0;
          }

          MEMORY[0x1E12EE180](v14);
          _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
        }

        else
        {
          sub_1E10AE9EC();
        }

        sub_1E0FF0324(v17);
        result = sub_1E0FF0440(&v18, &qword_1ECE88F38, &qword_1E10B05F8);
      }

      else
      {
        sub_1E10AE9EC();
        result = sub_1E0FF0324(v17);
      }

      v5 += 104;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEBFF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = (a2 + 104);
    do
    {
      v7 = *(v5 - 9);
      v6 = *(v5 - 8);
      v9 = *(v5 - 7);
      v8 = *(v5 - 6);
      v10 = *(v5 - 5);
      v11 = *(v5 - 2);
      v13 = *(v5 - 4);
      v14 = *(v5 - 3);
      v12 = *v5;
      v15 = *(v5 - 1);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      MEMORY[0x1E12EE160](v10);
      MEMORY[0x1E12EE160](v13);
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC108(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      MEMORY[0x1E12EE160](*(v5 - 5));
      MEMORY[0x1E12EE160](v6);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC1BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      MEMORY[0x1E12EE160](*(v5 - 3));
      MEMORY[0x1E12EE160](v6);

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC244(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12EE160](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v8 = v5[1];
      v11 = v5[2];
      v10 = v5[3];
      v12 = v5[5];
      v13 = v5[4];

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      sub_1E10AE9EC();
      if (v12)
      {
        MEMORY[0x1E12EE160](v11);
        MEMORY[0x1E12EE160](v10);
        _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E0FEC350()
{
  if (!v0[1])
  {
    return sub_1E10AE9EC();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[7];
  v4 = v0[8];
  v13 = v0[6];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[11];
  v5 = v0[12];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *v0;
  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v3)
  {
    sub_1E10AE9EC();
    if (v5)
    {
      goto LABEL_4;
    }

    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  MEMORY[0x1E12EE160](v2);
  MEMORY[0x1E12EE160](v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v5)
  {
    return sub_1E10AE9EC();
  }

LABEL_4:
  sub_1E10AE9EC();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E12EE180](v9);
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E12EE180](v10);
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E12EE180](v11);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s12ShazamEvents5SportV10CompetitorV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v5 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {
      if (v4 == v9 && v14 == v8)
      {
        if (v13 == v11 && v5 == v10 || (sub_1E10AE8FC() & 1) != 0)
        {
          return 1;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
      }

      return 0;
    }

    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:

    return 0;
  }

  return 1;
}

uint64_t _s12ShazamEvents5SportV6LeagueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v21 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 80);
  v23 = *(a1 + 96);
  v24 = *(a1 + 40);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a1 + 88);
  v22 = *(a2 + 96);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E10AE8FC() & 1) == 0 || (v2 != v9 || v4 != v10) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v14)
    {
      if (v3 != v12 || v24 != v11)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        return 0;
      }

      if ((v21 != v13 || v5 != v14) && (sub_1E10AE8FC() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_16:

    return 0;
  }

  if (v14)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v23)
  {
    if (v22 && v7 == v16 && v6 == v15 && v8 == v17 && (v20 == v19 && v23 == v22 || (sub_1E10AE8FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12ShazamEvents5SportV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v167 = *(v4 - 8);
  v5 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v164 = (&v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v165 = (&v161 - v12);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v161 - v16;
  v18 = sub_1E10ADBBC();
  v172 = *(v18 - 8);
  v173 = v18;
  v19 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v168 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v169 = &v161 - v26;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F48, &qword_1E10B0608);
  v27 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v171 = &v161 - v30;
  v31 = type metadata accessor for EventAttribution();
  v174 = *(v31 - 8);
  v32 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = (&v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = (&v161 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v161 - v46);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v161 = v17;
  v162 = v4;
  v163 = type metadata accessor for Sport();
  v48 = v163[7];
  v49 = a1 + v48;
  v50 = a2 + v48;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    return 0;
  }

  v51 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v49[*(v51 + 20)], &v50[*(v51 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v52 = v163;
  v53 = (a1 + v163[8]);
  v54 = v53[5];
  v55 = v53[7];
  v230 = v53[6];
  v231 = v55;
  v56 = v53[9];
  v57 = v53[7];
  v232 = v53[8];
  v233 = v56;
  v58 = v53[3];
  v59 = v53[1];
  v226 = v53[2];
  v227 = v58;
  v60 = v53[5];
  v61 = v53[3];
  v228 = v53[4];
  v229 = v60;
  v62 = v53[1];
  v225[0] = *v53;
  v225[1] = v62;
  v197 = v228;
  v198 = v54;
  v195 = v226;
  v196 = v61;
  v63 = v53[9];
  *&v200[2] = v232;
  *&v200[4] = v63;
  v199 = v230;
  *v200 = v57;
  v193 = v225[0];
  v194 = v59;
  v64 = (a2 + v163[8]);
  v65 = v64[7];
  v66 = v64[5];
  v239 = v64[6];
  v240 = v65;
  v67 = v64[7];
  v68 = v64[9];
  v241 = v64[8];
  v242 = v68;
  v69 = v64[3];
  v70 = v64[1];
  v235 = v64[2];
  v236 = v69;
  v71 = v64[3];
  v72 = v64[5];
  v237 = v64[4];
  v238 = v72;
  v73 = v64[1];
  v234[0] = *v64;
  v234[1] = v73;
  v221 = v239;
  v222 = v67;
  v74 = v64[9];
  v223 = v241;
  v224 = v74;
  v217 = v235;
  v218 = v71;
  v219 = v237;
  v220 = v66;
  v215 = v234[0];
  v216 = v70;
  sub_1E0FE6720(v225, v213);
  sub_1E0FE6720(v234, v213);
  v75 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v193, &v215);
  v243[6] = v221;
  v243[7] = v222;
  v243[8] = v223;
  v243[9] = v224;
  v243[2] = v217;
  v243[3] = v218;
  v243[4] = v219;
  v243[5] = v220;
  v243[0] = v215;
  v243[1] = v216;
  sub_1E0FEDAB8(v243);
  v244[6] = v199;
  v244[7] = *v200;
  v244[8] = *&v200[2];
  v244[9] = *&v200[4];
  v244[2] = v195;
  v244[3] = v196;
  v244[4] = v197;
  v244[5] = v198;
  v244[0] = v193;
  v244[1] = v194;
  sub_1E0FEDAB8(v244);
  if (!v75)
  {
    return 0;
  }

  v76 = v52[9];
  v77 = *(v42 + 48);
  sub_1E0FEDC50(a1 + v76, v47, &qword_1ECE88C70, &qword_1E10AF9C8);
  v78 = a2 + v76;
  v79 = v77;
  sub_1E0FEDC50(v78, v47 + v77, &qword_1ECE88C70, &qword_1E10AF9C8);
  v80 = *(v174 + 48);
  if (v80(v47, 1, v31) == 1)
  {
    if (v80(v47 + v79, 1, v31) == 1)
    {
      sub_1E0FF0440(v47, &qword_1ECE88C70, &qword_1E10AF9C8);
      goto LABEL_24;
    }

LABEL_18:
    v81 = &qword_1ECE88F50;
    v82 = &qword_1E10B0610;
    goto LABEL_19;
  }

  sub_1E0FEDC50(v47, v41, &qword_1ECE88C70, &qword_1E10AF9C8);
  if (v80(v47 + v79, 1, v31) == 1)
  {
    sub_1E0FF03E0(v41, type metadata accessor for EventAttribution);
    goto LABEL_18;
  }

  sub_1E0FEDD58(v47 + v79, v36, type metadata accessor for EventAttribution);
  if ((*v41 != *v36 || v41[1] != v36[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E0FF03E0(v36, type metadata accessor for EventAttribution);
    sub_1E0FF03E0(v41, type metadata accessor for EventAttribution);
    v81 = &qword_1ECE88C70;
    v82 = &qword_1E10AF9C8;
    goto LABEL_19;
  }

  v84 = *(v31 + 20);
  v85 = sub_1E10ADB8C();
  sub_1E0FF03E0(v36, type metadata accessor for EventAttribution);
  sub_1E0FF03E0(v41, type metadata accessor for EventAttribution);
  sub_1E0FF0440(v47, &qword_1ECE88C70, &qword_1E10AF9C8);
  if (v85)
  {
LABEL_24:
    v86 = v163;
    v87 = v163[10];
    v88 = v171;
    v89 = *(v170 + 48);
    sub_1E0FEDC50(a1 + v87, v171, &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E0FEDC50(a2 + v87, v88 + v89, &qword_1ECE88C78, &qword_1E10B5E50);
    v91 = v172;
    v90 = v173;
    v92 = *(v172 + 48);
    if (v92(v88, 1, v173) == 1)
    {
      if (v92(v88 + v89, 1, v90) == 1)
      {
        sub_1E0FF0440(v88, &qword_1ECE88C78, &qword_1E10B5E50);
LABEL_34:
        if (!sub_1E0FFE2DC(*(a1 + v86[11]), *(a2 + v86[11])))
        {
          return 0;
        }

        v99 = v86[12];
        v100 = *(v166 + 48);
        v47 = v161;
        sub_1E0FEDC50(a1 + v99, v161, &qword_1ECE88C80, &qword_1E10AF9D0);
        sub_1E0FEDC50(a2 + v99, v47 + v100, &qword_1ECE88C80, &qword_1E10AF9D0);
        v101 = *(v167 + 48);
        v102 = v162;
        if (v101(v47, 1, v162) == 1)
        {
          if (v101(v47 + v100, 1, v102) == 1)
          {
            sub_1E0FF0440(v47, &qword_1ECE88C80, &qword_1E10AF9D0);
            goto LABEL_46;
          }
        }

        else
        {
          v103 = v165;
          sub_1E0FEDC50(v47, v165, &qword_1ECE88C80, &qword_1E10AF9D0);
          if (v101(v47 + v100, 1, v102) != 1)
          {
            v104 = v47 + v100;
            v105 = v164;
            sub_1E0FEDD58(v104, v164, type metadata accessor for TicketAttribution);
            if (*v103 == *v105 && v103[1] == v105[1] || (sub_1E10AE8FC() & 1) != 0)
            {
              v106 = *(v162 + 20);
              v107 = sub_1E10ADB8C();
              sub_1E0FF03E0(v105, type metadata accessor for TicketAttribution);
              sub_1E0FF03E0(v103, type metadata accessor for TicketAttribution);
              sub_1E0FF0440(v47, &qword_1ECE88C80, &qword_1E10AF9D0);
              if ((v107 & 1) == 0)
              {
                return 0;
              }

LABEL_46:
              if ((sub_1E0FFE0A4(*(a1 + v86[13]), *(a2 + v86[13])) & 1) == 0)
              {
                return 0;
              }

              v108 = a1 + v86[14];
              v109 = *(v108 + 3);
              v110 = *(v108 + 4);
              v111 = v110;
              v213[5] = *(v108 + 5);
              v214 = *(v108 + 12);
              v112 = *(v108 + 1);
              v213[0] = *v108;
              v213[1] = v112;
              v114 = *(v108 + 1);
              v113 = *(v108 + 2);
              v115 = v113;
              v213[3] = *(v108 + 3);
              v213[4] = v110;
              v213[2] = v113;
              v116 = a2 + v86[14];
              v118 = *(v116 + 3);
              v117 = *(v116 + 4);
              v119 = v117;
              v220 = *(v116 + 5);
              v219 = v117;
              v121 = *(v116 + 1);
              v120 = *(v116 + 2);
              v122 = v120;
              v218 = *(v116 + 3);
              v217 = v120;
              v123 = *v116;
              v216 = *(v116 + 1);
              v215 = v123;
              v209 = v109;
              v210 = v111;
              v211 = *(v108 + 5);
              v207 = v114;
              v208 = v115;
              *&v221 = *(v116 + 12);
              v124 = v213[0];
              v212 = *(v108 + 12);
              v125 = *(&v123 + 1);
              v126 = v123;
              v201 = v121;
              v202 = v122;
              v127 = *(v116 + 5);
              v206 = *(v116 + 12);
              v204 = v119;
              v205 = v127;
              v203 = v118;
              if (*(&v213[0] + 1))
              {
                v193 = v213[0];
                v128 = *(v108 + 4);
                v196 = *(v108 + 3);
                v197 = v128;
                v198 = *(v108 + 5);
                *&v199 = *(v108 + 12);
                v129 = *(v108 + 2);
                v194 = *(v108 + 1);
                v195 = v129;
                v186 = v213[0];
                v187 = v194;
                v192 = v199;
                v190 = v128;
                v191 = v198;
                v188 = v129;
                v189 = v196;
                if (v125)
                {
                  v130 = *(v116 + 4);
                  v182 = *(v116 + 3);
                  v183 = v130;
                  v184 = *(v116 + 5);
                  v185 = *(v116 + 12);
                  v131 = *(v116 + 2);
                  v180 = *(v116 + 1);
                  v181 = v131;
                  v179 = __PAIR128__(v125, v126);
                  sub_1E0FEDC50(v213, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                  sub_1E0FEDC50(&v215, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                  sub_1E0FEDC50(&v193, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                  v132 = _s12ShazamEvents5SportV6LeagueV2eeoiySbAE_AEtFZ_0(&v186, &v179);
                  v175[4] = v183;
                  v175[5] = v184;
                  v176 = v185;
                  v175[0] = v179;
                  v175[1] = v180;
                  v175[2] = v181;
                  v175[3] = v182;
                  sub_1E0FEE76C(v175);
                  v177[4] = v190;
                  v177[5] = v191;
                  v178 = v192;
                  v177[0] = v186;
                  v177[1] = v187;
                  v177[2] = v188;
                  v177[3] = v189;
                  sub_1E0FEE76C(v177);
                  v179 = v124;
                  v182 = v209;
                  v183 = v210;
                  v184 = v211;
                  v185 = v212;
                  v180 = v207;
                  v181 = v208;
                  sub_1E0FF0440(&v179, &qword_1ECE88C88, &qword_1E10AF9D8);
                  if ((v132 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_57:
                  v135 = v163[15];
                  v137 = *(a1 + v135);
                  v136 = *(a1 + v135 + 8);
                  v138 = *(a1 + v135 + 24);
                  v174 = *(a1 + v135 + 16);
                  v139 = (a2 + v135);
                  v140 = *v139;
                  v141 = v139[1];
                  v142 = v139[2];
                  v143 = v139[3];
                  if (v138)
                  {
                    if (v143)
                    {
                      if (v137 != v140 || v136 != v141)
                      {
LABEL_76:
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRelease_n();
                        return 0;
                      }

                      if ((v174 != v142 || v138 != v143) && (sub_1E10AE8FC() & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_68;
                    }
                  }

                  else
                  {
                    v144 = v139[3];
                    if (!v143)
                    {

LABEL_68:
                      v145 = v163[16];
                      v146 = a1 + v145;
                      v148 = *(a1 + v145);
                      v147 = *(a1 + v145 + 8);
                      v150 = *(a1 + v145 + 16);
                      v149 = *(v146 + 3);
                      v151 = (a2 + v145);
                      v153 = *v151;
                      v152 = v151[1];
                      v154 = v151[2];
                      v155 = v151[3];
                      if (v149)
                      {
                        v156 = *(v146 + 3);
                        if (v155)
                        {
                          if (v148 == v153 && v147 == v152)
                          {
                            if (v150 != v154 || v149 != v155)
                            {
                              v157 = *(v146 + 3);
                              v158 = v151[2];
                              v159 = v151[3];
                              if ((sub_1E10AE8FC() & 1) == 0)
                              {
                                return 0;
                              }
                            }

                            return 1;
                          }

                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v160 = v151[3];
                        if (!v155)
                        {

                          return 1;
                        }
                      }

                      *&v193 = v148;
                      *(&v193 + 1) = v147;
                      *&v194 = v150;
                      *(&v194 + 1) = v149;
                      *&v195 = v153;
                      *(&v195 + 1) = v152;
                      *&v196 = v154;
                      *(&v196 + 1) = v155;
                      goto LABEL_79;
                    }
                  }

                  *&v193 = v137;
                  *(&v193 + 1) = v136;
                  *&v194 = v174;
                  *(&v194 + 1) = v138;
                  *&v195 = v140;
                  *(&v195 + 1) = v141;
                  *&v196 = v142;
                  *(&v196 + 1) = v143;
LABEL_79:
                  v81 = &unk_1ECE88F60;
                  v82 = &unk_1E10B0620;
                  goto LABEL_80;
                }

                v183 = v197;
                v184 = v198;
                v185 = v199;
                v179 = v193;
                v180 = v194;
                v181 = v195;
                v182 = v196;
                sub_1E0FEDC50(v213, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                sub_1E0FEDC50(&v215, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                sub_1E0FEDC50(&v193, v177, &qword_1ECE88C88, &qword_1E10AF9D8);
                sub_1E0FEE76C(&v179);
              }

              else
              {
                if (!v125)
                {
                  v193 = *&v213[0];
                  v133 = *(v108 + 4);
                  v196 = *(v108 + 3);
                  v197 = v133;
                  v198 = *(v108 + 5);
                  *&v199 = *(v108 + 12);
                  v134 = *(v108 + 2);
                  v194 = *(v108 + 1);
                  v195 = v134;
                  sub_1E0FEDC50(v213, &v186, &qword_1ECE88C88, &qword_1E10AF9D8);
                  sub_1E0FEDC50(&v215, &v186, &qword_1ECE88C88, &qword_1E10AF9D8);
                  sub_1E0FF0440(&v193, &qword_1ECE88C88, &qword_1E10AF9D8);
                  goto LABEL_57;
                }

                sub_1E0FEDC50(v213, &v193, &qword_1ECE88C88, &qword_1E10AF9D8);
                sub_1E0FEDC50(&v215, &v193, &qword_1ECE88C88, &qword_1E10AF9D8);
              }

              v193 = v124;
              v196 = v209;
              v197 = v210;
              v198 = v211;
              v194 = v207;
              v195 = v208;
              *&v199 = v212;
              *(&v199 + 1) = v126;
              *&v200[3] = v202;
              *&v200[1] = v201;
              v200[0] = v125;
              v200[11] = v206;
              *&v200[9] = v205;
              *&v200[7] = v204;
              *&v200[5] = v203;
              v81 = &unk_1ECE88F58;
              v82 = &unk_1E10B0618;
LABEL_80:
              v83 = &v193;
              goto LABEL_30;
            }

            sub_1E0FF03E0(v105, type metadata accessor for TicketAttribution);
            sub_1E0FF03E0(v103, type metadata accessor for TicketAttribution);
            v81 = &qword_1ECE88C80;
            v82 = &qword_1E10AF9D0;
            goto LABEL_19;
          }

          sub_1E0FF03E0(v103, type metadata accessor for TicketAttribution);
        }

        v81 = &qword_1ECE88F40;
        v82 = &qword_1E10B0600;
LABEL_19:
        v83 = v47;
LABEL_30:
        sub_1E0FF0440(v83, v81, v82);
        return 0;
      }
    }

    else
    {
      v93 = v169;
      sub_1E0FEDC50(v88, v169, &qword_1ECE88C78, &qword_1E10B5E50);
      if (v92(v88 + v89, 1, v90) != 1)
      {
        v95 = v88 + v89;
        v96 = v168;
        (*(v91 + 32))(v168, v95, v90);
        sub_1E0FF04A0(&qword_1ECE88F68, MEMORY[0x1E6968FB0]);
        v97 = sub_1E10AE03C();
        v98 = *(v91 + 8);
        v98(v96, v90);
        v98(v93, v90);
        sub_1E0FF0440(v88, &qword_1ECE88C78, &qword_1E10B5E50);
        v86 = v163;
        if ((v97 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_34;
      }

      (*(v91 + 8))(v93, v90);
    }

    v81 = &qword_1ECE88F48;
    v82 = &qword_1E10B0608;
    v83 = v88;
    goto LABEL_30;
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E0FED974()
{
  result = qword_1ECE88C98;
  if (!qword_1ECE88C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88C98);
  }

  return result;
}

unint64_t sub_1E0FED9C8()
{
  result = qword_1EE17FE90;
  if (!qword_1EE17FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE90);
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

unint64_t sub_1E0FEDA64()
{
  result = qword_1ECE89510;
  if (!qword_1ECE89510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89510);
  }

  return result;
}

uint64_t sub_1E0FEDB0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E0FF04A0(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E0FEDBA8()
{
  result = qword_1ECE88D08;
  if (!qword_1ECE88D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D08);
  }

  return result;
}

unint64_t sub_1E0FEDBFC()
{
  result = qword_1ECE88D10;
  if (!qword_1ECE88D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D10);
  }

  return result;
}

uint64_t sub_1E0FEDC50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

unint64_t sub_1E0FEDD04()
{
  result = qword_1EE17FE70;
  if (!qword_1EE17FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE70);
  }

  return result;
}

uint64_t sub_1E0FEDD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E0FEDDC0()
{
  result = qword_1EE17E830;
  if (!qword_1EE17E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E830);
  }

  return result;
}

uint64_t sub_1E0FEDE14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CC8, &qword_1E10AF9F0);
    sub_1E0FEDEAC(a2, &qword_1ECE88CE0, &qword_1E10B6B50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0FEDEAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E0FEDEF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E0FEDF5C()
{
  result = qword_1ECE88D68;
  if (!qword_1ECE88D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D68);
  }

  return result;
}

unint64_t sub_1E0FEDFB0()
{
  result = qword_1ECE88D70;
  if (!qword_1ECE88D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D70);
  }

  return result;
}

unint64_t sub_1E0FEE004()
{
  result = qword_1ECE88D80;
  if (!qword_1ECE88D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D80);
  }

  return result;
}

uint64_t sub_1E0FEE0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10BF480 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E10BF4A0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65756761656CLL && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64726143656D6167 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1E0FEE4B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E0FEE5D0()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

unint64_t sub_1E0FEE620()
{
  result = qword_1ECE88D90;
  if (!qword_1ECE88D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D90);
  }

  return result;
}

unint64_t sub_1E0FEE674()
{
  result = qword_1ECE88D98;
  if (!qword_1ECE88D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88D98);
  }

  return result;
}

unint64_t sub_1E0FEE6E0()
{
  result = qword_1ECE88DA8;
  if (!qword_1ECE88DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DA8);
  }

  return result;
}

unint64_t sub_1E0FEE7A0()
{
  result = qword_1ECE88DB8;
  if (!qword_1ECE88DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DB8);
  }

  return result;
}

uint64_t sub_1E0FEE7F4(uint64_t a1)
{
  result = sub_1E0FF04A0(&qword_1EE17E920, type metadata accessor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E0FEE84C(uint64_t a1)
{
  result = sub_1E0FF04A0(&qword_1EE17E918, type metadata accessor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E0FEE8EC(void *a1)
{
  a1[1] = sub_1E0FF04A0(&qword_1EE17E930, type metadata accessor for Sport);
  a1[2] = sub_1E0FF04A0(&qword_1EE17E948, type metadata accessor for Sport);
  a1[3] = sub_1E0FF04A0(&qword_1EE17E940, type metadata accessor for Sport);
  result = sub_1E0FF04A0(&qword_1EE17E928, type metadata accessor for Sport);
  a1[4] = result;
  return result;
}

unint64_t sub_1E0FEEA08()
{
  result = qword_1ECE88DC0;
  if (!qword_1ECE88DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DC0);
  }

  return result;
}

unint64_t sub_1E0FEEA60()
{
  result = qword_1ECE88DC8;
  if (!qword_1ECE88DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DC8);
  }

  return result;
}

unint64_t sub_1E0FEEAB4(void *a1)
{
  a1[1] = sub_1E0FEEAF4();
  a1[2] = sub_1E0FEEB48();
  a1[3] = sub_1E0FEEB9C();
  result = sub_1E0FEEBF0();
  a1[4] = result;
  return result;
}

unint64_t sub_1E0FEEAF4()
{
  result = qword_1EE17EA60;
  if (!qword_1EE17EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA60);
  }

  return result;
}

unint64_t sub_1E0FEEB48()
{
  result = qword_1EE17EA78[0];
  if (!qword_1EE17EA78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17EA78);
  }

  return result;
}

unint64_t sub_1E0FEEB9C()
{
  result = qword_1EE17EA70;
  if (!qword_1EE17EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA70);
  }

  return result;
}

unint64_t sub_1E0FEEBF0()
{
  result = qword_1EE17EA58;
  if (!qword_1EE17EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA58);
  }

  return result;
}

unint64_t sub_1E0FEEC48()
{
  result = qword_1EE17EA68;
  if (!qword_1EE17EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EA68);
  }

  return result;
}

unint64_t sub_1E0FEECD8()
{
  result = qword_1ECE88DD0;
  if (!qword_1ECE88DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88DD0);
  }

  return result;
}

void sub_1E0FEED54()
{
  sub_1E0FEEF80();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E0FEF078(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E0FEF078(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E0FEF014();
          if (v4 <= 0x3F)
          {
            sub_1E0FEF078(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E0FEF078(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1E0FEF59C(319, qword_1EE17E950);
                if (v7 <= 0x3F)
                {
                  sub_1E0FEF59C(319, qword_1EE17EC30);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1E0FEEF80()
{
  if (!qword_1ECE88DD8)
  {
    type metadata accessor for Sport();
    sub_1E0FF04A0(&qword_1EE17E920, type metadata accessor for Sport);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE88DD8);
    }
  }
}

void sub_1E0FEF014()
{
  if (!qword_1EE17E430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CE0, &qword_1E10B6B50);
    v0 = sub_1E10AE20C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE17E430);
    }
  }
}

void sub_1E0FEF078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E0FEF0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E0FEF138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E0FEF1A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    type metadata accessor for Sport.Detail.Score();
    sub_1E10AE4EC();
    if (v5 <= 0x3F)
    {
      sub_1E0FEF59C(319, qword_1EE17ED18);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E0FEF27C(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1E0FEF3C8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1E0FEF59C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E10AE4EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1E0FEF5E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E0FEF630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E0FEF678(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E0FEF6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E0FEF728(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Sport.League.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Sport.League.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PartialEventConfigurationProvider.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PartialEventConfigurationProvider.Error(_WORD *result, int a2, int a3)
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

uint64_t _s5ErrorO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5ErrorO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Sport.Competitor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Sport.Competitor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Sport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0FEFDAC()
{
  result = qword_1ECE88EF0;
  if (!qword_1ECE88EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88EF0);
  }

  return result;
}

unint64_t sub_1E0FEFE04()
{
  result = qword_1ECE88EF8;
  if (!qword_1ECE88EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88EF8);
  }

  return result;
}

unint64_t sub_1E0FEFE94()
{
  result = qword_1ECE88F00;
  if (!qword_1ECE88F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F00);
  }

  return result;
}

unint64_t sub_1E0FEFEEC()
{
  result = qword_1ECE88F08;
  if (!qword_1ECE88F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F08);
  }

  return result;
}

unint64_t sub_1E0FEFF44()
{
  result = qword_1ECE88F10;
  if (!qword_1ECE88F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F10);
  }

  return result;
}

unint64_t sub_1E0FF000C()
{
  result = qword_1ECE88F18;
  if (!qword_1ECE88F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F18);
  }

  return result;
}

unint64_t sub_1E0FF0064()
{
  result = qword_1ECE88F20;
  if (!qword_1ECE88F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F20);
  }

  return result;
}

unint64_t sub_1E0FF00BC()
{
  result = qword_1ECE88F28;
  if (!qword_1ECE88F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F28);
  }

  return result;
}

unint64_t sub_1E0FF0114()
{
  result = qword_1ECE88F30;
  if (!qword_1ECE88F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F30);
  }

  return result;
}

uint64_t sub_1E0FF0170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F635FLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E0FF0378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0FF03E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E0FF0440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E0FF04A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E0FF0548(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F70, &qword_1E10B0790);
  v2[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E0FF067C, v1, 0);
}

uint64_t sub_1E0FF067C()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  v0[19] = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration;
  swift_beginAccess();
  sub_1E0FF3D2C(v2 + v3, v1);
  v4 = type metadata accessor for PartialEventConfiguration(0);
  v0[20] = v4;
  v5 = *(v4 - 8);
  v0[21] = v5;
  v6 = *(v5 + 48);
  v0[22] = v6;
  v0[23] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  v8 = v0[18];
  if (v7 == 1)
  {
    v9 = v0[11];
    sub_1E0FF3D9C(v8);
    v10 = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask;
    v0[24] = OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask;
    v11 = *(v9 + v10);
    v0[25] = v11;
    if (v11)
    {
      v12 = *(MEMORY[0x1E69E86B0] + 4);

      v13 = swift_task_alloc();
      v0[26] = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
      v0[27] = v14;
      *v13 = v0;
      v13[1] = sub_1E0FF09EC;
      v15 = v0[15];
    }

    else
    {
      v25 = v0[11];
      v24 = v0[12];
      v26 = sub_1E10AE29C();
      (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
      v27 = sub_1E0FF3E04();
      v28 = swift_allocObject();
      v28[2] = v25;
      v28[3] = v27;
      v28[4] = v25;
      swift_retain_n();
      v11 = sub_1E107443C(0, 0, v24, &unk_1E10B07A8, v28);
      v0[28] = v11;
      v29 = *(v9 + v10);
      *(v9 + v10) = v11;

      v30 = *(MEMORY[0x1E69E86B0] + 4);
      v31 = swift_task_alloc();
      v0[29] = v31;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
      v0[30] = v14;
      *v31 = v0;
      v31[1] = sub_1E0FF0C58;
      v15 = v0[14];
    }

    v32 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v15, v11, v4, v14, v32);
  }

  else
  {
    sub_1E0FF3F10(v8, v0[10], type metadata accessor for PartialEventConfiguration);
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    v21 = v0[12];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1E0FF09EC()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E0FF0AFC, v2, 0);
}

uint64_t sub_1E0FF0AFC()
{
  v1 = v0[15];
  v2 = v0[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[27];
    v4 = v0[25];
    v0[9] = *v1;
    swift_willThrowTypedImpl();

    v6 = v0[17];
    v5 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = v0[12];
  }

  else
  {
    v12 = v0[25];
    v13 = v0[10];

    sub_1E0FF3F10(v1, v13, type metadata accessor for PartialEventConfiguration);
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = v0[12];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E0FF0C58()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E0FF0D84, v3, 0);
}

uint64_t sub_1E0FF0D84()
{
  v1 = v0[13];
  v2 = v0[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[30];
    v0[8] = *v2;
    swift_willThrowTypedImpl();
LABEL_5:
    v16 = v0[17];
    v15 = v0[18];
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    v20 = v0[12];

    v21 = v0[1];
    goto LABEL_7;
  }

  v4 = v0[24];
  v29 = v0[23];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[11];
  sub_1E0FF3F10(v2, v9, type metadata accessor for PartialEventConfiguration);
  (*(v6 + 56))(v9, 0, 1, v7);
  swift_beginAccess();
  sub_1E0FF3F78(v9, v11 + v8);
  swift_endAccess();
  v12 = *(v11 + v4);
  *(v11 + v4) = 0;

  sub_1E0FF3D2C(v11 + v8, v10);
  v13 = v5(v10, 1, v7);
  v14 = v0[16];
  if (v13 == 1)
  {
    sub_1E0FF3D9C(v14);
    sub_1E0FF3FE8();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_1E0FF3F10(v14, v0[10], type metadata accessor for PartialEventConfiguration);
  v23 = v0[17];
  v22 = v0[18];
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v27 = v0[12];

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_1E0FF0FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E0FF0FDC, a4, 0);
}

uint64_t sub_1E0FF0FDC()
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v1 = sub_1E10ADF9C();
  __swift_project_value_buffer(v1, qword_1EE185540);
  v2 = sub_1E10ADF7C();
  v3 = sub_1E10AE43C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E0FDF000, v2, v3, "Fetch configuration for partial event service", v4, 2u);
    MEMORY[0x1E12EE9E0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E0FF112C;
  v6 = v0[2];
  v7 = v0[3];

  return sub_1E0FF1220(v6);
}

uint64_t sub_1E0FF112C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E0FF1220(uint64_t a1)
{
  v2[607] = v1;
  v2[601] = a1;
  v3 = type metadata accessor for AccessTokenResource();
  v2[613] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[619] = swift_task_alloc();
  v2[625] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E0FF12C4, v1, 0);
}

uint64_t sub_1E0FF12C4()
{
  v1 = *(v0 + 5000);
  v2 = *(v0 + 4904);
  v3 = sub_1E1062474();
  *(v0 + 3920) = &type metadata for EventsRemoteConfiguration;
  *(v0 + 3928) = &off_1F5BF1318;
  *(v0 + 3896) = v3;
  v4 = sub_1E0FF9BD4();
  *(v0 + 4560) = &type metadata for EventsRemoteDefaultValues;
  *(v0 + 4568) = &off_1F5BEE5B0;
  *(v0 + 4536) = v4;
  sub_1E0FF33C0(v0 + 3896, v0 + 4376);
  v5 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AccessTokenProvider();
  v6 = swift_allocObject();
  *(v0 + 5048) = v6;
  swift_defaultActor_initialize();
  *(v6 + 152) = v5;
  *(v6 + 160) = 0;
  v7 = *(v0 + 4392);
  *(v6 + 112) = *(v0 + 4376);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(v0 + 4408);
  sub_1E0FF33C0(v0 + 3896, v0 + 4056);
  v8 = swift_allocObject();
  v9 = *(v0 + 4072);
  *(v8 + 16) = *(v0 + 4056);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 4088);
  v10 = swift_allocObject();
  *(v0 + 5096) = v10;
  *(v10 + 16) = &unk_1E10B06F0;
  *(v10 + 24) = v8;
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 3976);
  v11 = swift_allocObject();
  v12 = *(v0 + 3992);
  *(v11 + 16) = *(v0 + 3976);
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v0 + 4008);
  v13 = swift_allocObject();
  *(v0 + 5144) = v13;
  *(v13 + 16) = &unk_1E10B0720;
  *(v13 + 24) = v11;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4136);
  v14 = swift_allocObject();
  v15 = *(v0 + 4152);
  *(v14 + 16) = *(v0 + 4136);
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 4168);
  v16 = swift_allocObject();
  *(v0 + 5192) = v16;
  *(v16 + 16) = &unk_1E10B0740;
  *(v16 + 24) = v14;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4296);
  v17 = swift_allocObject();
  v18 = *(v0 + 4312);
  *(v17 + 16) = *(v0 + 4296);
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v0 + 4328);
  v19 = swift_allocObject();
  *(v0 + 5240) = v19;
  *(v19 + 16) = &unk_1E10B0760;
  *(v19 + 24) = v17;
  swift_asyncLet_begin();
  sub_1E0FF360C(v0 + 4536, v0 + 4456);
  v20 = swift_allocObject();
  v21 = *(v0 + 4472);
  *(v20 + 16) = *(v0 + 4456);
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v0 + 4488);
  v22 = swift_allocObject();
  *(v0 + 5288) = v22;
  *(v22 + 16) = &unk_1E10B0778;
  *(v22 + 24) = v20;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 3216, v0 + 4216, sub_1E0FF1748, v0 + 4176);
}

uint64_t sub_1E0FF1748()
{
  v1[662] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 577, sub_1E0FF1F84, v1 + 532);
  }

  else
  {
    v1[663] = v1[527];
    v1[664] = v1[528];
    v1[665] = v1[529];
    v1[666] = v1[530];
    v1[667] = v1[531];

    v2 = v1[625];

    return MEMORY[0x1EEE6DEC0](v1 + 2, v2, sub_1E0FF1844, v1 + 584);
  }
}

uint64_t sub_1E0FF1844()
{
  v1[668] = v0;
  if (v0)
  {
    v2 = v1[607];

    return MEMORY[0x1EEE6DFA0](sub_1E0FF21F0, v2, 0);
  }

  else
  {
    sub_1E0FF3CC8(v1[625], v1[619]);

    return MEMORY[0x1EEE6DEC0](v1 + 322, v1 + 595, sub_1E0FF18FC, v1 + 626);
  }
}

uint64_t sub_1E0FF18FC()
{
  if (v0)
  {

    v2 = 5;
  }

  else
  {
    v2 = *(v1 + 4760);
  }

  *(v1 + 5352) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 1936, v1 + 4712, sub_1E0FF1984, v1 + 5056);
}

uint64_t sub_1E0FF1984()
{
  if (v0)
  {

    v2 = 1.0;
  }

  else
  {
    v2 = *(v1 + 4712);
  }

  *(v1 + 5360) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 1296, v1 + 4664, sub_1E0FF1A0C, v1 + 5104);
}

uint64_t sub_1E0FF1A0C()
{
  if (v0)
  {

    v2 = 10;
  }

  else
  {
    v2 = *(v1 + 4664);
  }

  *(v1 + 5368) = v2;

  return MEMORY[0x1EEE6DEC0](v1 + 656, v1 + 4616, sub_1E0FF1A94, v1 + 5152);
}

uint64_t sub_1E0FF1A94()
{
  v2 = v0;
  v3 = *(v1 + 4856);
  if (v2)
  {

    v4 = sub_1E0FF1C28;
  }

  else
  {
    v4 = sub_1E0FF1B14;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E0FF1B14()
{
  v1 = *(v0 + 4616);
  v2 = *(v0 + 5368);
  v3 = *(v0 + 5360);
  v4 = *(v0 + 5352);
  v5 = *(v0 + 5336);
  v6 = *(v0 + 5312);
  v7 = *(v0 + 4952);
  v8 = *(v0 + 4808);
  v9 = *(v0 + 5320);
  *v8 = *(v0 + 5304);
  *(v8 + 8) = v6;
  *(v8 + 16) = v9;
  *(v8 + 32) = v5;
  v10 = type metadata accessor for PartialEventConfiguration(0);
  sub_1E0FF3F10(v7, v8 + v10[5], type metadata accessor for AccessTokenResource);
  *(v8 + v10[6]) = v4;
  *(v8 + v10[7]) = v3;
  *(v8 + v10[8]) = v2;
  *(v8 + v10[9]) = v1;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 4616, sub_1E0FF1D30, v0 + 5200);
}

uint64_t sub_1E0FF1C28()
{
  v1 = *(v0 + 5368);
  v2 = *(v0 + 5360);
  v3 = *(v0 + 5352);
  v4 = *(v0 + 5336);
  v5 = *(v0 + 5312);
  v6 = *(v0 + 4952);
  v7 = *(v0 + 4808);
  v8 = *(v0 + 5320);
  *v7 = *(v0 + 5304);
  *(v7 + 8) = v5;
  *(v7 + 16) = v8;
  *(v7 + 32) = v4;
  v9 = type metadata accessor for PartialEventConfiguration(0);
  sub_1E0FF3F10(v6, v7 + v9[5], type metadata accessor for AccessTokenResource);
  *(v7 + v9[6]) = v3;
  *(v7 + v9[7]) = v2;
  *(v7 + v9[8]) = v1;
  *(v7 + v9[9]) = 0;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 4616, sub_1E0FF1D30, v0 + 5200);
}

uint64_t sub_1E0FF1E8C()
{
  v1 = v0[661];
  v2 = v0[655];
  v3 = v0[649];
  v4 = v0[643];
  v5 = v0[637];
  v6 = v0[631];
  v7 = v0[625];
  v8 = v0[619];

  sub_1E0FF3C20((v0 + 567));
  sub_1E0FF3C74((v0 + 487));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FF20F0()
{
  v11 = v0[662];
  v1 = v0[661];
  v2 = v0[655];
  v3 = v0[649];
  v4 = v0[643];
  v5 = v0[637];
  v6 = v0[631];
  v7 = v0[625];
  v8 = v0[619];

  sub_1E0FF3C20((v0 + 567));
  sub_1E0FF3C74((v0 + 487));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FF21F0()
{
  v1 = v0[667];
  v2 = v0[666];
  v3 = v0[664];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 577, sub_1E0FF2284, v0 + 590);
}

uint64_t sub_1E0FF23F0()
{
  v11 = v0[668];
  v1 = v0[661];
  v2 = v0[655];
  v3 = v0[649];
  v4 = v0[643];
  v5 = v0[637];
  v6 = v0[631];
  v7 = v0[625];
  v8 = v0[619];

  sub_1E0FF3C20((v0 + 567));
  sub_1E0FF3C74((v0 + 487));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FF24F0(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40E4;

  return sub_1E105DC58(v1 + 16);
}

uint64_t sub_1E0FF258C(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1E0FF2680;

  return v6(v2 + 16);
}

uint64_t sub_1E0FF2680()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_1E0FF2794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE5FDC;

  return sub_1E0FFBA58(a1);
}

uint64_t sub_1E0FF2850()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF28F0;

  return sub_1E0FFA428(v1);
}

uint64_t sub_1E0FF28F0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E0FF29F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E0FF2ADC;

  return v6();
}

uint64_t sub_1E0FF2ADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1E0FF2C0C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF2CAC;

  return sub_1E0FF9E84(v1);
}

uint64_t sub_1E0FF2CAC(double a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_1E0FF2DAC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E0FF2E98;

  return v6();
}

uint64_t sub_1E0FF2E98(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1E0FF2FC8()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF40E8;

  return sub_1E0FFAB00(v1);
}

uint64_t sub_1E0FF3088()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E0FF40EC;

  return sub_1E0FFAFC4(v1);
}

uint64_t sub_1E0FF3128()
{
  sub_1E0FF3D9C(v0 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider__configuration);
  v1 = *(v0 + OBJC_IVAR____TtC12ShazamEvents33PartialEventConfigurationProvider_fetchConfigurationTask);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1E0FF31A0()
{
  sub_1E0FF3244();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E0FF3244()
{
  if (!qword_1EE17F1C8[0])
  {
    type metadata accessor for PartialEventConfiguration(255);
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE17F1C8);
    }
  }
}

uint64_t sub_1E0FF32BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0FF331C()
{
  result = type metadata accessor for AccessTokenResource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0FF341C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE6540;

  return sub_1E0FF24F0(a1);
}

uint64_t sub_1E0FF34B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E0FE5FDC;

  return sub_1E0FF258C(a1, v5);
}

uint64_t sub_1E0FF3570(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E0FE6540;

  return sub_1E0FF2794(a1);
}

uint64_t sub_1E0FF3668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF36FC;

  return sub_1E0FF2830(v0 + 16);
}

uint64_t sub_1E0FF36FC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1E0FF37F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E0FE6540;

  return sub_1E0FF29F0(a1, v5);
}

uint64_t sub_1E0FF38B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF3944;

  return sub_1E0FF2BEC(v0 + 16);
}

uint64_t sub_1E0FF3944(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t sub_1E0FF3A40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E0FE6540;

  return sub_1E0FF2DAC(a1, v5);
}

uint64_t sub_1E0FF3AF8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40DC;

  return sub_1E0FF2FA8(v0 + 16);
}

uint64_t sub_1E0FF3B8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E0FF40E0;

  return sub_1E0FF3068(v0 + 16);
}

uint64_t sub_1E0FF3CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessTokenResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FF3D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FF3D9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E0FF3E04()
{
  result = qword_1ECE88F80;
  if (!qword_1ECE88F80)
  {
    type metadata accessor for PartialEventConfigurationProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F80);
  }

  return result;
}

uint64_t sub_1E0FF3E5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E0FE6540;

  return sub_1E0FF0FBC(a1, v4, v5, v6);
}

uint64_t sub_1E0FF3F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0FF3F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F78, &qword_1E10B0798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0FF3FE8()
{
  result = qword_1ECE88F90;
  if (!qword_1ECE88F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F90);
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

unint64_t sub_1E0FF4088()
{
  result = qword_1ECE88F98;
  if (!qword_1ECE88F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88F98);
  }

  return result;
}

id sub_1E0FF40F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1E0FF4870();
    v5 = sub_1E10ADFCC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1E0FF417C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1E0FF48BC(v2, v36);
    v7 = v37;
    v8 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v9 = *(v8 + 16);
    v10 = v9(v7, v8);
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = 0xE300000000000000;
        v12 = 5460050;
        if (!v3[2])
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0x6C6552676E697375;
        v11 = 0xEA00000000007961;
        if (!v3[2])
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v12 = 0x65736E6F70736572;
      v11 = 0xEC00000065646F43;
      if (!v3[2])
      {
        goto LABEL_13;
      }
    }

    sub_1E1014100(v12, v11);
    v14 = v13;

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_14:
    v15 = v9(v7, v8);
    if (v15)
    {
      v16 = v15 == 1 ? 5460050 : 0x6C6552676E697375;
      v17 = v15 == 1 ? 0xE300000000000000 : 0xEA00000000007961;
    }

    else
    {
      v16 = 0x65736E6F70736572;
      v17 = 0xEC00000065646F43;
    }

    v18 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v20 = (*(v19 + 32))(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v3;
    v22 = sub_1E1014100(v16, v17);
    v24 = v3[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      sub_1E10149CC(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1E1014100(v16, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_36;
      }

LABEL_27:
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v33 = v22;
    sub_1E101634C();
    v22 = v33;
    if (v28)
    {
LABEL_3:
      v4 = v22;

      v3 = v35;
      v5 = v35[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v20;

      goto LABEL_4;
    }

LABEL_28:
    v3 = v35;
    v35[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v35[6] + 16 * v22);
    *v30 = v16;
    v30[1] = v17;
    *(v35[7] + 8 * v22) = v20;
    v31 = v35[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_35;
    }

    v35[2] = v32;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v36);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

void sub_1E0FF4488(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA0, &qword_1E10B08A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 64) = sub_1E0FF4804(&qword_1ECE88FB0, &qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 32) = 1;
  *(v4 + 40) = a1;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 104) = sub_1E0FF4804(&qword_1ECE88FC0, &qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 72) = 2;
  *(v4 + 73) = a2;
  v5 = sub_1E10AE04C();
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000025;
  v6[3] = 0x80000001E10BF590;
  v6[4] = v4;
  v8[4] = sub_1E0FF4960;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E0FF40F0;
  v8[3] = &block_descriptor_6;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void sub_1E0FF4648(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA0, &qword_1E10B08A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 64) = sub_1E0FF4804(&qword_1ECE88FB0, &qword_1ECE88FA8, &qword_1E10B08B0);
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 104) = sub_1E0FF4804(&qword_1ECE88FC0, &qword_1ECE88FB8, qword_1E10B08B8);
  *(v4 + 72) = 2;
  *(v4 + 73) = a2;
  v5 = sub_1E10AE04C();
  v6 = swift_allocObject();
  v6[2] = 0xD000000000000023;
  v6[3] = 0x80000001E10BF540;
  v6[4] = v4;
  v8[4] = sub_1E0FF4980;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E0FF40F0;
  v8[3] = &block_descriptor;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_1E0FF4804(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E0FF4870()
{
  result = qword_1ECE88FC8;
  if (!qword_1ECE88FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE88FC8);
  }

  return result;
}

uint64_t sub_1E0FF48BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E0FF4998(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FF0, &qword_1E10B09A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF4E90();
  sub_1E10AEA5C();
  v15[0] = a2;
  v15[1] = a3;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1E0FF4AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0FF4B84(uint64_t a1)
{
  v2 = sub_1E0FF4E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF4BC0(uint64_t a1)
{
  v2 = sub_1E0FF4E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E0FF4BFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E0FF4D1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1E0FF4C44(uint64_t a1)
{
  *(a1 + 8) = sub_1E0FF4C74();
  result = sub_1E0FF4CC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E0FF4C74()
{
  result = qword_1ECE88FD0;
  if (!qword_1ECE88FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FD0);
  }

  return result;
}

unint64_t sub_1E0FF4CC8()
{
  result = qword_1ECE88FD8;
  if (!qword_1ECE88FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FD8);
  }

  return result;
}

void *sub_1E0FF4D1C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88FE0, &qword_1E10B09A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF4E90();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1E0FF4EE4();
    sub_1E10AE7FC();
    (*(v4 + 8))(v9, v3);
    v11 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_1E0FF4E90()
{
  result = qword_1ECE88FE8;
  if (!qword_1ECE88FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FE8);
  }

  return result;
}

unint64_t sub_1E0FF4EE4()
{
  result = qword_1EE17F328[0];
  if (!qword_1EE17F328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F328);
  }

  return result;
}

unint64_t sub_1E0FF4F38()
{
  result = qword_1ECE88FF8;
  if (!qword_1ECE88FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE88FF8);
  }

  return result;
}

unint64_t sub_1E0FF4FA0()
{
  result = qword_1ECE89000;
  if (!qword_1ECE89000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89000);
  }

  return result;
}

unint64_t sub_1E0FF4FF8()
{
  result = qword_1ECE89008;
  if (!qword_1ECE89008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89008);
  }

  return result;
}

unint64_t sub_1E0FF5050()
{
  result = qword_1ECE89010;
  if (!qword_1ECE89010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89010);
  }

  return result;
}

uint64_t Venue.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Venue.muid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Venue.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

id Venue.location.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = objc_allocWithZone(MEMORY[0x1E6985C40]);

  return [v3 initWithLatitude:v1 longitude:v2];
}

uint64_t Venue.structuredAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v10 = v1[5];
  v11 = v2;
  v4 = v1[8];
  v12 = v1[7];
  v3 = v12;
  v13 = v4;
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E0FF73BC(v9, &v8);
}

unint64_t sub_1E0FF51D0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x656475746974616CLL;
  if (v1 != 4)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684632941;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_1E0FF5278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FF7D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FF52A0(uint64_t a1)
{
  v2 = sub_1E0FF742C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF52DC(uint64_t a1)
{
  v2 = sub_1E0FF742C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Venue.Schedule.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[5];
  v23 = v1[6];
  v24 = v2;
  v4 = v1[7];
  v5 = v1[9];
  v25 = v1[8];
  v6 = v25;
  v26 = v5;
  v7 = v1[3];
  v9 = v1[1];
  v19 = v1[2];
  v8 = v19;
  v20 = v7;
  v10 = v1[3];
  v11 = v1[5];
  v21 = v1[4];
  v12 = v21;
  v22 = v11;
  v13 = v1[1];
  v18[0] = *v1;
  v14 = v18[0];
  v18[1] = v13;
  a1[6] = v23;
  a1[7] = v4;
  v15 = v1[9];
  a1[8] = v6;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v3;
  *a1 = v14;
  a1[1] = v9;
  return sub_1E0FE6720(v18, &v17);
}

uint64_t Venue.Schedule.events.getter(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](a3, a4);
    v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = *(a2 + 24);
    *v9 = sub_1E10AE20C();
    v11 = v9 + 1;
    v12 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v13 = v7;
    do
    {
      v14 = *v12++;
      *v11++ = sub_1E10AE20C();
      --v13;
    }

    while (v13);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  else
  {
    v18 = *(a2 + 24);
    TupleTypeMetadata = sub_1E10AE20C();
  }

  v19 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v4 + *(a2 + 60), TupleTypeMetadata);
  if (!v7)
  {
    return *v21;
  }

  result = *&v21[*(TupleTypeMetadata + 32)];
  v24 = (TupleTypeMetadata + 48);
  do
  {
    v26 = *a1++;
    v25 = v26;
    v27 = *v24;
    v24 += 4;
    *v25 = *&v21[v27];
    --v7;
  }

  while (v7);
  return result;
}

uint64_t sub_1E0FF5548@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>)
{
  v11 = a8;
  v12 = a7;
  v47 = a2;
  v48 = a6;
  if (a4)
  {
    v45 = a7;
    v46 = a8;
    v44 = &v44;
    MEMORY[0x1EEE9AC00](a10, a11);
    v20 = (&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v20 = sub_1E10AE20C();
    v21 = v20 + 1;
    v22 = (a6 & 0xFFFFFFFFFFFFFFFELL);
    v23 = a4;
    do
    {
      v24 = *v22++;
      *v21++ = sub_1E10AE20C();
      --v23;
    }

    while (v23);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = v45;
    v11 = v46;
  }

  else
  {
    TupleTypeMetadata = sub_1E10AE20C();
  }

  v28 = *(TupleTypeMetadata - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v31 = (&v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    *(v31 + *(TupleTypeMetadata + 32)) = v47;
    v32 = (TupleTypeMetadata + 48);
    v33 = a4;
    do
    {
      v35 = *v32;
      v32 += 4;
      v34 = v35;
      v36 = *a3++;
      *(v31 + v34) = *v36;
      --v33;
    }

    while (v33);
  }

  else
  {
    *v31 = v47;
  }

  v37 = a1[7];
  *(a9 + 6) = a1[6];
  *(a9 + 7) = v37;
  v38 = a1[9];
  *(a9 + 8) = a1[8];
  *(a9 + 9) = v38;
  v39 = a1[3];
  *(a9 + 2) = a1[2];
  *(a9 + 3) = v39;
  v40 = a1[5];
  *(a9 + 4) = a1[4];
  *(a9 + 5) = v40;
  v41 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v41;
  v49 = a4;
  v50 = a5;
  v51 = v48;
  v52 = v12;
  v53 = v11;
  v42 = type metadata accessor for Venue.Schedule();
  return (*(v28 + 32))(&a9[*(v42 + 60)], v31, TupleTypeMetadata);
}

uint64_t Venue.StructuredAddress.address.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Venue.StructuredAddress.postCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Venue.StructuredAddress.city.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Venue.StructuredAddress.region.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Venue.StructuredAddress.country.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Venue.StructuredAddress.countryIsoCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_1E0FF588C()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x6E6F69676572;
  v4 = 0x7972746E756F63;
  if (v1 != 4)
  {
    v4 = 0x497972746E756F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F4374736F70;
  if (v1 != 1)
  {
    v5 = 2037672291;
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

uint64_t sub_1E0FF5948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0FF7F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FF5970(uint64_t a1)
{
  v2 = sub_1E0FF7590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF59AC(uint64_t a1)
{
  v2 = sub_1E0FF7590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}