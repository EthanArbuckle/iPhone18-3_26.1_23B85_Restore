void sub_227261BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC420, qword_22767FED0, type metadata accessor for ManagedAssetEntry);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284514, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F8, &qword_22767E0D0, type metadata accessor for ManagedAssetBundle);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272845A4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227261F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC620, &unk_22767E148, type metadata accessor for ManagedAssetResumableLoad);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284150, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC420, qword_22767FED0, type metadata accessor for ManagedAssetEntry);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272777CC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC410, &unk_22767DAA0, type metadata accessor for ManagedWorkoutPlan);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284454, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D8, &unk_22767DD40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4D8, &unk_22767DD40, type metadata accessor for ManagedArchivedWorkoutPlanSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DC30, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A8, &qword_22767DB40, type metadata accessor for ManagedArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272845D4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D8, &qword_22767E0A8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5D8, &qword_22767E0A8, type metadata accessor for ManagedCompletedMarketingVideo);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283BD8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4B8, &qword_22767DB50);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4B8, &qword_22767DB50, type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DB74, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E0, &qword_22767E0B0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5E0, &qword_22767E0B0, type metadata accessor for ManagedEngagementBadge);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283C64, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227262EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC480, &qword_22767DB18, type metadata accessor for ManagedCatalogModalityReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_226EB540C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272630A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC470, &qword_22767DB08, type metadata accessor for ManagedMusicGenre);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277C2C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC460, &qword_22767DAF8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC460, &qword_22767DAF8, type metadata accessor for ManagedTrainerReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277B14, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC468, &qword_22767DB00);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC468, &qword_22767DB00, type metadata accessor for ManagedCatalogTheme);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277BA0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726364C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C0, &qword_22767E088);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5C0, &qword_22767E088, type metadata accessor for ManagedSessionScores);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283A34, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F8, &unk_22767DE20);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4F8, &unk_22767DE20, type metadata accessor for ManagedUpNextQueueItem);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282DA4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC508, &qword_22767DE40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC508, &qword_22767DE40, type metadata accessor for ManagedCatalogTipJournal);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282E80, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC488, &qword_22767DB20);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC488, &qword_22767DB20, type metadata accessor for ManagedEquipment);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277D94, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC498, &qword_22767DB30);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC498, &qword_22767DB30, type metadata accessor for ManagedCatalogMetadataJournal);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277E20, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227263FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC478, &qword_22767DB10);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC478, &qword_22767DB10, type metadata accessor for ManagedCatalogModalityMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277CB8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272641A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC458, &qword_22767DAF0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC458, &qword_22767DAF0, type metadata accessor for ManagedTrainerMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277A88, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC450, &qword_22767DAE8, type metadata accessor for ManagedBodyFocus);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272779FC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC448, &qword_22767DAE0, type metadata accessor for ManagedSkillLevel);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277970, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC440, &qword_22767DAD8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC440, &qword_22767DAD8, type metadata accessor for ManagedCatalogWorkoutMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272778E4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC490, &qword_22767DB28, type metadata accessor for ManagedCatalogWorkoutReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272844B4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC608, &qword_22767E0E8, type metadata accessor for ManagedCatalogProgramReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283E94, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5E8, &qword_22767E0B8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5E8, &qword_22767E0B8, type metadata accessor for ManagedCatalogThemeCategory);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283CF0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227264EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F0, &unk_22767E0C0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F0, &unk_22767E0C0, type metadata accessor for ManagedCatalogTipCategoryReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283D7C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272650C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A8, &qword_22767DB40, type metadata accessor for ManagedArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272842F4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272652A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC500, &qword_22767DE38, type metadata accessor for ManagedAchievementEnvironmentCache);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_226ECC7F4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC418, &unk_22767DAB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC418, &unk_22767DAB0, type metadata accessor for ManagedAudioLanguagePreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227277740, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC600, &unk_22767E0D8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC600, &unk_22767E0D8, type metadata accessor for ManagedSampleContentArchivedSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283E08, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC598, &qword_22767DFB8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC598, &qword_22767DFB8, type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283740, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC588, &qword_22767DFA8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC588, &qword_22767DFA8, type metadata accessor for ManagedHealthKitStandaloneWorkoutJob);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283628, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC590, &qword_22767DFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC590, &qword_22767DFB0, type metadata accessor for ManagedHealthKitWorkout);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272836B4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5A0, &unk_22767DFC0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5A0, &unk_22767DFC0, type metadata accessor for ManagedHealthKitMindfulSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272837CC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC438, &qword_22767DAD0, type metadata accessor for ManagedAssetRequestReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284038, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272661C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC430, &unk_22767FFB0, type metadata accessor for ManagedAssetRequestKeyMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272840C4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272663AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC520, qword_22767DE58);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC520, qword_22767DE58, type metadata accessor for ManagedOnboardingSurveyResult);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283024, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C8, &qword_22767E090);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5C8, &qword_22767E090, type metadata accessor for ManagedRecommendation);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283AC0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D0, &qword_22767E098);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5D0, &qword_22767E098, type metadata accessor for ManagedCatalogSyncAnchor);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283B4C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC580, &qword_22767DFA0, type metadata accessor for ManagedEstimatedCalories);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728359C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC578, &qword_22767DF98);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC578, &qword_22767DF98, type metadata accessor for ManagedHealthKitActivityType);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283510, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC580, &qword_22767DFA0, type metadata accessor for ManagedEstimatedCalories);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284484, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC410, &unk_22767DAA0, type metadata accessor for ManagedWorkoutPlan);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283858, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272670E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F0, &qword_22767DE18);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4F0, &qword_22767DE18, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282D18, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272672CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC530, &qword_22767DED8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC530, &qword_22767DED8, type metadata accessor for ManagedWorkoutPlanTemplate);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272830B0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272674B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC540, &qword_22767DEE8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC540, &qword_22767DEE8, type metadata accessor for ManagedBurnBarDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272831C8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC538, &qword_22767DEE0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC538, &qword_22767DEE0, type metadata accessor for ManagedMetricsDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728313C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC510, &qword_22767DE48);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC510, &qword_22767DE48, type metadata accessor for ManagedProgressDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282F0C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC620, &unk_22767E148, type metadata accessor for ManagedAssetResumableLoad);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284574, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC550, &qword_22767DEF8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC550, &qword_22767DEF8, type metadata accessor for ManagedBookmark);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272832E0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC548, &qword_22767DEF0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC548, &qword_22767DEF0, type metadata accessor for ManagedPlaylist);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283254, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC518, &qword_22767DE50);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC518, &qword_22767DE50, type metadata accessor for ManagedPrivacyAcknowledgement);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282F98, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272681EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC490, &qword_22767DB28, type metadata accessor for ManagedCatalogWorkoutReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283FAC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272683D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC610, &unk_22767E0F0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC610, &unk_22767E0F0, type metadata accessor for ManagedCatalogTipReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283F20, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272685B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A0, &qword_22767DB38);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A0, &qword_22767DB38, type metadata accessor for ManagedAchievementNotificationRecord);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DA5C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC628, &qword_22767E158);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC628, &qword_22767E158, type metadata accessor for ManagedAssetLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272841DC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726897C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F8, &qword_22767E0D0, type metadata accessor for ManagedAssetBundle);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284268, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC630, &qword_22767E178, type metadata accessor for ManagedAssetBundleLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284604, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC630, &qword_22767E178, type metadata accessor for ManagedAssetBundleLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284380, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void *sub_227268F28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_227268FCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2276694E0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A78, &qword_2276716F8);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2272692F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DirtySyncZone();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA818, &qword_227678F98);
  result = sub_22766CDE0();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v34 + 72);
    sub_2272838E4(v20 + v36 * (v17 | (v15 << 6)), v11, type metadata accessor for DirtySyncZone);
    v21 = *(v12 + 40);
    sub_22766D370();
    sub_2276694E0();
    sub_226E9CF88(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    sub_22766BF60();
    v22 = *(v35 + 20);
    sub_227662750();
    sub_226E9CF88(&qword_2813A5820, MEMORY[0x277CC9578]);
    sub_22766BF60();
    result = sub_22766D3F0();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      a4 = v33;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    a4 = v33;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_2272839A8(v11, *(v12 + 48) + v26 * v36, type metadata accessor for DirtySyncZone);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227269674(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227664140();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA780, &qword_22767DF00);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_28139B9C0, MEMORY[0x277D506C0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726999C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BD0, &unk_22767DF20);
  result = sub_22766CDE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22766D370();

    sub_22766C100();
    result = sub_22766D3F0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227269BC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227667780();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA638, &qword_227678E98);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_2813A55D0, MEMORY[0x277D52F78]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227269EE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227666A40();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_28139B600, MEMORY[0x277D52790]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726A210(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227664530();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AC0, &qword_22767E170);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_2813A57C0, MEMORY[0x277D50978]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726A560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227666B60();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_28139B5D8, MEMORY[0x277D52828]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726A888(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  v9 = sub_22766CDE0();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  v32 = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(result + 48) + 24 * (v14 | (v11 << 6));
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v5 + 40);
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v22 = -1 << *(v5 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v5 + 48) + 24 * v25;
    *v30 = v19;
    *(v30 + 8) = v18;
    *(v30 + 16) = v20;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = v32;
    v10 = v33;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v33 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726AB40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v7 = a4;
  if (!a3)
  {
    v12 = MEMORY[0x277D84FA0];
LABEL_6:

    return v12;
  }

  v8 = a3;
  if (*(a4 + 16) == a3)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CDE0();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_17:
    v19 = *(*(v7 + 48) + (v16 | (v14 << 6)));
    v20 = *(v12 + 40);
    sub_22766D370();
    v21 = a7(v19);
    MEMORY[0x22AA996B0](v21);
    result = sub_22766D3F0();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v12 + 48) + v25) = v19;
    ++*(v12 + 16);
    if (__OFSUB__(v8--, 1))
    {
      goto LABEL_32;
    }

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_6;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726AD50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227663480();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B38, &unk_2276717A0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_2813A5800, MEMORY[0x277D4FF88]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726B078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227663180();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A28, &unk_2276716B0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_28139BD58, MEMORY[0x277D4FCA8]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726B3A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227665F20();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA640, &unk_22767DFD0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726B6C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227666650();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA708, &qword_22767E0A0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_2813A56A8, MEMORY[0x277D52498]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726B9F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2276639B0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A30, &qword_22767E140);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_28139BCA8, MEMORY[0x277D501C8]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726BD18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227669360();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA768, &qword_22767E100);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_2813A5500, MEMORY[0x277D53BA0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726C0CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_2276650A0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B08, &qword_227671780);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_2813A5738, MEMORY[0x277D51330]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726C408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22766CB20();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726C5F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227663AB0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB28, &qword_2276791D0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_27D7B89F0, MEMORY[0x277D502D0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726C91C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227664010();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A48, &qword_2276716D0);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_28139BA00, MEMORY[0x277D50618]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_22726CC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2274CD91C(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  v5 = sub_2274CE900(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_226EBB21C();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22726CDC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_22726CF90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22726D07C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22766D370();
  sub_22766D3A0();
  if (a2)
  {
    sub_22766C100();
  }

  result = sub_22766D3F0();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    v15 = *(v5 + 48);
    do
    {
      v16 = (v15 + 16 * v10);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          if (*v16 == a1 && v17 == a2)
          {
            goto LABEL_18;
          }

          result = sub_22766D190();
          if (result)
          {
            v19 = v16[1];
LABEL_18:
            *v16 = a1;
            v16[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_18;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while ((v12 & (1 << v10)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v12 | v13;
    v20 = (*(v5 + 48) + 16 * v10);
    *v20 = a1;
    v20[1] = a2;
    v21 = *(v5 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v5 + 16) = v23;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22726D218(uint64_t a1, char a2, void *a3)
{
  v63 = sub_227667780();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC80, &qword_2276796C0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_226E93170(v56, v13, &qword_27D7BAC80, &qword_2276796C0);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_226E92000(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF0A30();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FE2FC0(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_226E92000(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_226E93170(v56 + *(v60 + 72) * v37, v13, &qword_27D7BAC80, &qword_2276796C0);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_226E92000(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_226FE2FC0(v46, 1);
            v48 = *a3;
            v42 = sub_226E92000(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22726D784(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726DB2C(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v45 = sub_227667780();
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    v10 = v6;
    sub_226F1EFF0(0, v8, 0);
    v50 = v51;
    v11 = a1 + 56;
    v12 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v13 = v10;
    v14 = result;
    v15 = 0;
    v42 = v10 + 8;
    v43 = v10 + 16;
    v38 = a1 + 64;
    v39 = v8;
    v40 = v10;
    v41 = a1 + 56;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v48 = *(a1 + 36);
      v19 = v44;
      v18 = v45;
      v20 = v13;
      (*(v13 + 16))(v44, *(a1 + 48) + *(v13 + 72) * v14, v45);
      v21 = v46(v19);
      v49 = v22;
      result = (*(v20 + 8))(v19, v18);
      v23 = v50;
      v51 = v50;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_226F1EFF0((v24 > 1), v25 + 1, 1);
        v23 = v51;
      }

      *(v23 + 16) = v25 + 1;
      v26 = v23 + 16 * v25;
      v27 = v49;
      *(v26 + 32) = v21;
      *(v26 + 40) = v27;
      v16 = 1 << *(a1 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v11 = v41;
      v28 = *(v41 + 8 * v17);
      if ((v28 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v50 = v23;
      if (v48 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v14 & 0x3F));
      if (v29)
      {
        v16 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v17 << 6;
        v31 = v17 + 1;
        v32 = (v38 + 8 * v17);
        while (v31 < (v16 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v35 = v40;
            result = sub_226EB526C(v14, v48, 0);
            v13 = v35;
            v16 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        v36 = v40;
        result = sub_226EB526C(v14, v48, 0);
        v13 = v36;
      }

LABEL_4:
      ++v15;
      v14 = v16;
      if (v15 == v39)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22726DE68(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726E210(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726E5B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726E960(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726ED08(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726F0B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726F458(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726F800(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726FBA8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22726FF5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227270304(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a2;
  v46 = a1;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v43 - v12;
  v13 = sub_227667780();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v56 = a3;
  v20 = *(a3 + 56);
  v47 = a3 + 56;
  v48 = 0;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v59 = a4 + 7;
  v58 = v7 + 16;
  v45 = v7;
  v60 = (v7 + 8);
  v61 = a4;
  v54 = v16;
  v55 = result;
  v50 = (v16 + 8);
  v51 = v16 + 16;
  v52 = v24;
  v53 = v18;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v57 = (v23 - 1) & v23;
LABEL_13:
    v28 = v25 | (v19 << 6);
    v29 = *(v56 + 48);
    v30 = *(v54 + 72);
    v49 = v28;
    (*(v54 + 16))(v18, v29 + v30 * v28, v13);
    sub_227667770();
    if (v61[2] && (v31 = v61, v32 = v61[5], sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0]), v33 = sub_22766BF50(), v34 = -1 << *(v31 + 32), v35 = v33 & ~v34, ((*(v59 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      v37 = *(v45 + 72);
      v38 = *(v45 + 16);
      while (1)
      {
        v38(v11, v61[6] + v37 * v35, v6);
        sub_226E9CF88(&qword_27D7B8700, MEMORY[0x277D51FE0]);
        v39 = sub_22766BFB0();
        v40 = *v60;
        (*v60)(v11, v6);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v59 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v40(v62, v6);
      v18 = v53;
      v13 = v55;
      result = (*v50)(v53, v55);
      *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v41 = __OFADD__(v48++, 1);
      v24 = v52;
      v23 = v57;
      if (v41)
      {
        __break(1u);
LABEL_22:
        v42 = v56;

        return sub_227269BC0(v46, v44, v48, v42);
      }
    }

    else
    {
LABEL_5:
      (*v60)(v62, v6);
      v18 = v53;
      v13 = v55;
      result = (*v50)(v53, v55);
      v24 = v52;
      v23 = v57;
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_22;
    }

    v27 = *(v47 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v57 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272707A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = *MEMORY[0x277D85DE8];
  v64 = sub_227665F20();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v61 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v44 - v10;
  v11 = sub_227667780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a1 + 32);
  v16 = v14 & 0x3F;
  v45 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v45;

  if (v16 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v43 = swift_slowAlloc();

      v40 = sub_227268F28(v43, v45, a1, a2, sub_227270304);

      MEMORY[0x22AA9A450](v43, -1, -1);

      goto LABEL_25;
    }
  }

  v44[2] = v3;
  v44[1] = v44;
  MEMORY[0x28223BE20](v18);
  v47 = v44 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v47, v17);
  v19 = 0;
  v3 = 0;
  v57 = a1;
  v21 = *(a1 + 56);
  a1 += 56;
  v20 = v21;
  v48 = a1;
  v22 = 1 << *(a1 - 24);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v62 = a2 + 56;
  v60 = v6 + 16;
  v46 = v6;
  v63 = (v6 + 8);
  v55 = v11;
  v56 = v12;
  v51 = v12 + 16;
  v52 = (v12 + 8);
  v53 = v25;
  v54 = v15;
  while (2)
  {
    v49 = v19;
    while (1)
    {
      v26 = v57;
      if (!v24)
      {
        v28 = v3;
        while (1)
        {
          v3 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v3 >= v25)
          {
            goto LABEL_24;
          }

          v29 = *(v48 + 8 * v3);
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v58 = (v29 - 1) & v29;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v27 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
LABEL_15:
      v30 = v27 | (v3 << 6);
      v31 = *(v57 + 48);
      v32 = *(v56 + 72);
      v50 = v30;
      (*(v56 + 16))(v15, v31 + v32 * v30, v11);
      v17 = v15;
      sub_227667770();
      if (*(a2 + 16))
      {
        v33 = *(a2 + 40);
        sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
        v17 = v65;
        v34 = sub_22766BF50();
        v35 = -1 << *(a2 + 32);
        v6 = v34 & ~v35;
        if ((*(v62 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          break;
        }
      }

LABEL_7:
      (*v63)(v65, v64);
      v15 = v54;
      v11 = v55;
      (*v52)(v54, v55);
      v25 = v53;
      v24 = v58;
    }

    v59 = ~v35;
    v12 = *(v46 + 72);
    v36 = *(v46 + 16);
    while (1)
    {
      v37 = a2;
      v38 = v61;
      v17 = v64;
      v36(v61, *(a2 + 48) + v12 * v6, v64);
      sub_226E9CF88(&qword_27D7B8700, MEMORY[0x277D51FE0]);
      a1 = sub_22766BFB0();
      v39 = *v63;
      (*v63)(v38, v17);
      if (a1)
      {
        break;
      }

      v6 = (v6 + 1) & v59;
      a2 = v37;
      if (((*(v62 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v39(v65, v64);
    v15 = v54;
    v11 = v55;
    (*v52)(v54, v55);
    *&v47[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v19 = v49 + 1;
    a2 = v37;
    v25 = v53;
    v24 = v58;
    if (!__OFADD__(v49, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v40 = sub_227269BC0(v47, v45, v49, v26);

LABEL_25:
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t sub_227270D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v84 - v9;
  v11 = sub_22722EE0C(a2);
  if (!v3)
  {
    v87 = v11;
    v84 = a2;
    v85 = sub_22722F4C0(a2);
    v86 = 0;
    v12 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v13 = *v12;
    v14 = v12[1];
    LODWORD(v94) = *(v12 + 16);
    v15 = v12[3];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = v13;
    v21 = v14;

    sub_22766A070();
    *(v19 + 16) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v94;
    *(v19 + 40) = v15;
    swift_getKeyPath();
    v22 = sub_2276627D0();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v10, a1, v22);
    (*(v23 + 56))(v10, 0, 1, v22);
    v93 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v92);
    sub_226E93170(v10, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
    v25 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v94 = v25;
    v26 = sub_22766C820();
    sub_226E93170(v92, v90, &unk_27D7BC990, &qword_227670A30);
    v27 = v91;
    v88 = v19;
    if (v91)
    {
      v28 = __swift_project_boxed_opaque_existential_0(v90, v91);
      v29 = *(v27 - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](v28);
      v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32);
      v33 = sub_22766D170();
      (*(v29 + 8))(v32, v27);
      v19 = v88;
      __swift_destroy_boxed_opaque_existential_0(v90);
    }

    else
    {
      v33 = 0;
    }

    v89 = objc_opt_self();
    v34 = [v89 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8, qword_22767DC60);
    v36 = [objc_allocWithZone(v35) initWithLeftExpression:v26 rightExpression:v34 modifier:0 type:4 options:0];

    sub_226E97D1C(v10, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v92, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v37 = v36;
    v38 = sub_22766A080();
    v40 = v39;
    MEMORY[0x22AA985C0]();
    if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v38(v92, 0);
    swift_endAccess();

    swift_getKeyPath();
    v41 = sub_227073F2C(v87);

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v92[0] = v41;

    v42 = sub_22766C820();
    sub_226E93170(v92, v90, &unk_27D7BC990, &qword_227670A30);
    v43 = v91;
    if (v91)
    {
      v44 = __swift_project_boxed_opaque_existential_0(v90, v91);
      v45 = *(v43 - 8);
      v46 = *(v45 + 64);
      MEMORY[0x28223BE20](v44);
      v48 = &v84 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v48);
      v49 = sub_22766D170();
      (*(v45 + 8))(v48, v43);
      v19 = v88;
      __swift_destroy_boxed_opaque_existential_0(v90);
    }

    else
    {
      v49 = 0;
    }

    v50 = [v89 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v35) initWithLeftExpression:v42 rightExpression:v50 modifier:0 type:10 options:0];

    sub_226E97D1C(v92, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v51 = sub_22766A080();
    v53 = v52;
    MEMORY[0x22AA985C0]();
    if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v51(v92, 0);
    swift_endAccess();

    swift_getKeyPath();
    v54 = sub_227074044(v85);

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D0, &unk_22767DD30);
    v92[0] = v54;

    v55 = sub_22766C820();
    sub_226E93170(v92, v90, &unk_27D7BC990, &qword_227670A30);
    v56 = v91;
    if (v91)
    {
      v57 = __swift_project_boxed_opaque_existential_0(v90, v91);
      v58 = *(v56 - 8);
      v59 = *(v58 + 64);
      MEMORY[0x28223BE20](v57);
      v61 = &v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v58 + 16))(v61);
      v62 = sub_22766D170();
      (*(v58 + 8))(v61, v56);
      v19 = v88;
      __swift_destroy_boxed_opaque_existential_0(v90);
    }

    else
    {
      v62 = 0;
    }

    v63 = [v89 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v35) initWithLeftExpression:v55 rightExpression:v63 modifier:0 type:10 options:0];

    sub_226E97D1C(v92, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v64 = sub_22766A080();
    v66 = v65;
    MEMORY[0x22AA985C0]();
    if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v83 = *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v64(v92, 0);
    swift_endAccess();

    v67 = v86;
    v68 = sub_227232BB8(100);
    v7 = v67;
    if (v67)
    {
      swift_setDeallocating();

      v69 = *(v19 + 40);

      v70 = qword_2813B2078;
      v71 = sub_22766A100();
      (*(*(v71 - 8) + 8))(v19 + v70, v71);
      v72 = *(*v19 + 48);
      v73 = *(*v19 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v75 = v68;
      swift_setDeallocating();

      v76 = *(v19 + 40);

      v77 = qword_2813B2078;
      v78 = sub_22766A100();
      (*(*(v78 - 8) + 8))(v19 + v77, v78);
      v79 = *(*v19 + 48);
      v80 = *(*v19 + 52);
      swift_deallocClassInstance();
      v81 = v84;

      v7 = sub_2272707A8(v75, v81);
    }
  }

  return v7;
}

uint64_t sub_227271878(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227271C20(uint64_t a1, char a2, uint64_t *a3)
{
  v85 = a3;
  v70 = sub_227662750();
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v70);
  v69 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = v61 - v9;
  v10 = sub_227664530();
  v81 = *(v10 - 8);
  v11 = v81[8];
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = v61 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v61 - v16;
  v83 = sub_227665F20();
  v71 = *(v83 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v83);
  v84 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C0, qword_22767DB58);
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x28223BE20](v20);
  v77 = v61 - v24;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = *(result + 48);
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v80 = (v71 + 32);
    v79 = (v81 + 4);
    v75 = v81 + 2;
    v76 = v26;
    v74 = *(v23 + 72);
    v64 = (v5 + 8);
    v63 = v81 + 1;
    v62 = (v71 + 8);
    v61[1] = v81 + 5;
    v65 = v10;
    v78 = v17;
    while (1)
    {
      v82 = v25;
      v42 = v77;
      sub_226E93170(v27, v77, &qword_27D7BC4C0, qword_22767DB58);
      v43 = *v80;
      v44 = v84;
      (*v80)(v84, v42, v83);
      v45 = *v79;
      (*v79)(v17, v42 + v76, v10);
      v46 = *v85;
      v48 = sub_226F3A6FC(v44);
      v49 = *(v46 + 16);
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        break;
      }

      v52 = v47;
      if (*(v46 + 24) >= v51)
      {
        if ((a2 & 1) == 0)
        {
          sub_226FF09F4();
        }
      }

      else
      {
        v53 = v85;
        sub_226FE2F98(v51, a2 & 1);
        v54 = *v53;
        v55 = sub_226F3A6FC(v84);
        if ((v52 & 1) != (v56 & 1))
        {
          goto LABEL_20;
        }

        v48 = v55;
      }

      v57 = *v85;
      if (v52)
      {
        v28 = v57[7];
        v29 = v81[9] * v48;
        v72 = v81[2];
        v73 = v29;
        v30 = v67;
        v72(v67, v28 + v29, v10);
        v31 = v68;
        sub_227664520();
        v32 = v69;
        sub_227664520();
        sub_226E9CF88(&qword_28139BDC0, MEMORY[0x277CC9578]);
        v33 = v70;
        v34 = sub_22766BF80();
        v35 = *v64;
        v36 = v32;
        v10 = v65;
        (*v64)(v36, v33);
        v35(v31, v33);
        if (v34)
        {
          v37 = v30;
        }

        else
        {
          v37 = v78;
        }

        v38 = v66;
        v72(v66, v37, v10);
        v39 = v81;
        v40 = v81[1];
        v41 = v30;
        v17 = v78;
        v40(v41, v10);
        v40(v17, v10);
        (*v62)(v84, v83);
        result = (v39[5])(v57[7] + v73, v38, v10);
      }

      else
      {
        v57[(v48 >> 6) + 8] |= 1 << v48;
        v43(v57[6] + *(v71 + 72) * v48, v84, v83);
        result = v45((v57[7] + v81[9] * v48), v17, v10);
        v58 = v57[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_19;
        }

        v57[2] = v60;
      }

      v27 += v74;
      a2 = 1;
      v25 = v82 - 1;
      if (v82 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_22766D220();
    __break(1u);
  }

  return result;
}