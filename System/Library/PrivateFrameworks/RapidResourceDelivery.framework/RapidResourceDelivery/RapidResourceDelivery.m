uint64_t sub_227EB3618(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_227F2B114();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_227EB36C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_227F2B114();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227EB3768@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_227EB37E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Schedule();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_227EB392C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v13 = type metadata accessor for Schedule();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_227EB3A64()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E3D0, &unk_227F2DDD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB3A94()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E3D8, &qword_227F2DDE8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB3AC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227EB3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DownloadOutcome();
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

uint64_t sub_227EB3BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DownloadOutcome();
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

uint64_t sub_227EB3C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_227EB3CB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_227EB3D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227F2B574();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB3E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227F2B574();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB3F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227EB3FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227F2B114();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227EB4098(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227EB4104(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227EB4174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ContainerizableURL(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_227EB4304(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for ContainerizableURL(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_227EB4488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ResourceInfo(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB4584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ResourceInfo(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB46AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 32);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  v18 = v17 <= 0;
  if (v17 < 0)
  {
    v17 = -1;
  }

  if (v18)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_227EB4834(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 32) = (a2 + 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_227EB49AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_227F2B234();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227EB4A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_227F2B234();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227EB4BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227EB4C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227EB4C94()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4CC4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4CF4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB4D34()
{
  v1 = (type metadata accessor for Configuration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_227F2B114();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  v8 = sub_227F2B574();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227EB4E54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227EB4E8C()
{
  v1 = *(type metadata accessor for DirectoryCleaner() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_227F2B114();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v5, v7);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v2 | 7);
}

uint64_t sub_227EB4F94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery22SanitizedStateSnapshotV8FileInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_227EB5018()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB5050()
{
  v1 = sub_227F2B274();
  v2 = *(v1 - 8);
  v27 = *(v2 + 80);
  v3 = (v27 + 32) & ~v27;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for RRDRequest(0) - 8);
  v25 = *(v5 + 80);
  v6 = (v4 + v25 + 8) & ~v25;
  v24 = *(v5 + 64);
  v26 = sub_227F2B4C4();
  v7 = *(v26 - 8);
  v22 = *(v7 + 80);
  v21 = *(v7 + 64);
  v23 = sub_227F2B334();
  v8 = *(v23 - 8);
  v9 = *(v8 + 80);
  v20 = *(v8 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v11 = *(v0 + v4);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = sub_227F2B114();
    (*(*(v14 - 8) + 8))(v0 + v6, v14);
    v15 = v0 + v6 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20);
    if (*(v15 + 8))
    {

      v16 = *(v15 + 24);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_227F2B114();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
  }

  v17 = (v6 + v24 + v22) & ~v22;
  v18 = (v17 + v21 + v9) & ~v9;
  (*(v7 + 8))(v0 + v17, v26);
  (*(v8 + 8))(v0 + v18, v23);

  return MEMORY[0x2821FE8E8](v0, ((v20 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v27 | v25 | v22 | v9 | 7);
}

uint64_t sub_227EB5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227F2B114();
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

uint64_t sub_227EB5464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_227F2B114();
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

uint64_t sub_227EB5520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
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

uint64_t sub_227EB5598(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_227EB564C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F188, &qword_227F329A8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227EB5680()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB56B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227EB56F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227EB5728()
{
  v1 = sub_227F2B114();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for Manifest() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v0 + v8 + 8);

  v12(v0 + v8 + v6[8], v1);
  v15 = *(v0 + v8 + v6[11] + 8);

  v16 = *(v0 + v8 + v6[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_227EB58D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
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

uint64_t sub_227EB593C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_227F2B234();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_227EB5A34(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_227F2B644();
  v6 = sub_227F2B644();
  [a1 setObject:v5 forKey:v6];

  v7 = v1[4];
  v8 = v1[5];
  v9 = sub_227F2B644();
  v10 = sub_227F2B644();
  [a1 setObject:v9 forKey:v10];

  v11 = v1[2];
  v12 = v1[3];
  v13 = sub_227F2B644();
  v14 = sub_227F2B644();
  [a1 setObject:v13 forKey:v14];
}

id sub_227EB5B58(uint64_t a1, void *a2)
{
  v25 = a2;
  v22[2] = a1;
  v3 = sub_227F2AFF4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227F2B114();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v27 = v2[1];
  v28 = v27;
  v15 = v4[13];
  v15(v7, *MEMORY[0x277CC91C0], v3);
  v22[1] = sub_227EB84D8();

  sub_227F2B0F4();
  v16 = v4[1];
  v16(v7, v3);
  sub_227EB80AC(&v28);
  v26 = *v2;
  v27 = v26;
  v15(v7, *MEMORY[0x277CC91D8], v3);

  sub_227F2B0F4();
  v16(v7, v3);
  sub_227EB80AC(&v27);
  v17 = v24;
  v18 = *(v23 + 8);
  v18(v12, v24);
  sub_227F2B0A4();
  v18(v14, v17);
  v19 = sub_227F2B644();

  v20 = [v25 fileExistsAtPath_];

  return v20;
}

uint64_t sub_227EB5E30()
{
  v1 = v0;
  sub_227F2B9A4();

  MEMORY[0x22AAAC3E0](*v1, v1[1]);
  MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F337C0);
  MEMORY[0x22AAAC3E0](v1[2], v1[3]);
  MEMORY[0x22AAAC3E0](0x747365676964202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AAAC3E0](v1[4], v1[5]);
  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return 0x6D614E656C696628;
}

void sub_227EB5F0C(void *a1@<X8>)
{
  sub_227EB820C(*v1, &v22);
  v4 = *(&v22 + 1);
  v3 = v22;
  v6 = *(&v23 + 1);
  v5 = v23;
  v8 = *(&v24 + 1);
  v7 = v24;
  if (*(&v22 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v9 = *(type metadata accessor for ClientCache() + 24);
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_227EB5B58(v1 + v9, v10);

    if ((v11 & 1) == 0)
    {
      if (qword_27D80DF38 != -1)
      {
        swift_once();
      }

      v12 = sub_227F2B334();
      __swift_project_value_buffer(v12, qword_27D81B1F8);
      v28 = v25;
      v29 = v26;
      v30[0] = v27;
      sub_227EB8050(&v28, v21);
      sub_227EB8050(&v29, v21);
      sub_227EB8050(v30, v21);
      v13 = sub_227F2B304();
      v14 = sub_227F2B8E4();
      sub_227EB80AC(&v28);
      sub_227EB80AC(&v29);
      sub_227EB80AC(v30);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21[0] = v16;
        *v15 = 136315138;
        v17 = sub_227EB5E30();
        v19 = v18;
        sub_227EB80AC(&v28);
        sub_227EB80AC(&v29);
        sub_227EB80AC(v30);
        v20 = sub_227ECAC40(v17, v19, v21);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_227EB2000, v13, v14, "Cache coherence error: %s not found", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AAAD240](v16, -1, -1);
        MEMORY[0x22AAAD240](v15, -1, -1);
      }

      else
      {
        sub_227EB80AC(&v28);
        sub_227EB80AC(&v29);
        sub_227EB80AC(v30);
      }

      sub_227EB6198();
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

void sub_227EB6198()
{
  v1 = *v0;
  v2 = sub_227F2B644();
  [v1 removeObjectForKey_];

  v3 = sub_227F2B644();
  [v1 removeObjectForKey_];

  v4 = sub_227F2B644();
  [v1 removeObjectForKey_];
}

void sub_227EB6278(__int128 *a1)
{
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v3 = sub_227F2B334();
  __swift_project_value_buffer(v3, qword_27D81B1F8);
  v4 = *a1;
  v14 = a1[1];
  v15 = v4;
  v13 = a1[2];
  sub_227EB8050(&v15, v12);
  sub_227EB8050(&v14, v12);
  sub_227EB8050(&v13, v12);
  v5 = sub_227F2B304();
  v6 = sub_227F2B8D4();
  sub_227EB80AC(&v15);
  sub_227EB80AC(&v14);
  sub_227EB80AC(&v13);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    v9 = sub_227EB5E30();
    v11 = sub_227ECAC40(v9, v10, v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_227EB2000, v5, v6, "Caching new entry: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAAD240](v8, -1, -1);
    MEMORY[0x22AAAD240](v7, -1, -1);
  }

  sub_227EB5A34(*v1);
}

void sub_227EB6420()
{
  v210[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for ClientCache();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v207 = (&v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v183 = &v169 - v5;
  v6 = sub_227F2B234();
  v209 = *(v6 - 8);
  v7 = v209[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v169 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v169 - v15;
  v192 = sub_227F2AFA4();
  v208 = *(v192 - 8);
  v17 = *(v208 + 64);
  MEMORY[0x28223BE20](v192);
  v184 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v169 - v21;
  v23 = sub_227F2B114();
  v206 = *(v23 - 8);
  v24 = *(v206 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v169 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v194 = &v169 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v193 = &v169 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v177 = &v169 - v36;
  MEMORY[0x28223BE20](v35);
  v201 = &v169 - v37;
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v188 = v30;
  v198 = v27;
  v191 = v16;
  v185 = v6;
  v38 = sub_227F2B334();
  v205 = __swift_project_value_buffer(v38, qword_27D81B1F8);
  v39 = sub_227F2B304();
  v40 = sub_227F2B8D4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_227EB2000, v39, v40, "Pruning client cache", v41, 2u);
    MEMORY[0x22AAAD240](v41, -1, -1);
  }

  v42 = v199[1];
  v43 = v199 + *(v0 + 24);
  v44 = sub_227F2B044();
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  v45 = swift_allocObject();
  v189 = xmmword_227F2C980;
  *(v45 + 16) = xmmword_227F2C980;
  v46 = *MEMORY[0x277CBE7C0];
  *(v45 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v47 = v46;
  v48 = sub_227F2B794();

  v210[0] = 0;
  v176 = v42;
  v49 = [v42 contentsOfDirectoryAtURL:v44 includingPropertiesForKeys:v48 options:0 error:v210];

  v50 = v210[0];
  if (v49)
  {
    v182 = v12;
    v174 = v10;
    v51 = sub_227F2B7A4();
    v52 = v50;

    v54 = v51;
    v55 = *(v51 + 16);
    if (v55)
    {
      v197 = 0;
      v56 = *(v206 + 16);
      v57 = (*(v206 + 80) + 32) & ~*(v206 + 80);
      v173 = v54;
      v58 = (v54 + v57);
      v202 = *(v206 + 72);
      v196 = "apidResourceDelivery.digest";
      v204 = (v206 + 8);
      v187 = *MEMORY[0x277CBE7A8];
      v186 = (v208 + 56);
      v181 = (v208 + 32);
      v180 = v209 + 6;
      v175 = v209 + 4;
      v178 = v209 + 1;
      v179 = (v208 + 8);
      v172 = v209 + 2;
      *&v53 = 136315138;
      v195 = v53;
      *&v53 = 136315394;
      v171 = v53;
      v203 = v23;
      v200 = v22;
      v206 += 16;
      v207 = v56;
      v59 = v201;
      (v56)(v201, v54 + v57, v23);
      while (1)
      {
        v61 = sub_227F2B024();
        v63 = v62;
        sub_227F2B244();
        v64 = sub_227F2B274();
        if ((*(*(v64 - 8) + 48))(v22, 1, v64) == 1)
        {
          v209 = v58;

          sub_227EB8430(v22, &qword_27D80DFF8, &qword_227F31260);
          v65 = v59;
          v66 = v198;
          (v56)(v198, v65, v23);
          v67 = sub_227F2B304();
          v68 = sub_227F2B8D4();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v210[0] = v70;
            *v69 = v195;
            sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
            v71 = sub_227F2BC24();
            v73 = v72;
            v208 = v55;
            v74 = *v204;
            (*v204)(v66, v203);
            v75 = sub_227ECAC40(v71, v73, v210);
            v23 = v203;

            *(v69 + 4) = v75;
            _os_log_impl(&dword_227EB2000, v67, v68, "Skipping %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v70);
            MEMORY[0x22AAAD240](v70, -1, -1);
            v76 = v69;
            v22 = v200;
            MEMORY[0x22AAAD240](v76, -1, -1);

            v74(v65, v23);
            v56 = v207;
            v55 = v208;
          }

          else
          {

            v60 = *v204;
            (*v204)(v66, v23);
            v60(v65, v23);
          }

          v59 = v65;
          v58 = v209;
        }

        else
        {
          sub_227EB8430(v22, &qword_27D80DFF8, &qword_227F31260);
          v77 = *v199;
          v78 = sub_227F2B644();
          v79 = [v77 stringForKey_];

          v208 = v55;
          if (v79)
          {
            v80 = sub_227F2B674();
            v82 = v81;

            if (v61 == v80 && v63 == v82)
            {

LABEL_26:
              v85 = v188;
              v93 = v201;
              (v207)(v188, v201, v23);
              v94 = sub_227F2B304();
              v95 = sub_227F2B8E4();
              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v210[0] = v97;
                *v96 = v195;
                sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
                v98 = sub_227F2BC24();
                v100 = v99;
                v209 = v58;
                v101 = *v204;
                (*v204)(v85, v203);
                v102 = sub_227ECAC40(v98, v100, v210);
                v23 = v203;

                *(v96 + 4) = v102;
                v103 = v95;
                v104 = v94;
                v105 = "Skip pruning current cached subfolder %s";
                goto LABEL_32;
              }

LABEL_33:

              v114 = *v204;
              (*v204)(v85, v23);
              v114(v93, v23);
LABEL_34:
              v22 = v200;
              v59 = v93;
              v56 = v207;
              v55 = v208;
              goto LABEL_10;
            }

            v84 = sub_227F2BC64();

            v85 = v194;
            v86 = v193;
            if (v84)
            {
              goto LABEL_26;
            }
          }

          else
          {

            v85 = v194;
            v86 = v193;
          }

          inited = swift_initStackObject();
          *(inited + 16) = v189;
          v88 = v187;
          *(inited + 32) = v187;
          v89 = v88;
          sub_227F2AA7C(inited);
          swift_setDeallocating();
          sub_227EB83D0(inited + 32, type metadata accessor for URLResourceKey);
          v90 = v191;
          v91 = v197;
          sub_227F2B014();
          v92 = v192;
          if (v91)
          {

            (*v186)(v90, 1, 1, v92);
            sub_227EB8430(v90, &qword_27D80DFF0, &unk_227F2C9C0);
            v197 = 0;
LABEL_30:
            v93 = v201;
            (v207)(v85, v201, v23);
            v94 = sub_227F2B304();
            v109 = sub_227F2B8E4();
            if (!os_log_type_enabled(v94, v109))
            {
              goto LABEL_33;
            }

            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v210[0] = v97;
            *v96 = v195;
            sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
            v110 = sub_227F2BC24();
            v112 = v111;
            v209 = v58;
            v101 = *v204;
            (*v204)(v85, v203);
            v113 = sub_227ECAC40(v110, v112, v210);
            v23 = v203;

            *(v96 + 4) = v113;
            v103 = v109;
            v104 = v94;
            v105 = "Couldn't determine creation date of %s";
LABEL_32:
            _os_log_impl(&dword_227EB2000, v104, v103, v105, v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v97);
            MEMORY[0x22AAAD240](v97, -1, -1);
            MEMORY[0x22AAAD240](v96, -1, -1);

            v101(v93, v23);
            v58 = v209;
            goto LABEL_34;
          }

          v197 = 0;

          (*v186)(v90, 0, 1, v92);
          v106 = v184;
          (*v181)(v184, v90, v92);
          v107 = v183;
          sub_227F2AF54();
          v108 = v185;
          if ((*v180)(v107, 1, v185) == 1)
          {
            (*v179)(v106, v92);
            sub_227EB8430(v107, &unk_27D80E3B0, &unk_227F2DB00);
            goto LABEL_30;
          }

          v115 = v182;
          (*v175)(v182, v107, v108);
          sub_227F2B1E4();
          if (v116 >= -86400.0)
          {
            v59 = v201;
            v56 = v207;
            (v207)(v86, v201, v23);
            v136 = sub_227F2B304();
            v137 = sub_227F2B8D4();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v170 = v138;
              v209 = swift_slowAlloc();
              v210[0] = v209;
              *v138 = v195;
              sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
              v139 = sub_227F2BC24();
              v141 = v140;
              v142 = *v204;
              v59 = v201;
              (*v204)(v86, v203);
              v143 = sub_227ECAC40(v139, v141, v210);

              v144 = v170;
              *(v170 + 1) = v143;
              v145 = v137;
              v146 = v144;
              _os_log_impl(&dword_227EB2000, v136, v145, "Leaving %s in place in case it's being used", v144, 0xCu);
              v147 = v209;
              __swift_destroy_boxed_opaque_existential_0(v209);
              MEMORY[0x22AAAD240](v147, -1, -1);
              MEMORY[0x22AAAD240](v146, -1, -1);

              (*v178)(v182, v185);
              (*v179)(v184, v192);
              v142(v59, v203);
              v23 = v203;
            }

            else
            {

              v152 = *v204;
              (*v204)(v86, v23);
              (*v178)(v182, v185);
              (*v179)(v184, v92);
              v152(v59, v23);
            }

            v22 = v200;
          }

          else
          {
            v117 = v177;
            v56 = v207;
            (v207)(v177, v201, v23);
            v118 = v174;
            (*v172)(v174, v115, v108);
            v119 = sub_227F2B304();
            v120 = sub_227F2B8D4();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              v210[0] = v209;
              *v121 = v171;
              sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
              LODWORD(v170) = v120;
              v122 = sub_227F2BC24();
              v169 = v119;
              v123 = v122;
              v125 = v124;
              v126 = *v204;
              (*v204)(v117, v23);
              v127 = sub_227ECAC40(v123, v125, v210);

              *(v121 + 4) = v127;
              *(v121 + 12) = 2080;
              sub_227EB8490(&unk_27D80E010, MEMORY[0x277CC9578]);
              v128 = sub_227F2BC24();
              v130 = v129;
              v131 = *v178;
              (*v178)(v118, v185);
              v132 = sub_227ECAC40(v128, v130, v210);

              *(v121 + 14) = v132;
              v133 = v169;
              _os_log_impl(&dword_227EB2000, v169, v170, "Removing %s, last accessed %s", v121, 0x16u);
              v134 = v209;
              swift_arrayDestroy();
              MEMORY[0x22AAAD240](v134, -1, -1);
              v135 = v121;
              v108 = v185;
              MEMORY[0x22AAAD240](v135, -1, -1);
            }

            else
            {

              v148 = v23;
              v131 = *v178;
              (*v178)(v118, v108);
              v126 = *v204;
              (*v204)(v117, v148);
            }

            v59 = v201;
            v149 = sub_227F2B044();
            v210[0] = 0;
            v150 = [v176 removeItemAtURL:v149 error:v210];

            v22 = v200;
            if (v150)
            {
              v151 = v210[0];
            }

            else
            {
              v153 = v210[0];
              v154 = sub_227F2AFC4();

              swift_willThrow();
              v56 = v207;

              v197 = 0;
            }

            v155 = v184;
            v131(v182, v108);
            (*v179)(v155, v192);
            v23 = v203;
            v126(v59, v203);
          }
        }

LABEL_10:
        v58 = (v58 + v202);
        if (!--v55)
        {
          break;
        }

        (v56)(v59, v58, v23);
      }
    }
  }

  else
  {
    v156 = v210[0];
    v157 = sub_227F2AFC4();

    swift_willThrow();
    v158 = v207;
    sub_227EB81A8(v199, v207);
    v159 = sub_227F2B304();
    v160 = sub_227F2B8E4();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v210[0] = v162;
      *v161 = 136315138;
      v163 = *(v0 + 24);
      sub_227EB8490(&qword_27D80E008, MEMORY[0x277CC9260]);
      v164 = sub_227F2BC24();
      v166 = v165;
      sub_227EB83D0(v158, type metadata accessor for ClientCache);
      v167 = sub_227ECAC40(v164, v166, v210);

      *(v161 + 4) = v167;
      _os_log_impl(&dword_227EB2000, v159, v160, "Couldn't list subfolders of %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x22AAAD240](v162, -1, -1);
      MEMORY[0x22AAAD240](v161, -1, -1);
    }

    else
    {

      sub_227EB83D0(v158, type metadata accessor for ClientCache);
    }
  }

  v168 = *MEMORY[0x277D85DE8];
}

uint64_t type metadata accessor for ClientCache()
{
  result = qword_27D80DFC8;
  if (!qword_27D80DFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EB7B14()
{
  result = sub_227EB7BD0(319, &qword_27D80DFD8, 0x277CBEBD0);
  if (v1 <= 0x3F)
  {
    result = sub_227EB7BD0(319, &unk_27D80DFE0, 0x277CCAA00);
    if (v2 <= 0x3F)
    {
      result = sub_227F2B114();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_227EB7BD0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_227EB7C20(uint64_t a1, id *a2)
{
  result = sub_227F2B654();
  *a2 = 0;
  return result;
}

uint64_t sub_227EB7C98(uint64_t a1, id *a2)
{
  v3 = sub_227F2B664();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227EB7D18@<X0>(uint64_t *a1@<X8>)
{
  sub_227F2B674();
  v2 = sub_227F2B644();

  *a1 = v2;
  return result;
}

uint64_t sub_227EB7D5C()
{
  v1 = *v0;
  v2 = sub_227F2B674();
  v3 = MEMORY[0x22AAAC420](v2);

  return v3;
}

uint64_t sub_227EB7D98()
{
  v1 = *v0;
  sub_227F2B674();
  sub_227F2B704();
}

uint64_t sub_227EB7DEC()
{
  v1 = *v0;
  sub_227F2B674();
  sub_227F2BD14();
  sub_227F2B704();
  v2 = sub_227F2BD44();

  return v2;
}

uint64_t sub_227EB7E60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_227F2B674();
  v6 = v5;
  if (v4 == sub_227F2B674() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();
  }

  return v9 & 1;
}

uint64_t sub_227EB7EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_227F2B644();

  *a2 = v5;
  return result;
}

uint64_t sub_227EB7F30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_227F2B674();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_227EB7F5C(uint64_t a1)
{
  v2 = sub_227EB8490(&qword_27D80E048, type metadata accessor for URLResourceKey);
  v3 = sub_227EB8490(&unk_27D80E050, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_227EB81A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCache();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_227EB820C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227F2B644();
  v5 = [a1 stringForKey_];

  if (!v5)
  {

    v6 = 0;
    v8 = 0;
    v10 = 0;
    v16 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v6 = sub_227F2B674();
  v8 = v7;

  v9 = sub_227F2B644();
  v10 = [a1 stringForKey_];

  if (!v10)
  {

    v6 = 0;
    v8 = 0;
LABEL_8:
    v16 = 0;
    v11 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v11 = sub_227F2B674();
  v5 = v12;

  v13 = sub_227F2B644();
  v14 = [a1 stringForKey_];

  if (!v14)
  {

    v6 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v10 = sub_227F2B674();
  v16 = v15;

LABEL_9:
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v16;
  a2[4] = v11;
  a2[5] = v5;
}

uint64_t sub_227EB83D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EB8430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227EB8490(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227EB84D8()
{
  result = qword_2813CD560;
  if (!qword_2813CD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CD560);
  }

  return result;
}

uint64_t sub_227EB853C(uint64_t a1, int a2)
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

uint64_t sub_227EB855C(uint64_t result, int a2, int a3)
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

void sub_227EB8598(uint64_t a1, unint64_t *a2)
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

uint64_t sub_227EB86D8(uint64_t a1)
{
  v2 = sub_227EBFB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8714(uint64_t a1)
{
  v2 = sub_227EBFB58();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227EB8750(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x4F49656C6966;
    v7 = 0x676E69646F63;
    if (a1 != 10)
    {
      v7 = 0x45786F62646E6173;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4D676E697373696DLL;
    v9 = 0x44676E697373696DLL;
    if (a1 != 7)
    {
      v9 = 0x4E73657461647075;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x69796C7265646E75;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C616E7265746E69;
    if (a1 != 1)
    {
      v4 = 0x5264696C61766E69;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_227EB891C()
{
  v1 = *v0;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v1);
  return sub_227F2BD44();
}

uint64_t sub_227EB8964()
{
  v1 = *v0;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v1);
  return sub_227F2BD44();
}

uint64_t sub_227EB89B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EC0E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EB89E4(uint64_t a1)
{
  v2 = sub_227EBFAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8A20(uint64_t a1)
{
  v2 = sub_227EBFAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8A5C(uint64_t a1)
{
  v2 = sub_227EBFBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8A98(uint64_t a1)
{
  v2 = sub_227EBFBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8AD4(uint64_t a1)
{
  v2 = sub_227EBFE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8B10(uint64_t a1)
{
  v2 = sub_227EBFE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8B4C(uint64_t a1)
{
  v2 = sub_227EBFDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8B88(uint64_t a1)
{
  v2 = sub_227EBFDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8BC4(uint64_t a1)
{
  v2 = sub_227EBFC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8C00(uint64_t a1)
{
  v2 = sub_227EBFC54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8C3C(uint64_t a1)
{
  v2 = sub_227EBFCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8C78(uint64_t a1)
{
  v2 = sub_227EBFCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8CC8(uint64_t a1)
{
  v2 = sub_227EBFD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8D04(uint64_t a1)
{
  v2 = sub_227EBFD50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8D40(uint64_t a1)
{
  v2 = sub_227EBFDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8D7C(uint64_t a1)
{
  v2 = sub_227EBFDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8DB8(uint64_t a1)
{
  v2 = sub_227EBFB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8DF4(uint64_t a1)
{
  v2 = sub_227EBFB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_227F2BC64();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_227EB8EB0(uint64_t a1)
{
  v2 = sub_227EBFEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8EEC(uint64_t a1)
{
  v2 = sub_227EBFEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8F28(uint64_t a1)
{
  v2 = sub_227EBFCFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8F64(uint64_t a1)
{
  v2 = sub_227EBFCFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EB8FA0(uint64_t a1)
{
  v2 = sub_227EBFC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EB8FDC(uint64_t a1)
{
  v2 = sub_227EBFC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRDServiceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0C0, &qword_227F2CC20);
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v91 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0C8, &qword_227F2CC28);
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v88 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0D0, &qword_227F2CC30);
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v85 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0D8, &qword_227F2CC38);
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v82 = &v64 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0E0, &qword_227F2CC40);
  v80 = *(v81 - 8);
  v15 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v79 = &v64 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0E8, &qword_227F2CC48);
  v77 = *(v78 - 8);
  v17 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v76 = &v64 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0F0, &qword_227F2CC50);
  v74 = *(v75 - 8);
  v19 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v73 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E0F8, &qword_227F2CC58);
  v96 = *(v21 - 8);
  v97 = v21;
  v22 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v95 = &v64 - v23;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E100, &qword_227F2CC60);
  v71 = *(v72 - 8);
  v24 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = &v64 - v25;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E108, &qword_227F2CC68);
  v68 = *(v69 - 8);
  v26 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v64 - v27;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E110, &qword_227F2CC70);
  v65 = *(v66 - 8);
  v28 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v64 = &v64 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E118, &qword_227F2CC78);
  v94 = *(v30 - 8);
  v31 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E120, &qword_227F2CC80);
  v35 = *(v34 - 8);
  v99 = v34;
  v100 = v35;
  v36 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v38 = &v64 - v37;
  v39 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 16);
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EBFAB0();
  v98 = v38;
  sub_227F2BD94();
  if (v41)
  {
    if (v41 == 1)
    {
      v107 = 4;
      sub_227EBFD50();
      v43 = v95;
      v45 = v98;
      v44 = v99;
      sub_227F2BB84();
      v46 = v97;
      sub_227F2BBD4();
      (*(v96 + 8))(v43, v46);
      return (*(v100 + 8))(v45, v44);
    }

    if (v39 <= 4)
    {
      if (v39 <= 1)
      {
        if (v39 | v40)
        {
          v104 = 2;
          sub_227EBFDF8();
          v63 = v67;
          v52 = v98;
          v51 = v99;
          sub_227F2BB84();
          v53 = *(v68 + 8);
          v54 = v63;
          v55 = &v101;
        }

        else
        {
          v103 = 1;
          sub_227EBFE4C();
          v59 = v64;
          v52 = v98;
          v51 = v99;
          sub_227F2BB84();
          v53 = *(v65 + 8);
          v54 = v59;
          v55 = &v98;
        }
      }

      else if (v39 ^ 2 | v40)
      {
        if (v39 ^ 3 | v40)
        {
          v109 = 6;
          sub_227EBFCA8();
          v62 = v76;
          v52 = v98;
          v51 = v99;
          sub_227F2BB84();
          v53 = *(v77 + 8);
          v54 = v62;
          v55 = &v116;
        }

        else
        {
          v108 = 5;
          sub_227EBFCFC();
          v50 = v73;
          v52 = v98;
          v51 = v99;
          sub_227F2BB84();
          v53 = *(v74 + 8);
          v54 = v50;
          v55 = &v115;
        }
      }

      else
      {
        v105 = 3;
        sub_227EBFDA4();
        v61 = v70;
        v52 = v98;
        v51 = v99;
        sub_227F2BB84();
        v53 = *(v71 + 8);
        v54 = v61;
        v55 = &v106;
      }

      goto LABEL_24;
    }

    if (v39 <= 6)
    {
      if (!(v39 ^ 5 | v40))
      {
        v110 = 7;
        sub_227EBFC54();
        v60 = v79;
        v52 = v98;
        v51 = v99;
        sub_227F2BB84();
        v53 = *(v80 + 8);
        v54 = v60;
        v55 = &v117;
LABEL_24:
        v57 = *(v55 - 32);
LABEL_27:
        v53(v54, v57);
        return (*(v100 + 8))(v52, v51);
      }

      v111 = 8;
      sub_227EBFC00();
      v56 = v82;
      v52 = v98;
      v51 = v99;
      sub_227F2BB84();
      v58 = v83;
      v57 = v84;
    }

    else if (v39 ^ 7 | v40)
    {
      if (v39 ^ 8 | v40)
      {
        v114 = 11;
        sub_227EBFB04();
        v56 = v91;
        v52 = v98;
        v51 = v99;
        sub_227F2BB84();
        v58 = v92;
        v57 = v93;
      }

      else
      {
        v113 = 10;
        sub_227EBFB58();
        v56 = v88;
        v52 = v98;
        v51 = v99;
        sub_227F2BB84();
        v58 = v89;
        v57 = v90;
      }
    }

    else
    {
      v112 = 9;
      sub_227EBFBAC();
      v56 = v85;
      v52 = v98;
      v51 = v99;
      sub_227F2BB84();
      v58 = v86;
      v57 = v87;
    }

    v53 = *(v58 + 8);
    v54 = v56;
    goto LABEL_27;
  }

  v102 = 0;
  sub_227EBFEA0();
  v48 = v98;
  v49 = v99;
  sub_227F2BB84();
  sub_227F2BBD4();
  (*(v94 + 8))(v33, v30);
  return (*(v100 + 8))(v48, v49);
}

uint64_t RRDServiceError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E190, &qword_227F2CC88);
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v117 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E198, &qword_227F2CC90);
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v116 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1A0, &qword_227F2CC98);
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v113 = &v84 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1A8, &qword_227F2CCA0);
  v103 = *(v104 - 8);
  v12 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v115 = &v84 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1B0, &qword_227F2CCA8);
  v101 = *(v102 - 8);
  v14 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v114 = &v84 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1B8, &qword_227F2CCB0);
  v99 = *(v100 - 8);
  v16 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v120 = &v84 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1C0, &qword_227F2CCB8);
  v97 = *(v98 - 8);
  v18 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v112 = &v84 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1C8, &qword_227F2CCC0);
  v96 = *(v94 - 8);
  v20 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v119 = &v84 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1D0, &qword_227F2CCC8);
  v95 = *(v88 - 8);
  v22 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v118 = &v84 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1D8, &qword_227F2CCD0);
  v92 = *(v93 - 8);
  v24 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v111 = &v84 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1E0, &qword_227F2CCD8);
  v90 = *(v91 - 8);
  v26 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1E8, &qword_227F2CCE0);
  v89 = *(v29 - 8);
  v30 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v32 = &v84 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F0, &qword_227F2CCE8);
  v34 = *(v33 - 8);
  v35 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v37 = &v84 - v36;
  v38 = a1[3];
  v39 = a1[4];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_227EBFAB0();
  v40 = v122;
  sub_227F2BD74();
  if (!v40)
  {
    v86 = v28;
    v85 = v29;
    v41 = v118;
    v42 = v119;
    v43 = v120;
    v87 = 0;
    v122 = v34;
    v44 = v121;
    v45 = v33;
    v46 = sub_227F2BB74();
    if (*(v46 + 16) != 1 || (v47 = *(v46 + 32), v47 == 12))
    {
      v54 = sub_227F2B9E4();
      swift_allocError();
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
      *v56 = &type metadata for RRDServiceError;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v122 + 8))(v37, v45);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v123);
    }

    if (*(v46 + 32) > 5u)
    {
      v59 = v122;
      if (*(v46 + 32) > 8u)
      {
        v60 = v45;
        if (v47 == 9)
        {
          v133 = 9;
          sub_227EBFBAC();
          v72 = v113;
          v73 = v87;
          sub_227F2BAE4();
          if (!v73)
          {
            (*(v105 + 8))(v72, v106);
            (*(v59 + 8))(v37, v45);
            swift_unknownObjectRelease();
            v52 = 0;
            v53 = 2;
            v51 = 7;
            goto LABEL_48;
          }
        }

        else
        {
          v65 = v87;
          if (v47 == 10)
          {
            v134 = 10;
            sub_227EBFB58();
            v66 = v116;
            sub_227F2BAE4();
            if (!v65)
            {
              (*(v107 + 8))(v66, v108);
              (*(v59 + 8))(v37, v60);
              swift_unknownObjectRelease();
              v52 = 0;
              v53 = 2;
              v51 = 8;
              goto LABEL_48;
            }
          }

          else
          {
            v135 = 11;
            sub_227EBFB04();
            v79 = v117;
            sub_227F2BAE4();
            if (!v65)
            {
              (*(v109 + 8))(v79, v110);
              (*(v59 + 8))(v37, v60);
              swift_unknownObjectRelease();
              v52 = 0;
              v53 = 2;
              v51 = 9;
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        v60 = v45;
        if (v47 == 6)
        {
          v130 = 6;
          sub_227EBFCA8();
          v70 = v87;
          sub_227F2BAE4();
          if (!v70)
          {
            (*(v99 + 8))(v43, v100);
            (*(v59 + 8))(v37, v45);
            swift_unknownObjectRelease();
            v52 = 0;
            v53 = 2;
            v51 = 4;
            goto LABEL_48;
          }
        }

        else
        {
          v61 = v87;
          if (v47 == 7)
          {
            v131 = 7;
            sub_227EBFC54();
            v62 = v114;
            sub_227F2BAE4();
            if (!v61)
            {
              (*(v101 + 8))(v62, v102);
              (*(v59 + 8))(v37, v60);
              swift_unknownObjectRelease();
              v52 = 0;
              v53 = 2;
              v51 = 5;
              goto LABEL_48;
            }
          }

          else
          {
            v132 = 8;
            sub_227EBFC00();
            v76 = v115;
            sub_227F2BAE4();
            if (!v61)
            {
              (*(v103 + 8))(v76, v104);
              (*(v59 + 8))(v37, v60);
              swift_unknownObjectRelease();
              v52 = 0;
              v53 = 2;
              v51 = 6;
              goto LABEL_48;
            }
          }
        }
      }

      (*(v59 + 8))(v37, v60);
      goto LABEL_11;
    }

    if (*(v46 + 32) <= 2u)
    {
      if (!*(v46 + 32))
      {
        v120 = v46;
        v124 = 0;
        sub_227EBFEA0();
        v67 = v37;
        v68 = v33;
        v69 = v87;
        sub_227F2BAE4();
        if (!v69)
        {
          v80 = v67;
          v81 = v85;
          v51 = sub_227F2BB44();
          v52 = v82;
          (*(v89 + 8))(v32, v81);
          (*(v122 + 8))(v80, v68);
          swift_unknownObjectRelease();
          v53 = 0;
          goto LABEL_48;
        }

        (*(v122 + 8))(v67, v33);
        goto LABEL_11;
      }

      if (v47 == 1)
      {
        v125 = 1;
        sub_227EBFE4C();
        v48 = v86;
        v49 = v45;
        v50 = v87;
        sub_227F2BAE4();
        if (!v50)
        {
          (*(v90 + 8))(v48, v91);
          (*(v122 + 8))(v37, v45);
          swift_unknownObjectRelease();
          v51 = 0;
          v52 = 0;
          v53 = 2;
LABEL_48:
          *v44 = v51;
          *(v44 + 8) = v52;
          *(v44 + 16) = v53;
          return __swift_destroy_boxed_opaque_existential_0(v123);
        }
      }

      else
      {
        v126 = 2;
        sub_227EBFDF8();
        v74 = v111;
        v49 = v45;
        v75 = v87;
        sub_227F2BAE4();
        if (!v75)
        {
          (*(v92 + 8))(v74, v93);
          (*(v122 + 8))(v37, v45);
          swift_unknownObjectRelease();
          v52 = 0;
          v53 = 2;
          v51 = 1;
          goto LABEL_48;
        }
      }

      goto LABEL_35;
    }

    if (v47 == 3)
    {
      v127 = 3;
      sub_227EBFDA4();
      v71 = v87;
      sub_227F2BAE4();
      if (!v71)
      {
        (*(v95 + 8))(v41, v88);
        (*(v122 + 8))(v37, v33);
        swift_unknownObjectRelease();
        v52 = 0;
        v51 = 2;
        v53 = 2;
        goto LABEL_48;
      }

      (*(v122 + 8))(v37, v33);
      goto LABEL_11;
    }

    v120 = v46;
    v49 = v33;
    if (v47 == 4)
    {
      v128 = 4;
      sub_227EBFD50();
      v63 = v87;
      sub_227F2BAE4();
      if (!v63)
      {
        v64 = v94;
        v51 = sub_227F2BB44();
        v52 = v83;
        (*(v96 + 8))(v42, v64);
        (*(v122 + 8))(v37, v49);
        swift_unknownObjectRelease();
        v53 = 1;
LABEL_47:
        v44 = v121;
        goto LABEL_48;
      }
    }

    else
    {
      v129 = 5;
      sub_227EBFCFC();
      v77 = v112;
      v78 = v87;
      sub_227F2BAE4();
      if (!v78)
      {
        (*(v97 + 8))(v77, v98);
        (*(v122 + 8))(v37, v33);
        swift_unknownObjectRelease();
        v52 = 0;
        v53 = 2;
        v51 = 3;
        goto LABEL_47;
      }
    }

LABEL_35:
    (*(v122 + 8))(v37, v49);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v123);
}

uint64_t sub_227EBAD8C()
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

uint64_t sub_227EBADC0()
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

uint64_t sub_227EBADF4()
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

uint64_t sub_227EBAE28()
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

uint64_t sub_227EBAEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = *(v6 + 16);
  v16(v30 - v14, v2, a1);
  if (swift_dynamicCast())
  {
    v17 = v32;
    *a2 = v31;
    *(a2 + 16) = v17;
  }

  else
  {
    v30[0] = a2;
    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    v16(v13, v2, a1);
    v18 = sub_227F2BC44();
    if (v18)
    {
      v19 = v18;
      (*(v6 + 8))(v13, a1);
    }

    else
    {
      v19 = swift_allocError();
      (*(v6 + 32))(v20, v13, a1);
    }

    v21 = sub_227F2AFB4();

    v22 = [v21 code];
    v30[1] = v22;
    v23 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v23);

    v24 = v31;
    *&v31 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    *&v31 = sub_227F2B6D4();
    *(&v31 + 1) = v25;
    MEMORY[0x22AAAC3E0](46, 0xE100000000000000);
    v16(v10, v3, a1);
    v26 = sub_227F2B6C4();
    MEMORY[0x22AAAC3E0](v26);

    MEMORY[0x22AAAC3E0](0x2065646F632820, 0xE700000000000000);
    MEMORY[0x22AAAC3E0](v24, *(&v24 + 1));

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v27 = *(&v31 + 1);
    v28 = v30[0];
    *v30[0] = v31;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
  }

  return (*(v6 + 8))(v15, a1);
}

uint64_t RRDClient.__allocating_init()()
{
  v2 = v0;
  v3 = sub_227F2B374();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_227F2B3A4();
  sub_227F2B364();
  v6 = v5;
  v7 = sub_227F2B354();
  if (!v1)
  {
    v8 = v7;
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = *(v2 + 48);
    v11 = *(v2 + 52);
    v6 = swift_allocObject();
    sub_227EBCE48(v8, v9);
  }

  return v6;
}

uint64_t RRDClient.resourceUpdatesFolder()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RRDResponse(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for RRDRequest(0);
  v2[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_227F2B4C4();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EBB40C, 0, 0);
}

uint64_t sub_227EBB40C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = *(v0[3] + 16);
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest);
  sub_227F2B394();
  sub_227EBFF7C(v2, type metadata accessor for RRDRequest);
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[4];
  sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse);
  sub_227F2B4B4();
  v14 = v0[4];
  sub_227EC13A4(v0[6], v0[5], type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = v0[10];
      v35 = v0[11];
      v37 = v0[9];
      v39 = v0[5];
      v38 = v0[6];
      sub_227EBFEF4();
      swift_allocError();
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 2;
      swift_willThrow();
      sub_227EBFF7C(v38, type metadata accessor for RRDResponse);
      (*(v36 + 8))(v35, v37);
      sub_227EBFF7C(v39, type metadata accessor for RRDResponse);
    }

    else
    {
      v17 = v0[10];
      v16 = v0[11];
      v18 = v0[9];
      v19 = v0[5];
      v20 = v0[6];
      v21 = *v19;
      v22 = v19[1];
      v23 = *(v19 + 16);
      sub_227EBFEF4();
      swift_allocError();
      *v24 = v21;
      *(v24 + 8) = v22;
      *(v24 + 16) = v23;
      swift_willThrow();
      sub_227EBFF7C(v20, type metadata accessor for RRDResponse);
      (*(v17 + 8))(v16, v18);
    }

    goto LABEL_2;
  }

  v25 = v0[2];
  v26 = *v0[5];
  v27 = [v26 url];
  sub_227F2B084();

  v28 = sub_227F2B094();
  v30 = v0[10];
  v29 = v0[11];
  v31 = v0[9];
  if ((v28 & 1) == 0)
  {
    v41 = v0[6];
    v42 = v0[2];
    sub_227EBFEF4();
    swift_allocError();
    *v43 = xmmword_227F2CBD0;
    *(v43 + 16) = 2;
    swift_willThrow();

    v44 = sub_227F2B114();
    (*(*(v44 - 8) + 8))(v42, v44);
    sub_227EBFF7C(v41, type metadata accessor for RRDResponse);
    (*(v30 + 8))(v29, v31);
LABEL_2:
    v8 = v0[11];
    v9 = v0[8];
    v11 = v0[5];
    v10 = v0[6];

    v12 = v0[1];
    goto LABEL_3;
  }

  v32 = v0[8];
  v34 = v0[5];
  v33 = v0[6];

  sub_227EBFF7C(v33, type metadata accessor for RRDResponse);
  (*(v30 + 8))(v29, v31);

  v12 = v0[1];
LABEL_3:

  return v12();
}

uint64_t RRDClient.resourceUpdatesFolder(forAssetFolder:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for ResourceUpdatesResponse(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for RRDResponse(0);
  v3[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for RRDRequest(0);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_227F2B4C4();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = sub_227F2B114();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v15 = type metadata accessor for ResourceUpdatesRequest(0);
  v3[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EBBA58, 0, 0);
}

uint64_t sub_227EBBA58()
{
  v74 = v0;
  (*(v0[15] + 16))(v0[17], v0[3], v0[14]);
  if (qword_27D80DEF0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = qword_27D81B140;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_227EBFF48;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_227EBFF64(&v71);
  os_unfair_lock_unlock(v2 + 4);
  v5 = *(&v71 + 1);
  v4 = v71;
  v6 = v72;
  v7 = v73;

  if (v5)
  {

    v66 = v7;
    v67 = v6;
  }

  else
  {
    v4 = 0;
    v66 = 0;
    v67 = 0;
  }

  v8 = v0[18];
  v9 = v0[19];
  v69 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[4];
  v13 = *(v0[15] + 32);
  v13(v9, v0[17], v0[14]);
  v14 = (v9 + *(v8 + 20));
  *v14 = v4;
  v14[1] = v5;
  v14[2] = v67;
  v14[3] = v66;
  v15 = *(v12 + 16);
  sub_227EC13A4(v9, v10, type metadata accessor for ResourceUpdatesRequest);
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest);
  sub_227F2B394();
  sub_227EBFF7C(v10, type metadata accessor for RRDRequest);
  v16 = v13;
  v17 = v0[13];
  v18 = v0[8];
  v19 = v0[6];
  sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse);
  sub_227F2B4B4();
  v20 = v0[6];
  sub_227EC13A4(v0[8], v0[7], type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_227EBFF7C(v0[7], type metadata accessor for RRDResponse);
      sub_227EBFEF4();
      swift_allocError();
      *v53 = 0;
      *(v53 + 8) = 0;
      *(v53 + 16) = 2;
      goto LABEL_15;
    }

    v27 = v0[19];
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = v0[8];
    v32 = v0[5];
    v33 = v0[2];
    sub_227EC16AC(v0[7], v32, type metadata accessor for ResourceUpdatesResponse);
    sub_227EBC0C0(v32, v33);
    sub_227EBFF7C(v32, type metadata accessor for ResourceUpdatesResponse);
    sub_227EBFF7C(v31, type metadata accessor for RRDResponse);
    (*(v29 + 8))(v28, v30);
    sub_227EBFF7C(v27, type metadata accessor for ResourceUpdatesRequest);
LABEL_13:
    v44 = v0[19];
    v45 = v0[16];
    v46 = v0[17];
    v47 = v0[13];
    v48 = v0[10];
    v50 = v0[7];
    v49 = v0[8];
    v51 = v0[5];

    v52 = v0[1];
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v34 = v0[16];
    v35 = *v0[7];
    v36 = [v35 url];
    sub_227F2B084();

    v37 = sub_227F2B094();
    v38 = v0[14];
    if ((v37 & 1) == 0)
    {
      v64 = v0[15];
      v63 = v0[16];
      sub_227EBFEF4();
      swift_allocError();
      *v65 = xmmword_227F2CBD0;
      *(v65 + 16) = 2;
      swift_willThrow();

      (*(v64 + 8))(v63, v38);
      goto LABEL_16;
    }

    v68 = v0[19];
    v70 = v0[16];
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];
    v42 = v0[8];
    v43 = v0[2];

    sub_227EBFF7C(v42, type metadata accessor for RRDResponse);
    (*(v40 + 8))(v39, v41);
    sub_227EBFF7C(v68, type metadata accessor for ResourceUpdatesRequest);
    v16(v43, v70, v38);
    goto LABEL_13;
  }

  v22 = v0[7];
  v24 = *v22;
  v23 = v22[1];
  v25 = *(v22 + 16);
  sub_227EBFEF4();
  swift_allocError();
  *v26 = v24;
  *(v26 + 8) = v23;
  *(v26 + 16) = v25;
LABEL_15:
  swift_willThrow();
LABEL_16:
  sub_227EBFF7C(v0[8], type metadata accessor for RRDResponse);
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_227EBFF7C(v0[19], type metadata accessor for ResourceUpdatesRequest);
  v54 = v0[19];
  v55 = v0[16];
  v56 = v0[17];
  v57 = v0[13];
  v58 = v0[10];
  v60 = v0[7];
  v59 = v0[8];
  v61 = v0[5];

  v52 = v0[1];
LABEL_17:

  return v52();
}

void sub_227EBC0C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a2;
  v81 = *MEMORY[0x277D85DE8];
  v5 = sub_227F2AFF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227F2B454();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = type metadata accessor for ResourceUpdatesResponse(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227EC13A4(a1, v20, type metadata accessor for ResourceUpdatesResponse);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v22 = (*(*(v21 - 8) + 48))(v20, 2, v21);
  if (!v22)
  {
    v71 = v2;
    v28 = v9;
    v29 = v10;
    v31 = *v20;
    v30 = v20[1];
    v32 = *(v21 + 48);
    v33 = (v20 + *(v21 + 64));
    v34 = v16;
    v35 = *v33;
    v36 = v33[1];
    v75 = v34;
    v76 = v29;
    v37 = *(v29 + 32);
    v72 = v28;
    v37();

    v38 = sub_227F2B304();
    v39 = sub_227F2B8F4();

    v40 = os_log_type_enabled(v38, v39);
    v67 = v6;
    v68 = v5;
    v73 = v36;
    v74 = v30;
    v69 = v35;
    v70 = v31;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v80[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_227ECAC40(v31, v30, v80);
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_227ECAC40(v35, v36, v80);
      _os_log_impl(&dword_227EB2000, v38, v39, "Received new update resource %s digest %{public}s. Caching.", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v42, -1, -1);
      MEMORY[0x22AAAD240](v41, -1, -1);
    }

    v44 = v75;
    v43 = v76;
    v45 = v72;
    (*(v76 + 16))(v14, v75, v72);
    v46 = sub_227F2B434();
    v47 = sub_227F2B344();
    v3 = v71;
    if (v46 == v47)
    {
      v54 = sub_227F2B414();
      v24 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
      swift_unknownObjectRelease();
      v55 = *(v43 + 8);
      v76 = v43 + 8;
      v56 = v55(v14, v45);
      if (qword_27D80DEF0 != -1)
      {
        v56 = swift_once();
      }

      v57 = qword_27D81B140;
      v58 = MEMORY[0x28223BE20](v56);
      v60 = v69;
      v59 = v70;
      *(&v67 - 6) = v79;
      *(&v67 - 5) = v60;
      v61 = v74;
      *(&v67 - 4) = v73;
      *(&v67 - 3) = v59;
      *(&v67 - 2) = v61;
      *(&v67 - 1) = v24;
      MEMORY[0x28223BE20](v58);
      *(&v67 - 2) = sub_227EC14AC;
      *(&v67 - 1) = v62;
      os_unfair_lock_lock(v57 + 4);
      sub_227EC14D0();
      v63 = v57 + 4;
      if (v3)
      {
        os_unfair_lock_unlock(v63);
        v55(v75, v45);
      }

      else
      {
        os_unfair_lock_unlock(v63);

        *&v80[0] = 0;
        if (([v24 closeAndReturnError:v80]& 1) != 0)
        {
          v64 = *&v80[0];
          v55(v75, v45);
          v6 = v67;
          v5 = v68;
          v23 = v79;
          goto LABEL_12;
        }

        v65 = *&v80[0];
        sub_227F2AFC4();

        swift_willThrow();
        v55(v75, v45);
      }
    }

    else
    {

      sub_227EBFEF4();
      swift_allocError();
      *v48 = xmmword_227F2CBE0;
      *(v48 + 16) = 2;
      swift_willThrow();
      v49 = *(v43 + 8);
      v49(v14, v45);
      v49(v44, v45);
    }

LABEL_25:
    v66 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v22 == 1)
  {
    v23 = v79;
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Cached update resource is still up to date.";
  }

  else
  {
    v23 = v79;
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Cached update resource is within the grace period window.";
  }

  _os_log_impl(&dword_227EB2000, v24, v25, v27, v26, 2u);
  MEMORY[0x22AAAD240](v26, -1, -1);
LABEL_12:

  if (qword_27D80DEF0 != -1)
  {
    v50 = swift_once();
  }

  v51 = qword_27D81B140;
  MEMORY[0x28223BE20](v50);
  *(&v67 - 2) = sub_227EC19B8;
  *(&v67 - 1) = v23;
  os_unfair_lock_lock(v51 + 4);
  sub_227EC198C(v80);
  if (!v3)
  {
    os_unfair_lock_unlock(v51 + 4);
    if (*(&v80[0] + 1))
    {
      v80[0] = v80[1];
      v52 = v77;
      (*(v6 + 104))(v77, *MEMORY[0x277CC91C0], v5);
      sub_227EB84D8();

      sub_227F2B0F4();

      (*(v6 + 8))(v52, v5);
    }

    else
    {
      sub_227EC1458();
      swift_allocError();
      *v53 = xmmword_227F2CBF0;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      swift_willThrow();
    }

    goto LABEL_25;
  }

  os_unfair_lock_unlock(v51 + 4);
  __break(1u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RRDClient.readSanitizedConfig()()
{
  v30 = type metadata accessor for RRDResponse(0);
  v2 = *(*(v30 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v30);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for RRDRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227F2B4C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  sub_227EC1664(&qword_27D80E200, type metadata accessor for RRDRequest);
  sub_227F2B394();
  v18 = sub_227EBFF7C(v11, type metadata accessor for RRDRequest);
  if (!v1)
  {
    v20 = v12;
    sub_227EC1664(&qword_27D80E208, type metadata accessor for RRDResponse);
    sub_227F2B4B4();
    v21 = v5;
    sub_227EC13A4(v7, v5, type metadata accessor for RRDResponse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      sub_227EBFF7C(v7, type metadata accessor for RRDResponse);
      (*(v13 + 8))(v16, v20);
      v18 = *v5;
      v19 = v5[1];
    }

    else if (EnumCaseMultiPayload)
    {
      sub_227EBFEF4();
      swift_allocError();
      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 2;
      swift_willThrow();
      sub_227EBFF7C(v7, type metadata accessor for RRDResponse);
      (*(v13 + 8))(v16, v20);
      v18 = sub_227EBFF7C(v5, type metadata accessor for RRDResponse);
    }

    else
    {
      v23 = *v5;
      v24 = v5[1];
      v25 = *(v21 + 16);
      sub_227EBFEF4();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v24;
      *(v26 + 16) = v25;
      swift_willThrow();
      sub_227EBFF7C(v7, type metadata accessor for RRDResponse);
      v18 = (*(v13 + 8))(v16, v20);
    }
  }

  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_227EBCD58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E350, &qword_227F2D9A8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27D81B140 = result;
  return result;
}

double sub_227EBCD98@<D0>(_OWORD *a1@<X8>)
{
  sub_227EB5F0C(&v4);
  if (*(&v4 + 1))
  {
    v7 = v4;

    sub_227EB80AC(&v7);
    v8 = v5;
    sub_227EB80AC(&v8);
    v9 = v6;
    sub_227EB80AC(&v9);
  }

  v2 = v5;
  *a1 = v4;
  a1[1] = v2;
  result = *&v6;
  a1[2] = v6;
  return result;
}

char *sub_227EBCE48(uint64_t a1, void *a2)
{
  v3 = v2;
  v69[2] = *MEMORY[0x277D85DE8];
  v67 = *v2;
  v52 = type metadata accessor for ClientCache();
  v6 = *(*(v52 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_227F2AFF4();
  v56 = *(v60 - 8);
  v8 = *(v56 + 64);
  (MEMORY[0x28223BE20])();
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_227F2B114();
  v61 = *(v63 - 8);
  v10 = *(v61 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v51 - v15;
  v16 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  if (qword_27D80DF38 != -1)
  {
    swift_once();
  }

  v17 = sub_227F2B334();
  v18 = __swift_project_value_buffer(v17, qword_27D81B1F8);
  v19 = *(v17 - 8);
  v20 = *(v19 + 16);
  v66 = v16;
  v20(&v2[v16], v18, v17);
  v21 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_fileManager;
  v22 = objc_opt_self();
  *&v2[v21] = [v22 defaultManager];
  *(v2 + 2) = a1;
  v64 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_defaults;
  v65 = v21;
  *&v2[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_defaults] = a2;

  v23 = a2;
  v51 = v22;
  v24 = a1;
  v25 = [v22 defaultManager];
  v69[0] = 0;
  v26 = [v25 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v69];

  v27 = v69[0];
  if (v26)
  {
    v54 = v23;
    v55 = v24;
    v28 = v68;
    sub_227F2B084();
    v29 = v27;

    v69[0] = 0xD000000000000024;
    v69[1] = 0x8000000227F339A0;
    v30 = v56;
    v31 = v58;
    v32 = v60;
    (*(v56 + 104))(v58, *MEMORY[0x277CC91C0], v60);
    sub_227EB84D8();
    v33 = v57;
    sub_227F2B0F4();
    (*(v30 + 8))(v31, v32);
    v34 = v33;
    v35 = v59;
    v36 = v62;
    sub_227F2A3D0(v59);
    if (!v36)
    {
      v43 = v61;
      v44 = *(v61 + 8);
      v45 = v63;
      v44(v33, v63);
      v46 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder;
      (*(v43 + 32))(&v3[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder], v35, v45);
      v47 = v53;
      (*(v43 + 16))(&v53[*(v52 + 24)], &v3[v46], v45);
      v48 = [v51 defaultManager];

      v44(v68, v45);
      *v47 = v54;
      v47[1] = v48;
      sub_227EC16AC(v47, &v3[OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache], type metadata accessor for ClientCache);
      goto LABEL_9;
    }

    v37 = *(v61 + 8);
    v38 = v63;
    v37(v34, v63);
    v37(v28, v38);
  }

  else
  {
    v39 = v69[0];
    sub_227F2AFC4();

    swift_willThrow();
  }

  v40 = *(v3 + 2);

  (*(v19 + 8))(&v3[v66], v17);

  v41 = *(*v3 + 48);
  v42 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
LABEL_9:
  v49 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RRDClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_227F2B384();

  v3 = *(v1 + 16);

  v4 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  v5 = sub_227F2B334();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  sub_227EBFF7C(v1 + OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache, type metadata accessor for ClientCache);
  v6 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cacheFolder;
  v7 = sub_227F2B114();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t RRDClient.__deallocating_deinit()
{
  RRDClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_227EBD5E4(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v147 = a6;
  v155 = a5;
  v154 = a4;
  v158 = a3;
  v184 = *MEMORY[0x277D85DE8];
  v145 = sub_227F2B504();
  v144 = *(v145 - 8);
  v8 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_227F2B5A4();
  v146 = *(v149 - 8);
  v10 = *(v146 + 64);
  MEMORY[0x28223BE20](v149);
  v148 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_227F2AFF4();
  v163 = *(v162 - 1);
  v12 = *(v163 + 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227F2B114();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v151 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v131 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v131 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v153 = &v131 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v131 - v26;
  v28 = sub_227F2B274();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a1;
  v157 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_cache;
  sub_227EB5F0C(&v180);
  v160 = v15;
  if (v181)
  {
    v152 = v23;
    v165 = v183;
    v33 = v183;
    v166[0] = v180;
    v166[1] = v181;

    sub_227EB80AC(v166);
    v167 = v182;
    sub_227EB80AC(&v167);
    sub_227EB80AC(&v165);
    if (v33 == __PAIR128__(v158, a2))
    {
      sub_227EB80AC(&v165);
LABEL_5:
      v35 = sub_227F2B304();
      v36 = sub_227F2B8F4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_227EB2000, v35, v36, "Received updates that have already been cached.", v37, 2u);
        MEMORY[0x22AAAD240](v37, -1, -1);
      }

      goto LABEL_22;
    }

    v34 = sub_227F2BC64();
    sub_227EB80AC(&v165);
    v23 = v152;
    if (v34)
    {
      goto LABEL_5;
    }
  }

  v156 = v14;
  v138 = a2;
  v38 = v164;
  sub_227EB6198();
  sub_227EB6420();
  sub_227F2B264();
  v39 = sub_227F2B254();
  v41 = v40;
  (*(v29 + 8))(v32, v28);
  v137 = v39;
  v175 = v39;
  v176 = v41;
  v42 = *MEMORY[0x277CC91C0];
  v43 = v163;
  v44 = v161;
  v45 = v162;
  v152 = *(v163 + 13);
  (v152)(v161, v42, v162);
  v142 = sub_227EB84D8();
  sub_227F2B0F4();
  v47 = *(v43 + 1);
  v46 = (v43 + 8);
  v141 = v47;
  v47(v44, v45);
  v48 = *(v38 + OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_fileManager);
  v49 = sub_227F2B044();
  v175 = 0;
  LODWORD(v44) = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v175];

  v50 = v175;
  if (!v44)
  {
    v67 = v175;

    sub_227F2AFC4();

    swift_willThrow();
    v68 = *(v160 + 8);
    v69 = v27;
    v70 = &v183;
    goto LABEL_12;
  }

  v136 = v48;
  v163 = v46;
  v139 = v41;
  v51 = OBJC_IVAR____TtC21RapidResourceDelivery9RRDClient_log;
  v52 = v160;
  v53 = *(v160 + 16);
  v54 = v153;
  v140 = v27;
  v55 = v156;
  v135 = v160 + 16;
  v134 = v53;
  v53(v153, v27, v156);
  v56 = v50;
  v133 = v51;
  v57 = sub_227F2B304();
  v58 = sub_227F2B8D4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v175 = v132;
    *v59 = 136315138;
    sub_227EC1664(&qword_27D80E008, MEMORY[0x277CC9260]);
    v60 = sub_227F2BC24();
    v61 = v54;
    v63 = v62;
    v64 = *(v52 + 8);
    v64(v61, v55);
    v65 = sub_227ECAC40(v60, v63, &v175);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_227EB2000, v57, v58, "Created new cache subfolder %s", v59, 0xCu);
    v66 = v132;
    __swift_destroy_boxed_opaque_existential_0(v132);
    MEMORY[0x22AAAD240](v66, -1, -1);
    MEMORY[0x22AAAD240](v59, -1, -1);
  }

  else
  {

    v64 = *(v52 + 8);
    v64(v54, v55);
  }

  v71 = v159;
  v175 = v154;
  v176 = v155;
  v72 = v161;
  v73 = v162;
  (v152)(v161, *MEMORY[0x277CC91D8], v162);
  v74 = v140;
  sub_227F2B0F4();
  v141(v72, v73);
  sub_227F2B0A4();
  v75 = sub_227F2B644();

  LODWORD(v73) = [v136 createFileAtPath:v75 contents:0 attributes:0];

  if (!v73)
  {

    v82 = v151;
    v152 = v23;
    v83 = v156;
    v134(v151, v23, v156);
    v84 = sub_227F2B304();
    v85 = sub_227F2B8E4();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v175 = v164;
      *v86 = 136446210;
      sub_227EC1664(&qword_27D80E008, MEMORY[0x277CC9260]);
      v87 = sub_227F2BC24();
      v89 = v88;
      v64(v82, v83);
      v90 = sub_227ECAC40(v87, v89, &v175);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_227EB2000, v84, v85, "Couldn't write updates to %{public}s.", v86, 0xCu);
      v91 = v164;
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x22AAAD240](v91, -1, -1);
      MEMORY[0x22AAAD240](v86, -1, -1);
    }

    else
    {

      v64(v82, v83);
    }

    sub_227EC1458();
    swift_allocError();
    *v92 = xmmword_227F2CC00;
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    swift_willThrow();
    v64(v152, v83);
    v64(v140, v83);
    goto LABEL_22;
  }

  v163 = v64;
  sub_227EC14F8();
  v76 = v150;
  v134(v150, v23, v156);
  v77 = sub_227EBEC94(v76);
  v78 = v23;
  if (v71)
  {

LABEL_17:

    sub_227EC1458();
    swift_allocError();
    *v79 = xmmword_227F2CC00;
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    swift_willThrow();
    v80 = v156;
    v81 = v163;
    v163(v23, v156);
    v81(v74, v80);
    goto LABEL_22;
  }

  if (!v77)
  {
    goto LABEL_17;
  }

  v162 = v77;
  v94 = v148;
  sub_227F2B594();
  while (1)
  {
    v96 = sub_227F2B8A4();
    v97 = v95;
    if (v95 >> 60 == 15)
    {
      break;
    }

    v98 = v95 >> 62;
    if ((v95 >> 62) > 1)
    {
      if (v98 != 2)
      {
        goto LABEL_46;
      }

      v99 = *(v96 + 16);
      v100 = *(v96 + 24);
    }

    else
    {
      if (!v98)
      {
        if ((v95 & 0xFF000000000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }

      v99 = v96;
      v100 = v96 >> 32;
    }

    if (v99 == v100)
    {
LABEL_46:
      sub_227EC1650(v96, v95);
      break;
    }

LABEL_36:
    v175 = v96;
    v176 = v95;
    sub_227EC15FC();
    sub_227F2B8B4();
    if (v98 == 2)
    {
      v101 = *(v96 + 16);
      v102 = *(v96 + 24);

      if (sub_227F2AEF4() && __OFSUB__(v101, sub_227F2AF14()))
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v102, v101))
      {
        goto LABEL_58;
      }

      goto LABEL_41;
    }

    if (v98 == 1)
    {
      if (v96 >> 32 < v96)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      if (sub_227F2AEF4() && __OFSUB__(v96, sub_227F2AF14()))
      {
        goto LABEL_60;
      }

LABEL_41:
      sub_227F2AF04();
      sub_227EC1664(&qword_27D80E348, MEMORY[0x277CC5540]);
      v94 = v148;
      sub_227F2B4D4();
      sub_227EC1650(v96, v97);
      sub_227EC1650(v96, v97);
    }

    else
    {
      v175 = v96;
      LOWORD(v176) = v97;
      BYTE2(v176) = BYTE2(v97);
      BYTE3(v176) = BYTE3(v97);
      BYTE4(v176) = BYTE4(v97);
      BYTE5(v176) = BYTE5(v97);
      sub_227EC1664(&qword_27D80E348, MEMORY[0x277CC5540]);
      sub_227F2B4D4();
      sub_227EC1650(v96, v97);
      sub_227EC1650(v96, v97);
    }
  }

  v175 = 0;
  v103 = v162;
  if ([v162 closeAndReturnError_])
  {
    v104 = v175;
    v161 = sub_227F2B024();
    v106 = v105;
    v107 = v143;
    sub_227F2B584();
    v108 = v145;
    v178 = v145;
    v179 = sub_227EC1664(&qword_27D80E338, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
    v110 = v144;
    (*(v144 + 16))(boxed_opaque_existential_1, v107, v108);
    __swift_project_boxed_opaque_existential_1(&v175, v178);
    sub_227F2AF34();
    (*(v110 + 8))(v107, v108);
    v112 = v173;
    v111 = v174;
    __swift_destroy_boxed_opaque_existential_0(&v175);
    v114 = sub_227F2B154();
    v115 = v113;
    v116 = v158;
    if (v114 == v138 && v113 == v158 || (sub_227F2BC64() & 1) != 0)
    {

      *&v168 = v161;
      *(&v168 + 1) = v106;
      v169 = v137;
      v170 = v139;
      v171 = v138;
      v172 = v116;

      sub_227EB6278(&v168);

      sub_227EC15A8(v112, v111);

      v117 = v156;
      v118 = v163;
      v163(v78, v156);
      v118(v140, v117);
      (*(v146 + 8))(v148, v149);
      goto LABEL_22;
    }

    v161 = v112;

    v122 = sub_227F2B304();
    v123 = sub_227F2B8E4();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v175 = v125;
      *v124 = 136315394;
      *(v124 + 4) = sub_227ECAC40(v114, v115, &v175);
      *(v124 + 12) = 2080;
      v126 = v138;
      *(v124 + 14) = sub_227ECAC40(v138, v158, &v175);
      _os_log_impl(&dword_227EB2000, v122, v123, "Digest of received data did not agree with expected value. Computed digest %s, input digest %s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v125, -1, -1);
      v116 = v158;
      MEMORY[0x22AAAD240](v124, -1, -1);

      v127 = v156;
      v128 = v148;
    }

    else
    {

      v127 = v156;
      v128 = v148;
      v126 = v138;
    }

    sub_227EC1458();
    swift_allocError();
    *v129 = v126;
    v129[1] = v116;
    v129[2] = v114;
    v129[3] = v115;
    swift_willThrow();

    sub_227EC15A8(v161, v111);
    v130 = v163;
    v163(v78, v127);
    v130(v140, v127);
    v68 = *(v146 + 8);
    v69 = v128;
  }

  else
  {
    v119 = v175;

    sub_227F2AFC4();

    swift_willThrow();
    v120 = v156;
    v121 = v163;
    v163(v23, v156);
    v121(v140, v120);
    v68 = *(v146 + 8);
    v69 = v94;
  }

  v70 = &v177;
LABEL_12:
  v68(v69, *(v70 - 32));
LABEL_22:
  v93 = *MEMORY[0x277D85DE8];
}

id sub_227EBEC94(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B044();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_227F2B114();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_227F2AFC4();

    swift_willThrow();
    v9 = sub_227F2B114();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void rrd_store_config_sysdiagnose(void *a1, void *a2)
{
  v3 = a1;
  rrd_store_config_sysdiagnose(directory:error:)(v3, a2);
}

void rrd_store_config_sysdiagnose(directory:error:)(void *a1, void *a2)
{
  v7 = 0;
  v4 = MEMORY[0x22AAACB70]();
  sub_227EBEEB4(a1, &v7);
  objc_autoreleasePoolPop(v4);
  v5 = v7;
  if (a2)
  {
    v6 = v7;
    *a2 = v6;
    v5 = v6;
  }
}

uint64_t sub_227EBEEB4(void *a1, void **a2)
{
  v56 = a2;
  v60 = sub_227F2B334();
  v58 = *(v60 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227F2B6B4();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227F2B374();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_227F2B114();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = sub_227F2B644();
  v26 = [a1 URLByAppendingPathComponent:v25 isDirectory:0];

  if (v26)
  {
    sub_227F2B084();

    (*(v11 + 56))(v22, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v22, 1, 1, v10);
  }

  sub_227EC1270(v22, v24);
  sub_227EC12E0(v24, v19);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_227EB8430(v19, &qword_27D80E310, &unk_227F2D990);
    sub_227EC1350();
    v27 = swift_allocError();
    swift_willThrow();
    v28 = v24;
  }

  else
  {
    (*(v11 + 32))(v14, v19, v10);
    sub_227F2B3A4();
    sub_227F2B364();
    v29 = v55;
    v30 = sub_227F2B354();
    v27 = v29;
    if (!v29)
    {
      v31 = v30;
      v32 = [objc_opt_self() standardUserDefaults];
      v33 = type metadata accessor for RRDClient();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      sub_227EBCE48(v31, v32);
      v37 = RRDClient.readSanitizedConfig()();
      v27 = v38;
      if (!v38)
      {
        v55 = v36;
        v59 = v37;
        v50 = v52;
        sub_227F2B6A4();
        sub_227EB84D8();
        sub_227F2B944();

        (*(v53 + 8))(v50, v54);
        (*(v11 + 8))(v14, v10);
        sub_227EB8430(v24, &qword_27D80E310, &unk_227F2D990);
      }
    }

    (*(v11 + 8))(v14, v10);
    v28 = v24;
  }

  sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
  v39 = sub_227F2AFB4();
  v40 = *v56;
  *v56 = v39;

  v41 = v57;
  sub_227F2B324();
  v42 = v27;
  v43 = sub_227F2B304();
  v44 = sub_227F2B8E4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = v27;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_227EB2000, v43, v44, "sysdiagnose shim failed: %@", v45, 0xCu);
    sub_227EB8430(v46, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v46, -1, -1);
    MEMORY[0x22AAAD240](v45, -1, -1);
  }

  else
  {
  }

  return (*(v58 + 8))(v41, v60);
}

uint64_t sub_227EBF5B8()
{
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](0);
  return sub_227F2BD44();
}

uint64_t sub_227EBF5FC()
{
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](0);
  return sub_227F2BD44();
}

uint64_t _s21RapidResourceDelivery15RRDServiceErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_227F2BC64();
      sub_227EC1714(v6, v5, 0);
      sub_227EC1714(v3, v2, 0);
      sub_227EC172C(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_32;
    }

    sub_227EC1714(v17, v2, 0);
    sub_227EC1714(v3, v2, 0);
    sub_227EC172C(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
    goto LABEL_69;
  }

  if (v4 != 1)
  {
    if (v3 > 4)
    {
      if (v3 <= 6)
      {
        if (v3 ^ 5 | v2)
        {
          if (v7 != 2 || v6 != 6 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v16 = 6;
        }

        else
        {
          if (v7 != 2 || v6 != 5 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v16 = 5;
        }
      }

      else if (v3 ^ 7 | v2)
      {
        if (v3 ^ 8 | v2)
        {
          if (v7 != 2 || v6 != 9 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v16 = 9;
        }

        else
        {
          if (v7 != 2 || v6 != 8 || v5)
          {
            goto LABEL_10;
          }

          sub_227EC172C(*a1, v2, 2u);
          v16 = 8;
        }
      }

      else
      {
        if (v7 != 2 || v6 != 7 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v16 = 7;
      }
    }

    else if (v3 <= 1)
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_227EC172C(*a1, v2, 2u);
          v14 = 1;
          sub_227EC172C(1, 0, 2u);
          return v14;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_227EC1714(*a2, *(a2 + 8), v7);
        sub_227EC1714(v3, v2, v4);
        sub_227EC172C(v3, v2, v4);
        sub_227EC172C(v6, v5, v7);
        return 0;
      }

      sub_227EC172C(*a1, v2, 2u);
      v16 = 0;
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 2 || v6 != 4 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v16 = 4;
      }

      else
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_227EC172C(*a1, v2, 2u);
        v16 = 3;
      }
    }

    else
    {
      if (v7 != 2 || v6 != 2 || v5)
      {
        goto LABEL_10;
      }

      sub_227EC172C(*a1, v2, 2u);
      v16 = 2;
    }

    v19 = 0;
    v20 = 2;
LABEL_69:
    sub_227EC172C(v16, v19, v20);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v14 = 1;
    sub_227EC1714(*a1, v2, 1u);
    sub_227EC1714(v3, v2, 1u);
    sub_227EC172C(v3, v2, 1u);
    sub_227EC172C(v3, v2, 1u);
    return v14;
  }

  v9 = *a1;
  v10 = sub_227F2BC64();
  sub_227EC1714(v6, v5, 1u);
  sub_227EC1714(v3, v2, 1u);
  sub_227EC172C(v3, v2, 1u);
  v11 = v6;
  v12 = v5;
  v13 = 1;
LABEL_32:
  sub_227EC172C(v11, v12, v13);
  return v10 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_227EBFAB0()
{
  result = qword_27D80E128;
  if (!qword_27D80E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E128);
  }

  return result;
}

unint64_t sub_227EBFB04()
{
  result = qword_27D80E130;
  if (!qword_27D80E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E130);
  }

  return result;
}

unint64_t sub_227EBFB58()
{
  result = qword_27D80E138;
  if (!qword_27D80E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E138);
  }

  return result;
}

unint64_t sub_227EBFBAC()
{
  result = qword_27D80E140;
  if (!qword_27D80E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E140);
  }

  return result;
}

unint64_t sub_227EBFC00()
{
  result = qword_27D80E148;
  if (!qword_27D80E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E148);
  }

  return result;
}

unint64_t sub_227EBFC54()
{
  result = qword_27D80E150;
  if (!qword_27D80E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E150);
  }

  return result;
}

unint64_t sub_227EBFCA8()
{
  result = qword_27D80E158;
  if (!qword_27D80E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E158);
  }

  return result;
}

unint64_t sub_227EBFCFC()
{
  result = qword_27D80E160;
  if (!qword_27D80E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E160);
  }

  return result;
}

unint64_t sub_227EBFD50()
{
  result = qword_27D80E168;
  if (!qword_27D80E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E168);
  }

  return result;
}

unint64_t sub_227EBFDA4()
{
  result = qword_27D80E170;
  if (!qword_27D80E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E170);
  }

  return result;
}

unint64_t sub_227EBFDF8()
{
  result = qword_27D80E178;
  if (!qword_27D80E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E178);
  }

  return result;
}

unint64_t sub_227EBFE4C()
{
  result = qword_27D80E180;
  if (!qword_27D80E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E180);
  }

  return result;
}

unint64_t sub_227EBFEA0()
{
  result = qword_27D80E188;
  if (!qword_27D80E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E188);
  }

  return result;
}

unint64_t sub_227EBFEF4()
{
  result = qword_27D80E210;
  if (!qword_27D80E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E210);
  }

  return result;
}

uint64_t sub_227EBFF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery15RRDServiceErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_227EC000C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227EC0054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_227EC009C(uint64_t result, unsigned int a2)
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

uint64_t type metadata accessor for RRDClient()
{
  result = qword_27D80E218;
  if (!qword_27D80E218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EC0118()
{
  result = sub_227F2B334();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for ClientCache();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_227F2B114();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RRDServiceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RRDServiceError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227EC0480()
{
  result = qword_27D80E228;
  if (!qword_27D80E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E228);
  }

  return result;
}

unint64_t sub_227EC04D8()
{
  result = qword_27D80E230;
  if (!qword_27D80E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E230);
  }

  return result;
}

unint64_t sub_227EC0530()
{
  result = qword_27D80E238;
  if (!qword_27D80E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E238);
  }

  return result;
}

unint64_t sub_227EC0588()
{
  result = qword_27D80E240;
  if (!qword_27D80E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E240);
  }

  return result;
}

unint64_t sub_227EC05E0()
{
  result = qword_27D80E248;
  if (!qword_27D80E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E248);
  }

  return result;
}

unint64_t sub_227EC0638()
{
  result = qword_27D80E250;
  if (!qword_27D80E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E250);
  }

  return result;
}

unint64_t sub_227EC0690()
{
  result = qword_27D80E258;
  if (!qword_27D80E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E258);
  }

  return result;
}

unint64_t sub_227EC06E8()
{
  result = qword_27D80E260;
  if (!qword_27D80E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E260);
  }

  return result;
}

unint64_t sub_227EC0740()
{
  result = qword_27D80E268;
  if (!qword_27D80E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E268);
  }

  return result;
}

unint64_t sub_227EC0798()
{
  result = qword_27D80E270;
  if (!qword_27D80E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E270);
  }

  return result;
}

unint64_t sub_227EC07F0()
{
  result = qword_27D80E278;
  if (!qword_27D80E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E278);
  }

  return result;
}

unint64_t sub_227EC0848()
{
  result = qword_27D80E280;
  if (!qword_27D80E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E280);
  }

  return result;
}

unint64_t sub_227EC08A0()
{
  result = qword_27D80E288;
  if (!qword_27D80E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E288);
  }

  return result;
}

unint64_t sub_227EC08F8()
{
  result = qword_27D80E290;
  if (!qword_27D80E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E290);
  }

  return result;
}

unint64_t sub_227EC0950()
{
  result = qword_27D80E298;
  if (!qword_27D80E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E298);
  }

  return result;
}

unint64_t sub_227EC09A8()
{
  result = qword_27D80E2A0;
  if (!qword_27D80E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2A0);
  }

  return result;
}

unint64_t sub_227EC0A00()
{
  result = qword_27D80E2A8;
  if (!qword_27D80E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2A8);
  }

  return result;
}

unint64_t sub_227EC0A58()
{
  result = qword_27D80E2B0;
  if (!qword_27D80E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2B0);
  }

  return result;
}

unint64_t sub_227EC0AB0()
{
  result = qword_27D80E2B8;
  if (!qword_27D80E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2B8);
  }

  return result;
}

unint64_t sub_227EC0B08()
{
  result = qword_27D80E2C0;
  if (!qword_27D80E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2C0);
  }

  return result;
}

unint64_t sub_227EC0B60()
{
  result = qword_27D80E2C8;
  if (!qword_27D80E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2C8);
  }

  return result;
}

unint64_t sub_227EC0BB8()
{
  result = qword_27D80E2D0;
  if (!qword_27D80E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2D0);
  }

  return result;
}

unint64_t sub_227EC0C10()
{
  result = qword_27D80E2D8;
  if (!qword_27D80E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2D8);
  }

  return result;
}

unint64_t sub_227EC0C68()
{
  result = qword_27D80E2E0;
  if (!qword_27D80E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2E0);
  }

  return result;
}

unint64_t sub_227EC0CC0()
{
  result = qword_27D80E2E8;
  if (!qword_27D80E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2E8);
  }

  return result;
}

unint64_t sub_227EC0D18()
{
  result = qword_27D80E2F0;
  if (!qword_27D80E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2F0);
  }

  return result;
}

unint64_t sub_227EC0D70()
{
  result = qword_27D80E2F8;
  if (!qword_27D80E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E2F8);
  }

  return result;
}

unint64_t sub_227EC0DC8()
{
  result = qword_27D80E300;
  if (!qword_27D80E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E300);
  }

  return result;
}

unint64_t sub_227EC0E20()
{
  result = qword_27D80E308;
  if (!qword_27D80E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E308);
  }

  return result;
}

uint64_t sub_227EC0E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F33940 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000227F33960 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F33980 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D676E697373696DLL && a2 == 0xEF74736566696E61 || (sub_227F2BC64() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44676E697373696DLL && a2 == 0xED00007473656769 || (sub_227F2BC64() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E73657461647075 && a2 == 0xEF646E756F46746FLL || (sub_227F2BC64() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4F49656C6966 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E69646F63 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x45786F62646E6173 && a2 == 0xEC000000726F7272)
  {

    return 11;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_227EC1270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EC12E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227EC1350()
{
  result = qword_27D80E318;
  if (!qword_27D80E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E318);
  }

  return result;
}

uint64_t sub_227EC13A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_227EC140C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v9);
  if (!v2)
  {
    result = *v9;
    v7 = v9[1];
    v8 = v9[2];
    *a1 = v9[0];
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

unint64_t sub_227EC1458()
{
  result = qword_27D80E328;
  if (!qword_27D80E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E328);
  }

  return result;
}

uint64_t sub_227EC14D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_227EC14F8()
{
  result = qword_27D80E330;
  if (!qword_27D80E330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E330);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_227EC15A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_227EC15FC()
{
  result = qword_27D80E340;
  if (!qword_27D80E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E340);
  }

  return result;
}

uint64_t sub_227EC1650(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_227EC15A8(a1, a2);
  }

  return a1;
}

uint64_t sub_227EC1664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227EC16AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EC1714(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_227EC172C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery9RRDClientC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_227EC1768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227EC17C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_227EC1818(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadTaskStateError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DownloadTaskStateError(_WORD *result, int a2, int a3)
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

unint64_t sub_227EC192C()
{
  result = qword_27D80E358;
  if (!qword_27D80E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E358);
  }

  return result;
}

uint64_t type metadata accessor for DownloadConfiguration()
{
  result = qword_27D80E368;
  if (!qword_27D80E368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadConfiguration.etag.getter()
{
  v1 = (v0 + *(type metadata accessor for DownloadConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DownloadConfiguration.expectedFileSize.getter()
{
  v1 = (v0 + *(type metadata accessor for DownloadConfiguration() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DownloadConfiguration.consecutiveFailures.getter()
{
  v1 = (v0 + *(type metadata accessor for DownloadConfiguration() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DownloadConfiguration.assetValidationFailureInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DownloadConfiguration() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_227EC1BF4(v4, v5, v6, v7, v8);
}

uint64_t sub_227EC1BF4(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_227EC1C38(result, a2, a3);
  }

  return result;
}

uint64_t sub_227EC1C38(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_227EC227C(result, a2, a3, sub_227EC1C88, sub_227EC1CA0);
  }

  return result;
}

uint64_t sub_227EC1C88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_227EC1CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t DownloadConfiguration.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DownloadConfiguration() + 48);

  return sub_227EC1CF8(v3, a1);
}

uint64_t sub_227EC1CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schedule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DownloadConfiguration.init(gracePeriod:lastAttempt:lastSuccess:fileLastSuccess:etag:expectedFileSize:consecutiveFailures:assetValidationFailureInfo:overrideSchedule:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, unsigned __int8 a11, uint64_t *a12, uint64_t a13)
{
  v52 = a8;
  v53 = a4;
  LODWORD(v60) = a7;
  v54 = a5;
  v55 = a6;
  v62 = a11;
  v64 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v63 = type metadata accessor for Schedule();
  v51 = *(v63 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v63);
  v57 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a12[1];
  v61 = *a12;
  v25 = a12[3];
  v49 = a12[2];
  v50 = v25;
  v26 = a12[4];
  *a9 = a10;
  v27 = type metadata accessor for DownloadConfiguration();
  v28 = a9 + v27[5];
  v59 = a1;
  sub_227EC2180(a1, v28, &unk_27D80E3B0, &unk_227F2DB00);
  v29 = a9 + v27[6];
  v58 = a2;
  sub_227EC2180(a2, v29, &unk_27D80E3B0, &unk_227F2DB00);
  v30 = a9 + v27[7];
  v56 = a3;
  v31 = v52;
  sub_227EC2180(a3, v30, &unk_27D80E3B0, &unk_227F2DB00);
  v32 = (a9 + v27[8]);
  v33 = v54;
  *v32 = v53;
  v32[1] = v33;
  v34 = a9 + v27[9];
  *v34 = v55;
  v34[8] = v60 & 1;
  v35 = a9 + v27[10];
  *v35 = v31;
  v36 = v49;
  v35[8] = v62 & 1;
  v37 = v27[11];
  v55 = a9;
  v38 = (a9 + v37);
  *v38 = v61;
  v38[1] = v24;
  v39 = v50;
  v38[2] = v36;
  v38[3] = v39;
  v38[4] = v26;
  sub_227EC2180(v64, v21, &qword_27D80E360, &unk_227F32A90);
  v40 = *(v51 + 48);
  v60 = v21;
  if (v40(v21, 1, v63) == 1)
  {
    if (v62)
    {
      v31 = 0;
    }

    v65 = v61;
    v66 = v24;
    v67 = v36;
    v68 = v39;
    v69 = v26;
    sub_227EC1BF4(v61, v24, v36, v39, v26);
    v42 = v57;
    v41 = v58;
    v43 = v59;
    sub_227F26898(v58, v59, v31, v57, a10);
    sub_227EB8430(v64, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v56, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v41, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v43, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(v65, v66, v67, v68, v69);
    v44 = v60;
    v45 = v40(v60, 1, v63) == 1;
    v46 = v42;
    if (!v45)
    {
      sub_227EB8430(v44, &qword_27D80E360, &unk_227F32A90);
      v46 = v42;
    }
  }

  else
  {
    sub_227EB8430(v64, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v56, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v58, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v59, &unk_27D80E3B0, &unk_227F2DB00);
    v47 = v57;
    sub_227EC22CC(v60, v57);
    v46 = v47;
  }

  return sub_227EC22CC(v46, v55 + v27[12]);
}

uint64_t sub_227EC2180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227EC21E8(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_227EC222C(result, a2, a3);
  }

  return result;
}

uint64_t sub_227EC222C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_227EC227C(result, a2, a3, sub_227EC22A0, sub_227EC22B8);
  }

  return result;
}

uint64_t sub_227EC227C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a3 >> 6 == 1)
  {
    return a5();
  }

  if (!(a3 >> 6))
  {
    return a4();
  }

  return result;
}

uint64_t sub_227EC22A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_227EC22B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_227EC22CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schedule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_227EC2358()
{
  sub_227EC246C();
  if (v0 <= 0x3F)
  {
    sub_227EC24C4(319, &qword_2813CD550);
    if (v1 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548);
      if (v2 <= 0x3F)
      {
        sub_227EC24C4(319, &qword_2813CE010);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Schedule();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_227EC246C()
{
  if (!qword_2813CE030)
  {
    sub_227F2B234();
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CE030);
    }
  }
}

void sub_227EC24C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_227F2B924();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id DownloadErrorInfo.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DownloadErrorInfo.statusCode.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t DownloadErrorInfo.etag.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t DownloadErrorInfo.init(error:statusCode:etag:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t _s21RapidResourceDelivery17DownloadErrorInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *a2;
  v9 = *(a2 + 32);
  if (v5)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1[1] == *(a2 + 8))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_18;
    }
  }

  if (v7)
  {
    if (!v9 || (v6 != *(a2 + 24) || v7 != v9) && (sub_227F2BC64() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v9)
  {
LABEL_18:
    v13 = 0;
    return v13 & 1;
  }

  v11 = sub_227F2AFB4();
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  sub_227EC276C();
  if (!swift_dynamicCast())
  {

    goto LABEL_18;
  }

  v13 = sub_227F2B914();

  return v13 & 1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227EC26CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227EC2714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227EC276C()
{
  result = qword_27D80E380;
  if (!qword_27D80E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E380);
  }

  return result;
}

uint64_t NSURLSession.download(request:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_227F2ADA4();
  v5 = [v2 downloadTaskWithRequest_];

  result = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  a1[3] = result;
  a1[4] = &protocol witness table for NSURLSessionDownloadTask;
  *a1 = v5;
  return result;
}

uint64_t NSURLSession.downloadTasks.getter()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E398, &qword_227F2DC58);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC2908, 0, 0);
}

uint64_t sub_227EC2908()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_227EC2ABC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3A0, &unk_227F2DC60);
  sub_227F2B7C4();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_227EC2C34;
  v1[13] = &block_descriptor;
  [v9 getTasksWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_227EC2ABC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227EC2B9C, 0, 0);
}

uint64_t sub_227EC2B9C()
{
  v1 = v0[24];
  v2 = v0[18];

  v3 = v0[19];

  v4 = sub_227EC2DA0(v0[20]);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_227EC2C34(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_227EB7BD0(0, &qword_27D80E520, 0x277CCAD40);
  sub_227F2B7A4();
  sub_227EB7BD0(0, &qword_27D80E528, 0x277CCAD68);
  sub_227F2B7A4();
  sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  sub_227F2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E398, &qword_227F2DC58);
  return sub_227F2B7E4();
}

uint64_t sub_227EC2D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_227EC2DA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_227F2BA84();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_227ECB1E8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAAC680](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_227ECB1E8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
        v16 = &protocol witness table for NSURLSessionDownloadTask;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_227EB3AC4(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_227ECB1E8((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
        v16 = &protocol witness table for NSURLSessionDownloadTask;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_227EB3AC4(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_227EC2F80@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_227F2ADA4();
  v5 = [v3 downloadTaskWithRequest_];

  result = sub_227EB7BD0(0, &qword_27D80E390, 0x277CCAD48);
  a1[3] = result;
  a1[4] = &protocol witness table for NSURLSessionDownloadTask;
  *a1 = v5;
  return result;
}

uint64_t sub_227EC3004()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E450, &qword_227F2DE08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[19] = v5;
  v6 = *v0;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_227EC3220;
  swift_continuation_init();
  v1[17] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E458, &qword_227F2DE10);
  sub_227F2B7C4();
  (*(v3 + 32))(boxed_opaque_existential_1, v5, v2);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_227EC3330;
  v1[13] = &block_descriptor_12;
  [v6 getAllTasksWithCompletionHandler_];
  (*(v3 + 8))(boxed_opaque_existential_1, v2);

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_227EC3220()
{
  v1 = *(*v0 + 152);
  v5 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_227EC3330(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_227EB7BD0(0, &qword_27D80E460, 0x277CCAD50);
  sub_227F2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E450, &qword_227F2DE08);
  return sub_227F2B7E4();
}

uint64_t sub_227EC33B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227EC3440;

  return NSURLSession.downloadTasks.getter();
}

uint64_t sub_227EC3440(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id sub_227EC3590()
{
  v1 = [*v0 progress];

  return v1;
}

uint64_t sub_227EC35FC@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_227EC36B4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_227F2B1B4();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v3 setEarliestBeginDate_];
}

void (*sub_227EC37B8(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_227EC3874(v3);
  return sub_227EC382C;
}

void sub_227EC382C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_227EC3874(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 earliestBeginDate];
  if (v8)
  {
    v9 = v8;
    sub_227F2B204();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_227F2B234();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_227ECD80C(v5, v7);
  return sub_227EC39D4;
}

void sub_227EC39D4(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  if (a2)
  {
    v4 = *(a1 + 8);
    sub_227EC2180(*(a1 + 24), v4, &unk_27D80E3B0, &unk_227F2DB00);
    v5 = sub_227F2B234();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_227F2B1B4();
      (*(v6 + 8))(v4, v5);
      v3 = *(a1 + 24);
      v4 = *(a1 + 8);
    }

    v11 = *(a1 + 16);
    [*a1 setEarliestBeginDate_];

    sub_227EB8430(v3, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    v8 = sub_227F2B234();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_227F2B1B4();
      (*(v9 + 8))(v3, v8);
      v3 = *(a1 + 24);
    }

    v4 = *(a1 + 8);
    v11 = *(a1 + 16);
    [*a1 setEarliestBeginDate_];
  }

  free(v3);
  free(v11);

  free(v4);
}

id sub_227EC3BD4()
{
  v1 = [*v0 error];

  return v1;
}

id (*sub_227EC3C30(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 countOfBytesClientExpectsToReceive];
  return sub_227EC3C84;
}

id (*sub_227EC3CB8(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 _timeoutIntervalForResource];
  *a1 = v4;
  return sub_227EC3D0C;
}

uint64_t sub_227EC3D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_227EC2180(a1, &v11, &qword_27D80E440, &qword_227F2DDF8);
  if (v12)
  {
    return sub_227EB3AC4(&v11, a3);
  }

  sub_227EB8430(a1, &qword_27D80E440, &qword_227F2DDF8);
  sub_227EB8430(&v11, &qword_27D80E440, &qword_227F2DDF8);
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_227EB2000, v7, v8, "constructing url session", v9, 2u);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  v10 = *(a2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor + 8);
  (*(a2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor))(a2);
  return sub_227ECDA1C(a3, a1);
}

uint64_t DownloadManager.__allocating_init(downloadToFolder:sessionConstructor:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_227F2B114();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v41 = a1;
  v38 = v15;
  v15(v14, a1, v10);
  (*(v11 + 56))(v9, 1, 1, v10);
  v16 = type metadata accessor for Settings();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_227EC2180(v9, v19 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, &qword_27D80E310, &unk_227F2D990);
  v19[3] = 0xD000000000000024;
  v19[4] = 0x8000000227F339A0;
  v19[5] = 0x408C200000000000;
  v19[6] = 1024;
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_227F2B644();
  v22 = [v20 initWithSuiteName_];

  if (v22)
  {
    sub_227EB8430(v9, &qword_27D80E310, &unk_227F2D990);
    v19[2] = v22;
    v43[3] = &type metadata for Clock;
    v43[4] = &protocol witness table for Clock;
    v23 = objc_allocWithZone(v4);
    v24 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
    if (qword_2813CD568 != -1)
    {
      swift_once();
    }

    v25 = sub_227F2B334();
    v26 = __swift_project_value_buffer(v25, qword_2813CE040);
    (*(*(v25 - 8) + 16))(&v23[v24], v26, v25);
    v27 = &v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates];
    *v27 = 0;
    *(v27 + 1) = MEMORY[0x277D84F98];
    v28 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket;
    type metadata accessor for TokenBucket();
    v29 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v29 + 112) = 0;
    *&v23[v28] = v29;
    v30 = &v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession];
    *v30 = 0;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 5) = 0;
    v38(&v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadToFolder], v14, v10);
    *&v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings] = v19;
    v31 = &v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion];
    *v31 = 0;
    *(v31 + 1) = 0;
    v32 = &v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor];
    v33 = v40;
    *v32 = v39;
    *(v32 + 1) = v33;
    sub_227ECDA1C(v43, &v23[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock]);
    v42.receiver = v23;
    v42.super_class = v4;
    v34 = objc_msgSendSuper2(&v42, sel_init);
    v35 = *(v11 + 8);
    v35(v41, v10);
    v35(v14, v10);
    __swift_destroy_boxed_opaque_existential_0(v43);
    return v34;
  }

  else
  {
    result = sub_227F2BA74();
    __break(1u);
  }

  return result;
}

uint64_t sub_227EC4308()
{
  v1 = v0[7] + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v2 = sub_227F2B304();
  v3 = sub_227F2B8F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227EB2000, v2, v3, "Cancelling all downloads", v4, 2u);
    MEMORY[0x22AAAD240](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = (v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
  sub_227EC3D44(&v6[2], v5, (v0 + 2));
  os_unfair_lock_unlock(v6);
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = *(v8 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_227EC44F4;

  return v13(v7, v8);
}

uint64_t sub_227EC44F4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_227EC45F4, 0, 0);
}

uint64_t sub_227EC45F4()
{
  v1 = v0[9];
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 62)
  {
    if (v0[9] < 0)
    {
      v9 = v0[9];
    }

    result = sub_227F2BA84();
    v3 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v0[9] + 32;
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x22AAAC680](v4, v0[9]);
    }

    else
    {
      v7 = *(v6 + 8 * v4);
    }

    v8 = v7;
    ++v4;
    [v7 cancel];
  }

  while (v3 != v4);
LABEL_12:
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227EC46FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 344) = a4;
  *(v5 + 192) = a3;
  *(v5 + 200) = v4;
  *(v5 + 176) = a1;
  *(v5 + 184) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v7 = sub_227F2B234();
  *(v5 + 216) = v7;
  v8 = *(v7 - 8);
  *(v5 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  v10 = *(*(type metadata accessor for Schedule() - 8) + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990) - 8) + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v12 = sub_227F2B114();
  *(v5 + 264) = v12;
  v13 = *(v12 - 8);
  *(v5 + 272) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC48D4, 0, 0);
}

uint64_t sub_227EC48D4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[22];
  sub_227F2ADD4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[32];
    v6 = v0[22];
    sub_227EB8430(v5, &qword_27D80E310, &unk_227F2D990);
    sub_227F2B9A4();

    sub_227F2ADF4();
    sub_227ECDAD0(&unk_27D80E3C0, MEMORY[0x277CC8678]);
    v7 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v7);

    return sub_227F2BA74();
  }

  else
  {
    v9 = v0[25];
    (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
    v10 = (v9 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
    os_unfair_lock_lock((v9 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
    sub_227EC3D44(&v10[2], v9, (v0 + 2));
    v0[37] = 0;
    os_unfair_lock_unlock(v10);
    v0[38] = *(v0[25] + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket);
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = sub_227EC4B1C;

    return sub_227F29790();
  }
}

uint64_t sub_227EC4B1C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227EC4C18, 0, 0);
}

uint64_t sub_227EC4C18()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_227EC4D3C;

  return v7(v1, v2);
}

uint64_t sub_227EC4D3C(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x2822009F8](sub_227EC4E3C, 0, 0);
}

uint64_t sub_227EC4E3C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_227EC64DC(sub_227ECD9FC, v1, v0 + 96);

  if (*(v0 + 120))
  {
    sub_227EB3AC4((v0 + 96), v0 + 56);
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    (*(v8 + 8))(v6, v7, v8);
    if (*(v0 + 120))
    {
      sub_227EB8430(v0 + 96, &qword_27D80E4F0, &qword_227F2DE78);
    }
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
  if ((*(v10 + 24))(v9, v10) == 1)
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 216);
    v13 = *(v0 + 224);
    sub_227EC1CF8(*(v0 + 184), v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v14 = *(*(*(v0 + 200) + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings) + 16);
      v15 = sub_227F2B644();
      [v14 doubleForKey_];
      v17 = v16;

      if (v17 <= 0.0)
      {
        v17 = 1500.0;
      }
    }

    else
    {
      v18 = *(v0 + 240);
      v20 = *(v0 + 224);
      v19 = *(v0 + 232);
      v21 = *(v0 + 208);
      v22 = *(v0 + 216);
      v23 = *(v0 + 200);
      (*(v20 + 32))(v18, *(v0 + 248), v22);
      (*(v20 + 16))(v21, v18, v22);
      (*(v20 + 56))(v21, 0, 1, v22);
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v24);
      (*(v25 + 48))(v21, v24, v25);
      v26 = *(v23 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings);
      v27 = *(v26 + 16);
      v28 = sub_227F2B644();
      [v27 doubleForKey_];

      sub_227F2B1A4();
      sub_227F2B1E4();
      v17 = v29;
      v30 = *(v26 + 16);
      v31 = sub_227F2B644();
      [v30 doubleForKey_];
      v33 = v32;

      v34 = *(v20 + 8);
      v34(v19, v22);
      v34(v18, v22);
      if (v33 <= 0.0)
      {
        v35 = 1500.0;
      }

      else
      {
        v35 = v33;
      }

      if (v17 <= v35)
      {
        v17 = v35;
      }
    }

    v36 = *(v0 + 80);
    v37 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v36);
    (*(v37 + 104))(v36, v37, v17);
  }

  if ((*(v0 + 344) & 1) == 0)
  {
    v38 = *(v0 + 192);
    v39 = *(v0 + 80);
    v40 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v39);
    (*(v40 + 80))(v38, v39, v40);
  }

  v41 = *(v0 + 304);
  v42 = *(v0 + 280);
  v43 = *(v0 + 200);
  (*(*(v0 + 272) + 16))(v42, *(v0 + 288), *(v0 + 264));
  sub_227ECDA1C(v0 + 56, v0 + 136);
  v44 = type metadata accessor for DownloadTask();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v0 + 336) = sub_227ECF864(v42, (v0 + 136), v43);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2822009F8](sub_227EC52E0, v41, 0);
}

uint64_t sub_227EC52E0()
{
  v1 = *(v0 + 304);
  sub_227F29CA8();

  return MEMORY[0x2822009F8](sub_227EC5348, 0, 0);
}

uint64_t sub_227EC5348()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  (*(v0[34] + 8))(v0[36], v0[33]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[42];

  return v7(v8);
}

uint64_t sub_227EC5424(void *a1, uint64_t a2, uint64_t a3)
{
  v145 = a3;
  v148 = sub_227F2B114();
  v6 = *(v148 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v148);
  v140 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v9 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v151 = &v132 - v10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v11 = *(*(v143 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v143);
  v138 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v132 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E500, &qword_227F2DE88);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v132 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v141 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v132 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v150 = &v132 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v132 - v31;
  v33 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  sub_227ECDA1C(a1, &v164);
  sub_227ECDA1C(a1, &v161);
  sub_227ECDA1C(a1, v158);
  sub_227ECDA1C(a1, v155);
  sub_227ECDA1C(a1, v152);
  v139 = a2;
  v137 = v33;
  v34 = sub_227F2B304();
  v35 = sub_227F2B8D4();
  v36 = os_log_type_enabled(v34, v35);
  v147 = v6;
  v146 = v3;
  v149 = v28;
  if (!v36)
  {
    __swift_destroy_boxed_opaque_existential_0(v155);
    __swift_destroy_boxed_opaque_existential_0(&v164);

    __swift_destroy_boxed_opaque_existential_0(&v161);
    __swift_destroy_boxed_opaque_existential_0(v158);
    __swift_destroy_boxed_opaque_existential_0(v152);
    v48 = v148;
    goto LABEL_13;
  }

  v135 = v35;
  v136 = v34;
  v37 = swift_slowAlloc();
  v133 = swift_slowAlloc();
  v134 = swift_slowAlloc();
  v167 = v134;
  *v37 = 134219010;
  v39 = v165;
  v38 = v166;
  __swift_project_boxed_opaque_existential_1(&v164, v165);
  v40 = (*(v38 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_0(&v164);
  *(v37 + 4) = v40;
  *(v37 + 12) = 2080;
  v41 = v162;
  v42 = v163;
  __swift_project_boxed_opaque_existential_1(&v161, v162);
  (*(v42 + 16))(v41, v42);
  v43 = sub_227F2ADF4();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v21, 1, v43) == 1)
  {
    v45 = &qword_27D80E500;
    v46 = &qword_227F2DE88;
    v47 = v21;
  }

  else
  {
    sub_227F2ADD4();
    (*(v44 + 8))(v21, v43);
    v49 = v147;
    v50 = v148;
    if ((*(v147 + 48))(v32, 1, v148) != 1)
    {
      v51 = sub_227F2B004();
      v52 = v53;
      (*(v49 + 8))(v32, v50);
      goto LABEL_9;
    }

    v45 = &qword_27D80E310;
    v46 = &unk_227F2D990;
    v47 = v32;
  }

  sub_227EB8430(v47, v45, v46);
  v51 = 0;
  v52 = 0xE000000000000000;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(&v161);
  v54 = sub_227ECAC40(v51, v52, &v167);

  *(v37 + 14) = v54;
  *(v37 + 22) = 2080;
  v55 = v159;
  v56 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v56 + 40))(v55, v56);
  v57 = sub_227F2B6C4();
  v59 = v58;
  __swift_destroy_boxed_opaque_existential_0(v158);
  v60 = sub_227ECAC40(v57, v59, &v167);

  *(v37 + 24) = v60;
  *(v37 + 32) = 2048;
  v61 = v156;
  v62 = v157;
  __swift_project_boxed_opaque_existential_1(v155, v156);
  v63 = (*(v62 + 24))(v61, v62);
  __swift_destroy_boxed_opaque_existential_0(v155);
  *(v37 + 34) = v63;
  *(v37 + 42) = 2112;
  v64 = v153;
  v65 = v154;
  __swift_project_boxed_opaque_existential_1(v152, v153);
  if ((*(v65 + 64))(v64, v65))
  {
    v66 = _swift_stdlib_bridgeErrorToNSError();
    v67 = v66;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v48 = v148;
  v6 = v147;
  __swift_destroy_boxed_opaque_existential_0(v152);
  *(v37 + 44) = v66;
  v68 = v133;
  *v133 = v67;
  v69 = v136;
  _os_log_impl(&dword_227EB2000, v136, v135, "found existing task:%ld\n url: %s \n beginning: %s\n state: %ld\n error: %@", v37, 0x34u);
  sub_227EB8430(v68, &qword_27D80E4A0, &qword_227F2DE40);
  MEMORY[0x22AAAD240](v68, -1, -1);
  v70 = v134;
  swift_arrayDestroy();
  MEMORY[0x22AAAD240](v70, -1, -1);
  MEMORY[0x22AAAD240](v37, -1, -1);

LABEL_13:
  v71 = a1[3];
  v72 = a1[4];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v71);
  (*(v72 + 16))(v71, v72);
  v73 = sub_227F2ADF4();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v19, 1, v73) == 1)
  {
    sub_227EB8430(v19, &qword_27D80E500, &qword_227F2DE88);
    v75 = v150;
    (*(v6 + 56))(v150, 1, 1, v48);
  }

  else
  {
    v76 = v150;
    sub_227F2ADD4();
    (*(v74 + 8))(v19, v73);
    v75 = v76;
  }

  v77 = v149;
  sub_227F2ADD4();
  v78 = *(v144 + 48);
  v79 = v151;
  sub_227EC2180(v75, v151, &qword_27D80E310, &unk_227F2D990);
  v80 = v79;
  sub_227EC2180(v77, v79 + v78, &qword_27D80E310, &unk_227F2D990);
  v81 = *(v6 + 48);
  if (v81(v79, 1, v48) == 1)
  {
    sub_227EB8430(v77, &qword_27D80E310, &unk_227F2D990);
    v82 = v151;
    sub_227EB8430(v75, &qword_27D80E310, &unk_227F2D990);
    if (v81(v82 + v78, 1, v48) == 1)
    {
      sub_227EB8430(v82, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_24;
    }

LABEL_21:
    sub_227EB8430(v82, &qword_27D80E4F8, &qword_227F2DE80);
    return 0;
  }

  v83 = v141;
  sub_227EC2180(v79, v141, &qword_27D80E310, &unk_227F2D990);
  if (v81(v79 + v78, 1, v48) == 1)
  {
    sub_227EB8430(v149, &qword_27D80E310, &unk_227F2D990);
    v82 = v151;
    sub_227EB8430(v150, &qword_27D80E310, &unk_227F2D990);
    (*(v147 + 8))(v83, v48);
    goto LABEL_21;
  }

  v85 = v147;
  v86 = v79 + v78;
  v87 = v140;
  (*(v147 + 32))(v140, v86, v48);
  sub_227ECDAD0(&qword_27D80E508, MEMORY[0x277CC9260]);
  v88 = sub_227F2B634();
  v89 = *(v85 + 8);
  v89(v87, v48);
  sub_227EB8430(v149, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v150, &qword_27D80E310, &unk_227F2D990);
  v89(v83, v48);
  sub_227EB8430(v80, &qword_27D80E310, &unk_227F2D990);
  if ((v88 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v90 = v148;
  v91 = v148[3];
  v92 = v148[4];
  __swift_project_boxed_opaque_existential_1(v148, v91);
  if ((*(v92 + 24))(v91, v92) == 2)
  {
    return 0;
  }

  v93 = v90[3];
  v94 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v93);
  v95 = (*(v94 + 64))(v93, v94);
  if (v95)
  {

    return 0;
  }

  v96 = v90[3];
  v97 = v90[4];
  __swift_project_boxed_opaque_existential_1(v90, v96);
  v98 = v138;
  (*(v97 + 40))(v96, v97);
  v99 = sub_227F2B234();
  v100 = *(v99 - 8);
  if ((*(v100 + 48))(v98, 1, v99) == 1)
  {
    sub_227EB8430(v98, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    sub_227F2B1E4();
    v102 = v101;
    (*(v100 + 8))(v98, v99);
    v103 = *(v139 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings);
    v104 = *(v103 + 16);
    v105 = sub_227F2B644();
    [v104 doubleForKey_];
    v107 = v106;

    if (v107 <= 0.0)
    {
      v107 = *(v103 + 40);
    }

    if (v107 < v102)
    {
      sub_227ECDA1C(v90, &v164);
      v108 = sub_227F2B304();
      v109 = sub_227F2B8E4();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 134218240;
        v111 = v165;
        v112 = v166;
        __swift_project_boxed_opaque_existential_1(&v164, v165);
        v113 = (*(v112 + 8))(v111, v112);
        __swift_destroy_boxed_opaque_existential_0(&v164);
        *(v110 + 4) = v113;
        *(v110 + 12) = 2048;
        *(v110 + 14) = v102;
        _os_log_impl(&dword_227EB2000, v108, v109, "cancelling task %ld scheduled too far in future: %f seconds", v110, 0x16u);
        MEMORY[0x22AAAD240](v110, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v164);
      }

      v130 = v90[3];
      v131 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v130);
      (*(v131 + 120))(v130, v131);
      return 0;
    }
  }

  sub_227ECDA1C(v90, &v164);
  sub_227ECDA1C(v90, &v161);
  sub_227ECDA1C(v90, v158);
  v114 = sub_227F2B304();
  v115 = sub_227F2B8D4();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v155[0] = v117;
    *v116 = 134218498;
    v118 = v165;
    v119 = v166;
    __swift_project_boxed_opaque_existential_1(&v164, v165);
    v120 = (*(v119 + 8))(v118, v119);
    __swift_destroy_boxed_opaque_existential_0(&v164);
    *(v116 + 4) = v120;
    *(v116 + 12) = 2080;
    v121 = v162;
    v122 = v163;
    __swift_project_boxed_opaque_existential_1(&v161, v162);
    (*(v122 + 40))(v121, v122);
    v123 = sub_227F2B6C4();
    v125 = v124;
    __swift_destroy_boxed_opaque_existential_0(&v161);
    v126 = sub_227ECAC40(v123, v125, v155);

    *(v116 + 14) = v126;
    *(v116 + 22) = 2048;
    v127 = v159;
    v128 = v160;
    __swift_project_boxed_opaque_existential_1(v158, v159);
    v129 = (*(v128 + 24))(v127, v128);
    __swift_destroy_boxed_opaque_existential_0(v158);
    *(v116 + 24) = v129;
    _os_log_impl(&dword_227EB2000, v114, v115, "found matching existing task %ld beginning: %s state: %ld", v116, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v117);
    MEMORY[0x22AAAD240](v117, -1, -1);
    MEMORY[0x22AAAD240](v116, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v158);
    __swift_destroy_boxed_opaque_existential_0(&v164);

    __swift_destroy_boxed_opaque_existential_0(&v161);
  }

  return 1;
}

uint64_t sub_227EC64DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_227ECDA1C(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_227EB3AC4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t DownloadManager.download(_:config:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_227F2B234();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = sub_227F2B114();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v11 = sub_227F2ADF4();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v13 = *(v12 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EC6754, 0, 0);
}

uint64_t sub_227EC6754()
{
  v46 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[11];
  v6 = v0[12];
  v7 = *(v4 + 16);
  v0[25] = v7;
  v0[26] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  sub_227F2ADC4();
  v8 = type metadata accessor for DownloadConfiguration();
  v9 = v8;
  v10 = (v6 + *(v8 + 32));
  if (v10[1])
  {
    v11 = v0[24];
    v12 = *v10;
    sub_227F2ADE4();
  }

  else
  {
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[14];
    sub_227EC2180(v0[12] + *(v8 + 28), v15, &unk_27D80E3B0, &unk_227F2DB00);
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      sub_227EB8430(v0[14], &unk_27D80E3B0, &unk_227F2DB00);
    }

    else
    {
      v16 = v0[24];
      v18 = v0[16];
      v17 = v0[17];
      v19 = v0[15];
      (*(v18 + 32))(v17, v0[14], v19);
      sub_227F134EC();
      sub_227F2ADE4();

      (*(v18 + 8))(v17, v19);
    }
  }

  v20 = v0[13];
  v0[27] = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v21 = sub_227F2B304();
  v22 = sub_227F2B8D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[24];
    v24 = v0[22];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = v26;
    *v25 = 136315394;
    swift_beginAccess();
    sub_227ECDAD0(&unk_27D80E3C0, MEMORY[0x277CC8678]);
    v27 = sub_227F2BC24();
    v29 = sub_227ECAC40(v27, v28, &v45);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    swift_beginAccess();
    v30 = sub_227F2ADB4();
    swift_endAccess();
    if (!v30)
    {
      sub_227ECC90C(MEMORY[0x277D84F90]);
    }

    v31 = sub_227F2B5E4();
    v33 = v32;

    v34 = sub_227ECAC40(v31, v33, &v45);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_227EB2000, v21, v22, "httpRequest: %s header: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v26, -1, -1);
    MEMORY[0x22AAAD240](v25, -1, -1);
  }

  v35 = v0[24];
  v36 = v0[12];
  swift_beginAccess();
  v37 = *(v9 + 48);
  v38 = v36 + *(v9 + 36);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = swift_task_alloc();
  v0[28] = v41;
  *v41 = v0;
  v41[1] = sub_227EC6B80;
  v42 = v0[24];
  v43 = v0[13];

  return sub_227EC46FC(v42, v36 + v37, v39, v40);
}

uint64_t sub_227EC6B80(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_227EC6C80, 0, 0);
}

uint64_t sub_227EC6C80()
{
  v56 = v0;
  v1 = *(v0 + 104);
  v2 = (*(v0 + 232) + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  if (*(*(v6 + 8) + 16) && (sub_227ECA918(v5), (v7 & 1) != 0))
  {
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = *(v0 + 104);
    (*(v0 + 200))(*(v0 + 160), *(v0 + 88), *(v0 + 144));
    v11 = sub_227F2B304();
    v12 = sub_227F2B8D4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 144);
    if (v13)
    {
      v54 = v12;
      v17 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55 = v53;
      *v17 = 136315394;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
      v18 = sub_227F2BC24();
      log = v11;
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_227ECAC40(v18, v20, &v55);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v5;
      _os_log_impl(&dword_227EB2000, log, v54, "Download for %s was already requested by client. Running task with %ld ID.", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAAD240](v53, -1, -1);
      MEMORY[0x22AAAD240](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  else
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 168);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    (*(v0 + 200))(v23, *(v0 + 88), v24);
    v26 = type metadata accessor for DownloadTaskState();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v30 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v31 = type metadata accessor for DownloadOutcome();
    (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
    *(v29 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v29 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v25 + 32))(v29 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v23, v24);
    v32 = *(v6 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v6 + 8);
    sub_227ECBD14(v29, v5, isUniquelyReferenced_nonNull_native);
    *(v6 + 8) = v55;
  }

  v34 = *(v0 + 232);
  v35 = *(v0 + 216);
  v36 = *(v0 + 104);
  os_unfair_lock_unlock(v6);

  v37 = sub_227F2B304();
  v38 = sub_227F2B8D4();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 232);
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = v2[3];
    v43 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v42);
    *(v41 + 4) = (*(v43 + 24))(v42, v43);

    _os_log_impl(&dword_227EB2000, v37, v38, "downloadTask state: %ld", v41, 0xCu);
    MEMORY[0x22AAAD240](v41, -1, -1);
  }

  else
  {
    v44 = *(v0 + 232);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 160);
  v47 = *(v0 + 136);
  v48 = *(v0 + 112);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v49 = *(v0 + 8);
  v50 = *(v0 + 232);

  return v49(v50);
}

void sub_227EC712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v8 = *(v7 + 8);
  if (*(v8 + 16) && (v9 = sub_227ECA918(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    if ((sub_227ED0E08(a1, a3) & 1) == 0)
    {
      sub_227ED22D8(a2);
    }

    os_unfair_lock_unlock(v7);
  }

  else
  {
    sub_227F2BA74();
    __break(1u);
  }
}

void sub_227EC724C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v6 = *(v5 + 8);
  if (*(v6 + 16) && (v7 = sub_227ECA918(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    sub_227ED131C(a2);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    sub_227F2BA74();
    __break(1u);
  }
}

void sub_227EC732C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_227F2B114();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v53 - v14;
  v15 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v16 = a4;
  v59 = v15;
  v17 = sub_227F2B304();
  v18 = sub_227F2B8D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v55 = v10;
    v20 = v19;
    v54 = swift_slowAlloc();
    v60 = a4;
    v61 = v54;
    *v20 = 134218498;
    *(v20 + 4) = a1;
    *(v20 + 12) = 2080;
    v21 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4C8, &qword_227F2DE50);
    v22 = sub_227F2B6C4();
    v24 = a2;
    v25 = a3;
    v26 = v5;
    v27 = a1;
    v28 = sub_227ECAC40(v22, v23, &v61);

    *(v20 + 14) = v28;
    a1 = v27;
    v5 = v26;
    a3 = v25;
    a2 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v24;
    _os_log_impl(&dword_227EB2000, v17, v18, "task %ld didCompleteWithError %s state: %ld", v20, 0x20u);
    v29 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x22AAAD240](v29, -1, -1);
    v30 = v20;
    v10 = v55;
    MEMORY[0x22AAAD240](v30, -1, -1);
  }

  v31 = a4;
  if (a4)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    v33 = a3;
    if ([v33 statusCode] - 600 >= 0xFFFFFFFFFFFFFF38)
    {
      v45 = [v33 statusCode];
      sub_227ECD8EC();
      v31 = swift_allocError();
      *v46 = v45;

LABEL_4:
      v32 = a4;
      sub_227EC77FC(a1, v31, a3);

      return;
    }

    v34 = v33;
    v35 = [v34 URL];
    if (v35)
    {
      v36 = v56;
      v37 = v35;
      sub_227F2B084();

      v39 = v57;
      v38 = v58;
      (*(v58 + 32))(v57, v36, v10);
      v40 = [v34 allHeaderFields];
      v41 = sub_227F2B5D4();

      v42 = a2;
      v43 = sub_227EC7B60(v41);

      v44 = v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
      os_unfair_lock_lock((v5 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
      sub_227EC7E40((v44 + 8), a1, v5, v39, v43, v34, v42);

      os_unfair_lock_unlock(v44);

      (*(v38 + 8))(v39, v10);
      return;
    }
  }

  v47 = a3;
  v48 = sub_227F2B304();
  v49 = sub_227F2B8E4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = a3;
    v52 = v47;
    _os_log_impl(&dword_227EB2000, v48, v49, "response has no url: %@", v50, 0xCu);
    sub_227EB8430(v51, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v51, -1, -1);
    MEMORY[0x22AAAD240](v50, -1, -1);
  }
}

void sub_227EC77FC(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v12 = *(v11 + 8);
  if (*(v12 + 16) && (v13 = sub_227ECA918(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    if (a3)
    {
      v16 = [a3 statusCode];
    }

    else
    {
      v16 = 0;
    }

    *v10 = a2;
    *(v10 + 1) = v16;
    v10[16] = a3 == 0;
    v20 = type metadata accessor for DownloadOutcome();
    *(v10 + 3) = 0;
    *(v10 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
    v21 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    swift_beginAccess();
    v22 = a2;
    sub_227ECD87C(v10, v15 + v21);
    swift_endAccess();
    if (a3)
    {
      v23 = [a3 allHeaderFields];
      v24 = sub_227F2B5D4();

      v25 = sub_227EC7B60(v24);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v15 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
    *(v15 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = v25;

    sub_227EC88BC(v15);
    sub_227ED153C();
    v27 = sub_227F2B304();
    v28 = sub_227F2B8F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a1;
      _os_log_impl(&dword_227EB2000, v27, v28, "%ld failed & handled, removing from taskStates", v29, 0xCu);
      MEMORY[0x22AAAD240](v29, -1, -1);
    }

    sub_227ED22D8(a1);
  }

  else
  {
    v17 = sub_227F2B304();
    v18 = sub_227F2B8E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&dword_227EB2000, v17, v18, "taskState missing at error handling time for taskId: %ld", v19, 0xCu);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }
  }

  os_unfair_lock_unlock(v11);
}

unint64_t sub_227EC7B60(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4D0, &qword_227F2DE58);
    v2 = sub_227F2BAB4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_227ECD99C(*(v1 + 48) + 40 * v17, v30);
    sub_227EC2D28(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_227ECD99C(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_227EB8430(v27, &qword_27D80E4D8, &qword_227F2DE60);

      goto LABEL_22;
    }

    sub_227EC2D28(v28 + 8, v26);
    sub_227EB8430(v27, &qword_27D80E4D8, &qword_227F2DE60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_227ECA808(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

void sub_227EC7E40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v90 = a5;
  v91 = a6;
  v100 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v86 - v13;
  v14 = sub_227F2B114();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v86 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v86 - v21;
  v23 = *a1;
  v24 = *(*a1 + 16);
  v97 = v7;
  if (!v24 || (sub_227ECA918(a2), (v25 & 1) == 0))
  {
    v93 = *(v15 + 16);
    v93(v22, v100, v14);
    v96 = a3;
    v26 = v15;
    v27 = sub_227F2B304();
    v28 = sub_227F2B8E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v92 = a1;
      v30 = v29;
      v87 = swift_slowAlloc();
      v99[0] = v87;
      *v30 = 136315394;
      *(v30 + 4) = sub_227ECAC40(0xD000000000000030, 0x8000000227F33D10, v99);
      *(v30 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
      v31 = sub_227F2BC24();
      v32 = v26;
      v86 = v26;
      v33 = a2;
      v35 = v34;
      (*(v32 + 8))(v22, v14);
      v36 = sub_227ECAC40(v31, v35, v99);
      a2 = v33;

      *(v30 + 14) = v36;
      _os_log_impl(&dword_227EB2000, v27, v28, "%s for %s without task object. Previous run crashed?", v30, 0x16u);
      v37 = v87;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v37, -1, -1);
      v38 = v30;
      a1 = v92;
      MEMORY[0x22AAAD240](v38, -1, -1);

      v15 = v86;
    }

    else
    {

      (*(v26 + 8))(v22, v14);
      v15 = v26;
    }

    v39 = v94;
    v93(v94, v100, v14);
    v40 = type metadata accessor for DownloadTaskState();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v44 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v45 = type metadata accessor for DownloadOutcome();
    (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
    *(v43 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v43 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v15 + 32))(v43 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v39, v14);
    v46 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = *a1;
    sub_227ECBD14(v43, a2, isUniquelyReferenced_nonNull_native);
    v23 = v99[0];
    *a1 = v99[0];
    a3 = v96;
  }

  if (*(v23 + 16) && (v48 = sub_227ECA918(a2), (v49 & 1) != 0))
  {
    v92 = a1;
    v50 = *(*(v23 + 56) + 8 * v48);
    v51 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    swift_beginAccess();
    v52 = v89;
    sub_227EC2180(v50 + v51, v89, &unk_27D80E4A8, &qword_227F2DE48);
    v53 = type metadata accessor for DownloadOutcome();
    LODWORD(v51) = (*(*(v53 - 8) + 48))(v52, 1, v53);

    sub_227EB8430(v52, &unk_27D80E4A8, &qword_227F2DE48);
    v54 = sub_227F2B304();
    if (v51 == 1)
    {
      v55 = sub_227F2B8E4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v54, v55, "Task %ld is not completed", v56, 0xCu);
        MEMORY[0x22AAAD240](v56, -1, -1);
      }

      v57 = sub_227F2B304();
      v58 = sub_227F2B8E4();
    }

    else
    {
      v69 = sub_227F2B8D4();
      if (os_log_type_enabled(v54, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        *(v70 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v54, v69, "Task %ld is completed", v70, 0xCu);
        MEMORY[0x22AAAD240](v70, -1, -1);
      }

      v57 = sub_227F2B304();
      v58 = sub_227F2B8D4();
    }

    v71 = v58;

    if (os_log_type_enabled(v57, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v98 = v73;
      *v72 = 136315138;

      v74 = sub_227ED1BF8();
      v96 = a3;
      v75 = a2;
      v77 = v76;

      v78 = sub_227ECAC40(v74, v77, &v98);
      a2 = v75;
      a3 = v96;

      *(v72 + 4) = v78;
      _os_log_impl(&dword_227EB2000, v57, v71, "%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAAD240](v73, -1, -1);
      MEMORY[0x22AAAD240](v72, -1, -1);
    }

    v79 = *(v50 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
    *(v50 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = v90;

    sub_227EC88BC(v50);
    sub_227ED153C();
    swift_beginAccess();
    if (*(*(v50 + 16) + 16) || v88 == 2 || *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion))
    {
      v80 = sub_227F2B304();
      v81 = sub_227F2B8F4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 134217984;
        *(v82 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v80, v81, "%ld finished & consumed, removing from taskStates", v82, 0xCu);
        MEMORY[0x22AAAD240](v82, -1, -1);
      }

      sub_227ED22D8(a2);
    }

    else
    {
      v83 = sub_227F2B304();
      v84 = sub_227F2B8E4();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134217984;
        *(v85 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v83, v84, "task %ld finished, but not yet consumed", v85, 0xCu);
        MEMORY[0x22AAAD240](v85, -1, -1);
      }
    }
  }

  else
  {
    v59 = v95;
    (*(v15 + 16))(v95, v100, v14);
    v60 = sub_227F2B304();
    v61 = sub_227F2B8E4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v15;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v99[0] = v64;
      *v63 = 134218242;
      *(v63 + 4) = a2;
      *(v63 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
      v65 = sub_227F2BC24();
      v67 = v66;
      (*(v62 + 8))(v59, v14);
      v68 = sub_227ECAC40(v65, v67, v99);

      *(v63 + 14) = v68;
      _os_log_impl(&dword_227EB2000, v60, v61, "taskState missing for taskId: %ld url: %s", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AAAD240](v64, -1, -1);
      MEMORY[0x22AAAD240](v63, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v59, v14);
    }
  }
}

uint64_t sub_227EC88BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for DownloadResponse();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion + 8);
    sub_227ED19C4(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10(v1, a1, v9);
    return sub_227ECD940(v9);
  }

  return result;
}

void sub_227EC8BFC(uint64_t a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
  v6 = *(v5 + 8);
  if (*(v6 + 16))
  {
    v7 = sub_227ECA918(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = *(v9 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
      *(v9 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = a2;

      v11 = a2;
    }
  }

  os_unfair_lock_unlock(v5);
}

void sub_227EC8C98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v18 = *(v9 + 16);
  v51 = a2;
  v18(&v44 - v15, a2, v8);
  v47 = v17;
  v19 = sub_227F2B304();
  v20 = sub_227F2B8D4();
  v21 = os_log_type_enabled(v19, v20);
  v50 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v46 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v45 = a3;
    v25 = v24;
    v52 = v24;
    *v23 = 134218242;
    *(v23 + 4) = a1;
    *(v23 + 12) = 2080;
    sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
    v26 = sub_227F2BC24();
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v16, v8);
    v30 = sub_227ECAC40(v26, v28, &v52);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_227EB2000, v19, v20, "downloadTask %ld didFinishDownloadingTo %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    a3 = v45;
    MEMORY[0x22AAAD240](v31, -1, -1);
    v32 = v23;
    v4 = v46;
    MEMORY[0x22AAAD240](v32, -1, -1);
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v16, v8);
  }

  v33 = [a3 URL];
  if (v33)
  {
    v34 = v48;
    v35 = v33;
    sub_227F2B084();

    v36 = v49;
    (*(v9 + 32))(v49, v34, v8);
    v37 = v4 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates;
    os_unfair_lock_lock((v4 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates));
    sub_227EC90BC((v37 + 8), v50, v4, v36, a3, v51);
    os_unfair_lock_unlock(v37);
    v29(v36, v8);
  }

  else
  {
    v38 = a3;
    v39 = sub_227F2B304();
    v40 = sub_227F2B8E4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_227EB2000, v39, v40, "response has no url: %@", v41, 0xCu);
      sub_227EB8430(v42, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v42, -1, -1);
      MEMORY[0x22AAAD240](v41, -1, -1);
    }
  }
}

void sub_227EC90BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v140 = a6;
  v142 = a5;
  v151 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v128 - v13;
  v15 = sub_227F2B234();
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = *(v132 + 64);
  MEMORY[0x28223BE20](v15);
  v131 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227F2AFF4();
  v138 = *(v18 - 8);
  v139 = v18;
  v19 = *(v138 + 64);
  MEMORY[0x28223BE20](v18);
  v137 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_227F2B274();
  v135 = *(v21 - 8);
  v136 = v21;
  v22 = *(v135 + 64);
  MEMORY[0x28223BE20](v21);
  v134 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227F2B114();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v149 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v141 = &v128 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v148 = &v128 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v128 - v33;
  v35 = *a1;
  if (!*(*a1 + 16) || (sub_227ECA918(a2), (v36 & 1) == 0))
  {
    v144 = a1;
    v146 = a2;
    v147 = v6;
    v143 = *(v25 + 16);
    v143(v34, v151, v24);
    v145 = a3;
    v37 = sub_227F2B304();
    v38 = sub_227F2B8E4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v130 = v14;
      v129 = v40;
      v150[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_227ECAC40(0xD00000000000002CLL, 0x8000000227F33CE0, v150);
      *(v39 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
      v41 = sub_227F2BC24();
      v42 = v25;
      v43 = v24;
      v45 = v44;
      (*(v42 + 8))(v34, v43);
      v46 = sub_227ECAC40(v41, v45, v150);
      v24 = v43;
      v25 = v42;

      *(v39 + 14) = v46;
      _os_log_impl(&dword_227EB2000, v37, v38, "%s for %s without task state. Previous run crashed?", v39, 0x16u);
      v47 = v129;
      swift_arrayDestroy();
      v14 = v130;
      MEMORY[0x22AAAD240](v47, -1, -1);
      MEMORY[0x22AAAD240](v39, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v34, v24);
    }

    v48 = v148;
    v143(v148, v151, v24);
    v49 = type metadata accessor for DownloadTaskState();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_227ECCA20(MEMORY[0x277D84F90]);
    v53 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
    v54 = type metadata accessor for DownloadOutcome();
    (*(*(v54 - 8) + 56))(v52 + v53, 1, 1, v54);
    *(v52 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields) = 0;
    *(v52 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics) = 0;
    (*(v25 + 32))(v52 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL, v48, v24);
    v55 = v144;
    v56 = *v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150[0] = *v55;
    a2 = v146;
    sub_227ECBD14(v52, v146, isUniquelyReferenced_nonNull_native);
    v35 = v150[0];
    *v55 = v150[0];
    v7 = v147;
    a3 = v145;
  }

  if (*(v35 + 16) && (v58 = sub_227ECA918(a2), (v59 & 1) != 0))
  {
    v60 = *(*(v35 + 56) + 8 * v58);
    v61 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
    v148 = v24;
    v149 = v60;

    v62 = v142;
    v63 = a3;
    v145 = v61;
    v64 = sub_227F2B304();
    v65 = sub_227F2B8D4();
    v66 = os_log_type_enabled(v64, v65);
    v128 = v25;
    if (v66)
    {
      v67 = swift_slowAlloc();
      *v67 = 134218240;
      *(v67 + 4) = a2;
      *(v67 + 12) = 2048;
      *(v67 + 14) = [v62 statusCode];

      _os_log_impl(&dword_227EB2000, v64, v65, "downloadTask %ld statusCode %ld", v67, 0x16u);
      MEMORY[0x22AAAD240](v67, -1, -1);
    }

    else
    {

      v64 = v62;
    }

    if ([v62 statusCode]== 304)
    {
      v81 = type metadata accessor for DownloadOutcome();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      (*(*(v81 - 8) + 56))(v14, 0, 1, v81);
      v82 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
      v83 = v149;
      swift_beginAccess();
      sub_227ECD87C(v14, &v83[v82]);
      swift_endAccess();

      return;
    }

    v84 = sub_227F2B644();
    v85 = [v62 valueForHTTPHeaderField:v84];

    if (v85)
    {
      v86 = sub_227F2B674();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v89 = [v62 statusCode];
    if (v89 == 206 || v89 == 200)
    {
      v142 = v86;
      v143 = v88;
      v146 = a2;
      v130 = v14;
      v144 = [objc_opt_self() defaultManager];
      v147 = v7;
      v90 = v134;
      sub_227F2B264();
      v91 = sub_227F2B254();
      v93 = v92;
      (*(v135 + 8))(v90, v136);
      v150[0] = v91;
      v150[1] = v93;
      v94 = v137;
      v95 = v138;
      v96 = v139;
      (*(v138 + 104))(v137, *MEMORY[0x277CC91D8], v139);
      sub_227EB84D8();
      v97 = v141;
      sub_227F2B104();
      v98 = v96;
      v99 = v144;
      (*(v95 + 8))(v94, v98);

      v100 = v147;
      sub_227F13B0C();
      if (!v100)
      {
        v112 = sub_227F2B304();
        v113 = sub_227F2B8D4();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 134217984;
          *(v114 + 4) = v146;
          _os_log_impl(&dword_227EB2000, v112, v113, "setting state to downloadComplete: %ld", v114, 0xCu);
          MEMORY[0x22AAAD240](v114, -1, -1);
        }

        v115 = [v62 statusCode];
        v116 = *(v63 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock + 24);
        v117 = *(v63 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock + 32);
        __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock), v116);
        v118 = v131;
        (*(v117 + 8))(v116, v117);

        v119 = v128;
        v14 = v130;
        v120 = v148;
        (*(v128 + 16))(v130, v151, v148);
        v121 = type metadata accessor for FileInfo(0);
        (*(v119 + 32))(&v14[v121[5]], v141, v120);
        v122 = v121[9];
        v124 = v132;
        v123 = v133;
        (*(v132 + 32))(&v14[v122], v118, v133);
        (*(v124 + 56))(&v14[v122], 0, 1, v123);
        v125 = &v14[v121[6]];
        v126 = v143;
        *v125 = v142;
        *(v125 + 1) = v126;
        *&v14[v121[7]] = v115;
        v127 = &v14[v121[8]];
        v81 = type metadata accessor for DownloadOutcome();
        *v127 = 0;
        *(v127 + 1) = 0;
        goto LABEL_17;
      }

      (*(v128 + 8))(v97, v148);

      v101 = v100;
      v102 = sub_227F2B304();
      v103 = sub_227F2B8E4();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138412290;
        v106 = v100;
        v107 = _swift_stdlib_bridgeErrorToNSError();
        *(v104 + 4) = v107;
        *v105 = v107;
        _os_log_impl(&dword_227EB2000, v102, v103, "Error writing file: %@", v104, 0xCu);
        sub_227EB8430(v105, &qword_27D80E4A0, &qword_227F2DE40);
        MEMORY[0x22AAAD240](v105, -1, -1);
        MEMORY[0x22AAAD240](v104, -1, -1);
      }

      v108 = v130;
      *v130 = v100;
      *(v108 + 8) = 0;
      *(v108 + 16) = 1;
      v109 = type metadata accessor for DownloadOutcome();
      *(v108 + 24) = 0;
      *(v108 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
      v110 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
      v111 = v149;
      swift_beginAccess();
      sub_227ECD87C(v108, &v111[v110]);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    v68 = v149;
    (*(v25 + 16))(v149, v151, v24);
    v69 = sub_227F2B304();
    v70 = sub_227F2B8E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = a2;
      v72 = v25;
      v73 = swift_slowAlloc();
      v74 = v68;
      v75 = swift_slowAlloc();
      v150[0] = v75;
      *v73 = 134218242;
      *(v73 + 4) = v71;
      *(v73 + 12) = 2080;
      sub_227ECDAD0(&qword_27D80E008, MEMORY[0x277CC9260]);
      v76 = sub_227F2BC24();
      v77 = v24;
      v79 = v78;
      (*(v72 + 8))(v74, v77);
      v80 = sub_227ECAC40(v76, v79, v150);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_227EB2000, v69, v70, "taskState missing for taskId: %ld url: %s", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x22AAAD240](v75, -1, -1);
      MEMORY[0x22AAAD240](v73, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v68, v24);
    }
  }
}

id DownloadManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DownloadManager.urlSession(_:task:didCompleteWithError:)(int a1, id a2, void *a3)
{
  v5 = [a2 taskIdentifier];
  v6 = [a2 state];
  v7 = [a2 response];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  sub_227EC732C(v5, v6, v10, a3);
}

void DownloadManager.urlSession(_:downloadTask:didFinishDownloadingTo:)(int a1, id a2, uint64_t a3)
{
  v6 = [a2 response];
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_7:
    sub_227F2BA74();
    __break(1u);
    return;
  }

  sub_227EC8C98([a2 taskIdentifier], a3, v5);
}

unint64_t sub_227ECA808(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_227F2BD14();
  sub_227F2B704();
  v6 = sub_227F2BD44();

  return sub_227ECA95C(a1, a2, v6);
}

unint64_t sub_227ECA880(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227F2B274();
  sub_227ECDAD0(&qword_27D80E488, MEMORY[0x277CC95F0]);
  v5 = sub_227F2B5F4();

  return sub_227ECAA14(a1, v5);
}

unint64_t sub_227ECA918(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_227F2BD04();

  return sub_227ECABD4(a1, v4);
}

unint64_t sub_227ECA95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_227F2BC64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_227ECAA14(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_227F2B274();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_227ECDAD0(&qword_27D80E490, MEMORY[0x277CC95F0]);
      v16 = sub_227F2B634();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_227ECABD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_227ECAC40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227ECAD0C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_227EC2D28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_227ECAD0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_227ECAE18(a5, a6);
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
    result = sub_227F2B9F4();
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

uint64_t sub_227ECAE18(uint64_t a1, unint64_t a2)
{
  v4 = sub_227ECAE64(a1, a2);
  sub_227ECAF94(&unk_283B4ED40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_227ECAE64(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_227ECB080(v5, 0);
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

  result = sub_227F2B9F4();
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
        v10 = sub_227F2B744();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_227ECB080(v10, 0);
        result = sub_227F2B994();
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

uint64_t sub_227ECAF94(uint64_t result)
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

  result = sub_227ECB0F4(result, v12, 1, v3);
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

void *sub_227ECB080(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E0, &qword_227F2DE68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_227ECB0F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E0, &qword_227F2DE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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