void sub_1C714C228(void **a1@<X0>, void *a2@<X1>, double *a3@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  *&v14 = MEMORY[0x1EEE9AC00](v13 - 8).n128_u64[0];
  v16 = &v46 - v15;
  v17 = *a1;
  v18 = [a2 curationModelForAsset_];
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *a3 > 0.01)
  {
    sub_1C754F2DC();
    if (v6)
    {

      *a5 = v6;
      return;
    }

    *a3 = Current;
  }

  v20 = sub_1C70CAC04(v17);
  if (!v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v20;
  v23 = v21;
  [v17 curationScore];
  v25 = v24;
  [v17 overallAestheticScore];
  v27 = v26;
  v28 = [v17 iconicScoreProperties];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v29 = v28;
  v47 = v23;
  [v28 iconicScore];
  v31 = v30;

  v32 = [v17 creationDate];
  if (v32)
  {
    v33 = v32;
    v34 = v22;
    sub_1C754DF2C();

    v35 = sub_1C754DF6C();
    v36 = 0;
  }

  else
  {
    v34 = v22;
    v35 = sub_1C754DF6C();
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v36, 1, v35);
  v37 = [v17 mediaAnalysisProperties];
  v38 = [v37 faceCount];

  v39 = [v18 isBadQualityForImageKeyAssetWithAsset:v17 statistics:a4];
  v40 = [v17 isVideo];
  v41 = &selRef_isInterestingVideoWithAsset_;
  if (!v40)
  {
    v41 = &selRef_isInterestingLivePhotoWithAsset_;
  }

  v42 = [v18 *v41];
  [v17 locationCoordinate];
  v43 = CLLocationCoordinate2DIsValid(v48);
  v44 = v47;
  *a6 = v34;
  *(a6 + 8) = v44;
  *(a6 + 16) = v25;
  *(a6 + 24) = v27;
  *(a6 + 32) = v31;
  v45 = type metadata accessor for Hastings.Asset(0);
  sub_1C6FF51C8(v16, a6 + v45[8]);
  *(a6 + v45[9]) = v38;
  *(a6 + v45[10]) = v39;
  *(a6 + v45[11]) = v42;
  *(a6 + v45[12]) = v43;
  *(a6 + v45[13]) = v18;
}

void *FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.init(storyElements:shotlistMatchingAssetUUIDs:eligibleAssetUUIDs:shotlistMatchingIsEssentialForRetrievedAssets:shotlistMatchingIsEssentialForExtendedRetrievedAssets:shotlistMatchingIsEssentialForGlobalTraitsExpandedAssets:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (qword_1EC213E28 != -1)
  {
    OUTLINED_FUNCTION_26_22();
  }

  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EC217E80);
  OUTLINED_FUNCTION_62_2();
  (*(v15 + 16))(a7);
  v16 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  result = memcpy((a7 + v16[5]), a1, 0x130uLL);
  *(a7 + v16[6]) = a2;
  *(a7 + v16[7]) = a3;
  *(a7 + v16[8]) = a4 & 1;
  *(a7 + v16[9]) = a5 & 1;
  *(a7 + v16[10]) = a6 & 1;
  return result;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.sample(from:maximumNumberOfAssets:randomizer:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    sub_1C75504FC();
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v8))
    {
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_69_11(v9, 3.8521e-34);
      *(v9 + 12) = 2048;
      *(v9 + 14) = a2;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "[StagedSampler] %ld assets, less than %ld, nothing to do", v9, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    return sub_1C75504FC();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_57_0();

    return sub_1C714C8BC(v3, v4, 0, v5);
  }
}

unint64_t sub_1C714C73C(char a1)
{
  result = 0x656C626967696C45;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6973736572707845;
      break;
    case 3:
      result = 0x6576656972746552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C714C7D4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E80);
  v1 = __swift_project_value_buffer(v0, qword_1EC217E80);
  if (qword_1EC213E20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC217E68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C714C8BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if (*(a1 + 16) <= a2)
  {
    if (a3 == 4)
    {
      v14 = 0xE800000000000000;
      v15 = 0x676E696C706D6153;
    }

    else
    {
      v15 = sub_1C714C73C(a3);
      v14 = v25;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20_1();
      v62[0] = OUTLINED_FUNCTION_20_1();
      *v28 = 136315650;
      v29 = sub_1C6F765A4(v15, v14, v62);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2048;
      *(v28 + 14) = *(v6 + 16);

      *(v28 + 22) = 2048;
      *(v28 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v26, v27, "[StagedSampler] stage %s: %ld assets, less than %ld, done", v28, 0x20u);
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C75504FC();
    return v6;
  }

  if (a3 == 4)
  {
    v62[0] = a1;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C714E610();
    v8 = sub_1C7550A1C();
    v9 = sub_1C7033F04(a2, v8);
    v10 = sub_1C706E83C(v9);
    sub_1C75504FC();
    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v12))
    {
      v13 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_69_11(v13, 3.8521e-34);
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v6 + 16);

      _os_log_impl(&dword_1C6F5C000, v11, v12, "[StagedSampler] Sampled %ld assets out of %ld", v13, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    return v10;
  }

  sub_1C714D014(a1, a3);
  v17 = v16;
  v18 = *(v16 + 16);
  swift_bridgeObjectRetain_n();
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  v21 = OUTLINED_FUNCTION_128(v20);
  if (v18 <= a2)
  {
    if (v21)
    {
      v60 = v20;
      v30 = 0x656C626967696C45;
      v31 = OUTLINED_FUNCTION_20_1();
      v62[0] = OUTLINED_FUNCTION_20_1();
      *v31 = 136315650;
      v32 = 0xE800000000000000;
      switch(a3)
      {
        case 1:
          v30 = 0xD000000000000014;
          v32 = 0x80000001C75A0DA0;
          break;
        case 2:
          OUTLINED_FUNCTION_39_15();
          break;
        case 3:
          OUTLINED_FUNCTION_38_14();
          break;
        default:
          break;
      }

      v42 = sub_1C6F765A4(v30, v32, v62);

      *(v31 + 4) = v42;
      *(v31 + 12) = 2048;
      v43 = *(v17 + 16);

      *(v31 + 14) = v43;

      *(v31 + 22) = 2048;
      *(v31 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v19, v60, "[StagedSampler] stage %s: %ld assets, less than %ld, keeping", v31, 0x20u);
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v44 = 0x676E696C706D6153;
    sub_1C75504FC();
    v45 = OUTLINED_FUNCTION_15_1();
    v47 = 4;
    v48 = 0xE800000000000000;
    v49 = 1;
    v50 = sub_1C7238810(v45, v46);
    switch(a3)
    {
      case 0:
        goto LABEL_33;
      case 1:
        v49 = 2;
        goto LABEL_33;
      case 2:
        v49 = 3;
LABEL_33:
        swift_getKeyPath();
        swift_getAtKeyPath();

        v44 = v62[0];
        v48 = v62[1];
        v47 = v49;
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }

    v51 = v44;
    sub_1C75504FC();
    sub_1C75504FC();
    v52 = sub_1C754FEEC();
    v53 = sub_1C75511BC();

    if (os_log_type_enabled(v52, v53))
    {
      v61 = v50;
      v54 = OUTLINED_FUNCTION_23_1();
      v59 = v47;
      v55 = OUTLINED_FUNCTION_20_1();
      v62[0] = v55;
      *v54 = 136315394;
      v56 = sub_1C6F765A4(v51, v48, v62);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2048;
      *(v54 + 14) = *(v61 + 16);

      _os_log_impl(&dword_1C6F5C000, v52, v53, "[StagedSampler] going to next stage %s with %ld assets", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v47 = v59;
      OUTLINED_FUNCTION_109();
      v50 = v61;
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C714C8BC(v50, a2 - *(v17 + 16), v47, a4);

    v57 = OUTLINED_FUNCTION_457();
    return sub_1C70738FC(v57, v58);
  }

  if (v21)
  {
    v22 = 0x656C626967696C45;
    v23 = OUTLINED_FUNCTION_20_1();
    v62[0] = OUTLINED_FUNCTION_20_1();
    *v23 = 136315650;
    v24 = 0xE800000000000000;
    switch(a3)
    {
      case 1:
        v22 = 0xD000000000000014;
        v24 = 0x80000001C75A0DA0;
        break;
      case 2:
        OUTLINED_FUNCTION_39_15();
        break;
      case 3:
        OUTLINED_FUNCTION_38_14();
        break;
      default:
        break;
    }

    v33 = sub_1C6F765A4(v22, v24, v62);

    *(v23 + 4) = v33;
    *(v23 + 12) = 2048;
    v34 = *(v17 + 16);

    *(v23 + 14) = v34;

    *(v23 + 22) = 2048;
    *(v23 + 24) = a2;
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v40 = sub_1C714C8BC(v17, a2, 0x4040401u >> (8 * a3), a4);

  return v40;
}

unint64_t sub_1C714CFE8@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C714C73C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1C714D014(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  switch(a2)
  {
    case 1:
      v8 = *(v2 + *(v4 + 32));
      sub_1C75504FC();
      sub_1C7069A44();
      if (v8 == 1)
      {
        goto LABEL_8;
      }

      break;
    case 2:
      sub_1C75504FC();
      sub_1C7069A44();
      sub_1C7069A44();
      v6 = v5;
      sub_1C75504FC();
      sub_1C7069A44();
      sub_1C7069A44();

      sub_1C70738FC(v7, v6);
      break;
    case 3:
      if (*(v2 + *(v4 + 32)) == 1)
      {
        goto LABEL_6;
      }

      break;
    default:
LABEL_6:
      sub_1C75504FC();
LABEL_8:

      sub_1C7069A44();
      break;
  }
}

uint64_t sub_1C714D1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955557465737361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972657571 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C714D274(char a1)
{
  if (a1)
  {
    return 0x73656972657571;
  }

  else
  {
    return 0x4955557465737361;
  }
}

uint64_t sub_1C714D2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C714E7B8();
  sub_1C755200C();
  v13 = 0;
  sub_1C7551CCC();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FC18BC();
    sub_1C7551D2C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C714D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C714D1A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C714D484(uint64_t a1)
{
  v2 = sub_1C714E7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C714D4C0(uint64_t a1)
{
  v2 = sub_1C714E7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C714D51C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422DA4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C714D920(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C714D5D4()
{
  result = sub_1C6F65BE8(319, &qword_1EDD0FA70);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryMusicCuration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C714D6EC()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FreeformStoryGenerator();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C714D7C0()
{
  sub_1C754FF1C();
  if (v0 <= 0x3F)
  {
    sub_1C7042C44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C714D870(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C714D8C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C714D920(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CA0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C714DAA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C714DA24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C714DA24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C714DAA4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C714E0F0((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C714DFB8(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_1C714DFB8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C714E0F0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C714E0F0(double *a1, double *a2, unint64_t a3, double *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1);
    v10 = &a4[3 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (a4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = a4;
    v13 = v7 == a4;
    a4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C7423D18(a2);
  v10 = &a4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > a4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - a4) / 24;
  if (v6 != a4 || v6 >= &a4[3 * v19])
  {
    memmove(v6, a4, 24 * v19);
  }

  return 1;
}

uint64_t sub_1C714E3A4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C6F738F4;

  return sub_1C714B4BC(v3, v4, v5, v7, v6);
}

unint64_t sub_1C714E468()
{
  result = qword_1EC217EE8;
  if (!qword_1EC217EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217EE0);
    sub_1C714E4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217EE8);
  }

  return result;
}

unint64_t sub_1C714E4EC()
{
  result = qword_1EC217EF0;
  if (!qword_1EC217EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217EF0);
  }

  return result;
}

uint64_t sub_1C714E5B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

unint64_t sub_1C714E610()
{
  result = qword_1EC217F00;
  if (!qword_1EC217F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F00);
  }

  return result;
}

_BYTE *_s9GeneratorV13StagedSamplerV5StageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C714E764()
{
  result = qword_1EC217F08;
  if (!qword_1EC217F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F08);
  }

  return result;
}

unint64_t sub_1C714E7B8()
{
  result = qword_1EC217F18;
  if (!qword_1EC217F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F18);
  }

  return result;
}

_BYTE *_s9GeneratorV23DiagnosticsCuratedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C714E8EC()
{
  result = qword_1EC217F20;
  if (!qword_1EC217F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F20);
  }

  return result;
}

unint64_t sub_1C714E944()
{
  result = qword_1EC217F28;
  if (!qword_1EC217F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F28);
  }

  return result;
}

unint64_t sub_1C714E99C()
{
  result = qword_1EC217F30;
  if (!qword_1EC217F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F30);
  }

  return result;
}

void *OUTLINED_FUNCTION_60_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char __dst)
{

  return memcpy(&__dst, v38, 0x130uLL);
}

uint64_t OUTLINED_FUNCTION_69_11(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_70_9()
{

  return sub_1C75504DC();
}

unint64_t StoryOrchestrator.StoryOrchestratorCancellationError.descriptionWithoutUnderlying.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C714EB7C()
{
  sub_1C714F600();

  JUMPOUT(0x1CCA5BE40);
}

uint64_t StoryOrchestrator.Error.underlyingErrors.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StoryOrchestrator.Error(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C714ED44(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 5:
      v7 = *v4;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      sub_1C70D7CB8(&v4[*(v8 + 48)]);
      goto LABEL_6;
    case 3:
      v13 = *v4;
      v9 = *(v4 + 2);
      v10 = v4[24];
      sub_1C6FE0D14();
      v7 = swift_allocError();
      *v11 = v13;
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      goto LABEL_6;
    case 4:
    case 6:
    case 7:
      v7 = *v4;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C755BAB0;
      sub_1C754F89C();

      break;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return v6;
    default:
      sub_1C714EDA8(v4);
      break;
  }

  return v6;
}

uint64_t sub_1C714ED44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryOrchestrator.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C714EDA8(uint64_t a1)
{
  v2 = type metadata accessor for StoryOrchestrator.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C714EE34()
{
  sub_1C714F5BC(&qword_1EC217F98);

  JUMPOUT(0x1CCA5BE40);
}

uint64_t FreeformStoryGenerator.Error.rawCode.getter()
{
  v1 = *v0;
  result = 101;
  switch(*(v0 + 24))
  {
    case 1:
      result = 103;
      break;
    case 2:
      result = 104;
      break;
    case 3:
      result = 105;
      break;
    case 4:
      result = 106;
      break;
    case 5:
      result = 107;
      break;
    case 6:
      result = 108;
      break;
    case 7:
      result = 109;
      break;
    case 8:
      result = 117;
      break;
    case 9:
      result = 113;
      break;
    case 0xA:
      result = 119;
      break;
    case 0xB:
      result = 121;
      break;
    case 0xC:
      if (v0[1] | v0[2] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          result = 102;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          result = 110;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          result = 111;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          result = 114;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          result = 122;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          result = 116;
        }

        else if (*(v0 + 1) == 0 && v1 == 7)
        {
          result = 120;
        }

        else
        {
          result = 123;
        }
      }

      else
      {
        result = 100;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t FreeformStoryGenerator.Error.underlyingErrors.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7CC0];
  switch(*(v0 + 24))
  {
    case 0xA:
      v4 = *(v1 + 16);
      if (v4)
      {
        v11 = MEMORY[0x1E69E7CC0];
        sub_1C716E5EC(0, v4, 0);
        v2 = v11;
        v5 = (v1 + 32);
        do
        {
          v6 = *v5;
          v7 = *v5;
          sub_1C754F89C();

          v11 = v2;
          v9 = *(v2 + 16);
          v8 = *(v2 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_1C716E5EC(v8 > 1, v9 + 1, 1);
            v2 = v11;
          }

          *(v2 + 16) = v9 + 1;
          sub_1C6F699F8(&v10, v2 + 40 * v9 + 32);
          ++v5;
          --v4;
        }

        while (v4);
      }

      break;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216630);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C755BAB0;
      sub_1C754F89C();
      break;
    case 0xC:
      v2 = MEMORY[0x1E69E7CC0];
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_1C714F178@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1C754F8AC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void sub_1C714F1F0()
{
  sub_1C714F568();

  JUMPOUT(0x1CCA5BE40);
}

unint64_t sub_1C714F230()
{
  result = qword_1EC217F40;
  if (!qword_1EC217F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F40);
  }

  return result;
}

unint64_t sub_1C714F288()
{
  result = qword_1EC217F48;
  if (!qword_1EC217F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F48);
  }

  return result;
}

unint64_t sub_1C714F2E0()
{
  result = qword_1EC217F50;
  if (!qword_1EC217F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F50);
  }

  return result;
}

unint64_t sub_1C714F338()
{
  result = qword_1EC217F58;
  if (!qword_1EC217F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F58);
  }

  return result;
}

unint64_t sub_1C714F460()
{
  result = qword_1EDD09D08;
  if (!qword_1EDD09D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09D08);
  }

  return result;
}

unint64_t sub_1C714F4B8()
{
  result = qword_1EC217F80;
  if (!qword_1EC217F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F80);
  }

  return result;
}

unint64_t sub_1C714F510()
{
  result = qword_1EC217F88;
  if (!qword_1EC217F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F88);
  }

  return result;
}

unint64_t sub_1C714F568()
{
  result = qword_1EC217F90;
  if (!qword_1EC217F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217F90);
  }

  return result;
}

uint64_t sub_1C714F5BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoryOrchestrator.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C714F600()
{
  result = qword_1EC217FA0;
  if (!qword_1EC217FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217FA0);
  }

  return result;
}

uint64_t sub_1C714F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v10 = *(a1 + 16);
  v24 = a2;
  v25 = v10;
  result = swift_beginAccess();
  v12 = 0;
  for (i = MEMORY[0x1E69E7CC0]; ; result = sub_1C7159368(v23, i + v15 + v21 * v16))
  {
LABEL_2:
    v14 = v12;
    if (v12 == v25)
    {

      return i;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    ++v12;
    sub_1C71592A8(a1 + v15 + v16 * v14, v9);
    v17 = (*v24 + v15 + 8);
    v18 = *(*v24 + 16) + 1;
    while (--v18)
    {
      if (*(v17 - 1) != *v9 || *v17 != v9[1])
      {
        v17 = (v17 + v16);
        if ((sub_1C7551DBC() & 1) == 0)
        {
          continue;
        }
      }

      result = sub_1C715930C(v9);
      goto LABEL_2;
    }

    sub_1C7159368(v9, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C716D568();
      i = v26;
    }

    v21 = *(i + 16);
    if (v21 >= *(i + 24) >> 1)
    {
      sub_1C716D568();
      i = v26;
    }

    *(i + 16) = v21 + 1;
  }

  __break(1u);
  return result;
}

void sub_1C714F888(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = 0;
  v9 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = *(v3 + 72);
    sub_1C71592A8(a1 + v10 + v11 * v8, v7);
    sub_1C7421CF8(*(v7 + 13), *(v7 + 14));
    if (v12)
    {

      sub_1C7159368(v7, v18);
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568();
        v13 = v20;
      }

      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        v19 = v15 + 1;
        v17 = v15;
        sub_1C716D568();
        v16 = v19;
        v15 = v17;
        v13 = v20;
      }

      ++v8;
      *(v13 + 16) = v16;
      v19 = v13;
      sub_1C7159368(v18, v13 + v10 + v15 * v11);
    }

    else
    {
      sub_1C715930C(v7);
      ++v8;
    }
  }

  __break(1u);
}

uint64_t sub_1C714FA8C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70();
    v3 = v13;
    v6 = a1 + 32;
    do
    {
      v6 += 8;
      swift_beginAccess();
      v7 = *a2;
      v8 = 0;
      if (*(*a2 + 16))
      {
        v9 = sub_1C6FC2FFC();
        if (v10)
        {
          v8 = *(*(v7 + 56) + 8 * v9);
        }
      }

      swift_endAccess();
      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        sub_1C716DA70();
      }

      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1C714FBA4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C716E60C(0, v2, 0);
    v4 = v35;
    result = sub_1C70D4544(v1);
    v7 = result;
    v8 = 0;
    v9 = v1 + 64;
    v30 = v5;
    v29 = v1 + 72;
    v31 = v2;
    v32 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v34 = v5;
      v33 = v6;
      v11 = *(*(v1 + 56) + 8 * v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      sub_1C721B350();
      *(inited + 32) = v13;
      *(inited + 40) = v14;
      *(inited + 48) = v11;
      result = sub_1C75504DC();
      v15 = result;
      v16 = v4;
      v36 = v4;
      v17 = v1;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C716E60C((v18 > 1), v19 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v19 + 1;
      *(v16 + 8 * v19 + 32) = v15;
      v20 = 1 << *(v17 + 32);
      if (v7 >= v20)
      {
        goto LABEL_25;
      }

      v9 = v32;
      v21 = *(v32 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v1 = v17;
      v4 = v16;
      if (*(v1 + 36) != v34)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v23 = v31;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        v23 = v31;
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1C6F9ED50(v7, v34, v33 & 1);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_1C6F9ED50(v7, v34, v33 & 1);
      }

LABEL_19:
      v6 = 0;
      ++v8;
      v7 = v20;
      v5 = v30;
      if (v8 == v23)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

BOOL sub_1C714FE5C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for PromptSuggestion(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

BOOL sub_1C714FF30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = (a3 + 48);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v12[0] = *(v6 - 2);
    v12[1] = v8;
    v12[2] = v9;
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = a1(v12);

    if (v4)
    {
      break;
    }

    v6 += 3;
  }

  while ((v10 & 1) != 0);
  return v7 == 0;
}

void sub_1C714FFE8(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1C73B45EC(0x20000000000001);
  }
}

uint64_t sub_1C7150060(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = result + 48;
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      v6 = *(*v4 + 16);
      v7 = *a2;
      v8 = *(*a2 + 16);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        break;
      }

      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v7;
      if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v9))
      {
        if (*(v7 + 16) <= v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = *(v7 + 16);
        }

        sub_1C6FB3648(isUniquelyReferenced_nonNull_native, v12, 1, v7);
        v7 = v13;
        *a2 = v13;
        v11 = *(v13 + 24) >> 1;
      }

      if (*(v5 + 16))
      {
        v14 = v11 - *(v7 + 16);
        result = type metadata accessor for PromptSuggestion(0);
        if (v14 < v6)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v15 = *(v7 + 16);
          v16 = __OFADD__(v15, v6);
          v17 = v15 + v6;
          if (v16)
          {
            goto LABEL_20;
          }

          *(v7 + 16) = v17;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_18;
        }
      }

      *a2 = v7;
      v4 += 24;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C71501D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = *(a1 + 16);
  v42 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  v8 = (a1 + 32);
  if (!v7)
  {
LABEL_32:
  }

  while (1)
  {
    v9 = *v8;
    if (*(v6 + 16))
    {
      v10 = sub_1C6FC2FFC();
      if (v11)
      {
        v12 = (*(v6 + 56) + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a4 + v42);
        if (v15)
        {
          v16 = *(v15 + 16);
          sub_1C75504FC();
          if (v16)
          {
            v17 = sub_1C6F78124(v14, v13);
            if (v18)
            {
              sub_1C6F774EC(*(v15 + 56) + 32 * v17, &v47);
              if (swift_dynamicCast())
              {

                v19 = v46;
LABEL_23:
                swift_isUniquelyReferenced_nonNull_native();
                v47 = *a3;
                v33 = v47;
                v34 = sub_1C6FC2FFC();
                if (__OFADD__(v33[2], (v35 & 1) == 0))
                {
                  goto LABEL_35;
                }

                v36 = v34;
                v37 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D8);
                if (sub_1C7551A2C())
                {
                  v38 = sub_1C6FC2FFC();
                  if ((v37 & 1) != (v39 & 1))
                  {
                    goto LABEL_37;
                  }

                  v36 = v38;
                }

                v27 = v47;
                if ((v37 & 1) == 0)
                {
                  v47[(v36 >> 6) + 8] |= 1 << v36;
                  *(v27[6] + 8 * v36) = v9;
                  *(v27[7] + 8 * v36) = v19;
                  v40 = v27[2];
                  v29 = __OFADD__(v40, 1);
                  v30 = v40 + 1;
                  if (v29)
                  {
                    goto LABEL_36;
                  }

LABEL_30:
                  v27[2] = v30;
                  goto LABEL_31;
                }

                *(v47[7] + 8 * v36) = v19;
                goto LABEL_31;
              }
            }
          }
        }

        else
        {
          sub_1C75504FC();
        }

        if (*(a5 + 16) && (v31 = sub_1C6F78124(v14, v13), (v32 & 1) != 0))
        {
          v19 = *(*(a5 + 56) + 8 * v31);
        }

        else
        {

          v19 = 0;
        }

        goto LABEL_23;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v47 = *a3;
    v20 = v47;
    v21 = sub_1C6FC2FFC();
    if (__OFADD__(v20[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152D8);
    if (sub_1C7551A2C())
    {
      v25 = sub_1C6FC2FFC();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

      v23 = v25;
    }

    v27 = v47;
    if ((v24 & 1) == 0)
    {
      v47[(v23 >> 6) + 8] |= 1 << v23;
      *(v27[6] + 8 * v23) = v9;
      *(v27[7] + 8 * v23) = 0;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    *(v47[7] + 8 * v23) = 0;
LABEL_31:
    *a3 = v27;
    v6 = a2;
    ++v8;
    if (!--v7)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7150520(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8);
    --v5;
  }

  while (!v3);
  return result;
}

uint64_t sub_1C715057C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0E1F8);
  __swift_project_value_buffer(v0, qword_1EDD0E1F8);
  return sub_1C754FEFC();
}

uint64_t PromptSuggestionRanker.__allocating_init()()
{
  v0 = swift_allocObject();
  PromptSuggestionRanker.init()();
  return v0;
}

uint64_t PromptSuggestionRanker.init()()
{
  v1 = v0;
  sub_1C7047818();
  *(v0 + 16) = sub_1C755146C();
  v2 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  if (qword_1EDD0E1F0 != -1)
  {
    OUTLINED_FUNCTION_6_44();
  }

  v3 = sub_1C754FF1C();
  v4 = __swift_project_value_buffer(v3, qword_1EDD0E1F8);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  v6 = objc_opt_self();
  *(v1 + v5) = sub_1C715923C(v6);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_whimsicalIncludeProbability) = 0x3FB999999999999ALL;
  return v1;
}

Swift::tuple_suggestions_OpaquePointer_lastEmbeddingDistanceThreshold_Double __swiftcall PromptSuggestionRanker.rankTopPromptSuggestions(promptSuggestionCandidates:usedPromptSuggestions:fetchLimit:embeddingDistanceThreshold:)(Swift::OpaquePointer promptSuggestionCandidates, Swift::OpaquePointer usedPromptSuggestions, Swift::Int fetchLimit, Swift::Double embeddingDistanceThreshold)
{
  v224 = fetchLimit;
  rawValue = usedPromptSuggestions._rawValue;
  v225 = promptSuggestionCandidates._rawValue;
  v6 = type metadata accessor for PromptSuggestion(0);
  v237 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v213 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v213 - v19);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v213 - v24;
  v26 = *(v4 + 16);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v27 = v26;
  v213[1] = PerformanceMeasure.init(name:log:)();
  v255 = MEMORY[0x1E69E7CC0];
  v28 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  v29 = &unk_1C756A000;
  isa = "QueryTokenCategoryTypeString";
  if (!v28)
  {
    v254 = 0u;
    v253 = 0u;
LABEL_6:
    sub_1C6FD7FC8(&v253, &qword_1EC219770);
    if (!v28)
    {
      v254 = 0u;
      v253 = 0u;
      v33 = 0.8;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v31 = sub_1C755068C();
  sub_1C6FE3750(v31, v32);

  if (!*(&v254 + 1))
  {
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v33 = v249;
    goto LABEL_8;
  }

LABEL_7:
  v33 = 0.8;
LABEL_8:
  v34 = sub_1C755068C();
  sub_1C6FE3750(v34, v35);

  if (!*(&v254 + 1))
  {
LABEL_12:
    sub_1C6FD7FC8(&v253, &qword_1EC219770);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v36 = v249;
    goto LABEL_14;
  }

LABEL_13:
  v36 = 0.05;
LABEL_14:
  OUTLINED_FUNCTION_19_25();
  v38 = 0;
  v39 = *(v225 + 2);
  v232 = MEMORY[0x1E69E7CC0];
  v216 = v39;
  while (v39 != v38)
  {
    OUTLINED_FUNCTION_78_8();
    v29 = (v41 & ~v40);
    isa = *(v42 + 72);
    sub_1C71592A8(&v29[v225 + isa * v38], v25);
    if (v25[16] == 1)
    {
      sub_1C7159368(v25, v244);
      v43 = v232;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v253 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568();
        v43 = v253;
      }

      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_15(v45);
        v49 = v48;
        sub_1C716D568();
        v47 = v49;
        v39 = v216;
        v43 = v253;
      }

      v38 = (v38 + 1);
      *(v43 + 16) = v47;
      v232 = v43;
      sub_1C7159368(v244, &v29[v43 + v46 * isa]);
    }

    else
    {
      sub_1C715930C(v25);
      v38 = (v38 + 1);
    }

    OUTLINED_FUNCTION_19_25();
  }

  v221 = 0;
  v50 = v224;
  v51 = v36 + embeddingDistanceThreshold;
  if (v39 < v224)
  {
    v50 = v39;
  }

  v220 = v50;
  v251 = MEMORY[0x1E69E7CD0];
  v252 = MEMORY[0x1E69E7CD0];
  v250 = MEMORY[0x1E69E7CD0];
  v241 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  *&v37 = 136315395;
  v217 = v37;
  *(&v52 + 1) = 2;
  v227 = xmmword_1C755BAB0;
  *&v52 = 136315650;
  v215 = v52;
  *&v52 = 136380675;
  v229 = v52;
  *&v52 = 136380931;
  v223 = v52;
  *&v52 = 134218243;
  v214 = v52;
  *&v52 = 136381187;
  v226 = v52;
  v53 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_26_23();
  while (1)
  {
    OUTLINED_FUNCTION_70_10();
    v55 = v55 != v54 && v33 < v51;
    if (!v55)
    {
      break;
    }

    v51 = v51 - v36;
    v56 = OUTLINED_FUNCTION_14_31();
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v56, v57))
    {
      v240 = v39;
      v58 = OUTLINED_FUNCTION_23_1();
      v59 = OUTLINED_FUNCTION_49_1();
      OUTLINED_FUNCTION_3_53(v59, &v256);
      *v58 = v217;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v60 = OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_4_43(v60);
      *(v61 + 56) = MEMORY[0x1E69E63B0];
      *(v61 + 64) = MEMORY[0x1E69E6438];
      *(v61 + 32) = v51;
      v62 = OUTLINED_FUNCTION_8_19();
      v64 = sub_1C6F765A4(v62, v63, &v247);

      *(v58 + 4) = v64;
      v243 = v58;
      *(v58 + 12) = 2081;
      v65 = *(v53 + 16);
      if (v65)
      {
        v238 = v56;
        v232 = isa;
        OUTLINED_FUNCTION_52_12(MEMORY[0x1E69E7CC0]);
        sub_1C75504FC();
        v66 = &v245;
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_78_8();
        v242 = v53;
        v29 = (v53 + (v68 & ~v67));
        v244 = *(v69 + 72);
        do
        {
          OUTLINED_FUNCTION_74_7();
          sub_1C71592A8(v70, v71);
          isa = *(v56 + 104);
          v72 = *(v56 + 112);
          sub_1C75504FC();
          sub_1C715930C(v56);
          v245 = &v245;
          v56 = v247;
          v53 = v247 + 1;
          if (v247 >= v248 >> 1)
          {
            OUTLINED_FUNCTION_15(v248);
            v66 = &v245;
            sub_1C6F7ED9C();
            OUTLINED_FUNCTION_76_0();
          }

          v247 = v53;
          v73 = &v245 + 2 * v56;
          v73[4] = isa;
          v73[5] = v72;
          OUTLINED_FUNCTION_333();
          v29 += v74;
          --v65;
        }

        while (v65);
        OUTLINED_FUNCTION_23_20();

        OUTLINED_FUNCTION_19_25();
        OUTLINED_FUNCTION_26_23();
        v56 = v238;
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      v75 = MEMORY[0x1CCA5D090](v66, MEMORY[0x1E69E6158]);
      v77 = v76;

      v39 = sub_1C6F765A4(v75, v77, &v247);

      v78 = v243;
      *(v243 + 14) = v39;
      OUTLINED_FUNCTION_143();
      _os_log_impl(&dword_1C6F5C000, v56, v79, "Diversity ranking for smart suggestions with threshold: %s.\n Current selected prompts:%{private}s", v78, 0x16u);
      LODWORD(v39) = v239;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v80 = v221;
    isa = sub_1C714F658(isa, &v255);
    v221 = v80;
    v236 = *(isa + 16);
    if (v236)
    {
      v81 = rawValue;
      v235 = rawValue[2];
      OUTLINED_FUNCTION_79_8();
      v234 = isa + v80;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();
      v82 = OUTLINED_FUNCTION_5();
      v84 = 0;
      v230 = v80;
      v233 = v81 + v80;
      v232 = isa;
      while (1)
      {
        if (v84 >= *(isa + 16))
        {
          __break(1u);
          goto LABEL_127;
        }

        v242 = v53;
        v85 = *(v237 + 72);
        v243 = v84;
        v244 = v85;
        sub_1C71592A8(v234 + v85 * v84, v20);
        if (v20[16])
        {
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x726F6C796154);
          v246 = 0xE600000000000000;
          sub_1C6FB5E8C();
          sub_1C75504FC();
          v84 = MEMORY[0x1E69E6158];
          LODWORD(v238) = OUTLINED_FUNCTION_41_14();
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x656D614E79746963);
          v246 = 0xE800000000000000;
          v240 = OUTLINED_FUNCTION_41_14();
          OUTLINED_FUNCTION_29_16();
          OUTLINED_FUNCTION_52_12(0x6D614E6563616C70);
          v246 = 0xE900000000000065;
          v239 = OUTLINED_FUNCTION_41_14();
        }

        else
        {
          v239 = 1;
          v240 = 1;
          LODWORD(v238) = 1;
        }

        v53 = v231;
        sub_1C71592A8(v20, v231);
        v86 = OUTLINED_FUNCTION_14_31();
        v87 = sub_1C75511BC();
        if (OUTLINED_FUNCTION_128(v87))
        {
          v88 = OUTLINED_FUNCTION_41_0();
          v84 = OUTLINED_FUNCTION_20_1();
          v247 = v84;
          *v88 = v229;
          isa = v16;
          v29 = *(v53 + 112);
          sub_1C75504FC();
          sub_1C715930C(v53);
          OUTLINED_FUNCTION_26_23();
          v53 = sub_1C6F765A4(v89, v29, v90);
          OUTLINED_FUNCTION_9_37();

          *(v88 + 4) = v53;
          _os_log_impl(&dword_1C6F5C000, v86, v87, "Current candidate smart suggestion: %{private}s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_37();
        }

        else
        {

          sub_1C715930C(v53);
        }

        OUTLINED_FUNCTION_22_28();
        ++v84;
        v91 = v235;
        v92 = v233;
        OUTLINED_FUNCTION_23_20();
        v243 = v84;
        if (v91)
        {
          while (1)
          {
            v93 = OUTLINED_FUNCTION_64();
            sub_1C71592A8(v93, v94);
            v95 = sub_1C715215C(v20, v16);
            if (v95 < v51)
            {
              break;
            }

            sub_1C715930C(v16);
            OUTLINED_FUNCTION_333();
            v92 += v96;
            if (!--v91)
            {
              goto LABEL_53;
            }
          }

          v111 = v95;
          OUTLINED_FUNCTION_74_7();
          sub_1C71592A8(v112, v113);
          v114 = v228;
          sub_1C71592A8(v16, v228);
          v39 = OUTLINED_FUNCTION_14_31();
          v115 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_128(v115))
          {
            OUTLINED_FUNCTION_20_1();
            isa = v114;
            v116 = OUTLINED_FUNCTION_62_10();
            OUTLINED_FUNCTION_3_53(v116, &v258);
            OUTLINED_FUNCTION_57_10();
            sub_1C715930C(v84);
            OUTLINED_FUNCTION_23_20();
            sub_1C6F765A4(v117, v29, v118);
            OUTLINED_FUNCTION_37_19();

            OUTLINED_FUNCTION_58_11();
            OUTLINED_FUNCTION_26_23();
            sub_1C715930C(v119);
            OUTLINED_FUNCTION_34_14();
            OUTLINED_FUNCTION_37_19();

            *(v114 + 14) = v84;
            *(v114 + 22) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
            v120 = OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_4_43(v120);
            *(v121 + 7) = MEMORY[0x1E69E63B0];
            *(v121 + 8) = MEMORY[0x1E69E6438];
            v121[4] = v111;
            v122 = OUTLINED_FUNCTION_8_19();
            v29 = OUTLINED_FUNCTION_69_12(v122, v123);

            *(v114 + 24) = v29;
            OUTLINED_FUNCTION_19_25();
            _os_log_impl(&dword_1C6F5C000, v39, v115, "Dropping candidate prompt (%{private}s). Too close to already used prompt %{private}s (embedding distance=%s)", v114, 0x20u);
            OUTLINED_FUNCTION_27_24();
            OUTLINED_FUNCTION_37();
            OUTLINED_FUNCTION_23_3();
          }

          else
          {

            sub_1C715930C(v114);
            sub_1C715930C(v84);
          }

          v140 = v16;
LABEL_88:
          sub_1C715930C(v140);
          OUTLINED_FUNCTION_22_28();
          goto LABEL_106;
        }

LABEL_53:
        if (v240)
        {
          v97 = v20[30];
          if (v97)
          {
            v98 = v20[29];
            v99 = v252;
            sub_1C75504FC();
            v100 = sub_1C7009C30(v98, v97, v99);

            if (v100)
            {
              OUTLINED_FUNCTION_83_3(v20, &v242);
              v39 = OUTLINED_FUNCTION_14_31();
              v53 = sub_1C75511BC();
              if (OUTLINED_FUNCTION_128(v53))
              {
                OUTLINED_FUNCTION_23_1();
                v101 = OUTLINED_FUNCTION_40_16();
                LODWORD(v102) = OUTLINED_FUNCTION_1_57(v101, &v258).n128_u32[0];
                OUTLINED_FUNCTION_65_11(v102);
                OUTLINED_FUNCTION_26_23();
                sub_1C715930C(v103);
                OUTLINED_FUNCTION_34_14();
                OUTLINED_FUNCTION_37_19();

                OUTLINED_FUNCTION_47_13();
                sub_1C75504FC();
                v84 = sub_1C7550F9C();
                v29 = v104;

                v105 = OUTLINED_FUNCTION_18_22();
                v107 = sub_1C6F765A4(v105, v29, v106);
                OUTLINED_FUNCTION_9_37();

                *(v98 + 14) = v107;
                v108 = v53;
                v109 = v39;
                v110 = "Dropping candidate prompt (%{private}s). It shares the same city name with selected prompts (city names from selected prompts=%{private}s)";
                goto LABEL_70;
              }

              goto LABEL_73;
            }
          }
        }

        if (v239)
        {
          v124 = v20[28];
          if (v124)
          {
            v98 = v20[27];
            v125 = v251;
            sub_1C75504FC();
            v126 = sub_1C7009C30(v98, v124, v125);

            if (v126)
            {
              break;
            }
          }
        }

        if (v238)
        {
          v134 = v20[20];
          if (v134 >= 2)
          {
            v135 = v20[19];
            v136 = v250;
            sub_1C75504FC();
            sub_1C75504FC();
            v219 = v135;
            v98 = sub_1C7009C30(v135, v134, v136);

            if (v98)
            {
              OUTLINED_FUNCTION_83_3(v20, &v240);
              sub_1C75504FC();
              v39 = OUTLINED_FUNCTION_14_31();
              v53 = sub_1C75511BC();

              if (os_log_type_enabled(v39, v53))
              {
                OUTLINED_FUNCTION_23_1();
                v137 = OUTLINED_FUNCTION_40_16();
                LODWORD(v138) = OUTLINED_FUNCTION_1_57(v137, &v258).n128_u32[0];
                OUTLINED_FUNCTION_65_11(v138);
                OUTLINED_FUNCTION_26_23();
                sub_1C715930C(v139);
                OUTLINED_FUNCTION_34_14();
                OUTLINED_FUNCTION_9_37();

                OUTLINED_FUNCTION_47_13();
                v84 = sub_1C6F765A4(v219, v134, &v247);

                *(v98 + 14) = v84;
                OUTLINED_FUNCTION_22_28();
                v108 = v53;
                v109 = v39;
                v110 = "Dropping candidate prompt (%{private}s). It shares the same person name with selected prompts (person names from selected prompts=%{private}s)";
LABEL_70:
                _os_log_impl(&dword_1C6F5C000, v109, v108, v110, v98, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_23_3();
                OUTLINED_FUNCTION_37();

LABEL_102:
                OUTLINED_FUNCTION_23_20();
                goto LABEL_106;
              }

LABEL_101:
              sub_1C715930C(v98);
              goto LABEL_102;
            }
          }
        }

        v141 = *(v53 + 16);
        v142 = v53 + v230;
        sub_1C75504FC();
        v84 = 0;
        while (v141 != v84)
        {
          if (v84 >= *(v53 + 16))
          {
            __break(1u);
            goto LABEL_125;
          }

          sub_1C71592A8(v142, v29);
          v143 = sub_1C715215C(v20, v29);
          if (v143 < v51)
          {
            v154 = v143;

            OUTLINED_FUNCTION_74_7();
            sub_1C71592A8(v155, v156);
            v157 = v222;
            sub_1C71592A8(v29, v222);
            v39 = OUTLINED_FUNCTION_14_31();
            v158 = sub_1C75511BC();
            if (OUTLINED_FUNCTION_128(v158))
            {
              OUTLINED_FUNCTION_20_1();
              isa = v157;
              v159 = OUTLINED_FUNCTION_62_10();
              OUTLINED_FUNCTION_3_53(v159, &v258);
              OUTLINED_FUNCTION_57_10();
              sub_1C715930C(v84);
              OUTLINED_FUNCTION_23_20();
              sub_1C6F765A4(v160, v29, v161);
              OUTLINED_FUNCTION_37_19();

              OUTLINED_FUNCTION_58_11();
              OUTLINED_FUNCTION_26_23();
              sub_1C715930C(v162);
              OUTLINED_FUNCTION_34_14();
              OUTLINED_FUNCTION_37_19();

              *(v157 + 14) = v84;
              *(v157 + 22) = 2080;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
              v163 = OUTLINED_FUNCTION_95();
              OUTLINED_FUNCTION_4_43(v163);
              *(v164 + 7) = MEMORY[0x1E69E63B0];
              *(v164 + 8) = MEMORY[0x1E69E6438];
              v164[4] = v154;
              v165 = OUTLINED_FUNCTION_8_19();
              v29 = OUTLINED_FUNCTION_69_12(v165, v166);

              *(v157 + 24) = v29;
              OUTLINED_FUNCTION_19_25();
              _os_log_impl(&dword_1C6F5C000, v39, v158, "Dropping candidate prompt (%{private}s). Too close to selected prompt %{private}s (embedding distance=%s)", v157, 0x20u);
              OUTLINED_FUNCTION_27_24();
              OUTLINED_FUNCTION_37();
              OUTLINED_FUNCTION_23_3();
            }

            else
            {

              sub_1C715930C(v157);
              sub_1C715930C(v84);
            }

            v140 = v29;
            goto LABEL_88;
          }

          ++v84;
          sub_1C715930C(v29);
          OUTLINED_FUNCTION_333();
          v142 += v144;
        }

        OUTLINED_FUNCTION_35_11();
        v39 = &v255;
        sub_1C6FB0C9C();
        v145 = *(v255 + 16);
        sub_1C6FB14D8();
        v53 = v255;
        *(v255 + 16) = v145 + 1;
        sub_1C71592A8(v20, v53 + v230 + v145 * v244);
        v255 = v53;
        swift_endAccess();
        OUTLINED_FUNCTION_22_28();
        if (v240)
        {
          v146 = v20[30];
          if (v146)
          {
            v147 = v20[29];
            OUTLINED_FUNCTION_35_11();
            sub_1C75504FC();
            v39 = &v252;
            v242 = v147;
            sub_1C70F082C(&v245, v147, v146);
            swift_endAccess();

            sub_1C75504FC();
            v141 = OUTLINED_FUNCTION_14_31();
            sub_1C75511BC();
            OUTLINED_FUNCTION_21_4();
            if (os_log_type_enabled(v141, v148))
            {
              v29 = OUTLINED_FUNCTION_23_1();
              v149 = OUTLINED_FUNCTION_49_1();
              *v29 = OUTLINED_FUNCTION_1_57(v149, &v257).n128_u32[0];
              v150 = sub_1C6F765A4(v242, v146, &v247);
              v242 = v141;
              v141 = v150;

              *(v29 + 4) = v141;
              *(v29 + 6) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v151 = OUTLINED_FUNCTION_53_15();
              v153 = sub_1C6F765A4(v151, v84, v152);
              OUTLINED_FUNCTION_18_22();

              *(v29 + 14) = v153;
              v39 = v242;
              _os_log_impl(&dword_1C6F5C000, v242, &v252, "Added the current city name %{private}s to selected city name list: %{private}s", v29, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_9_37();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }
          }
        }

        if (v239)
        {
          v167 = v20[28];
          if (v167)
          {
            v141 = v20[27];
            OUTLINED_FUNCTION_35_11();
            sub_1C75504FC();
            sub_1C70F082C(&v245, v141, v167);
            swift_endAccess();

            sub_1C75504FC();
            v39 = OUTLINED_FUNCTION_14_31();
            v29 = sub_1C75511BC();
            if (OUTLINED_FUNCTION_128(v29))
            {
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_48_12();
              v168 = OUTLINED_FUNCTION_49_1();
              *v53 = OUTLINED_FUNCTION_1_57(v168, &v257).n128_u32[0];
              v169 = OUTLINED_FUNCTION_53_15();
              v141 = sub_1C6F765A4(v169, v167, v170);

              *(v53 + 4) = v141;
              *(v53 + 12) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v171 = OUTLINED_FUNCTION_53_15();
              v173 = sub_1C6F765A4(v171, v84, v172);
              OUTLINED_FUNCTION_18_22();

              *(v53 + 14) = v173;
              _os_log_impl(&dword_1C6F5C000, v39, v29, "Added the current place name %{private}s to selected place name list: %{private}s", v53, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_23_20();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            OUTLINED_FUNCTION_19_25();
          }
        }

        if (v238)
        {
          v174 = v20[20];
          if (v174 >= 2)
          {
            v141 = v20[19];
            OUTLINED_FUNCTION_35_11();
            swift_bridgeObjectRetain_n();
            sub_1C70F082C(&v245, v141, v174);
            swift_endAccess();

            sub_1C75504FC();
            v39 = OUTLINED_FUNCTION_14_31();
            v29 = sub_1C75511BC();

            if (os_log_type_enabled(v39, v29))
            {
              OUTLINED_FUNCTION_23_1();
              OUTLINED_FUNCTION_48_12();
              v175 = OUTLINED_FUNCTION_49_1();
              *v53 = OUTLINED_FUNCTION_1_57(v175, &v257).n128_u32[0];
              v176 = OUTLINED_FUNCTION_53_15();
              v141 = sub_1C6F765A4(v176, v174, v177);

              *(v53 + 4) = v141;
              *(v53 + 12) = 2081;
              sub_1C75504FC();
              sub_1C7550F9C();
              OUTLINED_FUNCTION_66_13();
              v178 = OUTLINED_FUNCTION_53_15();
              v180 = sub_1C6F765A4(v178, v84, v179);
              OUTLINED_FUNCTION_18_22();

              *(v53 + 14) = v180;
              _os_log_impl(&dword_1C6F5C000, v39, v29, "Added the current person name %{private}s to selected people list: %{private}s", v53, 0x16u);
              OUTLINED_FUNCTION_28_14();
              OUTLINED_FUNCTION_23_3();
              OUTLINED_FUNCTION_23_20();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            OUTLINED_FUNCTION_19_25();
          }
        }

        if (*(v53 + 16) >= v224)
        {
          v198 = OUTLINED_FUNCTION_14_31();
          sub_1C75511BC();
          OUTLINED_FUNCTION_21_4();
          if (os_log_type_enabled(v198, v199))
          {
            v240 = v39;
            v200 = OUTLINED_FUNCTION_23_1();
            v201 = OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_3_53(v201, &v256);
            *v200 = v214;
            *(v200 + 4) = v224;
            v243 = v200;
            *(v200 + 12) = 2081;
            v29 = *(v53 + 16);
            if (v29)
            {
              v238 = v198;
              OUTLINED_FUNCTION_52_12(MEMORY[0x1E69E7CC0]);
              sub_1C75504FC();
              v202 = &v245;
              OUTLINED_FUNCTION_24_21();
              OUTLINED_FUNCTION_76_0();
              v242 = v53;
              v53 += v230;
              do
              {
                OUTLINED_FUNCTION_83_3(v53, &v253 + 8);
                isa = v141[13].isa;
                v203 = v141[14].isa;
                sub_1C75504FC();
                sub_1C715930C(v141);
                v245 = &v245;
                v204 = v247;
                v141 = (v247 + 1);
                if (v247 >= v248 >> 1)
                {
                  OUTLINED_FUNCTION_15(v248);
                  v202 = &v245;
                  sub_1C6F7ED9C();
                  OUTLINED_FUNCTION_76_0();
                }

                v247 = v141;
                v205 = &v245 + 2 * v204;
                v205[4] = isa;
                v205[5] = v203;
                OUTLINED_FUNCTION_333();
                v53 += v206;
                --v29;
              }

              while (v29);
              OUTLINED_FUNCTION_23_20();

              v198 = v238;
              OUTLINED_FUNCTION_26_23();
            }

            else
            {
              v202 = MEMORY[0x1E69E7CC0];
            }

            v207 = MEMORY[0x1CCA5D090](v202, MEMORY[0x1E69E6158]);
            v209 = v208;

            v39 = sub_1C6F765A4(v207, v209, &v247);

            v210 = v243;
            *(v243 + 14) = v39;
            OUTLINED_FUNCTION_143();
            _os_log_impl(&dword_1C6F5C000, v198, v211, "Selected top %ld suggestions from smart suggestions:\n%{private}s\n", v210, 0x16u);
            OUTLINED_FUNCTION_5_43(&v256);
            OUTLINED_FUNCTION_23_3();

            OUTLINED_FUNCTION_19_25();
          }

          else
          {
          }

          sub_1C715930C(v20);
          goto LABEL_107;
        }

LABEL_106:
        v82 = sub_1C715930C(v20);
        if (v84 == v236)
        {
          goto LABEL_107;
        }
      }

      OUTLINED_FUNCTION_83_3(v20, &v241);
      v39 = OUTLINED_FUNCTION_14_31();
      v53 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v53))
      {
        OUTLINED_FUNCTION_23_1();
        v127 = OUTLINED_FUNCTION_40_16();
        LODWORD(v128) = OUTLINED_FUNCTION_1_57(v127, &v258).n128_u32[0];
        OUTLINED_FUNCTION_65_11(v128);
        OUTLINED_FUNCTION_26_23();
        sub_1C715930C(v129);
        OUTLINED_FUNCTION_34_14();
        OUTLINED_FUNCTION_37_19();

        OUTLINED_FUNCTION_47_13();
        sub_1C75504FC();
        v84 = sub_1C7550F9C();
        v29 = v130;

        v131 = OUTLINED_FUNCTION_18_22();
        v133 = sub_1C6F765A4(v131, v29, v132);
        OUTLINED_FUNCTION_9_37();

        *(v98 + 14) = v133;
        v108 = v53;
        v109 = v39;
        v110 = "Dropping candidate prompt (%{private}s). It shares the same place name with selected prompts (place names from selected prompts=%{private}s)";
        goto LABEL_70;
      }

LABEL_73:

      goto LABEL_101;
    }

LABEL_107:
    OUTLINED_FUNCTION_70_10();
    if (v55 != v54 && v33 < v51)
    {
      v181 = v225;
      sub_1C75504FC();
      v39 = OUTLINED_FUNCTION_14_31();
      v182 = sub_1C75511BC();

      if (os_log_type_enabled(v39, v182))
      {
        OUTLINED_FUNCTION_20_1();
        v183 = OUTLINED_FUNCTION_62_10();
        OUTLINED_FUNCTION_3_53(v183, &v258);
        *v181 = v215;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v184 = OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_4_43(v184);
        v185 = *(v53 + 16);
        *(v186 + 56) = MEMORY[0x1E69E6530];
        *(v186 + 64) = MEMORY[0x1E69E65A8];
        v187 = OUTLINED_FUNCTION_60_9(v186, v185);
        OUTLINED_FUNCTION_69_12(v187, v188);
        OUTLINED_FUNCTION_48_12();

        *(v181 + 4) = v53;
        *(v181 + 6) = 2080;
        v189 = OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_4_43(v189);
        *(v190 + 56) = MEMORY[0x1E69E6530];
        *(v190 + 64) = MEMORY[0x1E69E65A8];
        v191 = OUTLINED_FUNCTION_60_9(v190, v224);
        v193 = OUTLINED_FUNCTION_69_12(v191, v192);

        *(v181 + 14) = v193;
        *(v181 + 11) = 2080;
        OUTLINED_FUNCTION_9_37();
        v194 = OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_4_43(v194);
        *(v195 + 56) = MEMORY[0x1E69E6530];
        *(v195 + 64) = MEMORY[0x1E69E65A8];
        v196 = OUTLINED_FUNCTION_60_9(v195, v216);
        v53 = OUTLINED_FUNCTION_69_12(v196, v197);

        *(v181 + 3) = v53;
        OUTLINED_FUNCTION_23_20();
        _os_log_impl(&dword_1C6F5C000, v39, v182, "Lowering threshold: Selected prompt pool size(N=%s) is less than fetchLimit (%s) or total candidate count (%s", v181, 0x20u);
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_23_3();
      }
    }
  }

LABEL_125:

  sub_1C75504FC();

  sub_1C6F85170();

  v82 = v53;
  v83 = v51;
LABEL_127:
  result.lastEmbeddingDistanceThreshold = v83;
  result.suggestions._rawValue = v82;
  return result;
}

double sub_1C715215C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(a1 + 264);
  if (v10 && (v11 = *(a2 + 264)) != 0)
  {
    static PromptSuggestionRanker.getDistance(_:_:)(v10, v11);
    v13 = v12;
    sub_1C71592A8(a1, v9);
    sub_1C71592A8(a2, v6);
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315907;
      *(v16 + 4) = sub_1C6F765A4(0x75706D6F63657250, 0xEB00000000646574, &v35);
      *(v16 + 12) = 2081;
      v18 = *(v9 + 13);
      v19 = *(v9 + 14);
      sub_1C75504FC();
      sub_1C715930C(v9);
      v20 = sub_1C6F765A4(v18, v19, &v35);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2081;
      v21 = *(v6 + 13);
      v22 = *(v6 + 14);
      sub_1C75504FC();
      sub_1C715930C(v6);
      v23 = sub_1C6F765A4(v21, v22, &v35);

      *(v16 + 24) = v23;
      *(v16 + 32) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v24 = swift_allocObject();
      v25 = MEMORY[0x1E69E63B0];
      *(v24 + 16) = xmmword_1C755BAB0;
      v26 = MEMORY[0x1E69E6438];
      *(v24 + 56) = v25;
      *(v24 + 64) = v26;
      *(v24 + 32) = v13;
      v27 = sub_1C75506BC();
      v29 = sub_1C6F765A4(v27, v28, &v35);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "[Embedding distance] Mode:%s'%{private}s' VS '%{private}s' =%s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    else
    {

      sub_1C715930C(v6);
      sub_1C715930C(v9);
    }
  }

  else
  {
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Embedding distance is not available. Setting it to infinity to not filter by embeddingDistance", v32, 2u);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
    }

    return INFINITY;
  }

  return v13;
}

uint64_t PromptSuggestionRanker.selectWhimsicalPrompt(_:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  sub_1C7152824(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C6FD7FC8(v7, &qword_1EC2155A8);
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v17))
    {
      v18 = OUTLINED_FUNCTION_127();
      *v18 = 0;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "There are no whimsical prompts", v18, 2u);
      OUTLINED_FUNCTION_37();
    }

LABEL_11:
    v33 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v33, 1, v8);
  }

  sub_1C7159368(v7, v15);
  sub_1C714FFE8(0.0, 1.0);
  v20 = v19;
  if (v19 >= 0.1)
  {

    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_23_1();
      *v32 = 134218240;
      *(v32 + 4) = v20;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 0x3FB999999999999ALL;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Selected whimsical prompt will not be included because failed test random number < whimsicalIncludeProbability: %f < %f", v32, 0x16u);
      OUTLINED_FUNCTION_37();
    }

    sub_1C715930C(v15);
    goto LABEL_11;
  }

  sub_1C71592A8(v15, v12);
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_41_0();
    v24 = OUTLINED_FUNCTION_20_1();
    v38 = v24;
    *v23 = 136315138;
    PromptSuggestion.description.getter();
    v26 = v25;
    v28 = v27;
    sub_1C715930C(v12);
    v29 = sub_1C6F765A4(v26, v28, &v38);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Selected whimsical prompt %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C715930C(v12);
  }

  v34 = OUTLINED_FUNCTION_295();
  sub_1C7159368(v34, v35);
  v33 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v33, 1, v8);
}

Swift::UInt64 sub_1C7152824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = sub_1C7159150(*(a1 + 16));
    if (result >= v3)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = type metadata accessor for PromptSuggestion(0);
    sub_1C71592A8(a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, a2);
    v8 = a2;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = type metadata accessor for PromptSuggestion(0);
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t PromptSuggestionRanker.selectContextualPrompt(_:otherPromptSuggestionCandidates:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a2;
  v126 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v119 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v114 - v11;
  v13 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v125 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v118 = (v16 - v17);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v114 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v114 - v26;
  v28 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v117 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_78();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v120 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v123 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v114 - v39;
  v122 = a3;
  sub_1C7152824(a1, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  v127 = v28;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v27, &qword_1EC2155A8);
    v42 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v42, v43))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    sub_1C7159368(v27, v40);
    v49 = *(v28 + 108);
    v124 = v40;
    sub_1C70555F8(&v40[v49], v12, &unk_1EC219230);
    OUTLINED_FUNCTION_112(v12);
    if (v50)
    {
      sub_1C754DF3C();
      OUTLINED_FUNCTION_112(v12);
      v51 = v123;
      if (!v50)
      {
        sub_1C6FD7FC8(v12, &unk_1EC219230);
      }
    }

    else
    {
      (*(v125 + 32))(v23, v12, v13);
      v51 = v123;
    }

    sub_1C754DF3C();
    static PromptSuggestionRanker.calculateDecayProbability(creationDate:currentDate:totalDurationInDays:decayExponent:)(14.0, 3.0);
    v53 = v52;
    v54 = *(v125 + 8);
    v54(v20, v13);
    v54(v23, v13);
    v55 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
    sub_1C71592A8(v124, v51);
    v116 = v55;
    v56 = sub_1C754FEEC();
    v57 = sub_1C75511BC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_23_1();
      v59 = OUTLINED_FUNCTION_20_1();
      v130[0] = v59;
      *v58 = 134218242;
      *(v58 + 4) = v53;
      *(v58 + 12) = 2080;
      v60 = v51 + *(v127 + 108);
      v61 = v119;
      sub_1C70555F8(v60, v119, &unk_1EC219230);
      OUTLINED_FUNCTION_112(v61);
      v115 = v59;
      if (v50)
      {
        v62 = v118;
        sub_1C754DF3C();
        OUTLINED_FUNCTION_112(v61);
        if (!v50)
        {
          sub_1C6FD7FC8(v61, &unk_1EC219230);
        }
      }

      else
      {
        v62 = v118;
        (*(v125 + 32))(v118, v61, v13);
      }

      sub_1C70E8020();
      v63 = sub_1C7551D8C();
      v65 = v64;
      v54(v62, v13);
      sub_1C715930C(v123);
      v66 = sub_1C6F765A4(v63, v65, v130);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1C6F5C000, v56, v57, "Contextual prompt probability to include: %f for prompt that is generated on %s", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v115);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      sub_1C715930C(v51);
    }

    sub_1C714FFE8(0.0, 1.0);
    v67 = v124;
    if (v68 >= v53)
    {
      v78 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_54_14(v80, 3.8521e-34);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
        OUTLINED_FUNCTION_23_3();
      }

      v86 = v67;
    }

    else
    {
      v69 = v120;
      sub_1C71592A8(v124, v120);
      v70 = sub_1C754FEEC();
      v71 = sub_1C75511BC();
      if (os_log_type_enabled(v70, v71))
      {
        v67 = OUTLINED_FUNCTION_41_0();
        v72 = OUTLINED_FUNCTION_20_1();
        v130[0] = v72;
        *v67 = 136315138;
        PromptSuggestion.description.getter();
        v74 = v73;
        v76 = v75;
        sub_1C715930C(v69);
        v77 = sub_1C6F765A4(v74, v76, v130);

        *(v67 + 4) = v77;
        _os_log_impl(&dword_1C6F5C000, v70, v71, "Selected contextual prompt %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C715930C(v69);
      }

      v90 = *(v121 + 16);
      if (v90)
      {
        v91 = v121 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
        v92 = *(v117 + 72);
        v93 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_80_6();
        do
        {
          sub_1C71592A8(v91, v33);
          v94 = v33[16];
          if (v94 && (v130[0] = v33[15], v130[1] = v94, v128 = v67, v129 = v69, sub_1C6FB5E8C(), (sub_1C75515AC() & 1) == 0) || (v95 = v33[20], v95 == 1))
          {
            sub_1C715930C(v33);
          }

          else
          {
            v96 = v33[19];
            sub_1C75504FC();
            sub_1C715930C(v33);
            if (v95)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v93 = v99;
              }

              v69 = *(v93 + 16);
              v97 = *(v93 + 24);
              v67 = v69 + 1;
              if (v69 >= v97 >> 1)
              {
                OUTLINED_FUNCTION_15(v97);
                OUTLINED_FUNCTION_116_0();
                sub_1C6FB1814();
                v93 = v100;
              }

              *(v93 + 16) = v67;
              v98 = v93 + 16 * v69;
              *(v98 + 32) = v96;
              *(v98 + 40) = v95;
              OUTLINED_FUNCTION_80_6();
            }
          }

          v91 += v92;
          --v90;
        }

        while (v90);
      }

      else
      {
        v93 = MEMORY[0x1E69E7CC0];
      }

      v101 = sub_1C706D154(v93);
      v102 = v124;
      v103 = *(v124 + 20);
      if (v103 <= 1 || (v107 = *(v124 + 19), sub_1C75504FC(), v108 = sub_1C7009C30(v107, v103, v101), , (v108 & 1) == 0))
      {

        v104 = v126;
        v105 = v127;
        sub_1C7159368(v102, v126);
        v87 = v104;
        v89 = 0;
        v88 = v105;
        return __swift_storeEnumTagSinglePayload(v87, v89, 1, v88);
      }

      sub_1C75504FC();
      v109 = sub_1C754FEEC();
      v110 = sub_1C75511BC();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = OUTLINED_FUNCTION_41_0();
        v112 = OUTLINED_FUNCTION_20_1();
        v130[0] = v112;
        *v111 = 136315138;
        v113 = sub_1C6F765A4(v107, v103, v130);

        *(v111 + 4) = v113;
        _os_log_impl(&dword_1C6F5C000, v109, v110, "Selected contextual prompt person name already exists in other suggestions %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v86 = v102;
    }

    sub_1C715930C(v86);
  }

  v87 = v126;
  v88 = v127;
  v89 = 1;
  return __swift_storeEnumTagSinglePayload(v87, v89, 1, v88);
}

void static PromptSuggestionRanker.calculateDecayProbability(creationDate:currentDate:totalDurationInDays:decayExponent:)(double a1, long double a2)
{
  if (a1 <= 0.1 || a2 < 0.0)
  {
    if (qword_1EDD0E1F0 != -1)
    {
      OUTLINED_FUNCTION_6_44();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EDD0E1F8);
    v14 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_54_14(v16, 3.8521e-34);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    sub_1C754DEAC();
    if (v4 >= 0.0)
    {
      v22 = a1 * 24.0 * 60.0 * 60.0;
      if (v22 > v4)
      {
        pow(1.0 - v4 / v22, a2);
      }
    }

    else
    {
      if (qword_1EDD0E1F0 != -1)
      {
        OUTLINED_FUNCTION_6_44();
      }

      v5 = sub_1C754FF1C();
      __swift_project_value_buffer(v5, qword_1EDD0E1F8);
      v6 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v6, v7))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        OUTLINED_FUNCTION_23_3();
      }
    }
  }
}

uint64_t PromptSuggestionRanker.dedupe(suggestions:)(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v8 = v7;
  v24[1] = PerformanceMeasure.init(name:log:)();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C71592A8(v10, v6);
      v14 = *(v6 + 13);
      v13 = *(v6 + 14);
      sub_1C75504FC();
      sub_1C715930C(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v12 = v18;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        sub_1C6FB1814();
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      v17 = v12 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v24[3] = sub_1C706D154(v12);
  v20 = sub_1C75504FC();
  sub_1C714F888(v20);
  v22 = v21;

  sub_1C6F85170();

  return v22;
}

uint64_t PromptSuggestionRanker.rankPromptInSuggestionContexts(suggestionContexts:optOutSuggestions:)(uint64_t a1, uint64_t a2)
{
  v352 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v331 - v10;
  v349 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v360 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](&v331 - v17);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v331 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v331 - v27;
  v29 = *(a1 + 16);
  if (!v29)
  {
    v49 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_21_4();
    if (os_log_type_enabled(v49, v50))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v346 = v23;
  v361 = v29;
  v336 = v26;
  v333 = v25;
  v332 = v24;
  v30 = a1;
  v372 = MEMORY[0x1E69E7CC0];
  v373 = MEMORY[0x1E69E7CC0];
  v370 = MEMORY[0x1E69E7CC0];
  v371 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v32 = 0;
  sub_1C7150060(v31, &v370);
  v33 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  sub_1C75504FC();
  v353 = v2;
  v348 = v33;
  v34 = sub_1C754FEEC();
  isa = sub_1C75511BC();
  v36 = os_log_type_enabled(v34, isa);
  v37 = &unk_1C756A000;
  v343 = v30;
  v355 = v11;
  if (v36)
  {
    LODWORD(v362) = isa;
    v3 = OUTLINED_FUNCTION_20_1();
    v359 = OUTLINED_FUNCTION_20_1();
    *&v367 = v359;
    *v3 = 134218499;
    OUTLINED_FUNCTION_5();
    isa = v370;
    *(v3 + 4) = *(v370 + 16);
    *(v3 + 12) = 2048;
    *(v3 + 14) = v361;

    *(v3 + 22) = 2081;
    v38 = *(isa + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v357 = v3;
      v358 = v34;
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_24_21();
      v39 = v369;
      OUTLINED_FUNCTION_0_75();
      v354 = isa;
      isa += v40;
      v42 = *(v41 + 72);
      do
      {
        v43 = OUTLINED_FUNCTION_295();
        sub_1C71592A8(v43, v44);
        v45 = *(v28 + 13);
        v11 = *(v28 + 14);
        sub_1C75504FC();
        sub_1C715930C(v28);
        v369 = v39;
        v47 = *(v39 + 16);
        v46 = *(v39 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_15(v46);
          sub_1C6F7ED9C();
          v39 = v369;
        }

        *(v39 + 16) = v47 + 1;
        v48 = v39 + 16 * v47;
        *(v48 + 32) = v45;
        *(v48 + 40) = v11;
        isa += v42;
        --v38;
      }

      while (v38);

      OUTLINED_FUNCTION_51_11();
      v32 = v363;
      v34 = v358;
      v3 = v357;
    }

    v57 = MEMORY[0x1CCA5D090](v39, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_67_9();
    v37 = sub_1C6F765A4(v57, isa, &v367);

    *(v3 + 24) = v37;
    OUTLINED_FUNCTION_143();
    _os_log_impl(v58, v34, v59, v60, v3, 0x20u);
    OUTLINED_FUNCTION_5_43(&v375);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v61 = OUTLINED_FUNCTION_7_36();
  sub_1C75511BC();
  OUTLINED_FUNCTION_21_4();
  v63 = &unk_1C756D000;
  if (os_log_type_enabled(v61, v62))
  {
    LODWORD(v359) = v37;
    v64 = OUTLINED_FUNCTION_23_1();
    v358 = OUTLINED_FUNCTION_20_1();
    *&v367 = v358;
    *v64 = 134218243;
    OUTLINED_FUNCTION_5();
    v65 = v370;
    *(v64 + 4) = *(v370 + 16);
    v362 = v64;
    *(v64 + 12) = 2081;
    v3 = *(v65 + 16);
    v66 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v357 = v61;
      OUTLINED_FUNCTION_82_7();
      OUTLINED_FUNCTION_59_10();
      v66 = v369;
      OUTLINED_FUNCTION_0_75();
      v354 = v65;
      v65 += v67;
      v69 = *(v68 + 72);
      do
      {
        v70 = OUTLINED_FUNCTION_295();
        sub_1C71592A8(v70, v71);
        v72 = *(v28 + 13);
        v11 = *(v28 + 14);
        sub_1C75504FC();
        sub_1C715930C(v28);
        v369 = v66;
        v74 = *(v66 + 16);
        v73 = *(v66 + 24);
        if (v74 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_15(v73);
          sub_1C6F7ED9C();
          v66 = v369;
        }

        *(v66 + 16) = v74 + 1;
        v75 = v66 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v11;
        v65 += v69;
        --v3;
      }

      while (v3);

      OUTLINED_FUNCTION_51_11();
      v63 = &unk_1C756D000;
      v32 = v363;
      v61 = v357;
    }

    v76 = MEMORY[0x1CCA5D090](v66, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_67_9();
    v77 = sub_1C6F765A4(v76, v65, &v367);

    isa = v362;
    *(v362 + 14) = v77;
    OUTLINED_FUNCTION_143();
    _os_log_impl(v78, v61, v79, v80, isa, 0x16u);
    OUTLINED_FUNCTION_5_43(v374);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_20_28();
  v81 = v352;
  sub_1C75504FC();
  v82 = sub_1C7158B74(&v370, v81);
  if (v32)
  {
    goto LABEL_202;
  }

  v83 = v370;
  v84 = *(v370 + 16);
  if (v84 < v82)
  {
LABEL_198:
    __break(1u);
LABEL_199:
    OUTLINED_FUNCTION_15(v83);
    OUTLINED_FUNCTION_116_0();
    sub_1C6FB389C();
    v356 = v327;
  }

  else
  {
    v81 = &v370;
    sub_1C7159584(v82, v84);
    swift_endAccess();
    v85 = OUTLINED_FUNCTION_7_36();
    v3 = sub_1C75511BC();
    os_log_type_enabled(v85, v3);
    OUTLINED_FUNCTION_72_8();
    if (v86)
    {
      v87 = OUTLINED_FUNCTION_23_1();
      v88 = OUTLINED_FUNCTION_20_1();
      *&v367 = OUTLINED_FUNCTION_33_16(v88);
      *v87 = 134218243;
      v89 = v370;
      *(v87 + 4) = *(v370 + 16);
      *(v87 + 12) = 2081;
      v11 = *(v89 + 16);
      v90 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        LODWORD(v358) = v3;
        v359 = v87;
        v362 = v85;
        v369 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C();
        v90 = v369;
        OUTLINED_FUNCTION_0_75();
        v357 = v89;
        isa = v89 + v91;
        v93 = *(v92 + 72);
        do
        {
          v94 = OUTLINED_FUNCTION_295();
          sub_1C71592A8(v94, v95);
          v63 = *(v28 + 13);
          v96 = *(v28 + 14);
          sub_1C75504FC();
          sub_1C715930C(v28);
          v369 = v90;
          v98 = *(v90 + 16);
          v97 = *(v90 + 24);
          if (v98 >= v97 >> 1)
          {
            OUTLINED_FUNCTION_15(v97);
            sub_1C6F7ED9C();
            v90 = v369;
          }

          *(v90 + 16) = v98 + 1;
          v99 = v90 + 16 * v98;
          *(v99 + 32) = v63;
          *(v99 + 40) = v96;
          isa += v93;
          --v11;
        }

        while (v11);

        v85 = v362;
        v87 = v359;
        v3 = v358;
      }

      v32 = MEMORY[0x1CCA5D090](v90, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_67_9();
      v100 = OUTLINED_FUNCTION_64();
      v81 = sub_1C6F765A4(v100, v101, v102);

      *(v87 + 14) = v81;
      _os_log_impl(&dword_1C6F5C000, v85, v3, "Prompt pool after dropping opt-out prompts (N=%ld): %{private}s", v87, 0x16u);
      OUTLINED_FUNCTION_5_43(&v376);
      OUTLINED_FUNCTION_109();

      OUTLINED_FUNCTION_51_11();
    }

    else
    {
    }

    v103 = 0;
    v350 = v343 + 32;
    v354 = &v352[1];
    v104 = &unk_1C7570210;
    v363 = MEMORY[0x1E69E7CC0];
    v83 = v361;
    while (1)
    {
      if (v103 == v83)
      {
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v362 = v103;
      v105 = (v350 + 24 * v103);
      v106 = v105[1];
      v358 = *v105;
      v81 = v105[2];
      isa = v81[2].isa;
      v357 = v106;
      if (isa)
      {
        OUTLINED_FUNCTION_79_8();
        v11 = v81 + v32;
        sub_1C75504FC();
        sub_1C75504FC();
        v63 = 0;
        v359 = v354 + v32;
        while (1)
        {
          v83 = v81[2].isa;
          if (v63 >= v83)
          {
            __break(1u);
            goto LABEL_195;
          }

          v107 = v104;
          v108 = *(v360 + 72);
          sub_1C71592A8(v11 + v108 * v63, v21);
          if (*(v21 + 80))
          {
            break;
          }

LABEL_46:
          ++v63;
          sub_1C715930C(v21);
          v104 = v107;
          if (v63 == isa)
          {
            OUTLINED_FUNCTION_51_11();
            goto LABEL_50;
          }
        }

        v32 = v352[2].isa + 1;
        v3 = v359;
        while (--v32)
        {
          if (*(v3 - 8) != *v21 || *v3 != *(v21 + 8))
          {
            v3 += v108;
            if ((sub_1C7551DBC() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        OUTLINED_FUNCTION_51_11();
        sub_1C7159368(v111, v11);
        v110 = 0;
        v104 = v107;
      }

      else
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v110 = 1;
      }

LABEL_50:
      v112 = v349;
      __swift_storeEnumTagSinglePayload(v11, v110, 1, v349);
      v113 = v356;
      v63 = &qword_1EC2155A8;
      sub_1C70555F8(v11, v356, &qword_1EC2155A8);
      v3 = &unk_1C756C000;
      if (__swift_getEnumTagSinglePayload(v113, 1, v112) != 1)
      {
        break;
      }

      sub_1C6FD7FC8(v113, &qword_1EC2155A8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB389C();
        OUTLINED_FUNCTION_33_16(v118);
      }

      v32 = *(v363 + 16);
      v114 = *(v363 + 24);
      isa = v32 + 1;
      v115 = v362;
      if (v32 >= v114 >> 1)
      {
        OUTLINED_FUNCTION_15(v114);
        OUTLINED_FUNCTION_116_0();
        sub_1C6FB389C();
        OUTLINED_FUNCTION_33_16(v119);
      }

      v63 = v115 + 1;
      sub_1C6FD7FC8(v11, &qword_1EC2155A8);
      v103 = v63;
      v116 = v363;
      *(v363 + 16) = isa;
      v117 = &v116[3 * v32];
      v117[4] = v358;
      v117[5] = v357;
      v117[6] = v81;
      v372 = v116;
      v83 = v361;
      if (v63 == v361)
      {
        v362 = v361;
        v32 = MEMORY[0x1E69E7CC0];
        v334 = MEMORY[0x1E69E7CC0];
        goto LABEL_64;
      }
    }

    v21 = v351;
    sub_1C7159368(v113, v351);
    sub_1C6FB389C();
    v356 = v120;
    v32 = *(v120 + 16);
    v83 = *(v120 + 24);
    isa = v32 + 1;
    if (v32 >= v83 >> 1)
    {
      goto LABEL_199;
    }
  }

  v121 = v358;
  v122 = v356;
  *(v356 + 16) = isa;
  v123 = (v122 + 24 * v32);
  v124 = v357;
  v123[4] = v121;
  v123[5] = v124;
  v123[6] = v81;
  v373 = v122;
  v125 = v347;
  sub_1C71592A8(v21, v347);
  sub_1C6FB3648(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v127 = v126;
  v32 = *(v126 + 16);
  v128 = *(v126 + 24);
  if (v32 >= v128 >> 1)
  {
    v328 = OUTLINED_FUNCTION_15(v128);
    sub_1C6FB3648(v328, v32 + 1, 1, v329);
    v127 = v330;
  }

  *(v127 + 16) = v32 + 1;
  OUTLINED_FUNCTION_0_75();
  v132 = v131;
  sub_1C7159368(v125, v131 + v129 + *(v130 + 72) * v32);
  v334 = v132;
  v371 = v132;
  v133 = v346;
  sub_1C71592A8(v21, v346);
  v134 = OUTLINED_FUNCTION_7_36();
  v135 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v135))
  {
    v32 = OUTLINED_FUNCTION_41_0();
    v63 = OUTLINED_FUNCTION_20_1();
    *&v367 = v63;
    *v32 = *(v3 + 1520);
    v136 = v21;
    v137 = *(v133 + 104);
    v21 = *(v133 + 112);
    sub_1C75504FC();
    sub_1C715930C(v133);
    v138 = sub_1C6F765A4(v137, v21, &v367);

    *(v32 + 4) = v138;
    _os_log_impl(&dword_1C6F5C000, v134, v135, "Selected prompt from first suggestion: %{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_23_3();

    v139 = v136;
    v3 = 0x1C756C000;
  }

  else
  {

    sub_1C715930C(v133);
    v139 = v21;
  }

  sub_1C715930C(v139);
  sub_1C6FD7FC8(v11, &qword_1EC2155A8);
  OUTLINED_FUNCTION_55_11();
LABEL_64:
  v81 = &unk_1C756D000;
  v342 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters;
  OUTLINED_FUNCTION_5();
  LODWORD(v351) = 0;
  v347 = v343 + 48;
  v11 = 24;
  *&v140 = 67109634;
  v338 = v140;
  *&v140 = 134218243;
  v337 = v140;
  *&v140 = *(v3 + 1520);
  v331 = v140;
  while (1)
  {
    isa = *(v32 + 16);
    v346 = v372[2];
    v83 = isa + v346;
    if (__OFADD__(isa, v346))
    {
      goto LABEL_196;
    }

    v356 = v32;
    v355 = v372;
    if ((v83 >= v361) | v351 & 1)
    {
      if (*(v370 + 16))
      {
        OUTLINED_FUNCTION_20_28();
        sub_1C71568A4(&v371, &v370);
        isa = v289;
        swift_endAccess();
        v11 = sub_1C754FEEC();
        LODWORD(v3) = sub_1C75511BC();
        if (os_log_type_enabled(v11, v3))
        {
          v63 = OUTLINED_FUNCTION_23_1();
          v290 = OUTLINED_FUNCTION_20_1();
          *&v367 = OUTLINED_FUNCTION_33_16(v290);
          *v63 = v337;
          v291 = *(isa + 16);
          *(v63 + 4) = v291;
          *(v63 + 12) = 2081;
          if (v291)
          {
            LODWORD(v361) = v3;
            v362 = v11;
            v365 = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_24_21();
            v292 = *&v365;
            OUTLINED_FUNCTION_0_75();
            v359 = isa;
            v294 = isa + v293;
            v296 = *(v295 + 72);
            do
            {
              v297 = OUTLINED_FUNCTION_295();
              sub_1C71592A8(v297, v298);
              v299 = *(v28 + 13);
              v300 = *(v28 + 14);
              sub_1C75504FC();
              sub_1C715930C(v28);
              v365 = *&v292;
              v302 = *(v292 + 16);
              v301 = *(v292 + 24);
              if (v302 >= v301 >> 1)
              {
                OUTLINED_FUNCTION_15(v301);
                sub_1C6F7ED9C();
                v292 = *&v365;
              }

              *(v292 + 16) = v302 + 1;
              v303 = v292 + 16 * v302;
              *(v303 + 32) = v299;
              *(v303 + 40) = v300;
              v294 += v296;
              --v291;
            }

            while (v291);

            v11 = v362;
            LOBYTE(v3) = v361;
          }

          else
          {
LABEL_181:

            v292 = MEMORY[0x1E69E7CC0];
          }

          isa = MEMORY[0x1CCA5D090](v292, MEMORY[0x1E69E6158]);
          v305 = v304;

          v306 = sub_1C6F765A4(isa, v305, &v367);

          *(v63 + 14) = v306;
          _os_log_impl(&dword_1C6F5C000, v11, v3, "Ranking remaining prompts, selected %ld prompts:  %{private}s", v63, 0x16u);
          OUTLINED_FUNCTION_5_43(&v376);
          OUTLINED_FUNCTION_37();
        }

        else
        {
LABEL_178:
        }
      }

      v56 = v371;
      sub_1C75504FC();
      v307 = OUTLINED_FUNCTION_7_36();
      v308 = sub_1C75511BC();
      if (os_log_type_enabled(v307, v308))
      {
        v309 = OUTLINED_FUNCTION_20_1();
        v310 = OUTLINED_FUNCTION_20_1();
        *&v367 = OUTLINED_FUNCTION_33_16(v310);
        *v309 = 134218499;
        v311 = *(v56 + 16);
        *(v309 + 4) = v311;
        *(v309 + 12) = 2048;
        v312 = v370;
        *(v309 + 14) = *(v370 + 16);
        *(v309 + 22) = 2081;
        v313 = MEMORY[0x1E69E7CC0];
        if (v311)
        {
          v358 = v312;
          LODWORD(v359) = v308;
          v361 = v309;
          v362 = v307;
          v365 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_24_21();
          v313 = *&v365;
          OUTLINED_FUNCTION_0_75();
          isa = v56 + v314;
          v316 = *(v315 + 72);
          do
          {
            v317 = OUTLINED_FUNCTION_295();
            sub_1C71592A8(v317, v318);
            v319 = *(v28 + 13);
            v320 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v365 = *&v313;
            v322 = *(v313 + 16);
            v321 = *(v313 + 24);
            if (v322 >= v321 >> 1)
            {
              OUTLINED_FUNCTION_15(v321);
              sub_1C6F7ED9C();
              v313 = *&v365;
            }

            *(v313 + 16) = v322 + 1;
            v323 = v313 + 16 * v322;
            *(v323 + 32) = v319;
            *(v323 + 40) = v320;
            isa += v316;
            --v311;
          }

          while (v311);
          v307 = v362;
          v309 = v361;
          LOBYTE(v308) = v359;
        }

        v324 = MEMORY[0x1CCA5D090](v313, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_67_9();
        v325 = sub_1C6F765A4(v324, isa, &v367);

        *(v309 + 24) = v325;

        _os_log_impl(&dword_1C6F5C000, v307, v308, "Finished ranking, got %ld ranked prompts, remainder %ld. Ranked prompts in order: %{private}s", v309, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v363);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      return v56;
    }

    v141 = *(v353 + v342);
    v354 = isa;
    if (!v141)
    {
      v367 = 0u;
      v368 = 0u;
LABEL_72:
      sub_1C6FD7FC8(&v367, &qword_1EC219770);
      if (!v141)
      {
        v367 = 0u;
        v368 = 0u;
        v144 = 1.0;
LABEL_78:
        sub_1C6FD7FC8(&v367, &qword_1EC219770);
LABEL_79:
        v147 = 0.35;
        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v142 = sub_1C755068C();
    sub_1C6FE3750(v142, v143);

    if (!*(&v368 + 1))
    {
      goto LABEL_72;
    }

    if (swift_dynamicCast())
    {
      v144 = v365;
      goto LABEL_74;
    }

LABEL_73:
    v144 = 1.0;
LABEL_74:
    v145 = sub_1C755068C();
    sub_1C6FE3750(v145, v146);

    if (!*(&v368 + 1))
    {
      goto LABEL_78;
    }

    if (!swift_dynamicCast())
    {
      goto LABEL_79;
    }

    v147 = v365;
LABEL_80:
    v148 = v343;
    sub_1C75504FC();
    v32 = v362;
    v149 = sub_1C70CE540(v362, v148);
    v151 = v32;
    v351 = v149;
    v152 = 0;
    v154 = v153 >> 1;
    v155 = (v350 + 24 * v32);
    v157 = v156 + 8;
    v158 = v150;
    v345 = v156 + 8;
    v358 = v150;
    while (1)
    {
      v159 = 0;
      v81 = (v347 + 24 * v152);
      v160 = v154 - v158;
      v3 = v157 + 24 * v158;
      v161 = v361;
      v359 = v152;
      while (1)
      {
        if (v160 == v159)
        {
          OUTLINED_FUNCTION_68_12();
          OUTLINED_FUNCTION_55_11();
          OUTLINED_FUNCTION_44_13();
          goto LABEL_105;
        }

        if (v158 < v150 || v158 + v159 >= v154)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v163 = v152 + v159 + 1;
        if (__OFADD__(v152 + v159, 1))
        {
          goto LABEL_176;
        }

        if (v151 >= v161)
        {
          goto LABEL_177;
        }

        v164 = *(v3 - 8);
        v21 = *v3;
        if (*v155 != v164 || v155[1] != v21)
        {
          v63 = *(v3 + 8);
          v11 = v154;
          v363 = v159;
          v32 = v155;
          isa = v158;
          v357 = v164;
          v166 = sub_1C7551DBC();
          v158 = isa;
          v155 = v32;
          v159 = v363;
          v154 = v11;
          v150 = v358;
          v152 = v359;
          v151 = v362;
          v161 = v361;
          if ((v166 & 1) == 0)
          {
            break;
          }
        }

        ++v159;
        v81 += 3;
        v3 += 24;
      }

      v344 = v63;
      v83 = v359 + v363;
      if (v359 + v363 >= v361)
      {
        goto LABEL_197;
      }

      v167 = v81[-2].isa;
      v63 = v81[-1].isa;
      v168 = v81->isa;
      *&v367 = v167;
      *(&v367 + 1) = v63;
      *&v368 = v168;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v169 = v356;
      sub_1C75504FC();
      v170 = v341;
      sub_1C7155978(&v367, v169, 1, v352, v341, v147, v144);

      v171 = v339;
      v3 = &unk_1C7570210;
      sub_1C70555F8(v170, v339, &qword_1EC2155A8);
      if (__swift_getEnumTagSinglePayload(v171, 1, v349) != 1)
      {
        break;
      }

      sub_1C6FD7FC8(v171, &qword_1EC2155A8);
      swift_beginAccess();
      OUTLINED_FUNCTION_44_13();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB389C();
        v3 = v179;
      }

      v173 = *(v3 + 16);
      v172 = *(v3 + 24);
      v174 = v363;
      if (v173 >= v172 >> 1)
      {
        OUTLINED_FUNCTION_15(v172);
        sub_1C6FB389C();
        v176 = isa;
        v175 = v21;
        v174 = v363;
        v3 = v180;
      }

      else
      {
        v175 = v21;
        v176 = isa;
      }

      isa = v176 + v174 + 1;
      *(v3 + 16) = v173 + 1;
      v177 = (v3 + 24 * v173);
      v177[4] = v357;
      v177[5] = v175;
      v177[6] = v344;
      v355 = v3;
      v372 = v3;
      swift_endAccess();
      v178 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v178, &qword_1EC2155A8);
      v158 = isa;
      v152 = v163;
      v151 = v362;
      v150 = v358;
      v154 = v11;
      v155 = v32;
      v157 = v345;
    }

    OUTLINED_FUNCTION_74_7();
    v253 = sub_1C7159368(v251, v252);
    v63 = v357;
    *&v367 = v357;
    *(&v367 + 1) = v21;
    v254 = v344;
    *&v368 = v344;
    MEMORY[0x1EEE9AC00](v253);
    *(&v331 - 2) = &v367;
    sub_1C75504FC();
    v32 = v335;
    v255 = sub_1C70736C8();

    if (v255)
    {
      OUTLINED_FUNCTION_72_8();
      v256 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v256, &qword_1EC2155A8);
      OUTLINED_FUNCTION_68_12();

      OUTLINED_FUNCTION_44_13();
      goto LABEL_167;
    }

    swift_beginAccess();
    sub_1C6FB0CF0();
    v257 = *(v373 + 16);
    sub_1C6FB152C();
    v258 = v373;
    *(v373 + 16) = v257 + 1;
    v259 = (v258 + 24 * v257);
    v259[4] = v63;
    v259[5] = v21;
    v259[6] = v254;
    v356 = v258;
    v373 = v258;
    v260 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v260);
    *(&v331 - 2) = &qword_1EC2155A8;
    sub_1C7073698(sub_1C71598A8, (&v331 - 2), v334);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_44_13();
    if (v261)
    {
      v262 = OUTLINED_FUNCTION_73_8();
      sub_1C6FD7FC8(v262, &qword_1EC2155A8);
      OUTLINED_FUNCTION_68_12();
      goto LABEL_167;
    }

    sub_1C71592A8(&qword_1EC2155A8, v333);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v332;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v281 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB3648(v281, v282, v283, v284);
      v334 = v285;
    }

    v32 = v335;
    v264 = v334;
    v266 = *(v334 + 16);
    v265 = *(v334 + 24);
    if (v266 >= v265 >> 1)
    {
      v286 = OUTLINED_FUNCTION_15(v265);
      sub_1C6FB3648(v286, v266 + 1, 1, v287);
      v264 = v288;
    }

    *(v264 + 16) = v266 + 1;
    OUTLINED_FUNCTION_0_75();
    v270 = v269;
    v271 = sub_1C7159368(v333, v269 + v267 + *(v268 + 72) * v266);
    v334 = v270;
    v371 = v270;
    MEMORY[0x1EEE9AC00](v271);
    *(&v331 - 2) = v336;
    OUTLINED_FUNCTION_20_28();
    v272 = sub_1C7158E6C(sub_1C71598C8, (&v331 - 2));
    if (v32)
    {
      goto LABEL_201;
    }

    v273 = *(v370 + 16);
    if (v273 < v272)
    {
      break;
    }

    sub_1C7159584(v272, v273);
    swift_endAccess();
    sub_1C71592A8(v336, v63);
    v274 = OUTLINED_FUNCTION_7_36();
    v275 = sub_1C75511BC();
    OUTLINED_FUNCTION_128(v275);
    OUTLINED_FUNCTION_72_8();
    if (v276)
    {
      v277 = OUTLINED_FUNCTION_41_0();
      v278 = v63;
      v63 = OUTLINED_FUNCTION_20_1();
      *&v367 = v63;
      *v277 = v331;
      v279 = *(v278 + 104);
      v3 = *(v278 + 112);
      sub_1C75504FC();
      sub_1C715930C(v278);
      v21 = sub_1C6F765A4(v279, v3, &v367);
      OUTLINED_FUNCTION_44_13();

      *(v277 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v274, v275, "Selected prompt: %{private}s", v277, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_68_12();
    }

    else
    {
      OUTLINED_FUNCTION_68_12();

      sub_1C715930C(v63);
    }

    v280 = OUTLINED_FUNCTION_73_8();
    sub_1C6FD7FC8(v280, &qword_1EC2155A8);
LABEL_167:
    v362 = v359 + v363;
    sub_1C715930C(v336);
    OUTLINED_FUNCTION_55_11();
LABEL_105:
    v11 = 24;
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_20_28();
      swift_beginAccess();
      OUTLINED_FUNCTION_35_11();
      v181 = v353;
      v3 = sub_1C7155EDC(&v371, &v370, &v373, &v372);
      swift_endAccess();
      swift_endAccess();
      swift_endAccess();
      v182 = v181 + v348;
      v63 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v63, v183))
      {
        LODWORD(v363) = v182;
        v184 = OUTLINED_FUNCTION_23_1();
        v359 = OUTLINED_FUNCTION_20_1();
        *&v367 = v359;
        *v184 = v337;
        *(v184 + 4) = *(v3 + 16);
        *(v184 + 12) = 2081;
        v185 = *(v3 + 16);
        if (v185)
        {
          v357 = v184;
          v358 = v63;
          v356 = v32;
          v365 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_24_21();
          v186 = *&v365;
          OUTLINED_FUNCTION_0_75();
          v188 = v3 + v187;
          v190 = *(v189 + 72);
          do
          {
            sub_1C71592A8(v188, v28);
            v32 = *(v28 + 13);
            v191 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v365 = *&v186;
            v193 = *(v186 + 16);
            v192 = *(v186 + 24);
            if (v193 >= v192 >> 1)
            {
              OUTLINED_FUNCTION_15(v192);
              sub_1C6F7ED9C();
              v186 = *&v365;
            }

            *(v186 + 16) = v193 + 1;
            v194 = v186 + 16 * v193;
            *(v194 + 32) = v32;
            *(v194 + 40) = v191;
            v188 += v190;
            --v185;
          }

          while (v185);

          OUTLINED_FUNCTION_55_11();
          v11 = 24;
          v63 = v358;
          v184 = v357;
        }

        else
        {

          v186 = MEMORY[0x1E69E7CC0];
        }

        v195 = MEMORY[0x1CCA5D090](v186, MEMORY[0x1E69E6158]);
        v21 = v196;

        v197 = sub_1C6F765A4(v195, v21, &v367);

        *(v184 + 14) = v197;
        OUTLINED_FUNCTION_143();
        _os_log_impl(&dword_1C6F5C000, v63, v198, "Ranking selected prompts from skipped suggestions, selected %ld prompts:  %{private}s", v184, 0x16u);
        OUTLINED_FUNCTION_5_43(&v375);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }

    LODWORD(v351) = v354 == *(v32 + 16) && v346 == v372[2];
    v81 = OUTLINED_FUNCTION_7_36();
    LODWORD(v346) = sub_1C75511BC();
    if (!OUTLINED_FUNCTION_128(v346))
    {

      continue;
    }

    v344 = v81;
    v199 = swift_slowAlloc();
    v340 = OUTLINED_FUNCTION_49_1();
    v365 = *&v340;
    *v199 = v338;
    *(v199 + 4) = v351;
    v345 = v199;
    *(v199 + 8) = 2080;
    v3 = *(v32 + 16);
    v356 = v32;
    if (v3)
    {
      v364 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      OUTLINED_FUNCTION_59_10();
      v200 = v32;
      v201 = 0;
      v202 = v364;
      v357 = (v200 + 32);
      v355 = v3;
      while (v201 < *(v356 + 16))
      {
        v363 = v202;
        v203 = v357[3 * v201 + 2].isa;
        *&v367 = 0;
        *(&v367 + 1) = 0xE000000000000000;
        v204 = *(v203 + 16);
        if (v204)
        {
          OUTLINED_FUNCTION_81_8(MEMORY[0x1E69E7CC0]);
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_21();
          v205 = v366;
          OUTLINED_FUNCTION_0_75();
          v358 = v203;
          v3 = v203 + v206;
          v208 = *(v207 + 72);
          do
          {
            sub_1C71592A8(v3, v28);
            v210 = *(v28 + 13);
            v209 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v366 = v205;
            v212 = *(v205 + 16);
            v211 = *(v205 + 24);
            if (v212 >= v211 >> 1)
            {
              OUTLINED_FUNCTION_15(v211);
              sub_1C6F7ED9C();
              v205 = v366;
            }

            *(v205 + 16) = v212 + 1;
            v213 = v205 + 16 * v212;
            *(v213 + 32) = v210;
            *(v213 + 40) = v209;
            v3 += v208;
            --v204;
          }

          while (v204);
          v11 = 24;
          OUTLINED_FUNCTION_44_13();
          OUTLINED_FUNCTION_77_7();
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v205 = MEMORY[0x1E69E7CC0];
        }

        v214 = MEMORY[0x1CCA5D090](v205, MEMORY[0x1E69E6158]);
        v216 = v215;

        MEMORY[0x1CCA5CD70](v214, v216);

        v217 = *(&v367 + 1);
        v63 = v367;
        v202 = v363;
        v364 = v363;
        v21 = *(v363 + 16);
        v218 = *(v363 + 24);
        if (v21 >= v218 >> 1)
        {
          OUTLINED_FUNCTION_15(v218);
          OUTLINED_FUNCTION_116_0();
          sub_1C6F7ED9C();
          v202 = v364;
        }

        ++v201;
        *(v202 + 16) = v21 + 1;
        v219 = v202 + 16 * v21;
        *(v219 + 32) = v63;
        *(v219 + 40) = v217;
        if (v201 == v3)
        {

          goto LABEL_137;
        }
      }

      __break(1u);
      goto LABEL_180;
    }

    v202 = MEMORY[0x1E69E7CC0];
LABEL_137:
    v220 = MEMORY[0x1CCA5D090](v202, MEMORY[0x1E69E6158]);
    v222 = v221;

    v223 = sub_1C6F765A4(v220, v222, &v365);

    v224 = v345;
    *(v345 + 10) = v223;
    *(v224 + 18) = 2080;
    v225 = v372;
    v226 = v372[2];
    if (v226)
    {
      v364 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v21 = 0;
      v3 = v364;
      v355 = v225 + 4;
      v354 = v225;
      v357 = v226;
      while (v21 < v225[2])
      {
        v363 = v3;
        v227 = v355[3 * v21 + 2];
        *&v367 = 0;
        *(&v367 + 1) = 0xE000000000000000;
        v228 = *(v227 + 16);
        if (v228)
        {
          OUTLINED_FUNCTION_81_8(MEMORY[0x1E69E7CC0]);
          sub_1C75504FC();
          OUTLINED_FUNCTION_59_10();
          v229 = v366;
          OUTLINED_FUNCTION_0_75();
          v358 = v227;
          v231 = v227 + v230;
          v233 = *(v232 + 72);
          do
          {
            v234 = OUTLINED_FUNCTION_295();
            sub_1C71592A8(v234, v235);
            v236 = *(v28 + 13);
            v237 = *(v28 + 14);
            sub_1C75504FC();
            sub_1C715930C(v28);
            v366 = v229;
            v239 = *(v229 + 16);
            v238 = *(v229 + 24);
            if (v239 >= v238 >> 1)
            {
              OUTLINED_FUNCTION_15(v238);
              sub_1C6F7ED9C();
              v229 = v366;
            }

            *(v229 + 16) = v239 + 1;
            v240 = v229 + 16 * v239;
            *(v240 + 32) = v236;
            *(v240 + 40) = v237;
            v231 += v233;
            --v228;
          }

          while (v228);
          v11 = 24;
          v225 = v354;
          OUTLINED_FUNCTION_77_7();
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v229 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v229, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_67_9();
        v241 = OUTLINED_FUNCTION_64();
        MEMORY[0x1CCA5CD70](v241);

        v63 = *(&v367 + 1);
        v242 = v367;
        v3 = v363;
        v364 = v363;
        v244 = *(v363 + 16);
        v243 = *(v363 + 24);
        if (v244 >= v243 >> 1)
        {
          OUTLINED_FUNCTION_15(v243);
          OUTLINED_FUNCTION_116_0();
          sub_1C6F7ED9C();
          v3 = v364;
        }

        ++v21;
        *(v3 + 16) = v244 + 1;
        v245 = v3 + 16 * v244;
        *(v245 + 32) = v242;
        *(v245 + 40) = v63;
        if (v21 == v357)
        {

          goto LABEL_152;
        }
      }

LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v246 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
    v248 = v247;

    v249 = sub_1C6F765A4(v246, v248, &v365);

    v32 = v345;
    *(v345 + 20) = v249;
    OUTLINED_FUNCTION_143();
    v81 = v344;
    _os_log_impl(&dword_1C6F5C000, v344, v250, "Ranking pass finish, ranking changed %{BOOL}d.\nRanked suggestions  %s\nSkipped suggestions %s", v32, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_55_11();
  }

  __break(1u);
LABEL_201:
  swift_endAccess();

  __break(1u);
LABEL_202:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C7155978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v69 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v19 = type metadata accessor for PromptSuggestion(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v29 = *(a2 + 16);
  if (v29)
  {
    v68 = v27;
    v66 = a5;
    v30 = *(a1 + 16);
    if (a3)
    {
      v67 = &v65 - v28;
      sub_1C710D924(v30);
      v31 = v68;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v68);
      v33 = v69;
      if (EnumTagSinglePayload == 1)
      {
        sub_1C6FD7FC8(v18, &qword_1EC2155A8);
        return __swift_storeEnumTagSinglePayload(v66, 1, 1, v31);
      }

      else
      {
        v46 = sub_1C7159368(v18, v67);
        v47 = 0;
        v48 = a2 + 48;
        v49 = v29 + 1;
        v50 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v51 = (v48 + 24 * v47);
        while (v49 != ++v47)
        {
          v53 = *v51;
          v51 += 3;
          v52 = v53;
          if (*(v53 + 16))
          {
            v54 = (*(v20 + 80) + 32) & ~*(v20 + 80);
            sub_1C71592A8(v52 + v54, v25);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6FB3648(0, *(v50 + 16) + 1, 1, v50);
              v50 = v58;
            }

            v57 = *(v50 + 16);
            v56 = *(v50 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_1C6FB3648(v56 > 1, v57 + 1, 1, v50);
              v50 = v59;
            }

            *(v50 + 16) = v57 + 1;
            v46 = sub_1C7159368(v25, v50 + v54 + *(v20 + 72) * v57);
            v33 = v69;
            v48 = v65;
            goto LABEL_17;
          }
        }

        MEMORY[0x1EEE9AC00](v46);
        *(&v65 - 4) = v7;
        v60 = v67;
        *(&v65 - 3) = v67;
        *(&v65 - 2) = a6;
        *(&v65 - 1) = a7;
        v61 = sub_1C714FE5C(sub_1C7159AD4, (&v65 - 6), v50);

        if (v61 && (MEMORY[0x1EEE9AC00](v62), *(&v65 - 2) = v60, !sub_1C7073698(sub_1C7159C28, (&v65 - 4), v33)))
        {
          v64 = v66;
          sub_1C71592A8(v60, v66);
          v63 = 0;
        }

        else
        {
          v63 = 1;
          v64 = v66;
        }

        __swift_storeEnumTagSinglePayload(v64, v63, 1, v68);
        return sub_1C715930C(v67);
      }
    }

    else
    {
      sub_1C75504FC();
      result = sub_1C70CE620(1, v30);
      v38 = v69;
      if (v36 == v37 >> 1)
      {
LABEL_14:
        swift_unknownObjectRelease();
        v44 = 1;
        v45 = v67;
LABEL_15:
        __swift_storeEnumTagSinglePayload(v45, v44, 1, v68);
        return sub_1C7159A64(v45, v66);
      }

      else
      {
        v39 = v35;
        v40 = v36;
        v65 = result;
        v41 = v37 >> 1;
        while (v40 < v41)
        {
          v42 = sub_1C71592A8(v39 + *(v20 + 72) * v40, v22);
          MEMORY[0x1EEE9AC00](v42);
          *(&v65 - 4) = v7;
          *(&v65 - 3) = v22;
          *(&v65 - 2) = a6;
          *(&v65 - 1) = a7;
          v43 = sub_1C714FF30(sub_1C7159A40, (&v65 - 6), a2);
          if (v43)
          {
            MEMORY[0x1EEE9AC00](v43);
            *(&v65 - 2) = v22;
            if (!sub_1C7073698(sub_1C7159C28, (&v65 - 4), v38))
            {
              swift_unknownObjectRelease();
              v45 = v67;
              sub_1C7159368(v22, v67);
              v44 = 0;
              goto LABEL_15;
            }
          }

          ++v40;
          result = sub_1C715930C(v22);
          if (v41 == v40)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v27);
  }

  return result;
}

uint64_t sub_1C7155EDC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v87 = type metadata accessor for PromptSuggestion(0);
  v9 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v82 = *a1;
  if (!*(v82 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(*a2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *a4;
  if (!(*a4)[2])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v89 = &v77 - v15;
  v85 = v16;
  v81 = a4;
  v18 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  if (!v18)
  {
    v94 = 0u;
    v95 = 0u;
LABEL_10:
    sub_1C6FD7FC8(&v94, &qword_1EC219770);
    if (!v18)
    {
      v94 = 0u;
      v95 = 0u;
      v21 = 1.0;
LABEL_16:
      sub_1C6FD7FC8(&v94, &qword_1EC219770);
      if (!v18)
      {
        v94 = 0u;
        v95 = 0u;
        v25 = 0.35;
LABEL_22:
        sub_1C6FD7FC8(&v94, &qword_1EC219770);
        if (!v18)
        {
          v94 = 0u;
          v95 = 0u;
          v28 = 0.05;
LABEL_28:
          sub_1C6FD7FC8(&v94, &qword_1EC219770);
          if (!v18)
          {
            v94 = 0u;
            v95 = 0u;
            v31 = 2;
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v19 = sub_1C755068C();
  sub_1C6FE3750(v19, v20);

  if (!*(&v95 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v21 = v93;
    goto LABEL_12;
  }

LABEL_11:
  v21 = 1.0;
LABEL_12:
  v23 = sub_1C755068C();
  sub_1C6FE3750(v23, v24);

  if (!*(&v95 + 1))
  {
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v25 = v93;
    goto LABEL_18;
  }

LABEL_17:
  v25 = 0.35;
LABEL_18:
  v26 = sub_1C755068C();
  sub_1C6FE3750(v26, v27);

  if (!*(&v95 + 1))
  {
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v28 = v93;
    goto LABEL_24;
  }

LABEL_23:
  v28 = 0.05;
LABEL_24:
  v29 = sub_1C755068C();
  sub_1C6FE3750(v29, v30);

  if (!*(&v95 + 1))
  {
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v31 = *&v93;
    goto LABEL_30;
  }

LABEL_29:
  v31 = 2;
LABEL_30:
  v32 = sub_1C755068C();
  sub_1C6FE3750(v32, v33);

  if (!*(&v95 + 1))
  {
LABEL_34:
    sub_1C6FD7FC8(&v94, &qword_1EC219770);
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    v34 = v93;
    goto LABEL_36;
  }

LABEL_35:
  v34 = 0.05;
LABEL_36:
  v35 = *a3;
  sub_1C75504FC();
  sub_1C744E98C(v31, v35);
  v37 = v36;
  v39 = v38;
  v80 = v4;
  if ((v38 & 1) == 0)
  {
LABEL_37:
    sub_1C739C9FC();
    v86 = v40;
    v41 = v81;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    swift_unknownObjectRelease();
    v42 = MEMORY[0x1E69E7CC0];
  }

  v43 = *(v42 + 16);

  if (__OFSUB__(v39 >> 1, v37))
  {
    goto LABEL_76;
  }

  if (v43 != (v39 >> 1) - v37)
  {
LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v41 = v81;
  v86 = v44;
  if (!v44)
  {
    v86 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_45:
  v91 = v17[2];
  if (v91)
  {
    v78 = v9;
    v79 = a2;
    v9 = 0;
    v88 = 0;
    v25 = v25 - v28;
    v21 = v21 - v34;
    v17 = &qword_1EC2155A8;
    v84 = MEMORY[0x1E69E7CC0];
    v90 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = *v41;
      v46 = *(*v41 + 16);
      if (v46)
      {
        *&v94 = 0;
        MEMORY[0x1CCA5F900](&v94, 8);
        v47 = (v94 * v46) >> 64;
        if (v46 > v94 * v46)
        {
          v48 = -v46 % v46;
          if (v48 > v94 * v46)
          {
            do
            {
              *&v94 = 0;
              MEMORY[0x1CCA5F900](&v94, 8);
            }

            while (v48 > v94 * v46);
            v47 = (v94 * v46) >> 64;
          }
        }

        if (v47 >= *(v45 + 16))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v49 = (v45 + 24 * v47);
        v50 = v49[4];
        a2 = v49[5];
        v51 = v49[6];
        *&v94 = v50;
        *(&v94 + 1) = a2;
        *&v95 = v51;
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = v17;
        v53 = v89;
        sub_1C7155978(&v94, v86, 0, MEMORY[0x1E69E7CC0], v89, v25, v21);
        v54 = v85;
        sub_1C70555F8(v53, v85, v52);
        if (__swift_getEnumTagSinglePayload(v54, 1, v87) == 1)
        {
          sub_1C6FD7FC8(v53, v52);

          sub_1C6FD7FC8(v54, v52);
          v17 = v52;
        }

        else
        {
          sub_1C7159368(v54, v92);
          sub_1C75504FC();
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB389C();
            v90 = isUniquelyReferenced_nonNull_native;
          }

          v17 = v52;
          v56 = *(v90 + 16);
          if (v56 >= *(v90 + 24) >> 1)
          {
            sub_1C6FB389C();
            v90 = isUniquelyReferenced_nonNull_native;
          }

          v57 = v90;
          *(v90 + 16) = v56 + 1;
          v58 = (v57 + 24 * v56);
          v58[4] = v50;
          v58[5] = a2;
          v58[6] = v51;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v59 = v92;
          *(&v77 - 2) = v92;
          v60 = v88;
          v61 = sub_1C714FE5C(sub_1C7159A20, (&v77 - 4), v82);
          v88 = v60;
          if (v61)
          {
            sub_1C71592A8(v59, v83);
            v62 = v84;
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v41 = v81;
            if ((v63 & 1) == 0)
            {
              sub_1C6FB3648(0, *(v62 + 16) + 1, 1, v62);
              v62 = v75;
            }

            v65 = *(v62 + 16);
            v64 = *(v62 + 24);
            v84 = v62;
            if (v65 >= v64 >> 1)
            {
              sub_1C6FB3648(v64 > 1, v65 + 1, 1, v84);
              v84 = v76;
            }

            v66 = v83;
            v67 = v84;
            *(v84 + 16) = v65 + 1;
            v68 = sub_1C7159368(v66, v67 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v65);
            MEMORY[0x1EEE9AC00](v68);
            *(&v77 - 2) = v92;
            v69 = v79;
            v70 = v88;
            v71 = sub_1C7158E6C(sub_1C7159C0C, (&v77 - 4));
            v72 = *(*v69 + 16);
            if (v72 < v71)
            {
              goto LABEL_74;
            }

            sub_1C7159584(v71, v72);
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C7158974(v41, v50, a2);
            v74 = *(*v41 + 16);
            if (v74 < v73)
            {
              goto LABEL_75;
            }

            v88 = v70;
            sub_1C71594A0(v73, v74);

            sub_1C6FD7FC8(v89, v52);
          }

          else
          {
            sub_1C6FD7FC8(v89, v52);

            v41 = v81;
          }

          sub_1C715930C(v92);
        }
      }

      if (++v9 == v91)
      {
        goto LABEL_72;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
LABEL_72:

  return v84;
}

void sub_1C71568A4(uint64_t *a1, uint64_t *a2)
{
  v95 = a1;
  v84 = type metadata accessor for PromptSuggestion(0);
  v88 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v83 - v6;
  v96 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters);
  if (v7)
  {
    v8 = sub_1C755068C();
    sub_1C6FE3750(v8, v9);

    if (*(&v102 + 1))
    {
      if (swift_dynamicCast())
      {
        v103 = v99;
      }

      else
      {
        v103 = 0.35;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  sub_1C6FD7FC8(&v101, &qword_1EC219770);
  v103 = 0.35;
  if (!v7)
  {
    v101 = 0u;
    v102 = 0u;
    goto LABEL_12;
  }

LABEL_9:
  v10 = sub_1C755068C();
  sub_1C6FE3750(v10, v11);

  if (!*(&v102 + 1))
  {
LABEL_12:
    sub_1C6FD7FC8(&v101, &qword_1EC219770);
    if (!v7)
    {
      v101 = 0u;
      v102 = 0u;
      v12 = 0.25;
LABEL_18:
      sub_1C6FD7FC8(&v101, &qword_1EC219770);
      if (!v7)
      {
        v101 = 0u;
        v102 = 0u;
        v15 = 2;
LABEL_24:
        sub_1C6FD7FC8(&v101, &qword_1EC219770);
        if (!v7)
        {
          v101 = 0u;
          v102 = 0u;
          v18 = 0.05;
          goto LABEL_31;
        }

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v12 = v99;
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0.25;
LABEL_14:
  v13 = sub_1C755068C();
  sub_1C6FE3750(v13, v14);

  if (!*(&v102 + 1))
  {
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v15 = *&v99;
    goto LABEL_20;
  }

LABEL_19:
  v15 = 2;
LABEL_20:
  v16 = sub_1C755068C();
  sub_1C6FE3750(v16, v17);

  if (!*(&v102 + 1))
  {
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v18 = v99;
    goto LABEL_26;
  }

LABEL_25:
  v18 = 0.05;
LABEL_26:
  v19 = sub_1C755068C();
  sub_1C6FE3750(v19, v20);

  if (*(&v102 + 1))
  {
    if (swift_dynamicCast())
    {
      v100 = v99;
    }

    else
    {
      v100 = 1.0;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_1C6FD7FC8(&v101, &qword_1EC219770);
  v100 = 1.0;
  if (!v7)
  {
    v101 = 0u;
    v102 = 0u;
LABEL_36:
    sub_1C6FD7FC8(&v101, &qword_1EC219770);
    if (!v7)
    {
      v101 = 0u;
      v102 = 0u;
      v23 = 0.8;
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_32:
  v21 = sub_1C755068C();
  sub_1C6FE3750(v21, v22);

  if (!*(&v102 + 1))
  {
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    v23 = v99;
    goto LABEL_38;
  }

LABEL_37:
  v23 = 0.8;
LABEL_38:
  v24 = sub_1C755068C();
  sub_1C6FE3750(v24, v25);

  if (!*(&v102 + 1))
  {
LABEL_42:
    sub_1C6FD7FC8(&v101, &qword_1EC219770);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v26 = v99;
    goto LABEL_44;
  }

LABEL_43:
  v26 = 0.05;
LABEL_44:
  v92 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  swift_beginAccess();
  swift_beginAccess();
  v27 = 0;
  v94 = 0;
  *&v28 = 136315394;
  v89 = v28;
  v91 = xmmword_1C755BAB0;
  v86 = MEMORY[0x1E69E7CC0];
  v90 = a2;
LABEL_45:
  v29 = *v95;
  v30 = *a2;
  if (*(*v95 + 16) >= *(*a2 + 16))
  {
    return;
  }

  v31 = v103;
  if (v12 > v103)
  {
    return;
  }

  v32 = v100;
  if (v23 >= v100)
  {
    return;
  }

  v33 = sub_1C754FEEC();
  v34 = sub_1C75511BC();
  v35 = os_log_type_enabled(v33, v34);
  v97 = v27;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v98 = v37;
    *v36 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v38 = swift_allocObject();
    *(v38 + 16) = v91;
    *(v38 + 56) = MEMORY[0x1E69E63B0];
    *(v38 + 64) = MEMORY[0x1E69E6438];
    *(v38 + 32) = v31;
    v39 = sub_1C75506BC();
    v41 = sub_1C6F765A4(v39, v40, &v98);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = swift_allocObject();
    *(v42 + 16) = v91;
    *(v42 + 56) = MEMORY[0x1E69E63B0];
    *(v42 + 64) = MEMORY[0x1E69E6438];
    *(v42 + 32) = v32;
    v43 = sub_1C75506BC();
    v45 = sub_1C6F765A4(v43, v44, &v98);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "Checking remaining prompts from all suggestions with metadataDistanceThreshold %s and embeddingDistanceThreshold %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v37, -1, -1);
    v46 = v36;
    a2 = v90;
    MEMORY[0x1CCA5F8E0](v46, -1, -1);
  }

  v47 = 0;
  v48 = *(v30 + 16);
  while (2)
  {
    for (i = v47; ; ++i)
    {
      if (v48 == i)
      {
LABEL_88:
        if (v97)
        {
          v100 = v100 - v26;
        }

        else
        {
          v103 = v103 - v18;
        }

        v27 = v97 ^ 1;
        goto LABEL_45;
      }

      if (i >= v48)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v47 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_94;
      }

      v50 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_88;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_95;
      }

      v51 = *(v29 + 16);
      v52 = v51 >= v15 ? v51 - v15 : 0;
      if (v51 > v15)
      {
        v54 = MEMORY[0x1E69E7CC0];
        v53 = v51 - v52;
        if (v51 != v52)
        {
          if (v53 >= 1)
          {
            v56 = v51 - v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217280);
            v57 = *(v88 + 72);
            v58 = (*(v88 + 80) + 32) & ~*(v88 + 80);
            v87 = v56;
            v54 = swift_allocObject();
            v59 = _swift_stdlib_malloc_size(v54);
            if (!v57)
            {
              goto LABEL_98;
            }

            if (v59 - v58 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_99;
            }

            v54[2] = v87;
            v54[3] = 2 * ((v59 - v58) / v57);
            a2 = v90;
          }

          swift_arrayInitWithCopy();
        }
      }

      else
      {
        sub_1C75504FC();
        v54 = v29;
      }

      v55 = *(v50 + 16);
      if (v55)
      {
        break;
      }
    }

    v98 = 0;
    MEMORY[0x1CCA5F900](&v98, 8, v53);
    v61 = (v98 * v55) >> 64;
    if (v55 > v98 * v55)
    {
      v62 = -v55 % v55;
      if (v62 > v98 * v55)
      {
        do
        {
          v98 = 0;
          MEMORY[0x1CCA5F900](&v98, 8);
        }

        while (v62 > v98 * v55);
        v61 = (v98 * v55) >> 64;
      }
    }

    if (v61 >= *(v50 + 16))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v87 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v63 = *(v88 + 72);
    v64 = v93;
    v65 = sub_1C71592A8(v50 + v87 + v63 * v61, v93);
    MEMORY[0x1EEE9AC00](v65);
    *(&v83 - 4) = v96;
    *(&v83 - 3) = v64;
    *(&v83 - 2) = &v103;
    *(&v83 - 1) = &v100;
    v66 = v94;
    v67 = sub_1C714FE5C(sub_1C7159B84, (&v83 - 6), v54);

    if (!v67)
    {
      v94 = v66;
      a2 = v90;
      goto LABEL_87;
    }

    MEMORY[0x1EEE9AC00](v68);
    *(&v83 - 2) = v64;
    v69 = sub_1C7073698(sub_1C7159C28, (&v83 - 4), v29);
    v94 = v66;
    a2 = v90;
    if (v69)
    {
LABEL_87:
      sub_1C715930C(v93);
      continue;
    }

    break;
  }

  sub_1C71592A8(v64, v85);
  v70 = v86;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB3648(0, *(v70 + 16) + 1, 1, v70);
    v70 = v81;
  }

  v72 = *(v70 + 16);
  v71 = *(v70 + 24);
  if (v72 >= v71 >> 1)
  {
    sub_1C6FB3648(v71 > 1, v72 + 1, 1, v70);
    v70 = v82;
  }

  *(v70 + 16) = v72 + 1;
  v86 = v70;
  v73 = v87;
  sub_1C7159368(v85, v70 + v87 + v72 * v63);
  v74 = v95;
  sub_1C6FB0C9C();
  v75 = *(*v74 + 16);
  sub_1C6FB14D8();
  v29 = *v74;
  *(v29 + 16) = v75 + 1;
  v76 = v93;
  v77 = sub_1C71592A8(v93, v29 + v73 + v75 * v63);
  *v74 = v29;
  MEMORY[0x1EEE9AC00](v77);
  *(&v83 - 2) = v76;
  v78 = v94;
  v79 = sub_1C7158E6C(sub_1C7159C0C, (&v83 - 4));
  v80 = *(*a2 + 16);
  if (v80 >= v79)
  {
    v94 = v78;
    sub_1C7159584(v79, v80);
    goto LABEL_87;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1C7157460(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC() ^ 1;
  }

  return v3 & 1;
}

BOOL sub_1C71574BC(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  swift_beginAccess();
  v9 = *a4;
  swift_beginAccess();
  return sub_1C715755C(a3, a1, v9, *a5);
}

BOOL sub_1C715755C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_1C7157A5C(a1, a2);
  v15 = sub_1C715215C(a1, a2);
  v16 = v15 > a4 && v14 > a3;
  sub_1C71592A8(a1, v13);
  sub_1C71592A8(a2, v10);
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v19 = 136316418;
    v20 = *(v13 + 13);
    v21 = *(v13 + 14);
    sub_1C75504FC();
    sub_1C715930C(v13);
    v22 = sub_1C6F765A4(v20, v21, &v43);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = *(v10 + 13);
    v24 = *(v10 + 14);
    sub_1C75504FC();
    sub_1C715930C(v10);
    v25 = sub_1C6F765A4(v23, v24, &v43);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    if (v16)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v16)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_1C6F765A4(v26, v27, &v43);

    *(v19 + 24) = v28;
    *(v19 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v29 = swift_allocObject();
    v41 = xmmword_1C755BAB0;
    v30 = MEMORY[0x1E69E63B0];
    *(v29 + 16) = xmmword_1C755BAB0;
    v31 = MEMORY[0x1E69E6438];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v14;
    v32 = sub_1C75506BC();
    v34 = sub_1C6F765A4(v32, v33, &v43);

    *(v19 + 34) = v34;
    *(v19 + 42) = 2080;
    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 56) = v30;
    *(v35 + 64) = v31;
    *(v35 + 32) = v15;
    v36 = sub_1C75506BC();
    v38 = sub_1C6F765A4(v36, v37, &v43);

    *(v19 + 44) = v38;
    *(v19 + 52) = 2080;
    *(v19 + 54) = sub_1C6F765A4(0x65736C6166, 0xE500000000000000, &v43);
    _os_log_impl(&dword_1C6F5C000, v17, v18, "[Prompt eligibility check] candidate:'%s' selectedPrompt:'%s', isEligibleForNextPrompt:%s metadataDistance: %s, embeddingDistance:%s, sharesTheSamePersonOrPlace:%s", v19, 0x3Eu);
    v39 = v42;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v39, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  else
  {

    sub_1C715930C(v10);
    sub_1C715930C(v13);
  }

  return v16;
}

uint64_t sub_1C71578F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC() & 1;
  }
}

BOOL sub_1C7157948(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (*(v13 + 16))
  {
    sub_1C71592A8(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = sub_1C715755C(v12, a5, a2, a3);
    sub_1C715930C(v12);
  }

  else
  {
    return 1;
  }

  return v14;
}

double sub_1C7157A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = v102 - v9;
  if (*(a1 + 72) == *(a2 + 72))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v117 = MEMORY[0x1E69E7CC8];
  v111[2] = &v117;
  v111[3] = a1;
  v103 = a1;
  v104 = a2;
  v111[4] = a2;
  sub_1C7150520(sub_1C7159B10, v111, &unk_1F46A8070);
  v110 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FA8);
  inited = swift_initStackObject();
  v109 = xmmword_1C755BA90;
  *(inited + 16) = xmmword_1C755BA90;
  *(inited + 32) = 1;
  *(inited + 40) = sub_1C755068C();
  *(inited + 48) = v12;
  *(inited + 56) = 2;
  *(inited + 64) = sub_1C755068C();
  *(inited + 72) = v13;
  *(inited + 80) = 4;
  *(inited + 88) = sub_1C755068C();
  *(inited + 96) = v14;
  *(inited + 104) = 8;
  *(inited + 112) = sub_1C755068C();
  *(inited + 120) = v15;
  *(inited + 128) = 256;
  *(inited + 136) = sub_1C755068C();
  *(inited + 144) = v16;
  sub_1C7159B30();
  v17 = sub_1C75504DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98);
  v18 = swift_initStackObject();
  *(v18 + 16) = v109;
  *(v18 + 32) = sub_1C755068C();
  *(v18 + 40) = v19;
  *(v18 + 48) = 0x3FC3333333333333;
  *(v18 + 56) = sub_1C755068C();
  *(v18 + 64) = v20;
  *(v18 + 72) = 0x3FC3333333333333;
  *(v18 + 80) = sub_1C755068C();
  *(v18 + 88) = v21;
  *(v18 + 96) = 0x3FB999999999999ALL;
  *(v18 + 104) = sub_1C755068C();
  *(v18 + 112) = v22;
  *(v18 + 120) = 0x3FB999999999999ALL;
  *(v18 + 128) = sub_1C755068C();
  *(v18 + 136) = v23;
  *(v18 + 144) = 0x3FD3333333333333;
  v24 = sub_1C75504DC();
  v116[0] = MEMORY[0x1E69E7CC8];

  v25 = v110;
  sub_1C71501D4(&unk_1F46A8070, v17, v116, v3, v24);
  v102[1] = v25;
  if (!*(v3 + OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_promptRankingParameters))
  {
    v114 = 0u;
    v115 = 0u;
    goto LABEL_9;
  }

  v26 = sub_1C755068C();
  sub_1C6FE3750(v26, v27);

  if (!*(&v115 + 1))
  {
LABEL_9:
    sub_1C6FD7FC8(&v114, &qword_1EC219770);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v28 = 0.3;
    goto LABEL_11;
  }

  v28 = v113;
LABEL_11:
  v113 = MEMORY[0x1E69E7CC0];
  sub_1C716DA70();
  v29 = 0;
  v30 = *&v113;
  *&v109 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  *&v31 = 136315394;
  v107 = v31;
  v108 = v3;
  do
  {
    swift_beginAccess();
    v32 = v116[0];
    if (*(v116[0] + 16) && (v33 = sub_1C6FC2FFC(), (v34 & 1) != 0) && (v35 = *(*(v32 + 56) + 8 * v33), swift_endAccess(), swift_beginAccess(), v36 = v117, *(v117 + 16)) && (v37 = sub_1C6FC2FFC(), (v38 & 1) != 0))
    {
      v39 = *(*(v36 + 56) + 8 * v37);
      swift_endAccess();
      v40 = v35 * v39;
    }

    else
    {
      swift_endAccess();
      v41 = sub_1C754FEEC();
      v42 = sub_1C755119C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v112 = v44;
        *v43 = v107;
        v45 = *(v32 + 16);
        v110 = v32;
        if (v45 && (sub_1C6FC2FFC(), (v46 & 1) != 0))
        {
          v47 = sub_1C7550F3C();
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = sub_1C6F765A4(v47, v49, &v112);

        *(v43 + 4) = v50;
        *(v43 + 12) = 2080;
        swift_beginAccess();
        if (*(v117 + 16) && (sub_1C6FC2FFC(), (v51 & 1) != 0))
        {
          swift_endAccess();
          v52 = sub_1C7550F3C();
          v54 = v53;
        }

        else
        {
          swift_endAccess();
          v54 = 0xE300000000000000;
          v52 = 7104878;
        }

        v55 = sub_1C6F765A4(v52, v54, &v112);

        *(v43 + 14) = v55;
        _os_log_impl(&dword_1C6F5C000, v41, v42, "Couldn't calculate weighted distance, weight: %s, distance: %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v44, -1, -1);
        MEMORY[0x1CCA5F8E0](v43, -1, -1);

        v40 = 0.0;
        v32 = v110;
      }

      else
      {

        v40 = 0.0;
      }
    }

    v113 = *&v30;
    v56 = *(v30 + 16);
    if (v56 >= *(v30 + 24) >> 1)
    {
      sub_1C716DA70();
      v30 = *&v113;
    }

    *(v30 + 16) = v56 + 1;
    *(v30 + 8 * v56 + 32) = v40;
    v29 += 8;
  }

  while (v29 != 40);
  v110 = v32;
  v57 = v56 + 1;
  v58 = 0.0;
  v59 = 32;
  do
  {
    v58 = v58 + *(v30 + v59);
    v59 += 8;
    --v57;
  }

  while (v57);

  v60 = sub_1C714FA8C(&unk_1F46A8070, v116);
  v61 = *(v60 + 16);
  v63 = v105;
  v62 = v106;
  if (v61)
  {
    v64 = (v60 + 32);
    v65 = 0.0;
    do
    {
      v66 = *v64++;
      v65 = v65 + v66;
      --v61;
    }

    while (v61);
  }

  else
  {
    v65 = 0.0;
  }

  v67 = v10 * v28 + v58;

  sub_1C71592A8(v103, v63);
  sub_1C71592A8(v104, v62);
  v68 = sub_1C754FEEC();
  v69 = sub_1C75511BC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    LODWORD(v107) = v69;
    v71 = v70;
    v108 = swift_slowAlloc();
    v113 = *&v108;
    *v71 = 136381955;
    v72 = *(v63 + 104);
    v73 = *(v63 + 112);
    sub_1C75504FC();
    sub_1C715930C(v63);
    v74 = sub_1C6F765A4(v72, v73, &v113);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2081;
    v75 = *(v62 + 104);
    v76 = *(v62 + 112);
    sub_1C75504FC();
    sub_1C715930C(v62);
    v77 = sub_1C6F765A4(v75, v76, &v113);

    *(v71 + 14) = v77;
    *(v71 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v78 = swift_allocObject();
    v109 = xmmword_1C755BAB0;
    *(v78 + 16) = xmmword_1C755BAB0;
    v79 = MEMORY[0x1E69E6438];
    v80 = MEMORY[0x1E69E63B0];
    *(v78 + 56) = MEMORY[0x1E69E63B0];
    *(v78 + 64) = v79;
    v81 = v79;
    *(v78 + 32) = v67;
    v82 = sub_1C75506BC();
    v84 = sub_1C6F765A4(v82, v83, &v113);

    *(v71 + 24) = v84;
    *(v71 + 32) = 2080;
    v85 = swift_allocObject();
    *(v85 + 16) = v109;
    *(v85 + 56) = v80;
    *(v85 + 64) = v81;
    *(v85 + 32) = v10;
    v86 = sub_1C75506BC();
    v88 = sub_1C6F765A4(v86, v87, &v113);

    *(v71 + 34) = v88;
    *(v71 + 42) = 2080;
    swift_beginAccess();
    v89 = sub_1C75504FC();
    v90 = sub_1C714FBA4(v89);

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708);
    v92 = MEMORY[0x1CCA5D090](v90, v91);
    v94 = v93;

    v95 = sub_1C6F765A4(v92, v94, &v113);

    *(v71 + 44) = v95;
    *(v71 + 52) = 2080;
    v96 = swift_allocObject();
    *(v96 + 16) = v109;
    *(v96 + 56) = MEMORY[0x1E69E63B0];
    *(v96 + 64) = MEMORY[0x1E69E6438];
    *(v96 + 32) = v28 + v65;
    v97 = sub_1C75506BC();
    v99 = sub_1C6F765A4(v97, v98, &v113);

    *(v71 + 54) = v99;
    _os_log_impl(&dword_1C6F5C000, v68, v107, "[Metadata distance]'%{private}s' VS '%{private}s' =%s, action distance: %s, other category distance: %s, weightSum:%s.", v71, 0x3Eu);
    v100 = v108;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v100, -1, -1);
    MEMORY[0x1CCA5F8E0](v71, -1, -1);
  }

  else
  {

    sub_1C715930C(v62);
    sub_1C715930C(v63);
  }

  return v67;
}

uint64_t sub_1C71584B4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (((*a1 & ~*(a3 + 80)) == 0) != ((*a1 & ~*(a4 + 80)) != 0))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v7 = *a2;
  result = sub_1C6FC908C(v5);
  *a2 = v7;
  return result;
}

void static PromptSuggestionRanker.getDistance(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 && v2 == *(a2 + 16))
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *v3++;
      v9 = v8;
      v10 = *v4++;
      v7 = v7 + v9 * v9;
      v6 = v6 + v10 * v10;
      v5 = v5 + v9 * v10;
      --v2;
    }

    while (v2);
    v11 = v7 * v6;
    if (v11 > 0.0)
    {
      sqrt(v11);
    }
  }
}

uint64_t PromptSuggestionRanker.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence22PromptSuggestionRanker_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromptSuggestionRanker.__deallocating_deinit()
{
  PromptSuggestionRanker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71586B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_1C7551DBC() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 3;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_1C715876C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a2 + 8;
LABEL_2:
  if (v4 == v5)
  {

    return 0;
  }

  else
  {
    v7 = *(type metadata accessor for PromptSuggestion(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = *(v7 + 72);
    v10 = (a1 + v8 + v9 * v4);
    v11 = (v6 + v8);
    v12 = *(a2 + 16) + 1;
    do
    {
      if (!--v12)
      {
        ++v4;
        goto LABEL_2;
      }

      if (*(v11 - 1) == *v10 && *v11 == v10[1])
      {
        break;
      }

      v11 = (v11 + v9);
    }

    while ((sub_1C7551DBC() & 1) == 0);

    return v4;
  }
}

uint64_t sub_1C7158890(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for PromptSuggestion(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

void sub_1C7158974(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_1C75504FC();
  sub_1C75504FC();
  v8 = sub_1C71586B4(v7, a2, a3);
  v10 = v8;
  if (v3 || (v9 & 1) != 0)
  {
LABEL_21:

    return;
  }

  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v12 = 24 * v8;
    v23 = a1;
    while (1)
    {
      v13 = *(v7 + 16);
      if (v11 == v13)
      {
        goto LABEL_21;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

      v14 = v7 + v12;
      v15 = *(v7 + v12 + 56) == a2 && *(v7 + v12 + 64) == a3;
      if (!v15 && (sub_1C7551DBC() & 1) == 0)
      {
        if (v11 != v10)
        {
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          v16 = (v7 + 32 + 24 * v10);
          v24 = v16[1];
          v25 = *v16;
          v17 = v16[2];
          v18 = *(v14 + 64);
          v26 = *(v14 + 56);
          v19 = *(v7 + v12 + 72);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E42D8();
            v7 = v22;
          }

          if (v10 >= *(v7 + 16))
          {
            goto LABEL_24;
          }

          v20 = (v7 + 24 * v10);
          v20[4] = v26;
          v20[5] = v18;
          v20[6] = v19;

          if (v11 >= *(v7 + 16))
          {
            goto LABEL_25;
          }

          v21 = (v7 + v12);
          v21[7] = v25;
          v21[8] = v24;
          v21[9] = v17;

          *v23 = v7;
        }

        ++v10;
      }

      ++v11;
      v12 += 24;
    }
  }

  __break(1u);
}

uint64_t sub_1C7158B74(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for PromptSuggestion(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v36 - v13);
  v15 = *a1;
  sub_1C75504FC();
  result = sub_1C715876C(v15, a2);
  if (v2)
  {
    goto LABEL_29;
  }

  v39 = v8;
  if (v17)
  {
    v8 = *(v15 + 16);

    return v8;
  }

  v36[1] = 0;
  v37 = a1;
  v18 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_38;
  }

  v8 = result;
  v19 = v15;
  v41 = a2;
  v42 = a2 + 8;
  v40 = v6;
  v38 = v11;
  while (2)
  {
    v20 = *(v19 + 16);
    if (v18 == v20)
    {
LABEL_29:

      return v8;
    }

    if (v18 >= v20)
    {
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
    }

    else
    {
      v21 = v8;
      v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v43 = v19;
      v23 = v19 + v22;
      v24 = *(v6 + 72);
      v25 = v24 * v18;
      sub_1C71592A8(v23 + v24 * v18, v14);
      v26 = *(a2 + 16);
      v27 = (v42 + v22);
      v28 = v26 + 1;
      while (--v28)
      {
        if (*(v27 - 1) != *v14 || *v27 != v14[1])
        {
          v27 = (v27 + v24);
          if ((sub_1C7551DBC() & 1) == 0)
          {
            continue;
          }
        }

        result = sub_1C715930C(v14);
        v6 = v40;
        a2 = v41;
        v8 = v21;
        v19 = v43;
        goto LABEL_26;
      }

      result = sub_1C715930C(v14);
      v30 = v21;
      if (v21 == v18)
      {
        a2 = v41;
        v19 = v43;
        goto LABEL_25;
      }

      v31 = v38;
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v32 = *(v43 + 16);
      if (v30 >= v32)
      {
        goto LABEL_35;
      }

      v33 = v24 * v30;
      result = sub_1C71592A8(v23 + v33, v38);
      if (v18 >= v32)
      {
        goto LABEL_36;
      }

      sub_1C71592A8(v23 + v25, v39);
      v19 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E42C0();
        v19 = v35;
      }

      result = sub_1C7159BA8(v39, v19 + v22 + v33);
      if (v18 < *(v19 + 16))
      {
        result = sub_1C7159BA8(v31, v19 + v22 + v25);
        *v37 = v19;
        a2 = v41;
LABEL_25:
        v34 = __OFADD__(v30, 1);
        v8 = v30 + 1;
        v6 = v40;
        if (v34)
        {
          goto LABEL_33;
        }

LABEL_26:
        v34 = __OFADD__(v18++, 1);
        if (v34)
        {
          goto LABEL_32;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C7158E6C(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v3;
  v7 = type metadata accessor for PromptSuggestion(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = *v2;
  result = sub_1C7158890(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  v42 = a2;
  v44 = v16;
  v38 = v10;
  v39 = v13;
  if (v19)
  {
    return *(v17 + 16);
  }

  v4 = result;
  v45 = 0;
  v37 = v2;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v21 = v17;
    v22 = v44;
    v40 = v8;
    v41 = a1;
    while (1)
    {
      v23 = *(v21 + 16);
      if (v20 == v23)
      {
        return v4;
      }

      if (v20 >= v23)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      v24 = v4;
      v25 = v21;
      v43 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v26 = v21 + v43;
      v27 = *(v8 + 72);
      v46 = v20;
      v28 = v27 * v20;
      sub_1C71592A8(v26 + v27 * v20, v22);
      v29 = v45;
      v30 = a1(v22);
      v4 = v29;
      result = sub_1C715930C(v22);
      v45 = v29;
      if (v29)
      {
        return v4;
      }

      if (v30)
      {
        v8 = v40;
        a1 = v41;
        v4 = v24;
        v22 = v44;
        v21 = v25;
        v31 = v46;
      }

      else
      {
        v31 = v46;
        v22 = v44;
        if (v46 == v24)
        {
          a1 = v41;
          v21 = v25;
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v32 = *(v25 + 16);
          if (v24 >= v32)
          {
            goto LABEL_26;
          }

          v33 = v27 * v24;
          result = sub_1C71592A8(v26 + v33, v39);
          if (v46 >= v32)
          {
            goto LABEL_27;
          }

          sub_1C71592A8(v26 + v28, v38);
          v21 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C70E42C0();
            v21 = v35;
          }

          a1 = v41;
          v34 = v21 + v43;
          sub_1C7159BA8(v38, v21 + v43 + v33);
          result = v39;
          if (v46 >= *(v21 + 16))
          {
            goto LABEL_28;
          }

          result = sub_1C7159BA8(v39, v34 + v28);
          v31 = v46;
          *v37 = v21;
          v22 = v44;
        }

        v4 = v24 + 1;
        v8 = v40;
      }

      v20 = v31 + 1;
    }
  }

  __break(1u);
  return result;
}

Swift::UInt64 sub_1C7159150(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = Random.Arc4Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          sub_1C73B442C();
          v6 = v5;
          sub_1C73B442C();
          v8 = v7;
          sub_1C73B442C();
          v10 = v9;
          sub_1C73B442C();
          v12 = v11;
          sub_1C73B442C();
          v14 = v13;
          sub_1C73B442C();
          v16 = v15;
          sub_1C73B442C();
          v18 = v17;
          sub_1C73B442C();
          v20 = v19 | (((v16 << 8) | (((((v6 << 16) | (v8 << 8) | v10) << 16) | (v12 << 8) | v14) << 16) | v18) << 8);
        }

        while (v4 > v20 * v1);
        return (v20 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C715923C(void *a1)
{
  v1 = [a1 promptRankingParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C75504AC();

  return v3;
}

uint64_t sub_1C71592A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C715930C(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7159368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C71593CC(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCCB8(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 80 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C741E45C((v11 + 80 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C71594A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result - a2;
  if (__OFSUB__(0, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v5;
  if (__OFADD__(v4, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCE68(result, 1);
  v7 = *v2;
  v8 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v5)
  {
LABEL_10:
    *v2 = v7;
    return result;
  }

  if (__OFSUB__(*(v7 + 16), a2))
  {
    goto LABEL_16;
  }

  result = sub_1C7423D18(v8 + 24 * a2);
  v9 = *(v7 + 16);
  v10 = __OFADD__(v9, v6);
  v11 = v9 - v5;
  if (!v10)
  {
    *(v7 + 16) = v11;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C7159584(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCE80(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for PromptSuggestion(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_1C741E1A8(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C71596B4(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCEB0(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 144 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C741E4D4((v11 + 144 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1C7159788(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_19();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C6FDCCA0(v4 - v8, 1);
  v10 = *v2;
  v11 = *v2 + 32;
  v12 = (v11 + 16 * v7);
  OUTLINED_FUNCTION_64();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v1))
  {
    goto LABEL_16;
  }

  sub_1C6F9EE08((v11 + 16 * v1), v13 - v1, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t type metadata accessor for PromptSuggestionRanker()
{
  result = qword_1EDD0E1D8;
  if (!qword_1EDD0E1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C715993C()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C7159A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7159B30()
{
  result = qword_1EC217FB0;
  if (!qword_1EC217FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217FB0);
  }

  return result;
}

uint64_t sub_1C7159BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_24_21()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_14(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;

  return sub_1C75506BC();
}

uint64_t OUTLINED_FUNCTION_62_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_13()
{
}

uint64_t OUTLINED_FUNCTION_68_12()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_69_12(uint64_t a1, unint64_t a2)
{

  return sub_1C6F765A4(a1, a2, (v2 - 280));
}

uint64_t OUTLINED_FUNCTION_81_8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = a1;
  *(v2 - 368) = v1;

  return sub_1C75504FC();
}

uint64_t sub_1C7159E0C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v21 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1C716DF84();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v13 = v24;
    while (v14 < v12)
    {
      if (__OFADD__(v14, 1))
      {
        goto LABEL_15;
      }

      v22 = v14 + 1;
      v23 = a3 + v14;
      v15 = v11;
      a1(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v24 = v13;
      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        sub_1C716DF84();
        v13 = v24;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16;
      v11 = v15;
      (*(v21 + 32))(v17, v15, v19);
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v14;
      if ((a3 + v14 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v22 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1C715A020(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1C716E48C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;
    sub_1C75504FC();
    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1C716E48C((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C715A14C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    v8 = sub_1C719D92C(v6);
    v10 = v9;
    v11 = 0;
    v12 = v6 + 56;
    v28 = v7;
    v29 = v4;
    v27 = v6 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v7)
      {
        goto LABEL_25;
      }

      v31 = v11;
      v32 = v7;
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v8);
      v16 = v15[1];
      v33[0] = *v15;
      v33[1] = v16;
      sub_1C75504FC();
      a1(&v34, v33);
      if (v3)
      {
        goto LABEL_29;
      }

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      result = sub_1C755193C();
      if (v10)
      {
        goto LABEL_30;
      }

      v17 = 1 << *(v14 + 32);
      if (v8 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v12 + 8 * v13);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      v6 = v14;
      if (*(v14 + 36) != v32)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
        v20 = v31;
        v21 = v29;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v24 = (v27 + 8 * v13);
        v21 = v29;
        while (v23 < (v17 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1C6F9ED50(v8, v32, 0);
            v3 = 0;
            v17 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v8, v32, 0);
        v3 = 0;
LABEL_19:
        v20 = v31;
      }

      v10 = 0;
      v11 = v20 + 1;
      v8 = v17;
      v7 = v28;
      if (v11 == v21)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_24:
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

  return result;
}

void sub_1C715A3B8(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Hastings.Asset(0);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C75516BC())
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C716E298(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v23;
    v18 = i;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](v11, a3);
      }

      else
      {
        if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      v15 = v14;
      v22 = v14;
      a1(&v22, &v21);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v23 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C716E298(v16 > 1, v17 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v17 + 1;
      sub_1C7161504(v9, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for Hastings.Asset);
      ++v11;
      if (v13 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t sub_1C715A5EC(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8();
  v6 = v17;
  for (i = (a3 + 32); ; i += 120)
  {
    memcpy(__dst, i, 0x78uLL);
    memcpy(__src, i, sizeof(__src));
    sub_1C6FCA6E4(__dst, v13);
    a1(v15, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v12, __src, sizeof(v12));
    sub_1C6FDD548(v12);
    memcpy(v13, v15, sizeof(v13));
    v17 = v6;
    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      sub_1C716D7D8();
      v6 = v17;
    }

    *(v6 + 16) = v10 + 1;
    memcpy((v6 + 120 * v10 + 32), v13, 0x78uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v13, __src, sizeof(v13));
  sub_1C6FDD548(v13);

  __break(1u);
  return result;
}

uint64_t QueryAssetsRetrievalProcessor.performMetadataQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[110] = v4;
  v5[109] = a4;
  v5[108] = a3;
  v5[107] = a1;
  v7 = sub_1C754F38C();
  v5[111] = v7;
  v5[112] = *(v7 - 8);
  v5[113] = swift_task_alloc();
  v5[114] = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C715A848, 0, 0);
}

uint64_t sub_1C715A848()
{
  v100 = v0;
  v1 = *(v0 + 912);
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  v4 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1C754F15C();
  v6 = MEMORY[0x1E69E7CC8];
  *(v0 + 848) = MEMORY[0x1E69E7CC8];
  v7 = *(v1 + 16);
  if (!v7)
  {
    v8 = v6;
    v10 = v6;
LABEL_49:
    *(v0 + 936) = v10;
    *(v0 + 928) = v8;
    *(v0 + 920) = v6;
    if (!v10[2])
    {
      v83 = *(v0 + 856);
      __swift_destroy_boxed_opaque_existential_1(v0 + 736);

      *v83 = 0;
      v83[1] = 0;
      OUTLINED_FUNCTION_1_58();
      v84 = OUTLINED_FUNCTION_57_0();
      v85(v84);

      OUTLINED_FUNCTION_9_38();

      __asm { BRAA            X1, X16 }
    }

    v51 = v10 + 8;
    v52 = v0 + 816;
    OUTLINED_FUNCTION_10();
    v55 = v54 & v53;
    v57 = (63 - v56) >> 6;
    result = swift_bridgeObjectRetain_n();
    v58 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v92 = v57;
    v94 = v10 + 8;
    v90 = v0;
    v88 = v10;
    while (1)
    {
      *(v0 + 944) = v59;
      if (!v55)
      {
        while (1)
        {
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
            goto LABEL_96;
          }

          if (v60 >= v57)
          {
            break;
          }

          v55 = v51[v60];
          ++v58;
          if (v55)
          {
            v58 = v60;
            goto LABEL_56;
          }
        }

        *(v0 + 976) = 0;
        sub_1C6FDC2F0(v0 + 776);
        v80 = swift_task_alloc();
        *(v0 + 952) = v80;
        *v80 = v0;
        v80[1] = sub_1C715B26C;
        OUTLINED_FUNCTION_9_38();

        return sub_1C71074E0();
      }

LABEL_56:
      v61 = *(v10[7] + ((v58 << 9) | (8 * __clz(__rbit64(v55)))));
      if (v61 >> 62)
      {
        v62 = sub_1C75516BC();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v59 >> 62;
      if (v59 >> 62)
      {
        result = sub_1C75516BC();
      }

      else
      {
        result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = result + v62;
      if (__OFADD__(result, v62))
      {
        goto LABEL_103;
      }

      sub_1C75504FC();
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v98 = v62;
      if (!result)
      {
        break;
      }

      if (v63)
      {
        goto LABEL_66;
      }

      v65 = v59 & 0xFFFFFFFFFFFFFF8;
      v66 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v66 < v64)
      {
        goto LABEL_67;
      }

LABEL_68:
      v55 &= v55 - 1;
      v67 = *(v65 + 16);
      v68 = v66 - v67;
      v69 = v65 + 8 * v67;
      v96 = v65;
      if (v61 >> 62)
      {
        v72 = sub_1C75516BC();
        if (!v72)
        {
          goto LABEL_82;
        }

        v73 = v72;
        result = sub_1C75516BC();
        if (v68 < result)
        {
          goto LABEL_107;
        }

        if (v73 < 1)
        {
          goto LABEL_108;
        }

        v89 = result;
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
        for (i = 0; i != v73; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
          v75 = sub_1C6FDD09C(v52, i, v61);
          v77 = *v76;
          v75(v52, 0);
          *(v69 + 32 + 8 * i) = v77;
        }

        v10 = v88;
        v71 = v89;
LABEL_78:

        v0 = v90;
        v57 = v92;
        v51 = v94;
        if (v71 < v98)
        {
          goto LABEL_104;
        }

        if (v71 > 0)
        {
          v78 = *(v96 + 16);
          v31 = __OFADD__(v78, v71);
          v79 = v78 + v71;
          if (v31)
          {
            goto LABEL_105;
          }

          *(v96 + 16) = v79;
        }
      }

      else
      {
        v70 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v70)
        {
          if (v68 < v70)
          {
            goto LABEL_106;
          }

          v71 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          swift_arrayInitWithCopy();
          goto LABEL_78;
        }

LABEL_82:

        v0 = v90;
        v57 = v92;
        v51 = v94;
        if (v98 > 0)
        {
          goto LABEL_104;
        }
      }
    }

    if (v63)
    {
LABEL_66:
      sub_1C75516BC();
    }

LABEL_67:
    result = sub_1C75518CC();
    v59 = result;
    v65 = result & 0xFFFFFFFFFFFFFF8;
    v66 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    goto LABEL_68;
  }

  v91 = (v0 + 848);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = (*(v0 + 912) + 32);
  v10 = MEMORY[0x1E69E7CC8];
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v93 = v7;
    memcpy((v0 + 16), v9, 0x78uLL);
    memcpy(__dst, v9, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    sub_1C715B7AC(__dst);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = sub_1C75516BC();
    }

    else
    {
      v17 = *(v11 + 16);
    }

    v95 = v16;
    if (!v17)
    {
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    if (v17 < 1)
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      *(v18 + 16) = v17;
      *(v18 + 24) = (2 * ((v19 - 32) / 8)) | 1;
    }

    sub_1C75504FC();
    sub_1C70D2264(__dst, (v18 + 32), v17, v12);
    v21 = v20;
    result = sub_1C6F61E88();
    if (v21 != v17)
    {
      break;
    }

LABEL_12:
    v97 = v14;
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v23 = sub_1C75516BC();
    }

    else
    {
      v23 = *(v18 + 16);
    }

    if (v23)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v10;
      result = sub_1C6FC2A70();
      if (__OFADD__(v10[2], (v24 & 1) == 0))
      {
        goto LABEL_97;
      }

      v25 = result;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
      v27 = sub_1C7551A2C();
      v10 = __dst[0];
      if (v27)
      {
        v28 = sub_1C6FC2A70();
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_89;
        }

        v25 = v28;
      }

      if (v26)
      {
        *(v10[7] + 8 * v25) = v18;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v10[v25 >> 6]);
        result = memcpy((v10[6] + 120 * v25), (v0 + 16), 0x78uLL);
        *(v10[7] + 8 * v25) = v18;
        v30 = v10[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_100;
        }

        v10[2] = v32;
        sub_1C6FCA6E4(v0 + 16, v0 + 256);
      }
    }

    else
    {
    }

    v33 = v97;
    if (*(v97 + 16))
    {
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v8;
      result = sub_1C6FC2A70();
      if (__OFADD__(v8[2], (v34 & 1) == 0))
      {
        goto LABEL_98;
      }

      v35 = result;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FB8);
      v37 = sub_1C7551A2C();
      v8 = __dst[0];
      if (v37)
      {
        v38 = sub_1C6FC2A70();
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_89;
        }

        v35 = v38;
        v33 = v97;
      }

      if (v36)
      {
        *(v8[7] + 8 * v35) = v33;
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v8[v35 >> 6]);
        result = OUTLINED_FUNCTION_10_37(v8[6]);
        *(v8[7] + 8 * v35) = v33;
        v40 = v8[2];
        v31 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v31)
        {
          goto LABEL_101;
        }

        v8[2] = v41;
        sub_1C6FCA6E4(v0 + 16, v0 + 376);
      }
    }

    if (*(v95 + 16))
    {
      sub_1C75504FC();
      v42 = *v91;
      swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v42;
      result = sub_1C6FC2A70();
      if (__OFADD__(*(v42 + 16), (v43 & 1) == 0))
      {
        goto LABEL_99;
      }

      v44 = result;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FC0);
      v46 = sub_1C7551A2C();
      v6 = __dst[0];
      if (v46)
      {
        v47 = sub_1C6FC2A70();
        if ((v45 & 1) != (v48 & 1))
        {
LABEL_89:
          OUTLINED_FUNCTION_9_38();

          return sub_1C7551E4C();
        }

        v44 = v47;
      }

      if (v45)
      {
        *(v6[7] + 8 * v44) = v95;

        sub_1C6FDD548(v0 + 16);
      }

      else
      {
        OUTLINED_FUNCTION_1_3(&v6[v44 >> 6]);
        result = OUTLINED_FUNCTION_10_37(v6[6]);
        *(v6[7] + 8 * v44) = v95;
        v49 = v6[2];
        v31 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v31)
        {
          goto LABEL_102;
        }

        v6[2] = v50;
      }

      *v91 = v6;
    }

    else
    {
      sub_1C6FDD548(v0 + 16);
    }

    v9 += 120;
    v7 = v93 - 1;
    if (v93 == 1)
    {
      goto LABEL_49;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_1C715B26C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v4 + 776);

    v5 = sub_1C715B6C4;
  }

  else
  {
    *(v4 + 968) = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 776);

    v5 = sub_1C715B3C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C715B3C0()
{
  v36 = v0;
  v1 = v0[121];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[110];
  v5 = v0[109];
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = MEMORY[0x1E69E7CC8];
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C7161474, v6, v1);
  v9 = v8;

  v33 = v7;
  v34 = v7;
  v10 = v3;
  v11 = sub_1C71610D4(v2, v0 + 106);
  v32 = v9;
  sub_1C7108C18(v11, v9, &v33);

  v12 = v3 + 64;
  OUTLINED_FUNCTION_10();
  v15 = v14 & v13;
  v17 = (63 - v16) >> 6;
  result = sub_1C75504FC();
  v19 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      do
      {
LABEL_6:
        v21 = __clz(__rbit64(v15)) | (v19 << 6);
        memcpy(v0 + 62, (*(v10 + 48) + 120 * v21), 0x78uLL);
        v22 = *(*(v10 + 56) + 8 * v21);
        type metadata accessor for QueryAssetsRetrievalProcessor();
        sub_1C75504FC();
        sub_1C6FCA6E4((v0 + 62), (v0 + 77));
        v23 = sub_1C754FEEC();
        v24 = sub_1C75511BC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = *(v22 + 16);
          _os_log_impl(&dword_1C6F5C000, v23, v24, "Need to update the location query token with %ld combinations of location tokenized attributed strings", v25, 0xCu);
          OUTLINED_FUNCTION_109();
        }

        v15 &= v15 - 1;

        memcpy(__dst, v0 + 62, 0x78uLL);
        sub_1C715E2B0(__dst, v22, v32, &v33, &v34);

        result = sub_1C6FDD548((v0 + 62));
      }

      while (v15);
    }
  }

  v26 = v0[116];
  v27 = v0[107];

  sub_1C715EF50(&v33, v26);

  __swift_destroy_boxed_opaque_existential_1((v0 + 92));

  v28 = v34;
  *v27 = v33;
  v27[1] = v28;
  OUTLINED_FUNCTION_1_58();
  v29 = OUTLINED_FUNCTION_57_0();
  v30(v29);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1C715B6C4()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  __swift_destroy_boxed_opaque_existential_1((v0 + 92));

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

void sub_1C715B7AC(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v384 = &v321 - v3;
  v383 = sub_1C754E2FC();
  v4 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v321 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_1C754F5FC();
  v6 = *(v350 - 8);
  MEMORY[0x1EEE9AC00](v350);
  v349 = &v321 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = sub_1C754F09C();
  v8 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v334 = &v321 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v369 = &v321 - v11;
  v362 = sub_1C754F65C();
  v12 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v333 = &v321 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v361 = &v321 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v326 = &v321 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v331 = &v321 - v19;
  v337 = sub_1C754DF6C();
  v20 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v325 = &v321 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v336 = &v321 - v23;
  v353 = sub_1C754DABC();
  v24 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v338 = &v321 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v339 = &v321 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v348 = &v321 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v327 = &v321 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v335 = &v321 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v347 = &v321 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v354 = &v321 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v356 = &v321 - v39;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v376 = (&v321 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v42 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v367 = &v321 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x78uLL);
  v351 = __dst[3];
  v352 = __dst[2];
  v400 = MEMORY[0x1E69E7CD0];
  v399 = MEMORY[0x1E69E7CC0];
  v45 = __dst[8];
  v46 = __dst[10];
  v365 = *(__dst[10] + 16);
  if (!v365)
  {
    return;
  }

  v47 = 0;
  v366 = __dst[10] + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v332 = 0x80000001C7596490;
  v345 = 0;
  v346 = 0x80000001C7596470;
  v380 = (v4 + 8);
  v381 = (v4 + 16);
  v343 = (v6 + 8);
  v344 = (v6 + 32);
  v341 = (v8 + 8);
  v342 = (v8 + 32);
  v373 = v12 + 16;
  v372 = (v12 + 8);
  v329 = (v24 + 32);
  v330 = __dst[8];
  if (!__dst[8])
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v328 = v45;
  v323 = (v20 + 32);
  v324 = (v8 + 16);
  v48 = (v24 + 8);
  v322 = (v20 + 8);
  *&v44 = 136642819;
  v357 = v44;
  v386 = xmmword_1C7564A90;
  v385 = xmmword_1C7565670;
  v355 = MEMORY[0x1E69E7CC0];
  v49 = v361;
  v50 = v362;
  v375 = v12;
  v363 = __dst[10];
  v364 = v42;
  v340 = v48;
  v378 = xmmword_1C755BAB0;
  while (2)
  {
    if (v47 >= *(v46 + 16))
    {
      goto LABEL_189;
    }

    v51 = *(v42 + 72);
    v374 = v47;
    v52 = v367;
    sub_1C7161564(v366 + v51 * v47, v367);
    sub_1C7161504(v52, v376, type metadata accessor for QueryTokenCategoryType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v54 = v369;
    v55 = v370;
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v56 = *v376;
        v57 = *(*v376 + 16);
        if (!v57)
        {

          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          sub_1C75504FC();
          v165 = sub_1C7073450();
          sub_1C70F4C68(v398, v165, v166, v167, v168, v169, v170, v171, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

          goto LABEL_98;
        }

        *&v398[0] = MEMORY[0x1E69E7CC0];
        sub_1C755195C();
        v395 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
        v394 = objc_opt_self();
        v393 = v56;
        v58 = (v56 + 40);
        do
        {
          v59 = *(v58 - 1);
          v60 = *v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
          v61 = swift_allocObject();
          *(v61 + 16) = v378;
          *(v61 + 32) = v59;
          *(v61 + 40) = v60;
          swift_bridgeObjectRetain_n();
          v62 = sub_1C7073450();
          v63 = [v62 length];
          v64 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          v65 = sub_1C7550B3C();

          v66 = [v64 initForPersonFilterWithPersonUUIDs_];

          v67 = [v394 updateQueryString:v62 withSelectedSuggestion:v66 inRange:0 additionalAttributes:{v63, 0}];

          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v58 += 2;
          --v57;
        }

        while (v57);

        v68 = *&v398[0];
        goto LABEL_11;
      case 1:
        v107 = *v376;
        v108 = *(*v376 + 16);
        v109 = v355;
        v110 = *(v355 + 16);
        if (__OFADD__(v110, v108))
        {
          goto LABEL_197;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v110 + v108 > *(v109 + 24) >> 1)
        {
          sub_1C6FB23B8();
          v109 = v111;
        }

        v112 = *(v107 + 16);
        v355 = v109;
        if (!v112)
        {

          v49 = v361;
          v50 = v362;
          v117 = v374;
          v12 = v375;
          v46 = v363;
          v42 = v364;
          if (v108)
          {
            goto LABEL_198;
          }

          goto LABEL_100;
        }

        v113 = *(v109 + 16);
        if ((*(v109 + 24) >> 1) - v113 < v108)
        {
          goto LABEL_202;
        }

        memcpy((v109 + 2 * v113 + 32), (v107 + 32), 2 * v108);

        if (!v108)
        {
          goto LABEL_98;
        }

        v114 = *(v109 + 16);
        v115 = __OFADD__(v114, v108);
        v116 = v114 + v108;
        v49 = v361;
        v50 = v362;
        v117 = v374;
        v12 = v375;
        v118 = v109;
        v46 = v363;
        v42 = v364;
        if (v115)
        {
          goto LABEL_204;
        }

        *(v118 + 16) = v116;
        goto LABEL_100;
      case 2:
        v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
        v82 = v376;
        v83 = v356;
        sub_1C7026200(v376, v356);
        v84 = v354;
        sub_1C7026200(v82 + v81, v354);
        v85 = v347;
        sub_1C7026190(v83, v347);
        v86 = v353;
        if (__swift_getEnumTagSinglePayload(v85, 1, v353) == 1)
        {
          sub_1C6FD7FC8(v85, &qword_1EC218C50);
          type metadata accessor for QueryAssetsRetrievalProcessor();
          v87 = sub_1C754FEEC();
          v88 = sub_1C755119C();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&dword_1C6F5C000, v87, v88, "We require there is at least one date to retrieve assets", v89, 2u);
            MEMORY[0x1CCA5F8E0](v89, -1, -1);
          }

          sub_1C6FD7FC8(v356, &qword_1EC218C50);
          v90 = v84;
LABEL_66:
          sub_1C6FD7FC8(v90, &qword_1EC218C50);
          goto LABEL_98;
        }

        v134 = *v329;
        v135 = v84;
        v136 = v348;
        (*v329)(v348, v85, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        inited = swift_initStackObject();
        *(inited + 16) = v378;
        v138 = v351;
        *(inited + 32) = v352;
        *(inited + 40) = v138;
        *&v398[0] = inited;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C6FD2568(v328);
        v394 = sub_1C706D154(*&v398[0]);
        v139 = v335;
        sub_1C7026190(v135, v335);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v139, 1, v86);
        v141 = v336;
        v142 = v337;
        v143 = v338;
        v395 = v340 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (EnumTagSinglePayload == 1)
        {
          v144 = sub_1C6FD7FC8(v139, &qword_1EC218C50);
          v145 = v340;
        }

        else
        {
          v134(v339, v139, v86);
          v184 = v331;
          if (qword_1EC214168 != -1)
          {
            swift_once();
          }

          v185 = sub_1C754E24C();
          __swift_project_value_buffer(v185, qword_1EC21C0C8);
          sub_1C754E1EC();
          if (__swift_getEnumTagSinglePayload(v184, 1, v142) == 1)
          {
            v145 = v340;
            (*v340)(v339, v86);
            v144 = sub_1C6FD7FC8(v184, &unk_1EC219230);
          }

          else
          {
            v393 = *v323;
            v393(v141, v184, v142);
            v188 = v327;
            v189 = v339;
            static StoryGenerationUtilities.nextDayDateComponents(of:)();
            if (__swift_getEnumTagSinglePayload(v188, 1, v86) == 1)
            {
              v145 = v340;
              (*v340)(v189, v86);
              sub_1C6FD7FC8(v188, &qword_1EC218C50);
              v144 = (*v322)(v141, v142);
              v136 = v348;
              goto LABEL_64;
            }

            v134(v143, v188, v86);
            v293 = v326;
            sub_1C754E1EC();
            if (__swift_getEnumTagSinglePayload(v293, 1, v142) != 1)
            {
              v316 = v325;
              v317 = (v393)(v325, v293, v142);
              MEMORY[0x1EEE9AC00](v317);
              *(&v321 - 2) = v141;
              *(&v321 - 1) = v316;
              v318 = v345;
              v319 = sub_1C715A14C(sub_1C716165C, (&v321 - 4), v394);
              v345 = v318;

              sub_1C7397E58(v319);
              v194 = *v340;
              (*v340)(v338, v86);
              v194(v339, v86);
              sub_1C6FD7FC8(v356, &qword_1EC218C50);
              v320 = *v322;
              (*v322)(v316, v142);
              v320(v141, v142);
              v192 = v348;
              v190 = v354;
              goto LABEL_65;
            }

            v145 = v340;
            v294 = *v340;
            (*v340)(v143, v86);
            v294(v339, v86);
            sub_1C6FD7FC8(v293, &unk_1EC219230);
            v144 = (*v322)(v141, v142);
          }

          v136 = v348;
        }

LABEL_64:
        MEMORY[0x1EEE9AC00](v144);
        v190 = v354;
        *(&v321 - 2) = v136;
        *(&v321 - 1) = v190;
        v191 = v345;
        v192 = v136;
        v193 = sub_1C715A14C(sub_1C7161620, (&v321 - 4), v394);
        v345 = v191;

        sub_1C7397E58(v193);
        sub_1C6FD7FC8(v356, &qword_1EC218C50);
        v194 = *v145;
        v86 = v353;
LABEL_65:
        v194(v192, v86);
        v90 = v190;
        goto LABEL_66;
      case 3:
        v91 = *v376;
        v395 = *(*v376 + 16);
        if (!v395)
        {

          type metadata accessor for QueryAssetsRetrievalProcessor();
          sub_1C6FCA6E4(__dst, v398);
          v156 = sub_1C754FEEC();
          v157 = sub_1C755119C();
          sub_1C6FDD548(__dst);
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v397 = v159;
            *v158 = v357;
            memcpy(v396, __dst, sizeof(v396));
            sub_1C6FCA6E4(__dst, v398);
            QueryToken.description.getter();
            v161 = v160;
            v163 = v162;
            memcpy(v398, v396, 0x78uLL);
            sub_1C6FDD548(v398);
            v164 = sub_1C6F765A4(v161, v163, &v397);

            *(v158 + 4) = v164;
            _os_log_impl(&dword_1C6F5C000, v156, v157, "Unexpectedly encountered an ungrounded PartOfDay suggestion, unable to perform PartOfDay retrieval. %{sensitive}s", v158, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v159);
            MEMORY[0x1CCA5F8E0](v159, -1, -1);
            MEMORY[0x1CCA5F8E0](v158, -1, -1);
          }

          goto LABEL_98;
        }

        v92 = 0;
        while (1)
        {
          if (v395 == v92)
          {

            goto LABEL_99;
          }

          if (v92 >= *(v91 + 16))
          {
            goto LABEL_188;
          }

          v93 = *(v12 + 16);
          v93(v49, v91 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v92, v50);
          v94 = v49;
          sub_1C754F62C();
          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          v95 = sub_1C7073450();
          v96 = [v95 length];
          sub_1C6F65BE8(0, &qword_1EC217FE0);
          sub_1C754F62C();
          v97 = sub_1C71C3FEC();
          if (!v97)
          {
            break;
          }

          v98 = v97;
          ++v92;
          v99 = [objc_opt_self() updateQueryString:v95 withSelectedSuggestion:v97 inRange:0 additionalAttributes:{v96, 0}];
          v100 = v99;

          sub_1C70F4C68(v398, v100, v101, v102, v103, v104, v105, v106, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
          (*v372)(v94, v50);
          v12 = v375;
          v49 = v94;
        }

        type metadata accessor for QueryAssetsRetrievalProcessor();
        v173 = v333;
        v93(v333, v49, v50);
        v174 = sub_1C754FEEC();
        v175 = sub_1C755119C();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *&v398[0] = v177;
          *v176 = v357;
          v178 = sub_1C754F64C();
          v180 = v179;
          v181 = v173;
          v182 = *v372;
          (*v372)(v181, v50);
          v183 = sub_1C6F765A4(v178, v180, v398);

          *(v176 + 4) = v183;
          _os_log_impl(&dword_1C6F5C000, v174, v175, "Skip date retrieval for part of day token '%{sensitive}s', it is not supported in Spotlight in this build.", v176, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v177);
          MEMORY[0x1CCA5F8E0](v177, -1, -1);
          MEMORY[0x1CCA5F8E0](v176, -1, -1);

          v182(v94, v50);
        }

        else
        {

          v187 = *v372;
          (*v372)(v173, v50);
          v187(v94, v50);
        }

        v12 = v375;
        v49 = v94;
        goto LABEL_99;
      case 4:
        (*v342)(v369, v376, v370);
        sub_1C754F06C();
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        v69 = sub_1C7073450();
        v70 = [v69 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0);
        sub_1C754F06C();
        v71 = sub_1C71C3FF8();
        if (v71)
        {
          v72 = v71;
          v73 = [objc_opt_self() updateQueryString:v69 withSelectedSuggestion:v71 inRange:0 additionalAttributes:{v70, 0}];
          v74 = v73;

          sub_1C70F4C68(v398, v74, v75, v76, v77, v78, v79, v80, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
          (*v341)(v54, v55);
        }

        else
        {

          type metadata accessor for QueryAssetsRetrievalProcessor();
          v146 = v334;
          (*v324)(v334, v54, v55);
          v147 = sub_1C754FEEC();
          v148 = sub_1C755119C();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v395 = swift_slowAlloc();
            *&v398[0] = v395;
            *v149 = v357;
            v394 = sub_1C754F08C();
            v151 = v150;
            v152 = *v341;
            (*v341)(v146, v55);
            v153 = v152;
            v154 = sub_1C6F765A4(v394, v151, v398);

            *(v149 + 4) = v154;
            _os_log_impl(&dword_1C6F5C000, v147, v148, "Skip date retrieval for part of week token '%{sensitive}s', it is not supported in Spotlight in this build.", v149, 0xCu);
            v155 = v395;
            __swift_destroy_boxed_opaque_existential_1(v395);
            MEMORY[0x1CCA5F8E0](v155, -1, -1);
            MEMORY[0x1CCA5F8E0](v149, -1, -1);

            v153(v54, v55);
          }

          else
          {

            v186 = *v341;
            (*v341)(v146, v55);
            v186(v54, v55);
          }
        }

        goto LABEL_98;
      case 5:
        v120 = v349;
        v119 = v350;
        (*v344)(v349, v376, v350);
        sub_1C754F5CC();
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        v121 = sub_1C7073450();
        v122 = [v121 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0);
        sub_1C754F5CC();
        v123 = sub_1C71C406C();
        v124 = [objc_opt_self() updateQueryString:v121 withSelectedSuggestion:v123 inRange:0 additionalAttributes:{v122, 0}];
        LODWORD(v122) = v124;

        sub_1C70F4C68(v398, v122, v125, v126, v127, v128, v129, v130, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
        v49 = v361;
        v50 = v362;
        v12 = v375;

        (*v343)(v120, v119);
        goto LABEL_99;
      case 6:
        v132 = *v376;
        v131 = v376[1];
        v133 = LOBYTE(__dst[4]);
        v371 = *v376;
        if (LOBYTE(__dst[4]) && LOBYTE(__dst[4]) == 1)
        {

          goto LABEL_69;
        }

        v172 = sub_1C7551DBC();

        if (v172)
        {
          goto LABEL_68;
        }

        if (v133 < 2)
        {
          v195 = sub_1C7551DBC();

          if (v195)
          {
            goto LABEL_68;
          }

          v248 = v351;
          v247 = v352;
          v249 = v330;
          if (v330)
          {
            v248 = v351;
            v247 = v352;
            if (*(v330 + 16))
            {
              sub_1C6FB632C(0);
              v247 = *(v249 + 32);
              v248 = *(v249 + 40);
            }
          }

          sub_1C75504FC();
          v250 = v371;
          v390 = *(v371 + 16);
          if (v390)
          {
            v387 = v248;

            v251 = 0;
            v389 = v250 + 32;
            v252 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (v251 == v390)
              {

                v68 = v252;
LABEL_11:
                sub_1C7397E58(v68);
                goto LABEL_98;
              }

              if (v251 >= *(v250 + 16))
              {
                goto LABEL_190;
              }

              v395 = v251;
              v253 = (v389 + (v251 << 6));
              v255 = *v253;
              v254 = v253[1];
              v256 = v253[3];
              v398[2] = v253[2];
              v398[3] = v256;
              v398[0] = v255;
              v398[1] = v254;
              v394 = *(&v398[2] + 1);
              v257 = v256;
              v258 = v255;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
              v259 = swift_allocObject();
              *(v259 + 16) = v386;
              v260 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
              sub_1C75504FC();
              sub_1C70802EC(v398, v396);
              v393 = v260;
              v261 = sub_1C7073450();
              v262 = [v261 length];
              v263 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              v264 = sub_1C71C8E10();
              v265 = [objc_opt_self() updateQueryString:v261 withSelectedSuggestion:v264 inRange:0 additionalAttributes:{v262, 0}];

              *(v259 + 32) = v265;
              v266 = v259;
              v267 = objc_allocWithZone(MEMORY[0x1E69BE460]);
              sub_1C75504FC();
              v268 = sub_1C71C8EB8(v258, *(&v258 + 1), 0, 0);
              v269 = swift_allocObject();
              *(v269 + 16) = v385;
              *(v269 + 32) = v268;
              v270 = v268;
              static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
              v272 = v271;

              *(v259 + 40) = v272;
              v396[0] = v259;
              if (v257)
              {
                v273 = HIBYTE(v257) & 0xF;
                if ((v257 & 0x2000000000000000) == 0)
                {
                  v273 = v394 & 0xFFFFFFFFFFFFLL;
                }

                if (v273)
                {
                  static StoryGenerationUtilities.landmarkAttributedString(with:lookupIdentifier:)(v258, *(&v258 + 1), v394, v257);
                  MEMORY[0x1CCA5D040]();
                  if (*((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v396[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1C7550B9C();
                  }

                  sub_1C7550BEC();
                  v266 = v396[0];
                }
              }

              v274 = v266 >> 62;
              if (v266 >> 62)
              {
                v275 = sub_1C75516BC();
              }

              else
              {
                v275 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v276 = v252 >> 62;
              if (v252 >> 62)
              {
                v277 = sub_1C75516BC();
              }

              else
              {
                v277 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v278 = v275 + v277;
              if (__OFADD__(v277, v275))
              {
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
LABEL_193:
                __break(1u);
LABEL_194:
                __break(1u);
                goto LABEL_195;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v276)
              {
                goto LABEL_126;
              }

LABEL_127:
              v252 = sub_1C75518CC();
              v279 = v252 & 0xFFFFFFFFFFFFFF8;
LABEL_128:
              v281 = *(v279 + 16);
              v280 = *(v279 + 24);
              if (v274)
              {
                v282 = sub_1C75516BC();
                if (!v282)
                {
LABEL_134:

                  v250 = v371;
                  v285 = v395;
                  if (v275 > 0)
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_143;
                }
              }

              else
              {
                v282 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v282)
                {
                  goto LABEL_134;
                }
              }

              v283 = sub_1C6FB6304();
              if (((v280 >> 1) - v281) < v283)
              {
                goto LABEL_193;
              }

              v392 = v275;
              v284 = v279 + 8 * v281 + 32;
              v394 = v252;
              v388 = v279;
              v391 = v283;
              if (v274)
              {
                if (v282 < 1)
                {
                  goto LABEL_201;
                }

                sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
                v286 = v266;
                for (i = 0; i != v282; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
                  v288 = sub_1C6FDD09C(v396, i, v286);
                  v290 = *v289;
                  v288(v396, 0);
                  *(v284 + 8 * i) = v290;
                }
              }

              else
              {
                swift_arrayInitWithCopy();
              }

              v250 = v371;
              v252 = v394;
              v285 = v395;
              if (v391 < v392)
              {
                goto LABEL_192;
              }

              if (v391 > 0)
              {
                v291 = *(v388 + 16);
                v115 = __OFADD__(v291, v391);
                v292 = v291 + v391;
                if (v115)
                {
                  goto LABEL_199;
                }

                *(v388 + 16) = v292;
              }

LABEL_143:
              v251 = v285 + 1;
              sub_1C7080348(v398);
            }

            if (!v276)
            {
              v279 = v252 & 0xFFFFFFFFFFFFFF8;
              if (v278 <= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_128;
              }

              goto LABEL_127;
            }

LABEL_126:
            sub_1C75516BC();
            goto LABEL_127;
          }

          v295 = static QueryAssetsRetrievalProcessor.generateLocationAttributedStringCombinations(with:assetUUIDs:)(v247, v248, v131);

          v296 = 0;
          v391 = v295[2];
          v392 = v295;
          v390 = v295 + 4;
          v297 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v296 == v391)
            {
              sub_1C7397E58(v297);
              sub_1C6FD3104();
              goto LABEL_98;
            }

            if (v296 >= v392[2])
            {
              goto LABEL_194;
            }

            v298 = v390[v296];
            v299 = v298 >> 62;
            if (v298 >> 62)
            {
              v300 = sub_1C75516BC();
            }

            else
            {
              v300 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v301 = v297 >> 62;
            if (v297 >> 62)
            {
              v302 = sub_1C75516BC();
            }

            else
            {
              v302 = *((v297 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v303 = v300 + v302;
            if (__OFADD__(v302, v300))
            {
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
              return;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v301)
            {
              goto LABEL_162;
            }

            v304 = v297 & 0xFFFFFFFFFFFFFF8;
            if (v303 > *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_163;
            }

LABEL_164:
            v305 = *(v304 + 16);
            v306 = *(v304 + 24);
            if (v299)
            {
              v307 = sub_1C75516BC();
            }

            else
            {
              v307 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v296;
            if (v307)
            {
              if (((v306 >> 1) - v305) < v300)
              {
                goto LABEL_200;
              }

              v394 = v297;
              v308 = v304 + 8 * v305 + 32;
              v395 = v296;
              v393 = v300;
              v389 = v304;
              if (v299)
              {
                if (v307 < 1)
                {
                  goto LABEL_205;
                }

                sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
                for (j = 0; j != v307; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
                  v310 = v298;
                  v311 = sub_1C6FDD09C(v398, j, v298);
                  v313 = *v312;
                  v311(v398, 0);
                  v298 = v310;
                  *(v308 + 8 * j) = v313;
                }
              }

              else
              {
                sub_1C6F65BE8(0, &qword_1EDD0CE30);
                swift_arrayInitWithCopy();
              }

              v296 = v395;
              v297 = v394;
              if (v393 > 0)
              {
                v314 = *(v389 + 16);
                v115 = __OFADD__(v314, v393);
                v315 = v393 + v314;
                if (v115)
                {
                  goto LABEL_203;
                }

                *(v389 + 16) = v315;
              }
            }

            else
            {

              if (v300 > 0)
              {
                goto LABEL_196;
              }
            }
          }

          if (v301)
          {
LABEL_162:
            sub_1C75516BC();
          }

LABEL_163:
          v297 = sub_1C75518CC();
          v304 = v297 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_164;
        }

LABEL_68:

        v132 = v371;
LABEL_69:
        v358 = *(v132 + 16);
        if (v358)
        {
          AssetsRetrievalProcessor = type metadata accessor for QueryAssetsRetrievalProcessor();
          v379 = 0;
          v197 = *(AssetsRetrievalProcessor + 28);
          v377 = v399;
          v359 = v132 + 32;
          v360 = v197;
          while (1)
          {
            v198 = v379;
            sub_1C6FB632C(v379);
            v199 = (v359 + (v198 << 6));
            v200 = *v199;
            v201 = v199[1];
            v202 = v199[3];
            v398[2] = v199[2];
            v398[3] = v202;
            v398[0] = v200;
            v398[1] = v201;
            sub_1C70802EC(v398, v396);
            v203 = sub_1C754FEEC();
            v204 = sub_1C75511BC();
            if (os_log_type_enabled(v203, v204))
            {
              v205 = v398[0];
              v206 = swift_slowAlloc();
              v207 = swift_slowAlloc();
              v396[0] = v207;
              *v206 = v357;
              sub_1C75504FC();
              v208 = sub_1C6F765A4(v205, *(&v205 + 1), v396);

              *(v206 + 4) = v208;
              _os_log_impl(&dword_1C6F5C000, v203, v204, "Retrieve assets for user disambiguation query token with grounded location: %{sensitive}s", v206, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v207);
              MEMORY[0x1CCA5F8E0](v207, -1, -1);
              MEMORY[0x1CCA5F8E0](v206, -1, -1);
            }

            v209 = 0;
            ++v379;
            v388 = *(*&v398[2] + 16);
            v387 = *&v398[2];
            v210 = (*&v398[2] + 40);
            v211 = MEMORY[0x1E69E7CC0];
            while (v388 != v209)
            {
              if (v209 >= *(v387 + 16))
              {
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
                goto LABEL_191;
              }

              v390 = v209;
              v212 = *(v210 - 1);
              v213 = *v210;
              v389 = v210;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
              v214 = swift_initStackObject();
              v214[1] = v386;
              v215 = v214;
              v394 = v214;
              v216 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
              swift_bridgeObjectRetain_n();
              v217 = sub_1C7073450();
              v395 = v211;
              v218 = [v217 length];
              v219 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              v220 = sub_1C71C8E10();
              v393 = objc_opt_self();
              v221 = [v393 updateQueryString:v217 withSelectedSuggestion:v220 inRange:0 additionalAttributes:{v218, 0}];

              *(v215 + 4) = v221;
              v222 = objc_allocWithZone(MEMORY[0x1E69BE460]);
              sub_1C75504FC();
              v223 = sub_1C71C8EB8(v212, v213, 0, 0);
              v224 = swift_allocObject();
              *(v224 + 16) = v385;
              *(v224 + 32) = v223;
              sub_1C75504FC();
              v392 = v223;
              v391 = v216;
              v225 = sub_1C7073450();
              v226 = [v225 length];
              v227 = v382;
              sub_1C754E2EC();
              sub_1C754E2AC();
              v228 = v384;
              v229 = v383;
              (*v381)(v384, v227, v383);
              __swift_storeEnumTagSinglePayload(v228, 0, 1, v229);
              v230 = objc_allocWithZone(MEMORY[0x1E6978A98]);
              sub_1C75504FC();
              sub_1C75504FC();
              v231 = sub_1C71C8F50(v212, v213, v224, v228);
              v232 = [v393 updateQueryString:v225 withSelectedSuggestion:v231 inRange:0 additionalAttributes:{v226, 0}];

              v233 = v227;
              v234 = v394;
              v235 = v229;
              v211 = v395;
              (*v380)(v233, v235);

              *(v234 + 40) = v232;
              v236 = v211 >> 62;
              if (v211 >> 62)
              {
                v237 = sub_1C75516BC();
              }

              else
              {
                v237 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v238 = v237 + 2;
              if (__OFADD__(v237, 2))
              {
                goto LABEL_185;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v236)
                {
                  v239 = v211 & 0xFFFFFFFFFFFFFF8;
                  if (v238 <= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_85;
                }

LABEL_84:
                sub_1C75516BC();
                goto LABEL_85;
              }

              if (v236)
              {
                goto LABEL_84;
              }

LABEL_85:
              v211 = sub_1C75518CC();
              v239 = v211 & 0xFFFFFFFFFFFFFF8;
LABEL_86:
              if (((*(v239 + 24) >> 1) - *(v239 + 16)) < 2)
              {
                goto LABEL_186;
              }

              swift_arrayInitWithCopy();

              swift_setDeallocating();
              sub_1C6FDCA68();
              v240 = *(v239 + 16);
              v115 = __OFADD__(v240, 2);
              v241 = v240 + 2;
              if (v115)
              {
                goto LABEL_187;
              }

              *(v239 + 16) = v241;
              v210 = (v389 + 16);
              v209 = (v390 + 1);
            }

            sub_1C7080348(v398);
            v242 = sub_1C75504FC();
            sub_1C7397E58(v242);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB3460();
              v377 = v245;
            }

            v243 = *(v377 + 16);
            if (v243 >= *(v377 + 24) >> 1)
            {
              sub_1C6FB3460();
              v377 = v246;
            }

            v244 = v377;
            *(v377 + 16) = v243 + 1;
            *(v244 + 8 * v243 + 32) = v211;
            if (v379 == v358)
            {

              v399 = v377;
              goto LABEL_98;
            }
          }
        }

LABEL_98:
        v49 = v361;
        v50 = v362;
        v12 = v375;
LABEL_99:
        v46 = v363;
        v42 = v364;
        v117 = v374;
LABEL_100:
        v47 = v117 + 1;
        if (v47 != v365)
        {
          continue;
        }

        return;
      default:
        sub_1C71615C8(v376, type metadata accessor for QueryTokenCategoryType);
        goto LABEL_99;
    }
  }
}