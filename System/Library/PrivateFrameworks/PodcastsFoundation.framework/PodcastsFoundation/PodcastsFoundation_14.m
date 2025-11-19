uint64_t sub_1D8E7B67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FE0, &qword_1D918E020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7B6EC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8E7B7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FE0, &qword_1D918E020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D8E7B838(BOOL *a1@<X8>)
{
  v3 = *(v1 + 264);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a1 = v4 != 1;
}

uint64_t StorageChangeStream.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StorageChangeStream.StorageChange();
  sub_1D91778EC();
  *a1 = sub_1D91778CC();

  swift_getWitnessTable();
  sub_1D9177C2C();
  sub_1D91776DC();
  swift_getWitnessTable();
  v2 = sub_1D9177B1C();

  a1[1] = v2;
  return result;
}

uint64_t sub_1D8E7BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v31 = a5;
  v33 = a1;
  v30 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D91791BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v21 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v27 - v22;
  v29 = *v32;
  (*(v15 + 16))(v19, v33, a3);
  sub_1D91783FC();
  swift_getAssociatedConformanceWitness();
  v32 = v23;
  v33 = AssociatedTypeWitness;
  sub_1D91791DC();
  v24 = *(v7 + 48);
  if (v24(v14, 1, v6) != 1)
  {
    v25 = *(v7 + 32);
    do
    {
      v25(v10, v14, v6);
      v34 = v29;
      v31(v10, v30);
      (*(v7 + 8))(v10, v6);
      sub_1D91791DC();
    }

    while (v24(v14, 1, v6) != 1);
  }

  return (*(v28 + 8))(v32, v33);
}

uint64_t sub_1D8E7BE58(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for StorageChangeStream.StorageChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  v12 = *v2;
  (*(*(v5 - 8) + 16))(&v14 - v10, a1, v5, v9);
  swift_storeEnumTagMultiPayload();
  sub_1D91778BC();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1D8E7BF80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1D8E7C08C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t DeletionDownloadConsistencyIssueResolutionStrategy.resolution(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D8E7C4CC(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D8E7C530(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D8, &qword_1D918E630);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v12[1] = sub_1D9177A5C();
  sub_1D8E7C598();
  v10 = sub_1D9177B1C();

  return v10;
}

uint64_t sub_1D8E7C384(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16[-v13];
  sub_1D8E7C5FC(a3, v8);
  swift_storeEnumTagMultiPayload();
  sub_1D8E7CB80(v8, v11);
  sub_1D8E7CB80(v11, v14);
  a1(v14);
  return sub_1D8E7CBF0(v14);
}

uint64_t sub_1D8E7C4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadConsistency.Issue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7C530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadConsistency.Issue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E7C598()
{
  result = qword_1ECAB0270;
  if (!qword_1ECAB0270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB51D8, &qword_1D918E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0270);
  }

  return result;
}

uint64_t sub_1D8E7C5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DownloadConsistency.Issue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E7C4CC(a1, v12);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0);
    (*(v5 + 32))(v8, &v12[*(v22 + 48)], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E8, qword_1D918E6B0);
    v23 = *(type metadata accessor for DownloadedAssetEffect() - 8);
    v24 = *(v23 + 72);
    v25 = *(v23 + 80);
    v30 = a1;
    v26 = (v25 + 32) & ~v25;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D9189080;
    (*(v5 + 16))(v20 + v26, v8, v4);
    a1 = v30;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v8, v4);
    v27 = sub_1D9176EAC();
    (*(*(v27 - 8) + 8))(v12, v27);
  }

  else
  {
    v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = sub_1D9176EAC();
    (*(*(v16 - 8) + 8))(v12, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E8, qword_1D918E6B0);
    v17 = *(type metadata accessor for DownloadedAssetEffect() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D9189080;
    v21 = (v20 + v19);
    *v21 = v14;
    v21[1] = v15;
    swift_storeEnumTagMultiPayload();
  }

  sub_1D8E7C4CC(a1, a2);
  result = type metadata accessor for DownloadConsistency.IssueResolution(0);
  *(a2 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_1D8E7C9B4(uint64_t a1)
{
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D8E7C4CC(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D8E7C530(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D8, &qword_1D918E630);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v12[1] = sub_1D9177A5C();
  sub_1D8E7C598();
  v10 = sub_1D9177B1C();

  return v10;
}

uint64_t sub_1D8E7CB00(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D8E7C384(a1, a2, v6);
}

uint64_t sub_1D8E7CB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7CBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7CC84(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F0, &qword_1D918E7A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DownloadConsistency.Issue(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F8, &unk_1D918E7B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  if (a2[2])
  {
    v18 = a2[7];
    v19 = a2[8];
    v25 = v15;
    __swift_project_boxed_opaque_existential_1(a2 + 4, v18);
    v27 = (*(v19 + 8))(a1, v18, v19);
    sub_1D8E7C4CC(a1, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    sub_1D8E7C530(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
    sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00);
    sub_1D9177BDC();

    sub_1D8CF48EC(&qword_1ECAB06F8, &qword_1ECAB51F8, &unk_1D918E7B0);
    v22 = sub_1D9177B1C();
    (*(v25 + 8))(v17, v13);
  }

  else
  {
    sub_1D8E7D62C();
    v27 = swift_allocError();
    type metadata accessor for DownloadConsistency.IssueResolution(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779AC();
    sub_1D8CF48EC(&unk_1ECAB5210, &qword_1ECAB51F0, &qword_1D918E7A8);
    v22 = sub_1D9177B1C();
    (*(v6 + 8))(v9, v5);
  }

  return v22;
}

void sub_1D8E7D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v33 = a3;
  v34 = a6;
  v35 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F0, &qword_1D918E7A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for DownloadConsistency.Issue(0);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F8, &unk_1D918E7B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  if (a5 >> 1 == a4)
  {
    sub_1D8E7D62C();
    v37[0] = swift_allocError();
    type metadata accessor for DownloadConsistency.IssueResolution(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779AC();
    sub_1D8CF48EC(&unk_1ECAB5210, &qword_1ECAB51F0, &qword_1D918E7A8);
    sub_1D9177B1C();
    (*(v10 + 8))(v13, v9);
  }

  else if ((a5 >> 1) <= a4)
  {
    __break(1u);
  }

  else
  {
    v30 = a5;
    v31 = v19;
    v22 = v33;
    sub_1D8CFD9D8(v33 + 40 * a4, v37);
    v24 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v36 = (*(v23 + 8))(a1, v24, v23);
    sub_1D8E7C4CC(a1, &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    sub_1D8E7C530(v16, v27 + v25);
    v28 = (v27 + v26);
    *v28 = v35;
    v28[1] = v22;
    v29 = v30;
    v28[2] = a4;
    v28[3] = v29;

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
    sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00);
    sub_1D9177BDC();

    sub_1D8CF48EC(&qword_1ECAB06F8, &qword_1ECAB51F8, &unk_1D918E7B0);
    sub_1D9177B1C();
    (*(v31 + 8))(v21, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }
}

uint64_t getEnumTagSinglePayload for AutoDownloadRetentionPolicyHistory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AutoDownloadRetentionPolicyHistory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8E7D580(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D8E7D098(v1 + v4, v5, v5 + 32, *(v5 + 16) != 0, (2 * *(v5 + 16)) | 1, *(v1 + 16));
  *a1 = v6;
}

unint64_t sub_1D8E7D62C()
{
  result = qword_1ECAB5208;
  if (!qword_1ECAB5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5208);
  }

  return result;
}

uint64_t sub_1D8E7D680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = sub_1D8F4CD70(1, *a3, a3[1], a3[2], a3[3]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRetain();
  v14 = sub_1D8E7D098(a2, v7, v9, v11, v13, a1);
  result = swift_unknownObjectRelease();
  *a4 = v14;
  return result;
}

uint64_t sub_1D8E7D71C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8E7D680(v5, v1 + v4, v6, a1);
}

uint64_t CoreDataDownloadPersistence.__allocating_init(libraryContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D8E7D814(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5220, &unk_1D918E7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5228, &qword_1D918E7E0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = a1;
  v15[1] = sub_1D9177A5C();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D8CF48EC(&unk_1EDCD0AC8, &qword_1ECAB5228, &qword_1D918E7E0);
  sub_1D8CF48EC(&qword_1EDCD0C10, &unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D9177CAC();

  sub_1D8CF48EC(&qword_1EDCD0C38, &qword_1ECAB5220, &unk_1D918E7D0);
  v13 = sub_1D9177B1C();
  (*(v4 + 8))(v7, v3);
  return v13;
}

void sub_1D8E7DA78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  v10 = swift_allocObject();
  v10[2] = sub_1D8D419F0;
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = a4;
  v13[4] = sub_1D8E7E04C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_10;
  v11 = _Block_copy(v13);

  v12 = a4;

  [v9 performBlock_];
  _Block_release(v11);
}

void sub_1D8E7DBB0(void (*a1)(void *, void), int a2, uint64_t a3, id a4)
{
  [a4 setResultType_];
  v6 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v7 = sub_1D917908C();
  v8 = sub_1D8FBED0C(v7);

  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  a1(v8, 0);

  sub_1D8D99898(v8, 0);
}

uint64_t sub_1D8E7DC94(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  sub_1D8CF48EC(&qword_1EDCD0A68, &unk_1ECAB5240, qword_1D918E860);
  return sub_1D917773C();
}

uint64_t CoreDataDownloadPersistence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E7DD94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5220, &unk_1D918E7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5228, &qword_1D918E7E0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = a1;
  v16[1] = sub_1D9177A5C();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D8CF48EC(&unk_1EDCD0AC8, &qword_1ECAB5228, &qword_1D918E7E0);
  sub_1D8CF48EC(&qword_1EDCD0C10, &unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D9177CAC();

  sub_1D8CF48EC(&qword_1EDCD0C38, &qword_1ECAB5220, &unk_1D918E7D0);
  v14 = sub_1D9177B1C();
  (*(v4 + 8))(v7, v3);
  return v14;
}

uint64_t DownloadedAssetEffect.hash(into:)()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadedAssetEffect();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E7E674(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = *v9;
    v15 = v9[1];
    v13 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = v9[1];
    v13 = 1;
LABEL_5:
    MEMORY[0x1DA72B390](v13);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1DA72B390](2);
  sub_1D8D68B38(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  sub_1D917814C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t DownloadedAssetEffect.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7E2B0()
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7E2F4()
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadedAssetEffect();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v35 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v35 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5268, &qword_1D918E9B8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v35 - v20;
  v23 = (&v35 + *(v22 + 56) - v20);
  sub_1D8E7E674(a1, &v35 - v20);
  sub_1D8E7E674(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E7E674(v21, v17);
    v26 = *v17;
    v25 = v17[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_4:
      if (v26 == *v23 && v25 == v23[1])
      {
        v33 = v23[1];
      }

      else
      {
        v28 = v23[1];
        v29 = sub_1D9179ACC();

        if ((v29 & 1) == 0)
        {
          sub_1D8E7E788(v21);
LABEL_16:
          v31 = 0;
          return v31 & 1;
        }
      }

      sub_1D8E7E788(v21);
      v31 = 1;
      return v31 & 1;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8E7E674(v21, v14);
    v26 = *v14;
    v25 = v14[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_15:
    sub_1D8E7E720(v21);
    goto LABEL_16;
  }

  sub_1D8E7E674(v21, v11);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v36 + 8))(v11, v4);
    goto LABEL_15;
  }

  v30 = v36;
  (*(v36 + 32))(v7, v23, v4);
  v31 = sub_1D9176B8C();
  v32 = *(v30 + 8);
  v32(v7, v4);
  v32(v11, v4);
  sub_1D8E7E788(v21);
  return v31 & 1;
}

uint64_t sub_1D8E7E674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadedAssetEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7E720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5268, &qword_1D918E9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7E788(uint64_t a1)
{
  v2 = type metadata accessor for DownloadedAssetEffect();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7E7E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_1D9176C2C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8E31404(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8E31404(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D8E7E9A0(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E314FC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v22;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA72AA90](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v20 = v11;
      a1(&v21, &v20, &v19);
      if (v4)
      {

        return v7;
      }

      v13 = i;

      v14 = v21;
      v22 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8E314FC((v15 > 1), v16 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v14;
      ++v9;
      i = v13;
      v17 = v10 == v13;
      v4 = 0;
      if (v17)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E7EB44(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_1D91774DC();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8E315BC(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8E315BC(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t AbandonedStreamIssueIdentifier.issues(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1D9176C2C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E7EE5C, 0, 0);
}

uint64_t sub_1D8E7EE5C()
{
  v65 = v0;
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  v6 = v5[8];
  v7 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v6);
  (*(v7 + 80))(v6, v7);
  sub_1D9176B2C();
  v60 = *(v4 + 8);
  v60(v2, v3);
  sub_1D8E6A330();
  v8 = v0[12];
  (*(v0[7] + 32))(v8, v0[11], v0[6]);
  v9 = v5[8];
  v10 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = (*(v10 + 64))(v8, MEMORY[0x1E69E7CC0], 0, v9, v10);
  v13 = v0[12];
  v14 = v12;
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  v16 = sub_1D8E7E7E4(sub_1D8E7F704, v15, v14);

  v17 = *(v16 + 16);
  v18 = v60;
  if (v17)
  {
    v19 = v0[7];
    v56 = v0[4];
    v63 = v11;
    result = sub_1D8E313C0(0, v17, 0);
    v21 = 0;
    v22 = v63;
    v55 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v57 = v19;
    v59 = v16;
    v58 = v17;
    while (v21 < *(v16 + 16))
    {
      v62 = v22;
      v23 = *(v57 + 16);
      v23(v0[9], v55 + *(v57 + 72) * v21, v0[6]);
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[6];
      v27 = sub_1D917744C();
      __swift_project_value_buffer(v27, qword_1EDCD0F20);
      v61 = v23;
      v23(v25, v24, v26);
      v28 = sub_1D917741C();
      v29 = sub_1D9178CDC();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[8];
      v32 = v0[6];
      if (v30)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v64 = v34;
        *v33 = 136315138;
        sub_1D8E3E9A0();
        v35 = sub_1D9179A4C();
        v37 = v36;
        v38 = v32;
        v18 = v60;
        v60(v31, v38);
        v39 = sub_1D8CFA924(v35, v37, &v64);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_1D8CEC000, v28, v29, "Identified unowned stream file: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1DA72CB90](v34, -1, -1);
        MEMORY[0x1DA72CB90](v33, -1, -1);
      }

      else
      {

        v40 = v32;
        v18 = v60;
        v60(v31, v40);
      }

      v41 = v0[9];
      v43 = v0[5];
      v42 = v0[6];
      v44 = v0[3];
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0);
      v61(v43 + *(v45 + 48), v41, v42);
      sub_1D9176E9C();
      swift_storeEnumTagMultiPayload();
      v18(v41, v42);
      v22 = v62;
      v47 = *(v62 + 16);
      v46 = *(v62 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D8E313C0(v46 > 1, v47 + 1, 1);
        v22 = v62;
      }

      ++v21;
      v48 = v0[5];
      *(v22 + 16) = v47 + 1;
      result = sub_1D8E7C530(v48, v22 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v47);
      v16 = v59;
      if (v58 == v21)
      {

        v11 = v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_14:
    v49 = v0[11];
    v51 = v0[9];
    v50 = v0[10];
    v52 = v0[8];
    v53 = v0[5];
    v18(v0[12], v0[6]);

    v54 = v0[1];

    return v54(v11);
  }

  return result;
}

uint64_t sub_1D8E7F454(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1D9176AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176BCC();
  v8 = sub_1D917839C();

  v9 = sub_1D9176BCC();
  if (v8)
  {
    v11 = sub_1D8F4CCC0(1uLL, v9, v10);
    v13 = v12;
    v15 = v14;
    v19[1] = v2;
    v17 = v16;

    v20 = v11;
    v21 = v13;
    v22 = v15;
    v23 = v17;
    (*(v4 + 104))(v7, *MEMORY[0x1E6968F70], v3);
    sub_1D8E7F724();
  }

  else
  {
    v20 = v9;
    v21 = v10;
    (*(v4 + 104))(v7, *MEMORY[0x1E6968F70], v3);
    sub_1D8D447DC();
  }

  sub_1D9176C0C();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D8E7F670(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8DBED50;

  return AbandonedStreamIssueIdentifier.issues(for:)(a1);
}

unint64_t sub_1D8E7F724()
{
  result = qword_1ECAB01C8;
  if (!qword_1ECAB01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01C8);
  }

  return result;
}

uint64_t AVAssetsInLibraryIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v68 = *(v62 - 8);
  v2 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v4 = &v58 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v58 - v7;
  v59 = sub_1D9176C2C();
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v67 = *(v65 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5288, &qword_1D918EA60);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5290, &qword_1D918EA68);
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5298, &qword_1D918EA70);
  v26 = *(v25 - 8);
  v74 = v25;
  v75 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v58 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52A0, &qword_1D918EA78);
  v30 = *(v29 - 8);
  v78 = v29;
  v79 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v66 = &v58 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52A8, &unk_1D918EA80);
  v34 = *(v33 - 8);
  v76 = v33;
  v77 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v69 = &v58 - v36;
  v37 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  sub_1D9177A0C();
  v38 = *(a1 + 80);
  v39 = sub_1D9178DBC();
  (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
  *&v80[0] = v38;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50);
  sub_1D8D02DF0();
  v40 = v10;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40);
  v41 = v62;
  sub_1D9177CEC();
  (*(v68 + 8))(v4, v41);
  sub_1D8D2210C(v8);
  (*(v61 + 8))(v13, v40);
  sub_1D8DBBEB4(a1, v80);
  v42 = swift_allocObject();
  v43 = v80[3];
  *(v42 + 48) = v80[2];
  *(v42 + 64) = v43;
  *(v42 + 80) = v80[4];
  *(v42 + 96) = v81;
  v44 = v80[1];
  *(v42 + 16) = v80[0];
  *(v42 + 32) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540);
  v45 = v60;
  v46 = v65;
  sub_1D9177C6C();

  (*(v67 + 8))(v16, v46);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52B0, &qword_1D918EA90);
  sub_1D8CF48EC(&qword_1ECAB0660, &qword_1ECAB5288, &qword_1D918EA60);
  sub_1D8CF48EC(&qword_1EDCD0BF8, &qword_1ECAB52B0, &qword_1D918EA90);
  v47 = v63;
  v48 = v70;
  sub_1D9177CAC();
  (*(v71 + 8))(v45, v48);
  sub_1D8CF48EC(&qword_1ECAB0568, &qword_1ECAB5290, &qword_1D918EA68);
  v49 = v64;
  v50 = v72;
  sub_1D9177B9C();
  (*(v73 + 8))(v47, v50);
  sub_1D8CF48EC(&qword_1ECAB07B8, &qword_1ECAB5298, &qword_1D918EA70);
  v51 = v66;
  v52 = v74;
  sub_1D9177C4C();
  (*(v75 + 8))(v49, v52);
  type metadata accessor for DownloadConsistency.Issue(0);
  sub_1D8CF48EC(&qword_1ECAB06B8, &qword_1ECAB52A0, &qword_1D918EA78);
  v53 = v69;
  v54 = v78;
  sub_1D9177B9C();
  (*(v79 + 8))(v51, v54);
  sub_1D8CF48EC(&qword_1ECAB0778, &qword_1ECAB52A8, &unk_1D918EA80);
  v55 = v76;
  v56 = sub_1D9177B1C();
  (*(v77 + 8))(v53, v55);
  return v56;
}

uint64_t sub_1D8E801FC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v5 = sub_1D9176BBC();
  v6 = (*(v4 + 56))(v5);
  if (v2)
  {
  }

  v8 = v6;

  *a2 = v8;
  return result;
}

uint64_t sub_1D8E802C4(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&unk_1EDCD0A58, &qword_1ECAB75E0, &qword_1D918DE30);
  return sub_1D917841C();
}

uint64_t sub_1D8E80358(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1D8E803CC(uint64_t *a1)
{
  v2 = sub_1D9176AAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  v16[0] = v12;
  v16[1] = v13;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

id sub_1D8E805BC()
{
  v0 = sub_1D9176B1C();
  v1 = [v0 isPackagedMedia];

  return v1;
}

uint64_t sub_1D8E805FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
  v5 = sub_1D9176C2C();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  sub_1D9176E9C();
  type metadata accessor for DownloadConsistency.Issue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E806C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v2 + 16, v4, v5);
  *a2 = result;
  return result;
}

uint64_t CoreDataEpisodeAssetIssueIdentifier.startIdentifyingIssues(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E8, &unk_1D918EC00);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52F0, &qword_1D918EC10);
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v36 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52F8, &qword_1D918EC18);
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v36 - v14;
  v15 = *v1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F88);
  v17 = sub_1D917741C();
  v18 = sub_1D9178CDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Starting consistency check for downloaded assets in CoreData library", v19, 2u);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  *&v45[0] = v15;
  v22 = sub_1D8E80D18();
  v23 = (*(v21 + 8))(v22, v20, v21);

  v24 = a1[10];
  v25 = sub_1D9178DBC();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  *&v45[0] = v24;
  v47 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5300, &qword_1D918EC20);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0BA0, &qword_1ECAB5300, &qword_1D918EC20);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A78, &qword_1ECAB52E8, &unk_1D918EC00);
  v26 = v37;
  v27 = v39;
  sub_1D9177CEC();

  (*(v38 + 8))(v6, v27);
  sub_1D8D08A50(v10, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8DBBEB4(a1, v45);
  v28 = swift_allocObject();
  *(v28 + 16) = v15;
  v29 = v45[3];
  *(v28 + 56) = v45[2];
  *(v28 + 72) = v29;
  *(v28 + 88) = v45[4];
  *(v28 + 104) = v46;
  v30 = v45[1];
  *(v28 + 24) = v45[0];
  *(v28 + 40) = v30;
  type metadata accessor for DownloadConsistency.Issue(0);
  sub_1D8CF48EC(&qword_1ECAB04A0, &qword_1ECAB52F0, &qword_1D918EC10);
  swift_unknownObjectRetain();
  v31 = v40;
  v32 = v43;
  sub_1D9177B2C();

  (*(v41 + 8))(v26, v32);
  sub_1D8CF48EC(&qword_1ECAB0B20, &qword_1ECAB52F8, &qword_1D918EC18);
  v33 = v44;
  v34 = sub_1D9177B1C();
  (*(v42 + 8))(v31, v33);
  return v34;
}

id sub_1D8E80D18()
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v0 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v0 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189060;
  v2 = sub_1D917820C();
  v3 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D917820C();
  *(v1 + 88) = v3;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1D917820C();
  *(v1 + 120) = v3;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  v10 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
  [v0 setPredicate_];

  return v0;
}

uint64_t sub_1D8E80E80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = *v3;
  aBlock[0] = *v3;
  sub_1D8E81760(a1);
  if (!v22)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD0F88);

    v25 = sub_1D917741C();
    v26 = sub_1D9178CEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v27 = 136315138;
      v30 = sub_1D917806C();
      v32 = sub_1D8CFA924(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Skipping download check for episode, no asset URL and/or episodeUuid: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v33 = v29;
      a3 = v28;
      MEMORY[0x1DA72CB90](v33, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    v34 = type metadata accessor for DownloadConsistency.Issue(0);
    v35 = *(*(v34 - 8) + 56);

    return v35(a3, 1, 1, v34);
  }

  v79 = v19;
  v80 = v20;
  v23 = v21;
  sub_1D9176BFC();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_28:
    v49 = type metadata accessor for DownloadConsistency.Issue(0);
    return (*(*(v49 - 8) + 56))(a3, 1, 1, v49);
  }

  (*(v12 + 32))(v18, v10, v11);
  v37 = sub_1D9176BEC();
  if (v38)
  {
    if (v37 == 0x62696C2D646F7069 && v38 == 0xEC00000079726172)
    {
    }

    else
    {
      v40 = sub_1D9179ACC();

      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_26:
    (*(v12 + 8))(v18, v11);
    goto LABEL_28;
  }

LABEL_17:
  if ((sub_1D9176A8C() & 1) == 0)
  {
    (*(v12 + 8))(v18, v11);

    goto LABEL_28;
  }

  v78 = a3;
  v41 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v42 = sub_1D9176BCC();
  v43 = (*(v41 + 32))(v42);

  if (v43)
  {

    a3 = v78;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v44 = sub_1D917744C();
    __swift_project_value_buffer(v44, qword_1EDCD0F88);
    v45 = sub_1D917741C();
    v46 = sub_1D9178CEC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D8CEC000, v45, v46, "Download check for episode passed, asset was verified by the environment", v47, 2u);
      v48 = v47;
      a3 = v78;
      MEMORY[0x1DA72CB90](v48, -1, -1);
    }

    goto LABEL_26;
  }

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v50 = sub_1D917744C();
  __swift_project_value_buffer(v50, qword_1EDCD0F88);
  (*(v12 + 16))(v15, v18, v11);

  v51 = sub_1D917741C();
  v52 = sub_1D9178CDC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v53 = 136315394;
    *(v53 + 4) = sub_1D8CFA924(v80, v23, aBlock);
    *(v53 + 12) = 2080;
    v54 = sub_1D9176BCC();
    v77 = v23;
    v55 = v52;
    v56 = v54;
    v58 = v57;
    v59 = v15;
    v60 = *(v12 + 8);
    v60(v59, v11);
    v61 = sub_1D8CFA924(v56, v58, aBlock);

    *(v53 + 14) = v61;
    v62 = v55;
    v23 = v77;
    _os_log_impl(&dword_1D8CEC000, v51, v62, "Found missing artifact for episode %s, expected path: %s", v53, 0x16u);
    v63 = v76;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v63, -1, -1);
    MEMORY[0x1DA72CB90](v53, -1, -1);
  }

  else
  {

    v64 = v15;
    v60 = *(v12 + 8);
    v60(v64, v11);
  }

  v65 = v79;
  v66 = sub_1D8D6F4B4(MEMORY[0x1E69E7CC0]);
  v67 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  aBlock[4] = sub_1D8E81910;
  aBlock[5] = v68;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_11;
  v69 = _Block_copy(aBlock);

  v70 = [v67 initWithName:@"com.apple.podcastsEpisodeMissingAsset" generator:v69];
  _Block_release(v69);
  [v65 sendEvent_];

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  v72 = v78;
  v73 = (v78 + *(v71 + 48));
  *v73 = v80;
  v73[1] = v23;
  sub_1D9176E9C();
  v60(v18, v11);
  v74 = type metadata accessor for DownloadConsistency.Issue(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
}

uint64_t sub_1D8E81760(uint64_t a1)
{
  v7 = sub_1D917820C();
  sub_1D91793EC();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v2 = sub_1D8D6550C(v8);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v9);
  sub_1D8D9A308(v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D917820C();
  sub_1D91793EC();
  if (!*(a1 + 16) || (v4 = sub_1D8D6550C(v8), (v5 & 1) == 0))
  {

LABEL_9:
    sub_1D8D9A308(v8);
    return 0;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v4, v9);
  sub_1D8D9A308(v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  return 0;
}

uint64_t sub_1D8E8191C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5308, &qword_1D918ECB0);
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5310, &qword_1D918ECB8);
  v48 = *(v45 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5318, &qword_1D918ECC0);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  sub_1D917881C();
  v24 = sub_1D917886C();
  (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  sub_1D8DBBEB4(a1, v52);
  v25 = swift_allocObject();
  v26 = v52[3];
  *(v25 + 48) = v52[2];
  *(v25 + 64) = v26;
  *(v25 + 80) = v52[4];
  *(v25 + 96) = v53;
  v27 = v52[1];
  *(v25 + 16) = v52[0];
  *(v25 + 32) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8CF5C74(v16, v13);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1D8D46700(v13, v30 + v28);
  v31 = (v30 + v29);
  *v31 = &unk_1D918ED68;
  v31[1] = v25;
  v32 = sub_1D9177A4C();
  sub_1D8D08A50(v16, &qword_1ECABB890, &qword_1D918B960);
  v33 = *(a1 + 80);
  v34 = sub_1D9178DBC();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  v51 = v32;
  *&v52[0] = v33;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0260, &qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8D02DF0();
  v35 = v44;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A18, &qword_1ECAB5308, &qword_1D918ECB0);
  v36 = v43;
  v37 = v49;
  sub_1D9177CEC();

  (*(v50 + 8))(v35, v37);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5328, qword_1D918ECE0);
  sub_1D8CF48EC(&unk_1ECAB0438, &qword_1ECAB5310, &qword_1D918ECB8);
  sub_1D8CF48EC(&qword_1ECAB0530, &qword_1ECAB5328, qword_1D918ECE0);
  v38 = v45;
  sub_1D9177CAC();
  (*(v48 + 8))(v36, v38);
  sub_1D8CF48EC(&qword_1ECAB0570, &qword_1ECAB5318, &qword_1D918ECC0);
  v39 = v46;
  v40 = sub_1D9177B1C();
  (*(v47 + 8))(v23, v39);
  return v40;
}

uint64_t AsyncDownloadedAssetIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5308, &qword_1D918ECB0);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v52 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5310, &qword_1D918ECB8);
  v62 = *(v59 - 8);
  v24 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5318, &qword_1D918ECC0);
  v27 = *(v26 - 8);
  v60 = v26;
  v61 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v57 = &v52 - v29;
  sub_1D917881C();
  v30 = sub_1D917886C();
  (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
  (*(v15 + 16))(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  sub_1D8DBBEB4(a1, v66);
  v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v32 = swift_allocObject();
  v33 = v55;
  *(v32 + 16) = a2;
  *(v32 + 24) = v33;
  (*(v15 + 32))(v32 + v31, &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v34 = v32 + ((v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = v66[3];
  *(v34 + 32) = v66[2];
  *(v34 + 48) = v35;
  *(v34 + 64) = v66[4];
  *(v34 + 80) = v67;
  v36 = v66[1];
  *v34 = v66[0];
  *(v34 + 16) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8CF5C74(v23, v20);
  v37 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v38 = (v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1D8D46700(v20, v39 + v37);
  v40 = (v39 + v38);
  *v40 = &unk_1D918ECD0;
  v40[1] = v32;
  v41 = sub_1D9177A4C();
  sub_1D8D08A50(v23, &qword_1ECABB890, &qword_1D918B960);
  v42 = *(v53 + 80);
  v43 = sub_1D9178DBC();
  (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
  v65 = v41;
  *&v66[0] = v42;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0260, &qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8D02DF0();
  v44 = v58;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A18, &qword_1ECAB5308, &qword_1D918ECB0);
  v45 = v56;
  v46 = v63;
  sub_1D9177CEC();

  (*(v64 + 8))(v44, v46);
  sub_1D8D08A50(v14, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5328, qword_1D918ECE0);
  sub_1D8CF48EC(&unk_1ECAB0438, &qword_1ECAB5310, &qword_1D918ECB8);
  sub_1D8CF48EC(&qword_1ECAB0530, &qword_1ECAB5328, qword_1D918ECE0);
  v47 = v57;
  v48 = v59;
  sub_1D9177CAC();
  (*(v62 + 8))(v45, v48);
  sub_1D8CF48EC(&qword_1ECAB0570, &qword_1ECAB5318, &qword_1D918ECC0);
  v49 = v60;
  v50 = sub_1D9177B1C();
  (*(v61 + 8))(v47, v49);
  return v50;
}

uint64_t sub_1D8E82728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(a5 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = sub_1D8E8285C;

  return v13(a3, a4, a5);
}

uint64_t sub_1D8E8285C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D8E83564, 0, 0);
  }
}

uint64_t sub_1D8E829A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8D5FF18;

  return sub_1D8E82728(a1, v1 + v6, v1 + v7, v4, v5);
}

uint64_t sub_1D8E82ABC(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5330, &qword_1D918ED70);
  sub_1D8CF48EC(&qword_1ECAAFF50, &qword_1ECAB5330, &qword_1D918ED70);
  return sub_1D917841C();
}

uint64_t sub_1D8E82B50(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1D8E82BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1D8CF5C74(a3, &v16 - v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a4;
  v14[7] = a5;

  sub_1D8E91268(0, 0, v13, &unk_1D918EDB8, v14);
}

uint64_t dispatch thunk of AsyncDownloadedAssetIssueIdentifier.issues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8E24548;

  return v11(a1, a2, a3);
}

uint64_t sub_1D8E82E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_1D8E82EF4;

  return v10(v6 + 2);
}

uint64_t sub_1D8E82EF4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D8E83080;
  }

  else
  {
    v3 = sub_1D8E83008;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E83008()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 24) = 0;
  v1(v0 + 16);
  sub_1D8D99898(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D8E83080()
{
  v9 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v7 = v1;
  v8 = 1;
  v4 = v1;
  v3(&v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8E83118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D8E831B4;

  return AbandonedStreamIssueIdentifier.issues(for:)(a3);
}

uint64_t sub_1D8E831B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D8E83300, 0, 0);
  }
}

uint64_t sub_1D8E83324(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8D58924;

  return sub_1D8E83118(a1, sub_1D8E83118, v1 + 16);
}

uint64_t sub_1D8E833D4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D8E82BC4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1D8E83490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8E82E00(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_1D8E8356C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static NSPredicate.EvaluationTree.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D8E8362C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for ServerTranscript(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA72AA90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1DA72AA90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D917914C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D917914C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D917935C();
  }

  result = sub_1D917935C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D8E8386C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t sub_1D8E838F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 56)
  {
    v5 = 0;
    v6 = a1 + i;
    v7 = a2 + i;
    if (*(a1 + i + 32) != *(a2 + i + 32) || *(v6 + 40) != *(v7 + 40))
    {
      break;
    }

    v8 = *(v6 + 48);
    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    v11 = *(v6 + 72);
    v12 = *(v6 + 80);
    v13 = *(v7 + 48);
    v14 = *(v7 + 56);
    v15 = *(v7 + 64);
    v16 = *(v7 + 72);
    v17 = *(v7 + 80);
    if (v8 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else
    {
      v5 = 0;
      if (v13 == 2 || ((v13 ^ v8) & 1) != 0)
      {
        return v5;
      }
    }

    if (v10)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v9 == v14)
      {
        v18 = v15;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      if (v11 == v16)
      {
        v4 = v17;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return v5;
}

uint64_t sub_1D8E839E4(uint64_t result, uint64_t a2)
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

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E83A54(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA72AA90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1DA72AA90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D917914C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D917914C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D917935C();
  }

  result = sub_1D917935C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D8E83CA4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1D9179ACC() & 1) == 0)
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

uint64_t sub_1D8E83D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v102 = v2;
  v103 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[11];
    v9 = v5[13];
    v83 = v5[12];
    v84 = v9;
    v10 = v5[13];
    v85 = v5[14];
    v11 = v5[7];
    v12 = v5[9];
    v79 = v5[8];
    v80 = v12;
    v13 = v5[9];
    v14 = v5[11];
    v81 = v5[10];
    v82 = v14;
    v15 = v5[3];
    v16 = v5[5];
    v75 = v5[4];
    v76 = v16;
    v17 = v5[5];
    v18 = v5[7];
    v77 = v5[6];
    v78 = v18;
    v19 = v5[1];
    v72[0] = *v5;
    v72[1] = v19;
    v20 = v5[3];
    v22 = *v5;
    v21 = v5[1];
    v73 = v5[2];
    v74 = v20;
    v69 = v83;
    v70 = v10;
    v71 = v5[14];
    v65 = v79;
    v66 = v13;
    v67 = v81;
    v68 = v8;
    v61 = v75;
    v62 = v17;
    v63 = v77;
    v64 = v11;
    v57 = v22;
    v58 = v21;
    v59 = v73;
    v60 = v15;
    v23 = v6[11];
    v24 = v6[13];
    v97 = v6[12];
    v98 = v24;
    v25 = v6[13];
    v99 = v6[14];
    v26 = v6[7];
    v27 = v6[9];
    v93 = v6[8];
    v94 = v27;
    v29 = v6[9];
    v28 = v6[10];
    v30 = v28;
    v96 = v6[11];
    v95 = v28;
    v31 = v6[3];
    v32 = v6[5];
    v89 = v6[4];
    v90 = v32;
    v34 = v6[5];
    v33 = v6[6];
    v92 = v6[7];
    v91 = v33;
    v35 = v6[1];
    v86[0] = *v6;
    v86[1] = v35;
    v36 = v6[3];
    v38 = *v6;
    v37 = v6[1];
    v87 = v6[2];
    v88 = v36;
    v54 = v97;
    v55 = v25;
    v56 = v6[14];
    v50 = v93;
    v51 = v29;
    v52 = v30;
    v53 = v23;
    v46 = v89;
    v47 = v34;
    v48 = v33;
    v49 = v26;
    v42 = v38;
    v43 = v37;
    v44 = v87;
    v45 = v31;
    sub_1D8E2D01C(v72, v41);
    sub_1D8E2D01C(v86, v41);
    v39 = _s18PodcastsFoundation7ChapterV2eeoiySbAC_ACtFZ_0(&v57, &v42);
    v100[12] = v54;
    v100[13] = v55;
    v100[14] = v56;
    v100[8] = v50;
    v100[9] = v51;
    v100[11] = v53;
    v100[10] = v52;
    v100[4] = v46;
    v100[5] = v47;
    v100[7] = v49;
    v100[6] = v48;
    v100[0] = v42;
    v100[1] = v43;
    v100[3] = v45;
    v100[2] = v44;
    sub_1D8E2D078(v100);
    v101[12] = v69;
    v101[13] = v70;
    v101[14] = v71;
    v101[8] = v65;
    v101[9] = v66;
    v101[11] = v68;
    v101[10] = v67;
    v101[4] = v61;
    v101[5] = v62;
    v101[7] = v64;
    v101[6] = v63;
    v101[0] = v57;
    v101[1] = v58;
    v101[3] = v60;
    v101[2] = v59;
    sub_1D8E2D078(v101);
    if (!v39)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 15;
    v5 += 15;
  }

  return 1;
}

uint64_t sub_1D8E83FCC(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v21 = a2 + 32;
  v22 = result + 32;
  while (v3 != v2)
  {
    v4 = v22 + 32 * v3;
    v5 = v21 + 32 * v3;
    if (*v4 != *v5 || *(v4 + 8) != *(v5 + 8))
    {
      return 0;
    }

    v7 = *(v4 + 16);
    v8 = *(v5 + 16);
    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      return 0;
    }

    v10 = *(v4 + 24);
    v11 = *(v5 + 24);
    if (v9)
    {
      v12 = v7 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = 0;
      while (v9)
      {
        v14 = v7 + v13;
        v15 = v8 + v13;
        if (*(v7 + v13 + 32) != *(v8 + v13 + 32) || *(v7 + v13 + 40) != *(v8 + v13 + 40))
        {
          return 0;
        }

        result = *(v14 + 48);
        v17 = *(v14 + 64);
        v18 = *(v15 + 64);
        if (result == *(v15 + 48) && *(v14 + 56) == *(v15 + 56))
        {
          if (v17 != v18)
          {
            return 0;
          }
        }

        else
        {
          v20 = sub_1D9179ACC();
          result = 0;
          if (v20 & 1) == 0 || ((v17 ^ v18))
          {
            return result;
          }
        }

        v13 += 40;
        if (!--v9)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v10 != v11)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E8413C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = a1 + i;
      v7 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40))
      {
        break;
      }

      v9 = *(v6 + 64);
      v10 = *(v7 + 64);
      if (*(v6 + 48) == *(v7 + 48) && *(v6 + 56) == *(v7 + 56))
      {
        if (v9 != v10)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1D9179ACC();
        result = 0;
        if (v12 & 1) == 0 || ((v9 ^ v10))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D8E84214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 40)
    {
      v6 = (a1 + i);
      v7 = (a2 + i);
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40))
      {
        break;
      }

      v10 = v6[7];
      v9 = v6[8];
      v12 = v7[7];
      v11 = v7[8];
      if (v10)
      {
        if (!v12)
        {
          return 0;
        }

        if (v6[6] != v7[6] || v10 != v12)
        {
          v14 = v6[8];
          v15 = v7[8];
          v16 = sub_1D9179ACC();
          v11 = v15;
          v17 = v16;
          v9 = v14;
          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if ((sub_1D8E83FCC(v9, v11) & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D8E84390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    v27 = 0;
    return v27 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v23 = (v21 - 8);
  v31 = *(v21 + 56);
  v32 = v22;
  while (1)
  {
    v24 = v32;
    result = (v32)(v16, v19, v8, v14);
    if (!v17)
    {
      break;
    }

    v26 = v21;
    v24(v12, v20, v8);
    sub_1D8E8908C(v33, v34);
    v27 = sub_1D91781BC();
    v28 = *v23;
    (*v23)(v12, v8);
    v28(v16, v8);
    if (v27)
    {
      v20 += v31;
      v19 += v31;
      v29 = v17-- == 1;
      v21 = v26;
      if (!v29)
      {
        continue;
      }
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E845DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1D8E898F0(v21, v18, a4);
        sub_1D8E898F0(v22, v14, a4);
        v24 = a5(v18, v14);
        sub_1D8E89958(v14, a6);
        sub_1D8E89958(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1D8E8477C(uint64_t a1, uint64_t a2)
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
    do
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *(v3 - 4);
      v11 = *v3;
      if (*v4 == 1)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v12 = *(v3 - 2);
        v13 = *(v3 - 1);
        if (v7 != v10 || v6 != *(v3 - 3))
        {
          v15 = *(v4 - 4);
          v16 = *(v3 - 4);
          if ((sub_1D9179ACC() & 1) == 0)
          {
            return 0;
          }
        }

        if ((v8 != v12 || v9 != v13) && (sub_1D9179ACC() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_1D8E89A08(*(v4 - 4), v6, *(v4 - 2), *(v4 - 1), 0);
        if (v7 == v10)
        {
          v5 = v11;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D8E84898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); *(v3 - 1) == *(i - 1); i += 2)
    {
      v5 = *v3;
      v6 = *i;

      v7 = sub_1D8E83A54(v5, v6);

      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t DownloadConsistency.IssueResolution.init(issue:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8E89A4C(a1, a3, type metadata accessor for DownloadConsistency.Issue);
  result = type metadata accessor for DownloadConsistency.IssueResolution(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D8E849A8(uint64_t a1, uint64_t *a2)
{
  sub_1D8CFD9D8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1D8D6BCE0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D8E84A14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  return sub_1D8CFD9D8(v1 + v3, a1);
}

id DownloadConsistency.__allocating_init(issueIdentifier:resolutionStrategy:effectApplicator:downloadEnvironment:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___PFDownloadConsistency_listener] = 0;
  sub_1D8CFD9D8(a1, &v10[OBJC_IVAR___PFDownloadConsistency_identifier]);
  sub_1D8CFD9D8(a2, &v10[OBJC_IVAR___PFDownloadConsistency_resolutionStrategy]);
  sub_1D8CFD9D8(a3, &v10[OBJC_IVAR___PFDownloadConsistency_effectApplicator]);
  sub_1D8DBBEB4(a4, &v10[OBJC_IVAR___PFDownloadConsistency_environment]);
  v13.receiver = v10;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D8DBC210(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t sub_1D8E84BBC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void sub_1D8E84C54(void **a1, void (*a2)(void *))
{
  v3 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F88);
  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178CDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v11 = sub_1D917826C();
    v13 = sub_1D8CFA924(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Finished addressing consistency issues with completion: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  if (a2)
  {

    a2(v3);
    sub_1D8D15664(a2);
  }
}

void sub_1D8E84E08(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F88);

  oslog = sub_1D917741C();
  v3 = sub_1D9178CEC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = type metadata accessor for DownloadedAssetEffect();
    v7 = MEMORY[0x1DA729BD0](v1, v6);
    v9 = sub_1D8CFA924(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D8CEC000, oslog, v3, "Applied corrective effects to environment: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }
}

uint64_t sub_1D8E84F78()
{
  v1 = OBJC_IVAR___PFDownloadConsistency_listener;
  if (*(v0 + OBJC_IVAR___PFDownloadConsistency_listener))
  {

    sub_1D917785C();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1D8E8505C(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v4 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  v5 = v4 - 8;
  v35 = *(v4 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54C0, &qword_1D918F5B8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54C8, &qword_1D918F5C0);
  v45 = *(v41 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v34 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54D0, &qword_1D918F5C8);
  v44 = *(v42 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v34 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54D8, &qword_1D918F5D0);
  v43 = *(v40 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v20 = &v34 - v19;
  *&v46[0] = *(a1 + *(v5 + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54E0, &qword_1D918F5D8);
  sub_1D8CF48EC(&qword_1ECAAFF40, &qword_1ECAB54E0, &qword_1D918F5D8);
  sub_1D917773C();
  sub_1D8E898F0(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadConsistency.IssueResolution);
  sub_1D8DBBEB4(v36, v46);
  v21 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v22 = swift_allocObject();
  v23 = v37;
  *(v22 + 16) = v37;
  sub_1D8E89A4C(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for DownloadConsistency.IssueResolution);
  v24 = v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = v46[3];
  *(v24 + 32) = v46[2];
  *(v24 + 48) = v25;
  *(v24 + 64) = v46[4];
  *(v24 + 80) = v47;
  v26 = v46[1];
  *v24 = v46[0];
  *(v24 + 16) = v26;
  v27 = v23;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54E8, &unk_1D918F5E0);
  sub_1D8CF48EC(&qword_1ECAB0528, &qword_1ECAB54C0, &qword_1D918F5B8);
  sub_1D8CF48EC(&qword_1ECAB0370, &qword_1ECAB54E8, &unk_1D918F5E0);
  v28 = v38;
  sub_1D9177DDC();

  (*(v39 + 8))(v11, v28);
  type metadata accessor for DownloadedAssetEffect();
  sub_1D8CF48EC(&qword_1ECAB05E0, &qword_1ECAB54C8, &qword_1D918F5C0);
  v29 = v41;
  sub_1D9177B2C();
  (*(v45 + 8))(v14, v29);
  sub_1D8CF48EC(&qword_1ECAB0B90, &qword_1ECAB54D0, &qword_1D918F5C8);
  v30 = v42;
  sub_1D9177C8C();
  (*(v44 + 8))(v17, v30);
  sub_1D8CF48EC(&qword_1ECAB0640, &qword_1ECAB54D8, &qword_1D918F5D0);
  v31 = v40;
  v32 = sub_1D9177B1C();
  (*(v43 + 8))(v20, v31);
  return v32;
}

uint64_t sub_1D8E85690@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1D8E856D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5488, &qword_1D918F578);
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v47 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5490, &qword_1D918F580);
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v47 - v9;
  v10 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for DownloadedAssetEffect();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD0F20);
  v49 = a1;
  sub_1D8E898F0(a1, v23, type metadata accessor for DownloadedAssetEffect);
  sub_1D8E898F0(a2, v16, type metadata accessor for DownloadConsistency.IssueResolution);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = a3;
    v29 = v28;
    v56 = v28;
    *v27 = 136315394;
    sub_1D8E898F0(v23, v20, type metadata accessor for DownloadedAssetEffect);
    v30 = sub_1D917826C();
    v32 = v31;
    sub_1D8E89958(v23, type metadata accessor for DownloadedAssetEffect);
    v33 = sub_1D8CFA924(v30, v32, &v56);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    sub_1D8E898F0(v16, v13, type metadata accessor for DownloadConsistency.IssueResolution);
    v34 = sub_1D917826C();
    v36 = v35;
    sub_1D8E89958(v16, type metadata accessor for DownloadConsistency.IssueResolution);
    v37 = sub_1D8CFA924(v34, v36, &v56);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "Applying (%s for resolution: %s", v27, 0x16u);
    swift_arrayDestroy();
    v38 = v29;
    a3 = v47;
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {

    sub_1D8E89958(v16, type metadata accessor for DownloadConsistency.IssueResolution);
    sub_1D8E89958(v23, type metadata accessor for DownloadedAssetEffect);
  }

  v39 = *(v48 + OBJC_IVAR___PFDownloadConsistency_effectApplicator + 24);
  v40 = *(v48 + OBJC_IVAR___PFDownloadConsistency_effectApplicator + 32);
  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR___PFDownloadConsistency_effectApplicator), v39);
  v56 = (*(v40 + 8))(v49, a3, v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5498, &qword_1D918F588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  sub_1D8CF48EC(&qword_1ECAB0368, &qword_1ECAB5498, &qword_1D918F588);
  v41 = v50;
  sub_1D9177B9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A8, &unk_1D918F598);
  sub_1D8CF48EC(&qword_1ECAB07C8, &qword_1ECAB5488, &qword_1D918F578);
  sub_1D8CF48EC(&qword_1ECAB02C8, &qword_1ECAB54A8, &unk_1D918F598);
  v42 = v51;
  v43 = v54;
  sub_1D9177BDC();
  (*(v52 + 8))(v41, v43);
  sub_1D8CF48EC(&qword_1ECAB06E8, &qword_1ECAB5490, &qword_1D918F580);
  v44 = v55;
  v45 = sub_1D9177B1C();
  (*(v53 + 8))(v42, v44);
  return v45;
}

uint64_t sub_1D8E85D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8E898F0(a1, a2, type metadata accessor for DownloadedAssetEffect);
  v3 = type metadata accessor for DownloadedAssetEffect();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1D8E85E20(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F88);
  v8 = v6;
  v9 = sub_1D917741C();
  v10 = sub_1D9178CFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v6;
    v20 = v12;
    *v11 = 136315138;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Failed to apply effect to the environment: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v17 = type metadata accessor for DownloadedAssetEffect();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  return sub_1D9177A0C();
}

id DownloadConsistency.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadConsistency.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadConsistency();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E86198()
{
  v1 = 0x4164656E776F6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1D8E86200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8E897C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8E86228(uint64_t a1)
{
  v2 = sub_1D8E88FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E86264(uint64_t a1)
{
  v2 = sub_1D8E88FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8E862A0(uint64_t a1)
{
  v2 = sub_1D8E89128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E862DC(uint64_t a1)
{
  v2 = sub_1D8E89128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8E86318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5565646F73697065 && a2 == 0xEB00000000646975)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D8E863F0(uint64_t a1)
{
  v2 = sub_1D8E890D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E8642C(uint64_t a1)
{
  v2 = sub_1D8E890D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8E86468()
{
  if (*v0)
  {
    result = 1701603686;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1D8E86490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D8E86564(uint64_t a1)
{
  v2 = sub_1D8E89038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E865A0(uint64_t a1)
{
  v2 = sub_1D8E89038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadConsistency.Issue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5398, &qword_1D918EE10);
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v59 - v4;
  v71 = sub_1D9176C2C();
  v65 = *(v71 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53A0, &qword_1D918EE18);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v59 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53A8, &qword_1D918EE20);
  v60 = *(v69 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v59 - v11;
  v77 = sub_1D9176EAC();
  v75 = *(v77 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for DownloadConsistency.Issue(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53B0, &qword_1D918EE28);
  v76 = *(v74 - 8);
  v25 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v27 = &v59 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8E88FE4();
  v78 = v27;
  sub_1D9179F1C();
  sub_1D8E898F0(v72, v24, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
      v32 = *v30;
      v31 = v30[1];
      v71 = v32;
      v72 = v31;
      v33 = v75;
      v34 = v77;
      (*(v75 + 32))(v17, v24, v77);
      v84 = 1;
      sub_1D8E890D4();
      v35 = v61;
      v36 = v74;
      v37 = v78;
      sub_1D917993C();
      v83 = 0;
      sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8]);
      v38 = v63;
      v39 = v73;
      sub_1D91799FC();
      if (v39)
      {

        (*(v62 + 8))(v35, v38);
        (*(v33 + 8))(v17, v34);
        return (*(v76 + 8))(v37, v36);
      }

      else
      {
        v82 = 1;
        sub_1D91799BC();

        (*(v62 + 8))(v35, v38);
        (*(v33 + 8))(v17, v77);
        return (*(v76 + 8))(v78, v36);
      }
    }

    else
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
      v51 = v75;
      v52 = v77;
      (*(v75 + 32))(v68, v24, v77);
      v53 = v65;
      (*(v65 + 32))(v70, &v24[v50], v71);
      v87 = 2;
      sub_1D8E89038();
      v54 = v64;
      v55 = v74;
      v56 = v78;
      sub_1D917993C();
      v86 = 0;
      sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8]);
      v57 = v67;
      v58 = v73;
      sub_1D91799FC();
      if (!v58)
      {
        v85 = 1;
        sub_1D8E8908C(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0]);
        sub_1D91799FC();
      }

      (*(v66 + 8))(v54, v57);
      (*(v53 + 8))(v70, v71);
      (*(v51 + 8))(v68, v52);
      return (*(v76 + 8))(v56, v55);
    }
  }

  else
  {
    v41 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v42 = v41[1];
    v72 = *v41;
    v43 = v75;
    v44 = v77;
    (*(v75 + 32))(v20, v24, v77);
    v81 = 0;
    sub_1D8E89128();
    v45 = v74;
    v46 = v78;
    sub_1D917993C();
    v80 = 0;
    sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8]);
    v47 = v73;
    sub_1D91799FC();
    if (v47)
    {

      (*(v60 + 8))(v12, v69);
      (*(v43 + 8))(v20, v44);
      v48 = *(v76 + 8);
      v49 = v46;
    }

    else
    {
      v79 = 1;
      sub_1D91799BC();

      (*(v60 + 8))(v12, v69);
      (*(v43 + 8))(v20, v44);
      v48 = *(v76 + 8);
      v49 = v78;
    }

    return v48(v49, v45);
  }
}

uint64_t DownloadConsistency.Issue.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DownloadConsistency.Issue(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E898F0(v1, v15, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
      (*(v8 + 32))(v11, v15, v7);
      (*(v3 + 32))(v6, &v15[v24], v2);
      MEMORY[0x1DA72B390](2);
      sub_1D8E8908C(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
      sub_1D917814C();
      sub_1D8E8908C(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
      sub_1D917814C();
      (*(v3 + 8))(v6, v2);
      return (*(v8 + 8))(v11, v7);
    }

    v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v18 = *v17;
    v19 = *(v17 + 1);
    (*(v8 + 32))(v11, v15, v7);
    v20 = 1;
  }

  else
  {
    v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v22 = *v21;
    v23 = *(v21 + 1);
    (*(v8 + 32))(v11, v15, v7);
    v20 = 0;
  }

  MEMORY[0x1DA72B390](v20);
  sub_1D8E8908C(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  sub_1D917814C();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return (*(v8 + 8))(v11, v7);
}

uint64_t DownloadConsistency.Issue.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t DownloadConsistency.Issue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53E0, &qword_1D918EE30);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53E8, &qword_1D918EE38);
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53F0, &qword_1D918EE40);
  v11 = *(v10 - 8);
  v84 = v10;
  v85 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v78 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53F8, &qword_1D918EE48);
  v93 = *(v95 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v16 = &v78 - v15;
  v17 = type metadata accessor for DownloadConsistency.Issue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v78 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D8E88FE4();
  v32 = v96;
  sub_1D9179EEC();
  if (!v32)
  {
    v79 = v23;
    v80 = v26;
    v81 = v20;
    v82 = v29;
    v83 = 0;
    v34 = v90;
    v33 = v91;
    v35 = v92;
    v96 = v17;
    v37 = v94;
    v36 = v95;
    v38 = sub_1D917991C();
    v39 = v38;
    v40 = *(v38 + 16);
    if (!v40 || ((v41 = *(v38 + 32), v40 == 1) ? (v42 = v41 == 3) : (v42 = 1), v42))
    {
      v43 = sub_1D917951C();
      swift_allocError();
      v45 = v44;
      v46 = v16;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
      *v45 = v96;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v93 + 8))(v46, v36);
    }

    else
    {
      if (*(v38 + 32))
      {
        if (v41 != 1)
        {
          v106 = 2;
          sub_1D8E89038();
          v53 = v83;
          sub_1D917982C();
          v54 = v93;
          if (!v53)
          {
            sub_1D9176EAC();
            v105 = 0;
            sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8]);
            sub_1D91798FC();
            v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
            sub_1D9176C2C();
            v104 = 1;
            sub_1D8E8908C(&qword_1ECAB2C98, MEMORY[0x1E6968FB0]);
            v66 = v89;
            sub_1D91798FC();
            (*(v88 + 8))(v35, v66);
            (*(v54 + 8))(v16, v95);
            swift_unknownObjectRelease();
            v77 = v81;
            swift_storeEnumTagMultiPayload();
            v71 = v77;
            v72 = v82;
            v37 = v94;
            goto LABEL_22;
          }

          (*(v93 + 8))(v16, v36);
          goto LABEL_9;
        }

        v103 = 1;
        sub_1D8E890D4();
        v49 = v83;
        sub_1D917982C();
        v50 = v93;
        if (!v49)
        {
          v92 = v39;
          sub_1D9176EAC();
          v102 = 0;
          sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8]);
          v51 = v86;
          sub_1D91798FC();
          v57 = v36;
          v58 = v16;
          v101 = 1;
          v59 = sub_1D91798BC();
          v89 = v60;
          v90 = v59;
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
          v68 = v79;
          v69 = &v79[*(v67 + 48)];
          (*(v87 + 8))(v33, v51);
          (*(v50 + 8))(v58, v57);
          swift_unknownObjectRelease();
          v70 = v89;
          *v69 = v90;
          *(v69 + 1) = v70;
          swift_storeEnumTagMultiPayload();
          v71 = v68;
          v72 = v82;
LABEL_22:
          sub_1D8E89A4C(v71, v72, type metadata accessor for DownloadConsistency.Issue);
          sub_1D8E89A4C(v72, v37, type metadata accessor for DownloadConsistency.Issue);
          return __swift_destroy_boxed_opaque_existential_1Tm(v97);
        }
      }

      else
      {
        v100 = 0;
        sub_1D8E89128();
        v52 = v83;
        sub_1D917982C();
        v72 = v82;
        if (!v52)
        {
          v92 = v39;
          sub_1D9176EAC();
          v99 = 0;
          sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8]);
          v55 = v34;
          v56 = v84;
          sub_1D91798FC();
          v61 = v36;
          v62 = v16;
          v63 = v61;
          v98 = 1;
          v91 = sub_1D91798BC();
          v89 = v64;
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
          v74 = v80;
          v75 = &v80[*(v73 + 48)];
          (*(v85 + 8))(v55, v56);
          (*(v93 + 8))(v62, v63);
          swift_unknownObjectRelease();
          v76 = v89;
          *v75 = v91;
          *(v75 + 1) = v76;
          swift_storeEnumTagMultiPayload();
          v71 = v74;
          goto LABEL_22;
        }

        v50 = v93;
      }

      (*(v50 + 8))(v16, v36);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v97);
}

uint64_t sub_1D8E87E88()
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

uint64_t sub_1D8E87EBC()
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

uint64_t sub_1D8E87EF0()
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

uint64_t sub_1D8E87F24()
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

uint64_t sub_1D8E87F58()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
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

uint64_t sub_1D8E87F8C()
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

uint64_t sub_1D8E87FC0()
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

uint64_t sub_1D8E88028()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E8806C()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t DownloadConsistency.IssueResolution.strategy.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadConsistency.IssueResolution(0) + 20));
}

uint64_t static DownloadConsistency.IssueResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for DownloadConsistency.IssueResolution(0);
    v5 = sub_1D8E845DC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)), type metadata accessor for DownloadedAssetEffect, type metadata accessor for DownloadedAssetEffect, _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0, type metadata accessor for DownloadedAssetEffect);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t DownloadConsistency.IssueResolution.hash(into:)(uint64_t a1)
{
  DownloadConsistency.Issue.hash(into:)();
  v3 = *(v1 + *(type metadata accessor for DownloadConsistency.IssueResolution(0) + 20));

  return sub_1D8E88458(a1, v3);
}

uint64_t DownloadConsistency.IssueResolution.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  v1 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  sub_1D8E88458(v3, *(v0 + *(v1 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88250(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  sub_1D8E88458(v4, *(v1 + *(a1 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E882A4(uint64_t a1, uint64_t a2)
{
  DownloadConsistency.Issue.hash(into:)();
  v5 = *(v2 + *(a2 + 20));

  return sub_1D8E88458(a1, v5);
}

uint64_t sub_1D8E882F0(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)();
  sub_1D8E88458(v5, *(v2 + *(a2 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = sub_1D8E845DC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), type metadata accessor for DownloadedAssetEffect, type metadata accessor for DownloadedAssetEffect, _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0, type metadata accessor for DownloadedAssetEffect);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t DownloadConsistency.IssueResolutionError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88458(uint64_t a1, uint64_t a2)
{
  v29 = sub_1D9176C2C();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadedAssetEffect();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1DA72B390](v15, v12);
  if (v15)
  {
    v17 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = *(v7 + 72);
    v26 = (v3 + 8);
    v27 = (v3 + 32);
    do
    {
      sub_1D8E898F0(v17, v14, type metadata accessor for DownloadedAssetEffect);
      sub_1D8E898F0(v14, v10, type metadata accessor for DownloadedAssetEffect);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v24 = v28;
          v25 = v29;
          (*v27)(v28, v10, v29);
          MEMORY[0x1DA72B390](2);
          sub_1D8E8908C(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
          sub_1D917814C();
          (*v26)(v24, v25);
          goto LABEL_5;
        }

        v22 = *v10;
        v23 = v10[1];
        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v20 = *v10;
        v19 = v10[1];
        MEMORY[0x1DA72B390](0);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

LABEL_5:
      result = sub_1D8E89958(v14, type metadata accessor for DownloadedAssetEffect);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1D8E8874C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA72B390](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      if (v10 == 1)
      {
        MEMORY[0x1DA72B390](1);
        sub_1D8E899C4(v6, v7, v8, v9, 1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v6);
      }

      result = sub_1D8E89A08(v6, v7, v8, v9, v10);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v76 - v8;
  v9 = sub_1D9176EAC();
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for DownloadConsistency.Issue(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54B8, &qword_1D918F5A8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v76 - v30;
  v33 = &v76 + *(v32 + 56) - v30;
  sub_1D8E898F0(a1, &v76 - v30, type metadata accessor for DownloadConsistency.Issue);
  sub_1D8E898F0(a2, v33, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E898F0(v31, v27, type metadata accessor for DownloadConsistency.Issue);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48);
    v50 = *&v27[v48];
    v49 = *&v27[v48 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_18;
    }

    v66 = *&v33[v48];
    v67 = *&v33[v48 + 8];
    v81 = v66;
    v68 = v82;
    v69 = v83;
    (*(v83 + 32))(v17, v33, v82);
    v70 = sub_1D9176E7C();
    v71 = *(v69 + 8);
    v71(v27, v68);
    if ((v70 & 1) == 0)
    {
      v71(v17, v68);
LABEL_29:

      goto LABEL_30;
    }

    if (v50 == v81 && v49 == v67)
    {

      v71(v17, v82);
      goto LABEL_35;
    }

    v73 = sub_1D9179ACC();

    v71(v17, v82);
    if (v73)
    {
      goto LABEL_35;
    }

LABEL_30:
    sub_1D8E89958(v31, type metadata accessor for DownloadConsistency.Issue);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8E898F0(v31, v24, type metadata accessor for DownloadConsistency.Issue);
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48);
    v37 = *&v24[v35];
    v36 = *&v24[v35 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = *&v33[v35];
      v39 = *&v33[v35 + 8];
      v81 = v38;
      v40 = v83;
      v41 = v78;
      v42 = v33;
      v43 = v82;
      (*(v83 + 32))(v78, v42, v82);
      v44 = sub_1D9176E7C();
      v45 = *(v40 + 8);
      v45(v24, v43);
      if (v44)
      {
        if (v37 != v81 || v36 != v39)
        {
          v47 = sub_1D9179ACC();

          v45(v78, v43);
          if (v47)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

        v45(v78, v43);
LABEL_35:
        sub_1D8E89958(v31, type metadata accessor for DownloadConsistency.Issue);
        v64 = 1;
        return v64 & 1;
      }

      v45(v41, v43);
      goto LABEL_29;
    }

    v27 = v24;
LABEL_18:
    (*(v83 + 8))(v27, v82);
    sub_1D8D08A50(v31, &qword_1ECAB54B8, &qword_1D918F5A8);
LABEL_31:
    v64 = 0;
    return v64 & 1;
  }

  sub_1D8E898F0(v31, v21, type metadata accessor for DownloadConsistency.Issue);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v79 + 8))(&v21[v51], v80);
    v27 = v21;
    goto LABEL_18;
  }

  v52 = v82;
  v53 = v76;
  (*(v83 + 32))(v76, v33, v82);
  v55 = v79;
  v54 = v80;
  v56 = *(v79 + 32);
  v56(v81, &v21[v51], v80);
  v57 = &v33[v51];
  v58 = v77;
  v56(v77, v57, v54);
  v59 = v53;
  v60 = v83;
  v61 = sub_1D9176E7C();
  v62 = *(v60 + 8);
  v62(v21, v52);
  if ((v61 & 1) == 0)
  {
    v74 = *(v55 + 8);
    v74(v58, v54);
    v74(v81, v54);
    v62(v59, v52);
    goto LABEL_30;
  }

  v63 = v81;
  v64 = sub_1D9176B8C();
  v65 = *(v55 + 8);
  v65(v58, v54);
  v65(v63, v54);
  v62(v59, v82);
  sub_1D8E89958(v31, type metadata accessor for DownloadConsistency.Issue);
  return v64 & 1;
}

unint64_t sub_1D8E88FE4()
{
  result = qword_1ECAB53B8;
  if (!qword_1ECAB53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53B8);
  }

  return result;
}

unint64_t sub_1D8E89038()
{
  result = qword_1ECAB53C0;
  if (!qword_1ECAB53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53C0);
  }

  return result;
}

uint64_t sub_1D8E8908C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8E890D4()
{
  result = qword_1ECAB53D0;
  if (!qword_1ECAB53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53D0);
  }

  return result;
}

unint64_t sub_1D8E89128()
{
  result = qword_1ECAB53D8;
  if (!qword_1ECAB53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53D8);
  }

  return result;
}

unint64_t sub_1D8E89210()
{
  result = qword_1ECAB5420;
  if (!qword_1ECAB5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5420);
  }

  return result;
}

unint64_t sub_1D8E893A8()
{
  result = qword_1ECAB5428;
  if (!qword_1ECAB5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5428);
  }

  return result;
}

unint64_t sub_1D8E89400()
{
  result = qword_1ECAB5430;
  if (!qword_1ECAB5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5430);
  }

  return result;
}

unint64_t sub_1D8E89458()
{
  result = qword_1ECAB5438;
  if (!qword_1ECAB5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5438);
  }

  return result;
}

unint64_t sub_1D8E894B0()
{
  result = qword_1ECAB5440;
  if (!qword_1ECAB5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5440);
  }

  return result;
}

unint64_t sub_1D8E89508()
{
  result = qword_1ECAB5448;
  if (!qword_1ECAB5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5448);
  }

  return result;
}

unint64_t sub_1D8E89560()
{
  result = qword_1ECAB5450;
  if (!qword_1ECAB5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5450);
  }

  return result;
}

unint64_t sub_1D8E895B8()
{
  result = qword_1ECAB5458;
  if (!qword_1ECAB5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5458);
  }

  return result;
}

unint64_t sub_1D8E89610()
{
  result = qword_1ECAB5460;
  if (!qword_1ECAB5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5460);
  }

  return result;
}

unint64_t sub_1D8E89668()
{
  result = qword_1ECAB5468;
  if (!qword_1ECAB5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5468);
  }

  return result;
}

unint64_t sub_1D8E896C0()
{
  result = qword_1ECAB5470;
  if (!qword_1ECAB5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5470);
  }

  return result;
}

unint64_t sub_1D8E89718()
{
  result = qword_1ECAB5478;
  if (!qword_1ECAB5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5478);
  }

  return result;
}

unint64_t sub_1D8E89770()
{
  result = qword_1ECAB5480;
  if (!qword_1ECAB5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5480);
  }

  return result;
}

uint64_t sub_1D8E897C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001D91CB1C0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D91CB1E0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164656E776F6E75 && a2 == 0xEC00000074657373)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D9179ACC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8E898F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E89958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8E899C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D8E89A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D8E89A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E89AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DownloadConsistency.IssueResolution(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + v6;
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v2 + 16);
  result = sub_1D8E856D0(a1, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_1D8E89B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DownloadEnvironment.init(recordKeeper:fileStorage:dispatchQueue:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8D6BCE0(a1, a4);
  result = sub_1D8D6BCE0(a2, a4 + 40);
  *(a4 + 80) = a3;
  return result;
}

id _s18PodcastsFoundation25FairPlayValidationManagerC8ResponseCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8E89D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v9 = *(v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v9 + 8);

  v12(a1, sub_1D8E8A144, v11, v8, v9);
}

uint64_t sub_1D8E89E64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 24);

  v10(sub_1D8E8A0E0, v9, v6, v7);
}

uint64_t sub_1D8E89F70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 32);

  v10(sub_1D8E8A07C, v9, v6, v7);
}

id static DispatchingFairPlayInvalidationManaging.invalidationManager(_:callback:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = a1;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a2;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayInvalidationManaging.invalidateFairPlayKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8A3F8;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_13;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2);

  [v7 invalidateFairPlayKeyFor:a1 completion:v10];
  _Block_release(v10);
}

void sub_1D8E8A43C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void DispatchingFairPlayInvalidationManaging.markKeyForInvalidation(at:shouldRemove:)(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v5 = sub_1D9176B1C();
  [v4 markKeyForInvalidationAt:v5 shouldRemove:a2 & 1];
}

void DispatchingFairPlayInvalidationManaging.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8A824;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_10;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2);

  [v7 markAllFairPlayKeysForInvalidationWithShouldRemove:a1 & 1 completion:v10];
  _Block_release(v10);
}

void DispatchingFairPlayInvalidationManaging.removeKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8AD18;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_17_0;
  v10 = _Block_copy(v11);

  [v7 removeKeyFor:a1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1D8E8AA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue);
    v26 = v12;
    v19 = a3;
    v20 = result;
    v21 = v18;

    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = a4;
    v22[4] = a1;
    aBlock[4] = sub_1D8E8B4F0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_54;
    v23 = _Block_copy(aBlock);

    v24 = a1;
    sub_1D9177E4C();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v16, v11, v23);
    _Block_release(v23);

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v26);
  }

  return result;
}

id DispatchingFairPlayInvalidationManaging.removeKey(for:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance) removeKeyFor_];

  return v2;
}

void DispatchingFairPlayInvalidationManaging.removalAllFairPlayKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_1D8E8B24C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D8E8A43C;
  v10[3] = &block_descriptor_24_0;
  v9 = _Block_copy(v10);
  sub_1D8D1F93C(a1);

  [v6 removalAllFairPlayKeysWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8E8AF8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v10 = sub_1D9177E0C();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = *(result + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue);

    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a1;
    aBlock[4] = v24;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v25;
    v22 = _Block_copy(aBlock);
    sub_1D8D1F93C(a3);
    v23 = a1;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v22);
    _Block_release(v22);

    (*(v27 + 8))(v13, v10);
    (*(v14 + 8))(v17, v26);
  }

  return result;
}

id DispatchingFairPlayInvalidationManaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayInvalidationManaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FairPlayInvalidationManaging.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayInvalidationManaging();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t objectdestroy_44Tm_0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8E8B56C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

id static DispatchingFairPlayKeyLoading.receive(on:loader:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = a2;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayKeyLoading.createSession(asset:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8BAFC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8BB08;
  v11[3] = &block_descriptor_14;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2);

  [v7 createSessionWithAsset:a1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1D8E8B7F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v10;
    v20 = result;
    v25 = *(result + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue);

    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a1;
    v21[5] = a2;
    aBlock[4] = sub_1D8E8CD6C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_98;
    v22 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4);
    swift_unknownObjectRetain();
    v23 = a2;
    sub_1D9177E4C();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v24 = v25;
    MEMORY[0x1DA72A400](0, v17, v13, v22);
    _Block_release(v22);

    (*(v19 + 8))(v13, v9);
    (*(v14 + 8))(v17, v26);
  }

  return result;
}

uint64_t sub_1D8E8BB08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8E8BDC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v10 = sub_1D9177E0C();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = *(result + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue);

    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a1;
    aBlock[4] = v24;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v25;
    v22 = _Block_copy(aBlock);
    sub_1D8D1F93C(a3);
    v23 = a1;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v22);
    _Block_release(v22);

    (*(v27 + 8))(v13, v10);
    (*(v14 + 8))(v17, v26);
  }

  return result;
}

void DispatchingFairPlayKeyLoading.renewKeyRequests(assets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  type metadata accessor for FairPlayAsset();
  v7 = sub_1D91785DC();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8C61C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8C628;
  v11[3] = &block_descriptor_24_1;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2);

  [v6 renewKeyRequestsWithAssets:v7 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1D8E8C314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9177E9C();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v10;
    v20 = result;
    v25 = *(result + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue);

    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a1;
    v21[5] = a2;
    aBlock[4] = sub_1D8E8CD04;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_80;
    v22 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4);

    v23 = a2;
    sub_1D9177E4C();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v24 = v25;
    MEMORY[0x1DA72A400](0, v17, v13, v22);
    _Block_release(v22);

    (*(v19 + 8))(v13, v9);
    (*(v14 + 8))(v17, v26);
  }

  return result;
}

void sub_1D8E8C628(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  type metadata accessor for FairPlayAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CFBC40(&qword_1ECAB5520, type metadata accessor for FairPlayAsset);
  v6 = sub_1D917805C();

  v7 = a3;
  v5(v6, a3);
}

void sub_1D8E8C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = v7;
  v15 = *(v11 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v19[4] = a5;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D8E8A43C;
  v19[3] = a6;
  v18 = _Block_copy(v19);
  sub_1D8D1F93C(a2);

  [v15 *a7];
  _Block_release(v18);
}

id DispatchingFairPlayKeyLoading.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayKeyLoading.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_76Tm(void (*a1)(void))
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
  }

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8E8CD74()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    return v1(v2, v3);
  }

  return result;
}

id static DispatchingFairPlayValidationManaging.receive(on:manager:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = a2;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayValidationManaging.validateDownloadedEpisodes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_1D8E8D2D8;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D8E8D2E4;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);
  sub_1D8D1F93C(a1);

  [v6 validateDownloadedEpisodesWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8E8D004(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D9177E9C();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v10;
    v20 = result;
    v26 = *(result + OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue);

    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a1;
    v21[5] = a2;
    aBlock[4] = sub_1D8E8D5F4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_15;
    v22 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4);
    v23 = a1;
    v24 = a2;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v25 = v26;
    MEMORY[0x1DA72A400](0, v17, v13, v22);
    _Block_release(v22);

    (*(v19 + 8))(v13, v9);
    (*(v14 + 8))(v17, v27);
  }

  return result;
}

void sub_1D8E8D2E4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id DispatchingFairPlayValidationManaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayValidationManaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FairPlayValidationManaging.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayValidationManaging();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D8E8D5F4()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    return v1(v2, v3);
  }

  return result;
}

uint64_t AVURLAsset.fairPlayIdentifier.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8E8D8;

  return sub_1D8E8D6C4();
}

uint64_t sub_1D8E8D6C4()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8D77C;
  v2 = *MEMORY[0x1E69E9840];

  return sub_1D8E8E118();
}

uint64_t sub_1D8E8D77C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*v2 + 216);
  v4 = *v2;
  *(v4 + 224) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1D8E8D8F4, 0, 0);
  }
}

uint64_t sub_1D8E8D8F4()
{
  v7 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4830, &unk_1D918F850);
  v1 = sub_1D91770AC();
  v0[29] = v1;
  v2 = *(MEMORY[0x1E69E5A20] + 4);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1D8E8D9F4;
  v4 = v0[28];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE68140](v0 + 19, v1, 0, 0);
}

uint64_t sub_1D8E8D9F4()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1D8E8E080;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1D8E8DB44;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E8DB44()
{
  v45 = *MEMORY[0x1E69E9840];
  if (!*(v0 + 160))
  {
    v6 = *(v0 + 224);
    v7 = 0x80000001D91CB510;
    sub_1D8E8E78C();
    swift_allocError();
    v9 = 0xD000000000000027;
    goto LABEL_5;
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = sub_1D9176C4C();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 224);
    v7 = 0x80000001D91CB540;
    sub_1D8E8E78C();
    swift_allocError();
    v9 = 0xD000000000000023;
LABEL_5:
    *v8 = v9;
    v8[1] = v7;
    swift_willThrow();
LABEL_6:

LABEL_7:
    v10 = *(v0 + 8);
    v11 = *MEMORY[0x1E69E9840];

    return v10();
  }

  v13 = objc_opt_self();
  v14 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  *(v0 + 200) = 0;
  v15 = [v13 JSONObjectWithData:v14 options:0 error:v0 + 200];

  v16 = *(v0 + 200);
  if (!v15)
  {
    v6 = *(v0 + 224);
    v30 = v16;
    sub_1D9176A6C();

    swift_willThrow();
    sub_1D8D75668(v3, v5);
    goto LABEL_6;
  }

  sub_1D917928C();
  swift_unknownObjectRelease();
  sub_1D8CFAD1C(v0 + 56, v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if (!swift_dynamicCast())
  {
    v31 = *(v0 + 224);
    sub_1D8E8E78C();
    swift_allocError();
    *v32 = 0xD000000000000020;
    v32[1] = 0x80000001D91CB570;
    swift_willThrow();
    v33 = v3;
    v34 = v5;
LABEL_36:
    sub_1D8D75668(v33, v34);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_7;
  }

  v43 = v3;
  v17 = *(v0 + 208);
  v18 = *(v17 + 16);
  if (!v18)
  {
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v19 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = v19;
    while (1)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
      }

      v21 = *(v17 + 32 + 8 * v20);
      *(v0 + 184) = 6910581;
      *(v0 + 192) = 0xE300000000000000;

      sub_1D91793EC();
      if (*(v21 + 16))
      {
        v22 = sub_1D8D6550C(v0 + 16);
        if (v23)
        {
          break;
        }
      }

      sub_1D8D9A308(v0 + 16);
LABEL_16:
      if (v18 == ++v20)
      {
        goto LABEL_31;
      }
    }

    sub_1D8CFAD1C(*(v21 + 56) + 32 * v22, v0 + 120);
    sub_1D8D9A308(v0 + 16);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v24 = *(v0 + 176);
    if (!v24)
    {
      goto LABEL_16;
    }

    v42 = *(v0 + 168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1D8D4241C(0, *(v44 + 2) + 1, 1, v44);
    }

    v26 = *(v44 + 2);
    v25 = *(v44 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v40 = *(v44 + 2);
      v41 = v26 + 1;
      v29 = sub_1D8D4241C((v25 > 1), v26 + 1, 1, v44);
      v26 = v40;
      v27 = v41;
      v44 = v29;
    }

    v19 = v20 + 1;
    *(v44 + 2) = v27;
    v28 = &v44[16 * v26];
    *(v28 + 4) = v42;
    *(v28 + 5) = v24;
  }

  while (v18 - 1 != v20);
LABEL_31:

  v31 = *(v0 + 224);
  if (!*(v44 + 2))
  {

    sub_1D8E8E78C();
    swift_allocError();
    *v39 = xmmword_1D918F800;
    swift_willThrow();
    v33 = v43;
    v34 = v5;
    goto LABEL_36;
  }

  v35 = *(v44 + 4);
  v36 = *(v44 + 5);

  sub_1D8D75668(v43, v5);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v37 = *(v0 + 8);
  v38 = *MEMORY[0x1E69E9840];

  return v37(v35, v36);
}

uint64_t sub_1D8E8E080()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 232);

  v2 = *(v0 + 248);
  v3 = *(v0 + 8);
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1D8E8E138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5540, qword_1D918F860);
  v1 = sub_1D91770EC();
  v0[7] = v1;
  v2 = *(MEMORY[0x1E69E5A20] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D8E8E204;
  v4 = v0[6];

  return MEMORY[0x1EEE68140](v0 + 4, v1, 0, 0);
}

uint64_t sub_1D8E8E204()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D8E8E588;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D8E8E320;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E8E320()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
LABEL_22:
    v2 = sub_1D917935C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:

    sub_1D8E8E78C();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA72AA90](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v4 key];
    if (!v7)
    {
      goto LABEL_4;
    }

    v0[5] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5548, &qword_1D9194900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v0[2] == 0xD000000000000012 && 0x80000001D91CB5A0 == v0[3])
    {
      break;
    }

    v8 = v0[3];
    v13 = sub_1D9179ACC();

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_1D8E8E588()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8E8E5EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8E8E67C;

  return sub_1D8E8D6C4();
}

uint64_t sub_1D8E8E67C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D8E8E78C()
{
  result = qword_1ECAB5538;
  if (!qword_1ECAB5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5538);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So10AVURLAssetC18PodcastsFoundationE23FairPlayIdentifierErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8E8E7F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E8E84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D8E8E8A8(void *result, int a2)
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

uint64_t AVURLAsset.isOfflineAsset.getter()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 URL];
  sub_1D9176B9C();

  LOBYTE(v7) = sub_1D9176A8C();
  (*(v2 + 8))(v6, v1);
  return v7 & 1;
}

uint64_t sub_1D8E8EA44()
{
  v1 = *(v0 + 24);
  sub_1D8D15664(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8EAA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  sub_1D9176BFC();
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v8 = sub_1D9176B1C();
    v9 = [v7 initWithURL:v8 options:0];

    (*(v5 + 8))(v3, v4);
    return v9;
  }

  return result;
}

uint64_t sub_1D8E8EC20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8EC84()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return v1();
}

uint64_t sub_1D8E8ECD4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D8E8EDC0;

  return v6();
}

uint64_t sub_1D8E8EDC0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1D8E8EED0()
{
  v1 = v0[3];
  sub_1D8D15664(v0[2]);
  v2 = v0[5];
  sub_1D8D15664(v0[4]);
  v3 = v0[7];
  sub_1D8D15664(v0[6]);
  v4 = v0[9];
  sub_1D8D15664(v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8EF44()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EF78()
{
  v1 = *(*v0 + 32);
  if (v1)
  {
    v2 = *(*v0 + 40);
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EFAC()
{
  v1 = *(*v0 + 64);
  if (v1)
  {
    v2 = *(*v0 + 72);
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EFE0()
{
  v1 = *(*v0 + 48);
  if (v1)
  {
    v2 = *(*v0 + 56);
    return v1();
  }

  return result;
}

uint64_t *sub_1D8E8F63C()
{
  v1 = v0[3];
  sub_1D8D15664(v0[2]);
  v2 = v0[5];
  sub_1D8D15664(v0[4]);
  v3 = v0[7];
  sub_1D8D15664(v0[6]);
  v4 = v0[9];
  sub_1D8D15664(v0[8]);
  v5 = v0[11];
  sub_1D8D15664(v0[10]);
  v6 = v0[13];
  sub_1D8D15664(v0[12]);
  v7 = v0[15];
  sub_1D8D15664(v0[14]);
  return v0;
}

uint64_t sub_1D8E8F68C()
{
  sub_1D8E8F63C();

  return swift_deallocClassInstance();
}

id sub_1D8E8F780()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[7];
    return v1();
  }

  else
  {
    v4 = v0[4];
    if (v4)
    {
      v5 = v0[5];
      v6 = v4();
    }

    else
    {
      v6 = 1;
    }

    type metadata accessor for FairPlayAVAssetMock();
    v7 = swift_allocObject();
    v7[2] = sub_1D8E8EAA0;
    v7[3] = 0;
    v7[4] = &unk_1D918F9F0;
    v7[5] = 0;
    v8 = objc_allocWithZone(type metadata accessor for FairPlayAsset());

    return sub_1D8E8FDCC(v6, v7, v8);
  }
}

void *sub_1D8E8FCF4()
{
  v1 = v0[3];

  v2 = v0[5];
  sub_1D8D15664(v0[4]);
  v3 = v0[7];
  sub_1D8D15664(v0[6]);
  v4 = v0[9];
  sub_1D8D15664(v0[8]);
  v5 = v0[11];
  sub_1D8D15664(v0[10]);
  v6 = v0[13];
  sub_1D8D15664(v0[12]);
  v7 = v0[15];
  sub_1D8D15664(v0[14]);
  v8 = v0[17];
  sub_1D8D15664(v0[16]);
  v9 = v0[19];
  sub_1D8D15664(v0[18]);
  v10 = v0[21];
  sub_1D8D15664(v0[20]);
  v11 = v0[23];
  sub_1D8D15664(v0[22]);
  v12 = v0[25];
  sub_1D8D15664(v0[24]);
  v13 = v0[27];
  sub_1D8D15664(v0[26]);
  return v0;
}

uint64_t sub_1D8E8FD74()
{
  sub_1D8E8FCF4();

  return swift_deallocClassInstance();
}

id sub_1D8E8FDCC(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for FairPlayAVAssetMock();
  v13[4] = &off_1F5467E00;
  v13[0] = a2;
  *&a3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  sub_1D8CFD9D8(v13, &a3[OBJC_IVAR___PFFairPlayAsset_avAsset]);
  sub_1D8E8FEA4();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v7();
  *&a3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v9);
  v12.receiver = a3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

unint64_t sub_1D8E8FEA4()
{
  result = qword_1ECAB5580;
  if (!qword_1ECAB5580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB5580);
  }

  return result;
}

uint64_t sub_1D8E8FEF0()
{
  v1 = v0[3];
  sub_1D8D15664(v0[2]);
  v2 = v0[5];
  sub_1D8D15664(v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8FF54(uint64_t a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = *(*v1 + 24);

    v1 = v2(a1);
    sub_1D8D15664(v2);
  }

  else
  {
    sub_1D8E8FFF0();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1D8E8FFF0()
{
  result = qword_1ECAB5550;
  if (!qword_1ECAB5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5550);
  }

  return result;
}

unint64_t sub_1D8E90058()
{
  result = qword_1ECAB5558;
  if (!qword_1ECAB5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5558);
  }

  return result;
}

id FairPlayAsset.__allocating_init(adamID:avAsset:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1D8E90B58(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t FairPlayAsset.description.getter()
{
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x203A44496D616441, 0xE800000000000000);
  v3 = *(v0 + OBJC_IVAR___PFFairPlayAsset_adamID);
  v1 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v1);

  MEMORY[0x1DA7298F0](0x746573734156410ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5570, &qword_1D918FCE0);
  sub_1D917964C();
  return 0;
}

id FairPlayAsset.__allocating_init(adamID:avAsset:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  v7 = &v6[OBJC_IVAR___PFFairPlayAsset_avAsset];
  *(v7 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
  *(v7 + 4) = &protocol witness table for AVURLAsset;
  *v7 = a2;
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  v8 = a2;
  *&v6[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v8);
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id FairPlayAsset.init(adamID:avAsset:)(uint64_t a1, void *a2)
{
  v3 = sub_1D8E90C4C(a1, a2);

  return v3;
}

id sub_1D8E9039C(void *a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 URL];
  sub_1D9176B9C();

  LOBYTE(v8) = sub_1D9176A8C();
  v9 = *(v3 + 8);
  v9(v7, v2);
  if (v8)
  {
    v10 = [a1 URL];
    sub_1D9176B9C();

    sub_1D9176BBC();
    v9(v7, v2);
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v13 = [v11 initWithPath_];

    return v13;
  }

  else
  {

    return 0;
  }
}

id FairPlayAsset.init(adamID:avAsset:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = sub_1D8E90A28(a1, v11, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v13;
}

id FairPlayAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FairPlayAsset.isOfflineAsset.getter()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___PFFairPlayAsset_avAsset + 24);
  v7 = *(v0 + OBJC_IVAR___PFFairPlayAsset_avAsset + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___PFFairPlayAsset_avAsset), v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = [v8 URL];
  sub_1D9176B9C();

  LOBYTE(v9) = sub_1D9176A8C();
  (*(v2 + 8))(v5, v1);
  return v9 & 1;
}

id sub_1D8E90A28(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  *&a3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  sub_1D8CFD9D8(v16, &a3[OBJC_IVAR___PFFairPlayAsset_avAsset]);
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  v12 = (*(a5 + 8))(a4, a5);
  *&a3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v12);
  v15.receiver = a3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

id sub_1D8E90B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v13);
  (*(v9 + 16))(v12, a2, a4);
  return sub_1D8E90A28(a1, v12, v14, a4, a5);
}

id sub_1D8E90C4C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  v7 = &v3[OBJC_IVAR___PFFairPlayAsset_avAsset];
  *(v7 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
  *(v7 + 4) = &protocol witness table for AVURLAsset;
  *v7 = a2;
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  *&v3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(a2);
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t dispatch thunk of FairPlayAsset.__allocating_init(adamID:avAsset:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

id sub_1D8E90D80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 assetURL];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D917820C();
    v16 = v15;

    sub_1D9176BFC();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {

      (*(v7 + 32))(v11, v5, v6);
      v28 = [a1 storeTrackId];
      v29 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v30 = sub_1D9176B1C();
      v31 = [v29 initWithURL:v30 options:0];

      v32 = type metadata accessor for FairPlayAsset();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR___PFFairPlayAsset_adamID] = v28;
      v34 = &v33[OBJC_IVAR___PFFairPlayAsset_avAsset];
      *(v34 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
      *(v34 + 4) = &protocol witness table for AVURLAsset;
      *v34 = v31;
      sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
      v35 = v31;
      *&v33[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v35);
      v39.receiver = v33;
      v39.super_class = v32;
      v36 = objc_msgSendSuper2(&v39, sel_init);

      (*(v7 + 8))(v11, v6);
      return v36;
    }

    sub_1D8E677CC(v5);
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F68);

    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = sub_1D8CFA924(v14, v16, &v40);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Malformed assetURL: %{private,mask.hash}s.", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v23 = v20;
LABEL_11:
    MEMORY[0x1DA72CB90](v23, -1, -1);
LABEL_15:

    return 0;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD0F68);
  v25 = a1;
  v18 = sub_1D917741C();
  v26 = sub_1D9178CFC();
  if (os_log_type_enabled(v18, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2049;
    *(v27 + 14) = [v25 storeTrackId];

    _os_log_impl(&dword_1D8CEC000, v18, v26, "Missing assetURL for episode: %{private,mask.hash}lld", v27, 0x16u);
    v23 = v27;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1D8E91268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D8CF5C74(a3, v27 - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D8CF5CE4(v12);
  }

  else
  {
    sub_1D917885C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D917874C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D917829C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D8CF5CE4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CF5CE4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D8E91528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D8CF5C74(a3, v27 - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D8CF5CE4(v12);
  }

  else
  {
    sub_1D917885C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D917874C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D917829C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D8CF5CE4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CF5CE4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t FairPlayAsset.requiresRenewal.getter()
{
  v10 = *MEMORY[0x1E69E9840];
  v1[7] = v0;
  v2 = sub_1D9176E3C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_1D9176C2C();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D8E91934, 0, 0);
}

uint64_t sub_1D8E91934()
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = (v0[7] + OBJC_IVAR___PFFairPlayAsset_avAsset);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 URL];
  sub_1D9176B9C();

  LOBYTE(v8) = sub_1D9176A8C();
  (*(v2 + 8))(v1, v3);
  if ((v8 & 1) != 0 && (v9 = *(v0[7] + OBJC_IVAR___PFFairPlayAsset_keyStore), (v0[15] = v9) != 0))
  {
    v10 = v4[3];
    v11 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v10);
    v12 = *(v11 + 16);
    swift_unknownObjectRetain();
    v26 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_1D8E91C84;
    v15 = *MEMORY[0x1E69E9840];

    return v26(v10, v11);
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F68);
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Unsupported use case.", v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    v21 = v0[14];
    v22 = v0[10];
    v23 = v0[11];

    v24 = v0[1];
    v25 = *MEMORY[0x1E69E9840];

    return v24(0);
  }
}

uint64_t sub_1D8E91C84(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 128);
  v12 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v8 = sub_1D8E92074;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v8 = sub_1D8E91DE0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D8E91DE0()
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v0[6] = 0;
  v5 = [v3 loadKeyForIdentifier:v4 error:v0 + 6];

  v6 = v0[6];
  if (v5)
  {
    v7 = v6;
    v8 = [v5 renewalDate];
    if (v8)
    {
      v9 = v0[15];
      v11 = v0[10];
      v10 = v0[11];
      v12 = v0[8];
      v13 = v0[9];
      v14 = v8;
      sub_1D9176DFC();

      sub_1D9176E0C();
      v15 = sub_1D9176DAC();

      swift_unknownObjectRelease();
      v16 = *(v13 + 8);
      v16(v11, v12);
      v16(v10, v12);
      goto LABEL_11;
    }
  }

  else
  {
    v17 = v6;
    v18 = sub_1D9176A6C();

    swift_willThrow();
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1EDCD0F68);
  v20 = sub_1D917741C();
  v21 = sub_1D9178CFC();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[15];
  if (v22)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "Key lookup failed.", v24, 2u);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  swift_unknownObjectRelease();
  v15 = 1;
LABEL_11:
  v25 = v0[14];
  v27 = v0[10];
  v26 = v0[11];

  v28 = v0[1];
  v29 = *MEMORY[0x1E69E9840];

  return v28(v15 & 1);
}

uint64_t sub_1D8E92074()
{
  v24 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F68);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  v8 = v0[15];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_1D9179D2C();
    v16 = sub_1D8CFA924(v14, v15, v23);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable load key identifier %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v17 = v0[14];
  v18 = v0[10];
  v19 = v0[11];

  v20 = v0[1];
  v21 = *MEMORY[0x1E69E9840];

  return v20(0);
}

uint64_t FairPlayAsset.requiresRenewal(responseQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1D917881C();
  v11 = sub_1D917886C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;

  sub_1D8E91268(0, 0, v10, &unk_1D918FD38, v12);
}

uint64_t sub_1D8E923CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[9] = a5;
  v8 = sub_1D9177E0C();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = sub_1D9177E9C();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();
  v14 = swift_task_alloc();
  v7[18] = v14;
  *v14 = v7;
  v14[1] = sub_1D8E9251C;

  return FairPlayAsset.requiresRenewal.getter();
}

uint64_t sub_1D8E9251C(char a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8E9261C, 0, 0);
}

uint64_t sub_1D8E9261C()
{
  v1 = *(v0 + 152);
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v14 = v0[9];
  v15 = v0[15];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v1;
  v0[6] = sub_1D8E92A40;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D8CF5F60;
  v0[5] = &block_descriptor_16;
  v10 = _Block_copy(v0 + 2);

  sub_1D9177E4C();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v2, v4, v10);
  _Block_release(v10);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v15);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8E927FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8E923CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D8E928D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D8D2C79C(a1, v5);
}

uint64_t sub_1D8E92988(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D58924;

  return sub_1D8D2C79C(a1, v5);
}

uint64_t FairPlayAVAsset.fairPlayIdentifier(responseQueue:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  sub_1D917880C();
  v17 = sub_1D917886C();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  v18 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v24;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  *(v19 + 6) = a1;
  *(v19 + 7) = a2;
  *(v19 + 8) = a3;
  (*(v11 + 32))(&v19[v18], &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v21 = a1;

  sub_1D8E91268(0, 0, v16, &unk_1D918FD70, v19);
}

uint64_t sub_1D8E92C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(v16 + 16);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_1D8E92DA0;

  return v14(a8);
}

uint64_t sub_1D8E92DA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_1D8E92F98;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v9 = sub_1D8E92ED4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D8E92ED4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v0[6] != 0;

  sub_1D8E93394(v5, v4, v3, v2, v1, v6);
  sub_1D8E93630(v2, v1, v6);
  sub_1D8E93630(v2, v1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D8E92F98()
{
  v1 = v0[6];
  v2 = v1;
  v3 = v0[6] != 0;
  sub_1D8E93394(v0[2], v0[3], v0[4], v1, 0, v3);
  sub_1D8E93630(v1, 0, v3);
  sub_1D8E93630(v1, 0, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8E93040(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8E92C78(a1, v5, v6, v7, v8, v9, v1 + v4, v3);
}

uint64_t dispatch thunk of FairPlayAVAsset.fairPlayIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8E93288;

  return v9(a1, a2);
}

uint64_t sub_1D8E93288(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1D8E93394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v25 = a1;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  a6 &= 1u;
  *(v20 + 48) = a6;
  aBlock[4] = sub_1D8E93640;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_17;
  v21 = _Block_copy(aBlock);
  sub_1D8E93674(a4, a5, a6);

  sub_1D9177E4C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

void sub_1D8E93630(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1D8E93674(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

id FairPlayKeyResponseData.__allocating_init(renewalDate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate;
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id FairPlayKeyResponseData.init(renewalDate:)(uint64_t a1)
{
  v3 = OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FairPlayKeyResponseData();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for FairPlayKeyResponseData()
{
  result = qword_1ECAB5590;
  if (!qword_1ECAB5590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FairPlayKeyResponseData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayKeyResponseData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FairPlayKeyResponseData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8E939CC()
{
  result = sub_1D9176E3C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D8E93AD0()
{
  sub_1D8CEFDCC(319, &qword_1ECAB55B0);
  if (v0 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD7710);
    if (v1 <= 0x3F)
    {
      sub_1D8CF4B30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D8E93BE8()
{
  result = sub_1D8E93CA4();
  if (v1 <= 0x3F)
  {
    result = sub_1D9176C2C();
    if (v2 <= 0x3F)
    {
      result = sub_1D9176E3C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D8E93CA4()
{
  result = qword_1EDCD0810[0];
  if (!qword_1EDCD0810[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDCD0810);
  }

  return result;
}

uint64_t type metadata accessor for FairPlayServerURLConfiguration()
{
  result = qword_1ECAB55C8;
  if (!qword_1ECAB55C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8E93D64()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8E93DDC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  sub_1D8E94158();
  result = sub_1D8E941A4(kBagKeyLicenseStreamingStart, v18);
  if (!v1)
  {
    v23[1] = v3;
    v20 = v18;
    v21 = *(v3 + 32);
    v21(v24, v20, v2);
    sub_1D8E941A4(kBagKeyLicenseStreamingStop, v15);
    v23[0] = type metadata accessor for FairPlayServerURLConfiguration();
    v21(v24 + *(v23[0] + 20), v15, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStart, v12);
    v22 = v24;
    v21(v24 + *(v23[0] + 24), v12, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStop, v9);
    v21(v22 + *(v23[0] + 28), v9, v2);
    sub_1D8E941A4(kBagKeyLicenseOfflineStopNonce, v6);
    return (v21)(v22 + *(v23[0] + 32), v6, v2);
  }

  return result;
}

unint64_t sub_1D8E94158()
{
  result = qword_1ECAB57E0;
  if (!qword_1ECAB57E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB57E0);
  }

  return result;
}

uint64_t sub_1D8E941A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = [v8 syncValueForKey_];

  if (v9)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v10 = sub_1D9176C2C();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    (*(v12 + 56))(v7, v11 ^ 1u, 1, v10);
    if ((*(v12 + 48))(v7, 1, v10) != 1)
    {
      return (*(v12 + 32))(a2, v7, v10);
    }
  }

  else
  {
    sub_1D8D08A50(v18, &qword_1ECAB57F0, &unk_1D9190AA0);
    v14 = sub_1D9176C2C();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1D8D08A50(v7, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8E9440C();
  swift_allocError();
  *v15 = 4;
  return swift_willThrow();
}

unint64_t sub_1D8E9440C()
{
  result = qword_1ECAB55D8;
  if (!qword_1ECAB55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55D8);
  }

  return result;
}

void sub_1D8E94460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 privateQueueContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v14[4] = sub_1D8E965E0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_26_1;
  v12 = _Block_copy(v14);
  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D8E945C8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v5 = [objc_opt_self() predicateForEpisodeStoreTrackId_];
  [v4 setPredicate_];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v53[0] = v10;
    *v9 = 136315651;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v11 = sub_1D9179A4C();
    v13 = sub_1D8CFA924(v11, v12, v53);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Fetching episode for adamId: %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v14 = sub_1D917908C();
  if (v14 >> 62)
  {
    v39 = v14;
    if (sub_1D917935C())
    {
      v40 = sub_1D917935C();
      v14 = v39;
      if (v40 < 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_23:

    v41 = sub_1D917741C();
    v42 = sub_1D9178CFC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v43 = 136315651;
      *(v43 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      v45 = sub_1D9179A4C();
      v47 = sub_1D8CFA924(v45, v46, v53);

      *(v43 + 24) = v47;
      _os_log_impl(&dword_1D8CEC000, v41, v42, "%s No episode found for adamId: %{private,mask.hash}s.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v43, -1, -1);
    }

    sub_1D8E965F0();
    v48 = swift_allocError();
    *v49 = 0;
    a3(v48, 1);

    goto LABEL_26;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_23;
  }

  if (v15 < 2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = v14;

  v17 = sub_1D917741C();
  v18 = sub_1D9178CFC();
  v51 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53[0] = v50;
    *v19 = 136316163;
    *(v19 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v20 = sub_1D9179A4C();
    v22 = sub_1D8CFA924(v20, v21, v53);

    *(v19 + 24) = v22;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v23 = sub_1D9179A4C();
    v25 = sub_1D8CFA924(v23, v24, v53);

    *(v19 + 44) = v25;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s More than one episode (%{private,mask.hash}s) found for adamId: %{private,mask.hash}s.", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v50, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v14 = v51;
LABEL_11:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA72AA90](0);
    goto LABEL_14;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v14 + 32);
LABEL_14:
    v27 = v26;

    v28 = sub_1D8E90D80(v27);
    if (v28)
    {
      v29 = v28;
      a3(v28, 0);
    }

    else
    {

      sub_1D8E965F0();
      v30 = swift_allocError();
      *v31 = 1;
      a3(v30, 1);
    }

    v32 = sub_1D917741C();
    v33 = sub_1D9178CEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v34 = 136315651;
      *(v34 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v53);
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      v36 = sub_1D9179A4C();
      v38 = sub_1D8CFA924(v36, v37, v53);

      *(v34 + 24) = v38;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "%s Finished fetching episode for adamId: %{private,mask.hash}s.", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

LABEL_26:
    return;
  }

  __break(1u);
}

uint64_t sub_1D8E94F5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = sub_1D8E9647C;
  v9[4] = v8;
  v9[5] = v5;
  v13[4] = sub_1D8E9648C;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_18;
  v10 = _Block_copy(v13);

  v11 = v7;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8E950FC(unint64_t a1, char a2, id *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - v10;
  v59 = sub_1D9176C2C();
  v55 = *(v59 - 8);
  v12 = *(v55 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return (a3)(a1, 1, v13.n128_f64[0]);
  }

  v53 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v57 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = a1;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_24:
    v58 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_23:
  v57 = a1 & 0xFFFFFFFFFFFFFF8;
  v16 = sub_1D917935C();
  v54 = a1;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_5:
  v17 = 0;
  v18 = a1 & 0xC000000000000001;
  v58 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = v17;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x1DA72AA90](v19, a1, v13);
      }

      else
      {
        if (v19 >= *(v57 + 16))
        {
          goto LABEL_22;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22 = [v20 assetURL];
      if (v22)
      {
        break;
      }

      ++v19;
      if (v17 == v16)
      {
        goto LABEL_25;
      }
    }

    v23 = v22;
    v24 = sub_1D917820C();
    v26 = v25;

    v27 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1D8D4241C(0, *(v58 + 2) + 1, 1, v58);
    }

    v29 = *(v58 + 2);
    v28 = *(v58 + 3);
    if (v29 >= v28 >> 1)
    {
      v58 = sub_1D8D4241C((v28 > 1), v29 + 1, 1, v58);
    }

    v30 = v58;
    *(v58 + 2) = v29 + 1;
    v31 = &v30[16 * v29];
    *(v31 + 4) = v27;
    *(v31 + 5) = v26;
    a1 = v54;
  }

  while (v17 != v16);
LABEL_25:
  v51 = a4;
  v52 = a3;
  v32 = v58;
  v33 = *(v58 + 2);
  if (v33)
  {
    v34 = 0;
    v35 = (v55 + 48);
    v36 = (v55 + 32);
    v37 = v58 + 40;
    v38 = MEMORY[0x1E69E7CC0];
    while (v34 < *(v32 + 2))
    {
      v40 = *(v37 - 1);
      v39 = *v37;

      sub_1D9176BFC();
      v41 = v59;

      if ((*v35)(v11, 1, v41) == 1)
      {
        sub_1D8E677CC(v11);
      }

      else
      {
        v42 = *v36;
        (*v36)(v56, v11, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1D8ECC9D4(0, *(v38 + 2) + 1, 1, v38);
        }

        v44 = *(v38 + 2);
        v43 = *(v38 + 3);
        if (v44 >= v43 >> 1)
        {
          v38 = sub_1D8ECC9D4(v43 > 1, v44 + 1, 1, v38);
        }

        *(v38 + 2) = v44 + 1;
        v42(&v38[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44], v56, v59);
        a1 = v54;
      }

      ++v34;
      v37 += 16;
      v32 = v58;
      if (v33 == v34)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_37:

  if (v53)
  {
    v45 = sub_1D917935C();
  }

  else
  {
    v45 = *(v57 + 16);
  }

  a1 = v52;
  if (v45 == *(v38 + 2))
  {
    goto LABEL_45;
  }

  if (qword_1EDCD0F60 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v46 = sub_1D917744C();
  __swift_project_value_buffer(v46, qword_1EDCD0F68);
  v47 = sub_1D917741C();
  v48 = sub_1D9178CFC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v60 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v60);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1DA72CB90](v50, -1, -1);
    MEMORY[0x1DA72CB90](v49, -1, -1);
  }

LABEL_45:
  (a1)(v38, 0);
}

void sub_1D8E95668(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, v16);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Fetching migration data for legacy FairPlay keys.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 privateQueueContext];

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v5;
  v16[4] = sub_1D8E96498;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_10_1;
  v14 = _Block_copy(v16);
  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

void sub_1D8E958DC(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for FairPlayMigrationData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v16 = sub_1D917908C();
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v15;
    v46 = a3;
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_19:

    a2(MEMORY[0x1E69E7CC0], 0);
LABEL_20:

    return;
  }

  v43 = v16;
  v17 = sub_1D917935C();
  v16 = v43;
  v45 = v15;
  v46 = a3;
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_3:
  v51 = v11;
  v52 = v16;
  v44 = a2;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1D8E31448(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v52;
    v47 = v52 & 0xC000000000000001;
    v48 = v17;
    v20 = v56;
    v21 = &selRef_redirectURLForStoreCollectionId_;
    v49 = v10;
    v50 = a1;
    do
    {
      v22 = v9;
      if (v47)
      {
        v23 = MEMORY[0x1DA72AA90](v18);
      }

      else
      {
        v23 = *(v19 + 8 * v18 + 32);
      }

      v24 = v23;
      v55 = [v23 v21[452]];
      v25 = [v24 data];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1D9176C8C();
        v53 = v28;
        v54 = v27;
      }

      else
      {
        v53 = 0xF000000000000000;
        v54 = 0;
      }

      v29 = sub_1D8E95E98([v24 v21[452]], a1);
      v31 = v30;
      [v24 expirationDate];
      sub_1D9176CBC();
      v32 = sub_1D9176E3C();
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v33 = [v24 keyUri];
      if (v33)
      {
        v34 = v33;
        v35 = sub_1D917820C();
        v37 = v36;
      }

      else
      {

        v35 = 0;
        v37 = 0;
      }

      v38 = v54;
      *v14 = v55;
      v14[1] = v38;
      v14[2] = v53;
      v14[3] = v29;
      v14[4] = v31;
      v39 = v49;
      v9 = v22;
      sub_1D8E964A4(v22, v14 + *(v49 + 28));
      v40 = (v14 + *(v39 + 32));
      *v40 = v35;
      v40[1] = v37;
      v56 = v20;
      v42 = *(v20 + 16);
      v41 = *(v20 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D8E31448(v41 > 1, v42 + 1, 1);
        v20 = v56;
      }

      ++v18;
      *(v20 + 16) = v42 + 1;
      sub_1D8E96514(v14, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42);
      a1 = v50;
      v19 = v52;
      v21 = &selRef_redirectURLForStoreCollectionId_;
    }

    while (v48 != v18);

    v44(v20, 0);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D8E95E98(uint64_t a1, void *a2)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v8;
  v9 = sub_1D9178C8C();
  v10 = [a2 objectInEntity:@"MTEpisode" predicate:v9];
  if (!v10)
  {
LABEL_7:

    return 0;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 assetURL];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D917820C();

      return v15;
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_1D8E96058(uint64_t a1, void (*a2)(void))
{
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v3 = [objc_opt_self() predicateForDownloadedFairPlayEpisodes];
  [v9 setPredicate_];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F68);
  v5 = sub_1D917741C();
  v6 = sub_1D9178CEC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v10);
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Fetching all downloaded HLS episodes.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  sub_1D917908C();
  a2();
}

void sub_1D8E9648C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D8E96058(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1D8E964A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E96514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayMigrationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E96578()
{
  result = qword_1ECAAFC70;
  if (!qword_1ECAAFC70)
  {
    sub_1D8CF2154(255, qword_1EDCD0810, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFC70);
  }

  return result;
}

void sub_1D8E965E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1D8E945C8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

unint64_t sub_1D8E965F0()
{
  result = qword_1ECAB55E0;
  if (!qword_1ECAB55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55E0);
  }

  return result;
}

unint64_t sub_1D8E96658()
{
  result = qword_1ECAB55E8;
  if (!qword_1ECAB55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB55E8);
  }

  return result;
}

id FairPlayInvalidationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayInvalidationManager.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v2 = swift_allocObject();
  v3 = sub_1D8CFDA60(v1, v2, objc_allocWithZone(ObjectType));

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t FairPlayInvalidationManager.invalidateFairPlayKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  v17[6] = ObjectType;
  aBlock[4] = sub_1D8E98DFC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_1D8E96AF4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v12 = sub_1D917741C();
    v13 = sub_1D9178CEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = a5;
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315651;
      *(v14 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v28);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v16 = sub_1D9179A4C();
      v18 = sub_1D8CFA924(v16, v17, &v28);

      *(v14 + 24) = v18;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Invalidating keys for adamId: %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
      v19 = v15;
      a5 = v27;
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    v20 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v21 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v20);
    v22 = swift_allocObject();
    v22[2] = v10;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v22[6] = a5;
    v23 = *(v21 + 8);
    v24 = v10;
    sub_1D8D1F93C(a2);
    v23(a4, sub_1D8E99974, v22, v20, v21);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v25 = swift_allocError();
    *v26 = 0;
    a2();
  }
}

void sub_1D8E96DC0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a4)
    {
      a4(a1);
    }
  }

  else
  {
    v8 = *(a3 + OBJC_IVAR___PFFairPlayInvalidationManager_keyLoader);
    if (a4)
    {
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_57;
      v9 = _Block_copy(aBlock);
    }

    else
    {
      v9 = 0;
    }

    [v8 stopKeyRequestWithAsset:a1 completion:v9];
    _Block_release(v9);
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F68);
  v11 = sub_1D917741C();
  v12 = sub_1D9178CEC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315651;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, aBlock);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    aBlock[6] = a6;
    v15 = sub_1D9179A4C();
    v17 = sub_1D8CFA924(v15, v16, aBlock);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "%s Finished invalidating keys for adamId: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }
}

uint64_t FairPlayInvalidationManager.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a1;
  *(v17 + 48) = ObjectType;
  aBlock[4] = sub_1D8E99368;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_2;
  v18 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_1D8E974F0(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v12 = sub_1D917741C();
    v13 = sub_1D9178CEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v23);
      _os_log_impl(&dword_1D8CEC000, v12, v13, "%s Invalidating all FairPlay keys.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA72CB90](v15, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    v16 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v17 = *&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v16);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = v10;
    *(v18 + 40) = a4 & 1;
    *(v18 + 48) = a5;
    v19 = *(v17 + 32);
    sub_1D8D1F93C(a2);
    v20 = v10;
    v19(sub_1D8E99908, v18, v16, v17);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v21 = swift_allocError();
    *v22 = 0;
    a2();
  }
}

void sub_1D8E97754(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F68);
    v17 = a1;
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    sub_1D8D99898(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v43);
      *(v20 + 12) = 2082;
      swift_getErrorValue();
      v22 = sub_1D9179D2C();
      v24 = sub_1D8CFA924(v22, v23, &v43);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Unable to fetch downloaded FairPlay episodes with error: %{public}s.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    if (!a3)
    {
      return;
    }

LABEL_19:
    a3(a1);
    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v41[1] = a4;
  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD0F68);
  v26 = sub_1D917741C();
  v27 = sub_1D9178CEC();
  v28 = os_log_type_enabled(v26, v27);
  v42 = a3;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v43);
    _os_log_impl(&dword_1D8CEC000, v26, v27, "%s Fetched downloaded FairPlay data. Marking to invalidate keys.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  v31 = a1[2];
  if (v31)
  {
    v34 = *(v12 + 16);
    v32 = v12 + 16;
    v33 = v34;
    v35 = a1 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    do
    {
      v33(v15, v35, v11);
      _s18PodcastsFoundation27FairPlayInvalidationManagerC010markKeyForE02at12shouldRemovey0B03URLV_SbtF_0(v15, a6 & 1);
      (*(v32 - 8))(v15, v11);
      v35 += v36;
      --v31;
    }

    while (v31);
  }

  v37 = sub_1D917741C();
  v38 = sub_1D9178CEC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v43);
    _os_log_impl(&dword_1D8CEC000, v37, v38, "%s Finished marking all FairPlay keys for invalidation.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1DA72CB90](v40, -1, -1);
    MEMORY[0x1DA72CB90](v39, -1, -1);
  }

  a3 = v42;
  if (v42)
  {
    a1 = 0;
    goto LABEL_19;
  }
}

uint64_t FairPlayInvalidationManager.removalAllFairPlayKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = ObjectType;
  aBlock[4] = sub_1D8E9937C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_17_2;
  v17 = _Block_copy(aBlock);

  sub_1D8D1F93C(a1);
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

void sub_1D8E97FCC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0F68);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v21);
      _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Removing all FairPlay keys.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v14 = *&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24];
    v15 = *&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher], v14);
    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    v17 = *(v15 + 16);
    v18 = v8;
    sub_1D8D1F93C(a2);
    v17(sub_1D8E998F8, v16, v14, v15);
  }

  else if (a2)
  {
    sub_1D8E99894();
    v19 = swift_allocError();
    *v20 = 0;
    a2();
  }
}